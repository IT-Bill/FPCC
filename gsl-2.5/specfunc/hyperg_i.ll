; ModuleID = 'hyperg.ll'
source_filename = "hyperg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"hyperg.c\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"hypergeometric series failed to converge\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@0 = private unnamed_addr constant [27 x i8] c"gsl_sf_hyperg_1F1_series_e\00"
@1 = private unnamed_addr constant [10 x i8] c"hyperg.ll\00"
@2 = private unnamed_addr constant [28 x i8] c"gsl_sf_hyperg_1F1_large_b_e\00"
@3 = private unnamed_addr constant [10 x i8] c"hyperg.ll\00"
@4 = private unnamed_addr constant [26 x i8] c"gsl_sf_hyperg_U_large_b_e\00"
@5 = private unnamed_addr constant [10 x i8] c"hyperg.ll\00"
@6 = private unnamed_addr constant [27 x i8] c"gsl_sf_hyperg_2F0_series_e\00"
@7 = private unnamed_addr constant [10 x i8] c"hyperg.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_1F1_series_e(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
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
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !59, metadata !60), !dbg !61
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !62, metadata !60), !dbg !63
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !64, metadata !60), !dbg !65
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !66, metadata !60), !dbg !67
  call void @llvm.dbg.declare(metadata double* %10, metadata !68, metadata !60), !dbg !69
  %20 = load double, double* %6, align 8, !dbg !70
  store double %20, double* %10, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata double* %11, metadata !71, metadata !60), !dbg !72
  %21 = load double, double* %7, align 8, !dbg !73
  store double %21, double* %11, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata double* %12, metadata !74, metadata !60), !dbg !75
  store double 1.000000e+00, double* %12, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata double* %13, metadata !76, metadata !60), !dbg !77
  store double 1.000000e+00, double* %13, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata double* %14, metadata !78, metadata !60), !dbg !79
  store double 1.000000e+00, double* %14, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata double* %15, metadata !80, metadata !60), !dbg !81
  store double 1.000000e+00, double* %15, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %16, metadata !82, metadata !60), !dbg !83
  store double 1.000000e+00, double* %16, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata double* %17, metadata !84, metadata !60), !dbg !85
  store double 0.000000e+00, double* %17, align 8, !dbg !85
  br label %22, !dbg !86

; <label>:22:                                     ; preds = %125, %4
  %23 = load double, double* %14, align 8, !dbg !87
  %24 = load double, double* %16, align 8, !dbg !89
  %25 = call double @fabs(double %24) #1, !dbg !90
  %26 = fdiv double %23, %25, !dbg !91
  call void @fDivHandler(double %23, double %25, double %26, i64 94406070304424, i64 94406070305488, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070306000, i32 51, i32 16), !dbg !92
  %27 = fcmp ogt double %26, 0x3C90000000000000, !dbg !92
  %28 = call i1 @fCmpInstHandler(double %26, double 0x3C90000000000000, i1 %27, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070306480, i32 51, i32 31), !dbg !93
  br i1 %28, label %29, label %141, !dbg !93

; <label>:29:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata double* %18, metadata !94, metadata !60), !dbg !96
  call void @llvm.dbg.declare(metadata double* %19, metadata !97, metadata !60), !dbg !98
  %30 = load double, double* %11, align 8, !dbg !99
  %31 = fcmp oeq double %30, 0.000000e+00, !dbg !101
  %32 = call i1 @fCmpInstHandler(double %30, double 0.000000e+00, i1 %31, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070310160, i32 54, i32 11), !dbg !102
  br i1 %32, label %33, label %42, !dbg !102

; <label>:33:                                     ; preds = %29
  br label %34, !dbg !103, !llvm.loop !105

; <label>:34:                                     ; preds = %33
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !106
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !106
  store double 0x7FF8000000000000, double* %36, align 8, !dbg !106
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !106
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !106
  store double 0x7FF8000000000000, double* %38, align 8, !dbg !106
  br label %39, !dbg !106, !llvm.loop !109

; <label>:39:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 55, i32 1), !dbg !111
  store i32 1, i32* %5, align 4, !dbg !111
  br label %162, !dbg !111
                                                  ; No predecessors!
  br label %41, !dbg !114

; <label>:41:                                     ; preds = %40
  br label %42, !dbg !116

; <label>:42:                                     ; preds = %41, %29
  %43 = load double, double* %10, align 8, !dbg !117
  %44 = fcmp oeq double %43, 0.000000e+00, !dbg !119
  %45 = call i1 @fCmpInstHandler(double %43, double 0.000000e+00, i1 %44, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070324688, i32 58, i32 11), !dbg !120
  br i1 %45, label %46, label %62, !dbg !120

; <label>:46:                                     ; preds = %42
  %47 = load double, double* %16, align 8, !dbg !121
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !123
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !124
  store double %47, double* %49, align 8, !dbg !125
  %50 = load double, double* %17, align 8, !dbg !126
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !127
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !128
  store double %50, double* %52, align 8, !dbg !129
  %53 = load double, double* %12, align 8, !dbg !130
  %54 = fmul double 0x3CC0000000000000, %53, !dbg !131
  call void @fMulHandler(double 0x3CC0000000000000, double %53, double %54, i64 0, i64 94406070329000, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070329472, i32 61, i32 44), !dbg !132
  %55 = load double, double* %16, align 8, !dbg !132
  %56 = call double @fabs(double %55) #1, !dbg !133
  %57 = fmul double %54, %56, !dbg !134
  call void @fMulHandler(double %54, double %56, double %57, i64 94406070329472, i64 94406070330336, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070330816, i32 61, i32 48), !dbg !135
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !135
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !136
  %60 = load double, double* %59, align 8, !dbg !137
  %61 = fadd double %60, %57, !dbg !137
  call void @fAddHandler(double %60, double %57, double %61, i64 94406070332040, i64 94406070330816, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070332448, i32 61, i32 19), !dbg !137
  store double %61, double* %59, align 8, !dbg !137
  store i32 0, i32* %5, align 4, !dbg !138
  br label %162, !dbg !138

; <label>:62:                                     ; preds = %42
  %63 = load double, double* %12, align 8, !dbg !139
  %64 = fcmp ogt double %63, 1.000000e+04, !dbg !141
  %65 = call i1 @fCmpInstHandler(double %63, double 1.000000e+04, i1 %64, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070336736, i32 65, i32 11), !dbg !142
  br i1 %65, label %66, label %75, !dbg !142

; <label>:66:                                     ; preds = %62
  %67 = load double, double* %16, align 8, !dbg !143
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !145
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !146
  store double %67, double* %69, align 8, !dbg !147
  %70 = load double, double* %17, align 8, !dbg !148
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !149
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !150
  store double %70, double* %72, align 8, !dbg !151
  br label %73, !dbg !152, !llvm.loop !153

; <label>:73:                                     ; preds = %66
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 68, i32 5), !dbg !154
  store i32 5, i32* %5, align 4, !dbg !154
  br label %162, !dbg !154
                                                  ; No predecessors!
  br label %75, !dbg !157

; <label>:75:                                     ; preds = %74, %62
  %76 = load double, double* %8, align 8, !dbg !158
  %77 = load double, double* %10, align 8, !dbg !159
  %78 = load double, double* %11, align 8, !dbg !160
  %79 = load double, double* %12, align 8, !dbg !161
  %80 = fmul double %78, %79, !dbg !162
  call void @fMulHandler(double %78, double %79, double %80, i64 94406070346632, i64 94406070347016, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070347424, i32 71, i32 20), !dbg !163
  %81 = fdiv double %77, %80, !dbg !163
  call void @fDivHandler(double %77, double %80, double %81, i64 94406070346248, i64 94406070347424, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070347840, i32 71, i32 16), !dbg !164
  %82 = fmul double %76, %81, !dbg !164
  call void @fMulHandler(double %76, double %81, double %82, i64 94406070345928, i64 94406070347840, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070348256, i32 71, i32 11), !dbg !165
  store double %82, double* %18, align 8, !dbg !165
  %83 = load double, double* %18, align 8, !dbg !166
  %84 = call double @fabs(double %83) #1, !dbg !167
  store double %84, double* %19, align 8, !dbg !168
  %85 = load double, double* %19, align 8, !dbg !169
  %86 = fcmp ogt double %85, 1.000000e+00, !dbg !171
  %87 = call i1 @fCmpInstHandler(double %85, double 1.000000e+00, i1 %86, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070350848, i32 73, i32 14), !dbg !172
  br i1 %87, label %88, label %104, !dbg !172

; <label>:88:                                     ; preds = %75
  %89 = load double, double* %15, align 8, !dbg !173
  %90 = load double, double* %19, align 8, !dbg !175
  %91 = fdiv double 0x7FEFFFFFFFFFFFFF, %90, !dbg !176
  call void @fDivHandler(double 0x7FEFFFFFFFFFFFFF, double %90, double %91, i64 0, i64 94406070352248, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070352720, i32 73, i32 48), !dbg !177
  %92 = fcmp ogt double %89, %91, !dbg !177
  %93 = call i1 @fCmpInstHandler(double %89, double %91, i1 %92, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070353136, i32 73, i32 35), !dbg !178
  br i1 %93, label %94, label %104, !dbg !178

; <label>:94:                                     ; preds = %88
  %95 = load double, double* %16, align 8, !dbg !179
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !181
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !182
  store double %95, double* %97, align 8, !dbg !183
  %98 = load double, double* %16, align 8, !dbg !184
  %99 = call double @fabs(double %98) #1, !dbg !185
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !186
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !187
  store double %99, double* %101, align 8, !dbg !188
  br label %102, !dbg !189, !llvm.loop !190

; <label>:102:                                    ; preds = %94
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 76, i32 16), !dbg !191
  store i32 16, i32* %5, align 4, !dbg !191
  br label %162, !dbg !191
                                                  ; No predecessors!
  br label %104, !dbg !194

; <label>:104:                                    ; preds = %103, %88, %75
  %105 = load double, double* %18, align 8, !dbg !195
  %106 = load double, double* %13, align 8, !dbg !196
  %107 = fmul double %106, %105, !dbg !196
  call void @fMulHandler(double %106, double %105, double %107, i64 94406070361992, i64 94406070361672, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070362400, i32 78, i32 9), !dbg !196
  store double %107, double* %13, align 8, !dbg !196
  %108 = load double, double* %13, align 8, !dbg !197
  %109 = load double, double* %16, align 8, !dbg !198
  %110 = fadd double %109, %108, !dbg !198
  call void @fAddHandler(double %109, double %108, double %110, i64 94406070364568, i64 94406070364184, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070364976, i32 79, i32 13), !dbg !198
  store double %110, double* %16, align 8, !dbg !198
  %111 = load double, double* %16, align 8, !dbg !199
  %112 = call double @fabs(double %111) #1, !dbg !201
  %113 = fcmp ogt double %112, 0x7EE4F8B588E368F0, !dbg !202
  %114 = call i1 @fCmpInstHandler(double %112, double 0x7EE4F8B588E368F0, i1 %113, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070367776, i32 80, i32 22), !dbg !203
  br i1 %114, label %115, label %125, !dbg !203

; <label>:115:                                    ; preds = %104
  %116 = load double, double* %16, align 8, !dbg !204
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !206
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 0, !dbg !207
  store double %116, double* %118, align 8, !dbg !208
  %119 = load double, double* %16, align 8, !dbg !209
  %120 = call double @fabs(double %119) #1, !dbg !210
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !211
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 1, !dbg !212
  store double %120, double* %122, align 8, !dbg !213
  br label %123, !dbg !214, !llvm.loop !215

; <label>:123:                                    ; preds = %115
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 83, i32 16), !dbg !216
  store i32 16, i32* %5, align 4, !dbg !216
  br label %162, !dbg !216
                                                  ; No predecessors!
  br label %125, !dbg !219

; <label>:125:                                    ; preds = %124, %104
  %126 = load double, double* %13, align 8, !dbg !220
  %127 = call double @fabs(double %126) #1, !dbg !221
  store double %127, double* %14, align 8, !dbg !222
  %128 = load double, double* %14, align 8, !dbg !223
  %129 = load double, double* %15, align 8, !dbg !224
  %130 = call double @GSL_MAX_DBL(double %128, double %129), !dbg !225
  store double %130, double* %15, align 8, !dbg !226
  %131 = load double, double* %14, align 8, !dbg !227
  %132 = fmul double 0x3CC0000000000000, %131, !dbg !228
  call void @fMulHandler(double 0x3CC0000000000000, double %131, double %132, i64 0, i64 94406070379576, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070379984, i32 88, i32 35), !dbg !229
  %133 = load double, double* %17, align 8, !dbg !229
  %134 = fadd double %133, %132, !dbg !229
  call void @fAddHandler(double %133, double %132, double %134, i64 94406070380376, i64 94406070379984, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070380784, i32 88, i32 13), !dbg !229
  store double %134, double* %17, align 8, !dbg !229
  %135 = load double, double* %10, align 8, !dbg !230
  %136 = fadd double %135, 1.000000e+00, !dbg !230
  call void @fAddHandler(double %135, double 1.000000e+00, double %136, i64 94406070382568, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070385072, i32 90, i32 8), !dbg !230
  store double %136, double* %10, align 8, !dbg !230
  %137 = load double, double* %11, align 8, !dbg !231
  %138 = fadd double %137, 1.000000e+00, !dbg !231
  call void @fAddHandler(double %137, double 1.000000e+00, double %138, i64 94406070386856, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070387264, i32 91, i32 8), !dbg !231
  store double %138, double* %11, align 8, !dbg !231
  %139 = load double, double* %12, align 8, !dbg !232
  %140 = fadd double %139, 1.000000e+00, !dbg !232
  call void @fAddHandler(double %139, double 1.000000e+00, double %140, i64 94406070389048, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070389456, i32 92, i32 8), !dbg !232
  store double %140, double* %12, align 8, !dbg !232
  br label %22, !dbg !233, !llvm.loop !235

; <label>:141:                                    ; preds = %22
  %142 = load double, double* %16, align 8, !dbg !236
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !237
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 0, !dbg !238
  store double %142, double* %144, align 8, !dbg !239
  %145 = load double, double* %17, align 8, !dbg !240
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !241
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 1, !dbg !242
  store double %145, double* %147, align 8, !dbg !243
  %148 = load double, double* %14, align 8, !dbg !244
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !245
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 1, !dbg !246
  %151 = load double, double* %150, align 8, !dbg !247
  %152 = fadd double %151, %148, !dbg !247
  call void @fAddHandler(double %151, double %148, double %152, i64 94406070396296, i64 94406070395080, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070396704, i32 97, i32 15), !dbg !247
  store double %152, double* %150, align 8, !dbg !247
  %153 = load double, double* %12, align 8, !dbg !248
  %154 = fmul double 0x3CC0000000000000, %153, !dbg !249
  call void @fMulHandler(double 0x3CC0000000000000, double %153, double %154, i64 0, i64 94406070398488, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070398896, i32 98, i32 40), !dbg !250
  %155 = load double, double* %16, align 8, !dbg !250
  %156 = call double @fabs(double %155) #1, !dbg !251
  %157 = fmul double %154, %156, !dbg !252
  call void @fMulHandler(double %154, double %156, double %157, i64 94406070398896, i64 94406070399760, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070400240, i32 98, i32 44), !dbg !253
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !253
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 1, !dbg !254
  %160 = load double, double* %159, align 8, !dbg !255
  %161 = fadd double %160, %157, !dbg !255
  call void @fAddHandler(double %160, double %157, double %161, i64 94406070401464, i64 94406070400240, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94406070401872, i32 98, i32 15), !dbg !255
  store double %161, double* %159, align 8, !dbg !255
  store i32 0, i32* %5, align 4, !dbg !256
  br label %162, !dbg !256

; <label>:162:                                    ; preds = %141, %123, %102, %73, %46, %39
  %163 = load i32, i32* %5, align 4, !dbg !257
  ret i32 %163, !dbg !257
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gsl_error(i8*, i8*, i32, i32) #3

declare double @GSL_MAX_DBL(double, double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_1F1_large_b_e(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !258 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !259, metadata !60), !dbg !260
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !261, metadata !60), !dbg !262
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !263, metadata !60), !dbg !264
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !265, metadata !60), !dbg !266
  %19 = load double, double* %8, align 8, !dbg !267
  %20 = load double, double* %7, align 8, !dbg !269
  %21 = fdiv double %19, %20, !dbg !270
  call void @fDivHandler(double %19, double %20, double %21, i64 94406070378600, i64 94406070320888, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070414832, i32 107, i32 12), !dbg !271
  %22 = call double @fabs(double %21) #1, !dbg !271
  %23 = fcmp olt double %22, 1.000000e+00, !dbg !272
  %24 = call i1 @fCmpInstHandler(double %22, double 1.000000e+00, i1 %23, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070415824, i32 107, i32 16), !dbg !273
  br i1 %24, label %25, label %107, !dbg !273

; <label>:25:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %10, metadata !274, metadata !60), !dbg !276
  %26 = load double, double* %8, align 8, !dbg !277
  %27 = load double, double* %7, align 8, !dbg !278
  %28 = fdiv double %26, %27, !dbg !279
  call void @fDivHandler(double %26, double %27, double %28, i64 94406070305368, i64 94406070274488, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070418528, i32 108, i32 23), !dbg !276
  store double %28, double* %10, align 8, !dbg !276
  call void @llvm.dbg.declare(metadata double* %11, metadata !280, metadata !60), !dbg !281
  %29 = load double, double* %10, align 8, !dbg !282
  %30 = fsub double 1.000000e+00, %29, !dbg !283
  call void @fSubHandler(double 1.000000e+00, double %29, double %30, i64 0, i64 94406070421720, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070422128, i32 109, i32 30), !dbg !284
  %31 = fdiv double 1.000000e+00, %30, !dbg !284
  call void @fDivHandler(double 1.000000e+00, double %30, double %31, i64 0, i64 94406070422128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070422544, i32 109, i32 25), !dbg !281
  store double %31, double* %11, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata double* %12, metadata !285, metadata !60), !dbg !286
  %32 = load double, double* %11, align 8, !dbg !287
  %33 = load double, double* %6, align 8, !dbg !288
  %34 = call double @pow(double %32, double %33) #5, !dbg !289
  call void @callTwoArgsHandler(i32 15, double %32, double %33, double %34, i64 94406070425704, i64 94406070426056, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070426856, i32 110, i32 24), !dbg !286
  store double %34, double* %12, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata double* %13, metadata !290, metadata !60), !dbg !291
  %35 = load double, double* %10, align 8, !dbg !292
  %36 = load double, double* %11, align 8, !dbg !293
  %37 = fmul double %35, %36, !dbg !294
  call void @fMulHandler(double %35, double %36, double %37, i64 94406070430152, i64 94406070430504, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070430912, i32 111, i32 25), !dbg !291
  store double %37, double* %13, align 8, !dbg !291
  call void @llvm.dbg.declare(metadata double* %14, metadata !295, metadata !60), !dbg !296
  %38 = load double, double* %13, align 8, !dbg !297
  %39 = load double, double* %13, align 8, !dbg !298
  %40 = fmul double %38, %39, !dbg !299
  call void @fMulHandler(double %38, double %39, double %40, i64 94406070434104, i64 94406070434456, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070434864, i32 112, i32 26), !dbg !296
  store double %40, double* %14, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata double* %15, metadata !300, metadata !60), !dbg !301
  %41 = load double, double* %6, align 8, !dbg !302
  %42 = load double, double* %6, align 8, !dbg !303
  %43 = fadd double %42, 1.000000e+00, !dbg !304
  call void @fAddHandler(double %42, double 1.000000e+00, double %43, i64 94406070440472, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070440912, i32 113, i32 28), !dbg !305
  %44 = fmul double %41, %43, !dbg !305
  call void @fMulHandler(double %41, double %43, double %44, i64 94406070440120, i64 94406070440912, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070441296, i32 113, i32 25), !dbg !306
  %45 = load double, double* %7, align 8, !dbg !306
  %46 = fmul double 2.000000e+00, %45, !dbg !307
  call void @fMulHandler(double 2.000000e+00, double %45, double %46, i64 0, i64 94406070441688, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070442192, i32 113, i32 38), !dbg !308
  %47 = fdiv double %44, %46, !dbg !308
  call void @fDivHandler(double %44, double %46, double %47, i64 94406070441296, i64 94406070442192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070442576, i32 113, i32 33), !dbg !309
  %48 = load double, double* %14, align 8, !dbg !309
  %49 = fmul double %47, %48, !dbg !310
  call void @fMulHandler(double %47, double %48, double %49, i64 94406070442576, i64 94406070442968, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070443376, i32 113, i32 41), !dbg !301
  store double %49, double* %15, align 8, !dbg !301
  call void @llvm.dbg.declare(metadata double* %16, metadata !311, metadata !60), !dbg !312
  %50 = load double, double* %6, align 8, !dbg !313
  %51 = load double, double* %6, align 8, !dbg !314
  %52 = fadd double %51, 1.000000e+00, !dbg !315
  call void @fAddHandler(double %51, double 1.000000e+00, double %52, i64 94406070446920, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070447360, i32 114, i32 28), !dbg !316
  %53 = fmul double %50, %52, !dbg !316
  call void @fMulHandler(double %50, double %52, double %53, i64 94406070446568, i64 94406070447360, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070447744, i32 114, i32 25), !dbg !317
  %54 = load double, double* %7, align 8, !dbg !317
  %55 = fmul double 2.400000e+01, %54, !dbg !318
  call void @fMulHandler(double 2.400000e+01, double %54, double %55, i64 0, i64 94406070448136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070448640, i32 114, i32 39), !dbg !319
  %56 = load double, double* %7, align 8, !dbg !319
  %57 = fmul double %55, %56, !dbg !320
  call void @fMulHandler(double %55, double %56, double %57, i64 94406070448640, i64 94406070449000, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070449408, i32 114, i32 41), !dbg !321
  %58 = fdiv double %53, %57, !dbg !321
  call void @fDivHandler(double %53, double %57, double %58, i64 94406070447744, i64 94406070449408, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070449824, i32 114, i32 33), !dbg !322
  %59 = load double, double* %14, align 8, !dbg !322
  %60 = fmul double %58, %59, !dbg !323
  call void @fMulHandler(double %58, double %59, double %60, i64 94406070449824, i64 94406070450216, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070450624, i32 114, i32 44), !dbg !312
  store double %60, double* %16, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata double* %17, metadata !324, metadata !60), !dbg !325
  %61 = load double, double* %6, align 8, !dbg !326
  %62 = fadd double %61, 2.000000e+00, !dbg !327
  call void @fAddHandler(double %61, double 2.000000e+00, double %62, i64 94406070453816, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070454224, i32 115, i32 38), !dbg !328
  %63 = fmul double 1.600000e+01, %62, !dbg !328
  call void @fMulHandler(double 1.600000e+01, double %62, double %63, i64 0, i64 94406070454224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070454704, i32 115, i32 35), !dbg !329
  %64 = load double, double* %13, align 8, !dbg !329
  %65 = fmul double %63, %64, !dbg !330
  call void @fMulHandler(double %63, double %64, double %65, i64 94406070454704, i64 94406070455064, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070455472, i32 115, i32 43), !dbg !331
  %66 = fadd double 1.200000e+01, %65, !dbg !331
  call void @fAddHandler(double 1.200000e+01, double %65, double %66, i64 0, i64 94406070455472, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070455984, i32 115, i32 29), !dbg !332
  %67 = load double, double* %6, align 8, !dbg !332
  %68 = fadd double %67, 2.000000e+00, !dbg !333
  call void @fAddHandler(double %67, double 2.000000e+00, double %68, i64 94406070456344, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070456784, i32 115, i32 55), !dbg !334
  %69 = fmul double 3.000000e+00, %68, !dbg !334
  call void @fMulHandler(double 3.000000e+00, double %68, double %69, i64 0, i64 94406070456784, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070457264, i32 115, i32 52), !dbg !335
  %70 = load double, double* %6, align 8, !dbg !335
  %71 = fadd double %70, 3.000000e+00, !dbg !336
  call void @fAddHandler(double %70, double 3.000000e+00, double %71, i64 94406070457624, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070458064, i32 115, i32 63), !dbg !337
  %72 = fmul double %69, %71, !dbg !337
  call void @fMulHandler(double %69, double %71, double %72, i64 94406070457264, i64 94406070458064, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070458448, i32 115, i32 60), !dbg !338
  %73 = load double, double* %14, align 8, !dbg !338
  %74 = fmul double %72, %73, !dbg !339
  call void @fMulHandler(double %72, double %73, double %74, i64 94406070458448, i64 94406070458840, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070459248, i32 115, i32 68), !dbg !340
  %75 = fadd double %66, %74, !dbg !340
  call void @fAddHandler(double %66, double %74, double %75, i64 94406070455984, i64 94406070459248, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070459664, i32 115, i32 47), !dbg !325
  store double %75, double* %17, align 8, !dbg !325
  call void @llvm.dbg.declare(metadata double* %18, metadata !341, metadata !60), !dbg !342
  %76 = load double, double* %16, align 8, !dbg !343
  %77 = load double, double* %17, align 8, !dbg !344
  %78 = fmul double %76, %77, !dbg !345
  call void @fMulHandler(double %76, double %77, double %78, i64 94406070462856, i64 94406070463208, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070463616, i32 116, i32 27), !dbg !342
  store double %78, double* %18, align 8, !dbg !342
  %79 = load double, double* %12, align 8, !dbg !346
  %80 = load double, double* %15, align 8, !dbg !347
  %81 = fsub double 1.000000e+00, %80, !dbg !348
  call void @fSubHandler(double 1.000000e+00, double %80, double %81, i64 0, i64 94406070466072, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070466512, i32 117, i32 31), !dbg !349
  %82 = load double, double* %18, align 8, !dbg !349
  %83 = fadd double %81, %82, !dbg !350
  call void @fAddHandler(double %81, double %82, double %83, i64 94406070466512, i64 94406070466872, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070467280, i32 117, i32 36), !dbg !351
  %84 = fmul double %79, %83, !dbg !351
  call void @fMulHandler(double %79, double %83, double %84, i64 94406070465688, i64 94406070467280, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070467696, i32 117, i32 24), !dbg !352
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !352
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !353
  store double %84, double* %86, align 8, !dbg !354
  %87 = load double, double* %12, align 8, !dbg !355
  %88 = fmul double %87, 0x3CB0000000000000, !dbg !356
  call void @fMulHandler(double %87, double 0x3CB0000000000000, double %88, i64 94406070469336, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070469808, i32 118, i32 24), !dbg !357
  %89 = load double, double* %15, align 8, !dbg !357
  %90 = call double @fabs(double %89) #1, !dbg !358
  %91 = fadd double 1.000000e+00, %90, !dbg !359
  call void @fAddHandler(double 1.000000e+00, double %90, double %91, i64 0, i64 94406070470672, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070471184, i32 118, i32 49), !dbg !360
  %92 = load double, double* %18, align 8, !dbg !360
  %93 = call double @fabs(double %92) #1, !dbg !361
  %94 = fadd double %91, %93, !dbg !363
  call void @fAddHandler(double %91, double %93, double %94, i64 94406070471184, i64 94406070472016, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070472496, i32 118, i32 60), !dbg !364
  %95 = fmul double %88, %94, !dbg !364
  call void @fMulHandler(double %88, double %94, double %95, i64 94406070469808, i64 94406070472496, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070472912, i32 118, i32 42), !dbg !365
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !365
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 1, !dbg !366
  store double %95, double* %97, align 8, !dbg !367
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !368
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !369
  %100 = load double, double* %99, align 8, !dbg !369
  %101 = call double @fabs(double %100) #1, !dbg !370
  %102 = fmul double 0x3CC0000000000000, %101, !dbg !371
  call void @fMulHandler(double 0x3CC0000000000000, double %101, double %102, i64 0, i64 94406070477120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070477600, i32 119, i32 42), !dbg !372
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !372
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !373
  %105 = load double, double* %104, align 8, !dbg !374
  %106 = fadd double %105, %102, !dbg !374
  call void @fAddHandler(double %105, double %102, double %106, i64 94406070478824, i64 94406070477600, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94406070479232, i32 119, i32 17), !dbg !374
  store double %106, double* %104, align 8, !dbg !374
  store i32 0, i32* %5, align 4, !dbg !375
  br label %116, !dbg !375

; <label>:107:                                    ; preds = %4
  br label %108, !dbg !376, !llvm.loop !378

; <label>:108:                                    ; preds = %107
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !379
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !379
  store double 0x7FF8000000000000, double* %110, align 8, !dbg !379
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !379
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 1, !dbg !379
  store double 0x7FF8000000000000, double* %112, align 8, !dbg !379
  br label %113, !dbg !379, !llvm.loop !382

; <label>:113:                                    ; preds = %108
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 123, i32 1), !dbg !384
  store i32 1, i32* %5, align 4, !dbg !384
  br label %116, !dbg !384
                                                  ; No predecessors!
  br label %115, !dbg !387

; <label>:115:                                    ; preds = %114
  br label %116

; <label>:116:                                    ; preds = %115, %113, %25
  %117 = load i32, i32* %5, align 4, !dbg !389
  ret i32 %117, !dbg !389
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_U_large_b_e(double, double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !390 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca double, align 8
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca double, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca double, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca double, align 8
  %33 = alloca %struct.gsl_sf_result_struct, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !394, metadata !60), !dbg !395
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !396, metadata !60), !dbg !397
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !398, metadata !60), !dbg !399
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !400, metadata !60), !dbg !401
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !402, metadata !60), !dbg !403
  call void @llvm.dbg.declare(metadata double* %12, metadata !404, metadata !60), !dbg !405
  %49 = load double, double* %8, align 8, !dbg !406
  %50 = call double @floor(double %49) #1, !dbg !407
  store double %50, double* %12, align 8, !dbg !405
  call void @llvm.dbg.declare(metadata double* %13, metadata !408, metadata !60), !dbg !409
  %51 = load double, double* %8, align 8, !dbg !410
  %52 = load double, double* %12, align 8, !dbg !411
  %53 = fsub double %51, %52, !dbg !412
  call void @fSubHandler(double %51, double %52, double %53, i64 94406070509720, i64 94406070510072, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070510480, i32 135, i32 18), !dbg !409
  store double %53, double* %13, align 8, !dbg !409
  %54 = load double, double* %13, align 8, !dbg !413
  %55 = call double @fabs(double %54) #1, !dbg !415
  %56 = fcmp olt double %55, 0x3E50000000000000, !dbg !416
  %57 = call i1 @fCmpInstHandler(double %55, double 0x3E50000000000000, i1 %56, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070513568, i32 137, i32 16), !dbg !417
  br i1 %57, label %58, label %178, !dbg !417

; <label>:58:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata double* %14, metadata !418, metadata !60), !dbg !420
  call void @llvm.dbg.declare(metadata double* %15, metadata !421, metadata !60), !dbg !422
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !423, metadata !60), !dbg !424
  %59 = load double, double* %8, align 8, !dbg !425
  %60 = fcmp ogt double %59, 1.000000e+00, !dbg !427
  %61 = call i1 @fCmpInstHandler(double %59, double 1.000000e+00, i1 %60, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070518320, i32 141, i32 10), !dbg !428
  br i1 %61, label %62, label %101, !dbg !428

; <label>:62:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata double* %17, metadata !429, metadata !60), !dbg !431
  %63 = load double, double* %8, align 8, !dbg !432
  %64 = fsub double 1.000000e+00, %63, !dbg !433
  call void @fSubHandler(double 1.000000e+00, double %63, double %64, i64 0, i64 94406070520456, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070520864, i32 142, i32 24), !dbg !434
  %65 = load double, double* %9, align 8, !dbg !434
  %66 = call double @log(double %65) #5, !dbg !435
  call void @callOneArgHandler(i32 12, double %65, double %66, i64 94406070521224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070521968, i32 142, i32 28), !dbg !436
  %67 = fmul double %64, %66, !dbg !436
  call void @fMulHandler(double %64, double %66, double %67, i64 94406070520864, i64 94406070521968, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070522480, i32 142, i32 27), !dbg !431
  store double %67, double* %17, align 8, !dbg !431
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !437, metadata !60), !dbg !438
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !439, metadata !60), !dbg !440
  %68 = load double, double* %8, align 8, !dbg !441
  %69 = fsub double %68, 1.000000e+00, !dbg !442
  call void @fSubHandler(double %68, double 1.000000e+00, double %69, i64 94406070526808, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070527216, i32 145, i32 25), !dbg !443
  %70 = call i32 @gsl_sf_lngamma_e(double %69, %struct.gsl_sf_result_struct* %18), !dbg !443
  %71 = load double, double* %7, align 8, !dbg !444
  %72 = call i32 @gsl_sf_lngamma_e(double %71, %struct.gsl_sf_result_struct* %19), !dbg !445
  %73 = load double, double* %17, align 8, !dbg !446
  %74 = load double, double* %9, align 8, !dbg !447
  %75 = fadd double %73, %74, !dbg !448
  call void @fAddHandler(double %73, double %74, double %75, i64 94406070529400, i64 94406070529752, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070530160, i32 147, i32 23), !dbg !449
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !449
  %77 = load double, double* %76, align 8, !dbg !449
  %78 = fadd double %75, %77, !dbg !450
  call void @fAddHandler(double %75, double %77, double %78, i64 94406070530160, i64 94406070531000, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070532672, i32 147, i32 27), !dbg !451
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !451
  %80 = load double, double* %79, align 8, !dbg !451
  %81 = fsub double %78, %80, !dbg !452
  call void @fSubHandler(double %78, double %80, double %81, i64 94406070532672, i64 94406070533512, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070535184, i32 147, i32 40), !dbg !453
  store double %81, double* %14, align 8, !dbg !453
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !454
  %83 = load double, double* %82, align 8, !dbg !454
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !455
  %85 = load double, double* %84, align 8, !dbg !455
  %86 = fadd double %83, %85, !dbg !456
  call void @fAddHandler(double %83, double %85, double %86, i64 94406070536440, i64 94406070538536, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070540208, i32 148, i32 30), !dbg !457
  %87 = load double, double* %9, align 8, !dbg !457
  %88 = call double @fabs(double %87) #1, !dbg !458
  %89 = load double, double* %17, align 8, !dbg !459
  %90 = call double @fabs(double %89) #1, !dbg !460
  %91 = fadd double %88, %90, !dbg !462
  call void @fAddHandler(double %88, double %90, double %91, i64 94406070541072, i64 94406070542000, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070542480, i32 148, i32 70), !dbg !463
  %92 = fmul double 0x3CB0000000000000, %91, !dbg !463
  call void @fMulHandler(double 0x3CB0000000000000, double %91, double %92, i64 0, i64 94406070542480, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070542896, i32 148, i32 59), !dbg !464
  %93 = fadd double %86, %92, !dbg !464
  call void @fAddHandler(double %86, double %92, double %93, i64 94406070540208, i64 94406070542896, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070543312, i32 148, i32 41), !dbg !465
  store double %93, double* %15, align 8, !dbg !465
  %94 = load double, double* %7, align 8, !dbg !466
  %95 = fsub double 1.000000e+00, %94, !dbg !467
  call void @fSubHandler(double 1.000000e+00, double %94, double %95, i64 0, i64 94406070544120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070544560, i32 149, i32 38), !dbg !468
  %96 = load double, double* %8, align 8, !dbg !468
  %97 = fsub double 2.000000e+00, %96, !dbg !469
  call void @fSubHandler(double 2.000000e+00, double %96, double %97, i64 0, i64 94406070544920, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070545360, i32 149, i32 45), !dbg !470
  %98 = load double, double* %9, align 8, !dbg !470
  %99 = fsub double -0.000000e+00, %98, !dbg !471
  call void @fSubHandler(double -0.000000e+00, double %98, double %99, i64 0, i64 94406070545720, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070546192, i32 149, i32 49), !dbg !472
  %100 = call i32 @gsl_sf_hyperg_1F1_large_b_e(double %95, double %97, double %99, %struct.gsl_sf_result_struct* %16), !dbg !472
  br label %124, !dbg !473

; <label>:101:                                    ; preds = %58
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !474, metadata !60), !dbg !476
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !477, metadata !60), !dbg !478
  %102 = load double, double* %8, align 8, !dbg !479
  %103 = fsub double 1.000000e+00, %102, !dbg !480
  call void @fSubHandler(double 1.000000e+00, double %102, double %103, i64 0, i64 94406070549880, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070550288, i32 154, i32 27), !dbg !481
  %104 = call i32 @gsl_sf_lngamma_e(double %103, %struct.gsl_sf_result_struct* %20), !dbg !481
  %105 = load double, double* %7, align 8, !dbg !482
  %106 = fadd double 1.000000e+00, %105, !dbg !483
  call void @fAddHandler(double 1.000000e+00, double %105, double %106, i64 0, i64 94406070551208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070551616, i32 155, i32 27), !dbg !484
  %107 = load double, double* %8, align 8, !dbg !484
  %108 = fsub double %106, %107, !dbg !485
  call void @fSubHandler(double %106, double %107, double %108, i64 94406070551616, i64 94406070551976, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070552384, i32 155, i32 29), !dbg !486
  %109 = call i32 @gsl_sf_lngamma_e(double %108, %struct.gsl_sf_result_struct* %21), !dbg !486
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !487
  %111 = load double, double* %110, align 8, !dbg !487
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !488
  %113 = load double, double* %112, align 8, !dbg !488
  %114 = fsub double %111, %113, !dbg !489
  call void @fSubHandler(double %111, double %113, double %114, i64 94406070553752, i64 94406070555848, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070557520, i32 156, i32 30), !dbg !490
  store double %114, double* %14, align 8, !dbg !490
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !491
  %116 = load double, double* %115, align 8, !dbg !491
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !492
  %118 = load double, double* %117, align 8, !dbg !492
  %119 = fadd double %116, %118, !dbg !493
  call void @fAddHandler(double %116, double %118, double %119, i64 94406070558776, i64 94406070560872, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070562544, i32 157, i32 30), !dbg !494
  store double %119, double* %15, align 8, !dbg !494
  %120 = load double, double* %7, align 8, !dbg !495
  %121 = load double, double* %8, align 8, !dbg !496
  %122 = load double, double* %9, align 8, !dbg !497
  %123 = call i32 @gsl_sf_hyperg_1F1_large_b_e(double %120, double %121, double %122, %struct.gsl_sf_result_struct* %16), !dbg !498
  br label %124

; <label>:124:                                    ; preds = %101, %62
  %125 = load double, double* %14, align 8, !dbg !499
  %126 = fcmp ogt double %125, 0x4085DE42FEFA39EF, !dbg !501
  %127 = call i1 @fCmpInstHandler(double %125, double 0x4085DE42FEFA39EF, i1 %126, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070565584, i32 161, i32 18), !dbg !502
  br i1 %127, label %128, label %141, !dbg !502

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !503
  %130 = load double, double* %129, align 8, !dbg !503
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !505
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !506
  store double %130, double* %132, align 8, !dbg !507
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !508
  %134 = load double, double* %133, align 8, !dbg !508
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !509
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 1, !dbg !510
  store double %134, double* %136, align 8, !dbg !511
  %137 = load double, double* %14, align 8, !dbg !512
  %138 = load double*, double** %11, align 8, !dbg !513
  store double %137, double* %138, align 8, !dbg !514
  br label %139, !dbg !515, !llvm.loop !516

; <label>:139:                                    ; preds = %128
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 165, i32 16), !dbg !517
  store i32 16, i32* %6, align 4, !dbg !517
  br label %408, !dbg !517
                                                  ; No predecessors!
  br label %177, !dbg !520

; <label>:141:                                    ; preds = %124
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !521, metadata !60), !dbg !523
  call void @llvm.dbg.declare(metadata i32* %23, metadata !524, metadata !60), !dbg !525
  %142 = load double, double* %14, align 8, !dbg !526
  %143 = load double, double* %15, align 8, !dbg !527
  %144 = call i32 @gsl_sf_exp_err_e(double %142, double %143, %struct.gsl_sf_result_struct* %22), !dbg !528
  store i32 %144, i32* %23, align 4, !dbg !525
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !529
  %146 = load double, double* %145, align 8, !dbg !529
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !530
  %148 = load double, double* %147, align 8, !dbg !530
  %149 = fmul double %146, %148, !dbg !531
  call void @fMulHandler(double %146, double %148, double %149, i64 94406070586408, i64 94406070588504, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070590176, i32 170, i32 31), !dbg !532
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !532
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !533
  store double %149, double* %151, align 8, !dbg !534
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !535
  %153 = load double, double* %152, align 8, !dbg !535
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !536
  %155 = load double, double* %154, align 8, !dbg !536
  %156 = fmul double %153, %155, !dbg !537
  call void @fMulHandler(double %153, double %155, double %156, i64 94406070592264, i64 94406070594360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070596032, i32 171, i32 31), !dbg !538
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !538
  %158 = load double, double* %157, align 8, !dbg !538
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !539
  %160 = load double, double* %159, align 8, !dbg !539
  %161 = call double @fabs(double %160) #1, !dbg !540
  %162 = fmul double %158, %161, !dbg !541
  call void @fMulHandler(double %158, double %161, double %162, i64 94406070596872, i64 94406070600704, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070601184, i32 171, i32 50), !dbg !542
  %163 = fadd double %156, %162, !dbg !542
  call void @fAddHandler(double %156, double %162, double %163, i64 94406070596032, i64 94406070601184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070601600, i32 171, i32 39), !dbg !543
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !543
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 1, !dbg !544
  store double %163, double* %165, align 8, !dbg !545
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !546
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 0, !dbg !547
  %168 = load double, double* %167, align 8, !dbg !547
  %169 = call double @fabs(double %168) #1, !dbg !548
  %170 = fmul double 0x3CC0000000000000, %169, !dbg !549
  call void @fMulHandler(double 0x3CC0000000000000, double %169, double %170, i64 0, i64 94406070605808, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070606288, i32 172, i32 44), !dbg !550
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !550
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !551
  %173 = load double, double* %172, align 8, !dbg !552
  %174 = fadd double %173, %170, !dbg !552
  call void @fAddHandler(double %173, double %170, double %174, i64 94406070607512, i64 94406070606288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070607920, i32 172, i32 19), !dbg !552
  store double %174, double* %172, align 8, !dbg !552
  %175 = load double*, double** %11, align 8, !dbg !553
  store double 0.000000e+00, double* %175, align 8, !dbg !554
  %176 = load i32, i32* %23, align 4, !dbg !555
  store i32 %176, i32* %6, align 4, !dbg !556
  br label %408, !dbg !556

; <label>:177:                                    ; preds = %140
  br label %408, !dbg !557

; <label>:178:                                    ; preds = %5
  call void @llvm.dbg.declare(metadata double* %24, metadata !558, metadata !60), !dbg !560
  %179 = load double, double* %8, align 8, !dbg !561
  %180 = fsub double 1.000000e+00, %179, !dbg !562
  call void @fSubHandler(double 1.000000e+00, double %179, double %180, i64 0, i64 94406070614376, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070614784, i32 178, i32 26), !dbg !563
  %181 = load double, double* %9, align 8, !dbg !563
  %182 = call double @log(double %181) #5, !dbg !564
  call void @callOneArgHandler(i32 12, double %181, double %182, i64 94406070615144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070615616, i32 178, i32 30), !dbg !565
  %183 = fmul double %180, %182, !dbg !565
  call void @fMulHandler(double %180, double %182, double %183, i64 94406070614784, i64 94406070615616, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070616096, i32 178, i32 29), !dbg !560
  store double %183, double* %24, align 8, !dbg !560
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !566, metadata !60), !dbg !567
  call void @llvm.dbg.declare(metadata double* %26, metadata !568, metadata !60), !dbg !569
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !570, metadata !60), !dbg !571
  call void @llvm.dbg.declare(metadata double* %28, metadata !572, metadata !60), !dbg !573
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !574, metadata !60), !dbg !575
  call void @llvm.dbg.declare(metadata double* %30, metadata !576, metadata !60), !dbg !577
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !578, metadata !60), !dbg !579
  call void @llvm.dbg.declare(metadata double* %32, metadata !580, metadata !60), !dbg !581
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %33, metadata !582, metadata !60), !dbg !583
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !584, metadata !60), !dbg !585
  call void @llvm.dbg.declare(metadata double* %35, metadata !586, metadata !60), !dbg !587
  call void @llvm.dbg.declare(metadata double* %36, metadata !588, metadata !60), !dbg !589
  call void @llvm.dbg.declare(metadata double* %37, metadata !590, metadata !60), !dbg !591
  call void @llvm.dbg.declare(metadata double* %38, metadata !592, metadata !60), !dbg !593
  call void @llvm.dbg.declare(metadata double* %39, metadata !594, metadata !60), !dbg !595
  call void @llvm.dbg.declare(metadata double* %40, metadata !596, metadata !60), !dbg !597
  %184 = load double, double* %7, align 8, !dbg !598
  %185 = load double, double* %8, align 8, !dbg !599
  %186 = load double, double* %9, align 8, !dbg !600
  %187 = call i32 @gsl_sf_hyperg_1F1_large_b_e(double %184, double %185, double %186, %struct.gsl_sf_result_struct* %33), !dbg !601
  %188 = load double, double* %7, align 8, !dbg !602
  %189 = fsub double 1.000000e+00, %188, !dbg !603
  call void @fSubHandler(double 1.000000e+00, double %188, double %189, i64 0, i64 94406070641448, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070641856, i32 188, i32 36), !dbg !604
  %190 = load double, double* %8, align 8, !dbg !604
  %191 = fsub double 2.000000e+00, %190, !dbg !605
  call void @fSubHandler(double 2.000000e+00, double %190, double %191, i64 0, i64 94406070642216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070642656, i32 188, i32 43), !dbg !606
  %192 = load double, double* %9, align 8, !dbg !606
  %193 = call i32 @gsl_sf_hyperg_1F1_large_b_e(double %189, double %191, double %192, %struct.gsl_sf_result_struct* %34), !dbg !607
  %194 = load double, double* %8, align 8, !dbg !608
  %195 = fsub double 1.000000e+00, %194, !dbg !609
  call void @fSubHandler(double 1.000000e+00, double %194, double %195, i64 0, i64 94406070644008, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070644416, i32 190, i32 29), !dbg !610
  %196 = call i32 @gsl_sf_lngamma_sgn_e(double %195, %struct.gsl_sf_result_struct* %25, double* %26), !dbg !610
  %197 = load double, double* %7, align 8, !dbg !611
  %198 = fadd double 1.000000e+00, %197, !dbg !612
  call void @fAddHandler(double 1.000000e+00, double %197, double %198, i64 0, i64 94406070645688, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070646128, i32 191, i32 29), !dbg !613
  %199 = load double, double* %8, align 8, !dbg !613
  %200 = fsub double %198, %199, !dbg !614
  call void @fSubHandler(double %198, double %199, double %200, i64 94406070646128, i64 94406070646488, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070646896, i32 191, i32 31), !dbg !615
  %201 = call i32 @gsl_sf_lngamma_sgn_e(double %200, %struct.gsl_sf_result_struct* %27, double* %28), !dbg !615
  %202 = load double, double* %8, align 8, !dbg !616
  %203 = fsub double %202, 1.000000e+00, !dbg !617
  call void @fSubHandler(double %202, double 1.000000e+00, double %203, i64 94406070647928, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070648336, i32 193, i32 27), !dbg !618
  %204 = call i32 @gsl_sf_lngamma_sgn_e(double %203, %struct.gsl_sf_result_struct* %29, double* %30), !dbg !618
  %205 = load double, double* %7, align 8, !dbg !619
  %206 = call i32 @gsl_sf_lngamma_sgn_e(double %205, %struct.gsl_sf_result_struct* %31, double* %32), !dbg !620
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !621
  %208 = load double, double* %207, align 8, !dbg !621
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !622
  %210 = load double, double* %209, align 8, !dbg !622
  %211 = fsub double %208, %210, !dbg !623
  call void @fSubHandler(double %208, double %210, double %211, i64 94406070650648, i64 94406070652744, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070654416, i32 196, i32 29), !dbg !624
  store double %211, double* %35, align 8, !dbg !624
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !625
  %213 = load double, double* %212, align 8, !dbg !625
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !626
  %215 = load double, double* %214, align 8, !dbg !626
  %216 = fadd double %213, %215, !dbg !627
  call void @fAddHandler(double %213, double %215, double %216, i64 94406070655672, i64 94406070657768, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070659440, i32 197, i32 29), !dbg !628
  store double %216, double* %37, align 8, !dbg !628
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !629
  %218 = load double, double* %217, align 8, !dbg !629
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !630
  %220 = load double, double* %219, align 8, !dbg !630
  %221 = fsub double %218, %220, !dbg !631
  call void @fSubHandler(double %218, double %220, double %221, i64 94406070660696, i64 94406070662792, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070664464, i32 198, i32 29), !dbg !632
  %222 = load double, double* %24, align 8, !dbg !632
  %223 = fsub double %221, %222, !dbg !633
  call void @fSubHandler(double %221, double %222, double %223, i64 94406070664464, i64 94406070664856, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070665264, i32 198, i32 40), !dbg !634
  %224 = load double, double* %9, align 8, !dbg !634
  %225 = fsub double %223, %224, !dbg !635
  call void @fSubHandler(double %223, double %224, double %225, i64 94406070665264, i64 94406070665656, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070666064, i32 198, i32 50), !dbg !636
  store double %225, double* %36, align 8, !dbg !636
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !637
  %227 = load double, double* %226, align 8, !dbg !637
  %228 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !638
  %229 = load double, double* %228, align 8, !dbg !638
  %230 = fadd double %227, %229, !dbg !639
  call void @fAddHandler(double %227, double %229, double %230, i64 94406070667320, i64 94406070669416, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070671088, i32 199, i32 29), !dbg !640
  %231 = load double, double* %24, align 8, !dbg !640
  %232 = call double @fabs(double %231) #1, !dbg !641
  %233 = load double, double* %9, align 8, !dbg !642
  %234 = call double @fabs(double %233) #1, !dbg !643
  %235 = fadd double %232, %234, !dbg !645
  call void @fAddHandler(double %232, double %234, double %235, i64 94406070671952, i64 94406070672880, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070673360, i32 199, i32 74), !dbg !646
  %236 = fmul double 0x3CB0000000000000, %235, !dbg !646
  call void @fMulHandler(double 0x3CB0000000000000, double %235, double %236, i64 0, i64 94406070673360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070673776, i32 199, i32 58), !dbg !647
  %237 = fadd double %230, %236, !dbg !647
  call void @fAddHandler(double %230, double %236, double %237, i64 94406070671088, i64 94406070673776, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070674192, i32 199, i32 40), !dbg !648
  store double %237, double* %38, align 8, !dbg !648
  %238 = load double, double* %26, align 8, !dbg !649
  %239 = load double, double* %28, align 8, !dbg !650
  %240 = fmul double %238, %239, !dbg !651
  call void @fMulHandler(double %238, double %239, double %240, i64 94406070675000, i64 94406070675384, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070675792, i32 200, i32 22), !dbg !652
  store double %240, double* %39, align 8, !dbg !652
  %241 = load double, double* %30, align 8, !dbg !653
  %242 = load double, double* %32, align 8, !dbg !654
  %243 = fmul double %241, %242, !dbg !655
  call void @fMulHandler(double %241, double %242, double %243, i64 94406070676600, i64 94406070676984, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070677392, i32 201, i32 22), !dbg !656
  store double %243, double* %40, align 8, !dbg !656
  %244 = load double, double* %35, align 8, !dbg !657
  %245 = fcmp ogt double %244, 0x4085DE42FEFA39EF, !dbg !659
  %246 = call i1 @fCmpInstHandler(double %244, double 0x4085DE42FEFA39EF, i1 %245, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070678608, i32 203, i32 19), !dbg !660
  br i1 %246, label %251, label %247, !dbg !660

; <label>:247:                                    ; preds = %178
  %248 = load double, double* %36, align 8, !dbg !661
  %249 = fcmp ogt double %248, 0x4085DE42FEFA39EF, !dbg !663
  %250 = call i1 @fCmpInstHandler(double %248, double 0x4085DE42FEFA39EF, i1 %249, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070680064, i32 203, i32 56), !dbg !664
  br i1 %250, label %251, label %342, !dbg !664

; <label>:251:                                    ; preds = %247, %178
  call void @llvm.dbg.declare(metadata double* %41, metadata !665, metadata !60), !dbg !667
  %252 = load double, double* %35, align 8, !dbg !668
  %253 = load double, double* %36, align 8, !dbg !668
  %254 = fcmp ogt double %252, %253, !dbg !668
  %255 = call i1 @fCmpInstHandler(double %252, double %253, i1 %254, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070684112, i32 204, i32 30), !dbg !668
  br i1 %255, label %256, label %258, !dbg !668

; <label>:256:                                    ; preds = %251
  %257 = load double, double* %35, align 8, !dbg !669
  br label %260, !dbg !669

; <label>:258:                                    ; preds = %251
  %259 = load double, double* %36, align 8, !dbg !671
  br label %260, !dbg !671

; <label>:260:                                    ; preds = %258, %256
  %261 = phi double [ %257, %256 ], [ %259, %258 ], !dbg !673
  store double %261, double* %41, align 8, !dbg !675
  call void @llvm.dbg.declare(metadata double* %42, metadata !676, metadata !60), !dbg !677
  %262 = load double, double* %37, align 8, !dbg !678
  %263 = load double, double* %38, align 8, !dbg !678
  %264 = fcmp ogt double %262, %263, !dbg !678
  %265 = call i1 @fCmpInstHandler(double %262, double %263, i1 %264, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070570784, i32 205, i32 30), !dbg !678
  br i1 %265, label %266, label %268, !dbg !678

; <label>:266:                                    ; preds = %260
  %267 = load double, double* %37, align 8, !dbg !679
  br label %270, !dbg !679

; <label>:268:                                    ; preds = %260
  %269 = load double, double* %38, align 8, !dbg !680
  br label %270, !dbg !680

; <label>:270:                                    ; preds = %268, %266
  %271 = phi double [ %267, %266 ], [ %269, %268 ], !dbg !681
  store double %271, double* %42, align 8, !dbg !682
  call void @llvm.dbg.declare(metadata double* %43, metadata !683, metadata !60), !dbg !684
  %272 = load double, double* %35, align 8, !dbg !685
  %273 = load double, double* %41, align 8, !dbg !686
  %274 = fsub double %272, %273, !dbg !687
  call void @fSubHandler(double %272, double %273, double %274, i64 94406070701288, i64 94406070701640, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070702048, i32 206, i32 31), !dbg !684
  store double %274, double* %43, align 8, !dbg !684
  call void @llvm.dbg.declare(metadata double* %44, metadata !688, metadata !60), !dbg !689
  %275 = load double, double* %36, align 8, !dbg !690
  %276 = load double, double* %41, align 8, !dbg !691
  %277 = fsub double %275, %276, !dbg !692
  call void @fSubHandler(double %275, double %276, double %277, i64 94406070705240, i64 94406070705592, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070706000, i32 207, i32 31), !dbg !689
  store double %277, double* %44, align 8, !dbg !689
  call void @llvm.dbg.declare(metadata double* %45, metadata !693, metadata !60), !dbg !694
  %278 = load double, double* %39, align 8, !dbg !695
  %279 = load double, double* %43, align 8, !dbg !696
  %280 = call double @exp(double %279) #5, !dbg !697
  call void @callOneArgHandler(i32 11, double %279, double %280, i64 94406070709544, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070710288, i32 208, i32 27), !dbg !698
  %281 = fmul double %278, %280, !dbg !698
  call void @fMulHandler(double %278, double %280, double %281, i64 94406070709192, i64 94406070710288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070710800, i32 208, i32 26), !dbg !694
  store double %281, double* %45, align 8, !dbg !694
  call void @llvm.dbg.declare(metadata double* %46, metadata !699, metadata !60), !dbg !700
  %282 = load double, double* %40, align 8, !dbg !701
  %283 = load double, double* %44, align 8, !dbg !702
  %284 = call double @exp(double %283) #5, !dbg !703
  call void @callOneArgHandler(i32 11, double %283, double %284, i64 94406070714392, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070714864, i32 209, i32 27), !dbg !704
  %285 = fmul double %282, %284, !dbg !704
  call void @fMulHandler(double %282, double %284, double %285, i64 94406070714040, i64 94406070714864, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070715344, i32 209, i32 26), !dbg !700
  store double %285, double* %46, align 8, !dbg !700
  %286 = load double, double* %45, align 8, !dbg !705
  %287 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !706
  %288 = load double, double* %287, align 8, !dbg !706
  %289 = fmul double %286, %288, !dbg !707
  call void @fMulHandler(double %286, double %288, double %289, i64 94406070717416, i64 94406070718248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070719920, i32 210, i32 24), !dbg !708
  %290 = load double, double* %46, align 8, !dbg !708
  %291 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !709
  %292 = load double, double* %291, align 8, !dbg !709
  %293 = fmul double %290, %292, !dbg !710
  call void @fMulHandler(double %290, double %292, double %293, i64 94406070720312, i64 94406070721144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070722816, i32 210, i32 36), !dbg !711
  %294 = fadd double %289, %293, !dbg !711
  call void @fAddHandler(double %289, double %293, double %294, i64 94406070719920, i64 94406070722816, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070723232, i32 210, i32 32), !dbg !712
  %295 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !712
  %296 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %295, i32 0, i32 0, !dbg !713
  store double %294, double* %296, align 8, !dbg !714
  %297 = load double, double* %45, align 8, !dbg !715
  %298 = call double @fabs(double %297) #1, !dbg !716
  %299 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !717
  %300 = load double, double* %299, align 8, !dbg !717
  %301 = fmul double %298, %300, !dbg !718
  call void @fMulHandler(double %298, double %300, double %301, i64 94406070725344, i64 94406070726248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070727920, i32 211, i32 30), !dbg !719
  %302 = load double, double* %46, align 8, !dbg !719
  %303 = call double @fabs(double %302) #1, !dbg !720
  %304 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !721
  %305 = load double, double* %304, align 8, !dbg !721
  %306 = fmul double %303, %305, !dbg !722
  call void @fMulHandler(double %303, double %305, double %306, i64 94406070728784, i64 94406070729688, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070731360, i32 211, i32 48), !dbg !723
  %307 = fadd double %301, %306, !dbg !723
  call void @fAddHandler(double %301, double %306, double %307, i64 94406070727920, i64 94406070731360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070731776, i32 211, i32 38), !dbg !724
  %308 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !724
  %309 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %308, i32 0, i32 1, !dbg !725
  store double %307, double* %309, align 8, !dbg !726
  %310 = load double, double* %42, align 8, !dbg !727
  %311 = call double @exp(double %310) #5, !dbg !728
  call void @callOneArgHandler(i32 11, double %310, double %311, i64 94406070733416, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070733888, i32 212, i32 40), !dbg !729
  %312 = fmul double 0x3CB0000000000000, %311, !dbg !729
  call void @fMulHandler(double 0x3CB0000000000000, double %311, double %312, i64 0, i64 94406070733888, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070734368, i32 212, i32 38), !dbg !730
  %313 = load double, double* %45, align 8, !dbg !730
  %314 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !731
  %315 = load double, double* %314, align 8, !dbg !731
  %316 = fmul double %313, %315, !dbg !732
  call void @fMulHandler(double %313, double %315, double %316, i64 94406070734760, i64 94406070735592, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070737264, i32 212, i32 69), !dbg !733
  %317 = call double @fabs(double %316) #1, !dbg !733
  %318 = load double, double* %46, align 8, !dbg !734
  %319 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !735
  %320 = load double, double* %319, align 8, !dbg !735
  %321 = fmul double %318, %320, !dbg !736
  call void @fMulHandler(double %318, double %320, double %321, i64 94406070738200, i64 94406070739032, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070740704, i32 212, i32 87), !dbg !737
  %322 = call double @fabs(double %321) #1, !dbg !737
  %323 = fadd double %317, %322, !dbg !738
  call void @fAddHandler(double %317, double %322, double %323, i64 94406070737744, i64 94406070741184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070741664, i32 212, i32 78), !dbg !739
  %324 = fmul double %312, %323, !dbg !739
  call void @fMulHandler(double %312, double %323, double %324, i64 94406070734368, i64 94406070741664, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070742080, i32 212, i32 59), !dbg !740
  %325 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !740
  %326 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %325, i32 0, i32 1, !dbg !741
  %327 = load double, double* %326, align 8, !dbg !742
  %328 = fadd double %327, %324, !dbg !742
  call void @fAddHandler(double %327, double %324, double %328, i64 94406070743304, i64 94406070742080, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070743712, i32 212, i32 19), !dbg !742
  store double %328, double* %326, align 8, !dbg !742
  %329 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !743
  %330 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %329, i32 0, i32 0, !dbg !744
  %331 = load double, double* %330, align 8, !dbg !744
  %332 = call double @fabs(double %331) #1, !dbg !745
  %333 = fmul double 0x3CC0000000000000, %332, !dbg !746
  call void @fMulHandler(double 0x3CC0000000000000, double %332, double %333, i64 0, i64 94406070748064, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070748544, i32 213, i32 44), !dbg !747
  %334 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !747
  %335 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %334, i32 0, i32 1, !dbg !748
  %336 = load double, double* %335, align 8, !dbg !749
  %337 = fadd double %336, %333, !dbg !749
  call void @fAddHandler(double %336, double %333, double %337, i64 94406070749768, i64 94406070748544, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070750176, i32 213, i32 19), !dbg !749
  store double %337, double* %335, align 8, !dbg !749
  %338 = load double, double* %41, align 8, !dbg !750
  %339 = load double*, double** %11, align 8, !dbg !751
  store double %338, double* %339, align 8, !dbg !752
  br label %340, !dbg !753, !llvm.loop !754

; <label>:340:                                    ; preds = %270
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 215, i32 16), !dbg !755
  store i32 16, i32* %6, align 4, !dbg !755
  br label %408, !dbg !755
                                                  ; No predecessors!
  br label %407, !dbg !758

; <label>:342:                                    ; preds = %247
  call void @llvm.dbg.declare(metadata double* %47, metadata !759, metadata !60), !dbg !761
  %343 = load double, double* %39, align 8, !dbg !762
  %344 = load double, double* %35, align 8, !dbg !763
  %345 = call double @exp(double %344) #5, !dbg !764
  call void @callOneArgHandler(i32 11, double %344, double %345, i64 94406070758328, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070758800, i32 218, i32 26), !dbg !765
  %346 = fmul double %343, %345, !dbg !765
  call void @fMulHandler(double %343, double %345, double %346, i64 94406070757976, i64 94406070758800, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070759280, i32 218, i32 25), !dbg !761
  store double %346, double* %47, align 8, !dbg !761
  call void @llvm.dbg.declare(metadata double* %48, metadata !766, metadata !60), !dbg !767
  %347 = load double, double* %40, align 8, !dbg !768
  %348 = load double, double* %36, align 8, !dbg !769
  %349 = call double @exp(double %348) #5, !dbg !770
  call void @callOneArgHandler(i32 11, double %348, double %349, i64 94406070762824, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070763296, i32 219, i32 26), !dbg !771
  %350 = fmul double %347, %349, !dbg !771
  call void @fMulHandler(double %347, double %349, double %350, i64 94406070762472, i64 94406070763296, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070763776, i32 219, i32 25), !dbg !767
  store double %350, double* %48, align 8, !dbg !767
  %351 = load double, double* %47, align 8, !dbg !772
  %352 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !773
  %353 = load double, double* %352, align 8, !dbg !773
  %354 = fmul double %351, %353, !dbg !774
  call void @fMulHandler(double %351, double %353, double %354, i64 94406070765848, i64 94406070766680, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070768352, i32 220, i32 24), !dbg !775
  %355 = load double, double* %48, align 8, !dbg !775
  %356 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !776
  %357 = load double, double* %356, align 8, !dbg !776
  %358 = fmul double %355, %357, !dbg !777
  call void @fMulHandler(double %355, double %357, double %358, i64 94406070768744, i64 94406070769576, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070771248, i32 220, i32 36), !dbg !778
  %359 = fadd double %354, %358, !dbg !778
  call void @fAddHandler(double %354, double %358, double %359, i64 94406070768352, i64 94406070771248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070771664, i32 220, i32 32), !dbg !779
  %360 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !779
  %361 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %360, i32 0, i32 0, !dbg !780
  store double %359, double* %361, align 8, !dbg !781
  %362 = load double, double* %47, align 8, !dbg !782
  %363 = call double @fabs(double %362) #1, !dbg !783
  %364 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !784
  %365 = load double, double* %364, align 8, !dbg !784
  %366 = fmul double %363, %365, !dbg !785
  call void @fMulHandler(double %363, double %365, double %366, i64 94406070773776, i64 94406070774680, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070776352, i32 221, i32 31), !dbg !786
  %367 = load double, double* %48, align 8, !dbg !786
  %368 = call double @fabs(double %367) #1, !dbg !787
  %369 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !789
  %370 = load double, double* %369, align 8, !dbg !789
  %371 = fmul double %368, %370, !dbg !790
  call void @fMulHandler(double %368, double %370, double %371, i64 94406070777216, i64 94406070778120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070779792, i32 221, i32 50), !dbg !791
  %372 = fadd double %366, %371, !dbg !791
  call void @fAddHandler(double %366, double %371, double %372, i64 94406070776352, i64 94406070779792, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070780208, i32 221, i32 40), !dbg !792
  %373 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !792
  %374 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %373, i32 0, i32 1, !dbg !793
  store double %372, double* %374, align 8, !dbg !794
  %375 = load double, double* %37, align 8, !dbg !795
  %376 = call double @exp(double %375) #5, !dbg !796
  call void @callOneArgHandler(i32 11, double %375, double %376, i64 94406070781848, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070782320, i32 222, i32 41), !dbg !797
  %377 = load double, double* %47, align 8, !dbg !797
  %378 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !798
  %379 = load double, double* %378, align 8, !dbg !798
  %380 = fmul double %377, %379, !dbg !799
  call void @fMulHandler(double %377, double %379, double %380, i64 94406070782776, i64 94406070783608, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070785280, i32 222, i32 64), !dbg !800
  %381 = call double @fabs(double %380) #1, !dbg !800
  %382 = fmul double %376, %381, !dbg !801
  call void @fMulHandler(double %376, double %381, double %382, i64 94406070782320, i64 94406070785760, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070786240, i32 222, i32 56), !dbg !802
  %383 = load double, double* %38, align 8, !dbg !802
  %384 = call double @exp(double %383) #5, !dbg !803
  call void @callOneArgHandler(i32 11, double %383, double %384, i64 94406070786632, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070787104, i32 222, i32 75), !dbg !805
  %385 = load double, double* %48, align 8, !dbg !805
  %386 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !806
  %387 = load double, double* %386, align 8, !dbg !806
  %388 = fmul double %385, %387, !dbg !807
  call void @fMulHandler(double %385, double %387, double %388, i64 94406070787560, i64 94406070788392, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070790064, i32 222, i32 98), !dbg !808
  %389 = call double @fabs(double %388) #1, !dbg !808
  %390 = fmul double %384, %389, !dbg !810
  call void @fMulHandler(double %384, double %389, double %390, i64 94406070787104, i64 94406070790544, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070791024, i32 222, i32 90), !dbg !811
  %391 = fadd double %382, %390, !dbg !811
  call void @fAddHandler(double %382, double %390, double %391, i64 94406070786240, i64 94406070791024, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070791440, i32 222, i32 73), !dbg !812
  %392 = fmul double 0x3CB0000000000000, %391, !dbg !812
  call void @fMulHandler(double 0x3CB0000000000000, double %391, double %392, i64 0, i64 94406070791440, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070791856, i32 222, i32 38), !dbg !813
  %393 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !813
  %394 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %393, i32 0, i32 1, !dbg !814
  %395 = load double, double* %394, align 8, !dbg !815
  %396 = fadd double %395, %392, !dbg !815
  call void @fAddHandler(double %395, double %392, double %396, i64 94406070793080, i64 94406070791856, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070793488, i32 222, i32 19), !dbg !815
  store double %396, double* %394, align 8, !dbg !815
  %397 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !816
  %398 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %397, i32 0, i32 0, !dbg !817
  %399 = load double, double* %398, align 8, !dbg !817
  %400 = call double @fabs(double %399) #1, !dbg !818
  %401 = fmul double 0x3CC0000000000000, %400, !dbg !819
  call void @fMulHandler(double 0x3CC0000000000000, double %400, double %401, i64 0, i64 94406070797840, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070798320, i32 223, i32 44), !dbg !820
  %402 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !820
  %403 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %402, i32 0, i32 1, !dbg !821
  %404 = load double, double* %403, align 8, !dbg !822
  %405 = fadd double %404, %401, !dbg !822
  call void @fAddHandler(double %404, double %401, double %405, i64 94406070799544, i64 94406070798320, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94406070799952, i32 223, i32 19), !dbg !822
  store double %405, double* %403, align 8, !dbg !822
  %406 = load double*, double** %11, align 8, !dbg !823
  store double 0.000000e+00, double* %406, align 8, !dbg !824
  store i32 0, i32* %6, align 4, !dbg !825
  br label %408, !dbg !825

; <label>:407:                                    ; preds = %341
  br label %408

; <label>:408:                                    ; preds = %407, %342, %340, %177, %141, %139
  %409 = load i32, i32* %6, align 4, !dbg !826
  ret i32 %409, !dbg !826
}

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #3

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F0_series_e(double, double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !827 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca i32, align 4
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
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !830, metadata !60), !dbg !831
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !832, metadata !60), !dbg !833
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !834, metadata !60), !dbg !835
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !836, metadata !60), !dbg !837
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !838, metadata !60), !dbg !839
  call void @llvm.dbg.declare(metadata i32* %12, metadata !840, metadata !60), !dbg !842
  store i32 2000, i32* %12, align 4, !dbg !842
  call void @llvm.dbg.declare(metadata double* %13, metadata !843, metadata !60), !dbg !844
  %23 = load double, double* %7, align 8, !dbg !845
  store double %23, double* %13, align 8, !dbg !844
  call void @llvm.dbg.declare(metadata double* %14, metadata !846, metadata !60), !dbg !847
  %24 = load double, double* %8, align 8, !dbg !848
  store double %24, double* %14, align 8, !dbg !847
  call void @llvm.dbg.declare(metadata double* %15, metadata !849, metadata !60), !dbg !850
  store double 1.000000e+00, double* %15, align 8, !dbg !850
  call void @llvm.dbg.declare(metadata double* %16, metadata !851, metadata !60), !dbg !852
  store double 1.000000e+00, double* %16, align 8, !dbg !852
  call void @llvm.dbg.declare(metadata double* %17, metadata !853, metadata !60), !dbg !854
  store double 1.000000e+00, double* %17, align 8, !dbg !854
  call void @llvm.dbg.declare(metadata double* %18, metadata !855, metadata !60), !dbg !856
  store double 1.000000e+00, double* %18, align 8, !dbg !856
  call void @llvm.dbg.declare(metadata double* %19, metadata !857, metadata !60), !dbg !858
  store double 1.000000e+00, double* %19, align 8, !dbg !858
  call void @llvm.dbg.declare(metadata double* %20, metadata !859, metadata !60), !dbg !860
  store double 1.000000e+00, double* %20, align 8, !dbg !860
  br label %25, !dbg !861

; <label>:25:                                     ; preds = %118, %5
  %26 = load double, double* %18, align 8, !dbg !862
  %27 = load double, double* %16, align 8, !dbg !864
  %28 = call double @fabs(double %27) #1, !dbg !865
  %29 = fdiv double %26, %28, !dbg !866
  call void @fDivHandler(double %26, double %28, double %29, i64 94406070527864, i64 94406070839424, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070839904, i32 255, i32 16), !dbg !867
  %30 = fcmp ogt double %29, 0x3CB0000000000000, !dbg !867
  %31 = call i1 @fCmpInstHandler(double %29, double 0x3CB0000000000000, i1 %30, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070840320, i32 255, i32 27), !dbg !868
  br i1 %31, label %32, label %35, !dbg !868

; <label>:32:                                     ; preds = %25
  %33 = load double, double* %15, align 8, !dbg !869
  %34 = fcmp olt double %33, 2.000000e+03, !dbg !871
  br label %35

; <label>:35:                                     ; preds = %32, %25
  %36 = phi i1 [ false, %25 ], [ %34, %32 ]
  br i1 %36, label %37, label %119, !dbg !872

; <label>:37:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %21, metadata !874, metadata !60), !dbg !876
  %38 = load double, double* %13, align 8, !dbg !877
  %39 = load double, double* %14, align 8, !dbg !878
  %40 = load double, double* %15, align 8, !dbg !879
  %41 = fdiv double %39, %40, !dbg !880
  call void @fDivHandler(double %39, double %40, double %41, i64 94406070844536, i64 94406070844920, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070845328, i32 257, i32 24), !dbg !881
  %42 = load double, double* %9, align 8, !dbg !881
  %43 = fmul double %41, %42, !dbg !882
  call void @fMulHandler(double %41, double %42, double %43, i64 94406070845328, i64 94406070845720, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070846128, i32 257, i32 27), !dbg !883
  %44 = fmul double %38, %43, !dbg !883
  call void @fMulHandler(double %38, double %43, double %44, i64 94406070844184, i64 94406070846128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070846544, i32 257, i32 19), !dbg !876
  store double %44, double* %21, align 8, !dbg !876
  call void @llvm.dbg.declare(metadata double* %22, metadata !884, metadata !60), !dbg !885
  %45 = load double, double* %21, align 8, !dbg !886
  %46 = call double @fabs(double %45) #1, !dbg !887
  store double %46, double* %22, align 8, !dbg !885
  %47 = load double, double* %22, align 8, !dbg !888
  %48 = fcmp ogt double %47, 1.000000e+00, !dbg !890
  %49 = call i1 @fCmpInstHandler(double %47, double 1.000000e+00, i1 %48, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070852752, i32 260, i32 14), !dbg !891
  br i1 %49, label %50, label %66, !dbg !891

; <label>:50:                                     ; preds = %37
  %51 = load double, double* %19, align 8, !dbg !892
  %52 = load double, double* %22, align 8, !dbg !894
  %53 = fdiv double 0x7FEFFFFFFFFFFFFF, %52, !dbg !895
  call void @fDivHandler(double 0x7FEFFFFFFFFFFFFF, double %52, double %53, i64 0, i64 94406070854152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070854560, i32 260, i32 49), !dbg !896
  %54 = fcmp ogt double %51, %53, !dbg !896
  %55 = call i1 @fCmpInstHandler(double %51, double %53, i1 %54, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070854976, i32 260, i32 36), !dbg !897
  br i1 %55, label %56, label %66, !dbg !897

; <label>:56:                                     ; preds = %50
  %57 = load double, double* %16, align 8, !dbg !898
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !900
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !901
  store double %57, double* %59, align 8, !dbg !902
  %60 = load double, double* %16, align 8, !dbg !903
  %61 = call double @fabs(double %60) #1, !dbg !904
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !905
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !906
  store double %61, double* %63, align 8, !dbg !907
  br label %64, !dbg !908, !llvm.loop !909

; <label>:64:                                     ; preds = %56
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 263, i32 16), !dbg !910
  store i32 16, i32* %6, align 4, !dbg !910
  br label %136, !dbg !910
                                                  ; No predecessors!
  br label %66, !dbg !913

; <label>:66:                                     ; preds = %65, %50, %37
  %67 = load double, double* %21, align 8, !dbg !914
  %68 = load double, double* %17, align 8, !dbg !915
  %69 = fmul double %68, %67, !dbg !915
  call void @fMulHandler(double %68, double %67, double %69, i64 94406070863784, i64 94406070863464, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070864192, i32 266, i32 9), !dbg !915
  store double %69, double* %17, align 8, !dbg !915
  %70 = load double, double* %17, align 8, !dbg !916
  %71 = load double, double* %16, align 8, !dbg !917
  %72 = fadd double %71, %70, !dbg !917
  call void @fAddHandler(double %71, double %70, double %72, i64 94406070866360, i64 94406070865976, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070866768, i32 267, i32 9), !dbg !917
  store double %72, double* %16, align 8, !dbg !917
  %73 = load double, double* %17, align 8, !dbg !918
  %74 = call double @fabs(double %73) #1, !dbg !919
  store double %74, double* %18, align 8, !dbg !920
  %75 = load double, double* %18, align 8, !dbg !921
  %76 = load double, double* %20, align 8, !dbg !923
  %77 = fcmp ogt double %75, %76, !dbg !924
  %78 = call i1 @fCmpInstHandler(double %75, double %76, i1 %77, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070870688, i32 271, i32 16), !dbg !925
  br i1 %78, label %79, label %80, !dbg !925

; <label>:79:                                     ; preds = %66
  br label %119, !dbg !926

; <label>:80:                                     ; preds = %66
  %81 = load double, double* %18, align 8, !dbg !928
  store double %81, double* %20, align 8, !dbg !929
  %82 = load double, double* %18, align 8, !dbg !930
  %83 = load double, double* %19, align 8, !dbg !930
  %84 = fcmp ogt double %82, %83, !dbg !930
  %85 = call i1 @fCmpInstHandler(double %82, double %83, i1 %84, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070874912, i32 274, i32 20), !dbg !930
  br i1 %85, label %86, label %88, !dbg !930

; <label>:86:                                     ; preds = %80
  %87 = load double, double* %18, align 8, !dbg !931
  br label %90, !dbg !931

; <label>:88:                                     ; preds = %80
  %89 = load double, double* %19, align 8, !dbg !933
  br label %90, !dbg !933

; <label>:90:                                     ; preds = %88, %86
  %91 = phi double [ %87, %86 ], [ %89, %88 ], !dbg !935
  store double %91, double* %19, align 8, !dbg !937
  %92 = load double, double* %13, align 8, !dbg !938
  %93 = fadd double %92, 1.000000e+00, !dbg !938
  call void @fAddHandler(double %92, double 1.000000e+00, double %93, i64 94406070880344, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070880784, i32 276, i32 8), !dbg !938
  store double %93, double* %13, align 8, !dbg !938
  %94 = load double, double* %14, align 8, !dbg !939
  %95 = fadd double %94, 1.000000e+00, !dbg !939
  call void @fAddHandler(double %94, double 1.000000e+00, double %95, i64 94406070882568, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070882976, i32 277, i32 8), !dbg !939
  store double %95, double* %14, align 8, !dbg !939
  %96 = load double, double* %15, align 8, !dbg !940
  %97 = fadd double %96, 1.000000e+00, !dbg !940
  call void @fAddHandler(double %96, double 1.000000e+00, double %97, i64 94406070884760, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070885168, i32 278, i32 8), !dbg !940
  store double %97, double* %15, align 8, !dbg !940
  %98 = load double, double* %13, align 8, !dbg !941
  %99 = fcmp oeq double %98, 0.000000e+00, !dbg !943
  %100 = call i1 @fCmpInstHandler(double %98, double 0.000000e+00, i1 %99, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070887328, i32 280, i32 11), !dbg !944
  br i1 %100, label %105, label %101, !dbg !944

; <label>:101:                                    ; preds = %90
  %102 = load double, double* %14, align 8, !dbg !945
  %103 = fcmp oeq double %102, 0.000000e+00, !dbg !947
  %104 = call i1 @fCmpInstHandler(double %102, double 0.000000e+00, i1 %103, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070888784, i32 280, i32 24), !dbg !948
  br i1 %104, label %105, label %106, !dbg !948

; <label>:105:                                    ; preds = %101, %90
  br label %119, !dbg !949

; <label>:106:                                    ; preds = %101
  %107 = load i32, i32* %10, align 4, !dbg !951
  %108 = icmp sge i32 %107, 0, !dbg !953
  %109 = sext i32 %107 to i64, !dbg !954
  %110 = call i1 @iCmpInstHandler(i64 %109, i64 0, i1 %108, i32 39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070890416, i32 282, i32 16), !dbg !954
  br i1 %110, label %111, label %118, !dbg !954

; <label>:111:                                    ; preds = %106
  %112 = load double, double* %15, align 8, !dbg !955
  %113 = load i32, i32* %10, align 4, !dbg !957
  %114 = sitofp i32 %113 to double, !dbg !957
  %115 = fcmp oge double %112, %114, !dbg !958
  %116 = call i1 @fCmpInstHandler(double %112, double %114, i1 %115, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070893904, i32 282, i32 26), !dbg !959
  br i1 %116, label %117, label %118, !dbg !959

; <label>:117:                                    ; preds = %111
  br label %119, !dbg !960

; <label>:118:                                    ; preds = %111, %106
  br label %25, !dbg !962, !llvm.loop !964

; <label>:119:                                    ; preds = %117, %105, %79, %35
  %120 = load double, double* %16, align 8, !dbg !965
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !966
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !967
  store double %120, double* %122, align 8, !dbg !968
  %123 = load double, double* %15, align 8, !dbg !969
  %124 = fmul double 0x3CB0000000000000, %123, !dbg !970
  call void @fMulHandler(double 0x3CB0000000000000, double %123, double %124, i64 0, i64 94406070897368, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070897776, i32 286, i32 33), !dbg !971
  %125 = load double, double* %18, align 8, !dbg !971
  %126 = fadd double %124, %125, !dbg !972
  call void @fAddHandler(double %124, double %125, double %126, i64 94406070897776, i64 94406070898168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070898576, i32 286, i32 37), !dbg !973
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !973
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !974
  store double %126, double* %128, align 8, !dbg !975
  %129 = load double, double* %15, align 8, !dbg !976
  %130 = fcmp oge double %129, 2.000000e+03, !dbg !978
  %131 = call i1 @fCmpInstHandler(double %129, double 2.000000e+03, i1 %130, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94406070900656, i32 287, i32 8), !dbg !979
  br i1 %131, label %132, label %135, !dbg !979

; <label>:132:                                    ; preds = %119
  br label %133, !dbg !980, !llvm.loop !981

; <label>:133:                                    ; preds = %132
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 288, i32 11), !dbg !982
  store i32 11, i32* %6, align 4, !dbg !982
  br label %136, !dbg !982
                                                  ; No predecessors!
  br label %136, !dbg !985

; <label>:135:                                    ; preds = %119
  store i32 0, i32* %6, align 4, !dbg !987
  br label %136, !dbg !987

; <label>:136:                                    ; preds = %135, %134, %133, %64
  %137 = load i32, i32* %6, align 4, !dbg !988
  ret i32 %137, !dbg !988
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
!1 = !DIFile(filename: "hyperg.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_series_e", scope: !1, file: !1, line: 38, type: !46, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !49, !51}
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
!59 = !DILocalVariable(name: "a", arg: 1, scope: !45, file: !1, line: 38, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 38, column: 41, scope: !45)
!62 = !DILocalVariable(name: "b", arg: 2, scope: !45, file: !1, line: 38, type: !49)
!63 = !DILocation(line: 38, column: 57, scope: !45)
!64 = !DILocalVariable(name: "x", arg: 3, scope: !45, file: !1, line: 38, type: !49)
!65 = !DILocation(line: 38, column: 73, scope: !45)
!66 = !DILocalVariable(name: "result", arg: 4, scope: !45, file: !1, line: 39, type: !51)
!67 = !DILocation(line: 39, column: 47, scope: !45)
!68 = !DILocalVariable(name: "an", scope: !45, file: !1, line: 42, type: !50)
!69 = !DILocation(line: 42, column: 10, scope: !45)
!70 = !DILocation(line: 42, column: 16, scope: !45)
!71 = !DILocalVariable(name: "bn", scope: !45, file: !1, line: 43, type: !50)
!72 = !DILocation(line: 43, column: 10, scope: !45)
!73 = !DILocation(line: 43, column: 16, scope: !45)
!74 = !DILocalVariable(name: "n", scope: !45, file: !1, line: 44, type: !50)
!75 = !DILocation(line: 44, column: 10, scope: !45)
!76 = !DILocalVariable(name: "del", scope: !45, file: !1, line: 45, type: !50)
!77 = !DILocation(line: 45, column: 10, scope: !45)
!78 = !DILocalVariable(name: "abs_del", scope: !45, file: !1, line: 46, type: !50)
!79 = !DILocation(line: 46, column: 10, scope: !45)
!80 = !DILocalVariable(name: "max_abs_del", scope: !45, file: !1, line: 47, type: !50)
!81 = !DILocation(line: 47, column: 10, scope: !45)
!82 = !DILocalVariable(name: "sum_val", scope: !45, file: !1, line: 48, type: !50)
!83 = !DILocation(line: 48, column: 10, scope: !45)
!84 = !DILocalVariable(name: "sum_err", scope: !45, file: !1, line: 49, type: !50)
!85 = !DILocation(line: 49, column: 10, scope: !45)
!86 = !DILocation(line: 51, column: 3, scope: !45)
!87 = !DILocation(line: 51, column: 9, scope: !88)
!88 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 1)
!89 = !DILocation(line: 51, column: 22, scope: !88)
!90 = !DILocation(line: 51, column: 17, scope: !88)
!91 = !DILocation(line: 51, column: 16, scope: !88)
!92 = !DILocation(line: 51, column: 31, scope: !88)
!93 = !DILocation(line: 51, column: 3, scope: !88)
!94 = !DILocalVariable(name: "u", scope: !95, file: !1, line: 52, type: !50)
!95 = distinct !DILexicalBlock(scope: !45, file: !1, line: 51, column: 55)
!96 = !DILocation(line: 52, column: 12, scope: !95)
!97 = !DILocalVariable(name: "abs_u", scope: !95, file: !1, line: 52, type: !50)
!98 = !DILocation(line: 52, column: 15, scope: !95)
!99 = !DILocation(line: 54, column: 8, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 54, column: 8)
!101 = !DILocation(line: 54, column: 11, scope: !100)
!102 = !DILocation(line: 54, column: 8, scope: !95)
!103 = !DILocation(line: 55, column: 7, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 54, column: 19)
!105 = distinct !{!105, !103}
!106 = !DILocation(line: 55, column: 7, scope: !107)
!107 = !DILexicalBlockFile(scope: !108, file: !1, discriminator: 1)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 55, column: 7)
!109 = distinct !{!109, !110}
!110 = !DILocation(line: 55, column: 7, scope: !108)
!111 = !DILocation(line: 55, column: 7, scope: !112)
!112 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 2)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 55, column: 7)
!114 = !DILocation(line: 55, column: 7, scope: !115)
!115 = !DILexicalBlockFile(scope: !108, file: !1, discriminator: 3)
!116 = !DILocation(line: 56, column: 5, scope: !104)
!117 = !DILocation(line: 58, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !95, file: !1, line: 58, column: 8)
!119 = !DILocation(line: 58, column: 11, scope: !118)
!120 = !DILocation(line: 58, column: 8, scope: !95)
!121 = !DILocation(line: 59, column: 22, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 58, column: 19)
!123 = !DILocation(line: 59, column: 7, scope: !122)
!124 = !DILocation(line: 59, column: 15, scope: !122)
!125 = !DILocation(line: 59, column: 20, scope: !122)
!126 = !DILocation(line: 60, column: 22, scope: !122)
!127 = !DILocation(line: 60, column: 7, scope: !122)
!128 = !DILocation(line: 60, column: 15, scope: !122)
!129 = !DILocation(line: 60, column: 20, scope: !122)
!130 = !DILocation(line: 61, column: 46, scope: !122)
!131 = !DILocation(line: 61, column: 44, scope: !122)
!132 = !DILocation(line: 61, column: 55, scope: !122)
!133 = !DILocation(line: 61, column: 50, scope: !122)
!134 = !DILocation(line: 61, column: 48, scope: !122)
!135 = !DILocation(line: 61, column: 7, scope: !122)
!136 = !DILocation(line: 61, column: 15, scope: !122)
!137 = !DILocation(line: 61, column: 19, scope: !122)
!138 = !DILocation(line: 62, column: 7, scope: !122)
!139 = !DILocation(line: 65, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !95, file: !1, line: 65, column: 9)
!141 = !DILocation(line: 65, column: 11, scope: !140)
!142 = !DILocation(line: 65, column: 9, scope: !95)
!143 = !DILocation(line: 66, column: 22, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 65, column: 22)
!145 = !DILocation(line: 66, column: 7, scope: !144)
!146 = !DILocation(line: 66, column: 15, scope: !144)
!147 = !DILocation(line: 66, column: 20, scope: !144)
!148 = !DILocation(line: 67, column: 22, scope: !144)
!149 = !DILocation(line: 67, column: 7, scope: !144)
!150 = !DILocation(line: 67, column: 15, scope: !144)
!151 = !DILocation(line: 67, column: 20, scope: !144)
!152 = !DILocation(line: 68, column: 7, scope: !144)
!153 = distinct !{!153, !152}
!154 = !DILocation(line: 68, column: 7, scope: !155)
!155 = !DILexicalBlockFile(scope: !156, file: !1, discriminator: 1)
!156 = distinct !DILexicalBlock(scope: !144, file: !1, line: 68, column: 7)
!157 = !DILocation(line: 69, column: 5, scope: !144)
!158 = !DILocation(line: 71, column: 9, scope: !95)
!159 = !DILocation(line: 71, column: 14, scope: !95)
!160 = !DILocation(line: 71, column: 18, scope: !95)
!161 = !DILocation(line: 71, column: 21, scope: !95)
!162 = !DILocation(line: 71, column: 20, scope: !95)
!163 = !DILocation(line: 71, column: 16, scope: !95)
!164 = !DILocation(line: 71, column: 11, scope: !95)
!165 = !DILocation(line: 71, column: 7, scope: !95)
!166 = !DILocation(line: 72, column: 18, scope: !95)
!167 = !DILocation(line: 72, column: 13, scope: !95)
!168 = !DILocation(line: 72, column: 11, scope: !95)
!169 = !DILocation(line: 73, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !95, file: !1, line: 73, column: 8)
!171 = !DILocation(line: 73, column: 14, scope: !170)
!172 = !DILocation(line: 73, column: 20, scope: !170)
!173 = !DILocation(line: 73, column: 23, scope: !174)
!174 = !DILexicalBlockFile(scope: !170, file: !1, discriminator: 1)
!175 = !DILocation(line: 73, column: 49, scope: !174)
!176 = !DILocation(line: 73, column: 48, scope: !174)
!177 = !DILocation(line: 73, column: 35, scope: !174)
!178 = !DILocation(line: 73, column: 8, scope: !174)
!179 = !DILocation(line: 74, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !170, file: !1, line: 73, column: 56)
!181 = !DILocation(line: 74, column: 7, scope: !180)
!182 = !DILocation(line: 74, column: 15, scope: !180)
!183 = !DILocation(line: 74, column: 19, scope: !180)
!184 = !DILocation(line: 75, column: 26, scope: !180)
!185 = !DILocation(line: 75, column: 21, scope: !180)
!186 = !DILocation(line: 75, column: 7, scope: !180)
!187 = !DILocation(line: 75, column: 15, scope: !180)
!188 = !DILocation(line: 75, column: 19, scope: !180)
!189 = !DILocation(line: 76, column: 7, scope: !180)
!190 = distinct !{!190, !189}
!191 = !DILocation(line: 76, column: 7, scope: !192)
!192 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 1)
!193 = distinct !DILexicalBlock(scope: !180, file: !1, line: 76, column: 7)
!194 = !DILocation(line: 77, column: 5, scope: !180)
!195 = !DILocation(line: 78, column: 12, scope: !95)
!196 = !DILocation(line: 78, column: 9, scope: !95)
!197 = !DILocation(line: 79, column: 16, scope: !95)
!198 = !DILocation(line: 79, column: 13, scope: !95)
!199 = !DILocation(line: 80, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !95, file: !1, line: 80, column: 8)
!201 = !DILocation(line: 80, column: 8, scope: !200)
!202 = !DILocation(line: 80, column: 22, scope: !200)
!203 = !DILocation(line: 80, column: 8, scope: !95)
!204 = !DILocation(line: 81, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !1, line: 80, column: 35)
!206 = !DILocation(line: 81, column: 7, scope: !205)
!207 = !DILocation(line: 81, column: 15, scope: !205)
!208 = !DILocation(line: 81, column: 19, scope: !205)
!209 = !DILocation(line: 82, column: 26, scope: !205)
!210 = !DILocation(line: 82, column: 21, scope: !205)
!211 = !DILocation(line: 82, column: 7, scope: !205)
!212 = !DILocation(line: 82, column: 15, scope: !205)
!213 = !DILocation(line: 82, column: 19, scope: !205)
!214 = !DILocation(line: 83, column: 7, scope: !205)
!215 = distinct !{!215, !214}
!216 = !DILocation(line: 83, column: 7, scope: !217)
!217 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 1)
!218 = distinct !DILexicalBlock(scope: !205, file: !1, line: 83, column: 7)
!219 = !DILocation(line: 84, column: 5, scope: !205)
!220 = !DILocation(line: 86, column: 20, scope: !95)
!221 = !DILocation(line: 86, column: 15, scope: !95)
!222 = !DILocation(line: 86, column: 13, scope: !95)
!223 = !DILocation(line: 87, column: 31, scope: !95)
!224 = !DILocation(line: 87, column: 40, scope: !95)
!225 = !DILocation(line: 87, column: 19, scope: !95)
!226 = !DILocation(line: 87, column: 17, scope: !95)
!227 = !DILocation(line: 88, column: 36, scope: !95)
!228 = !DILocation(line: 88, column: 35, scope: !95)
!229 = !DILocation(line: 88, column: 13, scope: !95)
!230 = !DILocation(line: 90, column: 8, scope: !95)
!231 = !DILocation(line: 91, column: 8, scope: !95)
!232 = !DILocation(line: 92, column: 8, scope: !95)
!233 = !DILocation(line: 51, column: 3, scope: !234)
!234 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 2)
!235 = distinct !{!235, !86}
!236 = !DILocation(line: 95, column: 18, scope: !45)
!237 = !DILocation(line: 95, column: 3, scope: !45)
!238 = !DILocation(line: 95, column: 11, scope: !45)
!239 = !DILocation(line: 95, column: 16, scope: !45)
!240 = !DILocation(line: 96, column: 18, scope: !45)
!241 = !DILocation(line: 96, column: 3, scope: !45)
!242 = !DILocation(line: 96, column: 11, scope: !45)
!243 = !DILocation(line: 96, column: 16, scope: !45)
!244 = !DILocation(line: 97, column: 18, scope: !45)
!245 = !DILocation(line: 97, column: 3, scope: !45)
!246 = !DILocation(line: 97, column: 11, scope: !45)
!247 = !DILocation(line: 97, column: 15, scope: !45)
!248 = !DILocation(line: 98, column: 42, scope: !45)
!249 = !DILocation(line: 98, column: 40, scope: !45)
!250 = !DILocation(line: 98, column: 51, scope: !45)
!251 = !DILocation(line: 98, column: 46, scope: !45)
!252 = !DILocation(line: 98, column: 44, scope: !45)
!253 = !DILocation(line: 98, column: 3, scope: !45)
!254 = !DILocation(line: 98, column: 11, scope: !45)
!255 = !DILocation(line: 98, column: 15, scope: !45)
!256 = !DILocation(line: 100, column: 3, scope: !45)
!257 = !DILocation(line: 101, column: 1, scope: !45)
!258 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_large_b_e", scope: !1, file: !1, line: 105, type: !46, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!259 = !DILocalVariable(name: "a", arg: 1, scope: !258, file: !1, line: 105, type: !49)
!260 = !DILocation(line: 105, column: 42, scope: !258)
!261 = !DILocalVariable(name: "b", arg: 2, scope: !258, file: !1, line: 105, type: !49)
!262 = !DILocation(line: 105, column: 58, scope: !258)
!263 = !DILocalVariable(name: "x", arg: 3, scope: !258, file: !1, line: 105, type: !49)
!264 = !DILocation(line: 105, column: 74, scope: !258)
!265 = !DILocalVariable(name: "result", arg: 4, scope: !258, file: !1, line: 105, type: !51)
!266 = !DILocation(line: 105, column: 93, scope: !258)
!267 = !DILocation(line: 107, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !258, file: !1, line: 107, column: 6)
!269 = !DILocation(line: 107, column: 13, scope: !268)
!270 = !DILocation(line: 107, column: 12, scope: !268)
!271 = !DILocation(line: 107, column: 6, scope: !268)
!272 = !DILocation(line: 107, column: 16, scope: !268)
!273 = !DILocation(line: 107, column: 6, scope: !258)
!274 = !DILocalVariable(name: "u", scope: !275, file: !1, line: 108, type: !49)
!275 = distinct !DILexicalBlock(scope: !268, file: !1, line: 107, column: 23)
!276 = !DILocation(line: 108, column: 18, scope: !275)
!277 = !DILocation(line: 108, column: 22, scope: !275)
!278 = !DILocation(line: 108, column: 24, scope: !275)
!279 = !DILocation(line: 108, column: 23, scope: !275)
!280 = !DILocalVariable(name: "v", scope: !275, file: !1, line: 109, type: !49)
!281 = !DILocation(line: 109, column: 18, scope: !275)
!282 = !DILocation(line: 109, column: 31, scope: !275)
!283 = !DILocation(line: 109, column: 30, scope: !275)
!284 = !DILocation(line: 109, column: 25, scope: !275)
!285 = !DILocalVariable(name: "pre", scope: !275, file: !1, line: 110, type: !49)
!286 = !DILocation(line: 110, column: 18, scope: !275)
!287 = !DILocation(line: 110, column: 28, scope: !275)
!288 = !DILocation(line: 110, column: 30, scope: !275)
!289 = !DILocation(line: 110, column: 24, scope: !275)
!290 = !DILocalVariable(name: "uv", scope: !275, file: !1, line: 111, type: !49)
!291 = !DILocation(line: 111, column: 18, scope: !275)
!292 = !DILocation(line: 111, column: 24, scope: !275)
!293 = !DILocation(line: 111, column: 26, scope: !275)
!294 = !DILocation(line: 111, column: 25, scope: !275)
!295 = !DILocalVariable(name: "uv2", scope: !275, file: !1, line: 112, type: !49)
!296 = !DILocation(line: 112, column: 18, scope: !275)
!297 = !DILocation(line: 112, column: 24, scope: !275)
!298 = !DILocation(line: 112, column: 27, scope: !275)
!299 = !DILocation(line: 112, column: 26, scope: !275)
!300 = !DILocalVariable(name: "t1", scope: !275, file: !1, line: 113, type: !49)
!301 = !DILocation(line: 113, column: 18, scope: !275)
!302 = !DILocation(line: 113, column: 24, scope: !275)
!303 = !DILocation(line: 113, column: 27, scope: !275)
!304 = !DILocation(line: 113, column: 28, scope: !275)
!305 = !DILocation(line: 113, column: 25, scope: !275)
!306 = !DILocation(line: 113, column: 39, scope: !275)
!307 = !DILocation(line: 113, column: 38, scope: !275)
!308 = !DILocation(line: 113, column: 33, scope: !275)
!309 = !DILocation(line: 113, column: 42, scope: !275)
!310 = !DILocation(line: 113, column: 41, scope: !275)
!311 = !DILocalVariable(name: "t2a", scope: !275, file: !1, line: 114, type: !49)
!312 = !DILocation(line: 114, column: 18, scope: !275)
!313 = !DILocation(line: 114, column: 24, scope: !275)
!314 = !DILocation(line: 114, column: 27, scope: !275)
!315 = !DILocation(line: 114, column: 28, scope: !275)
!316 = !DILocation(line: 114, column: 25, scope: !275)
!317 = !DILocation(line: 114, column: 40, scope: !275)
!318 = !DILocation(line: 114, column: 39, scope: !275)
!319 = !DILocation(line: 114, column: 42, scope: !275)
!320 = !DILocation(line: 114, column: 41, scope: !275)
!321 = !DILocation(line: 114, column: 33, scope: !275)
!322 = !DILocation(line: 114, column: 45, scope: !275)
!323 = !DILocation(line: 114, column: 44, scope: !275)
!324 = !DILocalVariable(name: "t2b", scope: !275, file: !1, line: 115, type: !49)
!325 = !DILocation(line: 115, column: 18, scope: !275)
!326 = !DILocation(line: 115, column: 37, scope: !275)
!327 = !DILocation(line: 115, column: 38, scope: !275)
!328 = !DILocation(line: 115, column: 35, scope: !275)
!329 = !DILocation(line: 115, column: 44, scope: !275)
!330 = !DILocation(line: 115, column: 43, scope: !275)
!331 = !DILocation(line: 115, column: 29, scope: !275)
!332 = !DILocation(line: 115, column: 54, scope: !275)
!333 = !DILocation(line: 115, column: 55, scope: !275)
!334 = !DILocation(line: 115, column: 52, scope: !275)
!335 = !DILocation(line: 115, column: 62, scope: !275)
!336 = !DILocation(line: 115, column: 63, scope: !275)
!337 = !DILocation(line: 115, column: 60, scope: !275)
!338 = !DILocation(line: 115, column: 69, scope: !275)
!339 = !DILocation(line: 115, column: 68, scope: !275)
!340 = !DILocation(line: 115, column: 47, scope: !275)
!341 = !DILocalVariable(name: "t2", scope: !275, file: !1, line: 116, type: !49)
!342 = !DILocation(line: 116, column: 18, scope: !275)
!343 = !DILocation(line: 116, column: 24, scope: !275)
!344 = !DILocation(line: 116, column: 28, scope: !275)
!345 = !DILocation(line: 116, column: 27, scope: !275)
!346 = !DILocation(line: 117, column: 20, scope: !275)
!347 = !DILocation(line: 117, column: 33, scope: !275)
!348 = !DILocation(line: 117, column: 31, scope: !275)
!349 = !DILocation(line: 117, column: 38, scope: !275)
!350 = !DILocation(line: 117, column: 36, scope: !275)
!351 = !DILocation(line: 117, column: 24, scope: !275)
!352 = !DILocation(line: 117, column: 5, scope: !275)
!353 = !DILocation(line: 117, column: 13, scope: !275)
!354 = !DILocation(line: 117, column: 18, scope: !275)
!355 = !DILocation(line: 118, column: 20, scope: !275)
!356 = !DILocation(line: 118, column: 24, scope: !275)
!357 = !DILocation(line: 118, column: 56, scope: !275)
!358 = !DILocation(line: 118, column: 51, scope: !275)
!359 = !DILocation(line: 118, column: 49, scope: !275)
!360 = !DILocation(line: 118, column: 67, scope: !275)
!361 = !DILocation(line: 118, column: 62, scope: !362)
!362 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 1)
!363 = !DILocation(line: 118, column: 60, scope: !275)
!364 = !DILocation(line: 118, column: 42, scope: !275)
!365 = !DILocation(line: 118, column: 5, scope: !275)
!366 = !DILocation(line: 118, column: 13, scope: !275)
!367 = !DILocation(line: 118, column: 18, scope: !275)
!368 = !DILocation(line: 119, column: 49, scope: !275)
!369 = !DILocation(line: 119, column: 57, scope: !275)
!370 = !DILocation(line: 119, column: 44, scope: !275)
!371 = !DILocation(line: 119, column: 42, scope: !275)
!372 = !DILocation(line: 119, column: 5, scope: !275)
!373 = !DILocation(line: 119, column: 13, scope: !275)
!374 = !DILocation(line: 119, column: 17, scope: !275)
!375 = !DILocation(line: 120, column: 5, scope: !275)
!376 = !DILocation(line: 123, column: 5, scope: !377)
!377 = distinct !DILexicalBlock(scope: !268, file: !1, line: 122, column: 8)
!378 = distinct !{!378, !376}
!379 = !DILocation(line: 123, column: 5, scope: !380)
!380 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 1)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 123, column: 5)
!382 = distinct !{!382, !383}
!383 = !DILocation(line: 123, column: 5, scope: !381)
!384 = !DILocation(line: 123, column: 5, scope: !385)
!385 = !DILexicalBlockFile(scope: !386, file: !1, discriminator: 2)
!386 = distinct !DILexicalBlock(scope: !381, file: !1, line: 123, column: 5)
!387 = !DILocation(line: 123, column: 5, scope: !388)
!388 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 3)
!389 = !DILocation(line: 125, column: 1, scope: !258)
!390 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_large_b_e", scope: !1, file: !1, line: 129, type: !391, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!391 = !DISubroutineType(types: !392)
!392 = !{!48, !49, !49, !49, !51, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!394 = !DILocalVariable(name: "a", arg: 1, scope: !390, file: !1, line: 129, type: !49)
!395 = !DILocation(line: 129, column: 40, scope: !390)
!396 = !DILocalVariable(name: "b", arg: 2, scope: !390, file: !1, line: 129, type: !49)
!397 = !DILocation(line: 129, column: 56, scope: !390)
!398 = !DILocalVariable(name: "x", arg: 3, scope: !390, file: !1, line: 129, type: !49)
!399 = !DILocation(line: 129, column: 72, scope: !390)
!400 = !DILocalVariable(name: "result", arg: 4, scope: !390, file: !1, line: 130, type: !51)
!401 = !DILocation(line: 130, column: 46, scope: !390)
!402 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !390, file: !1, line: 131, type: !393)
!403 = !DILocation(line: 131, column: 39, scope: !390)
!404 = !DILocalVariable(name: "N", scope: !390, file: !1, line: 134, type: !50)
!405 = !DILocation(line: 134, column: 10, scope: !390)
!406 = !DILocation(line: 134, column: 22, scope: !390)
!407 = !DILocation(line: 134, column: 16, scope: !390)
!408 = !DILocalVariable(name: "eps", scope: !390, file: !1, line: 135, type: !50)
!409 = !DILocation(line: 135, column: 10, scope: !390)
!410 = !DILocation(line: 135, column: 16, scope: !390)
!411 = !DILocation(line: 135, column: 20, scope: !390)
!412 = !DILocation(line: 135, column: 18, scope: !390)
!413 = !DILocation(line: 137, column: 11, scope: !414)
!414 = distinct !DILexicalBlock(scope: !390, file: !1, line: 137, column: 6)
!415 = !DILocation(line: 137, column: 6, scope: !414)
!416 = !DILocation(line: 137, column: 16, scope: !414)
!417 = !DILocation(line: 137, column: 6, scope: !390)
!418 = !DILocalVariable(name: "lnpre_val", scope: !419, file: !1, line: 138, type: !50)
!419 = distinct !DILexicalBlock(scope: !414, file: !1, line: 137, column: 40)
!420 = !DILocation(line: 138, column: 12, scope: !419)
!421 = !DILocalVariable(name: "lnpre_err", scope: !419, file: !1, line: 139, type: !50)
!422 = !DILocation(line: 139, column: 12, scope: !419)
!423 = !DILocalVariable(name: "M", scope: !419, file: !1, line: 140, type: !52)
!424 = !DILocation(line: 140, column: 19, scope: !419)
!425 = !DILocation(line: 141, column: 8, scope: !426)
!426 = distinct !DILexicalBlock(scope: !419, file: !1, line: 141, column: 8)
!427 = !DILocation(line: 141, column: 10, scope: !426)
!428 = !DILocation(line: 141, column: 8, scope: !419)
!429 = !DILocalVariable(name: "tmp", scope: !430, file: !1, line: 142, type: !50)
!430 = distinct !DILexicalBlock(scope: !426, file: !1, line: 141, column: 17)
!431 = !DILocation(line: 142, column: 14, scope: !430)
!432 = !DILocation(line: 142, column: 25, scope: !430)
!433 = !DILocation(line: 142, column: 24, scope: !430)
!434 = !DILocation(line: 142, column: 32, scope: !430)
!435 = !DILocation(line: 142, column: 28, scope: !430)
!436 = !DILocation(line: 142, column: 27, scope: !430)
!437 = !DILocalVariable(name: "lg_bm1", scope: !430, file: !1, line: 143, type: !52)
!438 = !DILocation(line: 143, column: 21, scope: !430)
!439 = !DILocalVariable(name: "lg_a", scope: !430, file: !1, line: 144, type: !52)
!440 = !DILocation(line: 144, column: 21, scope: !430)
!441 = !DILocation(line: 145, column: 24, scope: !430)
!442 = !DILocation(line: 145, column: 25, scope: !430)
!443 = !DILocation(line: 145, column: 7, scope: !430)
!444 = !DILocation(line: 146, column: 24, scope: !430)
!445 = !DILocation(line: 146, column: 7, scope: !430)
!446 = !DILocation(line: 147, column: 19, scope: !430)
!447 = !DILocation(line: 147, column: 25, scope: !430)
!448 = !DILocation(line: 147, column: 23, scope: !430)
!449 = !DILocation(line: 147, column: 36, scope: !430)
!450 = !DILocation(line: 147, column: 27, scope: !430)
!451 = !DILocation(line: 147, column: 47, scope: !430)
!452 = !DILocation(line: 147, column: 40, scope: !430)
!453 = !DILocation(line: 147, column: 17, scope: !430)
!454 = !DILocation(line: 148, column: 26, scope: !430)
!455 = !DILocation(line: 148, column: 37, scope: !430)
!456 = !DILocation(line: 148, column: 30, scope: !430)
!457 = !DILocation(line: 148, column: 67, scope: !430)
!458 = !DILocation(line: 148, column: 62, scope: !430)
!459 = !DILocation(line: 148, column: 77, scope: !430)
!460 = !DILocation(line: 148, column: 72, scope: !461)
!461 = !DILexicalBlockFile(scope: !430, file: !1, discriminator: 1)
!462 = !DILocation(line: 148, column: 70, scope: !430)
!463 = !DILocation(line: 148, column: 59, scope: !430)
!464 = !DILocation(line: 148, column: 41, scope: !430)
!465 = !DILocation(line: 148, column: 17, scope: !430)
!466 = !DILocation(line: 149, column: 39, scope: !430)
!467 = !DILocation(line: 149, column: 38, scope: !430)
!468 = !DILocation(line: 149, column: 46, scope: !430)
!469 = !DILocation(line: 149, column: 45, scope: !430)
!470 = !DILocation(line: 149, column: 50, scope: !430)
!471 = !DILocation(line: 149, column: 49, scope: !430)
!472 = !DILocation(line: 149, column: 7, scope: !430)
!473 = !DILocation(line: 150, column: 5, scope: !430)
!474 = !DILocalVariable(name: "lg_1mb", scope: !475, file: !1, line: 152, type: !52)
!475 = distinct !DILexicalBlock(scope: !426, file: !1, line: 151, column: 10)
!476 = !DILocation(line: 152, column: 21, scope: !475)
!477 = !DILocalVariable(name: "lg_1pamb", scope: !475, file: !1, line: 153, type: !52)
!478 = !DILocation(line: 153, column: 21, scope: !475)
!479 = !DILocation(line: 154, column: 28, scope: !475)
!480 = !DILocation(line: 154, column: 27, scope: !475)
!481 = !DILocation(line: 154, column: 7, scope: !475)
!482 = !DILocation(line: 155, column: 28, scope: !475)
!483 = !DILocation(line: 155, column: 27, scope: !475)
!484 = !DILocation(line: 155, column: 30, scope: !475)
!485 = !DILocation(line: 155, column: 29, scope: !475)
!486 = !DILocation(line: 155, column: 7, scope: !475)
!487 = !DILocation(line: 156, column: 26, scope: !475)
!488 = !DILocation(line: 156, column: 41, scope: !475)
!489 = !DILocation(line: 156, column: 30, scope: !475)
!490 = !DILocation(line: 156, column: 17, scope: !475)
!491 = !DILocation(line: 157, column: 26, scope: !475)
!492 = !DILocation(line: 157, column: 41, scope: !475)
!493 = !DILocation(line: 157, column: 30, scope: !475)
!494 = !DILocation(line: 157, column: 17, scope: !475)
!495 = !DILocation(line: 158, column: 35, scope: !475)
!496 = !DILocation(line: 158, column: 38, scope: !475)
!497 = !DILocation(line: 158, column: 41, scope: !475)
!498 = !DILocation(line: 158, column: 7, scope: !475)
!499 = !DILocation(line: 161, column: 8, scope: !500)
!500 = distinct !DILexicalBlock(scope: !419, file: !1, line: 161, column: 8)
!501 = !DILocation(line: 161, column: 18, scope: !500)
!502 = !DILocation(line: 161, column: 8, scope: !419)
!503 = !DILocation(line: 162, column: 24, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !1, line: 161, column: 42)
!505 = !DILocation(line: 162, column: 7, scope: !504)
!506 = !DILocation(line: 162, column: 15, scope: !504)
!507 = !DILocation(line: 162, column: 20, scope: !504)
!508 = !DILocation(line: 163, column: 24, scope: !504)
!509 = !DILocation(line: 163, column: 7, scope: !504)
!510 = !DILocation(line: 163, column: 15, scope: !504)
!511 = !DILocation(line: 163, column: 20, scope: !504)
!512 = !DILocation(line: 164, column: 24, scope: !504)
!513 = !DILocation(line: 164, column: 8, scope: !504)
!514 = !DILocation(line: 164, column: 22, scope: !504)
!515 = !DILocation(line: 165, column: 7, scope: !504)
!516 = distinct !{!516, !515}
!517 = !DILocation(line: 165, column: 7, scope: !518)
!518 = !DILexicalBlockFile(scope: !519, file: !1, discriminator: 1)
!519 = distinct !DILexicalBlock(scope: !504, file: !1, line: 165, column: 7)
!520 = !DILocation(line: 166, column: 5, scope: !504)
!521 = !DILocalVariable(name: "epre", scope: !522, file: !1, line: 168, type: !52)
!522 = distinct !DILexicalBlock(scope: !500, file: !1, line: 167, column: 10)
!523 = !DILocation(line: 168, column: 21, scope: !522)
!524 = !DILocalVariable(name: "stat_e", scope: !522, file: !1, line: 169, type: !48)
!525 = !DILocation(line: 169, column: 11, scope: !522)
!526 = !DILocation(line: 169, column: 37, scope: !522)
!527 = !DILocation(line: 169, column: 48, scope: !522)
!528 = !DILocation(line: 169, column: 20, scope: !522)
!529 = !DILocation(line: 170, column: 27, scope: !522)
!530 = !DILocation(line: 170, column: 35, scope: !522)
!531 = !DILocation(line: 170, column: 31, scope: !522)
!532 = !DILocation(line: 170, column: 7, scope: !522)
!533 = !DILocation(line: 170, column: 15, scope: !522)
!534 = !DILocation(line: 170, column: 20, scope: !522)
!535 = !DILocation(line: 171, column: 27, scope: !522)
!536 = !DILocation(line: 171, column: 35, scope: !522)
!537 = !DILocation(line: 171, column: 31, scope: !522)
!538 = !DILocation(line: 171, column: 46, scope: !522)
!539 = !DILocation(line: 171, column: 59, scope: !522)
!540 = !DILocation(line: 171, column: 52, scope: !522)
!541 = !DILocation(line: 171, column: 50, scope: !522)
!542 = !DILocation(line: 171, column: 39, scope: !522)
!543 = !DILocation(line: 171, column: 7, scope: !522)
!544 = !DILocation(line: 171, column: 15, scope: !522)
!545 = !DILocation(line: 171, column: 20, scope: !522)
!546 = !DILocation(line: 172, column: 51, scope: !522)
!547 = !DILocation(line: 172, column: 59, scope: !522)
!548 = !DILocation(line: 172, column: 46, scope: !522)
!549 = !DILocation(line: 172, column: 44, scope: !522)
!550 = !DILocation(line: 172, column: 7, scope: !522)
!551 = !DILocation(line: 172, column: 15, scope: !522)
!552 = !DILocation(line: 172, column: 19, scope: !522)
!553 = !DILocation(line: 173, column: 8, scope: !522)
!554 = !DILocation(line: 173, column: 22, scope: !522)
!555 = !DILocation(line: 174, column: 14, scope: !522)
!556 = !DILocation(line: 174, column: 7, scope: !522)
!557 = !DILocation(line: 176, column: 3, scope: !419)
!558 = !DILocalVariable(name: "omb_lnx", scope: !559, file: !1, line: 178, type: !50)
!559 = distinct !DILexicalBlock(scope: !414, file: !1, line: 177, column: 8)
!560 = !DILocation(line: 178, column: 12, scope: !559)
!561 = !DILocation(line: 178, column: 27, scope: !559)
!562 = !DILocation(line: 178, column: 26, scope: !559)
!563 = !DILocation(line: 178, column: 34, scope: !559)
!564 = !DILocation(line: 178, column: 30, scope: !559)
!565 = !DILocation(line: 178, column: 29, scope: !559)
!566 = !DILocalVariable(name: "lg_1mb", scope: !559, file: !1, line: 179, type: !52)
!567 = !DILocation(line: 179, column: 19, scope: !559)
!568 = !DILocalVariable(name: "sgn_1mb", scope: !559, file: !1, line: 179, type: !50)
!569 = !DILocation(line: 179, column: 37, scope: !559)
!570 = !DILocalVariable(name: "lg_1pamb", scope: !559, file: !1, line: 180, type: !52)
!571 = !DILocation(line: 180, column: 19, scope: !559)
!572 = !DILocalVariable(name: "sgn_1pamb", scope: !559, file: !1, line: 180, type: !50)
!573 = !DILocation(line: 180, column: 37, scope: !559)
!574 = !DILocalVariable(name: "lg_bm1", scope: !559, file: !1, line: 181, type: !52)
!575 = !DILocation(line: 181, column: 19, scope: !559)
!576 = !DILocalVariable(name: "sgn_bm1", scope: !559, file: !1, line: 181, type: !50)
!577 = !DILocation(line: 181, column: 37, scope: !559)
!578 = !DILocalVariable(name: "lg_a", scope: !559, file: !1, line: 182, type: !52)
!579 = !DILocation(line: 182, column: 19, scope: !559)
!580 = !DILocalVariable(name: "sgn_a", scope: !559, file: !1, line: 182, type: !50)
!581 = !DILocation(line: 182, column: 37, scope: !559)
!582 = !DILocalVariable(name: "M1", scope: !559, file: !1, line: 183, type: !52)
!583 = !DILocation(line: 183, column: 19, scope: !559)
!584 = !DILocalVariable(name: "M2", scope: !559, file: !1, line: 183, type: !52)
!585 = !DILocation(line: 183, column: 23, scope: !559)
!586 = !DILocalVariable(name: "lnpre1_val", scope: !559, file: !1, line: 184, type: !50)
!587 = !DILocation(line: 184, column: 12, scope: !559)
!588 = !DILocalVariable(name: "lnpre2_val", scope: !559, file: !1, line: 184, type: !50)
!589 = !DILocation(line: 184, column: 24, scope: !559)
!590 = !DILocalVariable(name: "lnpre1_err", scope: !559, file: !1, line: 185, type: !50)
!591 = !DILocation(line: 185, column: 12, scope: !559)
!592 = !DILocalVariable(name: "lnpre2_err", scope: !559, file: !1, line: 185, type: !50)
!593 = !DILocation(line: 185, column: 24, scope: !559)
!594 = !DILocalVariable(name: "sgpre1", scope: !559, file: !1, line: 186, type: !50)
!595 = !DILocation(line: 186, column: 12, scope: !559)
!596 = !DILocalVariable(name: "sgpre2", scope: !559, file: !1, line: 186, type: !50)
!597 = !DILocation(line: 186, column: 20, scope: !559)
!598 = !DILocation(line: 187, column: 37, scope: !559)
!599 = !DILocation(line: 187, column: 44, scope: !559)
!600 = !DILocation(line: 187, column: 47, scope: !559)
!601 = !DILocation(line: 187, column: 5, scope: !559)
!602 = !DILocation(line: 188, column: 37, scope: !559)
!603 = !DILocation(line: 188, column: 36, scope: !559)
!604 = !DILocation(line: 188, column: 44, scope: !559)
!605 = !DILocation(line: 188, column: 43, scope: !559)
!606 = !DILocation(line: 188, column: 47, scope: !559)
!607 = !DILocation(line: 188, column: 5, scope: !559)
!608 = !DILocation(line: 190, column: 30, scope: !559)
!609 = !DILocation(line: 190, column: 29, scope: !559)
!610 = !DILocation(line: 190, column: 5, scope: !559)
!611 = !DILocation(line: 191, column: 30, scope: !559)
!612 = !DILocation(line: 191, column: 29, scope: !559)
!613 = !DILocation(line: 191, column: 32, scope: !559)
!614 = !DILocation(line: 191, column: 31, scope: !559)
!615 = !DILocation(line: 191, column: 5, scope: !559)
!616 = !DILocation(line: 193, column: 26, scope: !559)
!617 = !DILocation(line: 193, column: 27, scope: !559)
!618 = !DILocation(line: 193, column: 5, scope: !559)
!619 = !DILocation(line: 194, column: 26, scope: !559)
!620 = !DILocation(line: 194, column: 5, scope: !559)
!621 = !DILocation(line: 196, column: 25, scope: !559)
!622 = !DILocation(line: 196, column: 40, scope: !559)
!623 = !DILocation(line: 196, column: 29, scope: !559)
!624 = !DILocation(line: 196, column: 16, scope: !559)
!625 = !DILocation(line: 197, column: 25, scope: !559)
!626 = !DILocation(line: 197, column: 40, scope: !559)
!627 = !DILocation(line: 197, column: 29, scope: !559)
!628 = !DILocation(line: 197, column: 16, scope: !559)
!629 = !DILocation(line: 198, column: 25, scope: !559)
!630 = !DILocation(line: 198, column: 36, scope: !559)
!631 = !DILocation(line: 198, column: 29, scope: !559)
!632 = !DILocation(line: 198, column: 42, scope: !559)
!633 = !DILocation(line: 198, column: 40, scope: !559)
!634 = !DILocation(line: 198, column: 52, scope: !559)
!635 = !DILocation(line: 198, column: 50, scope: !559)
!636 = !DILocation(line: 198, column: 16, scope: !559)
!637 = !DILocation(line: 199, column: 25, scope: !559)
!638 = !DILocation(line: 199, column: 36, scope: !559)
!639 = !DILocation(line: 199, column: 29, scope: !559)
!640 = !DILocation(line: 199, column: 66, scope: !559)
!641 = !DILocation(line: 199, column: 61, scope: !559)
!642 = !DILocation(line: 199, column: 80, scope: !559)
!643 = !DILocation(line: 199, column: 75, scope: !644)
!644 = !DILexicalBlockFile(scope: !559, file: !1, discriminator: 1)
!645 = !DILocation(line: 199, column: 74, scope: !559)
!646 = !DILocation(line: 199, column: 58, scope: !559)
!647 = !DILocation(line: 199, column: 40, scope: !559)
!648 = !DILocation(line: 199, column: 16, scope: !559)
!649 = !DILocation(line: 200, column: 14, scope: !559)
!650 = !DILocation(line: 200, column: 24, scope: !559)
!651 = !DILocation(line: 200, column: 22, scope: !559)
!652 = !DILocation(line: 200, column: 12, scope: !559)
!653 = !DILocation(line: 201, column: 14, scope: !559)
!654 = !DILocation(line: 201, column: 24, scope: !559)
!655 = !DILocation(line: 201, column: 22, scope: !559)
!656 = !DILocation(line: 201, column: 12, scope: !559)
!657 = !DILocation(line: 203, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !559, file: !1, line: 203, column: 8)
!659 = !DILocation(line: 203, column: 19, scope: !658)
!660 = !DILocation(line: 203, column: 42, scope: !658)
!661 = !DILocation(line: 203, column: 45, scope: !662)
!662 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 1)
!663 = !DILocation(line: 203, column: 56, scope: !662)
!664 = !DILocation(line: 203, column: 8, scope: !662)
!665 = !DILocalVariable(name: "max_lnpre_val", scope: !666, file: !1, line: 204, type: !50)
!666 = distinct !DILexicalBlock(scope: !658, file: !1, line: 203, column: 80)
!667 = !DILocation(line: 204, column: 14, scope: !666)
!668 = !DILocation(line: 204, column: 30, scope: !666)
!669 = !DILocation(line: 204, column: 30, scope: !670)
!670 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 1)
!671 = !DILocation(line: 204, column: 30, scope: !672)
!672 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 2)
!673 = !DILocation(line: 204, column: 30, scope: !674)
!674 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 3)
!675 = !DILocation(line: 204, column: 14, scope: !674)
!676 = !DILocalVariable(name: "max_lnpre_err", scope: !666, file: !1, line: 205, type: !50)
!677 = !DILocation(line: 205, column: 14, scope: !666)
!678 = !DILocation(line: 205, column: 30, scope: !666)
!679 = !DILocation(line: 205, column: 30, scope: !670)
!680 = !DILocation(line: 205, column: 30, scope: !672)
!681 = !DILocation(line: 205, column: 30, scope: !674)
!682 = !DILocation(line: 205, column: 14, scope: !674)
!683 = !DILocalVariable(name: "lp1", scope: !666, file: !1, line: 206, type: !50)
!684 = !DILocation(line: 206, column: 14, scope: !666)
!685 = !DILocation(line: 206, column: 20, scope: !666)
!686 = !DILocation(line: 206, column: 33, scope: !666)
!687 = !DILocation(line: 206, column: 31, scope: !666)
!688 = !DILocalVariable(name: "lp2", scope: !666, file: !1, line: 207, type: !50)
!689 = !DILocation(line: 207, column: 14, scope: !666)
!690 = !DILocation(line: 207, column: 20, scope: !666)
!691 = !DILocation(line: 207, column: 33, scope: !666)
!692 = !DILocation(line: 207, column: 31, scope: !666)
!693 = !DILocalVariable(name: "t1", scope: !666, file: !1, line: 208, type: !50)
!694 = !DILocation(line: 208, column: 14, scope: !666)
!695 = !DILocation(line: 208, column: 20, scope: !666)
!696 = !DILocation(line: 208, column: 31, scope: !666)
!697 = !DILocation(line: 208, column: 27, scope: !666)
!698 = !DILocation(line: 208, column: 26, scope: !666)
!699 = !DILocalVariable(name: "t2", scope: !666, file: !1, line: 209, type: !50)
!700 = !DILocation(line: 209, column: 14, scope: !666)
!701 = !DILocation(line: 209, column: 20, scope: !666)
!702 = !DILocation(line: 209, column: 31, scope: !666)
!703 = !DILocation(line: 209, column: 27, scope: !666)
!704 = !DILocation(line: 209, column: 26, scope: !666)
!705 = !DILocation(line: 210, column: 22, scope: !666)
!706 = !DILocation(line: 210, column: 28, scope: !666)
!707 = !DILocation(line: 210, column: 24, scope: !666)
!708 = !DILocation(line: 210, column: 34, scope: !666)
!709 = !DILocation(line: 210, column: 40, scope: !666)
!710 = !DILocation(line: 210, column: 36, scope: !666)
!711 = !DILocation(line: 210, column: 32, scope: !666)
!712 = !DILocation(line: 210, column: 7, scope: !666)
!713 = !DILocation(line: 210, column: 15, scope: !666)
!714 = !DILocation(line: 210, column: 20, scope: !666)
!715 = !DILocation(line: 211, column: 27, scope: !666)
!716 = !DILocation(line: 211, column: 22, scope: !666)
!717 = !DILocation(line: 211, column: 34, scope: !666)
!718 = !DILocation(line: 211, column: 30, scope: !666)
!719 = !DILocation(line: 211, column: 45, scope: !666)
!720 = !DILocation(line: 211, column: 40, scope: !670)
!721 = !DILocation(line: 211, column: 52, scope: !666)
!722 = !DILocation(line: 211, column: 48, scope: !666)
!723 = !DILocation(line: 211, column: 38, scope: !666)
!724 = !DILocation(line: 211, column: 7, scope: !666)
!725 = !DILocation(line: 211, column: 15, scope: !666)
!726 = !DILocation(line: 211, column: 20, scope: !666)
!727 = !DILocation(line: 212, column: 44, scope: !666)
!728 = !DILocation(line: 212, column: 40, scope: !666)
!729 = !DILocation(line: 212, column: 38, scope: !666)
!730 = !DILocation(line: 212, column: 67, scope: !666)
!731 = !DILocation(line: 212, column: 73, scope: !666)
!732 = !DILocation(line: 212, column: 69, scope: !666)
!733 = !DILocation(line: 212, column: 62, scope: !670)
!734 = !DILocation(line: 212, column: 85, scope: !666)
!735 = !DILocation(line: 212, column: 91, scope: !666)
!736 = !DILocation(line: 212, column: 87, scope: !666)
!737 = !DILocation(line: 212, column: 80, scope: !672)
!738 = !DILocation(line: 212, column: 78, scope: !666)
!739 = !DILocation(line: 212, column: 59, scope: !666)
!740 = !DILocation(line: 212, column: 7, scope: !666)
!741 = !DILocation(line: 212, column: 15, scope: !666)
!742 = !DILocation(line: 212, column: 19, scope: !666)
!743 = !DILocation(line: 213, column: 51, scope: !666)
!744 = !DILocation(line: 213, column: 59, scope: !666)
!745 = !DILocation(line: 213, column: 46, scope: !666)
!746 = !DILocation(line: 213, column: 44, scope: !666)
!747 = !DILocation(line: 213, column: 7, scope: !666)
!748 = !DILocation(line: 213, column: 15, scope: !666)
!749 = !DILocation(line: 213, column: 19, scope: !666)
!750 = !DILocation(line: 214, column: 24, scope: !666)
!751 = !DILocation(line: 214, column: 8, scope: !666)
!752 = !DILocation(line: 214, column: 22, scope: !666)
!753 = !DILocation(line: 215, column: 7, scope: !666)
!754 = distinct !{!754, !753}
!755 = !DILocation(line: 215, column: 7, scope: !756)
!756 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 1)
!757 = distinct !DILexicalBlock(scope: !666, file: !1, line: 215, column: 7)
!758 = !DILocation(line: 216, column: 5, scope: !666)
!759 = !DILocalVariable(name: "t1", scope: !760, file: !1, line: 218, type: !50)
!760 = distinct !DILexicalBlock(scope: !658, file: !1, line: 217, column: 10)
!761 = !DILocation(line: 218, column: 14, scope: !760)
!762 = !DILocation(line: 218, column: 19, scope: !760)
!763 = !DILocation(line: 218, column: 30, scope: !760)
!764 = !DILocation(line: 218, column: 26, scope: !760)
!765 = !DILocation(line: 218, column: 25, scope: !760)
!766 = !DILocalVariable(name: "t2", scope: !760, file: !1, line: 219, type: !50)
!767 = !DILocation(line: 219, column: 14, scope: !760)
!768 = !DILocation(line: 219, column: 19, scope: !760)
!769 = !DILocation(line: 219, column: 30, scope: !760)
!770 = !DILocation(line: 219, column: 26, scope: !760)
!771 = !DILocation(line: 219, column: 25, scope: !760)
!772 = !DILocation(line: 220, column: 22, scope: !760)
!773 = !DILocation(line: 220, column: 28, scope: !760)
!774 = !DILocation(line: 220, column: 24, scope: !760)
!775 = !DILocation(line: 220, column: 34, scope: !760)
!776 = !DILocation(line: 220, column: 40, scope: !760)
!777 = !DILocation(line: 220, column: 36, scope: !760)
!778 = !DILocation(line: 220, column: 32, scope: !760)
!779 = !DILocation(line: 220, column: 7, scope: !760)
!780 = !DILocation(line: 220, column: 15, scope: !760)
!781 = !DILocation(line: 220, column: 20, scope: !760)
!782 = !DILocation(line: 221, column: 27, scope: !760)
!783 = !DILocation(line: 221, column: 22, scope: !760)
!784 = !DILocation(line: 221, column: 36, scope: !760)
!785 = !DILocation(line: 221, column: 31, scope: !760)
!786 = !DILocation(line: 221, column: 47, scope: !760)
!787 = !DILocation(line: 221, column: 42, scope: !788)
!788 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 1)
!789 = !DILocation(line: 221, column: 54, scope: !760)
!790 = !DILocation(line: 221, column: 50, scope: !760)
!791 = !DILocation(line: 221, column: 40, scope: !760)
!792 = !DILocation(line: 221, column: 7, scope: !760)
!793 = !DILocation(line: 221, column: 15, scope: !760)
!794 = !DILocation(line: 221, column: 20, scope: !760)
!795 = !DILocation(line: 222, column: 45, scope: !760)
!796 = !DILocation(line: 222, column: 41, scope: !760)
!797 = !DILocation(line: 222, column: 62, scope: !760)
!798 = !DILocation(line: 222, column: 68, scope: !760)
!799 = !DILocation(line: 222, column: 64, scope: !760)
!800 = !DILocation(line: 222, column: 57, scope: !788)
!801 = !DILocation(line: 222, column: 56, scope: !760)
!802 = !DILocation(line: 222, column: 79, scope: !760)
!803 = !DILocation(line: 222, column: 75, scope: !804)
!804 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 2)
!805 = !DILocation(line: 222, column: 96, scope: !760)
!806 = !DILocation(line: 222, column: 102, scope: !760)
!807 = !DILocation(line: 222, column: 98, scope: !760)
!808 = !DILocation(line: 222, column: 91, scope: !809)
!809 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 3)
!810 = !DILocation(line: 222, column: 90, scope: !760)
!811 = !DILocation(line: 222, column: 73, scope: !760)
!812 = !DILocation(line: 222, column: 38, scope: !760)
!813 = !DILocation(line: 222, column: 7, scope: !760)
!814 = !DILocation(line: 222, column: 15, scope: !760)
!815 = !DILocation(line: 222, column: 19, scope: !760)
!816 = !DILocation(line: 223, column: 51, scope: !760)
!817 = !DILocation(line: 223, column: 59, scope: !760)
!818 = !DILocation(line: 223, column: 46, scope: !760)
!819 = !DILocation(line: 223, column: 44, scope: !760)
!820 = !DILocation(line: 223, column: 7, scope: !760)
!821 = !DILocation(line: 223, column: 15, scope: !760)
!822 = !DILocation(line: 223, column: 19, scope: !760)
!823 = !DILocation(line: 224, column: 8, scope: !760)
!824 = !DILocation(line: 224, column: 22, scope: !760)
!825 = !DILocation(line: 225, column: 7, scope: !760)
!826 = !DILocation(line: 228, column: 1, scope: !390)
!827 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F0_series_e", scope: !1, file: !1, line: 240, type: !828, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!828 = !DISubroutineType(types: !829)
!829 = !{!48, !49, !49, !49, !48, !51}
!830 = !DILocalVariable(name: "a", arg: 1, scope: !827, file: !1, line: 240, type: !49)
!831 = !DILocation(line: 240, column: 41, scope: !827)
!832 = !DILocalVariable(name: "b", arg: 2, scope: !827, file: !1, line: 240, type: !49)
!833 = !DILocation(line: 240, column: 57, scope: !827)
!834 = !DILocalVariable(name: "x", arg: 3, scope: !827, file: !1, line: 240, type: !49)
!835 = !DILocation(line: 240, column: 73, scope: !827)
!836 = !DILocalVariable(name: "n_trunc", arg: 4, scope: !827, file: !1, line: 241, type: !48)
!837 = !DILocation(line: 241, column: 35, scope: !827)
!838 = !DILocalVariable(name: "result", arg: 5, scope: !827, file: !1, line: 242, type: !51)
!839 = !DILocation(line: 242, column: 47, scope: !827)
!840 = !DILocalVariable(name: "maxiter", scope: !827, file: !1, line: 245, type: !841)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!842 = !DILocation(line: 245, column: 13, scope: !827)
!843 = !DILocalVariable(name: "an", scope: !827, file: !1, line: 246, type: !50)
!844 = !DILocation(line: 246, column: 10, scope: !827)
!845 = !DILocation(line: 246, column: 15, scope: !827)
!846 = !DILocalVariable(name: "bn", scope: !827, file: !1, line: 247, type: !50)
!847 = !DILocation(line: 247, column: 10, scope: !827)
!848 = !DILocation(line: 247, column: 15, scope: !827)
!849 = !DILocalVariable(name: "n", scope: !827, file: !1, line: 248, type: !50)
!850 = !DILocation(line: 248, column: 10, scope: !827)
!851 = !DILocalVariable(name: "sum", scope: !827, file: !1, line: 249, type: !50)
!852 = !DILocation(line: 249, column: 10, scope: !827)
!853 = !DILocalVariable(name: "del", scope: !827, file: !1, line: 250, type: !50)
!854 = !DILocation(line: 250, column: 10, scope: !827)
!855 = !DILocalVariable(name: "abs_del", scope: !827, file: !1, line: 251, type: !50)
!856 = !DILocation(line: 251, column: 10, scope: !827)
!857 = !DILocalVariable(name: "max_abs_del", scope: !827, file: !1, line: 252, type: !50)
!858 = !DILocation(line: 252, column: 10, scope: !827)
!859 = !DILocalVariable(name: "last_abs_del", scope: !827, file: !1, line: 253, type: !50)
!860 = !DILocation(line: 253, column: 10, scope: !827)
!861 = !DILocation(line: 255, column: 3, scope: !827)
!862 = !DILocation(line: 255, column: 9, scope: !863)
!863 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 1)
!864 = !DILocation(line: 255, column: 22, scope: !863)
!865 = !DILocation(line: 255, column: 17, scope: !863)
!866 = !DILocation(line: 255, column: 16, scope: !863)
!867 = !DILocation(line: 255, column: 27, scope: !863)
!868 = !DILocation(line: 255, column: 45, scope: !863)
!869 = !DILocation(line: 255, column: 48, scope: !870)
!870 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 2)
!871 = !DILocation(line: 255, column: 50, scope: !870)
!872 = !DILocation(line: 255, column: 3, scope: !873)
!873 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 3)
!874 = !DILocalVariable(name: "u", scope: !875, file: !1, line: 257, type: !50)
!875 = distinct !DILexicalBlock(scope: !827, file: !1, line: 255, column: 61)
!876 = !DILocation(line: 257, column: 12, scope: !875)
!877 = !DILocation(line: 257, column: 16, scope: !875)
!878 = !DILocation(line: 257, column: 22, scope: !875)
!879 = !DILocation(line: 257, column: 25, scope: !875)
!880 = !DILocation(line: 257, column: 24, scope: !875)
!881 = !DILocation(line: 257, column: 29, scope: !875)
!882 = !DILocation(line: 257, column: 27, scope: !875)
!883 = !DILocation(line: 257, column: 19, scope: !875)
!884 = !DILocalVariable(name: "abs_u", scope: !875, file: !1, line: 258, type: !50)
!885 = !DILocation(line: 258, column: 12, scope: !875)
!886 = !DILocation(line: 258, column: 25, scope: !875)
!887 = !DILocation(line: 258, column: 20, scope: !875)
!888 = !DILocation(line: 260, column: 8, scope: !889)
!889 = distinct !DILexicalBlock(scope: !875, file: !1, line: 260, column: 8)
!890 = !DILocation(line: 260, column: 14, scope: !889)
!891 = !DILocation(line: 260, column: 20, scope: !889)
!892 = !DILocation(line: 260, column: 24, scope: !893)
!893 = !DILexicalBlockFile(scope: !889, file: !1, discriminator: 1)
!894 = !DILocation(line: 260, column: 50, scope: !893)
!895 = !DILocation(line: 260, column: 49, scope: !893)
!896 = !DILocation(line: 260, column: 36, scope: !893)
!897 = !DILocation(line: 260, column: 8, scope: !893)
!898 = !DILocation(line: 261, column: 21, scope: !899)
!899 = distinct !DILexicalBlock(scope: !889, file: !1, line: 260, column: 58)
!900 = !DILocation(line: 261, column: 7, scope: !899)
!901 = !DILocation(line: 261, column: 15, scope: !899)
!902 = !DILocation(line: 261, column: 19, scope: !899)
!903 = !DILocation(line: 262, column: 26, scope: !899)
!904 = !DILocation(line: 262, column: 21, scope: !899)
!905 = !DILocation(line: 262, column: 7, scope: !899)
!906 = !DILocation(line: 262, column: 15, scope: !899)
!907 = !DILocation(line: 262, column: 19, scope: !899)
!908 = !DILocation(line: 263, column: 7, scope: !899)
!909 = distinct !{!909, !908}
!910 = !DILocation(line: 263, column: 7, scope: !911)
!911 = !DILexicalBlockFile(scope: !912, file: !1, discriminator: 1)
!912 = distinct !DILexicalBlock(scope: !899, file: !1, line: 263, column: 7)
!913 = !DILocation(line: 264, column: 5, scope: !899)
!914 = !DILocation(line: 266, column: 12, scope: !875)
!915 = !DILocation(line: 266, column: 9, scope: !875)
!916 = !DILocation(line: 267, column: 12, scope: !875)
!917 = !DILocation(line: 267, column: 9, scope: !875)
!918 = !DILocation(line: 269, column: 20, scope: !875)
!919 = !DILocation(line: 269, column: 15, scope: !875)
!920 = !DILocation(line: 269, column: 13, scope: !875)
!921 = !DILocation(line: 271, column: 8, scope: !922)
!922 = distinct !DILexicalBlock(scope: !875, file: !1, line: 271, column: 8)
!923 = !DILocation(line: 271, column: 18, scope: !922)
!924 = !DILocation(line: 271, column: 16, scope: !922)
!925 = !DILocation(line: 271, column: 8, scope: !875)
!926 = !DILocation(line: 271, column: 32, scope: !927)
!927 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 1)
!928 = !DILocation(line: 273, column: 20, scope: !875)
!929 = !DILocation(line: 273, column: 18, scope: !875)
!930 = !DILocation(line: 274, column: 20, scope: !875)
!931 = !DILocation(line: 274, column: 20, scope: !932)
!932 = !DILexicalBlockFile(scope: !875, file: !1, discriminator: 1)
!933 = !DILocation(line: 274, column: 20, scope: !934)
!934 = !DILexicalBlockFile(scope: !875, file: !1, discriminator: 2)
!935 = !DILocation(line: 274, column: 20, scope: !936)
!936 = !DILexicalBlockFile(scope: !875, file: !1, discriminator: 3)
!937 = !DILocation(line: 274, column: 18, scope: !936)
!938 = !DILocation(line: 276, column: 8, scope: !875)
!939 = !DILocation(line: 277, column: 8, scope: !875)
!940 = !DILocation(line: 278, column: 8, scope: !875)
!941 = !DILocation(line: 280, column: 8, scope: !942)
!942 = distinct !DILexicalBlock(scope: !875, file: !1, line: 280, column: 8)
!943 = !DILocation(line: 280, column: 11, scope: !942)
!944 = !DILocation(line: 280, column: 18, scope: !942)
!945 = !DILocation(line: 280, column: 21, scope: !946)
!946 = !DILexicalBlockFile(scope: !942, file: !1, discriminator: 1)
!947 = !DILocation(line: 280, column: 24, scope: !946)
!948 = !DILocation(line: 280, column: 8, scope: !946)
!949 = !DILocation(line: 280, column: 32, scope: !950)
!950 = !DILexicalBlockFile(scope: !942, file: !1, discriminator: 2)
!951 = !DILocation(line: 282, column: 8, scope: !952)
!952 = distinct !DILexicalBlock(scope: !875, file: !1, line: 282, column: 8)
!953 = !DILocation(line: 282, column: 16, scope: !952)
!954 = !DILocation(line: 282, column: 21, scope: !952)
!955 = !DILocation(line: 282, column: 24, scope: !956)
!956 = !DILexicalBlockFile(scope: !952, file: !1, discriminator: 1)
!957 = !DILocation(line: 282, column: 29, scope: !956)
!958 = !DILocation(line: 282, column: 26, scope: !956)
!959 = !DILocation(line: 282, column: 8, scope: !956)
!960 = !DILocation(line: 282, column: 38, scope: !961)
!961 = !DILexicalBlockFile(scope: !952, file: !1, discriminator: 2)
!962 = !DILocation(line: 255, column: 3, scope: !963)
!963 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 4)
!964 = distinct !{!964, !861}
!965 = !DILocation(line: 285, column: 17, scope: !827)
!966 = !DILocation(line: 285, column: 3, scope: !827)
!967 = !DILocation(line: 285, column: 11, scope: !827)
!968 = !DILocation(line: 285, column: 15, scope: !827)
!969 = !DILocation(line: 286, column: 35, scope: !827)
!970 = !DILocation(line: 286, column: 33, scope: !827)
!971 = !DILocation(line: 286, column: 39, scope: !827)
!972 = !DILocation(line: 286, column: 37, scope: !827)
!973 = !DILocation(line: 286, column: 3, scope: !827)
!974 = !DILocation(line: 286, column: 11, scope: !827)
!975 = !DILocation(line: 286, column: 15, scope: !827)
!976 = !DILocation(line: 287, column: 6, scope: !977)
!977 = distinct !DILexicalBlock(scope: !827, file: !1, line: 287, column: 6)
!978 = !DILocation(line: 287, column: 8, scope: !977)
!979 = !DILocation(line: 287, column: 6, scope: !827)
!980 = !DILocation(line: 288, column: 5, scope: !977)
!981 = distinct !{!981, !980}
!982 = !DILocation(line: 288, column: 5, scope: !983)
!983 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 1)
!984 = distinct !DILexicalBlock(scope: !977, file: !1, line: 288, column: 5)
!985 = !DILocation(line: 288, column: 5, scope: !986)
!986 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 2)
!987 = !DILocation(line: 290, column: 5, scope: !977)
!988 = !DILocation(line: 291, column: 1, scope: !827)
