; ModuleID = 'legendre_H3d.ll'
source_filename = "legendre_H3d.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"legendre_H3d.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"gsl_sf_legendre_H3d_0_e(lambda, eta, &result)\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"gsl_sf_legendre_H3d_1_e(lambda, eta, &result)\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"gsl_sf_legendre_H3d_e(l, lambda, eta, &result)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@0 = private unnamed_addr constant [24 x i8] c"gsl_sf_legendre_H3d_0_e\00"
@1 = private unnamed_addr constant [16 x i8] c"legendre_H3d.ll\00"
@2 = private unnamed_addr constant [24 x i8] c"gsl_sf_legendre_H3d_1_e\00"
@3 = private unnamed_addr constant [16 x i8] c"legendre_H3d.ll\00"
@4 = private unnamed_addr constant [22 x i8] c"gsl_sf_legendre_H3d_e\00"
@5 = private unnamed_addr constant [16 x i8] c"legendre_H3d.ll\00"
@6 = private unnamed_addr constant [20 x i8] c"legendre_H3d_series\00"
@7 = private unnamed_addr constant [16 x i8] c"legendre_H3d.ll\00"
@8 = private unnamed_addr constant [20 x i8] c"legendre_H3d_lnnorm\00"
@9 = private unnamed_addr constant [16 x i8] c"legendre_H3d.ll\00"
@10 = private unnamed_addr constant [21 x i8] c"legendre_H3d_CF1_ser\00"
@11 = private unnamed_addr constant [16 x i8] c"legendre_H3d.ll\00"
@12 = private unnamed_addr constant [26 x i8] c"gsl_sf_legendre_H3d_array\00"
@13 = private unnamed_addr constant [16 x i8] c"legendre_H3d.ll\00"
@14 = private unnamed_addr constant [22 x i8] c"gsl_sf_legendre_H3d_0\00"
@15 = private unnamed_addr constant [16 x i8] c"legendre_H3d.ll\00"
@16 = private unnamed_addr constant [22 x i8] c"gsl_sf_legendre_H3d_1\00"
@17 = private unnamed_addr constant [16 x i8] c"legendre_H3d.ll\00"
@18 = private unnamed_addr constant [20 x i8] c"gsl_sf_legendre_H3d\00"
@19 = private unnamed_addr constant [16 x i8] c"legendre_H3d.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_H3d_0_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  %12 = load double, double* %6, align 8, !dbg !66
  %13 = fcmp olt double %12, 0.000000e+00, !dbg !68
  %14 = call i1 @fCmpInstHandler(double %12, double 0.000000e+00, i1 %13, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873549232, i32 252, i32 10), !dbg !69
  br i1 %14, label %15, label %24, !dbg !69

; <label>:15:                                     ; preds = %3
  br label %16, !dbg !70, !llvm.loop !72

; <label>:16:                                     ; preds = %15
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !73
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !73
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !73
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !73
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !73
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !73
  br label %21, !dbg !73, !llvm.loop !76

; <label>:21:                                     ; preds = %16
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 253, i32 1), !dbg !78
  store i32 1, i32* %4, align 4, !dbg !78
  br label %135, !dbg !78
                                                  ; No predecessors!
  br label %23, !dbg !81

; <label>:23:                                     ; preds = %22
  br label %135, !dbg !83

; <label>:24:                                     ; preds = %3
  %25 = load double, double* %6, align 8, !dbg !84
  %26 = fcmp oeq double %25, 0.000000e+00, !dbg !86
  %27 = call i1 @fCmpInstHandler(double %25, double 0.000000e+00, i1 %26, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873563232, i32 255, i32 15), !dbg !87
  br i1 %27, label %32, label %28, !dbg !87

; <label>:28:                                     ; preds = %24
  %29 = load double, double* %5, align 8, !dbg !88
  %30 = fcmp oeq double %29, 0.000000e+00, !dbg !90
  %31 = call i1 @fCmpInstHandler(double %29, double 0.000000e+00, i1 %30, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873564544, i32 255, i32 32), !dbg !91
  br i1 %31, label %32, label %37, !dbg !91

; <label>:32:                                     ; preds = %28, %24
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !92
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !94
  store double 1.000000e+00, double* %34, align 8, !dbg !95
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !96
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !97
  store double 0.000000e+00, double* %36, align 8, !dbg !98
  store i32 0, i32* %4, align 4, !dbg !99
  br label %135, !dbg !99

; <label>:37:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata double* %8, metadata !100, metadata !60), !dbg !102
  %38 = load double, double* %5, align 8, !dbg !103
  %39 = load double, double* %6, align 8, !dbg !104
  %40 = fmul double %38, %39, !dbg !105
  call void @fMulHandler(double %38, double %39, double %40, i64 94525873571752, i64 94525873572104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873572512, i32 261, i32 35), !dbg !102
  store double %40, double* %8, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !106, metadata !60), !dbg !107
  %41 = load double, double* %8, align 8, !dbg !108
  %42 = load double, double* %8, align 8, !dbg !109
  %43 = call double @fabs(double %42) #1, !dbg !110
  %44 = fmul double 0x3CC0000000000000, %43, !dbg !111
  call void @fMulHandler(double 0x3CC0000000000000, double %43, double %44, i64 0, i64 94525873576800, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873577376, i32 263, i32 51), !dbg !112
  %45 = call i32 @gsl_sf_sin_err_e(double %41, double %44, %struct.gsl_sf_result_struct* %9), !dbg !112
  %46 = load double, double* %6, align 8, !dbg !114
  %47 = fcmp ogt double %46, 0x403205966F2B4F12, !dbg !116
  %48 = call i1 @fCmpInstHandler(double %46, double 0x403205966F2B4F12, i1 %47, i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873579200, i32 264, i32 12), !dbg !117
  br i1 %48, label %49, label %92, !dbg !117

; <label>:49:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %10, metadata !118, metadata !60), !dbg !120
  %50 = load double, double* %5, align 8, !dbg !121
  %51 = fdiv double 2.000000e+00, %50, !dbg !122
  call void @fDivHandler(double 2.000000e+00, double %50, double %51, i64 0, i64 94525873581416, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873581888, i32 265, i32 22), !dbg !123
  %52 = load double, double* %6, align 8, !dbg !123
  %53 = fsub double -0.000000e+00, %52, !dbg !124
  call void @fSubHandler(double -0.000000e+00, double %52, double %53, i64 0, i64 94525873582248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873582720, i32 265, i32 37), !dbg !125
  %54 = call double @exp(double %53) #5, !dbg !125
  call void @callOneArgHandler(i32 11, double %53, double %54, i64 94525873582720, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873583888, i32 265, i32 33), !dbg !126
  %55 = fmul double %51, %54, !dbg !126
  call void @fMulHandler(double %51, double %54, double %55, i64 94525873581888, i64 94525873583888, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873584400, i32 265, i32 31), !dbg !120
  store double %55, double* %10, align 8, !dbg !120
  %56 = load double, double* %10, align 8, !dbg !127
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !128
  %58 = load double, double* %57, align 8, !dbg !128
  %59 = fmul double %56, %58, !dbg !129
  call void @fMulHandler(double %56, double %58, double %59, i64 94525873586472, i64 94525873587304, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873588976, i32 266, i32 24), !dbg !130
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !130
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !131
  store double %59, double* %61, align 8, !dbg !132
  %62 = load double, double* %10, align 8, !dbg !133
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !134
  %64 = load double, double* %63, align 8, !dbg !134
  %65 = fmul double %62, %64, !dbg !135
  call void @fMulHandler(double %62, double %64, double %65, i64 94525873590616, i64 94525873591448, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873593120, i32 267, i32 29), !dbg !136
  %66 = call double @fabs(double %65) #1, !dbg !136
  %67 = load double, double* %6, align 8, !dbg !137
  %68 = call double @fabs(double %67) #1, !dbg !138
  %69 = fadd double %68, 1.000000e+00, !dbg !140
  call void @fAddHandler(double %68, double 1.000000e+00, double %69, i64 94525873594528, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873596080, i32 267, i32 51), !dbg !141
  %70 = fmul double %66, %69, !dbg !141
  call void @fMulHandler(double %66, double %69, double %70, i64 94525873593600, i64 94525873596080, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873596464, i32 267, i32 38), !dbg !142
  %71 = fmul double %70, 0x3CB0000000000000, !dbg !142
  call void @fMulHandler(double %70, double 0x3CB0000000000000, double %71, i64 94525873596464, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873596944, i32 267, i32 58), !dbg !143
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !143
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !144
  store double %71, double* %73, align 8, !dbg !145
  %74 = load double, double* %10, align 8, !dbg !146
  %75 = call double @fabs(double %74) #1, !dbg !147
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !148
  %77 = load double, double* %76, align 8, !dbg !148
  %78 = fmul double %75, %77, !dbg !149
  call void @fMulHandler(double %75, double %77, double %78, i64 94525873599056, i64 94525873599960, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873601632, i32 268, i32 30), !dbg !150
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !150
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !151
  %81 = load double, double* %80, align 8, !dbg !152
  %82 = fadd double %81, %78, !dbg !152
  call void @fAddHandler(double %81, double %78, double %82, i64 94525873602856, i64 94525873601632, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873603264, i32 268, i32 19), !dbg !152
  store double %82, double* %80, align 8, !dbg !152
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !153
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !154
  %85 = load double, double* %84, align 8, !dbg !154
  %86 = call double @fabs(double %85) #1, !dbg !155
  %87 = fmul double 0x3CC0000000000000, %86, !dbg !156
  call void @fMulHandler(double 0x3CC0000000000000, double %86, double %87, i64 0, i64 94525873607616, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873608096, i32 269, i32 44), !dbg !157
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !157
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !158
  %90 = load double, double* %89, align 8, !dbg !159
  %91 = fadd double %90, %87, !dbg !159
  call void @fAddHandler(double %90, double %87, double %91, i64 94525873609320, i64 94525873608096, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873609728, i32 269, i32 19), !dbg !159
  store double %91, double* %89, align 8, !dbg !159
  br label %134, !dbg !160

; <label>:92:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %11, metadata !161, metadata !60), !dbg !163
  %93 = load double, double* %5, align 8, !dbg !164
  %94 = load double, double* %6, align 8, !dbg !165
  %95 = call double @sinh(double %94) #5, !dbg !166
  call void @callOneArgHandler(i32 8, double %94, double %95, i64 94525873613496, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873614240, i32 272, i32 30), !dbg !167
  %96 = fmul double %93, %95, !dbg !167
  call void @fMulHandler(double %93, double %95, double %96, i64 94525873613144, i64 94525873614240, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873614752, i32 272, i32 29), !dbg !168
  %97 = fdiv double 1.000000e+00, %96, !dbg !168
  call void @fDivHandler(double 1.000000e+00, double %96, double %97, i64 0, i64 94525873614752, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873615200, i32 272, i32 21), !dbg !163
  store double %97, double* %11, align 8, !dbg !163
  %98 = load double, double* %11, align 8, !dbg !169
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !170
  %100 = load double, double* %99, align 8, !dbg !170
  %101 = fmul double %98, %100, !dbg !171
  call void @fMulHandler(double %98, double %100, double %101, i64 94525873617240, i64 94525873618072, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873619744, i32 273, i32 24), !dbg !172
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !172
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !173
  store double %101, double* %103, align 8, !dbg !174
  %104 = load double, double* %11, align 8, !dbg !175
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !176
  %106 = load double, double* %105, align 8, !dbg !176
  %107 = fmul double %104, %106, !dbg !177
  call void @fMulHandler(double %104, double %106, double %107, i64 94525873621384, i64 94525873622216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873623888, i32 274, i32 29), !dbg !178
  %108 = call double @fabs(double %107) #1, !dbg !178
  %109 = load double, double* %6, align 8, !dbg !179
  %110 = call double @fabs(double %109) #1, !dbg !180
  %111 = fadd double %110, 1.000000e+00, !dbg !182
  call void @fAddHandler(double %110, double 1.000000e+00, double %111, i64 94525873625296, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873625808, i32 274, i32 51), !dbg !183
  %112 = fmul double %108, %111, !dbg !183
  call void @fMulHandler(double %108, double %111, double %112, i64 94525873624368, i64 94525873625808, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873626192, i32 274, i32 38), !dbg !184
  %113 = fmul double %112, 0x3CB0000000000000, !dbg !184
  call void @fMulHandler(double %112, double 0x3CB0000000000000, double %113, i64 94525873626192, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873626608, i32 274, i32 58), !dbg !185
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !185
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !186
  store double %113, double* %115, align 8, !dbg !187
  %116 = load double, double* %11, align 8, !dbg !188
  %117 = call double @fabs(double %116) #1, !dbg !189
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !190
  %119 = load double, double* %118, align 8, !dbg !190
  %120 = fmul double %117, %119, !dbg !191
  call void @fMulHandler(double %117, double %119, double %120, i64 94525873628720, i64 94525873629624, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873631296, i32 275, i32 30), !dbg !192
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !192
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 1, !dbg !193
  %123 = load double, double* %122, align 8, !dbg !194
  %124 = fadd double %123, %120, !dbg !194
  call void @fAddHandler(double %123, double %120, double %124, i64 94525873632520, i64 94525873631296, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873632928, i32 275, i32 19), !dbg !194
  store double %124, double* %122, align 8, !dbg !194
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !195
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !196
  %127 = load double, double* %126, align 8, !dbg !196
  %128 = call double @fabs(double %127) #1, !dbg !197
  %129 = fmul double 0x3CC0000000000000, %128, !dbg !198
  call void @fMulHandler(double 0x3CC0000000000000, double %128, double %129, i64 0, i64 94525873637280, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873637760, i32 276, i32 44), !dbg !199
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !199
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !200
  %132 = load double, double* %131, align 8, !dbg !201
  %133 = fadd double %132, %129, !dbg !201
  call void @fAddHandler(double %132, double %129, double %133, i64 94525873638984, i64 94525873637760, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 94525873641456, i32 276, i32 19), !dbg !201
  store double %133, double* %131, align 8, !dbg !201
  br label %134

; <label>:134:                                    ; preds = %92, %49
  store i32 0, i32* %4, align 4, !dbg !202
  br label %135, !dbg !202

; <label>:135:                                    ; preds = %134, %32, %23, %21
  %136 = load i32, i32* %4, align 4, !dbg !203
  ret i32 %136, !dbg !203
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

declare i32 @gsl_sf_sin_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind
declare double @sinh(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_H3d_1_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !204 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca %struct.gsl_sf_result_struct, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !205, metadata !60), !dbg !206
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !207, metadata !60), !dbg !208
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !209, metadata !60), !dbg !210
  call void @llvm.dbg.declare(metadata double* %8, metadata !211, metadata !60), !dbg !212
  %30 = load double, double* %6, align 8, !dbg !213
  %31 = load double, double* %5, align 8, !dbg !214
  %32 = fmul double %30, %31, !dbg !215
  call void @fMulHandler(double %30, double %31, double %32, i64 94525873614120, i64 94525873583768, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873655920, i32 286, i32 32), !dbg !216
  %33 = call double @fabs(double %32) #1, !dbg !216
  store double %33, double* %8, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata double* %9, metadata !217, metadata !60), !dbg !218
  %34 = load double, double* %5, align 8, !dbg !219
  %35 = load double, double* %5, align 8, !dbg !220
  %36 = fmul double %34, %35, !dbg !221
  call void @fMulHandler(double %34, double %35, double %36, i64 94525873576680, i64 94525873578104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873660224, i32 287, i32 30), !dbg !218
  store double %36, double* %9, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata double* %10, metadata !222, metadata !60), !dbg !223
  %37 = load double, double* %9, align 8, !dbg !224
  %38 = fadd double %37, 1.000000e+00, !dbg !225
  call void @fAddHandler(double %37, double 1.000000e+00, double %38, i64 94525873559432, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873663728, i32 288, i32 28), !dbg !223
  store double %38, double* %10, align 8, !dbg !223
  %39 = load double, double* %6, align 8, !dbg !226
  %40 = fcmp olt double %39, 0.000000e+00, !dbg !228
  %41 = call i1 @fCmpInstHandler(double %39, double 0.000000e+00, i1 %40, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873666080, i32 292, i32 10), !dbg !229
  br i1 %41, label %42, label %51, !dbg !229

; <label>:42:                                     ; preds = %3
  br label %43, !dbg !230, !llvm.loop !232

; <label>:43:                                     ; preds = %42
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !233
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !233
  store double 0x7FF8000000000000, double* %45, align 8, !dbg !233
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !233
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !233
  store double 0x7FF8000000000000, double* %47, align 8, !dbg !233
  br label %48, !dbg !233, !llvm.loop !236

; <label>:48:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 293, i32 1), !dbg !238
  store i32 1, i32* %4, align 4, !dbg !238
  br label %288, !dbg !238
                                                  ; No predecessors!
  br label %50, !dbg !241

; <label>:50:                                     ; preds = %49
  br label %288, !dbg !243

; <label>:51:                                     ; preds = %3
  %52 = load double, double* %6, align 8, !dbg !244
  %53 = fcmp oeq double %52, 0.000000e+00, !dbg !246
  %54 = call i1 @fCmpInstHandler(double %52, double 0.000000e+00, i1 %53, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873674784, i32 295, i32 15), !dbg !247
  br i1 %54, label %59, label %55, !dbg !247

; <label>:55:                                     ; preds = %51
  %56 = load double, double* %5, align 8, !dbg !248
  %57 = fcmp oeq double %56, 0.000000e+00, !dbg !250
  %58 = call i1 @fCmpInstHandler(double %56, double 0.000000e+00, i1 %57, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873676240, i32 295, i32 32), !dbg !251
  br i1 %58, label %59, label %64, !dbg !251

; <label>:59:                                     ; preds = %55, %51
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !252
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !254
  store double 0.000000e+00, double* %61, align 8, !dbg !255
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !256
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !257
  store double 0.000000e+00, double* %63, align 8, !dbg !258
  store i32 0, i32* %4, align 4, !dbg !259
  br label %288, !dbg !259

; <label>:64:                                     ; preds = %55
  %65 = load double, double* %8, align 8, !dbg !260
  %66 = fcmp olt double %65, 0x3F48406003B2AE5A, !dbg !262
  %67 = call i1 @fCmpInstHandler(double %65, double 0x3F48406003B2AE5A, i1 %66, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873682112, i32 300, i32 14), !dbg !263
  br i1 %67, label %68, label %142, !dbg !263

; <label>:68:                                     ; preds = %64
  %69 = load double, double* %6, align 8, !dbg !264
  %70 = fcmp olt double %69, 0x3F48406003B2AE5A, !dbg !266
  %71 = call i1 @fCmpInstHandler(double %69, double 0x3F48406003B2AE5A, i1 %70, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873683568, i32 300, i32 45), !dbg !267
  br i1 %71, label %72, label %142, !dbg !267

; <label>:72:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata double* %11, metadata !268, metadata !60), !dbg !270
  %73 = load double, double* %6, align 8, !dbg !271
  %74 = load double, double* %6, align 8, !dbg !272
  %75 = fmul double %73, %74, !dbg !273
  call void @fMulHandler(double %73, double %74, double %75, i64 94525873685592, i64 94525873685944, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873686352, i32 301, i32 23), !dbg !270
  store double %75, double* %11, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata double* %12, metadata !274, metadata !60), !dbg !275
  %76 = load double, double* %8, align 8, !dbg !276
  %77 = load double, double* %8, align 8, !dbg !277
  %78 = fmul double %76, %77, !dbg !278
  call void @fMulHandler(double %76, double %77, double %78, i64 94525873689544, i64 94525873689896, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873690304, i32 302, i32 22), !dbg !275
  store double %78, double* %12, align 8, !dbg !275
  call void @llvm.dbg.declare(metadata double* %13, metadata !279, metadata !60), !dbg !280
  %79 = load double, double* %11, align 8, !dbg !281
  %80 = load double, double* %12, align 8, !dbg !282
  %81 = fadd double %79, %80, !dbg !283
  call void @fAddHandler(double %79, double %80, double %81, i64 94525873693496, i64 94525873693848, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873694256, i32 303, i32 27), !dbg !284
  %82 = fdiv double %81, 3.000000e+00, !dbg !284
  call void @fDivHandler(double %81, double 3.000000e+00, double %82, i64 94525873694256, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873694768, i32 303, i32 34), !dbg !280
  store double %82, double* %13, align 8, !dbg !280
  call void @llvm.dbg.declare(metadata double* %14, metadata !285, metadata !60), !dbg !286
  %83 = load double, double* %11, align 8, !dbg !287
  %84 = fmul double 2.000000e+00, %83, !dbg !288
  call void @fMulHandler(double 2.000000e+00, double %83, double %84, i64 0, i64 94525873697928, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873698336, i32 304, i32 25), !dbg !289
  %85 = load double, double* %11, align 8, !dbg !289
  %86 = fmul double %84, %85, !dbg !290
  call void @fMulHandler(double %84, double %85, double %86, i64 94525873698336, i64 94525873698696, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873699104, i32 304, i32 31), !dbg !291
  %87 = load double, double* %11, align 8, !dbg !291
  %88 = fmul double 5.000000e+00, %87, !dbg !292
  call void @fMulHandler(double 5.000000e+00, double %87, double %88, i64 0, i64 94525873699496, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873700000, i32 304, i32 43), !dbg !293
  %89 = load double, double* %12, align 8, !dbg !293
  %90 = fmul double %88, %89, !dbg !294
  call void @fMulHandler(double %88, double %89, double %90, i64 94525873700000, i64 94525873700360, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873700768, i32 304, i32 49), !dbg !295
  %91 = fadd double %86, %90, !dbg !295
  call void @fAddHandler(double %86, double %90, double %91, i64 94525873699104, i64 94525873700768, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873701184, i32 304, i32 38), !dbg !296
  %92 = load double, double* %12, align 8, !dbg !296
  %93 = fmul double 3.000000e+00, %92, !dbg !297
  call void @fMulHandler(double 3.000000e+00, double %92, double %93, i64 0, i64 94525873701576, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873702016, i32 304, i32 60), !dbg !298
  %94 = load double, double* %12, align 8, !dbg !298
  %95 = fmul double %93, %94, !dbg !299
  call void @fMulHandler(double %93, double %94, double %95, i64 94525873702016, i64 94525873702376, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873702784, i32 304, i32 65), !dbg !300
  %96 = fadd double %91, %95, !dbg !300
  call void @fAddHandler(double %91, double %95, double %96, i64 94525873701184, i64 94525873702784, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873703200, i32 304, i32 55), !dbg !301
  %97 = fsub double -0.000000e+00, %96, !dbg !301
  call void @fSubHandler(double -0.000000e+00, double %96, double %97, i64 0, i64 94525873703200, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873703616, i32 304, i32 20), !dbg !302
  %98 = fdiv double %97, 9.000000e+01, !dbg !302
  call void @fDivHandler(double %97, double 9.000000e+01, double %98, i64 94525873703616, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873704128, i32 304, i32 71), !dbg !286
  store double %98, double* %14, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata double* %15, metadata !303, metadata !60), !dbg !304
  %99 = load double, double* %6, align 8, !dbg !305
  %100 = load double, double* %6, align 8, !dbg !306
  %101 = fmul double %99, %100, !dbg !307
  call void @fMulHandler(double %99, double %100, double %101, i64 94525873707288, i64 94525873707640, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873708048, i32 305, i32 33), !dbg !308
  %102 = fdiv double %101, 6.000000e+00, !dbg !308
  call void @fDivHandler(double %101, double 6.000000e+00, double %102, i64 94525873708048, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873708560, i32 305, i32 37), !dbg !309
  %103 = load double, double* %6, align 8, !dbg !309
  %104 = fmul double 0x3FBDDDDDDDDDDDDE, %103, !dbg !310
  call void @fMulHandler(double 0x3FBDDDDDDDDDDDDE, double %103, double %104, i64 0, i64 94525873708920, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873709392, i32 305, i32 59), !dbg !311
  %105 = load double, double* %6, align 8, !dbg !311
  %106 = fmul double %104, %105, !dbg !312
  call void @fMulHandler(double %104, double %105, double %106, i64 94525873709392, i64 94525873709784, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873710192, i32 305, i32 63), !dbg !313
  %107 = fsub double 1.000000e+00, %106, !dbg !313
  call void @fSubHandler(double 1.000000e+00, double %106, double %107, i64 0, i64 94525873710192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873710640, i32 305, i32 49), !dbg !314
  %108 = fmul double %102, %107, !dbg !314
  call void @fMulHandler(double %102, double %107, double %108, i64 94525873708560, i64 94525873710640, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873711024, i32 305, i32 42), !dbg !315
  %109 = fsub double 1.000000e+00, %108, !dbg !315
  call void @fSubHandler(double 1.000000e+00, double %108, double %109, i64 0, i64 94525873711024, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873711472, i32 305, i32 28), !dbg !304
  store double %109, double* %15, align 8, !dbg !304
  call void @llvm.dbg.declare(metadata double* %16, metadata !316, metadata !60), !dbg !317
  %110 = load double, double* %15, align 8, !dbg !318
  %111 = load double, double* %10, align 8, !dbg !319
  %112 = call double @sqrt(double %111) #5, !dbg !320
  call void @callOneArgHandler(i32 14, double %111, double %112, i64 94525873714984, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873715728, i32 306, i32 28), !dbg !321
  %113 = fdiv double %110, %112, !dbg !321
  call void @fDivHandler(double %110, double %112, double %113, i64 94525873714632, i64 94525873715728, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873716240, i32 306, i32 27), !dbg !322
  %114 = load double, double* %6, align 8, !dbg !322
  %115 = fdiv double %113, %114, !dbg !323
  call void @fDivHandler(double %113, double %114, double %115, i64 94525873716240, i64 94525873716632, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873717040, i32 306, i32 40), !dbg !317
  store double %115, double* %16, align 8, !dbg !317
  %116 = load double, double* %16, align 8, !dbg !324
  %117 = load double, double* %13, align 8, !dbg !325
  %118 = load double, double* %14, align 8, !dbg !326
  %119 = fadd double %117, %118, !dbg !327
  call void @fAddHandler(double %117, double %118, double %119, i64 94525873719496, i64 94525873719880, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873720288, i32 307, i32 33), !dbg !328
  %120 = fmul double %116, %119, !dbg !328
  call void @fMulHandler(double %116, double %119, double %120, i64 94525873719112, i64 94525873720288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873720704, i32 307, i32 24), !dbg !329
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !329
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !330
  store double %120, double* %122, align 8, !dbg !331
  %123 = load double, double* %16, align 8, !dbg !332
  %124 = fmul double %123, 0x3CB0000000000000, !dbg !333
  call void @fMulHandler(double %123, double 0x3CB0000000000000, double %124, i64 94525873722344, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873722752, i32 308, i32 24), !dbg !334
  %125 = load double, double* %13, align 8, !dbg !334
  %126 = call double @fabs(double %125) #1, !dbg !335
  %127 = load double, double* %14, align 8, !dbg !336
  %128 = call double @fabs(double %127) #1, !dbg !337
  %129 = fadd double %126, %128, !dbg !339
  call void @fAddHandler(double %126, double %128, double %129, i64 94525873723616, i64 94525873724544, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873725024, i32 308, i32 57), !dbg !340
  %130 = fmul double %124, %129, !dbg !340
  call void @fMulHandler(double %124, double %129, double %130, i64 94525873722752, i64 94525873725024, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873725440, i32 308, i32 42), !dbg !341
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !341
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 1, !dbg !342
  store double %130, double* %132, align 8, !dbg !343
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !344
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 0, !dbg !345
  %135 = load double, double* %134, align 8, !dbg !345
  %136 = call double @fabs(double %135) #1, !dbg !346
  %137 = fmul double 0x3CC0000000000000, %136, !dbg !347
  call void @fMulHandler(double 0x3CC0000000000000, double %136, double %137, i64 0, i64 94525873731712, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873732192, i32 309, i32 42), !dbg !348
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !348
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 1, !dbg !349
  %140 = load double, double* %139, align 8, !dbg !350
  %141 = fadd double %140, %137, !dbg !350
  call void @fAddHandler(double %140, double %137, double %141, i64 94525873733416, i64 94525873732192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873733824, i32 309, i32 17), !dbg !350
  store double %141, double* %139, align 8, !dbg !350
  store i32 0, i32* %4, align 4, !dbg !351
  br label %288, !dbg !351

; <label>:142:                                    ; preds = %68, %64
  call void @llvm.dbg.declare(metadata double* %17, metadata !352, metadata !60), !dbg !354
  call void @llvm.dbg.declare(metadata double* %18, metadata !355, metadata !60), !dbg !356
  call void @llvm.dbg.declare(metadata double* %19, metadata !357, metadata !60), !dbg !358
  call void @llvm.dbg.declare(metadata double* %20, metadata !359, metadata !60), !dbg !360
  call void @llvm.dbg.declare(metadata double* %21, metadata !361, metadata !60), !dbg !362
  call void @llvm.dbg.declare(metadata double* %22, metadata !363, metadata !60), !dbg !364
  call void @llvm.dbg.declare(metadata double* %23, metadata !365, metadata !60), !dbg !366
  call void @llvm.dbg.declare(metadata double* %24, metadata !367, metadata !60), !dbg !368
  call void @llvm.dbg.declare(metadata double* %25, metadata !369, metadata !60), !dbg !370
  call void @llvm.dbg.declare(metadata double* %26, metadata !371, metadata !60), !dbg !372
  call void @llvm.dbg.declare(metadata double* %27, metadata !373, metadata !60), !dbg !374
  %143 = load double, double* %8, align 8, !dbg !375
  %144 = fcmp olt double %143, 0x3F48406003B2AE5A, !dbg !377
  %145 = call i1 @fCmpInstHandler(double %143, double 0x3F48406003B2AE5A, i1 %144, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873752096, i32 324, i32 11), !dbg !378
  br i1 %145, label %146, label %169, !dbg !378

; <label>:146:                                    ; preds = %142
  %147 = load double, double* %8, align 8, !dbg !379
  %148 = load double, double* %8, align 8, !dbg !381
  %149 = fmul double %147, %148, !dbg !382
  call void @fMulHandler(double %147, double %148, double %149, i64 94525873753208, i64 94525873753528, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873753936, i32 325, i32 26), !dbg !383
  %150 = fdiv double %149, 6.000000e+00, !dbg !383
  call void @fDivHandler(double %149, double 6.000000e+00, double %150, i64 94525873753936, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873754384, i32 325, i32 29), !dbg !384
  %151 = load double, double* %8, align 8, !dbg !384
  %152 = load double, double* %8, align 8, !dbg !385
  %153 = fmul double %151, %152, !dbg !386
  call void @fMulHandler(double %151, double %152, double %153, i64 94525873754744, i64 94525873755128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873755536, i32 325, i32 45), !dbg !387
  %154 = fdiv double %153, 2.000000e+01, !dbg !387
  call void @fDivHandler(double %153, double 2.000000e+01, double %154, i64 94525873755536, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873756048, i32 325, i32 48), !dbg !388
  %155 = fsub double 1.000000e+00, %154, !dbg !388
  call void @fSubHandler(double 1.000000e+00, double %154, double %155, i64 0, i64 94525873756048, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873756464, i32 325, i32 41), !dbg !389
  %156 = fmul double %150, %155, !dbg !389
  call void @fMulHandler(double %150, double %155, double %156, i64 94525873754384, i64 94525873756464, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873756848, i32 325, i32 34), !dbg !390
  %157 = fsub double 1.000000e+00, %156, !dbg !390
  call void @fSubHandler(double 1.000000e+00, double %156, double %157, i64 0, i64 94525873756848, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873757296, i32 325, i32 22), !dbg !391
  store double %157, double* %17, align 8, !dbg !391
  %158 = load double, double* %8, align 8, !dbg !392
  %159 = fmul double 5.000000e-01, %158, !dbg !393
  call void @fMulHandler(double 5.000000e-01, double %158, double %159, i64 0, i64 94525873758072, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873758576, i32 326, i32 27), !dbg !394
  %160 = load double, double* %8, align 8, !dbg !394
  %161 = fmul double %159, %160, !dbg !395
  call void @fMulHandler(double %159, double %160, double %161, i64 94525873758576, i64 94525873758936, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873759344, i32 326, i32 30), !dbg !396
  %162 = load double, double* %8, align 8, !dbg !396
  %163 = load double, double* %8, align 8, !dbg !397
  %164 = fmul double %162, %163, !dbg !398
  call void @fMulHandler(double %162, double %163, double %164, i64 94525873759736, i64 94525873760120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873760528, i32 326, i32 45), !dbg !399
  %165 = fdiv double %164, 1.200000e+01, !dbg !399
  call void @fDivHandler(double %164, double 1.200000e+01, double %165, i64 94525873760528, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873761040, i32 326, i32 48), !dbg !400
  %166 = fsub double 1.000000e+00, %165, !dbg !400
  call void @fSubHandler(double 1.000000e+00, double %165, double %166, i64 0, i64 94525873761040, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873761456, i32 326, i32 41), !dbg !401
  %167 = fmul double %161, %166, !dbg !401
  call void @fMulHandler(double %161, double %166, double %167, i64 94525873759344, i64 94525873761456, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873761840, i32 326, i32 34), !dbg !402
  %168 = fsub double 1.000000e+00, %167, !dbg !402
  call void @fSubHandler(double 1.000000e+00, double %167, double %168, i64 0, i64 94525873761840, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873762288, i32 326, i32 22), !dbg !403
  store double %168, double* %18, align 8, !dbg !403
  store double 0x3CB0000000000000, double* %21, align 8, !dbg !404
  store double 0x3CB0000000000000, double* %22, align 8, !dbg !405
  br label %187, !dbg !406

; <label>:169:                                    ; preds = %142
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !407, metadata !60), !dbg !409
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !410, metadata !60), !dbg !411
  %170 = load double, double* %8, align 8, !dbg !412
  %171 = call i32 @gsl_sf_sin_e(double %170, %struct.gsl_sf_result_struct* %28), !dbg !413
  %172 = load double, double* %8, align 8, !dbg !414
  %173 = call i32 @gsl_sf_cos_e(double %172, %struct.gsl_sf_result_struct* %29), !dbg !415
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !416
  %175 = load double, double* %174, align 8, !dbg !416
  %176 = load double, double* %8, align 8, !dbg !417
  %177 = fdiv double %175, %176, !dbg !418
  call void @fDivHandler(double %175, double %176, double %177, i64 94525873769448, i64 94525873771096, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873771504, i32 335, i32 35), !dbg !419
  store double %177, double* %17, align 8, !dbg !419
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !420
  %179 = load double, double* %178, align 8, !dbg !420
  store double %179, double* %18, align 8, !dbg !421
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !422
  %181 = load double, double* %180, align 8, !dbg !422
  %182 = load double, double* %8, align 8, !dbg !423
  %183 = call double @fabs(double %182) #1, !dbg !424
  %184 = fdiv double %181, %183, !dbg !425
  call void @fDivHandler(double %181, double %183, double %184, i64 94525873775272, i64 94525873777392, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873777872, i32 337, i32 39), !dbg !426
  store double %184, double* %21, align 8, !dbg !426
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !427
  %186 = load double, double* %185, align 8, !dbg !427
  store double %186, double* %22, align 8, !dbg !428
  br label %187

; <label>:187:                                    ; preds = %169, %146
  %188 = load double, double* %6, align 8, !dbg !429
  %189 = fcmp olt double %188, 0x3F48406003B2AE5A, !dbg !431
  %190 = call i1 @fCmpInstHandler(double %188, double 0x3F48406003B2AE5A, i1 %189, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873781632, i32 340, i32 12), !dbg !432
  br i1 %190, label %191, label %214, !dbg !432

; <label>:191:                                    ; preds = %187
  %192 = load double, double* %6, align 8, !dbg !433
  %193 = load double, double* %6, align 8, !dbg !435
  %194 = fmul double %192, %193, !dbg !436
  call void @fMulHandler(double %192, double %193, double %194, i64 94525873782744, i64 94525873783064, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873783472, i32 341, i32 28), !dbg !437
  %195 = fdiv double %194, 3.000000e+00, !dbg !437
  call void @fDivHandler(double %194, double 3.000000e+00, double %195, i64 94525873783472, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873783920, i32 341, i32 32), !dbg !438
  %196 = load double, double* %6, align 8, !dbg !438
  %197 = load double, double* %6, align 8, !dbg !439
  %198 = fmul double %196, %197, !dbg !440
  call void @fMulHandler(double %196, double %197, double %198, i64 94525873784280, i64 94525873784664, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873785072, i32 341, i32 49), !dbg !441
  %199 = fdiv double %198, 1.500000e+01, !dbg !441
  call void @fDivHandler(double %198, double 1.500000e+01, double %199, i64 94525873785072, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873785584, i32 341, i32 53), !dbg !442
  %200 = fsub double 1.000000e+00, %199, !dbg !442
  call void @fSubHandler(double 1.000000e+00, double %199, double %200, i64 0, i64 94525873785584, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873786000, i32 341, i32 44), !dbg !443
  %201 = fmul double %195, %200, !dbg !443
  call void @fMulHandler(double %195, double %200, double %201, i64 94525873783920, i64 94525873786000, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873786384, i32 341, i32 37), !dbg !444
  %202 = fadd double 1.000000e+00, %201, !dbg !444
  call void @fAddHandler(double 1.000000e+00, double %201, double %202, i64 0, i64 94525873786384, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873786832, i32 341, i32 23), !dbg !445
  store double %202, double* %19, align 8, !dbg !445
  %203 = load double, double* %6, align 8, !dbg !446
  %204 = load double, double* %6, align 8, !dbg !447
  %205 = fmul double %203, %204, !dbg !448
  call void @fMulHandler(double %203, double %204, double %205, i64 94525873787608, i64 94525873787992, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873788400, i32 342, i32 28), !dbg !449
  %206 = fdiv double %205, 6.000000e+00, !dbg !449
  call void @fDivHandler(double %205, double 6.000000e+00, double %206, i64 94525873788400, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873788848, i32 342, i32 32), !dbg !450
  %207 = load double, double* %6, align 8, !dbg !450
  %208 = fmul double 0x3FBDDDDDDDDDDDDE, %207, !dbg !451
  call void @fMulHandler(double 0x3FBDDDDDDDDDDDDE, double %207, double %208, i64 0, i64 94525873789208, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873789616, i32 342, i32 54), !dbg !452
  %209 = load double, double* %6, align 8, !dbg !452
  %210 = fmul double %208, %209, !dbg !453
  call void @fMulHandler(double %208, double %209, double %210, i64 94525873789616, i64 94525873790008, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873790416, i32 342, i32 58), !dbg !454
  %211 = fsub double 1.000000e+00, %210, !dbg !454
  call void @fSubHandler(double 1.000000e+00, double %210, double %211, i64 0, i64 94525873790416, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873790864, i32 342, i32 44), !dbg !455
  %212 = fmul double %206, %211, !dbg !455
  call void @fMulHandler(double %206, double %211, double %212, i64 94525873788848, i64 94525873790864, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873791248, i32 342, i32 37), !dbg !456
  %213 = fsub double 1.000000e+00, %212, !dbg !456
  call void @fSubHandler(double 1.000000e+00, double %212, double %213, i64 0, i64 94525873791248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873791696, i32 342, i32 23), !dbg !457
  store double %213, double* %20, align 8, !dbg !457
  br label %223, !dbg !458

; <label>:214:                                    ; preds = %187
  %215 = load double, double* %6, align 8, !dbg !459
  %216 = load double, double* %6, align 8, !dbg !461
  %217 = call double @tanh(double %216) #5, !dbg !462
  call void @callOneArgHandler(i32 10, double %216, double %217, i64 94525873793320, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873794112, i32 345, i32 23), !dbg !463
  %218 = fdiv double %215, %217, !dbg !463
  call void @fDivHandler(double %215, double %217, double %218, i64 94525873793000, i64 94525873794112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873794624, i32 345, i32 22), !dbg !464
  store double %218, double* %19, align 8, !dbg !464
  %219 = load double, double* %6, align 8, !dbg !465
  %220 = load double, double* %6, align 8, !dbg !466
  %221 = call double @sinh(double %220) #5, !dbg !467
  call void @callOneArgHandler(i32 8, double %220, double %221, i64 94525873795816, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873796288, i32 346, i32 23), !dbg !468
  %222 = fdiv double %219, %221, !dbg !468
  call void @fDivHandler(double %219, double %221, double %222, i64 94525873795432, i64 94525873796288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873796768, i32 346, i32 22), !dbg !469
  store double %222, double* %20, align 8, !dbg !469
  br label %223

; <label>:223:                                    ; preds = %214, %191
  %224 = load double, double* %10, align 8, !dbg !470
  %225 = call double @sqrt(double %224) #5, !dbg !471
  call void @callOneArgHandler(i32 14, double %224, double %225, i64 94525873797672, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873798080, i32 348, i32 10), !dbg !472
  %226 = load double, double* %6, align 8, !dbg !472
  %227 = fmul double %225, %226, !dbg !473
  call void @fMulHandler(double %225, double %226, double %227, i64 94525873798080, i64 94525873798536, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873798944, i32 348, i32 22), !dbg !474
  store double %227, double* %23, align 8, !dbg !474
  %228 = load double, double* %20, align 8, !dbg !475
  %229 = load double, double* %23, align 8, !dbg !476
  %230 = fdiv double %228, %229, !dbg !477
  call void @fDivHandler(double %228, double %229, double %230, i64 94525873799752, i64 94525873800136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873800544, i32 349, i32 24), !dbg !478
  store double %230, double* %24, align 8, !dbg !478
  %231 = load double, double* %24, align 8, !dbg !479
  %232 = call double @fabs(double %231) #1, !dbg !480
  %233 = fmul double 0x3CC0000000000000, %232, !dbg !481
  call void @fMulHandler(double 0x3CC0000000000000, double %232, double %233, i64 0, i64 94525873801824, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873802304, i32 350, i32 37), !dbg !482
  store double %233, double* %25, align 8, !dbg !482
  %234 = load double, double* %17, align 8, !dbg !483
  %235 = load double, double* %19, align 8, !dbg !484
  %236 = fmul double %234, %235, !dbg !485
  call void @fMulHandler(double %234, double %235, double %236, i64 94525873803112, i64 94525873803496, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873803904, i32 351, i32 21), !dbg !486
  store double %236, double* %26, align 8, !dbg !486
  %237 = load double, double* %18, align 8, !dbg !487
  store double %237, double* %27, align 8, !dbg !488
  %238 = load double, double* %24, align 8, !dbg !489
  %239 = load double, double* %26, align 8, !dbg !490
  %240 = load double, double* %27, align 8, !dbg !491
  %241 = fsub double %239, %240, !dbg !492
  call void @fSubHandler(double %239, double %240, double %241, i64 94525873805896, i64 94525873806280, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873806688, i32 353, i32 37), !dbg !493
  %242 = fmul double %238, %241, !dbg !493
  call void @fMulHandler(double %238, double %241, double %242, i64 94525873805512, i64 94525873806688, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873807104, i32 353, i32 28), !dbg !494
  %243 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !494
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %243, i32 0, i32 0, !dbg !495
  store double %242, double* %244, align 8, !dbg !496
  %245 = load double, double* %25, align 8, !dbg !497
  %246 = load double, double* %26, align 8, !dbg !498
  %247 = load double, double* %27, align 8, !dbg !499
  %248 = fsub double %246, %247, !dbg !500
  call void @fSubHandler(double %246, double %247, double %248, i64 94525873809128, i64 94525873809512, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873809920, i32 354, i32 41), !dbg !501
  %249 = call double @fabs(double %248) #1, !dbg !501
  %250 = fmul double %245, %249, !dbg !502
  call void @fMulHandler(double %245, double %249, double %250, i64 94525873808744, i64 94525873810400, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873810880, i32 354, i32 28), !dbg !503
  %251 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !503
  %252 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %251, i32 0, i32 1, !dbg !504
  store double %250, double* %252, align 8, !dbg !505
  %253 = load double, double* %24, align 8, !dbg !506
  %254 = load double, double* %21, align 8, !dbg !507
  %255 = load double, double* %19, align 8, !dbg !508
  %256 = fmul double %254, %255, !dbg !509
  call void @fMulHandler(double %254, double %255, double %256, i64 94525873812904, i64 94525873813288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873813696, i32 355, i32 44), !dbg !510
  %257 = load double, double* %22, align 8, !dbg !510
  %258 = fadd double %256, %257, !dbg !511
  call void @fAddHandler(double %256, double %257, double %258, i64 94525873813696, i64 94525873814088, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873814496, i32 355, i32 56), !dbg !512
  %259 = fmul double %253, %258, !dbg !512
  call void @fMulHandler(double %253, double %258, double %259, i64 94525873812520, i64 94525873814496, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873814912, i32 355, i32 28), !dbg !513
  %260 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !513
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %260, i32 0, i32 1, !dbg !514
  %262 = load double, double* %261, align 8, !dbg !515
  %263 = fadd double %262, %259, !dbg !515
  call void @fAddHandler(double %262, double %259, double %263, i64 94525873816136, i64 94525873814912, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873816544, i32 355, i32 17), !dbg !515
  store double %263, double* %261, align 8, !dbg !515
  %264 = load double, double* %24, align 8, !dbg !516
  %265 = load double, double* %26, align 8, !dbg !517
  %266 = load double, double* %27, align 8, !dbg !518
  %267 = fsub double %265, %266, !dbg !519
  call void @fSubHandler(double %265, double %266, double %267, i64 94525873727976, i64 94525873728360, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873728768, i32 356, i32 40), !dbg !520
  %268 = call double @fabs(double %267) #1, !dbg !520
  %269 = fmul double %264, %268, !dbg !521
  call void @fMulHandler(double %264, double %268, double %269, i64 94525873727592, i64 94525873729248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873822528, i32 356, i32 28), !dbg !522
  %270 = load double, double* %6, align 8, !dbg !522
  %271 = call double @fabs(double %270) #1, !dbg !523
  %272 = fadd double %271, 1.000000e+00, !dbg !525
  call void @fAddHandler(double %271, double 1.000000e+00, double %272, i64 94525873823392, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873823904, i32 356, i32 61), !dbg !526
  %273 = fmul double %269, %272, !dbg !526
  call void @fMulHandler(double %269, double %272, double %273, i64 94525873822528, i64 94525873823904, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873824288, i32 356, i32 48), !dbg !527
  %274 = fmul double %273, 0x3CB0000000000000, !dbg !527
  call void @fMulHandler(double %273, double 0x3CB0000000000000, double %274, i64 94525873824288, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873824704, i32 356, i32 68), !dbg !528
  %275 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !528
  %276 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %275, i32 0, i32 1, !dbg !529
  %277 = load double, double* %276, align 8, !dbg !530
  %278 = fadd double %277, %274, !dbg !530
  call void @fAddHandler(double %277, double %274, double %278, i64 94525873825928, i64 94525873824704, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873826336, i32 356, i32 17), !dbg !530
  store double %278, double* %276, align 8, !dbg !530
  %279 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !531
  %280 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %279, i32 0, i32 0, !dbg !532
  %281 = load double, double* %280, align 8, !dbg !532
  %282 = call double @fabs(double %281) #1, !dbg !533
  %283 = fmul double 0x3CC0000000000000, %282, !dbg !534
  call void @fMulHandler(double 0x3CC0000000000000, double %282, double %283, i64 0, i64 94525873830688, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873831168, i32 357, i32 42), !dbg !535
  %284 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !535
  %285 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %284, i32 0, i32 1, !dbg !536
  %286 = load double, double* %285, align 8, !dbg !537
  %287 = fadd double %286, %283, !dbg !537
  call void @fAddHandler(double %286, double %283, double %287, i64 94525873832392, i64 94525873831168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i32 0, i32 0), i64 94525873832800, i32 357, i32 17), !dbg !537
  store double %287, double* %285, align 8, !dbg !537
  store i32 0, i32* %4, align 4, !dbg !538
  br label %288, !dbg !538

; <label>:288:                                    ; preds = %223, %72, %59, %50, %48
  %289 = load i32, i32* %4, align 4, !dbg !539
  ret i32 %289, !dbg !539
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_sin_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_cos_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @tanh(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_H3d_e(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !540 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca i32, align 4
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca %struct.gsl_sf_result_struct, align 8
  %43 = alloca i32, align 4
  %44 = alloca %struct.gsl_sf_result_struct, align 8
  %45 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !544, metadata !60), !dbg !545
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !546, metadata !60), !dbg !547
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !548, metadata !60), !dbg !549
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !550, metadata !60), !dbg !551
  call void @llvm.dbg.declare(metadata double* %10, metadata !552, metadata !60), !dbg !553
  %46 = load double, double* %7, align 8, !dbg !554
  %47 = call double @fabs(double %46) #1, !dbg !555
  store double %47, double* %10, align 8, !dbg !553
  call void @llvm.dbg.declare(metadata double* %11, metadata !556, metadata !60), !dbg !557
  %48 = load double, double* %10, align 8, !dbg !558
  %49 = load double, double* %10, align 8, !dbg !559
  %50 = fmul double %48, %49, !dbg !560
  call void @fMulHandler(double %48, double %49, double %50, i64 94525873768440, i64 94525873767160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873851184, i32 368, i32 33), !dbg !557
  store double %50, double* %11, align 8, !dbg !557
  call void @llvm.dbg.declare(metadata double* %12, metadata !561, metadata !60), !dbg !562
  %51 = load double, double* %10, align 8, !dbg !563
  %52 = load double, double* %8, align 8, !dbg !564
  %53 = fmul double %51, %52, !dbg !565
  call void @fMulHandler(double %51, double %52, double %53, i64 94525873715608, i64 94525873854632, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873855040, i32 369, i32 34), !dbg !562
  store double %53, double* %12, align 8, !dbg !562
  call void @llvm.dbg.declare(metadata double* %13, metadata !566, metadata !60), !dbg !567
  %54 = load double, double* %8, align 8, !dbg !568
  %55 = call double @cosh(double %54) #5, !dbg !569
  call void @callOneArgHandler(i32 9, double %54, double %55, i64 94525873858232, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873858944, i32 370, i32 27), !dbg !567
  store double %55, double* %13, align 8, !dbg !567
  %56 = load double, double* %8, align 8, !dbg !570
  %57 = fcmp olt double %56, 0.000000e+00, !dbg !572
  %58 = call i1 @fCmpInstHandler(double %56, double 0.000000e+00, i1 %57, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873861520, i32 374, i32 10), !dbg !573
  br i1 %58, label %59, label %68, !dbg !573

; <label>:59:                                     ; preds = %4
  br label %60, !dbg !574, !llvm.loop !576

; <label>:60:                                     ; preds = %59
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !577
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !577
  store double 0x7FF8000000000000, double* %62, align 8, !dbg !577
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !577
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !577
  store double 0x7FF8000000000000, double* %64, align 8, !dbg !577
  br label %65, !dbg !577, !llvm.loop !580

; <label>:65:                                     ; preds = %60
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 375, i32 1), !dbg !582
  store i32 1, i32* %5, align 4, !dbg !582
  br label %499, !dbg !582
                                                  ; No predecessors!
  br label %67, !dbg !585

; <label>:67:                                     ; preds = %66
  br label %499, !dbg !587

; <label>:68:                                     ; preds = %4
  %69 = load double, double* %8, align 8, !dbg !588
  %70 = fcmp ogt double %69, 0x40862E42FEFA39EF, !dbg !590
  %71 = call i1 @fCmpInstHandler(double %69, double 0x40862E42FEFA39EF, i1 %70, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873870288, i32 377, i32 15), !dbg !591
  br i1 %71, label %72, label %81, !dbg !591

; <label>:72:                                     ; preds = %68
  br label %73, !dbg !592, !llvm.loop !594

; <label>:73:                                     ; preds = %72
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !595
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !595
  store double 0x7FF0000000000000, double* %75, align 8, !dbg !595
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !595
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !595
  store double 0x7FF0000000000000, double* %77, align 8, !dbg !595
  br label %78, !dbg !595, !llvm.loop !598

; <label>:78:                                     ; preds = %73
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 379, i32 16), !dbg !600
  store i32 16, i32* %5, align 4, !dbg !600
  br label %499, !dbg !600
                                                  ; No predecessors!
  br label %80, !dbg !603

; <label>:80:                                     ; preds = %79
  br label %498, !dbg !605

; <label>:81:                                     ; preds = %68
  %82 = load i32, i32* %6, align 4, !dbg !606
  %83 = icmp eq i32 %82, 0, !dbg !608
  %84 = sext i32 %82 to i64, !dbg !609
  %85 = call i1 @iCmpInstHandler(i64 %84, i64 0, i1 %83, i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873879248, i32 381, i32 15), !dbg !609
  br i1 %85, label %86, label %91, !dbg !609

; <label>:86:                                     ; preds = %81
  %87 = load double, double* %7, align 8, !dbg !610
  %88 = load double, double* %8, align 8, !dbg !612
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !613
  %90 = call i32 @gsl_sf_legendre_H3d_0_e(double %87, double %88, %struct.gsl_sf_result_struct* %89), !dbg !614
  store i32 %90, i32* %5, align 4, !dbg !615
  br label %499, !dbg !615

; <label>:91:                                     ; preds = %81
  %92 = load i32, i32* %6, align 4, !dbg !616
  %93 = icmp eq i32 %92, 1, !dbg !618
  %94 = sext i32 %92 to i64, !dbg !619
  %95 = call i1 @iCmpInstHandler(i64 %94, i64 1, i1 %93, i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873884464, i32 384, i32 15), !dbg !619
  br i1 %95, label %96, label %101, !dbg !619

; <label>:96:                                     ; preds = %91
  %97 = load double, double* %7, align 8, !dbg !620
  %98 = load double, double* %8, align 8, !dbg !622
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !623
  %100 = call i32 @gsl_sf_legendre_H3d_1_e(double %97, double %98, %struct.gsl_sf_result_struct* %99), !dbg !624
  store i32 %100, i32* %5, align 4, !dbg !625
  br label %499, !dbg !625

; <label>:101:                                    ; preds = %91
  %102 = load double, double* %8, align 8, !dbg !626
  %103 = fcmp oeq double %102, 0.000000e+00, !dbg !628
  %104 = call i1 @fCmpInstHandler(double %102, double 0.000000e+00, i1 %103, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873889632, i32 387, i32 15), !dbg !629
  br i1 %104, label %105, label %110, !dbg !629

; <label>:105:                                    ; preds = %101
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !630
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !632
  store double 0.000000e+00, double* %107, align 8, !dbg !633
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !634
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !635
  store double 0.000000e+00, double* %109, align 8, !dbg !636
  store i32 0, i32* %5, align 4, !dbg !637
  br label %499, !dbg !637

; <label>:110:                                    ; preds = %101
  %111 = load double, double* %12, align 8, !dbg !638
  %112 = fcmp olt double %111, 1.000000e+00, !dbg !640
  %113 = call i1 @fCmpInstHandler(double %111, double 1.000000e+00, i1 %112, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873895616, i32 392, i32 14), !dbg !641
  br i1 %113, label %114, label %120, !dbg !641

; <label>:114:                                    ; preds = %110
  %115 = load i32, i32* %6, align 4, !dbg !642
  %116 = load double, double* %7, align 8, !dbg !644
  %117 = load double, double* %8, align 8, !dbg !645
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !646
  %119 = call i32 @legendre_H3d_series(i32 %115, double %116, double %117, %struct.gsl_sf_result_struct* %118), !dbg !647
  store i32 %119, i32* %5, align 4, !dbg !648
  br label %499, !dbg !648

; <label>:120:                                    ; preds = %110
  %121 = load i32, i32* %6, align 4, !dbg !649
  %122 = load i32, i32* %6, align 4, !dbg !651
  %123 = mul nsw i32 %121, %122, !dbg !652
  %124 = sitofp i32 %123 to double, !dbg !649
  %125 = load double, double* %11, align 8, !dbg !653
  %126 = fadd double %124, %125, !dbg !654
  call void @fAddHandler(double %124, double %125, double %126, i64 94525873902280, i64 94525873903928, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873904336, i32 395, i32 19), !dbg !655
  %127 = load double, double* %11, align 8, !dbg !655
  %128 = fadd double 1.000000e+00, %127, !dbg !656
  call void @fAddHandler(double 1.000000e+00, double %127, double %128, i64 0, i64 94525873904728, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873905168, i32 395, i32 33), !dbg !657
  %129 = call double @sqrt(double %128) #5, !dbg !657
  call void @callOneArgHandler(i32 14, double %128, double %129, i64 94525873905168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873905616, i32 395, i32 25), !dbg !658
  %130 = fdiv double %126, %129, !dbg !658
  call void @fDivHandler(double %126, double %129, double %130, i64 94525873904336, i64 94525873905616, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873906096, i32 395, i32 24), !dbg !659
  %131 = load double, double* %13, align 8, !dbg !659
  %132 = load double, double* %13, align 8, !dbg !660
  %133 = fmul double %131, %132, !dbg !661
  call void @fMulHandler(double %131, double %132, double %133, i64 94525873906488, i64 94525873906872, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873907280, i32 395, i32 48), !dbg !662
  %134 = fdiv double %130, %133, !dbg !662
  call void @fDivHandler(double %130, double %133, double %134, i64 94525873906096, i64 94525873907280, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873907696, i32 395, i32 38), !dbg !663
  %135 = fcmp olt double %134, 0x3EFFBF7E4E8CC9D1, !dbg !663
  %136 = call i1 @fCmpInstHandler(double %134, double 0x3EFFBF7E4E8CC9D1, i1 %135, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873908176, i32 395, i32 59), !dbg !664
  br i1 %136, label %137, label %217, !dbg !664

; <label>:137:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !665, metadata !60), !dbg !667
  call void @llvm.dbg.declare(metadata double* %15, metadata !668, metadata !60), !dbg !669
  call void @llvm.dbg.declare(metadata i32* %16, metadata !670, metadata !60), !dbg !671
  %138 = load i32, i32* %6, align 4, !dbg !672
  %139 = sub nsw i32 0, %138, !dbg !673
  %140 = sitofp i32 %139 to double, !dbg !673
  %141 = fsub double %140, 5.000000e-01, !dbg !674
  call void @fSubHandler(double %140, double 5.000000e-01, double %141, i64 94525873915400, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873917104, i32 400, i32 48), !dbg !675
  %142 = load double, double* %7, align 8, !dbg !675
  %143 = load double, double* %13, align 8, !dbg !676
  %144 = call i32 @gsl_sf_conicalP_large_x_e(double %141, double %142, double %143, %struct.gsl_sf_result_struct* %14, double* %15), !dbg !677
  store i32 %144, i32* %16, align 4, !dbg !671
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !678
  %146 = load double, double* %145, align 8, !dbg !678
  %147 = fcmp oeq double %146, 0.000000e+00, !dbg !680
  %148 = call i1 @fCmpInstHandler(double %146, double 0.000000e+00, i1 %147, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873923024, i32 401, i32 14), !dbg !681
  br i1 %148, label %149, label %155, !dbg !681

; <label>:149:                                    ; preds = %137
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !682
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !684
  store double 0.000000e+00, double* %151, align 8, !dbg !685
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !686
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 1, !dbg !687
  store double 0.000000e+00, double* %153, align 8, !dbg !688
  %154 = load i32, i32* %16, align 4, !dbg !689
  store i32 %154, i32* %5, align 4, !dbg !690
  br label %499, !dbg !690

; <label>:155:                                    ; preds = %137
  call void @llvm.dbg.declare(metadata double* %17, metadata !691, metadata !60), !dbg !693
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !694, metadata !60), !dbg !695
  call void @llvm.dbg.declare(metadata double* %19, metadata !696, metadata !60), !dbg !697
  call void @llvm.dbg.declare(metadata double* %20, metadata !698, metadata !60), !dbg !699
  call void @llvm.dbg.declare(metadata double* %21, metadata !700, metadata !60), !dbg !701
  call void @llvm.dbg.declare(metadata i32* %22, metadata !702, metadata !60), !dbg !703
  %156 = load double, double* %8, align 8, !dbg !704
  %157 = call i32 @gsl_sf_lnsinh_e(double %156, %struct.gsl_sf_result_struct* %18), !dbg !705
  %158 = load i32, i32* %6, align 4, !dbg !706
  %159 = load double, double* %7, align 8, !dbg !707
  %160 = call i32 @legendre_H3d_lnnorm(i32 %158, double %159, double* %17), !dbg !708
  %161 = load double, double* %10, align 8, !dbg !709
  %162 = call double @log(double %161) #5, !dbg !710
  call void @callOneArgHandler(i32 12, double %161, double %162, i64 94525873943400, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873944144, i32 414, i32 19), !dbg !711
  store double %162, double* %19, align 8, !dbg !711
  %163 = load double, double* %17, align 8, !dbg !712
  %164 = fadd double 0x3FF250D048E7A1BD, %163, !dbg !713
  call void @fAddHandler(double 0x3FF250D048E7A1BD, double %163, double %164, i64 0, i64 94525873945048, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873945520, i32 415, i32 32), !dbg !714
  %165 = fsub double %164, 0x3FE62E42FEFA39EF, !dbg !714
  call void @fSubHandler(double %164, double 0x3FE62E42FEFA39EF, double %165, i64 94525873945520, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873946000, i32 415, i32 38), !dbg !715
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !715
  %167 = load double, double* %166, align 8, !dbg !715
  %168 = fsub double %165, %167, !dbg !716
  call void @fSubHandler(double %165, double %167, double %168, i64 94525873946000, i64 94525873946840, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873948512, i32 415, i32 46), !dbg !717
  %169 = fmul double 5.000000e-01, %168, !dbg !717
  call void @fMulHandler(double 5.000000e-01, double %168, double %169, i64 0, i64 94525873948512, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873948960, i32 415, i32 23), !dbg !718
  %170 = load double, double* %19, align 8, !dbg !718
  %171 = fsub double %169, %170, !dbg !719
  call void @fSubHandler(double %169, double %170, double %171, i64 94525873948960, i64 94525873949320, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873949728, i32 415, i32 58), !dbg !720
  store double %171, double* %20, align 8, !dbg !720
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !721
  %173 = load double, double* %172, align 8, !dbg !721
  store double %173, double* %21, align 8, !dbg !722
  %174 = load double, double* %17, align 8, !dbg !723
  %175 = call double @fabs(double %174) #1, !dbg !724
  %176 = fadd double 0x3FFD67F1C864BEB4, %175, !dbg !725
  call void @fAddHandler(double 0x3FFD67F1C864BEB4, double %175, double %176, i64 0, i64 94525873953520, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873954064, i32 417, i32 65), !dbg !726
  %177 = fmul double 5.000000e-01, %176, !dbg !726
  call void @fMulHandler(double 5.000000e-01, double %176, double %177, i64 0, i64 94525873954064, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873954512, i32 417, i32 48), !dbg !727
  %178 = load double, double* %19, align 8, !dbg !727
  %179 = call double @fabs(double %178) #1, !dbg !728
  %180 = fadd double %177, %179, !dbg !730
  call void @fAddHandler(double %177, double %179, double %180, i64 94525873954512, i64 94525873955344, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873955824, i32 417, i32 78), !dbg !731
  %181 = fmul double 0x3CC0000000000000, %180, !dbg !731
  call void @fMulHandler(double 0x3CC0000000000000, double %180, double %181, i64 0, i64 94525873955824, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873956240, i32 417, i32 42), !dbg !732
  %182 = load double, double* %21, align 8, !dbg !732
  %183 = fadd double %182, %181, !dbg !732
  call void @fAddHandler(double %182, double %181, double %183, i64 94525873956632, i64 94525873956240, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873957040, i32 417, i32 17), !dbg !732
  store double %183, double* %21, align 8, !dbg !732
  %184 = load double, double* %20, align 8, !dbg !733
  %185 = call double @fabs(double %184) #1, !dbg !734
  %186 = fmul double 0x3CC0000000000000, %185, !dbg !735
  call void @fMulHandler(double 0x3CC0000000000000, double %185, double %186, i64 0, i64 94525873959296, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873959776, i32 418, i32 42), !dbg !736
  %187 = load double, double* %21, align 8, !dbg !736
  %188 = fadd double %187, %186, !dbg !736
  call void @fAddHandler(double %187, double %186, double %188, i64 94525873960168, i64 94525873959776, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873960576, i32 418, i32 17), !dbg !736
  store double %188, double* %21, align 8, !dbg !736
  %189 = load double, double* %20, align 8, !dbg !737
  %190 = load double, double* %15, align 8, !dbg !738
  %191 = fadd double %189, %190, !dbg !739
  call void @fAddHandler(double %189, double %190, double %191, i64 94525873962360, i64 94525873962744, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873963152, i32 419, i32 48), !dbg !740
  %192 = load double, double* %21, align 8, !dbg !740
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !741
  %194 = load double, double* %193, align 8, !dbg !741
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !742
  %196 = load double, double* %195, align 8, !dbg !742
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !743
  %198 = call i32 @gsl_sf_exp_mult_err_e(double %191, double %192, double %194, double %196, %struct.gsl_sf_result_struct* %197), !dbg !744
  store i32 %198, i32* %22, align 4, !dbg !745
  %199 = load i32, i32* %22, align 4, !dbg !746
  %200 = icmp ne i32 %199, 0, !dbg !746
  %201 = sext i32 %199 to i64, !dbg !746
  %202 = call i1 @iCmpInstHandler(i64 %201, i64 0, i1 %200, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873970384, i32 420, i32 14), !dbg !746
  br i1 %202, label %203, label %205, !dbg !746

; <label>:203:                                    ; preds = %155
  %204 = load i32, i32* %22, align 4, !dbg !747
  br label %215, !dbg !747

; <label>:205:                                    ; preds = %155
  %206 = load i32, i32* %16, align 4, !dbg !748
  %207 = icmp ne i32 %206, 0, !dbg !748
  %208 = sext i32 %206 to i64, !dbg !748
  %209 = call i1 @iCmpInstHandler(i64 %208, i64 0, i1 %207, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873974928, i32 420, i32 14), !dbg !748
  br i1 %209, label %210, label %212, !dbg !748

; <label>:210:                                    ; preds = %205
  %211 = load i32, i32* %16, align 4, !dbg !750
  br label %213, !dbg !750

; <label>:212:                                    ; preds = %205
  br label %213, !dbg !752

; <label>:213:                                    ; preds = %212, %210
  %214 = phi i32 [ %211, %210 ], [ 0, %212 ], !dbg !754
  br label %215, !dbg !754

; <label>:215:                                    ; preds = %213, %203
  %216 = phi i32 [ %204, %203 ], [ %214, %213 ], !dbg !756
  store i32 %216, i32* %5, align 4, !dbg !758
  br label %499, !dbg !758

; <label>:217:                                    ; preds = %120
  %218 = load double, double* %10, align 8, !dbg !759
  %219 = load i32, i32* %6, align 4, !dbg !761
  %220 = sitofp i32 %219 to double, !dbg !761
  %221 = fmul double 1.000000e+03, %220, !dbg !762
  call void @fMulHandler(double 1.000000e+03, double %220, double %221, i64 0, i64 94525873984664, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873986432, i32 423, i32 27), !dbg !763
  %222 = load i32, i32* %6, align 4, !dbg !763
  %223 = sitofp i32 %222 to double, !dbg !763
  %224 = fmul double %221, %223, !dbg !764
  call void @fMulHandler(double %221, double %223, double %224, i64 94525873986432, i64 94525873987176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873988848, i32 423, i32 31), !dbg !765
  %225 = fcmp ogt double %218, %224, !dbg !765
  %226 = call i1 @fCmpInstHandler(double %218, double %224, i1 %225, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873989264, i32 423, i32 19), !dbg !766
  br i1 %226, label %227, label %307, !dbg !766

; <label>:227:                                    ; preds = %217
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !767, metadata !60), !dbg !769
  call void @llvm.dbg.declare(metadata double* %24, metadata !770, metadata !60), !dbg !771
  call void @llvm.dbg.declare(metadata i32* %25, metadata !772, metadata !60), !dbg !773
  %228 = load i32, i32* %6, align 4, !dbg !774
  %229 = sitofp i32 %228 to double, !dbg !774
  %230 = fadd double %229, 5.000000e-01, !dbg !775
  call void @fAddHandler(double %229, double 5.000000e-01, double %230, i64 94525873994008, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873995712, i32 428, i32 60), !dbg !776
  %231 = load double, double* %7, align 8, !dbg !776
  %232 = load double, double* %13, align 8, !dbg !777
  %233 = load double, double* %8, align 8, !dbg !778
  %234 = call i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double %230, double %231, double %232, double %233, %struct.gsl_sf_result_struct* %23, double* %24), !dbg !779
  store i32 %234, i32* %25, align 4, !dbg !773
  %235 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !780
  %236 = load double, double* %235, align 8, !dbg !780
  %237 = fcmp oeq double %236, 0.000000e+00, !dbg !782
  %238 = call i1 @fCmpInstHandler(double %236, double 0.000000e+00, i1 %237, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874002032, i32 432, i32 14), !dbg !783
  br i1 %238, label %239, label %245, !dbg !783

; <label>:239:                                    ; preds = %227
  %240 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !784
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %240, i32 0, i32 0, !dbg !786
  store double 0.000000e+00, double* %241, align 8, !dbg !787
  %242 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !788
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %242, i32 0, i32 1, !dbg !789
  store double 0.000000e+00, double* %243, align 8, !dbg !790
  %244 = load i32, i32* %25, align 4, !dbg !791
  store i32 %244, i32* %5, align 4, !dbg !792
  br label %499, !dbg !792

; <label>:245:                                    ; preds = %227
  call void @llvm.dbg.declare(metadata double* %26, metadata !793, metadata !60), !dbg !795
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !796, metadata !60), !dbg !797
  call void @llvm.dbg.declare(metadata double* %28, metadata !798, metadata !60), !dbg !799
  call void @llvm.dbg.declare(metadata double* %29, metadata !800, metadata !60), !dbg !801
  call void @llvm.dbg.declare(metadata double* %30, metadata !802, metadata !60), !dbg !803
  call void @llvm.dbg.declare(metadata i32* %31, metadata !804, metadata !60), !dbg !805
  %246 = load double, double* %8, align 8, !dbg !806
  %247 = call i32 @gsl_sf_lnsinh_e(double %246, %struct.gsl_sf_result_struct* %27), !dbg !807
  %248 = load i32, i32* %6, align 4, !dbg !808
  %249 = load double, double* %7, align 8, !dbg !809
  %250 = call i32 @legendre_H3d_lnnorm(i32 %248, double %249, double* %26), !dbg !810
  %251 = load double, double* %10, align 8, !dbg !811
  %252 = call double @log(double %251) #5, !dbg !812
  call void @callOneArgHandler(i32 12, double %251, double %252, i64 94525874016808, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874017248, i32 445, i32 19), !dbg !813
  store double %252, double* %28, align 8, !dbg !813
  %253 = load double, double* %26, align 8, !dbg !814
  %254 = fadd double 0x3FF250D048E7A1BD, %253, !dbg !815
  call void @fAddHandler(double 0x3FF250D048E7A1BD, double %253, double %254, i64 0, i64 94525874018120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874018528, i32 446, i32 32), !dbg !816
  %255 = fsub double %254, 0x3FE62E42FEFA39EF, !dbg !816
  call void @fSubHandler(double %254, double 0x3FE62E42FEFA39EF, double %255, i64 94525874018528, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874018944, i32 446, i32 38), !dbg !817
  %256 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !817
  %257 = load double, double* %256, align 8, !dbg !817
  %258 = fsub double %255, %257, !dbg !818
  call void @fSubHandler(double %255, double %257, double %258, i64 94525874018944, i64 94525874019784, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874021456, i32 446, i32 46), !dbg !819
  %259 = fmul double 5.000000e-01, %258, !dbg !819
  call void @fMulHandler(double 5.000000e-01, double %258, double %259, i64 0, i64 94525874021456, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874021904, i32 446, i32 23), !dbg !820
  %260 = load double, double* %28, align 8, !dbg !820
  %261 = fsub double %259, %260, !dbg !821
  call void @fSubHandler(double %259, double %260, double %261, i64 94525874021904, i64 94525874022264, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874022672, i32 446, i32 58), !dbg !822
  store double %261, double* %29, align 8, !dbg !822
  %262 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !823
  %263 = load double, double* %262, align 8, !dbg !823
  store double %263, double* %30, align 8, !dbg !824
  %264 = load double, double* %26, align 8, !dbg !825
  %265 = call double @fabs(double %264) #1, !dbg !826
  %266 = fadd double 0x3FFD67F1C864BEB4, %265, !dbg !827
  call void @fAddHandler(double 0x3FFD67F1C864BEB4, double %265, double %266, i64 0, i64 94525874026464, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874026944, i32 448, i32 59), !dbg !828
  %267 = fmul double 5.000000e-01, %266, !dbg !828
  call void @fMulHandler(double 5.000000e-01, double %266, double %267, i64 0, i64 94525874026944, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874027392, i32 448, i32 42), !dbg !829
  %268 = load double, double* %28, align 8, !dbg !829
  %269 = call double @fabs(double %268) #1, !dbg !830
  %270 = fadd double %267, %269, !dbg !832
  call void @fAddHandler(double %267, double %269, double %270, i64 94525874027392, i64 94525874028224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874028704, i32 448, i32 72), !dbg !833
  %271 = fmul double 0x3CB0000000000000, %270, !dbg !833
  call void @fMulHandler(double 0x3CB0000000000000, double %270, double %271, i64 0, i64 94525874028704, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874029120, i32 448, i32 36), !dbg !834
  %272 = load double, double* %30, align 8, !dbg !834
  %273 = fadd double %272, %271, !dbg !834
  call void @fAddHandler(double %272, double %271, double %273, i64 94525874029512, i64 94525874029120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525873909312, i32 448, i32 17), !dbg !834
  store double %273, double* %30, align 8, !dbg !834
  %274 = load double, double* %29, align 8, !dbg !835
  %275 = call double @fabs(double %274) #1, !dbg !836
  %276 = fmul double 0x3CC0000000000000, %275, !dbg !837
  call void @fMulHandler(double 0x3CC0000000000000, double %275, double %276, i64 0, i64 94525874034224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874034704, i32 449, i32 42), !dbg !838
  %277 = load double, double* %30, align 8, !dbg !838
  %278 = fadd double %277, %276, !dbg !838
  call void @fAddHandler(double %277, double %276, double %278, i64 94525874035096, i64 94525874034704, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874035504, i32 449, i32 17), !dbg !838
  store double %278, double* %30, align 8, !dbg !838
  %279 = load double, double* %29, align 8, !dbg !839
  %280 = load double, double* %24, align 8, !dbg !840
  %281 = fadd double %279, %280, !dbg !841
  call void @fAddHandler(double %279, double %280, double %281, i64 94525874037288, i64 94525874037672, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874038080, i32 450, i32 48), !dbg !842
  %282 = load double, double* %30, align 8, !dbg !842
  %283 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !843
  %284 = load double, double* %283, align 8, !dbg !843
  %285 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !844
  %286 = load double, double* %285, align 8, !dbg !844
  %287 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !845
  %288 = call i32 @gsl_sf_exp_mult_err_e(double %281, double %282, double %284, double %286, %struct.gsl_sf_result_struct* %287), !dbg !846
  store i32 %288, i32* %31, align 4, !dbg !847
  %289 = load i32, i32* %31, align 4, !dbg !848
  %290 = icmp ne i32 %289, 0, !dbg !848
  %291 = sext i32 %289 to i64, !dbg !848
  %292 = call i1 @iCmpInstHandler(i64 %291, i64 0, i1 %290, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874044864, i32 451, i32 14), !dbg !848
  br i1 %292, label %293, label %295, !dbg !848

; <label>:293:                                    ; preds = %245
  %294 = load i32, i32* %31, align 4, !dbg !849
  br label %305, !dbg !849

; <label>:295:                                    ; preds = %245
  %296 = load i32, i32* %25, align 4, !dbg !850
  %297 = icmp ne i32 %296, 0, !dbg !850
  %298 = sext i32 %296 to i64, !dbg !850
  %299 = call i1 @iCmpInstHandler(i64 %298, i64 0, i1 %297, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874049408, i32 451, i32 14), !dbg !850
  br i1 %299, label %300, label %302, !dbg !850

; <label>:300:                                    ; preds = %295
  %301 = load i32, i32* %25, align 4, !dbg !852
  br label %303, !dbg !852

; <label>:302:                                    ; preds = %295
  br label %303, !dbg !854

; <label>:303:                                    ; preds = %302, %300
  %304 = phi i32 [ %301, %300 ], [ 0, %302 ], !dbg !856
  br label %305, !dbg !856

; <label>:305:                                    ; preds = %303, %293
  %306 = phi i32 [ %294, %293 ], [ %304, %303 ], !dbg !858
  store i32 %306, i32* %5, align 4, !dbg !860
  br label %499, !dbg !860

; <label>:307:                                    ; preds = %217
  call void @llvm.dbg.declare(metadata double* %32, metadata !861, metadata !60), !dbg !863
  %308 = load double, double* %8, align 8, !dbg !864
  %309 = call double @tanh(double %308) #5, !dbg !865
  call void @callOneArgHandler(i32 10, double %308, double %309, i64 94525874059496, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874059936, i32 457, i32 33), !dbg !866
  %310 = fdiv double 1.000000e+00, %309, !dbg !866
  call void @fDivHandler(double 1.000000e+00, double %309, double %310, i64 0, i64 94525874059936, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874060448, i32 457, i32 32), !dbg !863
  store double %310, double* %32, align 8, !dbg !863
  call void @llvm.dbg.declare(metadata double* %33, metadata !867, metadata !60), !dbg !868
  %311 = load double, double* %8, align 8, !dbg !869
  %312 = call double @fabs(double %311) #1, !dbg !870
  %313 = fadd double %312, 1.000000e+00, !dbg !871
  call void @fAddHandler(double %312, double 1.000000e+00, double %313, i64 94525874064048, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874064560, i32 458, i32 44), !dbg !868
  store double %313, double* %33, align 8, !dbg !868
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !872, metadata !60), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %35, metadata !874, metadata !60), !dbg !875
  %314 = load i32, i32* %6, align 4, !dbg !876
  %315 = load double, double* %7, align 8, !dbg !877
  %316 = load double, double* %32, align 8, !dbg !878
  %317 = call i32 @legendre_H3d_CF1_ser(i32 %314, double %315, double %316, %struct.gsl_sf_result_struct* %34), !dbg !879
  store i32 %317, i32* %35, align 4, !dbg !875
  call void @llvm.dbg.declare(metadata double* %36, metadata !880, metadata !60), !dbg !881
  call void @llvm.dbg.declare(metadata double* %37, metadata !882, metadata !60), !dbg !883
  store double 0x2000000000000000, double* %37, align 8, !dbg !883
  call void @llvm.dbg.declare(metadata double* %38, metadata !884, metadata !60), !dbg !885
  %318 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !886
  %319 = load double, double* %318, align 8, !dbg !886
  %320 = load double, double* %37, align 8, !dbg !887
  %321 = fmul double %319, %320, !dbg !888
  call void @fMulHandler(double %319, double %320, double %321, i64 94525874078040, i64 94525874079688, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874080096, i32 463, i32 27), !dbg !885
  store double %321, double* %38, align 8, !dbg !885
  call void @llvm.dbg.declare(metadata i32* %39, metadata !889, metadata !60), !dbg !890
  %322 = load i32, i32* %6, align 4, !dbg !891
  store i32 %322, i32* %39, align 4, !dbg !893
  br label %323, !dbg !894

; <label>:323:                                    ; preds = %354, %307
  %324 = load i32, i32* %39, align 4, !dbg !895
  %325 = icmp sgt i32 %324, 0, !dbg !898
  %326 = sext i32 %324 to i64, !dbg !899
  %327 = call i1 @iCmpInstHandler(i64 %326, i64 0, i1 %325, i32 38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874084928, i32 465, i32 19), !dbg !899
  br i1 %327, label %328, label %357, !dbg !899

; <label>:328:                                    ; preds = %323
  call void @llvm.dbg.declare(metadata double* %40, metadata !900, metadata !60), !dbg !902
  %329 = load double, double* %7, align 8, !dbg !903
  %330 = load i32, i32* %39, align 4, !dbg !904
  %331 = sitofp i32 %330 to double, !dbg !904
  %332 = call double @hypot(double %329, double %331) #5, !dbg !905
  store double %332, double* %40, align 8, !dbg !902
  call void @llvm.dbg.declare(metadata double* %41, metadata !906, metadata !60), !dbg !907
  %333 = load double, double* %7, align 8, !dbg !908
  %334 = load i32, i32* %39, align 4, !dbg !909
  %335 = sitofp i32 %334 to double, !dbg !909
  %336 = fadd double %335, 1.000000e+00, !dbg !910
  call void @fAddHandler(double %335, double 1.000000e+00, double %336, i64 94525874093928, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874095632, i32 467, i32 43), !dbg !911
  %337 = call double @hypot(double %333, double %336) #5, !dbg !911
  store double %337, double* %41, align 8, !dbg !907
  %338 = load i32, i32* %39, align 4, !dbg !912
  %339 = sitofp i32 %338 to double, !dbg !912
  %340 = fmul double 2.000000e+00, %339, !dbg !913
  call void @fMulHandler(double 2.000000e+00, double %339, double %340, i64 0, i64 94525874098616, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874100320, i32 468, i32 19), !dbg !914
  %341 = fadd double %340, 1.000000e+00, !dbg !914
  call void @fAddHandler(double %340, double 1.000000e+00, double %341, i64 94525874100320, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874100736, i32 468, i32 23), !dbg !915
  %342 = load double, double* %32, align 8, !dbg !915
  %343 = fmul double %341, %342, !dbg !916
  call void @fMulHandler(double %341, double %342, double %343, i64 94525874100736, i64 94525874101096, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874101504, i32 468, i32 29), !dbg !917
  %344 = load double, double* %37, align 8, !dbg !917
  %345 = fmul double %343, %344, !dbg !918
  call void @fMulHandler(double %343, double %344, double %345, i64 94525874101504, i64 94525874101896, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874102304, i32 468, i32 38), !dbg !919
  %346 = load double, double* %41, align 8, !dbg !919
  %347 = load double, double* %38, align 8, !dbg !920
  %348 = fmul double %346, %347, !dbg !921
  call void @fMulHandler(double %346, double %347, double %348, i64 94525874102696, i64 94525874103080, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874103488, i32 468, i32 56), !dbg !922
  %349 = fsub double %345, %348, !dbg !922
  call void @fSubHandler(double %345, double %348, double %349, i64 94525874102304, i64 94525874103488, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874103904, i32 468, i32 42), !dbg !923
  %350 = load double, double* %40, align 8, !dbg !923
  %351 = fdiv double %349, %350, !dbg !924
  call void @fDivHandler(double %349, double %350, double %351, i64 94525874103904, i64 94525874104296, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874104704, i32 468, i32 63), !dbg !925
  store double %351, double* %36, align 8, !dbg !925
  %352 = load double, double* %37, align 8, !dbg !926
  store double %352, double* %38, align 8, !dbg !927
  %353 = load double, double* %36, align 8, !dbg !928
  store double %353, double* %37, align 8, !dbg !929
  br label %354, !dbg !930

; <label>:354:                                    ; preds = %328
  %355 = load i32, i32* %39, align 4, !dbg !931
  %356 = add nsw i32 %355, -1, !dbg !931
  store i32 %356, i32* %39, align 4, !dbg !931
  br label %323, !dbg !933, !llvm.loop !934

; <label>:357:                                    ; preds = %323
  %358 = load double, double* %37, align 8, !dbg !936
  %359 = call double @fabs(double %358) #1, !dbg !938
  %360 = load double, double* %38, align 8, !dbg !939
  %361 = call double @fabs(double %360) #1, !dbg !940
  %362 = fcmp ogt double %359, %361, !dbg !942
  %363 = call i1 @fCmpInstHandler(double %359, double %361, i1 %362, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874112320, i32 473, i32 17), !dbg !943
  br i1 %363, label %364, label %431, !dbg !943

; <label>:364:                                    ; preds = %357
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %42, metadata !944, metadata !60), !dbg !946
  call void @llvm.dbg.declare(metadata i32* %43, metadata !947, metadata !60), !dbg !948
  %365 = load double, double* %7, align 8, !dbg !949
  %366 = load double, double* %8, align 8, !dbg !950
  %367 = call i32 @gsl_sf_legendre_H3d_0_e(double %365, double %366, %struct.gsl_sf_result_struct* %42), !dbg !951
  store i32 %367, i32* %43, align 4, !dbg !948
  %368 = load double, double* %37, align 8, !dbg !952
  %369 = fdiv double 0x2000000000000000, %368, !dbg !953
  call void @fDivHandler(double 0x2000000000000000, double %368, double %369, i64 0, i64 94525874118584, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874118960, i32 476, i32 38), !dbg !954
  %370 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !954
  %371 = load double, double* %370, align 8, !dbg !954
  %372 = fmul double %369, %371, !dbg !955
  call void @fMulHandler(double %369, double %371, double %372, i64 94525874118960, i64 94525874119800, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874121472, i32 476, i32 42), !dbg !956
  %373 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !956
  %374 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %373, i32 0, i32 0, !dbg !957
  store double %372, double* %374, align 8, !dbg !958
  %375 = load double, double* %37, align 8, !dbg !959
  %376 = call double @fabs(double %375) #1, !dbg !960
  %377 = fdiv double 0x2000000000000000, %376, !dbg !961
  call void @fDivHandler(double 0x2000000000000000, double %376, double %377, i64 0, i64 94525874123584, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874124064, i32 477, i32 38), !dbg !962
  %378 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !962
  %379 = load double, double* %378, align 8, !dbg !962
  %380 = fmul double %377, %379, !dbg !963
  call void @fMulHandler(double %377, double %379, double %380, i64 94525874124064, i64 94525874124904, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874126576, i32 477, i32 48), !dbg !964
  %381 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !964
  %382 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %381, i32 0, i32 1, !dbg !965
  store double %380, double* %382, align 8, !dbg !966
  %383 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !967
  %384 = load double, double* %383, align 8, !dbg !967
  %385 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !968
  %386 = load double, double* %385, align 8, !dbg !968
  %387 = fdiv double %384, %386, !dbg !969
  call void @fDivHandler(double %384, double %386, double %387, i64 94525874128664, i64 94525874130760, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874132432, i32 478, i32 33), !dbg !970
  %388 = call double @fabs(double %387) #1, !dbg !970
  %389 = load i32, i32* %6, align 4, !dbg !971
  %390 = sitofp i32 %389 to double, !dbg !971
  %391 = fadd double %390, 1.000000e+00, !dbg !972
  call void @fAddHandler(double %390, double 1.000000e+00, double %391, i64 94525874133752, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874135456, i32 478, i32 48), !dbg !973
  %392 = fmul double %388, %391, !dbg !973
  call void @fMulHandler(double %388, double %391, double %392, i64 94525874132912, i64 94525874135456, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874135840, i32 478, i32 42), !dbg !974
  %393 = load double, double* %33, align 8, !dbg !974
  %394 = fmul double %392, %393, !dbg !975
  call void @fMulHandler(double %392, double %393, double %394, i64 94525874135840, i64 94525874136232, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874136640, i32 478, i32 54), !dbg !976
  %395 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !976
  %396 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %395, i32 0, i32 0, !dbg !977
  %397 = load double, double* %396, align 8, !dbg !977
  %398 = call double @fabs(double %397) #1, !dbg !978
  %399 = fmul double %394, %398, !dbg !980
  call void @fMulHandler(double %394, double %398, double %399, i64 94525874136640, i64 94525874139600, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874140080, i32 478, i32 70), !dbg !981
  %400 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !981
  %401 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %400, i32 0, i32 1, !dbg !982
  %402 = load double, double* %401, align 8, !dbg !983
  %403 = fadd double %402, %399, !dbg !983
  call void @fAddHandler(double %402, double %399, double %403, i64 94525874141304, i64 94525874140080, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874141712, i32 478, i32 19), !dbg !983
  store double %403, double* %401, align 8, !dbg !983
  %404 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !984
  %405 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %404, i32 0, i32 0, !dbg !985
  %406 = load double, double* %405, align 8, !dbg !985
  %407 = call double @fabs(double %406) #1, !dbg !986
  %408 = fmul double 0x3CC0000000000000, %407, !dbg !987
  call void @fMulHandler(double 0x3CC0000000000000, double %407, double %408, i64 0, i64 94525874146064, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874146544, i32 479, i32 44), !dbg !988
  %409 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !988
  %410 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %409, i32 0, i32 1, !dbg !989
  %411 = load double, double* %410, align 8, !dbg !990
  %412 = fadd double %411, %408, !dbg !990
  call void @fAddHandler(double %411, double %408, double %412, i64 94525874147768, i64 94525874146544, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874148176, i32 479, i32 19), !dbg !990
  store double %412, double* %410, align 8, !dbg !990
  %413 = load i32, i32* %43, align 4, !dbg !991
  %414 = icmp ne i32 %413, 0, !dbg !991
  %415 = sext i32 %413 to i64, !dbg !991
  %416 = call i1 @iCmpInstHandler(i64 %415, i64 0, i1 %414, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874150368, i32 480, i32 14), !dbg !991
  br i1 %416, label %417, label %419, !dbg !991

; <label>:417:                                    ; preds = %364
  %418 = load i32, i32* %43, align 4, !dbg !992
  br label %429, !dbg !992

; <label>:419:                                    ; preds = %364
  %420 = load i32, i32* %35, align 4, !dbg !993
  %421 = icmp ne i32 %420, 0, !dbg !993
  %422 = sext i32 %420 to i64, !dbg !993
  %423 = call i1 @iCmpInstHandler(i64 %422, i64 0, i1 %421, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874154912, i32 480, i32 14), !dbg !993
  br i1 %423, label %424, label %426, !dbg !993

; <label>:424:                                    ; preds = %419
  %425 = load i32, i32* %35, align 4, !dbg !995
  br label %427, !dbg !995

; <label>:426:                                    ; preds = %419
  br label %427, !dbg !997

; <label>:427:                                    ; preds = %426, %424
  %428 = phi i32 [ %425, %424 ], [ 0, %426 ], !dbg !999
  br label %429, !dbg !999

; <label>:429:                                    ; preds = %427, %417
  %430 = phi i32 [ %418, %417 ], [ %428, %427 ], !dbg !1001
  store i32 %430, i32* %5, align 4, !dbg !1003
  br label %499, !dbg !1003

; <label>:431:                                    ; preds = %357
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %44, metadata !1004, metadata !60), !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %45, metadata !1007, metadata !60), !dbg !1008
  %432 = load double, double* %7, align 8, !dbg !1009
  %433 = load double, double* %8, align 8, !dbg !1010
  %434 = call i32 @gsl_sf_legendre_H3d_1_e(double %432, double %433, %struct.gsl_sf_result_struct* %44), !dbg !1011
  store i32 %434, i32* %45, align 4, !dbg !1008
  %435 = load double, double* %38, align 8, !dbg !1012
  %436 = fdiv double 0x2000000000000000, %435, !dbg !1013
  call void @fDivHandler(double 0x2000000000000000, double %435, double %436, i64 0, i64 94525874169096, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874169472, i32 485, i32 38), !dbg !1014
  %437 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !1014
  %438 = load double, double* %437, align 8, !dbg !1014
  %439 = fmul double %436, %438, !dbg !1015
  call void @fMulHandler(double %436, double %438, double %439, i64 94525874169472, i64 94525874170312, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874171984, i32 485, i32 44), !dbg !1016
  %440 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1016
  %441 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %440, i32 0, i32 0, !dbg !1017
  store double %439, double* %441, align 8, !dbg !1018
  %442 = load double, double* %38, align 8, !dbg !1019
  %443 = call double @fabs(double %442) #1, !dbg !1020
  %444 = fdiv double 0x2000000000000000, %443, !dbg !1021
  call void @fDivHandler(double 0x2000000000000000, double %443, double %444, i64 0, i64 94525874174096, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874174576, i32 486, i32 38), !dbg !1022
  %445 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !1022
  %446 = load double, double* %445, align 8, !dbg !1022
  %447 = fmul double %444, %446, !dbg !1023
  call void @fMulHandler(double %444, double %446, double %447, i64 94525874174576, i64 94525874175416, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874177088, i32 486, i32 50), !dbg !1024
  %448 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1024
  %449 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %448, i32 0, i32 1, !dbg !1025
  store double %447, double* %449, align 8, !dbg !1026
  %450 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !1027
  %451 = load double, double* %450, align 8, !dbg !1027
  %452 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !1028
  %453 = load double, double* %452, align 8, !dbg !1028
  %454 = fdiv double %451, %453, !dbg !1029
  call void @fDivHandler(double %451, double %453, double %454, i64 94525874179176, i64 94525874181272, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874182944, i32 487, i32 33), !dbg !1030
  %455 = call double @fabs(double %454) #1, !dbg !1030
  %456 = load i32, i32* %6, align 4, !dbg !1031
  %457 = sitofp i32 %456 to double, !dbg !1031
  %458 = fadd double %457, 1.000000e+00, !dbg !1032
  call void @fAddHandler(double %457, double 1.000000e+00, double %458, i64 94525874184264, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874185968, i32 487, i32 48), !dbg !1033
  %459 = fmul double %455, %458, !dbg !1033
  call void @fMulHandler(double %455, double %458, double %459, i64 94525874183424, i64 94525874185968, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874186352, i32 487, i32 42), !dbg !1034
  %460 = load double, double* %33, align 8, !dbg !1034
  %461 = fmul double %459, %460, !dbg !1035
  call void @fMulHandler(double %459, double %460, double %461, i64 94525874186352, i64 94525874186744, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874187152, i32 487, i32 54), !dbg !1036
  %462 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1036
  %463 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %462, i32 0, i32 0, !dbg !1037
  %464 = load double, double* %463, align 8, !dbg !1037
  %465 = call double @fabs(double %464) #1, !dbg !1038
  %466 = fmul double %461, %465, !dbg !1040
  call void @fMulHandler(double %461, double %465, double %466, i64 94525874187152, i64 94525874190112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874190592, i32 487, i32 70), !dbg !1041
  %467 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1041
  %468 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %467, i32 0, i32 1, !dbg !1042
  %469 = load double, double* %468, align 8, !dbg !1043
  %470 = fadd double %469, %466, !dbg !1043
  call void @fAddHandler(double %469, double %466, double %470, i64 94525874191816, i64 94525874190592, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874192224, i32 487, i32 19), !dbg !1043
  store double %470, double* %468, align 8, !dbg !1043
  %471 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1044
  %472 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %471, i32 0, i32 0, !dbg !1045
  %473 = load double, double* %472, align 8, !dbg !1045
  %474 = call double @fabs(double %473) #1, !dbg !1046
  %475 = fmul double 0x3CC0000000000000, %474, !dbg !1047
  call void @fMulHandler(double 0x3CC0000000000000, double %474, double %475, i64 0, i64 94525874196576, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874197056, i32 488, i32 44), !dbg !1048
  %476 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1048
  %477 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %476, i32 0, i32 1, !dbg !1049
  %478 = load double, double* %477, align 8, !dbg !1050
  %479 = fadd double %478, %475, !dbg !1050
  call void @fAddHandler(double %478, double %475, double %479, i64 94525874198280, i64 94525874197056, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874198688, i32 488, i32 19), !dbg !1050
  store double %479, double* %477, align 8, !dbg !1050
  %480 = load i32, i32* %45, align 4, !dbg !1051
  %481 = icmp ne i32 %480, 0, !dbg !1051
  %482 = sext i32 %480 to i64, !dbg !1051
  %483 = call i1 @iCmpInstHandler(i64 %482, i64 0, i1 %481, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874200880, i32 489, i32 14), !dbg !1051
  br i1 %483, label %484, label %486, !dbg !1051

; <label>:484:                                    ; preds = %431
  %485 = load i32, i32* %45, align 4, !dbg !1052
  br label %496, !dbg !1052

; <label>:486:                                    ; preds = %431
  %487 = load i32, i32* %35, align 4, !dbg !1053
  %488 = icmp ne i32 %487, 0, !dbg !1053
  %489 = sext i32 %487 to i64, !dbg !1053
  %490 = call i1 @iCmpInstHandler(i64 %489, i64 0, i1 %488, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @5, i32 0, i32 0), i64 94525874205424, i32 489, i32 14), !dbg !1053
  br i1 %490, label %491, label %493, !dbg !1053

; <label>:491:                                    ; preds = %486
  %492 = load i32, i32* %35, align 4, !dbg !1055
  br label %494, !dbg !1055

; <label>:493:                                    ; preds = %486
  br label %494, !dbg !1057

; <label>:494:                                    ; preds = %493, %491
  %495 = phi i32 [ %492, %491 ], [ 0, %493 ], !dbg !1059
  br label %496, !dbg !1059

; <label>:496:                                    ; preds = %494, %484
  %497 = phi i32 [ %485, %484 ], [ %495, %494 ], !dbg !1061
  store i32 %497, i32* %5, align 4, !dbg !1063
  br label %499, !dbg !1063

; <label>:498:                                    ; preds = %80
  br label %499

; <label>:499:                                    ; preds = %498, %496, %429, %305, %239, %215, %149, %114, %105, %96, %86, %78, %67, %65
  %500 = load i32, i32* %5, align 4, !dbg !1064
  ret i32 %500, !dbg !1064
}

; Function Attrs: nounwind
declare double @cosh(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @legendre_H3d_series(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1065 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1066, metadata !60), !dbg !1067
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1068, metadata !60), !dbg !1069
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1070, metadata !60), !dbg !1071
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1072, metadata !60), !dbg !1073
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1074, metadata !60), !dbg !1075
  store i32 5000, i32* %9, align 4, !dbg !1075
  call void @llvm.dbg.declare(metadata double* %10, metadata !1076, metadata !60), !dbg !1077
  %26 = load double, double* %7, align 8, !dbg !1078
  %27 = fmul double 5.000000e-01, %26, !dbg !1079
  call void @fMulHandler(double 5.000000e-01, double %26, double %27, i64 0, i64 94525873898456, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874224720, i32 101, i32 33), !dbg !1080
  %28 = call double @sinh(double %27) #5, !dbg !1080
  call void @callOneArgHandler(i32 8, double %27, double %28, i64 94525874224720, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874225168, i32 101, i32 25), !dbg !1077
  store double %28, double* %10, align 8, !dbg !1077
  call void @llvm.dbg.declare(metadata double* %11, metadata !1081, metadata !60), !dbg !1082
  %29 = load double, double* %10, align 8, !dbg !1083
  %30 = load double, double* %10, align 8, !dbg !1084
  %31 = fmul double %29, %30, !dbg !1085
  call void @fMulHandler(double %29, double %30, double %31, i64 94525873858824, i64 94525874228680, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874229088, i32 102, i32 49), !dbg !1086
  %32 = fadd double 1.000000e+00, %31, !dbg !1086
  call void @fAddHandler(double 1.000000e+00, double %31, double %32, i64 0, i64 94525874229088, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874229536, i32 102, i32 41), !dbg !1087
  %33 = call double @log(double %32) #5, !dbg !1087
  call void @callOneArgHandler(i32 12, double %32, double %33, i64 94525874229536, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874229984, i32 102, i32 33), !dbg !1088
  %34 = fadd double 0x3FE62E42FEFA39EF, %33, !dbg !1088
  call void @fAddHandler(double 0x3FE62E42FEFA39EF, double %33, double %34, i64 0, i64 94525874229984, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874230464, i32 102, i32 31), !dbg !1082
  store double %34, double* %11, align 8, !dbg !1082
  call void @llvm.dbg.declare(metadata double* %12, metadata !1089, metadata !60), !dbg !1090
  %35 = load double, double* %10, align 8, !dbg !1091
  %36 = call double @log(double %35) #5, !dbg !1092
  call void @callOneArgHandler(i32 12, double %35, double %36, i64 94525874233656, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874234096, i32 103, i32 37), !dbg !1093
  %37 = fmul double 2.000000e+00, %36, !dbg !1093
  call void @fMulHandler(double 2.000000e+00, double %36, double %37, i64 0, i64 94525874234096, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874234608, i32 103, i32 36), !dbg !1094
  %38 = fadd double 0x3FE62E42FEFA39EF, %37, !dbg !1094
  call void @fAddHandler(double 0x3FE62E42FEFA39EF, double %37, double %38, i64 0, i64 94525874234608, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874234992, i32 103, i32 31), !dbg !1090
  store double %38, double* %12, align 8, !dbg !1090
  call void @llvm.dbg.declare(metadata double* %13, metadata !1095, metadata !60), !dbg !1096
  %39 = load double, double* %10, align 8, !dbg !1097
  %40 = fsub double -0.000000e+00, %39, !dbg !1098
  call void @fSubHandler(double -0.000000e+00, double %39, double %40, i64 0, i64 94525874238184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874238560, i32 104, i32 23), !dbg !1099
  %41 = load double, double* %10, align 8, !dbg !1099
  %42 = fmul double %40, %41, !dbg !1100
  call void @fMulHandler(double %40, double %41, double %42, i64 94525874238560, i64 94525874238952, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874239360, i32 104, i32 30), !dbg !1096
  store double %42, double* %13, align 8, !dbg !1096
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1101, metadata !60), !dbg !1102
  call void @llvm.dbg.declare(metadata double* %15, metadata !1103, metadata !60), !dbg !1104
  store double 1.000000e+00, double* %15, align 8, !dbg !1104
  call void @llvm.dbg.declare(metadata double* %16, metadata !1105, metadata !60), !dbg !1106
  store double 1.000000e+00, double* %16, align 8, !dbg !1106
  call void @llvm.dbg.declare(metadata double* %17, metadata !1107, metadata !60), !dbg !1108
  store double 0.000000e+00, double* %17, align 8, !dbg !1108
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1109, metadata !60), !dbg !1110
  call void @llvm.dbg.declare(metadata double* %19, metadata !1111, metadata !60), !dbg !1112
  call void @llvm.dbg.declare(metadata double* %20, metadata !1113, metadata !60), !dbg !1114
  call void @llvm.dbg.declare(metadata double* %21, metadata !1115, metadata !60), !dbg !1116
  call void @llvm.dbg.declare(metadata double* %22, metadata !1117, metadata !60), !dbg !1118
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1119, metadata !60), !dbg !1120
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1121, metadata !60), !dbg !1122
  %43 = load i32, i32* %5, align 4, !dbg !1123
  %44 = sitofp i32 %43 to double, !dbg !1123
  %45 = fadd double %44, 1.500000e+00, !dbg !1124
  call void @fAddHandler(double %44, double 1.500000e+00, double %45, i64 94525874258824, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874260592, i32 115, i32 24), !dbg !1125
  %46 = call i32 @gsl_sf_lngamma_e(double %45, %struct.gsl_sf_result_struct* %14), !dbg !1125
  %47 = load double, double* %7, align 8, !dbg !1126
  %48 = call i32 @gsl_sf_lnsinh_e(double %47, %struct.gsl_sf_result_struct* %18), !dbg !1127
  %49 = load i32, i32* %5, align 4, !dbg !1128
  %50 = load double, double* %6, align 8, !dbg !1129
  %51 = call i32 @legendre_H3d_lnnorm(i32 %49, double %50, double* %19), !dbg !1130
  %52 = load i32, i32* %5, align 4, !dbg !1131
  %53 = sitofp i32 %52 to double, !dbg !1131
  %54 = fadd double %53, 5.000000e-01, !dbg !1132
  call void @fAddHandler(double %53, double 5.000000e-01, double %54, i64 94525874264504, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874266208, i32 118, i32 23), !dbg !1133
  %55 = fmul double 5.000000e-01, %54, !dbg !1133
  call void @fMulHandler(double 5.000000e-01, double %54, double %55, i64 0, i64 94525874266208, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874266624, i32 118, i32 17), !dbg !1134
  %56 = load double, double* %12, align 8, !dbg !1134
  %57 = load double, double* %11, align 8, !dbg !1135
  %58 = fsub double %56, %57, !dbg !1136
  call void @fSubHandler(double %56, double %57, double %58, i64 94525874266984, i64 94525874267368, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874267776, i32 118, i32 40), !dbg !1137
  %59 = fmul double %55, %58, !dbg !1137
  call void @fMulHandler(double %55, double %58, double %59, i64 94525874266624, i64 94525874267776, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874268192, i32 118, i32 30), !dbg !1138
  store double %59, double* %22, align 8, !dbg !1138
  %60 = load double, double* %22, align 8, !dbg !1139
  %61 = load double, double* %19, align 8, !dbg !1140
  %62 = fadd double %61, 0x3FF250D048E7A1BD, !dbg !1141
  call void @fAddHandler(double %61, double 0x3FF250D048E7A1BD, double %62, i64 94525874269384, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874269792, i32 119, i32 36), !dbg !1142
  %63 = fsub double %62, 0x3FE62E42FEFA39EF, !dbg !1142
  call void @fSubHandler(double %62, double 0x3FE62E42FEFA39EF, double %63, i64 94525874269792, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874270208, i32 119, i32 45), !dbg !1143
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1143
  %65 = load double, double* %64, align 8, !dbg !1143
  %66 = fsub double %63, %65, !dbg !1144
  call void @fSubHandler(double %63, double %65, double %66, i64 94525874270208, i64 94525874271048, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874272720, i32 119, i32 53), !dbg !1145
  %67 = fmul double 5.000000e-01, %66, !dbg !1145
  call void @fMulHandler(double 5.000000e-01, double %66, double %67, i64 0, i64 94525874272720, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874273168, i32 119, i32 30), !dbg !1146
  %68 = fadd double %60, %67, !dbg !1146
  call void @fAddHandler(double %60, double %67, double %68, i64 94525874269000, i64 94525874273168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874273552, i32 119, i32 25), !dbg !1147
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1147
  %70 = load double, double* %69, align 8, !dbg !1147
  %71 = fsub double %68, %70, !dbg !1148
  call void @fSubHandler(double %68, double %70, double %71, i64 94525874273552, i64 94525874274392, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874276064, i32 119, i32 68), !dbg !1149
  %72 = load double, double* %6, align 8, !dbg !1149
  %73 = call double @fabs(double %72) #1, !dbg !1150
  %74 = call double @log(double %73) #5, !dbg !1151
  call void @callOneArgHandler(i32 12, double %73, double %74, i64 94525874276928, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874277472, i32 119, i32 84), !dbg !1153
  %75 = fsub double %71, %74, !dbg !1153
  call void @fSubHandler(double %71, double %74, double %75, i64 94525874276064, i64 94525874277472, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874277952, i32 119, i32 82), !dbg !1154
  store double %75, double* %20, align 8, !dbg !1154
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1155
  %77 = load double, double* %76, align 8, !dbg !1155
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1156
  %79 = load double, double* %78, align 8, !dbg !1156
  %80 = fadd double %77, %79, !dbg !1157
  call void @fAddHandler(double %77, double %79, double %80, i64 94525874279208, i64 94525874281304, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874282976, i32 120, i32 28), !dbg !1158
  %81 = load double, double* %20, align 8, !dbg !1158
  %82 = call double @fabs(double %81) #1, !dbg !1159
  %83 = fmul double 0x3CB0000000000000, %82, !dbg !1160
  call void @fMulHandler(double 0x3CB0000000000000, double %82, double %83, i64 0, i64 94525874283840, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874284320, i32 120, i32 60), !dbg !1161
  %84 = fadd double %80, %83, !dbg !1161
  call void @fAddHandler(double %80, double %83, double %84, i64 94525874282976, i64 94525874284320, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874284736, i32 120, i32 42), !dbg !1162
  store double %84, double* %21, align 8, !dbg !1162
  %85 = load double, double* %19, align 8, !dbg !1163
  %86 = call double @fabs(double %85) #1, !dbg !1164
  %87 = fadd double %86, 0x3FF250D048E7A1BD, !dbg !1165
  call void @fAddHandler(double %86, double 0x3FF250D048E7A1BD, double %87, i64 94525874286016, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874286496, i32 121, i32 49), !dbg !1166
  %88 = fadd double %87, 0x3FE62E42FEFA39EF, !dbg !1166
  call void @fAddHandler(double %87, double 0x3FE62E42FEFA39EF, double %88, i64 94525874286496, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874286912, i32 121, i32 58), !dbg !1167
  %89 = fmul double 0x3CC0000000000000, %88, !dbg !1167
  call void @fMulHandler(double 0x3CC0000000000000, double %88, double %89, i64 0, i64 94525874286912, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874287328, i32 121, i32 36), !dbg !1168
  %90 = load double, double* %21, align 8, !dbg !1168
  %91 = fadd double %90, %89, !dbg !1168
  call void @fAddHandler(double %90, double %89, double %91, i64 94525874287720, i64 94525874287328, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874288128, i32 121, i32 13), !dbg !1168
  store double %91, double* %21, align 8, !dbg !1168
  %92 = load i32, i32* %5, align 4, !dbg !1169
  %93 = sitofp i32 %92 to double, !dbg !1169
  %94 = fadd double %93, 5.000000e-01, !dbg !1170
  call void @fAddHandler(double %93, double 5.000000e-01, double %94, i64 94525874290296, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874292000, i32 122, i32 48), !dbg !1171
  %95 = fmul double 5.000000e-01, %94, !dbg !1171
  call void @fMulHandler(double 5.000000e-01, double %94, double %95, i64 0, i64 94525874292000, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874292416, i32 122, i32 42), !dbg !1172
  %96 = load double, double* %12, align 8, !dbg !1172
  %97 = call double @fabs(double %96) #1, !dbg !1173
  %98 = load double, double* %11, align 8, !dbg !1174
  %99 = call double @fabs(double %98) #1, !dbg !1175
  %100 = fadd double %97, %99, !dbg !1176
  call void @fAddHandler(double %97, double %99, double %100, i64 94525874293248, i64 94525874294176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874294656, i32 122, i32 71), !dbg !1177
  %101 = fmul double %95, %100, !dbg !1177
  call void @fMulHandler(double %95, double %100, double %101, i64 94525874292416, i64 94525874294656, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874295072, i32 122, i32 55), !dbg !1178
  %102 = fmul double 0x3CC0000000000000, %101, !dbg !1178
  call void @fMulHandler(double 0x3CC0000000000000, double %101, double %102, i64 0, i64 94525874295072, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874295488, i32 122, i32 36), !dbg !1179
  %103 = load double, double* %21, align 8, !dbg !1179
  %104 = fadd double %103, %102, !dbg !1179
  call void @fAddHandler(double %103, double %102, double %104, i64 94525874295880, i64 94525874295488, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874296288, i32 122, i32 13), !dbg !1179
  store double %104, double* %21, align 8, !dbg !1179
  store i32 1, i32* %24, align 4, !dbg !1180
  br label %105, !dbg !1182

; <label>:105:                                    ; preds = %150, %4
  %106 = load i32, i32* %24, align 4, !dbg !1183
  %107 = icmp slt i32 %106, 5000, !dbg !1186
  %108 = sext i32 %106 to i64, !dbg !1187
  %109 = call i1 @iCmpInstHandler(i64 %108, i64 5000, i1 %107, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874299360, i32 123, i32 13), !dbg !1187
  br i1 %109, label %110, label %153, !dbg !1187

; <label>:110:                                    ; preds = %105
  call void @llvm.dbg.declare(metadata double* %25, metadata !1188, metadata !60), !dbg !1190
  %111 = load i32, i32* %24, align 4, !dbg !1191
  %112 = sitofp i32 %111 to double, !dbg !1191
  %113 = fsub double %112, 5.000000e-01, !dbg !1192
  call void @fSubHandler(double %112, double 5.000000e-01, double %113, i64 94525874301880, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874303584, i32 124, i32 19), !dbg !1190
  store double %113, double* %25, align 8, !dbg !1190
  %114 = load double, double* %25, align 8, !dbg !1193
  %115 = load double, double* %25, align 8, !dbg !1194
  %116 = fmul double %114, %115, !dbg !1195
  call void @fMulHandler(double %114, double %115, double %116, i64 94525874305624, i64 94525874306008, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874306416, i32 125, i32 16), !dbg !1196
  %117 = load double, double* %6, align 8, !dbg !1196
  %118 = load double, double* %6, align 8, !dbg !1197
  %119 = fmul double %117, %118, !dbg !1198
  call void @fMulHandler(double %117, double %118, double %119, i64 94525874306808, i64 94525874307192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874307600, i32 125, i32 28), !dbg !1199
  %120 = fadd double %116, %119, !dbg !1199
  call void @fAddHandler(double %116, double %119, double %120, i64 94525874306416, i64 94525874307600, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874308016, i32 125, i32 20), !dbg !1200
  %121 = load double, double* %13, align 8, !dbg !1200
  %122 = fmul double %120, %121, !dbg !1201
  call void @fMulHandler(double %120, double %121, double %122, i64 94525874308016, i64 94525874308408, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874308816, i32 125, i32 36), !dbg !1202
  %123 = load i32, i32* %5, align 4, !dbg !1202
  %124 = load i32, i32* %24, align 4, !dbg !1203
  %125 = add nsw i32 %123, %124, !dbg !1204
  %126 = sitofp i32 %125 to double, !dbg !1202
  %127 = fadd double %126, 5.000000e-01, !dbg !1205
  call void @fAddHandler(double %126, double 5.000000e-01, double %127, i64 94525874310392, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874312096, i32 125, i32 51), !dbg !1206
  %128 = fdiv double %122, %127, !dbg !1206
  call void @fDivHandler(double %122, double %127, double %128, i64 94525874308816, i64 94525874312096, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874312480, i32 125, i32 41), !dbg !1207
  %129 = load i32, i32* %24, align 4, !dbg !1207
  %130 = sitofp i32 %129 to double, !dbg !1207
  %131 = fdiv double %128, %130, !dbg !1208
  call void @fDivHandler(double %128, double %130, double %131, i64 94525874312480, i64 94525874313256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874316992, i32 125, i32 57), !dbg !1209
  %132 = load double, double* %15, align 8, !dbg !1209
  %133 = fmul double %132, %131, !dbg !1209
  call void @fMulHandler(double %132, double %131, double %133, i64 94525874317384, i64 94525874316992, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874317792, i32 125, i32 10), !dbg !1209
  store double %133, double* %15, align 8, !dbg !1209
  %134 = load double, double* %15, align 8, !dbg !1210
  %135 = load double, double* %16, align 8, !dbg !1211
  %136 = fadd double %135, %134, !dbg !1211
  call void @fAddHandler(double %135, double %134, double %136, i64 94525874319960, i64 94525874319576, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874320368, i32 126, i32 10), !dbg !1211
  store double %136, double* %16, align 8, !dbg !1211
  %137 = load double, double* %15, align 8, !dbg !1212
  %138 = call double @fabs(double %137) #1, !dbg !1213
  %139 = fmul double 0x3CC0000000000000, %138, !dbg !1214
  call void @fMulHandler(double 0x3CC0000000000000, double %138, double %139, i64 0, i64 94525874322624, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874323104, i32 127, i32 35), !dbg !1215
  %140 = load double, double* %17, align 8, !dbg !1215
  %141 = fadd double %140, %139, !dbg !1215
  call void @fAddHandler(double %140, double %139, double %141, i64 94525874323496, i64 94525874323104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874323904, i32 127, i32 13), !dbg !1215
  store double %141, double* %17, align 8, !dbg !1215
  %142 = load double, double* %15, align 8, !dbg !1216
  %143 = load double, double* %16, align 8, !dbg !1218
  %144 = fdiv double %142, %143, !dbg !1219
  call void @fDivHandler(double %142, double %143, double %144, i64 94525874325688, i64 94525874326072, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874326480, i32 128, i32 17), !dbg !1220
  %145 = call double @fabs(double %144) #1, !dbg !1220
  %146 = fcmp olt double %145, 0x3CC0000000000000, !dbg !1221
  %147 = call i1 @fCmpInstHandler(double %145, double 0x3CC0000000000000, i1 %146, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874327440, i32 128, i32 23), !dbg !1222
  br i1 %147, label %148, label %149, !dbg !1222

; <label>:148:                                    ; preds = %110
  br label %153, !dbg !1223

; <label>:149:                                    ; preds = %110
  br label %150, !dbg !1225

; <label>:150:                                    ; preds = %149
  %151 = load i32, i32* %24, align 4, !dbg !1226
  %152 = add nsw i32 %151, 1, !dbg !1226
  store i32 %152, i32* %24, align 4, !dbg !1226
  br label %105, !dbg !1228, !llvm.loop !1229

; <label>:153:                                    ; preds = %148, %105
  %154 = load double, double* %20, align 8, !dbg !1231
  %155 = load double, double* %21, align 8, !dbg !1232
  %156 = load double, double* %16, align 8, !dbg !1233
  %157 = load double, double* %15, align 8, !dbg !1234
  %158 = call double @fabs(double %157) #1, !dbg !1235
  %159 = load double, double* %17, align 8, !dbg !1236
  %160 = fadd double %158, %159, !dbg !1237
  call void @fAddHandler(double %158, double %159, double %160, i64 94525874333696, i64 94525874334152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874334560, i32 131, i32 71), !dbg !1238
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1238
  %162 = call i32 @gsl_sf_exp_mult_err_e(double %154, double %155, double %156, double %160, %struct.gsl_sf_result_struct* %161), !dbg !1239
  store i32 %162, i32* %23, align 4, !dbg !1240
  %163 = load i32, i32* %23, align 4, !dbg !1241
  %164 = icmp ne i32 %163, 0, !dbg !1241
  %165 = sext i32 %163 to i64, !dbg !1241
  %166 = call i1 @iCmpInstHandler(i64 %165, i64 0, i1 %164, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874336768, i32 132, i32 10), !dbg !1241
  br i1 %166, label %167, label %169, !dbg !1241

; <label>:167:                                    ; preds = %153
  %168 = load i32, i32* %23, align 4, !dbg !1242
  br label %187, !dbg !1242

; <label>:169:                                    ; preds = %153
  %170 = load i32, i32* %24, align 4, !dbg !1243
  %171 = icmp eq i32 %170, 5000, !dbg !1243
  %172 = sext i32 %170 to i64, !dbg !1243
  %173 = call i1 @iCmpInstHandler(i64 %172, i64 5000, i1 %171, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874341312, i32 132, i32 10), !dbg !1243
  %174 = select i1 %173, i32 11, i32 0, !dbg !1243
  %175 = icmp ne i32 %174, 0, !dbg !1243
  %176 = sext i32 %174 to i64, !dbg !1243
  %177 = call i1 @iCmpInstHandler(i64 %176, i64 0, i1 %175, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874343200, i32 132, i32 10), !dbg !1243
  br i1 %177, label %178, label %184, !dbg !1243

; <label>:178:                                    ; preds = %169
  %179 = load i32, i32* %24, align 4, !dbg !1245
  %180 = icmp eq i32 %179, 5000, !dbg !1245
  %181 = sext i32 %179 to i64, !dbg !1245
  %182 = call i1 @iCmpInstHandler(i64 %181, i64 5000, i1 %180, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @7, i32 0, i32 0), i64 94525874344080, i32 132, i32 10), !dbg !1245
  %183 = select i1 %182, i32 11, i32 0, !dbg !1245
  br label %185, !dbg !1245

; <label>:184:                                    ; preds = %169
  br label %185, !dbg !1247

; <label>:185:                                    ; preds = %184, %178
  %186 = phi i32 [ %183, %178 ], [ 0, %184 ], !dbg !1249
  br label %187, !dbg !1249

; <label>:187:                                    ; preds = %185, %167
  %188 = phi i32 [ %168, %167 ], [ %186, %185 ], !dbg !1251
  ret i32 %188, !dbg !1253
}

declare i32 @gsl_sf_conicalP_large_x_e(double, double, double, %struct.gsl_sf_result_struct*, double*) #2

declare i32 @gsl_sf_lnsinh_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @legendre_H3d_lnnorm(i32, double, double*) #0 !dbg !1254 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1258, metadata !60), !dbg !1259
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1260, metadata !60), !dbg !1261
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !1262, metadata !60), !dbg !1263
  call void @llvm.dbg.declare(metadata double* %8, metadata !1264, metadata !60), !dbg !1265
  %16 = load double, double* %6, align 8, !dbg !1266
  %17 = call double @fabs(double %16) #1, !dbg !1267
  store double %17, double* %8, align 8, !dbg !1265
  %18 = load double, double* %8, align 8, !dbg !1268
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !1270
  %20 = call i1 @fCmpInstHandler(double %18, double 0.000000e+00, i1 %19, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525873938368, i32 50, i32 14), !dbg !1271
  br i1 %20, label %21, label %25, !dbg !1271

; <label>:21:                                     ; preds = %3
  %22 = load double*, double** %7, align 8, !dbg !1272
  store double 0.000000e+00, double* %22, align 8, !dbg !1274
  br label %23, !dbg !1275, !llvm.loop !1276

; <label>:23:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 52, i32 1), !dbg !1277
  store i32 1, i32* %4, align 4, !dbg !1277
  br label %103, !dbg !1277
                                                  ; No predecessors!
  br label %103, !dbg !1280

; <label>:25:                                     ; preds = %3
  %26 = load double, double* %6, align 8, !dbg !1281
  %27 = load i32, i32* %5, align 4, !dbg !1283
  %28 = sitofp i32 %27 to double, !dbg !1283
  %29 = fadd double %28, 1.000000e+00, !dbg !1284
  call void @fAddHandler(double %28, double 1.000000e+00, double %29, i64 94525874369896, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874371600, i32 54, i32 25), !dbg !1285
  %30 = fdiv double %29, 0x3ED965FEA53D6E41, !dbg !1285
  call void @fDivHandler(double %29, double 0x3ED965FEA53D6E41, double %30, i64 94525874371600, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874372048, i32 54, i32 31), !dbg !1286
  %31 = fcmp ogt double %26, %30, !dbg !1286
  %32 = call i1 @fCmpInstHandler(double %26, double %30, i1 %31, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874372464, i32 54, i32 18), !dbg !1287
  br i1 %32, label %33, label %83, !dbg !1287

; <label>:33:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata double* %9, metadata !1288, metadata !60), !dbg !1290
  %34 = load i32, i32* %5, align 4, !dbg !1291
  %35 = sitofp i32 %34 to double, !dbg !1291
  %36 = fadd double %35, 1.000000e+00, !dbg !1292
  call void @fAddHandler(double %35, double 1.000000e+00, double %36, i64 94525874374984, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874376688, i32 62, i32 22), !dbg !1293
  %37 = load double, double* %6, align 8, !dbg !1293
  %38 = fdiv double %36, %37, !dbg !1294
  call void @fDivHandler(double %36, double %37, double %38, i64 94525874376688, i64 94525874377048, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874377456, i32 62, i32 27), !dbg !1290
  store double %38, double* %9, align 8, !dbg !1290
  call void @llvm.dbg.declare(metadata double* %10, metadata !1295, metadata !60), !dbg !1296
  %39 = load double, double* %6, align 8, !dbg !1297
  %40 = call double @log(double %39) #5, !dbg !1298
  call void @callOneArgHandler(i32 12, double %39, double %40, i64 94525874380648, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874381088, i32 63, i32 31), !dbg !1299
  %41 = fmul double 2.000000e+00, %40, !dbg !1299
  call void @fMulHandler(double 2.000000e+00, double %40, double %41, i64 0, i64 94525874381088, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874381600, i32 63, i32 30), !dbg !1300
  %42 = load double, double* %9, align 8, !dbg !1300
  %43 = load double, double* %9, align 8, !dbg !1301
  %44 = fmul double %42, %43, !dbg !1302
  call void @fMulHandler(double %42, double %43, double %44, i64 94525874381960, i64 94525874382344, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874382752, i32 63, i32 58), !dbg !1303
  %45 = fadd double 1.000000e+00, %44, !dbg !1303
  call void @fAddHandler(double 1.000000e+00, double %44, double %45, i64 0, i64 94525874382752, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874383200, i32 63, i32 53), !dbg !1304
  %46 = call double @log(double %45) #5, !dbg !1304
  call void @callOneArgHandler(i32 12, double %45, double %46, i64 94525874383200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874383648, i32 63, i32 45), !dbg !1306
  %47 = fadd double %41, %46, !dbg !1306
  call void @fAddHandler(double %41, double %46, double %47, i64 94525874381600, i64 94525874383648, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874384128, i32 63, i32 43), !dbg !1296
  store double %47, double* %10, align 8, !dbg !1296
  call void @llvm.dbg.declare(metadata double* %11, metadata !1307, metadata !60), !dbg !1308
  %48 = load i32, i32* %5, align 4, !dbg !1309
  %49 = sitofp i32 %48 to double, !dbg !1309
  %50 = fadd double %49, 1.000000e+00, !dbg !1310
  call void @fAddHandler(double %49, double 1.000000e+00, double %50, i64 94525874387672, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874389376, i32 64, i32 36), !dbg !1311
  %51 = fmul double -2.000000e+00, %50, !dbg !1311
  call void @fMulHandler(double -2.000000e+00, double %50, double %51, i64 0, i64 94525874389376, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874389856, i32 64, i32 31), !dbg !1312
  %52 = fadd double %51, 0x3FF250D048E7A1BD, !dbg !1312
  call void @fAddHandler(double %51, double 0x3FF250D048E7A1BD, double %52, i64 94525874389856, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874390240, i32 64, i32 42), !dbg !1313
  %53 = load i32, i32* %5, align 4, !dbg !1313
  %54 = sitofp i32 %53 to double, !dbg !1313
  %55 = fadd double %54, 5.000000e-01, !dbg !1314
  call void @fAddHandler(double %54, double 5.000000e-01, double %55, i64 94525874391016, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874392720, i32 64, i32 57), !dbg !1315
  %56 = load double, double* %10, align 8, !dbg !1315
  %57 = fmul double %55, %56, !dbg !1316
  call void @fMulHandler(double %55, double %56, double %57, i64 94525874392720, i64 94525874393080, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874393488, i32 64, i32 62), !dbg !1317
  %58 = fadd double %52, %57, !dbg !1317
  call void @fAddHandler(double %52, double %57, double %58, i64 94525874390240, i64 94525874393488, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874393904, i32 64, i32 51), !dbg !1318
  %59 = load double, double* %6, align 8, !dbg !1318
  %60 = fmul double 2.880000e+02, %59, !dbg !1319
  call void @fMulHandler(double 2.880000e+02, double %59, double %60, i64 0, i64 94525874394296, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874394800, i32 64, i32 87), !dbg !1320
  %61 = load double, double* %6, align 8, !dbg !1320
  %62 = fmul double %60, %61, !dbg !1321
  call void @fMulHandler(double %60, double %61, double %62, i64 94525874394800, i64 94525874395160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874395568, i32 64, i32 94), !dbg !1322
  %63 = fdiv double 1.000000e+00, %62, !dbg !1322
  call void @fDivHandler(double 1.000000e+00, double %62, double %63, i64 0, i64 94525874395568, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874396016, i32 64, i32 80), !dbg !1323
  %64 = fadd double %58, %63, !dbg !1323
  call void @fAddHandler(double %58, double %63, double %64, i64 94525874393904, i64 94525874396016, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874396400, i32 64, i32 75), !dbg !1308
  store double %64, double* %11, align 8, !dbg !1308
  call void @llvm.dbg.declare(metadata double* %12, metadata !1324, metadata !60), !dbg !1325
  %65 = load double, double* %6, align 8, !dbg !1326
  %66 = fmul double %65, 2.000000e+00, !dbg !1327
  call void @fMulHandler(double %65, double 2.000000e+00, double %66, i64 94525874399592, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874400000, i32 65, i32 34), !dbg !1328
  %67 = load double, double* %9, align 8, !dbg !1328
  %68 = fmul double %66, %67, !dbg !1329
  call void @fMulHandler(double %66, double %67, double %68, i64 94525874400000, i64 94525874400360, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874400768, i32 65, i32 40), !dbg !1330
  %69 = load double, double* %9, align 8, !dbg !1330
  %70 = load double, double* %9, align 8, !dbg !1331
  %71 = fmul double %69, %70, !dbg !1332
  call void @fMulHandler(double %69, double %70, double %71, i64 94525874401160, i64 94525874401544, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874401952, i32 65, i32 58), !dbg !1333
  %72 = fdiv double %71, 3.000000e+00, !dbg !1333
  call void @fDivHandler(double %71, double 3.000000e+00, double %72, i64 94525874401952, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874402400, i32 65, i32 62), !dbg !1334
  %73 = fsub double 1.000000e+00, %72, !dbg !1334
  call void @fSubHandler(double 1.000000e+00, double %72, double %73, i64 0, i64 94525874402400, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874402816, i32 65, i32 53), !dbg !1335
  %74 = fmul double %68, %73, !dbg !1335
  call void @fMulHandler(double %68, double %73, double %74, i64 94525874400768, i64 94525874402816, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874403200, i32 65, i32 46), !dbg !1325
  store double %74, double* %12, align 8, !dbg !1325
  %75 = load double, double* %8, align 8, !dbg !1336
  %76 = call double @log(double %75) #5, !dbg !1337
  call void @callOneArgHandler(i32 12, double %75, double %76, i64 94525874405272, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874405744, i32 66, i32 15), !dbg !1338
  %77 = load double, double* %11, align 8, !dbg !1338
  %78 = fadd double %76, %77, !dbg !1339
  call void @fAddHandler(double %76, double %77, double %78, i64 94525874405744, i64 94525874406200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874406608, i32 66, i32 28), !dbg !1340
  %79 = load double, double* %12, align 8, !dbg !1340
  %80 = fadd double %78, %79, !dbg !1341
  call void @fAddHandler(double %78, double %79, double %80, i64 94525874406608, i64 94525874407000, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874407408, i32 66, i32 43), !dbg !1342
  %81 = fsub double %80, 0x3FF250D048E7A1BD, !dbg !1342
  call void @fSubHandler(double %80, double 0x3FF250D048E7A1BD, double %81, i64 94525874407408, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874407824, i32 66, i32 57), !dbg !1343
  %82 = load double*, double** %7, align 8, !dbg !1343
  store double %81, double* %82, align 8, !dbg !1344
  store i32 0, i32* %4, align 4, !dbg !1345
  br label %103, !dbg !1345

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1346, metadata !60), !dbg !1348
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1349, metadata !60), !dbg !1350
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1351, metadata !60), !dbg !1352
  %84 = load i32, i32* %5, align 4, !dbg !1353
  %85 = sitofp i32 %84 to double, !dbg !1353
  %86 = fadd double %85, 1.000000e+00, !dbg !1354
  call void @fAddHandler(double %85, double 1.000000e+00, double %86, i64 94525874414664, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874416368, i32 73, i32 33), !dbg !1355
  %87 = load double, double* %6, align 8, !dbg !1355
  %88 = call i32 @gsl_sf_lngamma_complex_e(double %86, double %87, %struct.gsl_sf_result_struct* %13, %struct.gsl_sf_result_struct* %14), !dbg !1356
  %89 = load double, double* %8, align 8, !dbg !1357
  %90 = fmul double 0x400921FB54442D18, %89, !dbg !1358
  call void @fMulHandler(double 0x400921FB54442D18, double %89, double %90, i64 0, i64 94525874418104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874418544, i32 74, i32 26), !dbg !1359
  %91 = call i32 @gsl_sf_lnsinh_e(double %90, %struct.gsl_sf_result_struct* %15), !dbg !1359
  %92 = load double, double* %8, align 8, !dbg !1360
  %93 = call double @log(double %92) #5, !dbg !1361
  call void @callOneArgHandler(i32 12, double %92, double %93, i64 94525874419496, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874419936, i32 75, i32 15), !dbg !1362
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1362
  %95 = load double, double* %94, align 8, !dbg !1362
  %96 = fadd double %93, %95, !dbg !1363
  call void @fAddHandler(double %93, double %95, double %96, i64 94525874419936, i64 94525874420840, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874422512, i32 75, i32 28), !dbg !1364
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1364
  %98 = load double, double* %97, align 8, !dbg !1364
  %99 = fmul double 2.000000e+00, %98, !dbg !1365
  call void @fMulHandler(double 2.000000e+00, double %98, double %99, i64 0, i64 94525874423352, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874425056, i32 75, i32 47), !dbg !1366
  %100 = fadd double %96, %99, !dbg !1366
  call void @fAddHandler(double %96, double %99, double %100, i64 94525874422512, i64 94525874425056, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874425440, i32 75, i32 42), !dbg !1367
  %101 = fsub double %100, 0x3FF250D048E7A1BD, !dbg !1367
  call void @fSubHandler(double %100, double 0x3FF250D048E7A1BD, double %101, i64 94525874425440, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @9, i32 0, i32 0), i64 94525874425856, i32 75, i32 57), !dbg !1368
  %102 = load double*, double** %7, align 8, !dbg !1368
  store double %101, double* %102, align 8, !dbg !1369
  store i32 0, i32* %4, align 4, !dbg !1370
  br label %103, !dbg !1370

; <label>:103:                                    ; preds = %83, %33, %24, %23
  %104 = load i32, i32* %4, align 4, !dbg !1371
  ret i32 %104, !dbg !1371
}

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double, double, double, double, %struct.gsl_sf_result_struct*, double*) #2

; Function Attrs: nounwind uwtable
define internal i32 @legendre_H3d_CF1_ser(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1372 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1373, metadata !60), !dbg !1374
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1375, metadata !60), !dbg !1376
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1377, metadata !60), !dbg !1378
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1379, metadata !60), !dbg !1380
  call void @llvm.dbg.declare(metadata double* %10, metadata !1381, metadata !60), !dbg !1382
  %20 = load double, double* %7, align 8, !dbg !1383
  %21 = load i32, i32* %6, align 4, !dbg !1384
  %22 = sitofp i32 %21 to double, !dbg !1384
  %23 = fadd double %22, 1.000000e+00, !dbg !1385
  call void @fAddHandler(double %22, double 1.000000e+00, double %23, i64 94525873968968, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874442672, i32 213, i32 39), !dbg !1386
  %24 = call double @hypot(double %20, double %23) #5, !dbg !1386
  %25 = load i32, i32* %6, align 4, !dbg !1387
  %26 = sitofp i32 %25 to double, !dbg !1387
  %27 = fmul double 2.000000e+00, %26, !dbg !1388
  call void @fMulHandler(double 2.000000e+00, double %26, double %27, i64 0, i64 94525874443880, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874445584, i32 213, i32 50), !dbg !1389
  %28 = fadd double %27, 3.000000e+00, !dbg !1389
  call void @fAddHandler(double %27, double 3.000000e+00, double %28, i64 94525874445584, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874446000, i32 213, i32 54), !dbg !1390
  %29 = load double, double* %8, align 8, !dbg !1390
  %30 = fmul double %28, %29, !dbg !1391
  call void @fMulHandler(double %28, double %29, double %30, i64 94525874446000, i64 94525874446360, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874446768, i32 213, i32 57), !dbg !1392
  %31 = fdiv double %24, %30, !dbg !1392
  call void @fDivHandler(double %24, double %30, double %31, i64 94525874443176, i64 94525874446768, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874447184, i32 213, i32 44), !dbg !1382
  store double %31, double* %10, align 8, !dbg !1382
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1393, metadata !60), !dbg !1394
  store i32 20000, i32* %11, align 4, !dbg !1394
  call void @llvm.dbg.declare(metadata double* %12, metadata !1395, metadata !60), !dbg !1396
  store double 1.000000e+00, double* %12, align 8, !dbg !1396
  call void @llvm.dbg.declare(metadata double* %13, metadata !1397, metadata !60), !dbg !1398
  store double 1.000000e+00, double* %13, align 8, !dbg !1398
  call void @llvm.dbg.declare(metadata double* %14, metadata !1399, metadata !60), !dbg !1400
  store double 0.000000e+00, double* %14, align 8, !dbg !1400
  call void @llvm.dbg.declare(metadata double* %15, metadata !1401, metadata !60), !dbg !1402
  store double 0.000000e+00, double* %15, align 8, !dbg !1402
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1403, metadata !60), !dbg !1404
  store i32 1, i32* %16, align 4, !dbg !1405
  br label %32, !dbg !1407

; <label>:32:                                     ; preds = %102, %4
  %33 = load i32, i32* %16, align 4, !dbg !1408
  %34 = icmp slt i32 %33, 20000, !dbg !1411
  %35 = sext i32 %33 to i64, !dbg !1412
  %36 = call i1 @iCmpInstHandler(i64 %35, i64 20000, i1 %34, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874465536, i32 221, i32 13), !dbg !1412
  br i1 %36, label %37, label %105, !dbg !1412

; <label>:37:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata double* %17, metadata !1413, metadata !60), !dbg !1415
  %38 = load i32, i32* %6, align 4, !dbg !1416
  %39 = sitofp i32 %38 to double, !dbg !1416
  %40 = fmul double 2.000000e+00, %39, !dbg !1417
  call void @fMulHandler(double 2.000000e+00, double %39, double %40, i64 0, i64 94525874468056, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874469760, i32 222, i32 22), !dbg !1418
  %41 = fadd double %40, 1.000000e+00, !dbg !1418
  call void @fAddHandler(double %40, double 1.000000e+00, double %41, i64 94525874469760, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874470176, i32 222, i32 27), !dbg !1419
  %42 = load i32, i32* %16, align 4, !dbg !1419
  %43 = sitofp i32 %42 to double, !dbg !1419
  %44 = fmul double 2.000000e+00, %43, !dbg !1420
  call void @fMulHandler(double 2.000000e+00, double %43, double %44, i64 0, i64 94525874470920, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874472624, i32 222, i32 38), !dbg !1421
  %45 = fadd double %41, %44, !dbg !1421
  call void @fAddHandler(double %41, double %44, double %45, i64 94525874470176, i64 94525874472624, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874473008, i32 222, i32 33), !dbg !1415
  store double %45, double* %17, align 8, !dbg !1415
  call void @llvm.dbg.declare(metadata double* %18, metadata !1422, metadata !60), !dbg !1423
  %46 = load i32, i32* %6, align 4, !dbg !1424
  %47 = sitofp i32 %46 to double, !dbg !1424
  %48 = fadd double %47, 1.000000e+00, !dbg !1425
  call void @fAddHandler(double %47, double 1.000000e+00, double %48, i64 94525874476552, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874478256, i32 223, i32 23), !dbg !1426
  %49 = load i32, i32* %16, align 4, !dbg !1426
  %50 = sitofp i32 %49 to double, !dbg !1426
  %51 = fadd double %48, %50, !dbg !1427
  call void @fAddHandler(double %48, double %50, double %51, i64 94525874478256, i64 94525874479000, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874480672, i32 223, i32 29), !dbg !1423
  store double %51, double* %18, align 8, !dbg !1423
  call void @llvm.dbg.declare(metadata double* %19, metadata !1428, metadata !60), !dbg !1429
  %52 = load double, double* %7, align 8, !dbg !1430
  %53 = load double, double* %7, align 8, !dbg !1431
  %54 = fmul double %52, %53, !dbg !1432
  call void @fMulHandler(double %52, double %53, double %54, i64 94525874483864, i64 94525874484216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874484624, i32 224, i32 25), !dbg !1433
  %55 = load double, double* %18, align 8, !dbg !1433
  %56 = load double, double* %18, align 8, !dbg !1434
  %57 = fmul double %55, %56, !dbg !1435
  call void @fMulHandler(double %55, double %56, double %57, i64 94525874485016, i64 94525874485400, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874485808, i32 224, i32 38), !dbg !1436
  %58 = fadd double %54, %57, !dbg !1436
  call void @fAddHandler(double %54, double %57, double %58, i64 94525874484624, i64 94525874485808, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874486224, i32 224, i32 33), !dbg !1437
  %59 = fsub double -0.000000e+00, %58, !dbg !1437
  call void @fSubHandler(double -0.000000e+00, double %58, double %59, i64 0, i64 94525874486224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874486640, i32 224, i32 17), !dbg !1438
  %60 = load double, double* %17, align 8, !dbg !1438
  %61 = load double, double* %17, align 8, !dbg !1439
  %62 = fadd double %61, 2.000000e+00, !dbg !1440
  call void @fAddHandler(double %61, double 2.000000e+00, double %62, i64 94525874487416, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874487856, i32 224, i32 53), !dbg !1441
  %63 = fmul double %60, %62, !dbg !1441
  call void @fMulHandler(double %60, double %62, double %63, i64 94525874487032, i64 94525874487856, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874488240, i32 224, i32 48), !dbg !1442
  %64 = load double, double* %8, align 8, !dbg !1442
  %65 = fmul double %63, %64, !dbg !1443
  call void @fMulHandler(double %63, double %64, double %65, i64 94525874488240, i64 94525874488632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874489040, i32 224, i32 58), !dbg !1444
  %66 = load double, double* %8, align 8, !dbg !1444
  %67 = fmul double %65, %66, !dbg !1445
  call void @fMulHandler(double %65, double %66, double %67, i64 94525874489040, i64 94525874489432, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874489840, i32 224, i32 67), !dbg !1446
  %68 = fdiv double %59, %67, !dbg !1446
  call void @fDivHandler(double %59, double %67, double %68, i64 94525874486640, i64 94525874489840, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874490256, i32 224, i32 43), !dbg !1429
  store double %68, double* %19, align 8, !dbg !1429
  %69 = load double, double* %19, align 8, !dbg !1447
  %70 = fsub double -0.000000e+00, %69, !dbg !1448
  call void @fSubHandler(double -0.000000e+00, double %69, double %70, i64 0, i64 94525874492328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874492736, i32 225, i32 12), !dbg !1449
  %71 = load double, double* %14, align 8, !dbg !1449
  %72 = fadd double 1.000000e+00, %71, !dbg !1450
  call void @fAddHandler(double 1.000000e+00, double %71, double %72, i64 0, i64 94525874493128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874493568, i32 225, i32 21), !dbg !1451
  %73 = fmul double %70, %72, !dbg !1451
  call void @fMulHandler(double %70, double %72, double %73, i64 94525874492736, i64 94525874493568, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874493952, i32 225, i32 15), !dbg !1452
  %74 = load double, double* %19, align 8, !dbg !1452
  %75 = load double, double* %14, align 8, !dbg !1453
  %76 = fadd double 1.000000e+00, %75, !dbg !1454
  call void @fAddHandler(double 1.000000e+00, double %75, double %76, i64 0, i64 94525874494728, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874495168, i32 225, i32 44), !dbg !1455
  %77 = fmul double %74, %76, !dbg !1455
  call void @fMulHandler(double %74, double %76, double %77, i64 94525874494344, i64 94525874495168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874495552, i32 225, i32 38), !dbg !1456
  %78 = fadd double 1.000000e+00, %77, !dbg !1456
  call void @fAddHandler(double 1.000000e+00, double %77, double %78, i64 0, i64 94525874495552, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874496000, i32 225, i32 34), !dbg !1457
  %79 = fdiv double %73, %78, !dbg !1457
  call void @fDivHandler(double %73, double %78, double %79, i64 94525874493952, i64 94525874496000, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874496384, i32 225, i32 28), !dbg !1458
  store double %79, double* %14, align 8, !dbg !1458
  %80 = load double, double* %14, align 8, !dbg !1459
  %81 = load double, double* %12, align 8, !dbg !1460
  %82 = fmul double %81, %80, !dbg !1460
  call void @fMulHandler(double %81, double %80, double %82, i64 94525874497576, i64 94525874497192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874497984, i32 226, i32 9), !dbg !1460
  store double %82, double* %12, align 8, !dbg !1460
  %83 = load double, double* %12, align 8, !dbg !1461
  %84 = load double, double* %13, align 8, !dbg !1462
  %85 = fadd double %84, %83, !dbg !1462
  call void @fAddHandler(double %84, double %83, double %85, i64 94525874500152, i64 94525874499768, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874500560, i32 227, i32 9), !dbg !1462
  store double %85, double* %13, align 8, !dbg !1462
  %86 = load i32, i32* %16, align 4, !dbg !1463
  %87 = sitofp i32 %86 to double, !dbg !1463
  %88 = fmul double 0x3CC0000000000000, %87, !dbg !1464
  call void @fMulHandler(double 0x3CC0000000000000, double %87, double %88, i64 0, i64 94525874502728, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874504400, i32 228, i32 38), !dbg !1465
  %89 = load double, double* %12, align 8, !dbg !1465
  %90 = call double @fabs(double %89) #1, !dbg !1466
  %91 = fmul double %88, %90, !dbg !1467
  call void @fMulHandler(double %88, double %90, double %91, i64 94525874504400, i64 94525874505264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874505744, i32 228, i32 42), !dbg !1468
  %92 = load double, double* %15, align 8, !dbg !1468
  %93 = fadd double %92, %91, !dbg !1468
  call void @fAddHandler(double %92, double %91, double %93, i64 94525874506136, i64 94525874505744, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874506544, i32 228, i32 13), !dbg !1468
  store double %93, double* %15, align 8, !dbg !1468
  %94 = load double, double* %12, align 8, !dbg !1469
  %95 = load double, double* %13, align 8, !dbg !1471
  %96 = fdiv double %94, %95, !dbg !1472
  call void @fDivHandler(double %94, double %95, double %96, i64 94525874508328, i64 94525874508712, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874509120, i32 229, i32 15), !dbg !1473
  %97 = call double @fabs(double %96) #1, !dbg !1473
  %98 = fcmp olt double %97, 0x3CB0000000000000, !dbg !1474
  %99 = call i1 @fCmpInstHandler(double %97, double 0x3CB0000000000000, i1 %98, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874510080, i32 229, i32 21), !dbg !1475
  br i1 %99, label %100, label %101, !dbg !1475

; <label>:100:                                    ; preds = %37
  br label %105, !dbg !1476

; <label>:101:                                    ; preds = %37
  br label %102, !dbg !1478

; <label>:102:                                    ; preds = %101
  %103 = load i32, i32* %16, align 4, !dbg !1479
  %104 = add nsw i32 %103, 1, !dbg !1479
  store i32 %104, i32* %16, align 4, !dbg !1479
  br label %32, !dbg !1481, !llvm.loop !1482

; <label>:105:                                    ; preds = %100, %32
  %106 = load double, double* %10, align 8, !dbg !1484
  %107 = load double, double* %13, align 8, !dbg !1485
  %108 = fmul double %106, %107, !dbg !1486
  call void @fMulHandler(double %106, double %107, double %108, i64 94525874514776, i64 94525874515096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874515504, i32 232, i32 22), !dbg !1487
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1487
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !1488
  store double %108, double* %110, align 8, !dbg !1489
  %111 = load double, double* %10, align 8, !dbg !1490
  %112 = load double, double* %12, align 8, !dbg !1491
  %113 = fmul double %111, %112, !dbg !1492
  call void @fMulHandler(double %111, double %112, double %113, i64 94525874517144, i64 94525874517528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874517936, i32 233, i32 27), !dbg !1493
  %114 = call double @fabs(double %113) #1, !dbg !1493
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1494
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !1495
  store double %114, double* %116, align 8, !dbg !1496
  %117 = load double, double* %10, align 8, !dbg !1497
  %118 = load double, double* %15, align 8, !dbg !1498
  %119 = fmul double %117, %118, !dbg !1499
  call void @fMulHandler(double %117, double %118, double %119, i64 94525874520120, i64 94525874520504, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874520912, i32 234, i32 27), !dbg !1500
  %120 = call double @fabs(double %119) #1, !dbg !1500
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1501
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 1, !dbg !1502
  %123 = load double, double* %122, align 8, !dbg !1503
  %124 = fadd double %123, %120, !dbg !1503
  call void @fAddHandler(double %123, double %120, double %124, i64 94525874522680, i64 94525874521392, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874523088, i32 234, i32 15), !dbg !1503
  store double %124, double* %122, align 8, !dbg !1503
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1504
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !1505
  %127 = load double, double* %126, align 8, !dbg !1505
  %128 = call double @fabs(double %127) #1, !dbg !1506
  %129 = fmul double 0x3CD0000000000000, %128, !dbg !1507
  call void @fMulHandler(double 0x3CD0000000000000, double %128, double %129, i64 0, i64 94525874527440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874527984, i32 235, i32 40), !dbg !1508
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1508
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !1509
  %132 = load double, double* %131, align 8, !dbg !1510
  %133 = fadd double %132, %129, !dbg !1510
  call void @fAddHandler(double %132, double %129, double %133, i64 94525874531272, i64 94525874527984, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874531680, i32 235, i32 15), !dbg !1510
  store double %133, double* %131, align 8, !dbg !1510
  %134 = load i32, i32* %16, align 4, !dbg !1511
  %135 = icmp sge i32 %134, 20000, !dbg !1513
  %136 = sext i32 %134 to i64, !dbg !1514
  %137 = call i1 @iCmpInstHandler(i64 %136, i64 20000, i1 %135, i32 39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @11, i32 0, i32 0), i64 94525874533872, i32 237, i32 8), !dbg !1514
  br i1 %137, label %138, label %141, !dbg !1514

; <label>:138:                                    ; preds = %105
  br label %139, !dbg !1515, !llvm.loop !1516

; <label>:139:                                    ; preds = %138
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 238, i32 11), !dbg !1517
  store i32 11, i32* %5, align 4, !dbg !1517
  br label %142, !dbg !1517
                                                  ; No predecessors!
  br label %142, !dbg !1520

; <label>:141:                                    ; preds = %105
  store i32 0, i32* %5, align 4, !dbg !1522
  br label %142, !dbg !1522

; <label>:142:                                    ; preds = %141, %140, %139
  %143 = load i32, i32* %5, align 4, !dbg !1523
  ret i32 %143, !dbg !1523
}

; Function Attrs: nounwind
declare double @hypot(double, double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_H3d_array(i32, double, double, double*) #0 !dbg !1524 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1527, metadata !60), !dbg !1528
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1529, metadata !60), !dbg !1530
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1531, metadata !60), !dbg !1532
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !1533, metadata !60), !dbg !1534
  %27 = load double, double* %8, align 8, !dbg !1535
  %28 = fcmp olt double %27, 0.000000e+00, !dbg !1537
  %29 = call i1 @fCmpInstHandler(double %27, double 0.000000e+00, i1 %28, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874549504, i32 500, i32 9), !dbg !1538
  br i1 %29, label %35, label %30, !dbg !1538

; <label>:30:                                     ; preds = %4
  %31 = load i32, i32* %6, align 4, !dbg !1539
  %32 = icmp slt i32 %31, 0, !dbg !1541
  %33 = sext i32 %31 to i64, !dbg !1542
  %34 = call i1 @iCmpInstHandler(i64 %33, i64 0, i1 %32, i32 40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874550960, i32 500, i32 23), !dbg !1542
  br i1 %34, label %35, label %54, !dbg !1542

; <label>:35:                                     ; preds = %30, %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1543, metadata !60), !dbg !1545
  store i32 0, i32* %10, align 4, !dbg !1546
  br label %36, !dbg !1548

; <label>:36:                                     ; preds = %48, %35
  %37 = load i32, i32* %10, align 4, !dbg !1549
  %38 = load i32, i32* %6, align 4, !dbg !1552
  %39 = icmp sle i32 %37, %38, !dbg !1553
  %40 = sext i32 %37 to i64, !dbg !1554
  %41 = sext i32 %38 to i64, !dbg !1554
  %42 = call i1 @iCmpInstHandler(i64 %40, i64 %41, i1 %39, i32 41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874554624, i32 502, i32 19), !dbg !1554
  br i1 %42, label %43, label %51, !dbg !1554

; <label>:43:                                     ; preds = %36
  %44 = load i32, i32* %10, align 4, !dbg !1555
  %45 = sext i32 %44 to i64, !dbg !1557
  %46 = load double*, double** %9, align 8, !dbg !1557
  %47 = getelementptr inbounds double, double* %46, i64 %45, !dbg !1557
  store double 0.000000e+00, double* %47, align 8, !dbg !1558
  br label %48, !dbg !1557

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %10, align 4, !dbg !1559
  %50 = add nsw i32 %49, 1, !dbg !1559
  store i32 %50, i32* %10, align 4, !dbg !1559
  br label %36, !dbg !1561, !llvm.loop !1562

; <label>:51:                                     ; preds = %36
  br label %52, !dbg !1564, !llvm.loop !1565

; <label>:52:                                     ; preds = %51
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 503, i32 1), !dbg !1566
  store i32 1, i32* %5, align 4, !dbg !1566
  br label %204, !dbg !1566
                                                  ; No predecessors!
  br label %204, !dbg !1569

; <label>:54:                                     ; preds = %30
  %55 = load double, double* %8, align 8, !dbg !1570
  %56 = fcmp ogt double %55, 0x40862E42FEFA39EF, !dbg !1572
  %57 = call i1 @fCmpInstHandler(double %55, double 0x40862E42FEFA39EF, i1 %56, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874565744, i32 505, i32 15), !dbg !1573
  br i1 %57, label %58, label %77, !dbg !1573

; <label>:58:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1574, metadata !60), !dbg !1576
  store i32 0, i32* %11, align 4, !dbg !1577
  br label %59, !dbg !1579

; <label>:59:                                     ; preds = %71, %58
  %60 = load i32, i32* %11, align 4, !dbg !1580
  %61 = load i32, i32* %6, align 4, !dbg !1583
  %62 = icmp sle i32 %60, %61, !dbg !1584
  %63 = sext i32 %60 to i64, !dbg !1585
  %64 = sext i32 %61 to i64, !dbg !1585
  %65 = call i1 @iCmpInstHandler(i64 %63, i64 %64, i1 %62, i32 41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874569552, i32 508, i32 19), !dbg !1585
  br i1 %65, label %66, label %74, !dbg !1585

; <label>:66:                                     ; preds = %59
  %67 = load i32, i32* %11, align 4, !dbg !1586
  %68 = sext i32 %67 to i64, !dbg !1588
  %69 = load double*, double** %9, align 8, !dbg !1588
  %70 = getelementptr inbounds double, double* %69, i64 %68, !dbg !1588
  store double 0.000000e+00, double* %70, align 8, !dbg !1589
  br label %71, !dbg !1588

; <label>:71:                                     ; preds = %66
  %72 = load i32, i32* %11, align 4, !dbg !1590
  %73 = add nsw i32 %72, 1, !dbg !1590
  store i32 %73, i32* %11, align 4, !dbg !1590
  br label %59, !dbg !1592, !llvm.loop !1593

; <label>:74:                                     ; preds = %59
  br label %75, !dbg !1595, !llvm.loop !1596

; <label>:75:                                     ; preds = %74
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 509, i32 16), !dbg !1597
  store i32 16, i32* %5, align 4, !dbg !1597
  br label %204, !dbg !1597
                                                  ; No predecessors!
  br label %203, !dbg !1600

; <label>:77:                                     ; preds = %54
  %78 = load i32, i32* %6, align 4, !dbg !1601
  %79 = icmp eq i32 %78, 0, !dbg !1603
  %80 = sext i32 %78 to i64, !dbg !1604
  %81 = call i1 @iCmpInstHandler(i64 %80, i64 0, i1 %79, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874580672, i32 511, i32 16), !dbg !1604
  br i1 %81, label %82, label %91, !dbg !1604

; <label>:82:                                     ; preds = %77
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !1605, metadata !60), !dbg !1607
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1608, metadata !60), !dbg !1609
  %83 = load double, double* %7, align 8, !dbg !1610
  %84 = load double, double* %8, align 8, !dbg !1611
  %85 = call i32 @gsl_sf_legendre_H3d_e(i32 0, double %83, double %84, %struct.gsl_sf_result_struct* %12), !dbg !1612
  store i32 %85, i32* %13, align 4, !dbg !1609
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1613
  %87 = load double, double* %86, align 8, !dbg !1613
  %88 = load double*, double** %9, align 8, !dbg !1614
  %89 = getelementptr inbounds double, double* %88, i64 0, !dbg !1614
  store double %87, double* %89, align 8, !dbg !1615
  %90 = load i32, i32* %13, align 4, !dbg !1616
  store i32 %90, i32* %5, align 4, !dbg !1617
  br label %204, !dbg !1617

; <label>:91:                                     ; preds = %77
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1618, metadata !60), !dbg !1620
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1621, metadata !60), !dbg !1622
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1623, metadata !60), !dbg !1624
  %92 = load i32, i32* %6, align 4, !dbg !1625
  %93 = load double, double* %7, align 8, !dbg !1626
  %94 = load double, double* %8, align 8, !dbg !1627
  %95 = call i32 @gsl_sf_legendre_H3d_e(i32 %92, double %93, double %94, %struct.gsl_sf_result_struct* %14), !dbg !1628
  store i32 %95, i32* %16, align 4, !dbg !1624
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1629, metadata !60), !dbg !1630
  %96 = load i32, i32* %6, align 4, !dbg !1631
  %97 = sub nsw i32 %96, 1, !dbg !1632
  %98 = load double, double* %7, align 8, !dbg !1633
  %99 = load double, double* %8, align 8, !dbg !1634
  %100 = call i32 @gsl_sf_legendre_H3d_e(i32 %97, double %98, double %99, %struct.gsl_sf_result_struct* %15), !dbg !1635
  store i32 %100, i32* %17, align 4, !dbg !1630
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1636, metadata !60), !dbg !1637
  %101 = load i32, i32* %16, align 4, !dbg !1638
  %102 = icmp ne i32 %101, 0, !dbg !1638
  %103 = sext i32 %101 to i64, !dbg !1638
  %104 = call i1 @iCmpInstHandler(i64 %103, i64 0, i1 %102, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874607040, i32 524, i32 20), !dbg !1638
  br i1 %104, label %105, label %107, !dbg !1638

; <label>:105:                                    ; preds = %91
  %106 = load i32, i32* %16, align 4, !dbg !1639
  br label %117, !dbg !1639

; <label>:107:                                    ; preds = %91
  %108 = load i32, i32* %17, align 4, !dbg !1641
  %109 = icmp ne i32 %108, 0, !dbg !1641
  %110 = sext i32 %108 to i64, !dbg !1641
  %111 = call i1 @iCmpInstHandler(i64 %110, i64 0, i1 %109, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874611584, i32 524, i32 20), !dbg !1641
  br i1 %111, label %112, label %114, !dbg !1641

; <label>:112:                                    ; preds = %107
  %113 = load i32, i32* %17, align 4, !dbg !1643
  br label %115, !dbg !1643

; <label>:114:                                    ; preds = %107
  br label %115, !dbg !1645

; <label>:115:                                    ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ], !dbg !1647
  br label %117, !dbg !1647

; <label>:117:                                    ; preds = %115, %105
  %118 = phi i32 [ %106, %105 ], [ %116, %115 ], !dbg !1649
  store i32 %118, i32* %18, align 4, !dbg !1651
  call void @llvm.dbg.declare(metadata double* %19, metadata !1652, metadata !60), !dbg !1653
  %119 = load double, double* %8, align 8, !dbg !1654
  %120 = call double @tanh(double %119) #5, !dbg !1655
  call void @callOneArgHandler(i32 10, double %119, double %120, i64 94525874620088, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874620528, i32 526, i32 33), !dbg !1656
  %121 = fdiv double 1.000000e+00, %120, !dbg !1656
  call void @fDivHandler(double 1.000000e+00, double %120, double %121, i64 0, i64 94525874620528, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874621040, i32 526, i32 32), !dbg !1653
  store double %121, double* %19, align 8, !dbg !1653
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1657, metadata !60), !dbg !1658
  store i32 0, i32* %20, align 4, !dbg !1658
  call void @llvm.dbg.declare(metadata double* %21, metadata !1659, metadata !60), !dbg !1660
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1661
  %123 = load double, double* %122, align 8, !dbg !1661
  store double %123, double* %21, align 8, !dbg !1660
  call void @llvm.dbg.declare(metadata double* %22, metadata !1662, metadata !60), !dbg !1663
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1664
  %125 = load double, double* %124, align 8, !dbg !1664
  store double %125, double* %22, align 8, !dbg !1663
  call void @llvm.dbg.declare(metadata double* %23, metadata !1665, metadata !60), !dbg !1666
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1667, metadata !60), !dbg !1668
  %126 = load double, double* %21, align 8, !dbg !1669
  %127 = load i32, i32* %6, align 4, !dbg !1670
  %128 = sext i32 %127 to i64, !dbg !1671
  %129 = load double*, double** %9, align 8, !dbg !1671
  %130 = getelementptr inbounds double, double* %129, i64 %128, !dbg !1671
  store double %126, double* %130, align 8, !dbg !1672
  %131 = load double, double* %22, align 8, !dbg !1673
  %132 = load i32, i32* %6, align 4, !dbg !1674
  %133 = sub nsw i32 %132, 1, !dbg !1675
  %134 = sext i32 %133 to i64, !dbg !1676
  %135 = load double*, double** %9, align 8, !dbg !1676
  %136 = getelementptr inbounds double, double* %135, i64 %134, !dbg !1676
  store double %131, double* %136, align 8, !dbg !1677
  %137 = load i32, i32* %6, align 4, !dbg !1678
  %138 = sub nsw i32 %137, 1, !dbg !1680
  store i32 %138, i32* %24, align 4, !dbg !1681
  br label %139, !dbg !1682

; <label>:139:                                    ; preds = %181, %117
  %140 = load i32, i32* %24, align 4, !dbg !1683
  %141 = icmp sgt i32 %140, 0, !dbg !1686
  %142 = sext i32 %140 to i64, !dbg !1687
  %143 = call i1 @iCmpInstHandler(i64 %142, i64 0, i1 %141, i32 38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874646976, i32 536, i32 24), !dbg !1687
  br i1 %143, label %144, label %184, !dbg !1687

; <label>:144:                                    ; preds = %139
  call void @llvm.dbg.declare(metadata double* %25, metadata !1688, metadata !60), !dbg !1690
  %145 = load double, double* %7, align 8, !dbg !1691
  %146 = load i32, i32* %24, align 4, !dbg !1692
  %147 = sitofp i32 %146 to double, !dbg !1692
  %148 = call double @hypot(double %145, double %147) #5, !dbg !1693
  store double %148, double* %25, align 8, !dbg !1690
  call void @llvm.dbg.declare(metadata double* %26, metadata !1694, metadata !60), !dbg !1695
  %149 = load double, double* %7, align 8, !dbg !1696
  %150 = load i32, i32* %24, align 4, !dbg !1697
  %151 = sitofp i32 %150 to double, !dbg !1697
  %152 = fadd double %151, 1.000000e+00, !dbg !1698
  call void @fAddHandler(double %151, double 1.000000e+00, double %152, i64 94525874657688, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874659392, i32 538, i32 44), !dbg !1699
  %153 = call double @hypot(double %149, double %152) #5, !dbg !1699
  store double %153, double* %26, align 8, !dbg !1695
  %154 = load i32, i32* %24, align 4, !dbg !1700
  %155 = sitofp i32 %154 to double, !dbg !1700
  %156 = fmul double 2.000000e+00, %155, !dbg !1701
  call void @fMulHandler(double 2.000000e+00, double %155, double %156, i64 0, i64 94525874662376, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874664080, i32 539, i32 19), !dbg !1702
  %157 = fadd double %156, 1.000000e+00, !dbg !1702
  call void @fAddHandler(double %156, double 1.000000e+00, double %157, i64 94525874664080, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874664496, i32 539, i32 24), !dbg !1703
  %158 = load double, double* %19, align 8, !dbg !1703
  %159 = fmul double %157, %158, !dbg !1704
  call void @fMulHandler(double %157, double %158, double %159, i64 94525874664496, i64 94525874664856, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874665264, i32 539, i32 30), !dbg !1705
  %160 = load double, double* %22, align 8, !dbg !1705
  %161 = fmul double %159, %160, !dbg !1706
  call void @fMulHandler(double %159, double %160, double %161, i64 94525874665264, i64 94525874665656, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874666064, i32 539, i32 39), !dbg !1707
  %162 = load double, double* %26, align 8, !dbg !1707
  %163 = load double, double* %21, align 8, !dbg !1708
  %164 = fmul double %162, %163, !dbg !1709
  call void @fMulHandler(double %162, double %163, double %164, i64 94525874666456, i64 94525874666840, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874667248, i32 539, i32 57), !dbg !1710
  %165 = fsub double %161, %164, !dbg !1710
  call void @fSubHandler(double %161, double %164, double %165, i64 94525874666064, i64 94525874667248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874667664, i32 539, i32 43), !dbg !1711
  %166 = load double, double* %25, align 8, !dbg !1711
  %167 = fdiv double %165, %166, !dbg !1712
  call void @fDivHandler(double %165, double %166, double %167, i64 94525874667664, i64 94525874668056, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874668464, i32 539, i32 64), !dbg !1713
  store double %167, double* %23, align 8, !dbg !1713
  %168 = load double, double* %23, align 8, !dbg !1714
  %169 = load i32, i32* %24, align 4, !dbg !1715
  %170 = sub nsw i32 %169, 1, !dbg !1716
  %171 = sext i32 %170 to i64, !dbg !1717
  %172 = load double*, double** %9, align 8, !dbg !1717
  %173 = getelementptr inbounds double, double* %172, i64 %171, !dbg !1717
  store double %168, double* %173, align 8, !dbg !1718
  %174 = load double, double* %23, align 8, !dbg !1719
  %175 = fcmp olt double %174, 0x7FEFFFFFFFFFFFFF, !dbg !1721
  %176 = call i1 @fCmpInstHandler(double %174, double 0x7FEFFFFFFFFFFFFF, i1 %175, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874673520, i32 541, i32 17), !dbg !1722
  br i1 %176, label %178, label %177, !dbg !1722

; <label>:177:                                    ; preds = %144
  store i32 16, i32* %20, align 4, !dbg !1723
  br label %178, !dbg !1725

; <label>:178:                                    ; preds = %177, %144
  %179 = load double, double* %22, align 8, !dbg !1726
  store double %179, double* %21, align 8, !dbg !1727
  %180 = load double, double* %23, align 8, !dbg !1728
  store double %180, double* %22, align 8, !dbg !1729
  br label %181, !dbg !1730

; <label>:181:                                    ; preds = %178
  %182 = load i32, i32* %24, align 4, !dbg !1731
  %183 = add nsw i32 %182, -1, !dbg !1731
  store i32 %183, i32* %24, align 4, !dbg !1731
  br label %139, !dbg !1733, !llvm.loop !1734

; <label>:184:                                    ; preds = %139
  %185 = load i32, i32* %20, align 4, !dbg !1736
  %186 = icmp ne i32 %185, 0, !dbg !1736
  %187 = sext i32 %185 to i64, !dbg !1736
  %188 = call i1 @iCmpInstHandler(i64 %187, i64 0, i1 %186, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874680576, i32 546, i32 12), !dbg !1736
  br i1 %188, label %189, label %191, !dbg !1736

; <label>:189:                                    ; preds = %184
  %190 = load i32, i32* %20, align 4, !dbg !1737
  br label %201, !dbg !1737

; <label>:191:                                    ; preds = %184
  %192 = load i32, i32* %18, align 4, !dbg !1738
  %193 = icmp ne i32 %192, 0, !dbg !1738
  %194 = sext i32 %192 to i64, !dbg !1738
  %195 = call i1 @iCmpInstHandler(i64 %194, i64 0, i1 %193, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @13, i32 0, i32 0), i64 94525874685120, i32 546, i32 12), !dbg !1738
  br i1 %195, label %196, label %198, !dbg !1738

; <label>:196:                                    ; preds = %191
  %197 = load i32, i32* %18, align 4, !dbg !1739
  br label %199, !dbg !1739

; <label>:198:                                    ; preds = %191
  br label %199, !dbg !1740

; <label>:199:                                    ; preds = %198, %196
  %200 = phi i32 [ %197, %196 ], [ 0, %198 ], !dbg !1741
  br label %201, !dbg !1741

; <label>:201:                                    ; preds = %199, %189
  %202 = phi i32 [ %190, %189 ], [ %200, %199 ], !dbg !1742
  store i32 %202, i32* %5, align 4, !dbg !1743
  br label %204, !dbg !1743

; <label>:203:                                    ; preds = %76
  br label %204

; <label>:204:                                    ; preds = %203, %201, %82, %75, %53, %52
  %205 = load i32, i32* %5, align 4, !dbg !1744
  ret i32 %205, !dbg !1744
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_H3d_0(double, double) #0 !dbg !1745 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1748, metadata !60), !dbg !1749
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1750, metadata !60), !dbg !1751
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1752, metadata !60), !dbg !1753
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1754, metadata !60), !dbg !1753
  %8 = load double, double* %4, align 8, !dbg !1753
  %9 = load double, double* %5, align 8, !dbg !1753
  %10 = call i32 @gsl_sf_legendre_H3d_0_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1753
  store i32 %10, i32* %7, align 4, !dbg !1753
  %11 = load i32, i32* %7, align 4, !dbg !1755
  %12 = icmp ne i32 %11, 0, !dbg !1755
  %13 = sext i32 %11 to i64, !dbg !1753
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @15, i32 0, i32 0), i64 94525874702576, i32 557, i32 3), !dbg !1753
  br i1 %14, label %15, label %21, !dbg !1753

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1757, !llvm.loop !1760

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1762
  call void @gsl_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 557, i32 %17), !dbg !1762
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1762
  %19 = load double, double* %18, align 8, !dbg !1762
  store double %19, double* %3, align 8, !dbg !1762
  br label %24, !dbg !1762
                                                  ; No predecessors!
  br label %21, !dbg !1765

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1767
  %23 = load double, double* %22, align 8, !dbg !1767
  store double %23, double* %3, align 8, !dbg !1767
  br label %24, !dbg !1767

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1769
  ret double %25, !dbg !1769
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_H3d_1(double, double) #0 !dbg !1770 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1771, metadata !60), !dbg !1772
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1773, metadata !60), !dbg !1774
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1775, metadata !60), !dbg !1776
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1777, metadata !60), !dbg !1776
  %8 = load double, double* %4, align 8, !dbg !1776
  %9 = load double, double* %5, align 8, !dbg !1776
  %10 = call i32 @gsl_sf_legendre_H3d_1_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1776
  store i32 %10, i32* %7, align 4, !dbg !1776
  %11 = load i32, i32* %7, align 4, !dbg !1778
  %12 = icmp ne i32 %11, 0, !dbg !1778
  %13 = sext i32 %11 to i64, !dbg !1776
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @17, i32 0, i32 0), i64 94525874721392, i32 562, i32 3), !dbg !1776
  br i1 %14, label %15, label %21, !dbg !1776

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1780, !llvm.loop !1783

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1785
  call void @gsl_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 562, i32 %17), !dbg !1785
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1785
  %19 = load double, double* %18, align 8, !dbg !1785
  store double %19, double* %3, align 8, !dbg !1785
  br label %24, !dbg !1785
                                                  ; No predecessors!
  br label %21, !dbg !1788

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1790
  %23 = load double, double* %22, align 8, !dbg !1790
  store double %23, double* %3, align 8, !dbg !1790
  br label %24, !dbg !1790

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1792
  ret double %25, !dbg !1792
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_H3d(i32, double, double) #0 !dbg !1793 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1796, metadata !60), !dbg !1797
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1798, metadata !60), !dbg !1799
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1800, metadata !60), !dbg !1801
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1802, metadata !60), !dbg !1803
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1804, metadata !60), !dbg !1803
  %10 = load i32, i32* %5, align 4, !dbg !1803
  %11 = load double, double* %6, align 8, !dbg !1803
  %12 = load double, double* %7, align 8, !dbg !1803
  %13 = call i32 @gsl_sf_legendre_H3d_e(i32 %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !1803
  store i32 %13, i32* %9, align 4, !dbg !1803
  %14 = load i32, i32* %9, align 4, !dbg !1805
  %15 = icmp ne i32 %14, 0, !dbg !1805
  %16 = sext i32 %14 to i64, !dbg !1803
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @19, i32 0, i32 0), i64 94525874741712, i32 567, i32 3), !dbg !1803
  br i1 %17, label %18, label %24, !dbg !1803

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !1807, !llvm.loop !1810

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !1812
  call void @gsl_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 567, i32 %20), !dbg !1812
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1812
  %22 = load double, double* %21, align 8, !dbg !1812
  store double %22, double* %4, align 8, !dbg !1812
  br label %27, !dbg !1812
                                                  ; No predecessors!
  br label %24, !dbg !1815

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1817
  %26 = load double, double* %25, align 8, !dbg !1817
  store double %26, double* %4, align 8, !dbg !1817
  br label %27, !dbg !1817

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !1819
  ret double %28, !dbg !1819
}

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lngamma_complex_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #2

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
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "legendre_H3d.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_0_e", scope: !1, file: !1, line: 248, type: !46, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
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
!59 = !DILocalVariable(name: "lambda", arg: 1, scope: !45, file: !1, line: 248, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 248, column: 38, scope: !45)
!62 = !DILocalVariable(name: "eta", arg: 2, scope: !45, file: !1, line: 248, type: !49)
!63 = !DILocation(line: 248, column: 59, scope: !45)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !45, file: !1, line: 248, type: !51)
!65 = !DILocation(line: 248, column: 80, scope: !45)
!66 = !DILocation(line: 252, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !45, file: !1, line: 252, column: 6)
!68 = !DILocation(line: 252, column: 10, scope: !67)
!69 = !DILocation(line: 252, column: 6, scope: !45)
!70 = !DILocation(line: 253, column: 5, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 252, column: 17)
!72 = distinct !{!72, !70}
!73 = !DILocation(line: 253, column: 5, scope: !74)
!74 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 1)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 253, column: 5)
!76 = distinct !{!76, !77}
!77 = !DILocation(line: 253, column: 5, scope: !75)
!78 = !DILocation(line: 253, column: 5, scope: !79)
!79 = !DILexicalBlockFile(scope: !80, file: !1, discriminator: 2)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 253, column: 5)
!81 = !DILocation(line: 253, column: 5, scope: !82)
!82 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 3)
!83 = !DILocation(line: 254, column: 3, scope: !71)
!84 = !DILocation(line: 255, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !67, file: !1, line: 255, column: 11)
!86 = !DILocation(line: 255, column: 15, scope: !85)
!87 = !DILocation(line: 255, column: 22, scope: !85)
!88 = !DILocation(line: 255, column: 25, scope: !89)
!89 = !DILexicalBlockFile(scope: !85, file: !1, discriminator: 1)
!90 = !DILocation(line: 255, column: 32, scope: !89)
!91 = !DILocation(line: 255, column: 11, scope: !89)
!92 = !DILocation(line: 256, column: 5, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !1, line: 255, column: 40)
!94 = !DILocation(line: 256, column: 13, scope: !93)
!95 = !DILocation(line: 256, column: 17, scope: !93)
!96 = !DILocation(line: 257, column: 5, scope: !93)
!97 = !DILocation(line: 257, column: 13, scope: !93)
!98 = !DILocation(line: 257, column: 17, scope: !93)
!99 = !DILocation(line: 258, column: 5, scope: !93)
!100 = !DILocalVariable(name: "lam_eta", scope: !101, file: !1, line: 261, type: !49)
!101 = distinct !DILexicalBlock(scope: !85, file: !1, line: 260, column: 8)
!102 = !DILocation(line: 261, column: 18, scope: !101)
!103 = !DILocation(line: 261, column: 28, scope: !101)
!104 = !DILocation(line: 261, column: 37, scope: !101)
!105 = !DILocation(line: 261, column: 35, scope: !101)
!106 = !DILocalVariable(name: "s", scope: !101, file: !1, line: 262, type: !52)
!107 = !DILocation(line: 262, column: 19, scope: !101)
!108 = !DILocation(line: 263, column: 22, scope: !101)
!109 = !DILocation(line: 263, column: 58, scope: !101)
!110 = !DILocation(line: 263, column: 53, scope: !101)
!111 = !DILocation(line: 263, column: 51, scope: !101)
!112 = !DILocation(line: 263, column: 5, scope: !113)
!113 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 1)
!114 = !DILocation(line: 264, column: 8, scope: !115)
!115 = distinct !DILexicalBlock(scope: !101, file: !1, line: 264, column: 8)
!116 = !DILocation(line: 264, column: 12, scope: !115)
!117 = !DILocation(line: 264, column: 8, scope: !101)
!118 = !DILocalVariable(name: "f", scope: !119, file: !1, line: 265, type: !50)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 264, column: 40)
!120 = !DILocation(line: 265, column: 14, scope: !119)
!121 = !DILocation(line: 265, column: 24, scope: !119)
!122 = !DILocation(line: 265, column: 22, scope: !119)
!123 = !DILocation(line: 265, column: 38, scope: !119)
!124 = !DILocation(line: 265, column: 37, scope: !119)
!125 = !DILocation(line: 265, column: 33, scope: !119)
!126 = !DILocation(line: 265, column: 31, scope: !119)
!127 = !DILocation(line: 266, column: 22, scope: !119)
!128 = !DILocation(line: 266, column: 28, scope: !119)
!129 = !DILocation(line: 266, column: 24, scope: !119)
!130 = !DILocation(line: 266, column: 7, scope: !119)
!131 = !DILocation(line: 266, column: 15, scope: !119)
!132 = !DILocation(line: 266, column: 20, scope: !119)
!133 = !DILocation(line: 267, column: 27, scope: !119)
!134 = !DILocation(line: 267, column: 33, scope: !119)
!135 = !DILocation(line: 267, column: 29, scope: !119)
!136 = !DILocation(line: 267, column: 22, scope: !119)
!137 = !DILocation(line: 267, column: 46, scope: !119)
!138 = !DILocation(line: 267, column: 41, scope: !139)
!139 = !DILexicalBlockFile(scope: !119, file: !1, discriminator: 1)
!140 = !DILocation(line: 267, column: 51, scope: !119)
!141 = !DILocation(line: 267, column: 38, scope: !119)
!142 = !DILocation(line: 267, column: 58, scope: !119)
!143 = !DILocation(line: 267, column: 7, scope: !119)
!144 = !DILocation(line: 267, column: 15, scope: !119)
!145 = !DILocation(line: 267, column: 20, scope: !119)
!146 = !DILocation(line: 268, column: 27, scope: !119)
!147 = !DILocation(line: 268, column: 22, scope: !119)
!148 = !DILocation(line: 268, column: 34, scope: !119)
!149 = !DILocation(line: 268, column: 30, scope: !119)
!150 = !DILocation(line: 268, column: 7, scope: !119)
!151 = !DILocation(line: 268, column: 15, scope: !119)
!152 = !DILocation(line: 268, column: 19, scope: !119)
!153 = !DILocation(line: 269, column: 51, scope: !119)
!154 = !DILocation(line: 269, column: 59, scope: !119)
!155 = !DILocation(line: 269, column: 46, scope: !119)
!156 = !DILocation(line: 269, column: 44, scope: !119)
!157 = !DILocation(line: 269, column: 7, scope: !119)
!158 = !DILocation(line: 269, column: 15, scope: !119)
!159 = !DILocation(line: 269, column: 19, scope: !119)
!160 = !DILocation(line: 270, column: 5, scope: !119)
!161 = !DILocalVariable(name: "f", scope: !162, file: !1, line: 272, type: !50)
!162 = distinct !DILexicalBlock(scope: !115, file: !1, line: 271, column: 10)
!163 = !DILocation(line: 272, column: 14, scope: !162)
!164 = !DILocation(line: 272, column: 23, scope: !162)
!165 = !DILocation(line: 272, column: 35, scope: !162)
!166 = !DILocation(line: 272, column: 30, scope: !162)
!167 = !DILocation(line: 272, column: 29, scope: !162)
!168 = !DILocation(line: 272, column: 21, scope: !162)
!169 = !DILocation(line: 273, column: 22, scope: !162)
!170 = !DILocation(line: 273, column: 28, scope: !162)
!171 = !DILocation(line: 273, column: 24, scope: !162)
!172 = !DILocation(line: 273, column: 7, scope: !162)
!173 = !DILocation(line: 273, column: 15, scope: !162)
!174 = !DILocation(line: 273, column: 20, scope: !162)
!175 = !DILocation(line: 274, column: 27, scope: !162)
!176 = !DILocation(line: 274, column: 33, scope: !162)
!177 = !DILocation(line: 274, column: 29, scope: !162)
!178 = !DILocation(line: 274, column: 22, scope: !162)
!179 = !DILocation(line: 274, column: 46, scope: !162)
!180 = !DILocation(line: 274, column: 41, scope: !181)
!181 = !DILexicalBlockFile(scope: !162, file: !1, discriminator: 1)
!182 = !DILocation(line: 274, column: 51, scope: !162)
!183 = !DILocation(line: 274, column: 38, scope: !162)
!184 = !DILocation(line: 274, column: 58, scope: !162)
!185 = !DILocation(line: 274, column: 7, scope: !162)
!186 = !DILocation(line: 274, column: 15, scope: !162)
!187 = !DILocation(line: 274, column: 20, scope: !162)
!188 = !DILocation(line: 275, column: 27, scope: !162)
!189 = !DILocation(line: 275, column: 22, scope: !162)
!190 = !DILocation(line: 275, column: 34, scope: !162)
!191 = !DILocation(line: 275, column: 30, scope: !162)
!192 = !DILocation(line: 275, column: 7, scope: !162)
!193 = !DILocation(line: 275, column: 15, scope: !162)
!194 = !DILocation(line: 275, column: 19, scope: !162)
!195 = !DILocation(line: 276, column: 51, scope: !162)
!196 = !DILocation(line: 276, column: 59, scope: !162)
!197 = !DILocation(line: 276, column: 46, scope: !162)
!198 = !DILocation(line: 276, column: 44, scope: !162)
!199 = !DILocation(line: 276, column: 7, scope: !162)
!200 = !DILocation(line: 276, column: 15, scope: !162)
!201 = !DILocation(line: 276, column: 19, scope: !162)
!202 = !DILocation(line: 278, column: 5, scope: !101)
!203 = !DILocation(line: 280, column: 1, scope: !45)
!204 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_1_e", scope: !1, file: !1, line: 284, type: !46, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!205 = !DILocalVariable(name: "lambda", arg: 1, scope: !204, file: !1, line: 284, type: !49)
!206 = !DILocation(line: 284, column: 38, scope: !204)
!207 = !DILocalVariable(name: "eta", arg: 2, scope: !204, file: !1, line: 284, type: !49)
!208 = !DILocation(line: 284, column: 59, scope: !204)
!209 = !DILocalVariable(name: "result", arg: 3, scope: !204, file: !1, line: 284, type: !51)
!210 = !DILocation(line: 284, column: 80, scope: !204)
!211 = !DILocalVariable(name: "xi", scope: !204, file: !1, line: 286, type: !49)
!212 = !DILocation(line: 286, column: 16, scope: !204)
!213 = !DILocation(line: 286, column: 29, scope: !204)
!214 = !DILocation(line: 286, column: 33, scope: !204)
!215 = !DILocation(line: 286, column: 32, scope: !204)
!216 = !DILocation(line: 286, column: 24, scope: !204)
!217 = !DILocalVariable(name: "lsq", scope: !204, file: !1, line: 287, type: !49)
!218 = !DILocation(line: 287, column: 16, scope: !204)
!219 = !DILocation(line: 287, column: 24, scope: !204)
!220 = !DILocation(line: 287, column: 31, scope: !204)
!221 = !DILocation(line: 287, column: 30, scope: !204)
!222 = !DILocalVariable(name: "lsqp1", scope: !204, file: !1, line: 288, type: !49)
!223 = !DILocation(line: 288, column: 16, scope: !204)
!224 = !DILocation(line: 288, column: 24, scope: !204)
!225 = !DILocation(line: 288, column: 28, scope: !204)
!226 = !DILocation(line: 292, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !204, file: !1, line: 292, column: 6)
!228 = !DILocation(line: 292, column: 10, scope: !227)
!229 = !DILocation(line: 292, column: 6, scope: !204)
!230 = !DILocation(line: 293, column: 5, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !1, line: 292, column: 17)
!232 = distinct !{!232, !230}
!233 = !DILocation(line: 293, column: 5, scope: !234)
!234 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 1)
!235 = distinct !DILexicalBlock(scope: !231, file: !1, line: 293, column: 5)
!236 = distinct !{!236, !237}
!237 = !DILocation(line: 293, column: 5, scope: !235)
!238 = !DILocation(line: 293, column: 5, scope: !239)
!239 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 2)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 293, column: 5)
!241 = !DILocation(line: 293, column: 5, scope: !242)
!242 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 3)
!243 = !DILocation(line: 294, column: 3, scope: !231)
!244 = !DILocation(line: 295, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !227, file: !1, line: 295, column: 11)
!246 = !DILocation(line: 295, column: 15, scope: !245)
!247 = !DILocation(line: 295, column: 22, scope: !245)
!248 = !DILocation(line: 295, column: 25, scope: !249)
!249 = !DILexicalBlockFile(scope: !245, file: !1, discriminator: 1)
!250 = !DILocation(line: 295, column: 32, scope: !249)
!251 = !DILocation(line: 295, column: 11, scope: !249)
!252 = !DILocation(line: 296, column: 5, scope: !253)
!253 = distinct !DILexicalBlock(scope: !245, file: !1, line: 295, column: 40)
!254 = !DILocation(line: 296, column: 13, scope: !253)
!255 = !DILocation(line: 296, column: 17, scope: !253)
!256 = !DILocation(line: 297, column: 5, scope: !253)
!257 = !DILocation(line: 297, column: 13, scope: !253)
!258 = !DILocation(line: 297, column: 17, scope: !253)
!259 = !DILocation(line: 298, column: 5, scope: !253)
!260 = !DILocation(line: 300, column: 11, scope: !261)
!261 = distinct !DILexicalBlock(scope: !245, file: !1, line: 300, column: 11)
!262 = !DILocation(line: 300, column: 14, scope: !261)
!263 = !DILocation(line: 300, column: 38, scope: !261)
!264 = !DILocation(line: 300, column: 41, scope: !265)
!265 = !DILexicalBlockFile(scope: !261, file: !1, discriminator: 1)
!266 = !DILocation(line: 300, column: 45, scope: !265)
!267 = !DILocation(line: 300, column: 11, scope: !265)
!268 = !DILocalVariable(name: "etasq", scope: !269, file: !1, line: 301, type: !50)
!269 = distinct !DILexicalBlock(scope: !261, file: !1, line: 300, column: 70)
!270 = !DILocation(line: 301, column: 12, scope: !269)
!271 = !DILocation(line: 301, column: 20, scope: !269)
!272 = !DILocation(line: 301, column: 24, scope: !269)
!273 = !DILocation(line: 301, column: 23, scope: !269)
!274 = !DILocalVariable(name: "xisq", scope: !269, file: !1, line: 302, type: !50)
!275 = !DILocation(line: 302, column: 12, scope: !269)
!276 = !DILocation(line: 302, column: 20, scope: !269)
!277 = !DILocation(line: 302, column: 23, scope: !269)
!278 = !DILocation(line: 302, column: 22, scope: !269)
!279 = !DILocalVariable(name: "term1", scope: !269, file: !1, line: 303, type: !50)
!280 = !DILocation(line: 303, column: 12, scope: !269)
!281 = !DILocation(line: 303, column: 21, scope: !269)
!282 = !DILocation(line: 303, column: 29, scope: !269)
!283 = !DILocation(line: 303, column: 27, scope: !269)
!284 = !DILocation(line: 303, column: 34, scope: !269)
!285 = !DILocalVariable(name: "term2", scope: !269, file: !1, line: 304, type: !50)
!286 = !DILocation(line: 304, column: 12, scope: !269)
!287 = !DILocation(line: 304, column: 26, scope: !269)
!288 = !DILocation(line: 304, column: 25, scope: !269)
!289 = !DILocation(line: 304, column: 32, scope: !269)
!290 = !DILocation(line: 304, column: 31, scope: !269)
!291 = !DILocation(line: 304, column: 44, scope: !269)
!292 = !DILocation(line: 304, column: 43, scope: !269)
!293 = !DILocation(line: 304, column: 50, scope: !269)
!294 = !DILocation(line: 304, column: 49, scope: !269)
!295 = !DILocation(line: 304, column: 38, scope: !269)
!296 = !DILocation(line: 304, column: 61, scope: !269)
!297 = !DILocation(line: 304, column: 60, scope: !269)
!298 = !DILocation(line: 304, column: 66, scope: !269)
!299 = !DILocation(line: 304, column: 65, scope: !269)
!300 = !DILocation(line: 304, column: 55, scope: !269)
!301 = !DILocation(line: 304, column: 20, scope: !269)
!302 = !DILocation(line: 304, column: 71, scope: !269)
!303 = !DILocalVariable(name: "sinh_term", scope: !269, file: !1, line: 305, type: !50)
!304 = !DILocation(line: 305, column: 12, scope: !269)
!305 = !DILocation(line: 305, column: 30, scope: !269)
!306 = !DILocation(line: 305, column: 34, scope: !269)
!307 = !DILocation(line: 305, column: 33, scope: !269)
!308 = !DILocation(line: 305, column: 37, scope: !269)
!309 = !DILocation(line: 305, column: 60, scope: !269)
!310 = !DILocation(line: 305, column: 59, scope: !269)
!311 = !DILocation(line: 305, column: 64, scope: !269)
!312 = !DILocation(line: 305, column: 63, scope: !269)
!313 = !DILocation(line: 305, column: 49, scope: !269)
!314 = !DILocation(line: 305, column: 42, scope: !269)
!315 = !DILocation(line: 305, column: 28, scope: !269)
!316 = !DILocalVariable(name: "pre", scope: !269, file: !1, line: 306, type: !50)
!317 = !DILocation(line: 306, column: 12, scope: !269)
!318 = !DILocation(line: 306, column: 18, scope: !269)
!319 = !DILocation(line: 306, column: 33, scope: !269)
!320 = !DILocation(line: 306, column: 28, scope: !269)
!321 = !DILocation(line: 306, column: 27, scope: !269)
!322 = !DILocation(line: 306, column: 42, scope: !269)
!323 = !DILocation(line: 306, column: 40, scope: !269)
!324 = !DILocation(line: 307, column: 20, scope: !269)
!325 = !DILocation(line: 307, column: 27, scope: !269)
!326 = !DILocation(line: 307, column: 35, scope: !269)
!327 = !DILocation(line: 307, column: 33, scope: !269)
!328 = !DILocation(line: 307, column: 24, scope: !269)
!329 = !DILocation(line: 307, column: 5, scope: !269)
!330 = !DILocation(line: 307, column: 13, scope: !269)
!331 = !DILocation(line: 307, column: 18, scope: !269)
!332 = !DILocation(line: 308, column: 20, scope: !269)
!333 = !DILocation(line: 308, column: 24, scope: !269)
!334 = !DILocation(line: 308, column: 50, scope: !269)
!335 = !DILocation(line: 308, column: 45, scope: !269)
!336 = !DILocation(line: 308, column: 64, scope: !269)
!337 = !DILocation(line: 308, column: 59, scope: !338)
!338 = !DILexicalBlockFile(scope: !269, file: !1, discriminator: 1)
!339 = !DILocation(line: 308, column: 57, scope: !269)
!340 = !DILocation(line: 308, column: 42, scope: !269)
!341 = !DILocation(line: 308, column: 5, scope: !269)
!342 = !DILocation(line: 308, column: 13, scope: !269)
!343 = !DILocation(line: 308, column: 18, scope: !269)
!344 = !DILocation(line: 309, column: 49, scope: !269)
!345 = !DILocation(line: 309, column: 57, scope: !269)
!346 = !DILocation(line: 309, column: 44, scope: !269)
!347 = !DILocation(line: 309, column: 42, scope: !269)
!348 = !DILocation(line: 309, column: 5, scope: !269)
!349 = !DILocation(line: 309, column: 13, scope: !269)
!350 = !DILocation(line: 309, column: 17, scope: !269)
!351 = !DILocation(line: 310, column: 5, scope: !269)
!352 = !DILocalVariable(name: "sin_term", scope: !353, file: !1, line: 313, type: !50)
!353 = distinct !DILexicalBlock(scope: !261, file: !1, line: 312, column: 8)
!354 = !DILocation(line: 313, column: 12, scope: !353)
!355 = !DILocalVariable(name: "cos_term", scope: !353, file: !1, line: 314, type: !50)
!356 = !DILocation(line: 314, column: 12, scope: !353)
!357 = !DILocalVariable(name: "coth_term", scope: !353, file: !1, line: 315, type: !50)
!358 = !DILocation(line: 315, column: 12, scope: !353)
!359 = !DILocalVariable(name: "sinh_term", scope: !353, file: !1, line: 316, type: !50)
!360 = !DILocation(line: 316, column: 12, scope: !353)
!361 = !DILocalVariable(name: "sin_term_err", scope: !353, file: !1, line: 317, type: !50)
!362 = !DILocation(line: 317, column: 12, scope: !353)
!363 = !DILocalVariable(name: "cos_term_err", scope: !353, file: !1, line: 318, type: !50)
!364 = !DILocation(line: 318, column: 12, scope: !353)
!365 = !DILocalVariable(name: "t1", scope: !353, file: !1, line: 319, type: !50)
!366 = !DILocation(line: 319, column: 12, scope: !353)
!367 = !DILocalVariable(name: "pre_val", scope: !353, file: !1, line: 320, type: !50)
!368 = !DILocation(line: 320, column: 12, scope: !353)
!369 = !DILocalVariable(name: "pre_err", scope: !353, file: !1, line: 321, type: !50)
!370 = !DILocation(line: 321, column: 12, scope: !353)
!371 = !DILocalVariable(name: "term1", scope: !353, file: !1, line: 322, type: !50)
!372 = !DILocation(line: 322, column: 12, scope: !353)
!373 = !DILocalVariable(name: "term2", scope: !353, file: !1, line: 323, type: !50)
!374 = !DILocation(line: 323, column: 12, scope: !353)
!375 = !DILocation(line: 324, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !353, file: !1, line: 324, column: 8)
!377 = !DILocation(line: 324, column: 11, scope: !376)
!378 = !DILocation(line: 324, column: 8, scope: !353)
!379 = !DILocation(line: 325, column: 24, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !1, line: 324, column: 36)
!381 = !DILocation(line: 325, column: 27, scope: !380)
!382 = !DILocation(line: 325, column: 26, scope: !380)
!383 = !DILocation(line: 325, column: 29, scope: !380)
!384 = !DILocation(line: 325, column: 43, scope: !380)
!385 = !DILocation(line: 325, column: 46, scope: !380)
!386 = !DILocation(line: 325, column: 45, scope: !380)
!387 = !DILocation(line: 325, column: 48, scope: !380)
!388 = !DILocation(line: 325, column: 41, scope: !380)
!389 = !DILocation(line: 325, column: 34, scope: !380)
!390 = !DILocation(line: 325, column: 22, scope: !380)
!391 = !DILocation(line: 325, column: 16, scope: !380)
!392 = !DILocation(line: 326, column: 28, scope: !380)
!393 = !DILocation(line: 326, column: 27, scope: !380)
!394 = !DILocation(line: 326, column: 31, scope: !380)
!395 = !DILocation(line: 326, column: 30, scope: !380)
!396 = !DILocation(line: 326, column: 43, scope: !380)
!397 = !DILocation(line: 326, column: 46, scope: !380)
!398 = !DILocation(line: 326, column: 45, scope: !380)
!399 = !DILocation(line: 326, column: 48, scope: !380)
!400 = !DILocation(line: 326, column: 41, scope: !380)
!401 = !DILocation(line: 326, column: 34, scope: !380)
!402 = !DILocation(line: 326, column: 22, scope: !380)
!403 = !DILocation(line: 326, column: 16, scope: !380)
!404 = !DILocation(line: 327, column: 20, scope: !380)
!405 = !DILocation(line: 328, column: 20, scope: !380)
!406 = !DILocation(line: 329, column: 5, scope: !380)
!407 = !DILocalVariable(name: "sin_xi_result", scope: !408, file: !1, line: 331, type: !52)
!408 = distinct !DILexicalBlock(scope: !376, file: !1, line: 330, column: 10)
!409 = !DILocation(line: 331, column: 21, scope: !408)
!410 = !DILocalVariable(name: "cos_xi_result", scope: !408, file: !1, line: 332, type: !52)
!411 = !DILocation(line: 332, column: 21, scope: !408)
!412 = !DILocation(line: 333, column: 20, scope: !408)
!413 = !DILocation(line: 333, column: 7, scope: !408)
!414 = !DILocation(line: 334, column: 20, scope: !408)
!415 = !DILocation(line: 334, column: 7, scope: !408)
!416 = !DILocation(line: 335, column: 32, scope: !408)
!417 = !DILocation(line: 335, column: 36, scope: !408)
!418 = !DILocation(line: 335, column: 35, scope: !408)
!419 = !DILocation(line: 335, column: 16, scope: !408)
!420 = !DILocation(line: 336, column: 32, scope: !408)
!421 = !DILocation(line: 336, column: 16, scope: !408)
!422 = !DILocation(line: 337, column: 36, scope: !408)
!423 = !DILocation(line: 337, column: 45, scope: !408)
!424 = !DILocation(line: 337, column: 40, scope: !408)
!425 = !DILocation(line: 337, column: 39, scope: !408)
!426 = !DILocation(line: 337, column: 20, scope: !408)
!427 = !DILocation(line: 338, column: 36, scope: !408)
!428 = !DILocation(line: 338, column: 20, scope: !408)
!429 = !DILocation(line: 340, column: 8, scope: !430)
!430 = distinct !DILexicalBlock(scope: !353, file: !1, line: 340, column: 8)
!431 = !DILocation(line: 340, column: 12, scope: !430)
!432 = !DILocation(line: 340, column: 8, scope: !353)
!433 = !DILocation(line: 341, column: 25, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !1, line: 340, column: 37)
!435 = !DILocation(line: 341, column: 29, scope: !434)
!436 = !DILocation(line: 341, column: 28, scope: !434)
!437 = !DILocation(line: 341, column: 32, scope: !434)
!438 = !DILocation(line: 341, column: 46, scope: !434)
!439 = !DILocation(line: 341, column: 50, scope: !434)
!440 = !DILocation(line: 341, column: 49, scope: !434)
!441 = !DILocation(line: 341, column: 53, scope: !434)
!442 = !DILocation(line: 341, column: 44, scope: !434)
!443 = !DILocation(line: 341, column: 37, scope: !434)
!444 = !DILocation(line: 341, column: 23, scope: !434)
!445 = !DILocation(line: 341, column: 17, scope: !434)
!446 = !DILocation(line: 342, column: 25, scope: !434)
!447 = !DILocation(line: 342, column: 29, scope: !434)
!448 = !DILocation(line: 342, column: 28, scope: !434)
!449 = !DILocation(line: 342, column: 32, scope: !434)
!450 = !DILocation(line: 342, column: 55, scope: !434)
!451 = !DILocation(line: 342, column: 54, scope: !434)
!452 = !DILocation(line: 342, column: 59, scope: !434)
!453 = !DILocation(line: 342, column: 58, scope: !434)
!454 = !DILocation(line: 342, column: 44, scope: !434)
!455 = !DILocation(line: 342, column: 37, scope: !434)
!456 = !DILocation(line: 342, column: 23, scope: !434)
!457 = !DILocation(line: 342, column: 17, scope: !434)
!458 = !DILocation(line: 343, column: 5, scope: !434)
!459 = !DILocation(line: 345, column: 19, scope: !460)
!460 = distinct !DILexicalBlock(scope: !430, file: !1, line: 344, column: 10)
!461 = !DILocation(line: 345, column: 28, scope: !460)
!462 = !DILocation(line: 345, column: 23, scope: !460)
!463 = !DILocation(line: 345, column: 22, scope: !460)
!464 = !DILocation(line: 345, column: 17, scope: !460)
!465 = !DILocation(line: 346, column: 19, scope: !460)
!466 = !DILocation(line: 346, column: 28, scope: !460)
!467 = !DILocation(line: 346, column: 23, scope: !460)
!468 = !DILocation(line: 346, column: 22, scope: !460)
!469 = !DILocation(line: 346, column: 17, scope: !460)
!470 = !DILocation(line: 348, column: 15, scope: !353)
!471 = !DILocation(line: 348, column: 10, scope: !353)
!472 = !DILocation(line: 348, column: 24, scope: !353)
!473 = !DILocation(line: 348, column: 22, scope: !353)
!474 = !DILocation(line: 348, column: 8, scope: !353)
!475 = !DILocation(line: 349, column: 15, scope: !353)
!476 = !DILocation(line: 349, column: 25, scope: !353)
!477 = !DILocation(line: 349, column: 24, scope: !353)
!478 = !DILocation(line: 349, column: 13, scope: !353)
!479 = !DILocation(line: 350, column: 44, scope: !353)
!480 = !DILocation(line: 350, column: 39, scope: !353)
!481 = !DILocation(line: 350, column: 37, scope: !353)
!482 = !DILocation(line: 350, column: 13, scope: !353)
!483 = !DILocation(line: 351, column: 13, scope: !353)
!484 = !DILocation(line: 351, column: 22, scope: !353)
!485 = !DILocation(line: 351, column: 21, scope: !353)
!486 = !DILocation(line: 351, column: 11, scope: !353)
!487 = !DILocation(line: 352, column: 13, scope: !353)
!488 = !DILocation(line: 352, column: 11, scope: !353)
!489 = !DILocation(line: 353, column: 20, scope: !353)
!490 = !DILocation(line: 353, column: 31, scope: !353)
!491 = !DILocation(line: 353, column: 39, scope: !353)
!492 = !DILocation(line: 353, column: 37, scope: !353)
!493 = !DILocation(line: 353, column: 28, scope: !353)
!494 = !DILocation(line: 353, column: 5, scope: !353)
!495 = !DILocation(line: 353, column: 13, scope: !353)
!496 = !DILocation(line: 353, column: 18, scope: !353)
!497 = !DILocation(line: 354, column: 20, scope: !353)
!498 = !DILocation(line: 354, column: 35, scope: !353)
!499 = !DILocation(line: 354, column: 43, scope: !353)
!500 = !DILocation(line: 354, column: 41, scope: !353)
!501 = !DILocation(line: 354, column: 30, scope: !353)
!502 = !DILocation(line: 354, column: 28, scope: !353)
!503 = !DILocation(line: 354, column: 5, scope: !353)
!504 = !DILocation(line: 354, column: 13, scope: !353)
!505 = !DILocation(line: 354, column: 18, scope: !353)
!506 = !DILocation(line: 355, column: 20, scope: !353)
!507 = !DILocation(line: 355, column: 31, scope: !353)
!508 = !DILocation(line: 355, column: 46, scope: !353)
!509 = !DILocation(line: 355, column: 44, scope: !353)
!510 = !DILocation(line: 355, column: 58, scope: !353)
!511 = !DILocation(line: 355, column: 56, scope: !353)
!512 = !DILocation(line: 355, column: 28, scope: !353)
!513 = !DILocation(line: 355, column: 5, scope: !353)
!514 = !DILocation(line: 355, column: 13, scope: !353)
!515 = !DILocation(line: 355, column: 17, scope: !353)
!516 = !DILocation(line: 356, column: 20, scope: !353)
!517 = !DILocation(line: 356, column: 35, scope: !353)
!518 = !DILocation(line: 356, column: 41, scope: !353)
!519 = !DILocation(line: 356, column: 40, scope: !353)
!520 = !DILocation(line: 356, column: 30, scope: !353)
!521 = !DILocation(line: 356, column: 28, scope: !353)
!522 = !DILocation(line: 356, column: 56, scope: !353)
!523 = !DILocation(line: 356, column: 51, scope: !524)
!524 = !DILexicalBlockFile(scope: !353, file: !1, discriminator: 1)
!525 = !DILocation(line: 356, column: 61, scope: !353)
!526 = !DILocation(line: 356, column: 48, scope: !353)
!527 = !DILocation(line: 356, column: 68, scope: !353)
!528 = !DILocation(line: 356, column: 5, scope: !353)
!529 = !DILocation(line: 356, column: 13, scope: !353)
!530 = !DILocation(line: 356, column: 17, scope: !353)
!531 = !DILocation(line: 357, column: 49, scope: !353)
!532 = !DILocation(line: 357, column: 57, scope: !353)
!533 = !DILocation(line: 357, column: 44, scope: !353)
!534 = !DILocation(line: 357, column: 42, scope: !353)
!535 = !DILocation(line: 357, column: 5, scope: !353)
!536 = !DILocation(line: 357, column: 13, scope: !353)
!537 = !DILocation(line: 357, column: 17, scope: !353)
!538 = !DILocation(line: 358, column: 5, scope: !353)
!539 = !DILocation(line: 360, column: 1, scope: !204)
!540 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_e", scope: !1, file: !1, line: 364, type: !541, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!541 = !DISubroutineType(types: !542)
!542 = !{!48, !543, !49, !49, !51}
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!544 = !DILocalVariable(name: "ell", arg: 1, scope: !540, file: !1, line: 364, type: !543)
!545 = !DILocation(line: 364, column: 33, scope: !540)
!546 = !DILocalVariable(name: "lambda", arg: 2, scope: !540, file: !1, line: 364, type: !49)
!547 = !DILocation(line: 364, column: 51, scope: !540)
!548 = !DILocalVariable(name: "eta", arg: 3, scope: !540, file: !1, line: 364, type: !49)
!549 = !DILocation(line: 364, column: 72, scope: !540)
!550 = !DILocalVariable(name: "result", arg: 4, scope: !540, file: !1, line: 365, type: !51)
!551 = !DILocation(line: 365, column: 42, scope: !540)
!552 = !DILocalVariable(name: "abs_lam", scope: !540, file: !1, line: 367, type: !49)
!553 = !DILocation(line: 367, column: 16, scope: !540)
!554 = !DILocation(line: 367, column: 31, scope: !540)
!555 = !DILocation(line: 367, column: 26, scope: !540)
!556 = !DILocalVariable(name: "lsq", scope: !540, file: !1, line: 368, type: !49)
!557 = !DILocation(line: 368, column: 16, scope: !540)
!558 = !DILocation(line: 368, column: 26, scope: !540)
!559 = !DILocation(line: 368, column: 34, scope: !540)
!560 = !DILocation(line: 368, column: 33, scope: !540)
!561 = !DILocalVariable(name: "xi", scope: !540, file: !1, line: 369, type: !49)
!562 = !DILocation(line: 369, column: 16, scope: !540)
!563 = !DILocation(line: 369, column: 26, scope: !540)
!564 = !DILocation(line: 369, column: 36, scope: !540)
!565 = !DILocation(line: 369, column: 34, scope: !540)
!566 = !DILocalVariable(name: "cosh_eta", scope: !540, file: !1, line: 370, type: !49)
!567 = !DILocation(line: 370, column: 16, scope: !540)
!568 = !DILocation(line: 370, column: 32, scope: !540)
!569 = !DILocation(line: 370, column: 27, scope: !540)
!570 = !DILocation(line: 374, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !540, file: !1, line: 374, column: 6)
!572 = !DILocation(line: 374, column: 10, scope: !571)
!573 = !DILocation(line: 374, column: 6, scope: !540)
!574 = !DILocation(line: 375, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !1, line: 374, column: 17)
!576 = distinct !{!576, !574}
!577 = !DILocation(line: 375, column: 5, scope: !578)
!578 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 1)
!579 = distinct !DILexicalBlock(scope: !575, file: !1, line: 375, column: 5)
!580 = distinct !{!580, !581}
!581 = !DILocation(line: 375, column: 5, scope: !579)
!582 = !DILocation(line: 375, column: 5, scope: !583)
!583 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 2)
!584 = distinct !DILexicalBlock(scope: !579, file: !1, line: 375, column: 5)
!585 = !DILocation(line: 375, column: 5, scope: !586)
!586 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 3)
!587 = !DILocation(line: 376, column: 3, scope: !575)
!588 = !DILocation(line: 377, column: 11, scope: !589)
!589 = distinct !DILexicalBlock(scope: !571, file: !1, line: 377, column: 11)
!590 = !DILocation(line: 377, column: 15, scope: !589)
!591 = !DILocation(line: 377, column: 11, scope: !571)
!592 = !DILocation(line: 379, column: 5, scope: !593)
!593 = distinct !DILexicalBlock(scope: !589, file: !1, line: 377, column: 34)
!594 = distinct !{!594, !592}
!595 = !DILocation(line: 379, column: 5, scope: !596)
!596 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 1)
!597 = distinct !DILexicalBlock(scope: !593, file: !1, line: 379, column: 5)
!598 = distinct !{!598, !599}
!599 = !DILocation(line: 379, column: 5, scope: !597)
!600 = !DILocation(line: 379, column: 5, scope: !601)
!601 = !DILexicalBlockFile(scope: !602, file: !1, discriminator: 2)
!602 = distinct !DILexicalBlock(scope: !597, file: !1, line: 379, column: 5)
!603 = !DILocation(line: 379, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 3)
!605 = !DILocation(line: 380, column: 3, scope: !593)
!606 = !DILocation(line: 381, column: 11, scope: !607)
!607 = distinct !DILexicalBlock(scope: !589, file: !1, line: 381, column: 11)
!608 = !DILocation(line: 381, column: 15, scope: !607)
!609 = !DILocation(line: 381, column: 11, scope: !589)
!610 = !DILocation(line: 382, column: 36, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !1, line: 381, column: 21)
!612 = !DILocation(line: 382, column: 44, scope: !611)
!613 = !DILocation(line: 382, column: 49, scope: !611)
!614 = !DILocation(line: 382, column: 12, scope: !611)
!615 = !DILocation(line: 382, column: 5, scope: !611)
!616 = !DILocation(line: 384, column: 11, scope: !617)
!617 = distinct !DILexicalBlock(scope: !607, file: !1, line: 384, column: 11)
!618 = !DILocation(line: 384, column: 15, scope: !617)
!619 = !DILocation(line: 384, column: 11, scope: !607)
!620 = !DILocation(line: 385, column: 36, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !1, line: 384, column: 21)
!622 = !DILocation(line: 385, column: 44, scope: !621)
!623 = !DILocation(line: 385, column: 49, scope: !621)
!624 = !DILocation(line: 385, column: 12, scope: !621)
!625 = !DILocation(line: 385, column: 5, scope: !621)
!626 = !DILocation(line: 387, column: 11, scope: !627)
!627 = distinct !DILexicalBlock(scope: !617, file: !1, line: 387, column: 11)
!628 = !DILocation(line: 387, column: 15, scope: !627)
!629 = !DILocation(line: 387, column: 11, scope: !617)
!630 = !DILocation(line: 388, column: 5, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !1, line: 387, column: 23)
!632 = !DILocation(line: 388, column: 13, scope: !631)
!633 = !DILocation(line: 388, column: 17, scope: !631)
!634 = !DILocation(line: 389, column: 5, scope: !631)
!635 = !DILocation(line: 389, column: 13, scope: !631)
!636 = !DILocation(line: 389, column: 17, scope: !631)
!637 = !DILocation(line: 390, column: 5, scope: !631)
!638 = !DILocation(line: 392, column: 11, scope: !639)
!639 = distinct !DILexicalBlock(scope: !627, file: !1, line: 392, column: 11)
!640 = !DILocation(line: 392, column: 14, scope: !639)
!641 = !DILocation(line: 392, column: 11, scope: !627)
!642 = !DILocation(line: 393, column: 32, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !1, line: 392, column: 21)
!644 = !DILocation(line: 393, column: 37, scope: !643)
!645 = !DILocation(line: 393, column: 45, scope: !643)
!646 = !DILocation(line: 393, column: 50, scope: !643)
!647 = !DILocation(line: 393, column: 12, scope: !643)
!648 = !DILocation(line: 393, column: 5, scope: !643)
!649 = !DILocation(line: 395, column: 12, scope: !650)
!650 = distinct !DILexicalBlock(scope: !639, file: !1, line: 395, column: 11)
!651 = !DILocation(line: 395, column: 16, scope: !650)
!652 = !DILocation(line: 395, column: 15, scope: !650)
!653 = !DILocation(line: 395, column: 20, scope: !650)
!654 = !DILocation(line: 395, column: 19, scope: !650)
!655 = !DILocation(line: 395, column: 34, scope: !650)
!656 = !DILocation(line: 395, column: 33, scope: !650)
!657 = !DILocation(line: 395, column: 25, scope: !650)
!658 = !DILocation(line: 395, column: 24, scope: !650)
!659 = !DILocation(line: 395, column: 40, scope: !650)
!660 = !DILocation(line: 395, column: 49, scope: !650)
!661 = !DILocation(line: 395, column: 48, scope: !650)
!662 = !DILocation(line: 395, column: 38, scope: !650)
!663 = !DILocation(line: 395, column: 59, scope: !650)
!664 = !DILocation(line: 395, column: 11, scope: !639)
!665 = !DILocalVariable(name: "P", scope: !666, file: !1, line: 398, type: !52)
!666 = distinct !DILexicalBlock(scope: !650, file: !1, line: 395, column: 88)
!667 = !DILocation(line: 398, column: 19, scope: !666)
!668 = !DILocalVariable(name: "lm", scope: !666, file: !1, line: 399, type: !50)
!669 = !DILocation(line: 399, column: 12, scope: !666)
!670 = !DILocalVariable(name: "stat_P", scope: !666, file: !1, line: 400, type: !48)
!671 = !DILocation(line: 400, column: 9, scope: !666)
!672 = !DILocation(line: 400, column: 45, scope: !666)
!673 = !DILocation(line: 400, column: 44, scope: !666)
!674 = !DILocation(line: 400, column: 48, scope: !666)
!675 = !DILocation(line: 400, column: 54, scope: !666)
!676 = !DILocation(line: 400, column: 62, scope: !666)
!677 = !DILocation(line: 400, column: 18, scope: !666)
!678 = !DILocation(line: 401, column: 10, scope: !679)
!679 = distinct !DILexicalBlock(scope: !666, file: !1, line: 401, column: 8)
!680 = !DILocation(line: 401, column: 14, scope: !679)
!681 = !DILocation(line: 401, column: 8, scope: !666)
!682 = !DILocation(line: 402, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !1, line: 401, column: 22)
!684 = !DILocation(line: 402, column: 15, scope: !683)
!685 = !DILocation(line: 402, column: 19, scope: !683)
!686 = !DILocation(line: 403, column: 7, scope: !683)
!687 = !DILocation(line: 403, column: 15, scope: !683)
!688 = !DILocation(line: 403, column: 19, scope: !683)
!689 = !DILocation(line: 404, column: 14, scope: !683)
!690 = !DILocation(line: 404, column: 7, scope: !683)
!691 = !DILocalVariable(name: "lnN", scope: !692, file: !1, line: 407, type: !50)
!692 = distinct !DILexicalBlock(scope: !679, file: !1, line: 406, column: 10)
!693 = !DILocation(line: 407, column: 14, scope: !692)
!694 = !DILocalVariable(name: "lnsh", scope: !692, file: !1, line: 408, type: !52)
!695 = !DILocation(line: 408, column: 21, scope: !692)
!696 = !DILocalVariable(name: "ln_abslam", scope: !692, file: !1, line: 409, type: !50)
!697 = !DILocation(line: 409, column: 14, scope: !692)
!698 = !DILocalVariable(name: "lnpre_val", scope: !692, file: !1, line: 410, type: !50)
!699 = !DILocation(line: 410, column: 14, scope: !692)
!700 = !DILocalVariable(name: "lnpre_err", scope: !692, file: !1, line: 410, type: !50)
!701 = !DILocation(line: 410, column: 25, scope: !692)
!702 = !DILocalVariable(name: "stat_e", scope: !692, file: !1, line: 411, type: !48)
!703 = !DILocation(line: 411, column: 11, scope: !692)
!704 = !DILocation(line: 412, column: 23, scope: !692)
!705 = !DILocation(line: 412, column: 7, scope: !692)
!706 = !DILocation(line: 413, column: 27, scope: !692)
!707 = !DILocation(line: 413, column: 32, scope: !692)
!708 = !DILocation(line: 413, column: 7, scope: !692)
!709 = !DILocation(line: 414, column: 23, scope: !692)
!710 = !DILocation(line: 414, column: 19, scope: !692)
!711 = !DILocation(line: 414, column: 17, scope: !692)
!712 = !DILocation(line: 415, column: 34, scope: !692)
!713 = !DILocation(line: 415, column: 32, scope: !692)
!714 = !DILocation(line: 415, column: 38, scope: !692)
!715 = !DILocation(line: 415, column: 53, scope: !692)
!716 = !DILocation(line: 415, column: 46, scope: !692)
!717 = !DILocation(line: 415, column: 23, scope: !692)
!718 = !DILocation(line: 415, column: 60, scope: !692)
!719 = !DILocation(line: 415, column: 58, scope: !692)
!720 = !DILocation(line: 415, column: 18, scope: !692)
!721 = !DILocation(line: 416, column: 25, scope: !692)
!722 = !DILocation(line: 416, column: 18, scope: !692)
!723 = !DILocation(line: 417, column: 72, scope: !692)
!724 = !DILocation(line: 417, column: 67, scope: !692)
!725 = !DILocation(line: 417, column: 65, scope: !692)
!726 = !DILocation(line: 417, column: 48, scope: !692)
!727 = !DILocation(line: 417, column: 85, scope: !692)
!728 = !DILocation(line: 417, column: 80, scope: !729)
!729 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 1)
!730 = !DILocation(line: 417, column: 78, scope: !692)
!731 = !DILocation(line: 417, column: 42, scope: !692)
!732 = !DILocation(line: 417, column: 17, scope: !692)
!733 = !DILocation(line: 418, column: 49, scope: !692)
!734 = !DILocation(line: 418, column: 44, scope: !692)
!735 = !DILocation(line: 418, column: 42, scope: !692)
!736 = !DILocation(line: 418, column: 17, scope: !692)
!737 = !DILocation(line: 419, column: 38, scope: !692)
!738 = !DILocation(line: 419, column: 50, scope: !692)
!739 = !DILocation(line: 419, column: 48, scope: !692)
!740 = !DILocation(line: 419, column: 54, scope: !692)
!741 = !DILocation(line: 419, column: 67, scope: !692)
!742 = !DILocation(line: 419, column: 74, scope: !692)
!743 = !DILocation(line: 419, column: 79, scope: !692)
!744 = !DILocation(line: 419, column: 16, scope: !692)
!745 = !DILocation(line: 419, column: 14, scope: !692)
!746 = !DILocation(line: 420, column: 14, scope: !692)
!747 = !DILocation(line: 420, column: 14, scope: !729)
!748 = !DILocation(line: 420, column: 14, scope: !749)
!749 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 2)
!750 = !DILocation(line: 420, column: 14, scope: !751)
!751 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 3)
!752 = !DILocation(line: 420, column: 14, scope: !753)
!753 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 4)
!754 = !DILocation(line: 420, column: 14, scope: !755)
!755 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 5)
!756 = !DILocation(line: 420, column: 14, scope: !757)
!757 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 6)
!758 = !DILocation(line: 420, column: 7, scope: !757)
!759 = !DILocation(line: 423, column: 11, scope: !760)
!760 = distinct !DILexicalBlock(scope: !650, file: !1, line: 423, column: 11)
!761 = !DILocation(line: 423, column: 28, scope: !760)
!762 = !DILocation(line: 423, column: 27, scope: !760)
!763 = !DILocation(line: 423, column: 32, scope: !760)
!764 = !DILocation(line: 423, column: 31, scope: !760)
!765 = !DILocation(line: 423, column: 19, scope: !760)
!766 = !DILocation(line: 423, column: 11, scope: !650)
!767 = !DILocalVariable(name: "P", scope: !768, file: !1, line: 426, type: !52)
!768 = distinct !DILexicalBlock(scope: !760, file: !1, line: 423, column: 37)
!769 = !DILocation(line: 426, column: 19, scope: !768)
!770 = !DILocalVariable(name: "lm", scope: !768, file: !1, line: 427, type: !50)
!771 = !DILocation(line: 427, column: 12, scope: !768)
!772 = !DILocalVariable(name: "stat_P", scope: !768, file: !1, line: 428, type: !48)
!773 = !DILocation(line: 428, column: 9, scope: !768)
!774 = !DILocation(line: 428, column: 57, scope: !768)
!775 = !DILocation(line: 428, column: 60, scope: !768)
!776 = !DILocation(line: 429, column: 60, scope: !768)
!777 = !DILocation(line: 430, column: 60, scope: !768)
!778 = !DILocation(line: 430, column: 70, scope: !768)
!779 = !DILocation(line: 428, column: 18, scope: !768)
!780 = !DILocation(line: 432, column: 10, scope: !781)
!781 = distinct !DILexicalBlock(scope: !768, file: !1, line: 432, column: 8)
!782 = !DILocation(line: 432, column: 14, scope: !781)
!783 = !DILocation(line: 432, column: 8, scope: !768)
!784 = !DILocation(line: 433, column: 7, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !1, line: 432, column: 22)
!786 = !DILocation(line: 433, column: 15, scope: !785)
!787 = !DILocation(line: 433, column: 19, scope: !785)
!788 = !DILocation(line: 434, column: 7, scope: !785)
!789 = !DILocation(line: 434, column: 15, scope: !785)
!790 = !DILocation(line: 434, column: 19, scope: !785)
!791 = !DILocation(line: 435, column: 14, scope: !785)
!792 = !DILocation(line: 435, column: 7, scope: !785)
!793 = !DILocalVariable(name: "lnN", scope: !794, file: !1, line: 438, type: !50)
!794 = distinct !DILexicalBlock(scope: !781, file: !1, line: 437, column: 10)
!795 = !DILocation(line: 438, column: 14, scope: !794)
!796 = !DILocalVariable(name: "lnsh", scope: !794, file: !1, line: 439, type: !52)
!797 = !DILocation(line: 439, column: 21, scope: !794)
!798 = !DILocalVariable(name: "ln_abslam", scope: !794, file: !1, line: 440, type: !50)
!799 = !DILocation(line: 440, column: 14, scope: !794)
!800 = !DILocalVariable(name: "lnpre_val", scope: !794, file: !1, line: 441, type: !50)
!801 = !DILocation(line: 441, column: 14, scope: !794)
!802 = !DILocalVariable(name: "lnpre_err", scope: !794, file: !1, line: 441, type: !50)
!803 = !DILocation(line: 441, column: 25, scope: !794)
!804 = !DILocalVariable(name: "stat_e", scope: !794, file: !1, line: 442, type: !48)
!805 = !DILocation(line: 442, column: 11, scope: !794)
!806 = !DILocation(line: 443, column: 23, scope: !794)
!807 = !DILocation(line: 443, column: 7, scope: !794)
!808 = !DILocation(line: 444, column: 27, scope: !794)
!809 = !DILocation(line: 444, column: 32, scope: !794)
!810 = !DILocation(line: 444, column: 7, scope: !794)
!811 = !DILocation(line: 445, column: 23, scope: !794)
!812 = !DILocation(line: 445, column: 19, scope: !794)
!813 = !DILocation(line: 445, column: 17, scope: !794)
!814 = !DILocation(line: 446, column: 34, scope: !794)
!815 = !DILocation(line: 446, column: 32, scope: !794)
!816 = !DILocation(line: 446, column: 38, scope: !794)
!817 = !DILocation(line: 446, column: 53, scope: !794)
!818 = !DILocation(line: 446, column: 46, scope: !794)
!819 = !DILocation(line: 446, column: 23, scope: !794)
!820 = !DILocation(line: 446, column: 60, scope: !794)
!821 = !DILocation(line: 446, column: 58, scope: !794)
!822 = !DILocation(line: 446, column: 18, scope: !794)
!823 = !DILocation(line: 447, column: 25, scope: !794)
!824 = !DILocation(line: 447, column: 18, scope: !794)
!825 = !DILocation(line: 448, column: 66, scope: !794)
!826 = !DILocation(line: 448, column: 61, scope: !794)
!827 = !DILocation(line: 448, column: 59, scope: !794)
!828 = !DILocation(line: 448, column: 42, scope: !794)
!829 = !DILocation(line: 448, column: 79, scope: !794)
!830 = !DILocation(line: 448, column: 74, scope: !831)
!831 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 1)
!832 = !DILocation(line: 448, column: 72, scope: !794)
!833 = !DILocation(line: 448, column: 36, scope: !794)
!834 = !DILocation(line: 448, column: 17, scope: !794)
!835 = !DILocation(line: 449, column: 49, scope: !794)
!836 = !DILocation(line: 449, column: 44, scope: !794)
!837 = !DILocation(line: 449, column: 42, scope: !794)
!838 = !DILocation(line: 449, column: 17, scope: !794)
!839 = !DILocation(line: 450, column: 38, scope: !794)
!840 = !DILocation(line: 450, column: 50, scope: !794)
!841 = !DILocation(line: 450, column: 48, scope: !794)
!842 = !DILocation(line: 450, column: 54, scope: !794)
!843 = !DILocation(line: 450, column: 67, scope: !794)
!844 = !DILocation(line: 450, column: 74, scope: !794)
!845 = !DILocation(line: 450, column: 79, scope: !794)
!846 = !DILocation(line: 450, column: 16, scope: !794)
!847 = !DILocation(line: 450, column: 14, scope: !794)
!848 = !DILocation(line: 451, column: 14, scope: !794)
!849 = !DILocation(line: 451, column: 14, scope: !831)
!850 = !DILocation(line: 451, column: 14, scope: !851)
!851 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 2)
!852 = !DILocation(line: 451, column: 14, scope: !853)
!853 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 3)
!854 = !DILocation(line: 451, column: 14, scope: !855)
!855 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 4)
!856 = !DILocation(line: 451, column: 14, scope: !857)
!857 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 5)
!858 = !DILocation(line: 451, column: 14, scope: !859)
!859 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 6)
!860 = !DILocation(line: 451, column: 7, scope: !859)
!861 = !DILocalVariable(name: "coth_eta", scope: !862, file: !1, line: 457, type: !49)
!862 = distinct !DILexicalBlock(scope: !760, file: !1, line: 454, column: 8)
!863 = !DILocation(line: 457, column: 18, scope: !862)
!864 = !DILocation(line: 457, column: 38, scope: !862)
!865 = !DILocation(line: 457, column: 33, scope: !862)
!866 = !DILocation(line: 457, column: 32, scope: !862)
!867 = !DILocalVariable(name: "coth_err_mult", scope: !862, file: !1, line: 458, type: !49)
!868 = !DILocation(line: 458, column: 18, scope: !862)
!869 = !DILocation(line: 458, column: 39, scope: !862)
!870 = !DILocation(line: 458, column: 34, scope: !862)
!871 = !DILocation(line: 458, column: 44, scope: !862)
!872 = !DILocalVariable(name: "rH", scope: !862, file: !1, line: 459, type: !52)
!873 = !DILocation(line: 459, column: 19, scope: !862)
!874 = !DILocalVariable(name: "stat_CF1", scope: !862, file: !1, line: 460, type: !48)
!875 = !DILocation(line: 460, column: 9, scope: !862)
!876 = !DILocation(line: 460, column: 41, scope: !862)
!877 = !DILocation(line: 460, column: 46, scope: !862)
!878 = !DILocation(line: 460, column: 54, scope: !862)
!879 = !DILocation(line: 460, column: 20, scope: !862)
!880 = !DILocalVariable(name: "Hlm1", scope: !862, file: !1, line: 461, type: !50)
!881 = !DILocation(line: 461, column: 12, scope: !862)
!882 = !DILocalVariable(name: "Hl", scope: !862, file: !1, line: 462, type: !50)
!883 = !DILocation(line: 462, column: 12, scope: !862)
!884 = !DILocalVariable(name: "Hlp1", scope: !862, file: !1, line: 463, type: !50)
!885 = !DILocation(line: 463, column: 12, scope: !862)
!886 = !DILocation(line: 463, column: 23, scope: !862)
!887 = !DILocation(line: 463, column: 29, scope: !862)
!888 = !DILocation(line: 463, column: 27, scope: !862)
!889 = !DILocalVariable(name: "lp", scope: !862, file: !1, line: 464, type: !48)
!890 = !DILocation(line: 464, column: 9, scope: !862)
!891 = !DILocation(line: 465, column: 12, scope: !892)
!892 = distinct !DILexicalBlock(scope: !862, file: !1, line: 465, column: 5)
!893 = !DILocation(line: 465, column: 11, scope: !892)
!894 = !DILocation(line: 465, column: 9, scope: !892)
!895 = !DILocation(line: 465, column: 17, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !1, discriminator: 1)
!897 = distinct !DILexicalBlock(scope: !892, file: !1, line: 465, column: 5)
!898 = !DILocation(line: 465, column: 19, scope: !896)
!899 = !DILocation(line: 465, column: 5, scope: !896)
!900 = !DILocalVariable(name: "root_term_0", scope: !901, file: !1, line: 466, type: !50)
!901 = distinct !DILexicalBlock(scope: !897, file: !1, line: 465, column: 29)
!902 = !DILocation(line: 466, column: 14, scope: !901)
!903 = !DILocation(line: 466, column: 34, scope: !901)
!904 = !DILocation(line: 466, column: 41, scope: !901)
!905 = !DILocation(line: 466, column: 28, scope: !901)
!906 = !DILocalVariable(name: "root_term_1", scope: !901, file: !1, line: 467, type: !50)
!907 = !DILocation(line: 467, column: 14, scope: !901)
!908 = !DILocation(line: 467, column: 34, scope: !901)
!909 = !DILocation(line: 467, column: 41, scope: !901)
!910 = !DILocation(line: 467, column: 43, scope: !901)
!911 = !DILocation(line: 467, column: 28, scope: !901)
!912 = !DILocation(line: 468, column: 20, scope: !901)
!913 = !DILocation(line: 468, column: 19, scope: !901)
!914 = !DILocation(line: 468, column: 23, scope: !901)
!915 = !DILocation(line: 468, column: 30, scope: !901)
!916 = !DILocation(line: 468, column: 29, scope: !901)
!917 = !DILocation(line: 468, column: 39, scope: !901)
!918 = !DILocation(line: 468, column: 38, scope: !901)
!919 = !DILocation(line: 468, column: 44, scope: !901)
!920 = !DILocation(line: 468, column: 58, scope: !901)
!921 = !DILocation(line: 468, column: 56, scope: !901)
!922 = !DILocation(line: 468, column: 42, scope: !901)
!923 = !DILocation(line: 468, column: 64, scope: !901)
!924 = !DILocation(line: 468, column: 63, scope: !901)
!925 = !DILocation(line: 468, column: 12, scope: !901)
!926 = !DILocation(line: 469, column: 14, scope: !901)
!927 = !DILocation(line: 469, column: 12, scope: !901)
!928 = !DILocation(line: 470, column: 14, scope: !901)
!929 = !DILocation(line: 470, column: 12, scope: !901)
!930 = !DILocation(line: 471, column: 5, scope: !901)
!931 = !DILocation(line: 465, column: 25, scope: !932)
!932 = !DILexicalBlockFile(scope: !897, file: !1, discriminator: 2)
!933 = !DILocation(line: 465, column: 5, scope: !932)
!934 = distinct !{!934, !935}
!935 = !DILocation(line: 465, column: 5, scope: !862)
!936 = !DILocation(line: 473, column: 13, scope: !937)
!937 = distinct !DILexicalBlock(scope: !862, file: !1, line: 473, column: 8)
!938 = !DILocation(line: 473, column: 8, scope: !937)
!939 = !DILocation(line: 473, column: 24, scope: !937)
!940 = !DILocation(line: 473, column: 19, scope: !941)
!941 = !DILexicalBlockFile(scope: !937, file: !1, discriminator: 1)
!942 = !DILocation(line: 473, column: 17, scope: !937)
!943 = !DILocation(line: 473, column: 8, scope: !862)
!944 = !DILocalVariable(name: "H0", scope: !945, file: !1, line: 474, type: !52)
!945 = distinct !DILexicalBlock(scope: !937, file: !1, line: 473, column: 31)
!946 = !DILocation(line: 474, column: 21, scope: !945)
!947 = !DILocalVariable(name: "stat_H0", scope: !945, file: !1, line: 475, type: !48)
!948 = !DILocation(line: 475, column: 11, scope: !945)
!949 = !DILocation(line: 475, column: 45, scope: !945)
!950 = !DILocation(line: 475, column: 53, scope: !945)
!951 = !DILocation(line: 475, column: 21, scope: !945)
!952 = !DILocation(line: 476, column: 39, scope: !945)
!953 = !DILocation(line: 476, column: 38, scope: !945)
!954 = !DILocation(line: 476, column: 47, scope: !945)
!955 = !DILocation(line: 476, column: 42, scope: !945)
!956 = !DILocation(line: 476, column: 7, scope: !945)
!957 = !DILocation(line: 476, column: 15, scope: !945)
!958 = !DILocation(line: 476, column: 20, scope: !945)
!959 = !DILocation(line: 477, column: 44, scope: !945)
!960 = !DILocation(line: 477, column: 39, scope: !945)
!961 = !DILocation(line: 477, column: 38, scope: !945)
!962 = !DILocation(line: 477, column: 53, scope: !945)
!963 = !DILocation(line: 477, column: 48, scope: !945)
!964 = !DILocation(line: 477, column: 7, scope: !945)
!965 = !DILocation(line: 477, column: 15, scope: !945)
!966 = !DILocation(line: 477, column: 20, scope: !945)
!967 = !DILocation(line: 478, column: 30, scope: !945)
!968 = !DILocation(line: 478, column: 37, scope: !945)
!969 = !DILocation(line: 478, column: 33, scope: !945)
!970 = !DILocation(line: 478, column: 22, scope: !945)
!971 = !DILocation(line: 478, column: 45, scope: !945)
!972 = !DILocation(line: 478, column: 48, scope: !945)
!973 = !DILocation(line: 478, column: 42, scope: !945)
!974 = !DILocation(line: 478, column: 56, scope: !945)
!975 = !DILocation(line: 478, column: 54, scope: !945)
!976 = !DILocation(line: 478, column: 77, scope: !945)
!977 = !DILocation(line: 478, column: 85, scope: !945)
!978 = !DILocation(line: 478, column: 72, scope: !979)
!979 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 1)
!980 = !DILocation(line: 478, column: 70, scope: !945)
!981 = !DILocation(line: 478, column: 7, scope: !945)
!982 = !DILocation(line: 478, column: 15, scope: !945)
!983 = !DILocation(line: 478, column: 19, scope: !945)
!984 = !DILocation(line: 479, column: 51, scope: !945)
!985 = !DILocation(line: 479, column: 59, scope: !945)
!986 = !DILocation(line: 479, column: 46, scope: !945)
!987 = !DILocation(line: 479, column: 44, scope: !945)
!988 = !DILocation(line: 479, column: 7, scope: !945)
!989 = !DILocation(line: 479, column: 15, scope: !945)
!990 = !DILocation(line: 479, column: 19, scope: !945)
!991 = !DILocation(line: 480, column: 14, scope: !945)
!992 = !DILocation(line: 480, column: 14, scope: !979)
!993 = !DILocation(line: 480, column: 14, scope: !994)
!994 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 2)
!995 = !DILocation(line: 480, column: 14, scope: !996)
!996 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 3)
!997 = !DILocation(line: 480, column: 14, scope: !998)
!998 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 4)
!999 = !DILocation(line: 480, column: 14, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 5)
!1001 = !DILocation(line: 480, column: 14, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 6)
!1003 = !DILocation(line: 480, column: 7, scope: !1002)
!1004 = !DILocalVariable(name: "H1", scope: !1005, file: !1, line: 483, type: !52)
!1005 = distinct !DILexicalBlock(scope: !937, file: !1, line: 482, column: 10)
!1006 = !DILocation(line: 483, column: 21, scope: !1005)
!1007 = !DILocalVariable(name: "stat_H1", scope: !1005, file: !1, line: 484, type: !48)
!1008 = !DILocation(line: 484, column: 11, scope: !1005)
!1009 = !DILocation(line: 484, column: 45, scope: !1005)
!1010 = !DILocation(line: 484, column: 53, scope: !1005)
!1011 = !DILocation(line: 484, column: 21, scope: !1005)
!1012 = !DILocation(line: 485, column: 39, scope: !1005)
!1013 = !DILocation(line: 485, column: 38, scope: !1005)
!1014 = !DILocation(line: 485, column: 49, scope: !1005)
!1015 = !DILocation(line: 485, column: 44, scope: !1005)
!1016 = !DILocation(line: 485, column: 7, scope: !1005)
!1017 = !DILocation(line: 485, column: 15, scope: !1005)
!1018 = !DILocation(line: 485, column: 20, scope: !1005)
!1019 = !DILocation(line: 486, column: 44, scope: !1005)
!1020 = !DILocation(line: 486, column: 39, scope: !1005)
!1021 = !DILocation(line: 486, column: 38, scope: !1005)
!1022 = !DILocation(line: 486, column: 55, scope: !1005)
!1023 = !DILocation(line: 486, column: 50, scope: !1005)
!1024 = !DILocation(line: 486, column: 7, scope: !1005)
!1025 = !DILocation(line: 486, column: 15, scope: !1005)
!1026 = !DILocation(line: 486, column: 20, scope: !1005)
!1027 = !DILocation(line: 487, column: 30, scope: !1005)
!1028 = !DILocation(line: 487, column: 37, scope: !1005)
!1029 = !DILocation(line: 487, column: 33, scope: !1005)
!1030 = !DILocation(line: 487, column: 22, scope: !1005)
!1031 = !DILocation(line: 487, column: 45, scope: !1005)
!1032 = !DILocation(line: 487, column: 48, scope: !1005)
!1033 = !DILocation(line: 487, column: 42, scope: !1005)
!1034 = !DILocation(line: 487, column: 56, scope: !1005)
!1035 = !DILocation(line: 487, column: 54, scope: !1005)
!1036 = !DILocation(line: 487, column: 77, scope: !1005)
!1037 = !DILocation(line: 487, column: 85, scope: !1005)
!1038 = !DILocation(line: 487, column: 72, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 1)
!1040 = !DILocation(line: 487, column: 70, scope: !1005)
!1041 = !DILocation(line: 487, column: 7, scope: !1005)
!1042 = !DILocation(line: 487, column: 15, scope: !1005)
!1043 = !DILocation(line: 487, column: 19, scope: !1005)
!1044 = !DILocation(line: 488, column: 51, scope: !1005)
!1045 = !DILocation(line: 488, column: 59, scope: !1005)
!1046 = !DILocation(line: 488, column: 46, scope: !1005)
!1047 = !DILocation(line: 488, column: 44, scope: !1005)
!1048 = !DILocation(line: 488, column: 7, scope: !1005)
!1049 = !DILocation(line: 488, column: 15, scope: !1005)
!1050 = !DILocation(line: 488, column: 19, scope: !1005)
!1051 = !DILocation(line: 489, column: 14, scope: !1005)
!1052 = !DILocation(line: 489, column: 14, scope: !1039)
!1053 = !DILocation(line: 489, column: 14, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 2)
!1055 = !DILocation(line: 489, column: 14, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 3)
!1057 = !DILocation(line: 489, column: 14, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 4)
!1059 = !DILocation(line: 489, column: 14, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 5)
!1061 = !DILocation(line: 489, column: 14, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 6)
!1063 = !DILocation(line: 489, column: 7, scope: !1062)
!1064 = !DILocation(line: 492, column: 1, scope: !540)
!1065 = distinct !DISubprogram(name: "legendre_H3d_series", scope: !1, file: !1, line: 97, type: !541, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1066 = !DILocalVariable(name: "ell", arg: 1, scope: !1065, file: !1, line: 97, type: !543)
!1067 = !DILocation(line: 97, column: 31, scope: !1065)
!1068 = !DILocalVariable(name: "lambda", arg: 2, scope: !1065, file: !1, line: 97, type: !49)
!1069 = !DILocation(line: 97, column: 49, scope: !1065)
!1070 = !DILocalVariable(name: "eta", arg: 3, scope: !1065, file: !1, line: 97, type: !49)
!1071 = !DILocation(line: 97, column: 70, scope: !1065)
!1072 = !DILocalVariable(name: "result", arg: 4, scope: !1065, file: !1, line: 98, type: !51)
!1073 = !DILocation(line: 98, column: 37, scope: !1065)
!1074 = !DILocalVariable(name: "nmax", scope: !1065, file: !1, line: 100, type: !543)
!1075 = !DILocation(line: 100, column: 13, scope: !1065)
!1076 = !DILocalVariable(name: "shheta", scope: !1065, file: !1, line: 101, type: !49)
!1077 = !DILocation(line: 101, column: 16, scope: !1065)
!1078 = !DILocation(line: 101, column: 34, scope: !1065)
!1079 = !DILocation(line: 101, column: 33, scope: !1065)
!1080 = !DILocation(line: 101, column: 25, scope: !1065)
!1081 = !DILocalVariable(name: "ln_zp1", scope: !1065, file: !1, line: 102, type: !49)
!1082 = !DILocation(line: 102, column: 16, scope: !1065)
!1083 = !DILocation(line: 102, column: 43, scope: !1065)
!1084 = !DILocation(line: 102, column: 50, scope: !1065)
!1085 = !DILocation(line: 102, column: 49, scope: !1065)
!1086 = !DILocation(line: 102, column: 41, scope: !1065)
!1087 = !DILocation(line: 102, column: 33, scope: !1065)
!1088 = !DILocation(line: 102, column: 31, scope: !1065)
!1089 = !DILocalVariable(name: "ln_zm1", scope: !1065, file: !1, line: 103, type: !49)
!1090 = !DILocation(line: 103, column: 16, scope: !1065)
!1091 = !DILocation(line: 103, column: 41, scope: !1065)
!1092 = !DILocation(line: 103, column: 37, scope: !1065)
!1093 = !DILocation(line: 103, column: 36, scope: !1065)
!1094 = !DILocation(line: 103, column: 31, scope: !1065)
!1095 = !DILocalVariable(name: "zeta", scope: !1065, file: !1, line: 104, type: !49)
!1096 = !DILocation(line: 104, column: 16, scope: !1065)
!1097 = !DILocation(line: 104, column: 24, scope: !1065)
!1098 = !DILocation(line: 104, column: 23, scope: !1065)
!1099 = !DILocation(line: 104, column: 31, scope: !1065)
!1100 = !DILocation(line: 104, column: 30, scope: !1065)
!1101 = !DILocalVariable(name: "lg_lp32", scope: !1065, file: !1, line: 105, type: !52)
!1102 = !DILocation(line: 105, column: 17, scope: !1065)
!1103 = !DILocalVariable(name: "term", scope: !1065, file: !1, line: 106, type: !50)
!1104 = !DILocation(line: 106, column: 10, scope: !1065)
!1105 = !DILocalVariable(name: "sum", scope: !1065, file: !1, line: 107, type: !50)
!1106 = !DILocation(line: 107, column: 10, scope: !1065)
!1107 = !DILocalVariable(name: "sum_err", scope: !1065, file: !1, line: 108, type: !50)
!1108 = !DILocation(line: 108, column: 10, scope: !1065)
!1109 = !DILocalVariable(name: "lnsheta", scope: !1065, file: !1, line: 109, type: !52)
!1110 = !DILocation(line: 109, column: 17, scope: !1065)
!1111 = !DILocalVariable(name: "lnN", scope: !1065, file: !1, line: 110, type: !50)
!1112 = !DILocation(line: 110, column: 10, scope: !1065)
!1113 = !DILocalVariable(name: "lnpre_val", scope: !1065, file: !1, line: 111, type: !50)
!1114 = !DILocation(line: 111, column: 10, scope: !1065)
!1115 = !DILocalVariable(name: "lnpre_err", scope: !1065, file: !1, line: 111, type: !50)
!1116 = !DILocation(line: 111, column: 21, scope: !1065)
!1117 = !DILocalVariable(name: "lnprepow", scope: !1065, file: !1, line: 111, type: !50)
!1118 = !DILocation(line: 111, column: 32, scope: !1065)
!1119 = !DILocalVariable(name: "stat_e", scope: !1065, file: !1, line: 112, type: !48)
!1120 = !DILocation(line: 112, column: 7, scope: !1065)
!1121 = !DILocalVariable(name: "n", scope: !1065, file: !1, line: 113, type: !48)
!1122 = !DILocation(line: 113, column: 7, scope: !1065)
!1123 = !DILocation(line: 115, column: 20, scope: !1065)
!1124 = !DILocation(line: 115, column: 24, scope: !1065)
!1125 = !DILocation(line: 115, column: 3, scope: !1065)
!1126 = !DILocation(line: 116, column: 19, scope: !1065)
!1127 = !DILocation(line: 116, column: 3, scope: !1065)
!1128 = !DILocation(line: 117, column: 23, scope: !1065)
!1129 = !DILocation(line: 117, column: 28, scope: !1065)
!1130 = !DILocation(line: 117, column: 3, scope: !1065)
!1131 = !DILocation(line: 118, column: 19, scope: !1065)
!1132 = !DILocation(line: 118, column: 23, scope: !1065)
!1133 = !DILocation(line: 118, column: 17, scope: !1065)
!1134 = !DILocation(line: 118, column: 33, scope: !1065)
!1135 = !DILocation(line: 118, column: 42, scope: !1065)
!1136 = !DILocation(line: 118, column: 40, scope: !1065)
!1137 = !DILocation(line: 118, column: 30, scope: !1065)
!1138 = !DILocation(line: 118, column: 12, scope: !1065)
!1139 = !DILocation(line: 119, column: 16, scope: !1065)
!1140 = !DILocation(line: 119, column: 32, scope: !1065)
!1141 = !DILocation(line: 119, column: 36, scope: !1065)
!1142 = !DILocation(line: 119, column: 45, scope: !1065)
!1143 = !DILocation(line: 119, column: 63, scope: !1065)
!1144 = !DILocation(line: 119, column: 53, scope: !1065)
!1145 = !DILocation(line: 119, column: 30, scope: !1065)
!1146 = !DILocation(line: 119, column: 25, scope: !1065)
!1147 = !DILocation(line: 119, column: 78, scope: !1065)
!1148 = !DILocation(line: 119, column: 68, scope: !1065)
!1149 = !DILocation(line: 119, column: 93, scope: !1065)
!1150 = !DILocation(line: 119, column: 88, scope: !1065)
!1151 = !DILocation(line: 119, column: 84, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 1)
!1153 = !DILocation(line: 119, column: 82, scope: !1065)
!1154 = !DILocation(line: 119, column: 14, scope: !1065)
!1155 = !DILocation(line: 120, column: 24, scope: !1065)
!1156 = !DILocation(line: 120, column: 38, scope: !1065)
!1157 = !DILocation(line: 120, column: 28, scope: !1065)
!1158 = !DILocation(line: 120, column: 67, scope: !1065)
!1159 = !DILocation(line: 120, column: 62, scope: !1065)
!1160 = !DILocation(line: 120, column: 60, scope: !1065)
!1161 = !DILocation(line: 120, column: 42, scope: !1065)
!1162 = !DILocation(line: 120, column: 14, scope: !1065)
!1163 = !DILocation(line: 121, column: 44, scope: !1065)
!1164 = !DILocation(line: 121, column: 39, scope: !1065)
!1165 = !DILocation(line: 121, column: 49, scope: !1065)
!1166 = !DILocation(line: 121, column: 58, scope: !1065)
!1167 = !DILocation(line: 121, column: 36, scope: !1065)
!1168 = !DILocation(line: 121, column: 13, scope: !1065)
!1169 = !DILocation(line: 122, column: 44, scope: !1065)
!1170 = !DILocation(line: 122, column: 48, scope: !1065)
!1171 = !DILocation(line: 122, column: 42, scope: !1065)
!1172 = !DILocation(line: 122, column: 63, scope: !1065)
!1173 = !DILocation(line: 122, column: 58, scope: !1065)
!1174 = !DILocation(line: 122, column: 78, scope: !1065)
!1175 = !DILocation(line: 122, column: 73, scope: !1152)
!1176 = !DILocation(line: 122, column: 71, scope: !1065)
!1177 = !DILocation(line: 122, column: 55, scope: !1065)
!1178 = !DILocation(line: 122, column: 36, scope: !1065)
!1179 = !DILocation(line: 122, column: 13, scope: !1065)
!1180 = !DILocation(line: 123, column: 8, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 123, column: 3)
!1182 = !DILocation(line: 123, column: 7, scope: !1181)
!1183 = !DILocation(line: 123, column: 12, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1185, file: !1, discriminator: 1)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 123, column: 3)
!1186 = !DILocation(line: 123, column: 13, scope: !1184)
!1187 = !DILocation(line: 123, column: 3, scope: !1184)
!1188 = !DILocalVariable(name: "aR", scope: !1189, file: !1, line: 124, type: !50)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 123, column: 25)
!1190 = !DILocation(line: 124, column: 12, scope: !1189)
!1191 = !DILocation(line: 124, column: 17, scope: !1189)
!1192 = !DILocation(line: 124, column: 19, scope: !1189)
!1193 = !DILocation(line: 125, column: 14, scope: !1189)
!1194 = !DILocation(line: 125, column: 17, scope: !1189)
!1195 = !DILocation(line: 125, column: 16, scope: !1189)
!1196 = !DILocation(line: 125, column: 22, scope: !1189)
!1197 = !DILocation(line: 125, column: 29, scope: !1189)
!1198 = !DILocation(line: 125, column: 28, scope: !1189)
!1199 = !DILocation(line: 125, column: 20, scope: !1189)
!1200 = !DILocation(line: 125, column: 37, scope: !1189)
!1201 = !DILocation(line: 125, column: 36, scope: !1189)
!1202 = !DILocation(line: 125, column: 43, scope: !1189)
!1203 = !DILocation(line: 125, column: 49, scope: !1189)
!1204 = !DILocation(line: 125, column: 47, scope: !1189)
!1205 = !DILocation(line: 125, column: 51, scope: !1189)
!1206 = !DILocation(line: 125, column: 41, scope: !1189)
!1207 = !DILocation(line: 125, column: 58, scope: !1189)
!1208 = !DILocation(line: 125, column: 57, scope: !1189)
!1209 = !DILocation(line: 125, column: 10, scope: !1189)
!1210 = !DILocation(line: 126, column: 13, scope: !1189)
!1211 = !DILocation(line: 126, column: 10, scope: !1189)
!1212 = !DILocation(line: 127, column: 41, scope: !1189)
!1213 = !DILocation(line: 127, column: 36, scope: !1189)
!1214 = !DILocation(line: 127, column: 35, scope: !1189)
!1215 = !DILocation(line: 127, column: 13, scope: !1189)
!1216 = !DILocation(line: 128, column: 13, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 128, column: 8)
!1218 = !DILocation(line: 128, column: 18, scope: !1217)
!1219 = !DILocation(line: 128, column: 17, scope: !1217)
!1220 = !DILocation(line: 128, column: 8, scope: !1217)
!1221 = !DILocation(line: 128, column: 23, scope: !1217)
!1222 = !DILocation(line: 128, column: 8, scope: !1189)
!1223 = !DILocation(line: 128, column: 48, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1217, file: !1, discriminator: 1)
!1225 = !DILocation(line: 129, column: 3, scope: !1189)
!1226 = !DILocation(line: 123, column: 21, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1185, file: !1, discriminator: 2)
!1228 = !DILocation(line: 123, column: 3, scope: !1227)
!1229 = distinct !{!1229, !1230}
!1230 = !DILocation(line: 123, column: 3, scope: !1065)
!1231 = !DILocation(line: 131, column: 34, scope: !1065)
!1232 = !DILocation(line: 131, column: 45, scope: !1065)
!1233 = !DILocation(line: 131, column: 56, scope: !1065)
!1234 = !DILocation(line: 131, column: 66, scope: !1065)
!1235 = !DILocation(line: 131, column: 61, scope: !1065)
!1236 = !DILocation(line: 131, column: 72, scope: !1065)
!1237 = !DILocation(line: 131, column: 71, scope: !1065)
!1238 = !DILocation(line: 131, column: 81, scope: !1065)
!1239 = !DILocation(line: 131, column: 12, scope: !1152)
!1240 = !DILocation(line: 131, column: 10, scope: !1065)
!1241 = !DILocation(line: 132, column: 10, scope: !1065)
!1242 = !DILocation(line: 132, column: 10, scope: !1152)
!1243 = !DILocation(line: 132, column: 10, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 2)
!1245 = !DILocation(line: 132, column: 10, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 3)
!1247 = !DILocation(line: 132, column: 10, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 4)
!1249 = !DILocation(line: 132, column: 10, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 5)
!1251 = !DILocation(line: 132, column: 10, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 6)
!1253 = !DILocation(line: 132, column: 3, scope: !1252)
!1254 = distinct !DISubprogram(name: "legendre_H3d_lnnorm", scope: !1, file: !1, line: 46, type: !1255, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!48, !543, !49, !1257}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!1258 = !DILocalVariable(name: "ell", arg: 1, scope: !1254, file: !1, line: 46, type: !543)
!1259 = !DILocation(line: 46, column: 31, scope: !1254)
!1260 = !DILocalVariable(name: "lambda", arg: 2, scope: !1254, file: !1, line: 46, type: !49)
!1261 = !DILocation(line: 46, column: 49, scope: !1254)
!1262 = !DILocalVariable(name: "result", arg: 3, scope: !1254, file: !1, line: 46, type: !1257)
!1263 = !DILocation(line: 46, column: 66, scope: !1254)
!1264 = !DILocalVariable(name: "abs_lam", scope: !1254, file: !1, line: 48, type: !50)
!1265 = !DILocation(line: 48, column: 10, scope: !1254)
!1266 = !DILocation(line: 48, column: 25, scope: !1254)
!1267 = !DILocation(line: 48, column: 20, scope: !1254)
!1268 = !DILocation(line: 50, column: 6, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 50, column: 6)
!1270 = !DILocation(line: 50, column: 14, scope: !1269)
!1271 = !DILocation(line: 50, column: 6, scope: !1254)
!1272 = !DILocation(line: 51, column: 6, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 50, column: 22)
!1274 = !DILocation(line: 51, column: 13, scope: !1273)
!1275 = !DILocation(line: 52, column: 5, scope: !1273)
!1276 = distinct !{!1276, !1275}
!1277 = !DILocation(line: 52, column: 5, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1279, file: !1, discriminator: 1)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 52, column: 5)
!1280 = !DILocation(line: 53, column: 3, scope: !1273)
!1281 = !DILocation(line: 54, column: 11, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 54, column: 11)
!1283 = !DILocation(line: 54, column: 21, scope: !1282)
!1284 = !DILocation(line: 54, column: 25, scope: !1282)
!1285 = !DILocation(line: 54, column: 31, scope: !1282)
!1286 = !DILocation(line: 54, column: 18, scope: !1282)
!1287 = !DILocation(line: 54, column: 11, scope: !1269)
!1288 = !DILocalVariable(name: "rat", scope: !1289, file: !1, line: 62, type: !50)
!1289 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 54, column: 55)
!1290 = !DILocation(line: 62, column: 12, scope: !1289)
!1291 = !DILocation(line: 62, column: 19, scope: !1289)
!1292 = !DILocation(line: 62, column: 22, scope: !1289)
!1293 = !DILocation(line: 62, column: 28, scope: !1289)
!1294 = !DILocation(line: 62, column: 27, scope: !1289)
!1295 = !DILocalVariable(name: "ln_lam2ell2", scope: !1289, file: !1, line: 63, type: !50)
!1296 = !DILocation(line: 63, column: 12, scope: !1289)
!1297 = !DILocation(line: 63, column: 35, scope: !1289)
!1298 = !DILocation(line: 63, column: 31, scope: !1289)
!1299 = !DILocation(line: 63, column: 30, scope: !1289)
!1300 = !DILocation(line: 63, column: 55, scope: !1289)
!1301 = !DILocation(line: 63, column: 59, scope: !1289)
!1302 = !DILocation(line: 63, column: 58, scope: !1289)
!1303 = !DILocation(line: 63, column: 53, scope: !1289)
!1304 = !DILocation(line: 63, column: 45, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1289, file: !1, discriminator: 1)
!1306 = !DILocation(line: 63, column: 43, scope: !1289)
!1307 = !DILocalVariable(name: "lg_corrected", scope: !1289, file: !1, line: 64, type: !50)
!1308 = !DILocation(line: 64, column: 12, scope: !1289)
!1309 = !DILocation(line: 64, column: 33, scope: !1289)
!1310 = !DILocation(line: 64, column: 36, scope: !1289)
!1311 = !DILocation(line: 64, column: 31, scope: !1289)
!1312 = !DILocation(line: 64, column: 42, scope: !1289)
!1313 = !DILocation(line: 64, column: 54, scope: !1289)
!1314 = !DILocation(line: 64, column: 57, scope: !1289)
!1315 = !DILocation(line: 64, column: 63, scope: !1289)
!1316 = !DILocation(line: 64, column: 62, scope: !1289)
!1317 = !DILocation(line: 64, column: 51, scope: !1289)
!1318 = !DILocation(line: 64, column: 88, scope: !1289)
!1319 = !DILocation(line: 64, column: 87, scope: !1289)
!1320 = !DILocation(line: 64, column: 95, scope: !1289)
!1321 = !DILocation(line: 64, column: 94, scope: !1289)
!1322 = !DILocation(line: 64, column: 80, scope: !1289)
!1323 = !DILocation(line: 64, column: 75, scope: !1289)
!1324 = !DILocalVariable(name: "angle_terms", scope: !1289, file: !1, line: 65, type: !50)
!1325 = !DILocation(line: 65, column: 12, scope: !1289)
!1326 = !DILocation(line: 65, column: 27, scope: !1289)
!1327 = !DILocation(line: 65, column: 34, scope: !1289)
!1328 = !DILocation(line: 65, column: 42, scope: !1289)
!1329 = !DILocation(line: 65, column: 40, scope: !1289)
!1330 = !DILocation(line: 65, column: 55, scope: !1289)
!1331 = !DILocation(line: 65, column: 59, scope: !1289)
!1332 = !DILocation(line: 65, column: 58, scope: !1289)
!1333 = !DILocation(line: 65, column: 62, scope: !1289)
!1334 = !DILocation(line: 65, column: 53, scope: !1289)
!1335 = !DILocation(line: 65, column: 46, scope: !1289)
!1336 = !DILocation(line: 66, column: 19, scope: !1289)
!1337 = !DILocation(line: 66, column: 15, scope: !1289)
!1338 = !DILocation(line: 66, column: 30, scope: !1289)
!1339 = !DILocation(line: 66, column: 28, scope: !1289)
!1340 = !DILocation(line: 66, column: 45, scope: !1289)
!1341 = !DILocation(line: 66, column: 43, scope: !1289)
!1342 = !DILocation(line: 66, column: 57, scope: !1289)
!1343 = !DILocation(line: 66, column: 6, scope: !1289)
!1344 = !DILocation(line: 66, column: 13, scope: !1289)
!1345 = !DILocation(line: 67, column: 5, scope: !1289)
!1346 = !DILocalVariable(name: "lg_r", scope: !1347, file: !1, line: 70, type: !52)
!1347 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 69, column: 8)
!1348 = !DILocation(line: 70, column: 19, scope: !1347)
!1349 = !DILocalVariable(name: "lg_theta", scope: !1347, file: !1, line: 71, type: !52)
!1350 = !DILocation(line: 71, column: 19, scope: !1347)
!1351 = !DILocalVariable(name: "ln_sinh", scope: !1347, file: !1, line: 72, type: !52)
!1352 = !DILocation(line: 72, column: 19, scope: !1347)
!1353 = !DILocation(line: 73, column: 30, scope: !1347)
!1354 = !DILocation(line: 73, column: 33, scope: !1347)
!1355 = !DILocation(line: 73, column: 39, scope: !1347)
!1356 = !DILocation(line: 73, column: 5, scope: !1347)
!1357 = !DILocation(line: 74, column: 28, scope: !1347)
!1358 = !DILocation(line: 74, column: 26, scope: !1347)
!1359 = !DILocation(line: 74, column: 5, scope: !1347)
!1360 = !DILocation(line: 75, column: 19, scope: !1347)
!1361 = !DILocation(line: 75, column: 15, scope: !1347)
!1362 = !DILocation(line: 75, column: 38, scope: !1347)
!1363 = !DILocation(line: 75, column: 28, scope: !1347)
!1364 = !DILocation(line: 75, column: 53, scope: !1347)
!1365 = !DILocation(line: 75, column: 47, scope: !1347)
!1366 = !DILocation(line: 75, column: 42, scope: !1347)
!1367 = !DILocation(line: 75, column: 57, scope: !1347)
!1368 = !DILocation(line: 75, column: 6, scope: !1347)
!1369 = !DILocation(line: 75, column: 13, scope: !1347)
!1370 = !DILocation(line: 76, column: 5, scope: !1347)
!1371 = !DILocation(line: 78, column: 1, scope: !1254)
!1372 = distinct !DISubprogram(name: "legendre_H3d_CF1_ser", scope: !1, file: !1, line: 210, type: !541, isLocal: true, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1373 = !DILocalVariable(name: "ell", arg: 1, scope: !1372, file: !1, line: 210, type: !543)
!1374 = !DILocation(line: 210, column: 32, scope: !1372)
!1375 = !DILocalVariable(name: "lambda", arg: 2, scope: !1372, file: !1, line: 210, type: !49)
!1376 = !DILocation(line: 210, column: 50, scope: !1372)
!1377 = !DILocalVariable(name: "coth_eta", arg: 3, scope: !1372, file: !1, line: 210, type: !49)
!1378 = !DILocation(line: 210, column: 71, scope: !1372)
!1379 = !DILocalVariable(name: "result", arg: 4, scope: !1372, file: !1, line: 211, type: !51)
!1380 = !DILocation(line: 211, column: 38, scope: !1372)
!1381 = !DILocalVariable(name: "pre", scope: !1372, file: !1, line: 213, type: !49)
!1382 = !DILocation(line: 213, column: 16, scope: !1372)
!1383 = !DILocation(line: 213, column: 28, scope: !1372)
!1384 = !DILocation(line: 213, column: 36, scope: !1372)
!1385 = !DILocation(line: 213, column: 39, scope: !1372)
!1386 = !DILocation(line: 213, column: 22, scope: !1372)
!1387 = !DILocation(line: 213, column: 51, scope: !1372)
!1388 = !DILocation(line: 213, column: 50, scope: !1372)
!1389 = !DILocation(line: 213, column: 54, scope: !1372)
!1390 = !DILocation(line: 213, column: 58, scope: !1372)
!1391 = !DILocation(line: 213, column: 57, scope: !1372)
!1392 = !DILocation(line: 213, column: 44, scope: !1372)
!1393 = !DILocalVariable(name: "maxk", scope: !1372, file: !1, line: 214, type: !543)
!1394 = !DILocation(line: 214, column: 13, scope: !1372)
!1395 = !DILocalVariable(name: "tk", scope: !1372, file: !1, line: 215, type: !50)
!1396 = !DILocation(line: 215, column: 10, scope: !1372)
!1397 = !DILocalVariable(name: "sum", scope: !1372, file: !1, line: 216, type: !50)
!1398 = !DILocation(line: 216, column: 10, scope: !1372)
!1399 = !DILocalVariable(name: "rhok", scope: !1372, file: !1, line: 217, type: !50)
!1400 = !DILocation(line: 217, column: 10, scope: !1372)
!1401 = !DILocalVariable(name: "sum_err", scope: !1372, file: !1, line: 218, type: !50)
!1402 = !DILocation(line: 218, column: 10, scope: !1372)
!1403 = !DILocalVariable(name: "k", scope: !1372, file: !1, line: 219, type: !48)
!1404 = !DILocation(line: 219, column: 7, scope: !1372)
!1405 = !DILocation(line: 221, column: 8, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 221, column: 3)
!1407 = !DILocation(line: 221, column: 7, scope: !1406)
!1408 = !DILocation(line: 221, column: 12, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1410, file: !1, discriminator: 1)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 221, column: 3)
!1411 = !DILocation(line: 221, column: 13, scope: !1409)
!1412 = !DILocation(line: 221, column: 3, scope: !1409)
!1413 = !DILocalVariable(name: "tlk", scope: !1414, file: !1, line: 222, type: !50)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 221, column: 25)
!1415 = !DILocation(line: 222, column: 12, scope: !1414)
!1416 = !DILocation(line: 222, column: 23, scope: !1414)
!1417 = !DILocation(line: 222, column: 22, scope: !1414)
!1418 = !DILocation(line: 222, column: 27, scope: !1414)
!1419 = !DILocation(line: 222, column: 39, scope: !1414)
!1420 = !DILocation(line: 222, column: 38, scope: !1414)
!1421 = !DILocation(line: 222, column: 33, scope: !1414)
!1422 = !DILocalVariable(name: "l1k", scope: !1414, file: !1, line: 223, type: !50)
!1423 = !DILocation(line: 223, column: 12, scope: !1414)
!1424 = !DILocation(line: 223, column: 19, scope: !1414)
!1425 = !DILocation(line: 223, column: 23, scope: !1414)
!1426 = !DILocation(line: 223, column: 31, scope: !1414)
!1427 = !DILocation(line: 223, column: 29, scope: !1414)
!1428 = !DILocalVariable(name: "ak", scope: !1414, file: !1, line: 224, type: !50)
!1429 = !DILocation(line: 224, column: 12, scope: !1414)
!1430 = !DILocation(line: 224, column: 19, scope: !1414)
!1431 = !DILocation(line: 224, column: 26, scope: !1414)
!1432 = !DILocation(line: 224, column: 25, scope: !1414)
!1433 = !DILocation(line: 224, column: 35, scope: !1414)
!1434 = !DILocation(line: 224, column: 39, scope: !1414)
!1435 = !DILocation(line: 224, column: 38, scope: !1414)
!1436 = !DILocation(line: 224, column: 33, scope: !1414)
!1437 = !DILocation(line: 224, column: 17, scope: !1414)
!1438 = !DILocation(line: 224, column: 45, scope: !1414)
!1439 = !DILocation(line: 224, column: 50, scope: !1414)
!1440 = !DILocation(line: 224, column: 53, scope: !1414)
!1441 = !DILocation(line: 224, column: 48, scope: !1414)
!1442 = !DILocation(line: 224, column: 59, scope: !1414)
!1443 = !DILocation(line: 224, column: 58, scope: !1414)
!1444 = !DILocation(line: 224, column: 68, scope: !1414)
!1445 = !DILocation(line: 224, column: 67, scope: !1414)
!1446 = !DILocation(line: 224, column: 43, scope: !1414)
!1447 = !DILocation(line: 225, column: 13, scope: !1414)
!1448 = !DILocation(line: 225, column: 12, scope: !1414)
!1449 = !DILocation(line: 225, column: 23, scope: !1414)
!1450 = !DILocation(line: 225, column: 21, scope: !1414)
!1451 = !DILocation(line: 225, column: 15, scope: !1414)
!1452 = !DILocation(line: 225, column: 36, scope: !1414)
!1453 = !DILocation(line: 225, column: 46, scope: !1414)
!1454 = !DILocation(line: 225, column: 44, scope: !1414)
!1455 = !DILocation(line: 225, column: 38, scope: !1414)
!1456 = !DILocation(line: 225, column: 34, scope: !1414)
!1457 = !DILocation(line: 225, column: 28, scope: !1414)
!1458 = !DILocation(line: 225, column: 10, scope: !1414)
!1459 = !DILocation(line: 226, column: 12, scope: !1414)
!1460 = !DILocation(line: 226, column: 9, scope: !1414)
!1461 = !DILocation(line: 227, column: 12, scope: !1414)
!1462 = !DILocation(line: 227, column: 9, scope: !1414)
!1463 = !DILocation(line: 228, column: 40, scope: !1414)
!1464 = !DILocation(line: 228, column: 38, scope: !1414)
!1465 = !DILocation(line: 228, column: 49, scope: !1414)
!1466 = !DILocation(line: 228, column: 44, scope: !1414)
!1467 = !DILocation(line: 228, column: 42, scope: !1414)
!1468 = !DILocation(line: 228, column: 13, scope: !1414)
!1469 = !DILocation(line: 229, column: 13, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 229, column: 8)
!1471 = !DILocation(line: 229, column: 16, scope: !1470)
!1472 = !DILocation(line: 229, column: 15, scope: !1470)
!1473 = !DILocation(line: 229, column: 8, scope: !1470)
!1474 = !DILocation(line: 229, column: 21, scope: !1470)
!1475 = !DILocation(line: 229, column: 8, scope: !1414)
!1476 = !DILocation(line: 229, column: 40, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1470, file: !1, discriminator: 1)
!1478 = !DILocation(line: 230, column: 3, scope: !1414)
!1479 = !DILocation(line: 221, column: 21, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1410, file: !1, discriminator: 2)
!1481 = !DILocation(line: 221, column: 3, scope: !1480)
!1482 = distinct !{!1482, !1483}
!1483 = !DILocation(line: 221, column: 3, scope: !1372)
!1484 = !DILocation(line: 232, column: 18, scope: !1372)
!1485 = !DILocation(line: 232, column: 24, scope: !1372)
!1486 = !DILocation(line: 232, column: 22, scope: !1372)
!1487 = !DILocation(line: 232, column: 3, scope: !1372)
!1488 = !DILocation(line: 232, column: 11, scope: !1372)
!1489 = !DILocation(line: 232, column: 16, scope: !1372)
!1490 = !DILocation(line: 233, column: 23, scope: !1372)
!1491 = !DILocation(line: 233, column: 29, scope: !1372)
!1492 = !DILocation(line: 233, column: 27, scope: !1372)
!1493 = !DILocation(line: 233, column: 18, scope: !1372)
!1494 = !DILocation(line: 233, column: 3, scope: !1372)
!1495 = !DILocation(line: 233, column: 11, scope: !1372)
!1496 = !DILocation(line: 233, column: 16, scope: !1372)
!1497 = !DILocation(line: 234, column: 23, scope: !1372)
!1498 = !DILocation(line: 234, column: 29, scope: !1372)
!1499 = !DILocation(line: 234, column: 27, scope: !1372)
!1500 = !DILocation(line: 234, column: 18, scope: !1372)
!1501 = !DILocation(line: 234, column: 3, scope: !1372)
!1502 = !DILocation(line: 234, column: 11, scope: !1372)
!1503 = !DILocation(line: 234, column: 15, scope: !1372)
!1504 = !DILocation(line: 235, column: 47, scope: !1372)
!1505 = !DILocation(line: 235, column: 55, scope: !1372)
!1506 = !DILocation(line: 235, column: 42, scope: !1372)
!1507 = !DILocation(line: 235, column: 40, scope: !1372)
!1508 = !DILocation(line: 235, column: 3, scope: !1372)
!1509 = !DILocation(line: 235, column: 11, scope: !1372)
!1510 = !DILocation(line: 235, column: 15, scope: !1372)
!1511 = !DILocation(line: 237, column: 6, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 237, column: 6)
!1513 = !DILocation(line: 237, column: 8, scope: !1512)
!1514 = !DILocation(line: 237, column: 6, scope: !1372)
!1515 = !DILocation(line: 238, column: 5, scope: !1512)
!1516 = distinct !{!1516, !1515}
!1517 = !DILocation(line: 238, column: 5, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1519, file: !1, discriminator: 1)
!1519 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 238, column: 5)
!1520 = !DILocation(line: 238, column: 5, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1519, file: !1, discriminator: 2)
!1522 = !DILocation(line: 240, column: 5, scope: !1512)
!1523 = !DILocation(line: 241, column: 1, scope: !1372)
!1524 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_array", scope: !1, file: !1, line: 496, type: !1525, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!48, !543, !49, !49, !1257}
!1527 = !DILocalVariable(name: "lmax", arg: 1, scope: !1524, file: !1, line: 496, type: !543)
!1528 = !DILocation(line: 496, column: 37, scope: !1524)
!1529 = !DILocalVariable(name: "lambda", arg: 2, scope: !1524, file: !1, line: 496, type: !49)
!1530 = !DILocation(line: 496, column: 56, scope: !1524)
!1531 = !DILocalVariable(name: "eta", arg: 3, scope: !1524, file: !1, line: 496, type: !49)
!1532 = !DILocation(line: 496, column: 77, scope: !1524)
!1533 = !DILocalVariable(name: "result_array", arg: 4, scope: !1524, file: !1, line: 496, type: !1257)
!1534 = !DILocation(line: 496, column: 91, scope: !1524)
!1535 = !DILocation(line: 500, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 500, column: 5)
!1537 = !DILocation(line: 500, column: 9, scope: !1536)
!1538 = !DILocation(line: 500, column: 15, scope: !1536)
!1539 = !DILocation(line: 500, column: 18, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1536, file: !1, discriminator: 1)
!1541 = !DILocation(line: 500, column: 23, scope: !1540)
!1542 = !DILocation(line: 500, column: 5, scope: !1540)
!1543 = !DILocalVariable(name: "ell", scope: !1544, file: !1, line: 501, type: !48)
!1544 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 500, column: 28)
!1545 = !DILocation(line: 501, column: 9, scope: !1544)
!1546 = !DILocation(line: 502, column: 12, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1544, file: !1, line: 502, column: 5)
!1548 = !DILocation(line: 502, column: 9, scope: !1547)
!1549 = !DILocation(line: 502, column: 16, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1551, file: !1, discriminator: 1)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 502, column: 5)
!1552 = !DILocation(line: 502, column: 21, scope: !1550)
!1553 = !DILocation(line: 502, column: 19, scope: !1550)
!1554 = !DILocation(line: 502, column: 5, scope: !1550)
!1555 = !DILocation(line: 502, column: 47, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1551, file: !1, discriminator: 2)
!1557 = !DILocation(line: 502, column: 34, scope: !1556)
!1558 = !DILocation(line: 502, column: 52, scope: !1556)
!1559 = !DILocation(line: 502, column: 30, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1551, file: !1, discriminator: 3)
!1561 = !DILocation(line: 502, column: 5, scope: !1560)
!1562 = distinct !{!1562, !1563}
!1563 = !DILocation(line: 502, column: 5, scope: !1544)
!1564 = !DILocation(line: 503, column: 5, scope: !1544)
!1565 = distinct !{!1565, !1564}
!1566 = !DILocation(line: 503, column: 5, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1568, file: !1, discriminator: 1)
!1568 = distinct !DILexicalBlock(scope: !1544, file: !1, line: 503, column: 5)
!1569 = !DILocation(line: 504, column: 3, scope: !1544)
!1570 = !DILocation(line: 505, column: 11, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 505, column: 11)
!1572 = !DILocation(line: 505, column: 15, scope: !1571)
!1573 = !DILocation(line: 505, column: 11, scope: !1536)
!1574 = !DILocalVariable(name: "ell", scope: !1575, file: !1, line: 507, type: !48)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 505, column: 34)
!1576 = !DILocation(line: 507, column: 9, scope: !1575)
!1577 = !DILocation(line: 508, column: 12, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 508, column: 5)
!1579 = !DILocation(line: 508, column: 9, scope: !1578)
!1580 = !DILocation(line: 508, column: 16, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 1)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 508, column: 5)
!1583 = !DILocation(line: 508, column: 21, scope: !1581)
!1584 = !DILocation(line: 508, column: 19, scope: !1581)
!1585 = !DILocation(line: 508, column: 5, scope: !1581)
!1586 = !DILocation(line: 508, column: 47, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 2)
!1588 = !DILocation(line: 508, column: 34, scope: !1587)
!1589 = !DILocation(line: 508, column: 52, scope: !1587)
!1590 = !DILocation(line: 508, column: 30, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 3)
!1592 = !DILocation(line: 508, column: 5, scope: !1591)
!1593 = distinct !{!1593, !1594}
!1594 = !DILocation(line: 508, column: 5, scope: !1575)
!1595 = !DILocation(line: 509, column: 5, scope: !1575)
!1596 = distinct !{!1596, !1595}
!1597 = !DILocation(line: 509, column: 5, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1599, file: !1, discriminator: 1)
!1599 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 509, column: 5)
!1600 = !DILocation(line: 510, column: 3, scope: !1575)
!1601 = !DILocation(line: 511, column: 11, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 511, column: 11)
!1603 = !DILocation(line: 511, column: 16, scope: !1602)
!1604 = !DILocation(line: 511, column: 11, scope: !1571)
!1605 = !DILocalVariable(name: "H0", scope: !1606, file: !1, line: 512, type: !52)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 511, column: 22)
!1607 = !DILocation(line: 512, column: 19, scope: !1606)
!1608 = !DILocalVariable(name: "stat", scope: !1606, file: !1, line: 513, type: !48)
!1609 = !DILocation(line: 513, column: 9, scope: !1606)
!1610 = !DILocation(line: 513, column: 41, scope: !1606)
!1611 = !DILocation(line: 513, column: 49, scope: !1606)
!1612 = !DILocation(line: 513, column: 16, scope: !1606)
!1613 = !DILocation(line: 514, column: 26, scope: !1606)
!1614 = !DILocation(line: 514, column: 5, scope: !1606)
!1615 = !DILocation(line: 514, column: 21, scope: !1606)
!1616 = !DILocation(line: 515, column: 12, scope: !1606)
!1617 = !DILocation(line: 515, column: 5, scope: !1606)
!1618 = !DILocalVariable(name: "r_Hlp1", scope: !1619, file: !1, line: 520, type: !52)
!1619 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 517, column: 8)
!1620 = !DILocation(line: 520, column: 19, scope: !1619)
!1621 = !DILocalVariable(name: "r_Hl", scope: !1619, file: !1, line: 521, type: !52)
!1622 = !DILocation(line: 521, column: 19, scope: !1619)
!1623 = !DILocalVariable(name: "stat_lmax", scope: !1619, file: !1, line: 522, type: !48)
!1624 = !DILocation(line: 522, column: 9, scope: !1619)
!1625 = !DILocation(line: 522, column: 45, scope: !1619)
!1626 = !DILocation(line: 522, column: 53, scope: !1619)
!1627 = !DILocation(line: 522, column: 61, scope: !1619)
!1628 = !DILocation(line: 522, column: 23, scope: !1619)
!1629 = !DILocalVariable(name: "stat_lmaxm1", scope: !1619, file: !1, line: 523, type: !48)
!1630 = !DILocation(line: 523, column: 9, scope: !1619)
!1631 = !DILocation(line: 523, column: 45, scope: !1619)
!1632 = !DILocation(line: 523, column: 49, scope: !1619)
!1633 = !DILocation(line: 523, column: 53, scope: !1619)
!1634 = !DILocation(line: 523, column: 61, scope: !1619)
!1635 = !DILocation(line: 523, column: 23, scope: !1619)
!1636 = !DILocalVariable(name: "stat_max", scope: !1619, file: !1, line: 524, type: !48)
!1637 = !DILocation(line: 524, column: 9, scope: !1619)
!1638 = !DILocation(line: 524, column: 20, scope: !1619)
!1639 = !DILocation(line: 524, column: 20, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 1)
!1641 = !DILocation(line: 524, column: 20, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 2)
!1643 = !DILocation(line: 524, column: 20, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 3)
!1645 = !DILocation(line: 524, column: 20, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 4)
!1647 = !DILocation(line: 524, column: 20, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 5)
!1649 = !DILocation(line: 524, column: 20, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 6)
!1651 = !DILocation(line: 524, column: 9, scope: !1650)
!1652 = !DILocalVariable(name: "coth_eta", scope: !1619, file: !1, line: 526, type: !49)
!1653 = !DILocation(line: 526, column: 18, scope: !1619)
!1654 = !DILocation(line: 526, column: 38, scope: !1619)
!1655 = !DILocation(line: 526, column: 33, scope: !1619)
!1656 = !DILocation(line: 526, column: 32, scope: !1619)
!1657 = !DILocalVariable(name: "stat_recursion", scope: !1619, file: !1, line: 527, type: !48)
!1658 = !DILocation(line: 527, column: 9, scope: !1619)
!1659 = !DILocalVariable(name: "Hlp1", scope: !1619, file: !1, line: 528, type: !50)
!1660 = !DILocation(line: 528, column: 12, scope: !1619)
!1661 = !DILocation(line: 528, column: 26, scope: !1619)
!1662 = !DILocalVariable(name: "Hl", scope: !1619, file: !1, line: 529, type: !50)
!1663 = !DILocation(line: 529, column: 12, scope: !1619)
!1664 = !DILocation(line: 529, column: 24, scope: !1619)
!1665 = !DILocalVariable(name: "Hlm1", scope: !1619, file: !1, line: 530, type: !50)
!1666 = !DILocation(line: 530, column: 12, scope: !1619)
!1667 = !DILocalVariable(name: "ell", scope: !1619, file: !1, line: 531, type: !48)
!1668 = !DILocation(line: 531, column: 9, scope: !1619)
!1669 = !DILocation(line: 533, column: 28, scope: !1619)
!1670 = !DILocation(line: 533, column: 18, scope: !1619)
!1671 = !DILocation(line: 533, column: 5, scope: !1619)
!1672 = !DILocation(line: 533, column: 26, scope: !1619)
!1673 = !DILocation(line: 534, column: 28, scope: !1619)
!1674 = !DILocation(line: 534, column: 18, scope: !1619)
!1675 = !DILocation(line: 534, column: 22, scope: !1619)
!1676 = !DILocation(line: 534, column: 5, scope: !1619)
!1677 = !DILocation(line: 534, column: 26, scope: !1619)
!1678 = !DILocation(line: 536, column: 13, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 536, column: 5)
!1680 = !DILocation(line: 536, column: 17, scope: !1679)
!1681 = !DILocation(line: 536, column: 12, scope: !1679)
!1682 = !DILocation(line: 536, column: 9, scope: !1679)
!1683 = !DILocation(line: 536, column: 21, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !1, discriminator: 1)
!1685 = distinct !DILexicalBlock(scope: !1679, file: !1, line: 536, column: 5)
!1686 = !DILocation(line: 536, column: 24, scope: !1684)
!1687 = !DILocation(line: 536, column: 5, scope: !1684)
!1688 = !DILocalVariable(name: "root_term_0", scope: !1689, file: !1, line: 537, type: !50)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 536, column: 35)
!1690 = !DILocation(line: 537, column: 14, scope: !1689)
!1691 = !DILocation(line: 537, column: 34, scope: !1689)
!1692 = !DILocation(line: 537, column: 41, scope: !1689)
!1693 = !DILocation(line: 537, column: 28, scope: !1689)
!1694 = !DILocalVariable(name: "root_term_1", scope: !1689, file: !1, line: 538, type: !50)
!1695 = !DILocation(line: 538, column: 14, scope: !1689)
!1696 = !DILocation(line: 538, column: 34, scope: !1689)
!1697 = !DILocation(line: 538, column: 41, scope: !1689)
!1698 = !DILocation(line: 538, column: 44, scope: !1689)
!1699 = !DILocation(line: 538, column: 28, scope: !1689)
!1700 = !DILocation(line: 539, column: 20, scope: !1689)
!1701 = !DILocation(line: 539, column: 19, scope: !1689)
!1702 = !DILocation(line: 539, column: 24, scope: !1689)
!1703 = !DILocation(line: 539, column: 31, scope: !1689)
!1704 = !DILocation(line: 539, column: 30, scope: !1689)
!1705 = !DILocation(line: 539, column: 40, scope: !1689)
!1706 = !DILocation(line: 539, column: 39, scope: !1689)
!1707 = !DILocation(line: 539, column: 45, scope: !1689)
!1708 = !DILocation(line: 539, column: 59, scope: !1689)
!1709 = !DILocation(line: 539, column: 57, scope: !1689)
!1710 = !DILocation(line: 539, column: 43, scope: !1689)
!1711 = !DILocation(line: 539, column: 65, scope: !1689)
!1712 = !DILocation(line: 539, column: 64, scope: !1689)
!1713 = !DILocation(line: 539, column: 12, scope: !1689)
!1714 = !DILocation(line: 540, column: 29, scope: !1689)
!1715 = !DILocation(line: 540, column: 20, scope: !1689)
!1716 = !DILocation(line: 540, column: 23, scope: !1689)
!1717 = !DILocation(line: 540, column: 7, scope: !1689)
!1718 = !DILocation(line: 540, column: 27, scope: !1689)
!1719 = !DILocation(line: 541, column: 12, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 541, column: 10)
!1721 = !DILocation(line: 541, column: 17, scope: !1720)
!1722 = !DILocation(line: 541, column: 10, scope: !1689)
!1723 = !DILocation(line: 541, column: 48, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1720, file: !1, discriminator: 1)
!1725 = !DILocation(line: 541, column: 33, scope: !1724)
!1726 = !DILocation(line: 542, column: 14, scope: !1689)
!1727 = !DILocation(line: 542, column: 12, scope: !1689)
!1728 = !DILocation(line: 543, column: 14, scope: !1689)
!1729 = !DILocation(line: 543, column: 12, scope: !1689)
!1730 = !DILocation(line: 544, column: 5, scope: !1689)
!1731 = !DILocation(line: 536, column: 31, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1685, file: !1, discriminator: 2)
!1733 = !DILocation(line: 536, column: 5, scope: !1732)
!1734 = distinct !{!1734, !1735}
!1735 = !DILocation(line: 536, column: 5, scope: !1619)
!1736 = !DILocation(line: 546, column: 12, scope: !1619)
!1737 = !DILocation(line: 546, column: 12, scope: !1640)
!1738 = !DILocation(line: 546, column: 12, scope: !1642)
!1739 = !DILocation(line: 546, column: 12, scope: !1644)
!1740 = !DILocation(line: 546, column: 12, scope: !1646)
!1741 = !DILocation(line: 546, column: 12, scope: !1648)
!1742 = !DILocation(line: 546, column: 12, scope: !1650)
!1743 = !DILocation(line: 546, column: 5, scope: !1650)
!1744 = !DILocation(line: 548, column: 1, scope: !1524)
!1745 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_0", scope: !1, file: !1, line: 555, type: !1746, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!50, !49, !49}
!1748 = !DILocalVariable(name: "lambda", arg: 1, scope: !1745, file: !1, line: 555, type: !49)
!1749 = !DILocation(line: 555, column: 43, scope: !1745)
!1750 = !DILocalVariable(name: "eta", arg: 2, scope: !1745, file: !1, line: 555, type: !49)
!1751 = !DILocation(line: 555, column: 64, scope: !1745)
!1752 = !DILocalVariable(name: "result", scope: !1745, file: !1, line: 557, type: !52)
!1753 = !DILocation(line: 557, column: 3, scope: !1745)
!1754 = !DILocalVariable(name: "status", scope: !1745, file: !1, line: 557, type: !48)
!1755 = !DILocation(line: 557, column: 3, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 557, column: 3)
!1757 = !DILocation(line: 557, column: 3, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1759, file: !1, discriminator: 1)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 557, column: 3)
!1760 = distinct !{!1760, !1761}
!1761 = !DILocation(line: 557, column: 3, scope: !1759)
!1762 = !DILocation(line: 557, column: 3, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1764, file: !1, discriminator: 2)
!1764 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 557, column: 3)
!1765 = !DILocation(line: 557, column: 3, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1759, file: !1, discriminator: 3)
!1767 = !DILocation(line: 557, column: 3, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1745, file: !1, discriminator: 4)
!1769 = !DILocation(line: 558, column: 1, scope: !1745)
!1770 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_1", scope: !1, file: !1, line: 560, type: !1746, isLocal: false, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1771 = !DILocalVariable(name: "lambda", arg: 1, scope: !1770, file: !1, line: 560, type: !49)
!1772 = !DILocation(line: 560, column: 43, scope: !1770)
!1773 = !DILocalVariable(name: "eta", arg: 2, scope: !1770, file: !1, line: 560, type: !49)
!1774 = !DILocation(line: 560, column: 64, scope: !1770)
!1775 = !DILocalVariable(name: "result", scope: !1770, file: !1, line: 562, type: !52)
!1776 = !DILocation(line: 562, column: 3, scope: !1770)
!1777 = !DILocalVariable(name: "status", scope: !1770, file: !1, line: 562, type: !48)
!1778 = !DILocation(line: 562, column: 3, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 562, column: 3)
!1780 = !DILocation(line: 562, column: 3, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1782, file: !1, discriminator: 1)
!1782 = distinct !DILexicalBlock(scope: !1779, file: !1, line: 562, column: 3)
!1783 = distinct !{!1783, !1784}
!1784 = !DILocation(line: 562, column: 3, scope: !1782)
!1785 = !DILocation(line: 562, column: 3, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1787, file: !1, discriminator: 2)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !1, line: 562, column: 3)
!1788 = !DILocation(line: 562, column: 3, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1782, file: !1, discriminator: 3)
!1790 = !DILocation(line: 562, column: 3, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1770, file: !1, discriminator: 4)
!1792 = !DILocation(line: 563, column: 1, scope: !1770)
!1793 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d", scope: !1, file: !1, line: 565, type: !1794, isLocal: false, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!50, !543, !49, !49}
!1796 = !DILocalVariable(name: "l", arg: 1, scope: !1793, file: !1, line: 565, type: !543)
!1797 = !DILocation(line: 565, column: 38, scope: !1793)
!1798 = !DILocalVariable(name: "lambda", arg: 2, scope: !1793, file: !1, line: 565, type: !49)
!1799 = !DILocation(line: 565, column: 54, scope: !1793)
!1800 = !DILocalVariable(name: "eta", arg: 3, scope: !1793, file: !1, line: 565, type: !49)
!1801 = !DILocation(line: 565, column: 75, scope: !1793)
!1802 = !DILocalVariable(name: "result", scope: !1793, file: !1, line: 567, type: !52)
!1803 = !DILocation(line: 567, column: 3, scope: !1793)
!1804 = !DILocalVariable(name: "status", scope: !1793, file: !1, line: 567, type: !48)
!1805 = !DILocation(line: 567, column: 3, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1793, file: !1, line: 567, column: 3)
!1807 = !DILocation(line: 567, column: 3, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1809, file: !1, discriminator: 1)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !1, line: 567, column: 3)
!1810 = distinct !{!1810, !1811}
!1811 = !DILocation(line: 567, column: 3, scope: !1809)
!1812 = !DILocation(line: 567, column: 3, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1814, file: !1, discriminator: 2)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 567, column: 3)
!1815 = !DILocation(line: 567, column: 3, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1809, file: !1, discriminator: 3)
!1817 = !DILocation(line: 567, column: 3, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1793, file: !1, discriminator: 4)
!1819 = !DILocation(line: 568, column: 1, scope: !1793)
