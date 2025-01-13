; ModuleID = 'elementary.ll'
source_filename = "elementary.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"elementary.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"gsl_sf_multiply_e(x, y, &result)\00", align 1
@0 = private unnamed_addr constant [18 x i8] c"gsl_sf_multiply_e\00"
@1 = private unnamed_addr constant [14 x i8] c"elementary.ll\00"
@2 = private unnamed_addr constant [22 x i8] c"gsl_sf_multiply_err_e\00"
@3 = private unnamed_addr constant [14 x i8] c"elementary.ll\00"
@4 = private unnamed_addr constant [16 x i8] c"gsl_sf_multiply\00"
@5 = private unnamed_addr constant [14 x i8] c"elementary.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_multiply_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
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
  call void @llvm.dbg.declare(metadata double* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  call void @llvm.dbg.declare(metadata double* %8, metadata !66, metadata !60), !dbg !67
  %13 = load double, double* %5, align 8, !dbg !68
  %14 = call double @fabs(double %13) #1, !dbg !69
  store double %14, double* %8, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata double* %9, metadata !70, metadata !60), !dbg !71
  %15 = load double, double* %6, align 8, !dbg !72
  %16 = call double @fabs(double %15) #1, !dbg !73
  store double %16, double* %9, align 8, !dbg !71
  %17 = load double, double* %5, align 8, !dbg !74
  %18 = fcmp oeq double %17, 0.000000e+00, !dbg !76
  %19 = call i1 @fCmpInstHandler(double %17, double 0.000000e+00, i1 %18, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985301536, i32 36, i32 8), !dbg !77
  br i1 %19, label %24, label %20, !dbg !77

; <label>:20:                                     ; preds = %3
  %21 = load double, double* %6, align 8, !dbg !78
  %22 = fcmp oeq double %21, 0.000000e+00, !dbg !80
  %23 = call i1 @fCmpInstHandler(double %21, double 0.000000e+00, i1 %22, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985302848, i32 36, i32 20), !dbg !81
  br i1 %23, label %24, label %29, !dbg !81

; <label>:24:                                     ; preds = %20, %3
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !82
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !84
  store double 0.000000e+00, double* %26, align 8, !dbg !85
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !86
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !87
  store double 0.000000e+00, double* %28, align 8, !dbg !88
  store i32 0, i32* %4, align 4, !dbg !89
  br label %113, !dbg !89

; <label>:29:                                     ; preds = %20
  %30 = load double, double* %8, align 8, !dbg !90
  %31 = fcmp ole double %30, 1.000000e+00, !dbg !92
  %32 = call i1 @fCmpInstHandler(double %30, double 1.000000e+00, i1 %31, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985308960, i32 43, i32 15), !dbg !93
  br i1 %32, label %33, label %37, !dbg !93

; <label>:33:                                     ; preds = %29
  %34 = load double, double* %9, align 8, !dbg !94
  %35 = fcmp oge double %34, 1.000000e+00, !dbg !96
  %36 = call i1 @fCmpInstHandler(double %34, double 1.000000e+00, i1 %35, i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985310416, i32 43, i32 28), !dbg !97
  br i1 %36, label %45, label %37, !dbg !97

; <label>:37:                                     ; preds = %33, %29
  %38 = load double, double* %9, align 8, !dbg !98
  %39 = fcmp ole double %38, 1.000000e+00, !dbg !100
  %40 = call i1 @fCmpInstHandler(double %38, double 1.000000e+00, i1 %39, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985312256, i32 43, i32 43), !dbg !101
  br i1 %40, label %41, label %58, !dbg !101

; <label>:41:                                     ; preds = %37
  %42 = load double, double* %8, align 8, !dbg !102
  %43 = fcmp oge double %42, 1.000000e+00, !dbg !104
  %44 = call i1 @fCmpInstHandler(double %42, double 1.000000e+00, i1 %43, i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985313712, i32 43, i32 56), !dbg !105
  br i1 %44, label %45, label %58, !dbg !105

; <label>:45:                                     ; preds = %41, %33
  %46 = load double, double* %5, align 8, !dbg !106
  %47 = load double, double* %6, align 8, !dbg !108
  %48 = fmul double %46, %47, !dbg !109
  call void @fMulHandler(double %46, double %47, double %48, i64 94324985314504, i64 94324985314824, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985315232, i32 46, i32 20), !dbg !110
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !110
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !111
  store double %48, double* %50, align 8, !dbg !112
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !113
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !114
  %53 = load double, double* %52, align 8, !dbg !114
  %54 = call double @fabs(double %53) #1, !dbg !115
  %55 = fmul double 0x3CC0000000000000, %54, !dbg !116
  call void @fMulHandler(double 0x3CC0000000000000, double %54, double %55, i64 0, i64 94324985319440, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985319984, i32 47, i32 41), !dbg !117
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !117
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !118
  store double %55, double* %57, align 8, !dbg !119
  store i32 0, i32* %4, align 4, !dbg !120
  br label %113, !dbg !120

; <label>:58:                                     ; preds = %41, %37
  call void @llvm.dbg.declare(metadata double* %10, metadata !121, metadata !60), !dbg !123
  store double 0x3FEFFFFFFFFFFFFC, double* %10, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata double* %11, metadata !124, metadata !60), !dbg !125
  %59 = load double, double* %5, align 8, !dbg !126
  %60 = call double @fabs(double %59) #1, !dbg !127
  %61 = load double, double* %6, align 8, !dbg !128
  %62 = call double @fabs(double %61) #1, !dbg !129
  %63 = call double @GSL_MIN_DBL(double %60, double %62), !dbg !131
  store double %63, double* %11, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata double* %12, metadata !133, metadata !60), !dbg !134
  %64 = load double, double* %5, align 8, !dbg !135
  %65 = call double @fabs(double %64) #1, !dbg !136
  %66 = load double, double* %6, align 8, !dbg !137
  %67 = call double @fabs(double %66) #1, !dbg !138
  %68 = call double @GSL_MAX_DBL(double %65, double %67), !dbg !139
  store double %68, double* %12, align 8, !dbg !134
  %69 = load double, double* %12, align 8, !dbg !140
  %70 = fcmp olt double %69, 0x5FECCCCCCCCCCCCC, !dbg !142
  %71 = call i1 @fCmpInstHandler(double %69, double 0x5FECCCCCCCCCCCCC, i1 %70, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985337872, i32 54, i32 12), !dbg !143
  br i1 %71, label %78, label %72, !dbg !143

; <label>:72:                                     ; preds = %58
  %73 = load double, double* %11, align 8, !dbg !144
  %74 = load double, double* %12, align 8, !dbg !146
  %75 = fdiv double 0x7FEFFFFFFFFFFFFB, %74, !dbg !147
  call void @fDivHandler(double 0x7FEFFFFFFFFFFFFB, double %74, double %75, i64 0, i64 94324985340344, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985340816, i32 54, i32 59), !dbg !148
  %76 = fcmp olt double %73, %75, !dbg !148
  %77 = call i1 @fCmpInstHandler(double %73, double %75, i1 %76, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985341232, i32 54, i32 44), !dbg !149
  br i1 %77, label %78, label %102, !dbg !149

; <label>:78:                                     ; preds = %72, %58
  %79 = load double, double* %5, align 8, !dbg !150
  %80 = load double, double* %6, align 8, !dbg !150
  %81 = fmul double %79, %80, !dbg !150
  call void @fMulHandler(double %79, double %80, double %81, i64 94324985342200, i64 94324985342520, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985344192, i32 55, i32 21), !dbg !150
  %82 = call double @gsl_coerce_double(double %81), !dbg !150
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !152
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !153
  store double %82, double* %84, align 8, !dbg !154
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !155
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !156
  %87 = load double, double* %86, align 8, !dbg !156
  %88 = call double @fabs(double %87) #1, !dbg !157
  %89 = fmul double 0x3CC0000000000000, %88, !dbg !158
  call void @fMulHandler(double 0x3CC0000000000000, double %88, double %89, i64 0, i64 94324985348784, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985349264, i32 56, i32 43), !dbg !159
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !159
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !160
  store double %89, double* %91, align 8, !dbg !161
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !162
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !162
  %94 = load double, double* %93, align 8, !dbg !162
  %95 = call double @fabs(double %94) #1, !dbg !162
  %96 = fcmp olt double %95, 0x10000000000000, !dbg !162
  %97 = call i1 @fCmpInstHandler(double %95, double 0x10000000000000, i1 %96, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94324985353472, i32 57, i32 7), !dbg !164
  br i1 %97, label %98, label %101, !dbg !164

; <label>:98:                                     ; preds = %78
  br label %99, !dbg !165, !llvm.loop !167

; <label>:99:                                     ; preds = %98
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 57, i32 15), !dbg !168
  store i32 15, i32* %4, align 4, !dbg !168
  br label %113, !dbg !168
                                                  ; No predecessors!
  br label %101, !dbg !171

; <label>:101:                                    ; preds = %100, %78
  store i32 0, i32* %4, align 4, !dbg !173
  br label %113, !dbg !173

; <label>:102:                                    ; preds = %72
  br label %103, !dbg !174, !llvm.loop !176

; <label>:103:                                    ; preds = %102
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !177
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 0, !dbg !177
  store double 0x7FF0000000000000, double* %105, align 8, !dbg !177
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !177
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 1, !dbg !177
  store double 0x7FF0000000000000, double* %107, align 8, !dbg !177
  br label %108, !dbg !177, !llvm.loop !180

; <label>:108:                                    ; preds = %103
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 61, i32 16), !dbg !182
  store i32 16, i32* %4, align 4, !dbg !182
  br label %113, !dbg !182
                                                  ; No predecessors!
  br label %110, !dbg !185

; <label>:110:                                    ; preds = %109
  br label %111

; <label>:111:                                    ; preds = %110
  br label %112

; <label>:112:                                    ; preds = %111
  br label %113

; <label>:113:                                    ; preds = %112, %108, %101, %99, %45, %24
  %114 = load i32, i32* %4, align 4, !dbg !187
  ret i32 %114, !dbg !187
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare double @GSL_MIN_DBL(double, double) #3

declare double @GSL_MAX_DBL(double, double) #3

declare double @gsl_coerce_double(double) #3

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_multiply_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !188 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !191, metadata !60), !dbg !192
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !193, metadata !60), !dbg !194
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !195, metadata !60), !dbg !196
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !197, metadata !60), !dbg !198
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !199, metadata !60), !dbg !200
  call void @llvm.dbg.declare(metadata i32* %11, metadata !201, metadata !60), !dbg !202
  %12 = load double, double* %6, align 8, !dbg !203
  %13 = load double, double* %8, align 8, !dbg !204
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !205
  %15 = call i32 @gsl_sf_multiply_e(double %12, double %13, %struct.gsl_sf_result_struct* %14), !dbg !206
  store i32 %15, i32* %11, align 4, !dbg !202
  %16 = load double, double* %7, align 8, !dbg !207
  %17 = load double, double* %8, align 8, !dbg !208
  %18 = fmul double %16, %17, !dbg !209
  call void @fMulHandler(double %16, double %17, double %18, i64 94324985329640, i64 94324985292968, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94324985388272, i32 73, i32 25), !dbg !210
  %19 = call double @fabs(double %18) #1, !dbg !210
  %20 = load double, double* %9, align 8, !dbg !211
  %21 = load double, double* %6, align 8, !dbg !212
  %22 = fmul double %20, %21, !dbg !213
  call void @fMulHandler(double %20, double %21, double %22, i64 94324985288168, i64 94324985389352, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94324985389760, i32 73, i32 38), !dbg !214
  %23 = call double @fabs(double %22) #1, !dbg !214
  %24 = fadd double %19, %23, !dbg !216
  call void @fAddHandler(double %19, double %23, double %24, i64 94324985377104, i64 94324985390240, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94324985390720, i32 73, i32 29), !dbg !217
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !217
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !218
  %27 = load double, double* %26, align 8, !dbg !219
  %28 = fadd double %27, %24, !dbg !219
  call void @fAddHandler(double %27, double %24, double %28, i64 94324985391944, i64 94324985390720, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94324985392352, i32 73, i32 15), !dbg !219
  store double %28, double* %26, align 8, !dbg !219
  %29 = load i32, i32* %11, align 4, !dbg !220
  ret i32 %29, !dbg !221
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_multiply(double, double) #0 !dbg !222 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !225, metadata !60), !dbg !226
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !227, metadata !60), !dbg !228
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !229, metadata !60), !dbg !230
  call void @llvm.dbg.declare(metadata i32* %7, metadata !231, metadata !60), !dbg !230
  %8 = load double, double* %4, align 8, !dbg !230
  %9 = load double, double* %5, align 8, !dbg !230
  %10 = call i32 @gsl_sf_multiply_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !230
  store i32 %10, i32* %7, align 4, !dbg !230
  %11 = load i32, i32* %7, align 4, !dbg !232
  %12 = icmp ne i32 %11, 0, !dbg !232
  %13 = sext i32 %11 to i64, !dbg !230
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94324985403808, i32 84, i32 3), !dbg !230
  br i1 %14, label %15, label %21, !dbg !230

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !234, !llvm.loop !237

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !239
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 84, i32 %17), !dbg !239
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !239
  %19 = load double, double* %18, align 8, !dbg !239
  store double %19, double* %3, align 8, !dbg !239
  br label %24, !dbg !239
                                                  ; No predecessors!
  br label %21, !dbg !242

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !244
  %23 = load double, double* %22, align 8, !dbg !244
  store double %23, double* %3, align 8, !dbg !244
  br label %24, !dbg !244

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !246
  ret double %25, !dbg !246
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "elementary.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_multiply_e", scope: !1, file: !1, line: 31, type: !46, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
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
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 31, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 31, column: 32, scope: !45)
!62 = !DILocalVariable(name: "y", arg: 2, scope: !45, file: !1, line: 31, type: !49)
!63 = !DILocation(line: 31, column: 48, scope: !45)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !45, file: !1, line: 31, type: !51)
!65 = !DILocation(line: 31, column: 67, scope: !45)
!66 = !DILocalVariable(name: "ax", scope: !45, file: !1, line: 33, type: !49)
!67 = !DILocation(line: 33, column: 16, scope: !45)
!68 = !DILocation(line: 33, column: 26, scope: !45)
!69 = !DILocation(line: 33, column: 21, scope: !45)
!70 = !DILocalVariable(name: "ay", scope: !45, file: !1, line: 34, type: !49)
!71 = !DILocation(line: 34, column: 16, scope: !45)
!72 = !DILocation(line: 34, column: 26, scope: !45)
!73 = !DILocation(line: 34, column: 21, scope: !45)
!74 = !DILocation(line: 36, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !45, file: !1, line: 36, column: 6)
!76 = !DILocation(line: 36, column: 8, scope: !75)
!77 = !DILocation(line: 36, column: 15, scope: !75)
!78 = !DILocation(line: 36, column: 18, scope: !79)
!79 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 1)
!80 = !DILocation(line: 36, column: 20, scope: !79)
!81 = !DILocation(line: 36, column: 6, scope: !79)
!82 = !DILocation(line: 39, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !75, file: !1, line: 36, column: 28)
!84 = !DILocation(line: 39, column: 13, scope: !83)
!85 = !DILocation(line: 39, column: 17, scope: !83)
!86 = !DILocation(line: 40, column: 5, scope: !83)
!87 = !DILocation(line: 40, column: 13, scope: !83)
!88 = !DILocation(line: 40, column: 17, scope: !83)
!89 = !DILocation(line: 41, column: 5, scope: !83)
!90 = !DILocation(line: 43, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !75, file: !1, line: 43, column: 11)
!92 = !DILocation(line: 43, column: 15, scope: !91)
!93 = !DILocation(line: 43, column: 22, scope: !91)
!94 = !DILocation(line: 43, column: 25, scope: !95)
!95 = !DILexicalBlockFile(scope: !91, file: !1, discriminator: 1)
!96 = !DILocation(line: 43, column: 28, scope: !95)
!97 = !DILocation(line: 43, column: 36, scope: !95)
!98 = !DILocation(line: 43, column: 40, scope: !99)
!99 = !DILexicalBlockFile(scope: !91, file: !1, discriminator: 2)
!100 = !DILocation(line: 43, column: 43, scope: !99)
!101 = !DILocation(line: 43, column: 50, scope: !99)
!102 = !DILocation(line: 43, column: 53, scope: !103)
!103 = !DILexicalBlockFile(scope: !91, file: !1, discriminator: 3)
!104 = !DILocation(line: 43, column: 56, scope: !103)
!105 = !DILocation(line: 43, column: 11, scope: !103)
!106 = !DILocation(line: 46, column: 19, scope: !107)
!107 = distinct !DILexicalBlock(scope: !91, file: !1, line: 43, column: 65)
!108 = !DILocation(line: 46, column: 21, scope: !107)
!109 = !DILocation(line: 46, column: 20, scope: !107)
!110 = !DILocation(line: 46, column: 5, scope: !107)
!111 = !DILocation(line: 46, column: 13, scope: !107)
!112 = !DILocation(line: 46, column: 17, scope: !107)
!113 = !DILocation(line: 47, column: 48, scope: !107)
!114 = !DILocation(line: 47, column: 56, scope: !107)
!115 = !DILocation(line: 47, column: 43, scope: !107)
!116 = !DILocation(line: 47, column: 41, scope: !107)
!117 = !DILocation(line: 47, column: 5, scope: !107)
!118 = !DILocation(line: 47, column: 13, scope: !107)
!119 = !DILocation(line: 47, column: 17, scope: !107)
!120 = !DILocation(line: 48, column: 5, scope: !107)
!121 = !DILocalVariable(name: "f", scope: !122, file: !1, line: 51, type: !49)
!122 = distinct !DILexicalBlock(scope: !91, file: !1, line: 50, column: 8)
!123 = !DILocation(line: 51, column: 18, scope: !122)
!124 = !DILocalVariable(name: "min", scope: !122, file: !1, line: 52, type: !49)
!125 = !DILocation(line: 52, column: 18, scope: !122)
!126 = !DILocation(line: 52, column: 41, scope: !122)
!127 = !DILocation(line: 52, column: 36, scope: !122)
!128 = !DILocation(line: 52, column: 50, scope: !122)
!129 = !DILocation(line: 52, column: 45, scope: !130)
!130 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 1)
!131 = !DILocation(line: 52, column: 24, scope: !132)
!132 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 2)
!133 = !DILocalVariable(name: "max", scope: !122, file: !1, line: 53, type: !49)
!134 = !DILocation(line: 53, column: 18, scope: !122)
!135 = !DILocation(line: 53, column: 41, scope: !122)
!136 = !DILocation(line: 53, column: 36, scope: !122)
!137 = !DILocation(line: 53, column: 50, scope: !122)
!138 = !DILocation(line: 53, column: 45, scope: !130)
!139 = !DILocation(line: 53, column: 24, scope: !132)
!140 = !DILocation(line: 54, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !122, file: !1, line: 54, column: 8)
!142 = !DILocation(line: 54, column: 12, scope: !141)
!143 = !DILocation(line: 54, column: 37, scope: !141)
!144 = !DILocation(line: 54, column: 40, scope: !145)
!145 = !DILexicalBlockFile(scope: !141, file: !1, discriminator: 1)
!146 = !DILocation(line: 54, column: 60, scope: !145)
!147 = !DILocation(line: 54, column: 59, scope: !145)
!148 = !DILocation(line: 54, column: 44, scope: !145)
!149 = !DILocation(line: 54, column: 8, scope: !145)
!150 = !DILocation(line: 55, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !141, file: !1, line: 54, column: 65)
!152 = !DILocation(line: 55, column: 7, scope: !151)
!153 = !DILocation(line: 55, column: 15, scope: !151)
!154 = !DILocation(line: 55, column: 19, scope: !151)
!155 = !DILocation(line: 56, column: 50, scope: !151)
!156 = !DILocation(line: 56, column: 58, scope: !151)
!157 = !DILocation(line: 56, column: 45, scope: !151)
!158 = !DILocation(line: 56, column: 43, scope: !151)
!159 = !DILocation(line: 56, column: 7, scope: !151)
!160 = !DILocation(line: 56, column: 15, scope: !151)
!161 = !DILocation(line: 56, column: 19, scope: !151)
!162 = !DILocation(line: 57, column: 7, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !1, line: 57, column: 7)
!164 = !DILocation(line: 57, column: 7, scope: !151)
!165 = !DILocation(line: 57, column: 7, scope: !166)
!166 = !DILexicalBlockFile(scope: !163, file: !1, discriminator: 1)
!167 = distinct !{!167, !162}
!168 = !DILocation(line: 57, column: 7, scope: !169)
!169 = !DILexicalBlockFile(scope: !170, file: !1, discriminator: 2)
!170 = distinct !DILexicalBlock(scope: !163, file: !1, line: 57, column: 7)
!171 = !DILocation(line: 57, column: 7, scope: !172)
!172 = !DILexicalBlockFile(scope: !170, file: !1, discriminator: 3)
!173 = !DILocation(line: 58, column: 7, scope: !151)
!174 = !DILocation(line: 61, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !141, file: !1, line: 60, column: 10)
!176 = distinct !{!176, !174}
!177 = !DILocation(line: 61, column: 7, scope: !178)
!178 = !DILexicalBlockFile(scope: !179, file: !1, discriminator: 1)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 61, column: 7)
!180 = distinct !{!180, !181}
!181 = !DILocation(line: 61, column: 7, scope: !179)
!182 = !DILocation(line: 61, column: 7, scope: !183)
!183 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 2)
!184 = distinct !DILexicalBlock(scope: !179, file: !1, line: 61, column: 7)
!185 = !DILocation(line: 61, column: 7, scope: !186)
!186 = !DILexicalBlockFile(scope: !179, file: !1, discriminator: 3)
!187 = !DILocation(line: 64, column: 1, scope: !45)
!188 = distinct !DISubprogram(name: "gsl_sf_multiply_err_e", scope: !1, file: !1, line: 68, type: !189, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!189 = !DISubroutineType(types: !190)
!190 = !{!48, !49, !49, !49, !49, !51}
!191 = !DILocalVariable(name: "x", arg: 1, scope: !188, file: !1, line: 68, type: !49)
!192 = !DILocation(line: 68, column: 36, scope: !188)
!193 = !DILocalVariable(name: "dx", arg: 2, scope: !188, file: !1, line: 68, type: !49)
!194 = !DILocation(line: 68, column: 52, scope: !188)
!195 = !DILocalVariable(name: "y", arg: 3, scope: !188, file: !1, line: 69, type: !49)
!196 = !DILocation(line: 69, column: 39, scope: !188)
!197 = !DILocalVariable(name: "dy", arg: 4, scope: !188, file: !1, line: 69, type: !49)
!198 = !DILocation(line: 69, column: 55, scope: !188)
!199 = !DILocalVariable(name: "result", arg: 5, scope: !188, file: !1, line: 70, type: !51)
!200 = !DILocation(line: 70, column: 42, scope: !188)
!201 = !DILocalVariable(name: "status", scope: !188, file: !1, line: 72, type: !48)
!202 = !DILocation(line: 72, column: 7, scope: !188)
!203 = !DILocation(line: 72, column: 34, scope: !188)
!204 = !DILocation(line: 72, column: 37, scope: !188)
!205 = !DILocation(line: 72, column: 40, scope: !188)
!206 = !DILocation(line: 72, column: 16, scope: !188)
!207 = !DILocation(line: 73, column: 23, scope: !188)
!208 = !DILocation(line: 73, column: 26, scope: !188)
!209 = !DILocation(line: 73, column: 25, scope: !188)
!210 = !DILocation(line: 73, column: 18, scope: !188)
!211 = !DILocation(line: 73, column: 36, scope: !188)
!212 = !DILocation(line: 73, column: 39, scope: !188)
!213 = !DILocation(line: 73, column: 38, scope: !188)
!214 = !DILocation(line: 73, column: 31, scope: !215)
!215 = !DILexicalBlockFile(scope: !188, file: !1, discriminator: 1)
!216 = !DILocation(line: 73, column: 29, scope: !188)
!217 = !DILocation(line: 73, column: 3, scope: !188)
!218 = !DILocation(line: 73, column: 11, scope: !188)
!219 = !DILocation(line: 73, column: 15, scope: !188)
!220 = !DILocation(line: 74, column: 10, scope: !188)
!221 = !DILocation(line: 74, column: 3, scope: !188)
!222 = distinct !DISubprogram(name: "gsl_sf_multiply", scope: !1, file: !1, line: 82, type: !223, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!223 = !DISubroutineType(types: !224)
!224 = !{!50, !49, !49}
!225 = !DILocalVariable(name: "x", arg: 1, scope: !222, file: !1, line: 82, type: !49)
!226 = !DILocation(line: 82, column: 37, scope: !222)
!227 = !DILocalVariable(name: "y", arg: 2, scope: !222, file: !1, line: 82, type: !49)
!228 = !DILocation(line: 82, column: 53, scope: !222)
!229 = !DILocalVariable(name: "result", scope: !222, file: !1, line: 84, type: !52)
!230 = !DILocation(line: 84, column: 3, scope: !222)
!231 = !DILocalVariable(name: "status", scope: !222, file: !1, line: 84, type: !48)
!232 = !DILocation(line: 84, column: 3, scope: !233)
!233 = distinct !DILexicalBlock(scope: !222, file: !1, line: 84, column: 3)
!234 = !DILocation(line: 84, column: 3, scope: !235)
!235 = !DILexicalBlockFile(scope: !236, file: !1, discriminator: 1)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 84, column: 3)
!237 = distinct !{!237, !238}
!238 = !DILocation(line: 84, column: 3, scope: !236)
!239 = !DILocation(line: 84, column: 3, scope: !240)
!240 = !DILexicalBlockFile(scope: !241, file: !1, discriminator: 2)
!241 = distinct !DILexicalBlock(scope: !236, file: !1, line: 84, column: 3)
!242 = !DILocation(line: 84, column: 3, scope: !243)
!243 = !DILexicalBlockFile(scope: !236, file: !1, discriminator: 3)
!244 = !DILocation(line: 84, column: 3, scope: !245)
!245 = !DILexicalBlockFile(scope: !222, file: !1, discriminator: 4)
!246 = !DILocation(line: 85, column: 1, scope: !222)
