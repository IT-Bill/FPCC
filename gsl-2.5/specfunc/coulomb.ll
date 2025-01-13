; ModuleID = 'coulomb.c'
source_filename = "coulomb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"coulomb.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coulomb_CL_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  %8 = load double, double* %5, align 8, !dbg !66
  %9 = fcmp ole double %8, -1.000000e+00, !dbg !68
  br i1 %9, label %10, label %19, !dbg !69

; <label>:10:                                     ; preds = %3
  br label %11, !dbg !70, !llvm.loop !72

; <label>:11:                                     ; preds = %10
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !73
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !73
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !73
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !73
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !73
  store double 0x7FF8000000000000, double* %15, align 8, !dbg !73
  br label %16, !dbg !73, !llvm.loop !76

; <label>:16:                                     ; preds = %11
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 1), !dbg !78
  store i32 1, i32* %4, align 4, !dbg !78
  br label %40, !dbg !78
                                                  ; No predecessors!
  br label %18, !dbg !81

; <label>:18:                                     ; preds = %17
  br label %40, !dbg !83

; <label>:19:                                     ; preds = %3
  %20 = load double, double* %5, align 8, !dbg !84
  %21 = call double @fabs(double %20) #1, !dbg !86
  %22 = fcmp olt double %21, 0x3CB0000000000000, !dbg !87
  br i1 %22, label %23, label %35, !dbg !88

; <label>:23:                                     ; preds = %19
  %24 = load double, double* %6, align 8, !dbg !89
  %25 = call double @C0sq(double %24), !dbg !91
  %26 = call double @sqrt(double %25) #6, !dbg !92
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !94
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !95
  store double %26, double* %28, align 8, !dbg !96
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !97
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !98
  %31 = load double, double* %30, align 8, !dbg !98
  %32 = fmul double 0x3CC0000000000000, %31, !dbg !99
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !100
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !101
  store double %32, double* %34, align 8, !dbg !102
  store i32 0, i32* %4, align 4, !dbg !103
  br label %40, !dbg !103

; <label>:35:                                     ; preds = %19
  %36 = load double, double* %5, align 8, !dbg !104
  %37 = load double, double* %6, align 8, !dbg !106
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !107
  %39 = call i32 @CLeta(double %36, double %37, %struct.gsl_sf_result_struct* %38), !dbg !108
  store i32 %39, i32* %4, align 4, !dbg !109
  br label %40, !dbg !109

; <label>:40:                                     ; preds = %16, %23, %35, %18
  %41 = load i32, i32* %4, align 4, !dbg !110
  ret i32 %41, !dbg !110
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define internal double @C0sq(double) #0 !dbg !111 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !114, metadata !60), !dbg !115
  call void @llvm.dbg.declare(metadata double* %4, metadata !116, metadata !60), !dbg !117
  %6 = load double, double* %3, align 8, !dbg !118
  %7 = fmul double 0x401921FB54442D18, %6, !dbg !119
  store double %7, double* %4, align 8, !dbg !117
  %8 = load double, double* %3, align 8, !dbg !120
  %9 = call double @fabs(double %8) #1, !dbg !122
  %10 = fcmp olt double %9, 0x3CB0000000000000, !dbg !123
  br i1 %10, label %11, label %12, !dbg !124

; <label>:11:                                     ; preds = %1
  store double 1.000000e+00, double* %2, align 8, !dbg !125
  br label %23, !dbg !125

; <label>:12:                                     ; preds = %1
  %13 = load double, double* %4, align 8, !dbg !127
  %14 = fcmp ogt double %13, 0x40862E42FEFA39EF, !dbg !129
  br i1 %14, label %15, label %16, !dbg !130

; <label>:15:                                     ; preds = %12
  store double 0.000000e+00, double* %2, align 8, !dbg !131
  br label %23, !dbg !131

; <label>:16:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %5, metadata !133, metadata !60), !dbg !135
  %17 = load double, double* %4, align 8, !dbg !136
  %18 = call i32 @gsl_sf_expm1_e(double %17, %struct.gsl_sf_result_struct* %5), !dbg !137
  %19 = load double, double* %4, align 8, !dbg !138
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %5, i32 0, i32 0, !dbg !139
  %21 = load double, double* %20, align 8, !dbg !139
  %22 = fdiv double %19, %21, !dbg !140
  store double %22, double* %2, align 8, !dbg !141
  br label %23, !dbg !141

; <label>:23:                                     ; preds = %16, %15, %11
  %24 = load double, double* %2, align 8, !dbg !142
  ret double %24, !dbg !142
}

; Function Attrs: nounwind uwtable
define internal i32 @CLeta(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !143 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !144, metadata !60), !dbg !145
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !146, metadata !60), !dbg !147
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !148, metadata !60), !dbg !149
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !150, metadata !60), !dbg !151
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !152, metadata !60), !dbg !153
  call void @llvm.dbg.declare(metadata double* %9, metadata !154, metadata !60), !dbg !155
  store double 1.000000e+00, double* %9, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata double* %10, metadata !156, metadata !60), !dbg !157
  call void @llvm.dbg.declare(metadata double* %11, metadata !158, metadata !60), !dbg !159
  %13 = load double, double* %5, align 8, !dbg !160
  %14 = load double, double* %4, align 8, !dbg !162
  %15 = fadd double %14, 1.000000e+00, !dbg !163
  %16 = fdiv double %13, %15, !dbg !164
  %17 = call double @fabs(double %16) #1, !dbg !165
  %18 = fcmp olt double %17, 0x3CB0000000000000, !dbg !166
  br i1 %18, label %19, label %23, !dbg !167

; <label>:19:                                     ; preds = %3
  %20 = load double, double* %4, align 8, !dbg !168
  %21 = fadd double %20, 1.000000e+00, !dbg !170
  %22 = call i32 @gsl_sf_lngamma_e(double %21, %struct.gsl_sf_result_struct* %7), !dbg !171
  br label %28, !dbg !172

; <label>:23:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !173, metadata !60), !dbg !175
  %24 = load double, double* %4, align 8, !dbg !176
  %25 = fadd double %24, 1.000000e+00, !dbg !177
  %26 = load double, double* %5, align 8, !dbg !178
  %27 = call i32 @gsl_sf_lngamma_complex_e(double %25, double %26, %struct.gsl_sf_result_struct* %7, %struct.gsl_sf_result_struct* %12), !dbg !179
  br label %28

; <label>:28:                                     ; preds = %23, %19
  %29 = load double, double* %4, align 8, !dbg !180
  %30 = fadd double %29, 1.000000e+00, !dbg !181
  %31 = fmul double 2.000000e+00, %30, !dbg !182
  %32 = call i32 @gsl_sf_lngamma_e(double %31, %struct.gsl_sf_result_struct* %8), !dbg !183
  %33 = load double, double* %4, align 8, !dbg !184
  %34 = fcmp olt double %33, -1.000000e+00, !dbg !186
  br i1 %34, label %35, label %38, !dbg !187

; <label>:35:                                     ; preds = %28
  %36 = load double, double* %9, align 8, !dbg !188
  %37 = fsub double -0.000000e+00, %36, !dbg !190
  store double %37, double* %9, align 8, !dbg !191
  br label %38, !dbg !192

; <label>:38:                                     ; preds = %35, %28
  %39 = load double, double* %4, align 8, !dbg !193
  %40 = fmul double %39, 0x3FE62E42FEFA39EF, !dbg !194
  %41 = load double, double* %5, align 8, !dbg !195
  %42 = fmul double 5.000000e-01, %41, !dbg !196
  %43 = fmul double %42, 0x400921FB54442D18, !dbg !197
  %44 = fsub double %40, %43, !dbg !198
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !199
  %46 = load double, double* %45, align 8, !dbg !199
  %47 = fadd double %44, %46, !dbg !200
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !201
  %49 = load double, double* %48, align 8, !dbg !201
  %50 = fsub double %47, %49, !dbg !202
  store double %50, double* %10, align 8, !dbg !203
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !204
  %52 = load double, double* %51, align 8, !dbg !204
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !205
  %54 = load double, double* %53, align 8, !dbg !205
  %55 = fadd double %52, %54, !dbg !206
  store double %55, double* %11, align 8, !dbg !207
  %56 = load double, double* %4, align 8, !dbg !208
  %57 = fmul double %56, 0x3FE62E42FEFA39EF, !dbg !209
  %58 = call double @fabs(double %57) #1, !dbg !210
  %59 = load double, double* %5, align 8, !dbg !211
  %60 = fmul double 5.000000e-01, %59, !dbg !212
  %61 = fmul double %60, 0x400921FB54442D18, !dbg !213
  %62 = call double @fabs(double %61) #1, !dbg !214
  %63 = fadd double %58, %62, !dbg !216
  %64 = fmul double 0x3CB0000000000000, %63, !dbg !217
  %65 = load double, double* %11, align 8, !dbg !218
  %66 = fadd double %65, %64, !dbg !218
  store double %66, double* %11, align 8, !dbg !218
  %67 = load double, double* %10, align 8, !dbg !219
  %68 = load double, double* %11, align 8, !dbg !220
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !221
  %70 = call i32 @gsl_sf_exp_err_e(double %67, double %68, %struct.gsl_sf_result_struct* %69), !dbg !222
  ret i32 %70, !dbg !223
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coulomb_CL_array(double, i32, double, double*) #0 !dbg !224 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !228, metadata !60), !dbg !229
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !230, metadata !60), !dbg !231
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !232, metadata !60), !dbg !233
  store double* %3, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !234, metadata !60), !dbg !235
  call void @llvm.dbg.declare(metadata i32* %9, metadata !236, metadata !60), !dbg !237
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !238, metadata !60), !dbg !239
  %12 = load double, double* %5, align 8, !dbg !240
  %13 = load double, double* %7, align 8, !dbg !241
  %14 = call i32 @gsl_sf_coulomb_CL_e(double %12, double %13, %struct.gsl_sf_result_struct* %10), !dbg !242
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !243
  %16 = load double, double* %15, align 8, !dbg !243
  %17 = load double*, double** %8, align 8, !dbg !244
  %18 = getelementptr inbounds double, double* %17, i64 0, !dbg !244
  store double %16, double* %18, align 8, !dbg !245
  store i32 1, i32* %9, align 4, !dbg !246
  br label %19, !dbg !248

; <label>:19:                                     ; preds = %48, %4
  %20 = load i32, i32* %9, align 4, !dbg !249
  %21 = load i32, i32* %6, align 4, !dbg !252
  %22 = icmp sle i32 %20, %21, !dbg !253
  br i1 %22, label %23, label %51, !dbg !254

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata double* %11, metadata !255, metadata !60), !dbg !257
  %24 = load double, double* %5, align 8, !dbg !258
  %25 = load i32, i32* %9, align 4, !dbg !259
  %26 = sitofp i32 %25 to double, !dbg !259
  %27 = fadd double %24, %26, !dbg !260
  store double %27, double* %11, align 8, !dbg !257
  %28 = load i32, i32* %9, align 4, !dbg !261
  %29 = sub nsw i32 %28, 1, !dbg !262
  %30 = sext i32 %29 to i64, !dbg !263
  %31 = load double*, double** %8, align 8, !dbg !263
  %32 = getelementptr inbounds double, double* %31, i64 %30, !dbg !263
  %33 = load double, double* %32, align 8, !dbg !263
  %34 = load double, double* %11, align 8, !dbg !264
  %35 = load double, double* %7, align 8, !dbg !265
  %36 = call double @hypot(double %34, double %35) #6, !dbg !266
  %37 = fmul double %33, %36, !dbg !267
  %38 = load double, double* %11, align 8, !dbg !268
  %39 = load double, double* %11, align 8, !dbg !269
  %40 = fmul double 2.000000e+00, %39, !dbg !270
  %41 = fadd double %40, 1.000000e+00, !dbg !271
  %42 = fmul double %38, %41, !dbg !272
  %43 = fdiv double %37, %42, !dbg !273
  %44 = load i32, i32* %9, align 4, !dbg !274
  %45 = sext i32 %44 to i64, !dbg !275
  %46 = load double*, double** %8, align 8, !dbg !275
  %47 = getelementptr inbounds double, double* %46, i64 %45, !dbg !275
  store double %43, double* %47, align 8, !dbg !276
  br label %48, !dbg !277

; <label>:48:                                     ; preds = %23
  %49 = load i32, i32* %9, align 4, !dbg !278
  %50 = add nsw i32 %49, 1, !dbg !278
  store i32 %50, i32* %9, align 4, !dbg !278
  br label %19, !dbg !280, !llvm.loop !281

; <label>:51:                                     ; preds = %19
  ret i32 0, !dbg !283
}

; Function Attrs: nounwind
declare double @hypot(double, double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coulomb_wave_FG_e(double, double, double, i32, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*, double*, double*) #0 !dbg !284 {
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct*, align 8
  %17 = alloca %struct.gsl_sf_result_struct*, align 8
  %18 = alloca %struct.gsl_sf_result_struct*, align 8
  %19 = alloca %struct.gsl_sf_result_struct*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca %struct.gsl_sf_result_struct, align 8
  %40 = alloca %struct.gsl_sf_result_struct, align 8
  %41 = alloca %struct.gsl_sf_result_struct, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca %struct.gsl_sf_result_struct, align 8
  %52 = alloca %struct.gsl_sf_result_struct, align 8
  %53 = alloca %struct.gsl_sf_result_struct, align 8
  %54 = alloca %struct.gsl_sf_result_struct, align 8
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca double, align 8
  %63 = alloca double, align 8
  %64 = alloca double, align 8
  %65 = alloca double, align 8
  %66 = alloca double, align 8
  %67 = alloca double, align 8
  %68 = alloca i32, align 4
  %69 = alloca double, align 8
  %70 = alloca double, align 8
  %71 = alloca double, align 8
  %72 = alloca double, align 8
  %73 = alloca double, align 8
  %74 = alloca double, align 8
  %75 = alloca double, align 8
  %76 = alloca double, align 8
  %77 = alloca double, align 8
  %78 = alloca double, align 8
  %79 = alloca double, align 8
  %80 = alloca double, align 8
  %81 = alloca double, align 8
  %82 = alloca double, align 8
  %83 = alloca double, align 8
  %84 = alloca double, align 8
  %85 = alloca double, align 8
  %86 = alloca double, align 8
  %87 = alloca double, align 8
  %88 = alloca double, align 8
  %89 = alloca double, align 8
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca double, align 8
  store double %0, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !289, metadata !60), !dbg !290
  store double %1, double* %13, align 8
  call void @llvm.dbg.declare(metadata double* %13, metadata !291, metadata !60), !dbg !292
  store double %2, double* %14, align 8
  call void @llvm.dbg.declare(metadata double* %14, metadata !293, metadata !60), !dbg !294
  store i32 %3, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !295, metadata !60), !dbg !296
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %16, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %16, metadata !297, metadata !60), !dbg !298
  store %struct.gsl_sf_result_struct* %5, %struct.gsl_sf_result_struct** %17, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %17, metadata !299, metadata !60), !dbg !300
  store %struct.gsl_sf_result_struct* %6, %struct.gsl_sf_result_struct** %18, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %18, metadata !301, metadata !60), !dbg !302
  store %struct.gsl_sf_result_struct* %7, %struct.gsl_sf_result_struct** %19, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %19, metadata !303, metadata !60), !dbg !304
  store double* %8, double** %20, align 8
  call void @llvm.dbg.declare(metadata double** %20, metadata !305, metadata !60), !dbg !306
  store double* %9, double** %21, align 8
  call void @llvm.dbg.declare(metadata double** %21, metadata !307, metadata !60), !dbg !308
  call void @llvm.dbg.declare(metadata double* %22, metadata !309, metadata !60), !dbg !310
  %99 = load double, double* %14, align 8, !dbg !311
  %100 = load i32, i32* %15, align 4, !dbg !312
  %101 = sitofp i32 %100 to double, !dbg !312
  %102 = fsub double %99, %101, !dbg !313
  store double %102, double* %22, align 8, !dbg !310
  %103 = load double, double* %13, align 8, !dbg !314
  %104 = fcmp olt double %103, 0.000000e+00, !dbg !316
  br i1 %104, label %111, label %105, !dbg !317

; <label>:105:                                    ; preds = %10
  %106 = load double, double* %14, align 8, !dbg !318
  %107 = fcmp ole double %106, -5.000000e-01, !dbg !320
  br i1 %107, label %111, label %108, !dbg !321

; <label>:108:                                    ; preds = %105
  %109 = load double, double* %22, align 8, !dbg !322
  %110 = fcmp ole double %109, -5.000000e-01, !dbg !324
  br i1 %110, label %111, label %140, !dbg !325

; <label>:111:                                    ; preds = %108, %105, %10
  br label %112, !dbg !326, !llvm.loop !328

; <label>:112:                                    ; preds = %111
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !329
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !329
  store double 0.000000e+00, double* %114, align 8, !dbg !329
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !329
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !329
  store double 0.000000e+00, double* %116, align 8, !dbg !329
  br label %117, !dbg !329

; <label>:117:                                    ; preds = %112
  br label %118, !dbg !332, !llvm.loop !333

; <label>:118:                                    ; preds = %117
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !334
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 0, !dbg !334
  store double 0.000000e+00, double* %120, align 8, !dbg !334
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !334
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 1, !dbg !334
  store double 0.000000e+00, double* %122, align 8, !dbg !334
  br label %123, !dbg !334

; <label>:123:                                    ; preds = %118
  br label %124, !dbg !337, !llvm.loop !338

; <label>:124:                                    ; preds = %123
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !339
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !339
  store double 0.000000e+00, double* %126, align 8, !dbg !339
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !339
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !339
  store double 0.000000e+00, double* %128, align 8, !dbg !339
  br label %129, !dbg !339

; <label>:129:                                    ; preds = %124
  br label %130, !dbg !342, !llvm.loop !343

; <label>:130:                                    ; preds = %129
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !344
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !344
  store double 0.000000e+00, double* %132, align 8, !dbg !344
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !344
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 1, !dbg !344
  store double 0.000000e+00, double* %134, align 8, !dbg !344
  br label %135, !dbg !344

; <label>:135:                                    ; preds = %130
  %136 = load double*, double** %20, align 8, !dbg !347
  store double 0.000000e+00, double* %136, align 8, !dbg !348
  %137 = load double*, double** %21, align 8, !dbg !349
  store double 0.000000e+00, double* %137, align 8, !dbg !350
  br label %138, !dbg !351, !llvm.loop !352

; <label>:138:                                    ; preds = %135
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 912, i32 1), !dbg !353
  store i32 1, i32* %11, align 4, !dbg !353
  br label %893, !dbg !353
                                                  ; No predecessors!
  br label %893, !dbg !356

; <label>:140:                                    ; preds = %108
  %141 = load double, double* %13, align 8, !dbg !357
  %142 = fcmp oeq double %141, 0.000000e+00, !dbg !359
  br i1 %142, label %143, label %211, !dbg !360

; <label>:143:                                    ; preds = %140
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !361, metadata !60), !dbg !363
  %144 = load double, double* %12, align 8, !dbg !364
  %145 = call i32 @CLeta(double 0.000000e+00, double %144, %struct.gsl_sf_result_struct* %23), !dbg !365
  br label %146, !dbg !366, !llvm.loop !367

; <label>:146:                                    ; preds = %143
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !368
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 0, !dbg !368
  store double 0.000000e+00, double* %148, align 8, !dbg !368
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !368
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 1, !dbg !368
  store double 0.000000e+00, double* %150, align 8, !dbg !368
  br label %151, !dbg !368

; <label>:151:                                    ; preds = %146
  br label %152, !dbg !371, !llvm.loop !372

; <label>:152:                                    ; preds = %151
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !373
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 0, !dbg !373
  store double 0.000000e+00, double* %154, align 8, !dbg !373
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !373
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 1, !dbg !373
  store double 0.000000e+00, double* %156, align 8, !dbg !373
  br label %157, !dbg !373

; <label>:157:                                    ; preds = %152
  br label %158, !dbg !376, !llvm.loop !377

; <label>:158:                                    ; preds = %157
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !378
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !378
  store double 0.000000e+00, double* %160, align 8, !dbg !378
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !378
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 1, !dbg !378
  store double 0.000000e+00, double* %162, align 8, !dbg !378
  br label %163, !dbg !378

; <label>:163:                                    ; preds = %158
  br label %164, !dbg !381, !llvm.loop !382

; <label>:164:                                    ; preds = %163
  %165 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !383
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %165, i32 0, i32 0, !dbg !383
  store double 0.000000e+00, double* %166, align 8, !dbg !383
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !383
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 1, !dbg !383
  store double 0.000000e+00, double* %168, align 8, !dbg !383
  br label %169, !dbg !383

; <label>:169:                                    ; preds = %164
  %170 = load double*, double** %20, align 8, !dbg !386
  store double 0.000000e+00, double* %170, align 8, !dbg !387
  %171 = load double*, double** %21, align 8, !dbg !388
  store double 0.000000e+00, double* %171, align 8, !dbg !389
  %172 = load double, double* %14, align 8, !dbg !390
  %173 = fcmp oeq double %172, 0.000000e+00, !dbg !392
  br i1 %173, label %174, label %185, !dbg !393

; <label>:174:                                    ; preds = %169
  br label %175, !dbg !394, !llvm.loop !396

; <label>:175:                                    ; preds = %174
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !397
  %177 = load double, double* %176, align 8, !dbg !397
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !397
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !397
  store double %177, double* %179, align 8, !dbg !397
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !397
  %181 = load double, double* %180, align 8, !dbg !397
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !397
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %182, i32 0, i32 1, !dbg !397
  store double %181, double* %183, align 8, !dbg !397
  br label %184, !dbg !397

; <label>:184:                                    ; preds = %175
  br label %185, !dbg !400

; <label>:185:                                    ; preds = %184, %169
  %186 = load double, double* %22, align 8, !dbg !401
  %187 = fcmp oeq double %186, 0.000000e+00, !dbg !403
  br i1 %187, label %188, label %208, !dbg !404

; <label>:188:                                    ; preds = %185
  br label %189, !dbg !405, !llvm.loop !407

; <label>:189:                                    ; preds = %188
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !408
  %191 = load double, double* %190, align 8, !dbg !408
  %192 = fdiv double 1.000000e+00, %191, !dbg !408
  %193 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !408
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %193, i32 0, i32 0, !dbg !408
  store double %192, double* %194, align 8, !dbg !408
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !408
  %196 = load double, double* %195, align 8, !dbg !408
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !408
  %198 = load double, double* %197, align 8, !dbg !408
  %199 = fdiv double %196, %198, !dbg !408
  %200 = call double @fabs(double %199) #1, !dbg !408
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !408
  %202 = load double, double* %201, align 8, !dbg !408
  %203 = call double @fabs(double %202) #1, !dbg !411
  %204 = fdiv double %200, %203, !dbg !408
  %205 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !408
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %205, i32 0, i32 1, !dbg !408
  store double %204, double* %206, align 8, !dbg !408
  br label %207, !dbg !408

; <label>:207:                                    ; preds = %189
  br label %208, !dbg !413

; <label>:208:                                    ; preds = %207, %185
  br label %209, !dbg !414, !llvm.loop !415

; <label>:209:                                    ; preds = %208
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 929, i32 1), !dbg !416
  store i32 1, i32* %11, align 4, !dbg !416
  br label %893, !dbg !416
                                                  ; No predecessors!
  br label %892, !dbg !419

; <label>:211:                                    ; preds = %140
  %212 = load double, double* %13, align 8, !dbg !420
  %213 = fcmp olt double %212, 1.200000e+00, !dbg !422
  br i1 %213, label %214, label %533, !dbg !423

; <label>:214:                                    ; preds = %211
  %215 = load double, double* %12, align 8, !dbg !424
  %216 = fmul double 0x401921FB54442D18, %215, !dbg !426
  %217 = fcmp olt double %216, 0x4083EC744754DD24, !dbg !427
  br i1 %217, label %218, label %533, !dbg !428

; <label>:218:                                    ; preds = %214
  %219 = load double, double* %12, align 8, !dbg !429
  %220 = load double, double* %13, align 8, !dbg !431
  %221 = fmul double %219, %220, !dbg !432
  %222 = call double @fabs(double %221) #1, !dbg !433
  %223 = fcmp olt double %222, 1.000000e+01, !dbg !434
  br i1 %223, label %224, label %533, !dbg !435

; <label>:224:                                    ; preds = %218
  call void @llvm.dbg.declare(metadata double* %24, metadata !436, metadata !60), !dbg !438
  store double 0x3E50000000000000, double* %24, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata i32* %25, metadata !439, metadata !60), !dbg !440
  %225 = load double, double* %14, align 8, !dbg !441
  %226 = fadd double %225, 5.000000e-01, !dbg !442
  %227 = fptosi double %226 to i32, !dbg !443
  store i32 %227, i32* %25, align 4, !dbg !440
  call void @llvm.dbg.declare(metadata i32* %26, metadata !444, metadata !60), !dbg !445
  %228 = load i32, i32* %15, align 4, !dbg !446
  %229 = load i32, i32* %25, align 4, !dbg !446
  %230 = icmp sgt i32 %228, %229, !dbg !446
  br i1 %230, label %231, label %233, !dbg !446

; <label>:231:                                    ; preds = %224
  %232 = load i32, i32* %15, align 4, !dbg !447
  br label %235, !dbg !447

; <label>:233:                                    ; preds = %224
  %234 = load i32, i32* %25, align 4, !dbg !449
  br label %235, !dbg !449

; <label>:235:                                    ; preds = %233, %231
  %236 = phi i32 [ %232, %231 ], [ %234, %233 ], !dbg !451
  store i32 %236, i32* %26, align 4, !dbg !453
  call void @llvm.dbg.declare(metadata double* %27, metadata !454, metadata !60), !dbg !455
  %237 = load double, double* %14, align 8, !dbg !456
  %238 = load i32, i32* %25, align 4, !dbg !457
  %239 = sitofp i32 %238 to double, !dbg !457
  %240 = fsub double %237, %239, !dbg !458
  store double %240, double* %27, align 8, !dbg !455
  call void @llvm.dbg.declare(metadata double* %28, metadata !459, metadata !60), !dbg !460
  call void @llvm.dbg.declare(metadata double* %29, metadata !461, metadata !60), !dbg !462
  call void @llvm.dbg.declare(metadata double* %30, metadata !463, metadata !60), !dbg !464
  call void @llvm.dbg.declare(metadata double* %31, metadata !465, metadata !60), !dbg !466
  call void @llvm.dbg.declare(metadata double* %32, metadata !467, metadata !60), !dbg !468
  call void @llvm.dbg.declare(metadata double* %33, metadata !469, metadata !60), !dbg !470
  call void @llvm.dbg.declare(metadata double* %34, metadata !471, metadata !60), !dbg !472
  call void @llvm.dbg.declare(metadata double* %35, metadata !473, metadata !60), !dbg !474
  call void @llvm.dbg.declare(metadata double* %36, metadata !475, metadata !60), !dbg !476
  call void @llvm.dbg.declare(metadata double* %37, metadata !477, metadata !60), !dbg !478
  call void @llvm.dbg.declare(metadata double* %38, metadata !479, metadata !60), !dbg !480
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %39, metadata !481, metadata !60), !dbg !482
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %40, metadata !483, metadata !60), !dbg !484
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %41, metadata !485, metadata !60), !dbg !486
  call void @llvm.dbg.declare(metadata double* %42, metadata !487, metadata !60), !dbg !488
  call void @llvm.dbg.declare(metadata double* %43, metadata !489, metadata !60), !dbg !490
  call void @llvm.dbg.declare(metadata double* %44, metadata !491, metadata !60), !dbg !492
  call void @llvm.dbg.declare(metadata double* %45, metadata !493, metadata !60), !dbg !494
  call void @llvm.dbg.declare(metadata i32* %46, metadata !495, metadata !60), !dbg !496
  call void @llvm.dbg.declare(metadata i32* %47, metadata !497, metadata !60), !dbg !498
  %241 = load double, double* %14, align 8, !dbg !499
  %242 = load double, double* %12, align 8, !dbg !500
  %243 = load double, double* %13, align 8, !dbg !501
  %244 = call i32 @coulomb_CF1(double %241, double %242, double %243, double* %35, double* %34, i32* %46), !dbg !502
  store i32 %244, i32* %47, align 4, !dbg !498
  call void @llvm.dbg.declare(metadata i32* %48, metadata !503, metadata !60), !dbg !504
  call void @llvm.dbg.declare(metadata i32* %49, metadata !505, metadata !60), !dbg !506
  call void @llvm.dbg.declare(metadata i32* %50, metadata !507, metadata !60), !dbg !508
  store double 0x3E50000000000000, double* %28, align 8, !dbg !509
  %245 = load double, double* %34, align 8, !dbg !510
  %246 = load double, double* %28, align 8, !dbg !511
  %247 = fmul double %245, %246, !dbg !512
  store double %247, double* %29, align 8, !dbg !513
  %248 = load i32, i32* %26, align 4, !dbg !514
  %249 = icmp ne i32 %248, 0, !dbg !516
  br i1 %249, label %250, label %258, !dbg !517

; <label>:250:                                    ; preds = %235
  %251 = load double, double* %27, align 8, !dbg !518
  %252 = load i32, i32* %26, align 4, !dbg !520
  %253 = load double, double* %12, align 8, !dbg !521
  %254 = load double, double* %13, align 8, !dbg !522
  %255 = load double, double* %28, align 8, !dbg !523
  %256 = load double, double* %29, align 8, !dbg !524
  %257 = call i32 @coulomb_F_recur(double %251, i32 %252, double %253, double %254, double %255, double %256, double* %36, double* %37), !dbg !525
  store i32 %257, i32* %49, align 4, !dbg !526
  br label %261, !dbg !527

; <label>:258:                                    ; preds = %235
  %259 = load double, double* %28, align 8, !dbg !528
  store double %259, double* %36, align 8, !dbg !530
  %260 = load double, double* %29, align 8, !dbg !531
  store double %260, double* %37, align 8, !dbg !532
  store i32 0, i32* %49, align 4, !dbg !533
  br label %261

; <label>:261:                                    ; preds = %258, %250
  %262 = load double, double* %27, align 8, !dbg !534
  %263 = fcmp oeq double %262, -5.000000e-01, !dbg !536
  br i1 %263, label %264, label %268, !dbg !537

; <label>:264:                                    ; preds = %261
  %265 = load double, double* %12, align 8, !dbg !538
  %266 = load double, double* %13, align 8, !dbg !540
  %267 = call i32 @coulomb_FGmhalf_series(double %265, double %266, %struct.gsl_sf_result_struct* %39, %struct.gsl_sf_result_struct* %40), !dbg !541
  store i32 %267, i32* %48, align 4, !dbg !542
  br label %330, !dbg !543

; <label>:268:                                    ; preds = %261
  %269 = load double, double* %27, align 8, !dbg !544
  %270 = fcmp oeq double %269, 0.000000e+00, !dbg !546
  br i1 %270, label %271, label %275, !dbg !547

; <label>:271:                                    ; preds = %268
  %272 = load double, double* %12, align 8, !dbg !548
  %273 = load double, double* %13, align 8, !dbg !550
  %274 = call i32 @coulomb_FG0_series(double %272, double %273, %struct.gsl_sf_result_struct* %39, %struct.gsl_sf_result_struct* %40), !dbg !551
  store i32 %274, i32* %48, align 4, !dbg !552
  br label %329, !dbg !553

; <label>:275:                                    ; preds = %268
  %276 = load double, double* %27, align 8, !dbg !554
  %277 = fcmp oeq double %276, 5.000000e-01, !dbg !556
  br i1 %277, label %278, label %323, !dbg !557

; <label>:278:                                    ; preds = %275
  %279 = load double, double* %28, align 8, !dbg !558
  %280 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !560
  %281 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %280, i32 0, i32 0, !dbg !561
  store double %279, double* %281, align 8, !dbg !562
  %282 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !563
  %283 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %282, i32 0, i32 0, !dbg !564
  %284 = load double, double* %283, align 8, !dbg !564
  %285 = call double @fabs(double %284) #1, !dbg !565
  %286 = fmul double 0x3CC0000000000000, %285, !dbg !566
  %287 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !567
  %288 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %287, i32 0, i32 1, !dbg !568
  store double %286, double* %288, align 8, !dbg !569
  %289 = load double, double* %29, align 8, !dbg !570
  %290 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !571
  %291 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %290, i32 0, i32 0, !dbg !572
  store double %289, double* %291, align 8, !dbg !573
  %292 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !574
  %293 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %292, i32 0, i32 0, !dbg !575
  %294 = load double, double* %293, align 8, !dbg !575
  %295 = call double @fabs(double %294) #1, !dbg !576
  %296 = fmul double 0x3CC0000000000000, %295, !dbg !577
  %297 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !578
  %298 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %297, i32 0, i32 1, !dbg !579
  store double %296, double* %298, align 8, !dbg !580
  %299 = load double, double* %30, align 8, !dbg !581
  %300 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !582
  %301 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %300, i32 0, i32 0, !dbg !583
  store double %299, double* %301, align 8, !dbg !584
  %302 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !585
  %303 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %302, i32 0, i32 0, !dbg !586
  %304 = load double, double* %303, align 8, !dbg !586
  %305 = call double @fabs(double %304) #1, !dbg !587
  %306 = fmul double 0x3CC0000000000000, %305, !dbg !588
  %307 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !589
  %308 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %307, i32 0, i32 1, !dbg !590
  store double %306, double* %308, align 8, !dbg !591
  %309 = load double, double* %31, align 8, !dbg !592
  %310 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !593
  %311 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %310, i32 0, i32 0, !dbg !594
  store double %309, double* %311, align 8, !dbg !595
  %312 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !596
  %313 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %312, i32 0, i32 0, !dbg !597
  %314 = load double, double* %313, align 8, !dbg !597
  %315 = call double @fabs(double %314) #1, !dbg !598
  %316 = fmul double 0x3CC0000000000000, %315, !dbg !599
  %317 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !600
  %318 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %317, i32 0, i32 1, !dbg !601
  store double %316, double* %318, align 8, !dbg !602
  %319 = load double*, double** %20, align 8, !dbg !603
  store double 0.000000e+00, double* %319, align 8, !dbg !604
  %320 = load double*, double** %21, align 8, !dbg !605
  store double 0.000000e+00, double* %320, align 8, !dbg !606
  br label %321, !dbg !607, !llvm.loop !608

; <label>:321:                                    ; preds = %278
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1000, i32 7), !dbg !609
  store i32 7, i32* %11, align 4, !dbg !609
  br label %893, !dbg !609
                                                  ; No predecessors!
  br label %328, !dbg !612

; <label>:323:                                    ; preds = %275
  %324 = load double, double* %27, align 8, !dbg !613
  %325 = load double, double* %12, align 8, !dbg !615
  %326 = load double, double* %13, align 8, !dbg !616
  %327 = call i32 @coulomb_FG_series(double %324, double %325, double %326, %struct.gsl_sf_result_struct* %39, %struct.gsl_sf_result_struct* %40), !dbg !617
  store i32 %327, i32* %48, align 4, !dbg !618
  br label %328

; <label>:328:                                    ; preds = %323, %322
  br label %329

; <label>:329:                                    ; preds = %328, %271
  br label %330

; <label>:330:                                    ; preds = %329, %264
  %331 = load double, double* %37, align 8, !dbg !619
  %332 = load double, double* %36, align 8, !dbg !620
  %333 = fdiv double %331, %332, !dbg !621
  store double %333, double* %38, align 8, !dbg !622
  %334 = load double, double* %38, align 8, !dbg !623
  %335 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !624
  %336 = load double, double* %335, align 8, !dbg !624
  %337 = fmul double %334, %336, !dbg !625
  %338 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !626
  %339 = load double, double* %338, align 8, !dbg !626
  %340 = fdiv double 1.000000e+00, %339, !dbg !627
  %341 = fsub double %337, %340, !dbg !628
  %342 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !629
  store double %341, double* %342, align 8, !dbg !630
  %343 = load double, double* %38, align 8, !dbg !631
  %344 = call double @fabs(double %343) #1, !dbg !632
  %345 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !633
  %346 = load double, double* %345, align 8, !dbg !633
  %347 = fmul double %344, %346, !dbg !634
  %348 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !635
  store double %347, double* %348, align 8, !dbg !636
  %349 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !637
  %350 = load double, double* %349, align 8, !dbg !637
  %351 = fdiv double 1.000000e+00, %350, !dbg !638
  %352 = call double @fabs(double %351) #1, !dbg !639
  %353 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !640
  %354 = load double, double* %353, align 8, !dbg !640
  %355 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !641
  %356 = load double, double* %355, align 8, !dbg !641
  %357 = fdiv double %354, %356, !dbg !642
  %358 = call double @fabs(double %357) #1, !dbg !643
  %359 = fmul double %352, %358, !dbg !644
  %360 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !645
  %361 = load double, double* %360, align 8, !dbg !646
  %362 = fadd double %361, %359, !dbg !646
  store double %362, double* %360, align 8, !dbg !646
  %363 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !647
  %364 = load double, double* %363, align 8, !dbg !647
  %365 = load double, double* %36, align 8, !dbg !648
  %366 = fdiv double %364, %365, !dbg !649
  store double %366, double* %42, align 8, !dbg !650
  %367 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !651
  %368 = load double, double* %367, align 8, !dbg !651
  %369 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !652
  %370 = load double, double* %369, align 8, !dbg !652
  %371 = fdiv double %368, %370, !dbg !653
  %372 = call double @fabs(double %371) #1, !dbg !654
  store double %372, double* %44, align 8, !dbg !655
  %373 = load i32, i32* %46, align 4, !dbg !656
  %374 = load i32, i32* %26, align 4, !dbg !657
  %375 = add nsw i32 %373, %374, !dbg !658
  %376 = add nsw i32 %375, 1, !dbg !659
  %377 = sitofp i32 %376 to double, !dbg !660
  %378 = fmul double 0x3CC0000000000000, %377, !dbg !661
  store double %378, double* %45, align 8, !dbg !662
  %379 = load double, double* %42, align 8, !dbg !663
  %380 = load double, double* %28, align 8, !dbg !664
  %381 = fmul double %380, %379, !dbg !664
  store double %381, double* %28, align 8, !dbg !664
  %382 = load double, double* %28, align 8, !dbg !665
  %383 = call double @fabs(double %382) #1, !dbg !666
  %384 = load double, double* %45, align 8, !dbg !667
  %385 = load double, double* %44, align 8, !dbg !668
  %386 = fadd double %384, %385, !dbg !669
  %387 = fmul double %383, %386, !dbg !670
  store double %387, double* %32, align 8, !dbg !671
  %388 = load double, double* %42, align 8, !dbg !672
  %389 = load double, double* %29, align 8, !dbg !673
  %390 = fmul double %389, %388, !dbg !673
  store double %390, double* %29, align 8, !dbg !673
  %391 = load double, double* %29, align 8, !dbg !674
  %392 = call double @fabs(double %391) #1, !dbg !675
  %393 = load double, double* %45, align 8, !dbg !676
  %394 = load double, double* %44, align 8, !dbg !677
  %395 = fadd double %393, %394, !dbg !678
  %396 = fmul double %392, %395, !dbg !679
  store double %396, double* %33, align 8, !dbg !680
  %397 = load double, double* %27, align 8, !dbg !681
  %398 = load i32, i32* %25, align 4, !dbg !682
  %399 = load i32, i32* %15, align 4, !dbg !682
  %400 = sub nsw i32 %398, %399, !dbg !682
  %401 = icmp sgt i32 %400, 0, !dbg !682
  br i1 %401, label %402, label %406, !dbg !682

; <label>:402:                                    ; preds = %330
  %403 = load i32, i32* %25, align 4, !dbg !683
  %404 = load i32, i32* %15, align 4, !dbg !683
  %405 = sub nsw i32 %403, %404, !dbg !683
  br label %407, !dbg !683

; <label>:406:                                    ; preds = %330
  br label %407, !dbg !684

; <label>:407:                                    ; preds = %406, %402
  %408 = phi i32 [ %405, %402 ], [ 0, %406 ], !dbg !685
  %409 = load double, double* %12, align 8, !dbg !686
  %410 = load double, double* %13, align 8, !dbg !687
  %411 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !688
  %412 = load double, double* %411, align 8, !dbg !688
  %413 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !689
  %414 = load double, double* %413, align 8, !dbg !689
  %415 = call i32 @coulomb_G_recur(double %397, i32 %408, double %409, double %410, double %412, double %414, double* %30, double* %31), !dbg !690
  store i32 %415, i32* %50, align 4, !dbg !691
  %416 = load double, double* %28, align 8, !dbg !692
  %417 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !693
  %418 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %417, i32 0, i32 0, !dbg !694
  store double %416, double* %418, align 8, !dbg !695
  %419 = load double, double* %32, align 8, !dbg !696
  %420 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !697
  %421 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %420, i32 0, i32 1, !dbg !698
  store double %419, double* %421, align 8, !dbg !699
  %422 = load double, double* %28, align 8, !dbg !700
  %423 = call double @fabs(double %422) #1, !dbg !701
  %424 = fmul double 0x3CC0000000000000, %423, !dbg !702
  %425 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !703
  %426 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %425, i32 0, i32 1, !dbg !704
  %427 = load double, double* %426, align 8, !dbg !705
  %428 = fadd double %427, %424, !dbg !705
  store double %428, double* %426, align 8, !dbg !705
  %429 = load double, double* %29, align 8, !dbg !706
  %430 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !707
  %431 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %430, i32 0, i32 0, !dbg !708
  store double %429, double* %431, align 8, !dbg !709
  %432 = load double, double* %33, align 8, !dbg !710
  %433 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !711
  %434 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %433, i32 0, i32 1, !dbg !712
  store double %432, double* %434, align 8, !dbg !713
  %435 = load double, double* %29, align 8, !dbg !714
  %436 = call double @fabs(double %435) #1, !dbg !715
  %437 = fmul double 0x3CC0000000000000, %436, !dbg !716
  %438 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !717
  %439 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %438, i32 0, i32 1, !dbg !718
  %440 = load double, double* %439, align 8, !dbg !719
  %441 = fadd double %440, %437, !dbg !719
  store double %441, double* %439, align 8, !dbg !719
  %442 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !720
  %443 = load double, double* %442, align 8, !dbg !720
  %444 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !721
  %445 = load double, double* %444, align 8, !dbg !721
  %446 = fdiv double %443, %445, !dbg !722
  %447 = call double @fabs(double %446) #1, !dbg !723
  %448 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !724
  %449 = load double, double* %448, align 8, !dbg !724
  %450 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !725
  %451 = load double, double* %450, align 8, !dbg !725
  %452 = fdiv double %449, %451, !dbg !726
  %453 = call double @fabs(double %452) #1, !dbg !727
  %454 = fadd double %447, %453, !dbg !728
  store double %454, double* %43, align 8, !dbg !729
  %455 = load double, double* %30, align 8, !dbg !730
  %456 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !731
  %457 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %456, i32 0, i32 0, !dbg !732
  store double %455, double* %457, align 8, !dbg !733
  %458 = load double, double* %43, align 8, !dbg !734
  %459 = load double, double* %30, align 8, !dbg !735
  %460 = call double @fabs(double %459) #1, !dbg !736
  %461 = fmul double %458, %460, !dbg !737
  %462 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !738
  %463 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %462, i32 0, i32 1, !dbg !739
  store double %461, double* %463, align 8, !dbg !740
  %464 = load i32, i32* %46, align 4, !dbg !741
  %465 = add nsw i32 %464, 1, !dbg !742
  %466 = sitofp i32 %465 to double, !dbg !743
  %467 = fmul double 2.000000e+00, %466, !dbg !744
  %468 = fmul double %467, 0x3CB0000000000000, !dbg !745
  %469 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !746
  %470 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %469, i32 0, i32 0, !dbg !747
  %471 = load double, double* %470, align 8, !dbg !747
  %472 = call double @fabs(double %471) #1, !dbg !748
  %473 = fmul double %468, %472, !dbg !749
  %474 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !750
  %475 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %474, i32 0, i32 1, !dbg !751
  %476 = load double, double* %475, align 8, !dbg !752
  %477 = fadd double %476, %473, !dbg !752
  store double %477, double* %475, align 8, !dbg !752
  %478 = load double, double* %31, align 8, !dbg !753
  %479 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !754
  %480 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %479, i32 0, i32 0, !dbg !755
  store double %478, double* %480, align 8, !dbg !756
  %481 = load double, double* %43, align 8, !dbg !757
  %482 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !758
  %483 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %482, i32 0, i32 0, !dbg !759
  %484 = load double, double* %483, align 8, !dbg !759
  %485 = call double @fabs(double %484) #1, !dbg !760
  %486 = fmul double %481, %485, !dbg !761
  %487 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !762
  %488 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %487, i32 0, i32 1, !dbg !763
  store double %486, double* %488, align 8, !dbg !764
  %489 = load i32, i32* %46, align 4, !dbg !765
  %490 = add nsw i32 %489, 1, !dbg !766
  %491 = sitofp i32 %490 to double, !dbg !767
  %492 = fmul double 2.000000e+00, %491, !dbg !768
  %493 = fmul double %492, 0x3CB0000000000000, !dbg !769
  %494 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !770
  %495 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %494, i32 0, i32 0, !dbg !771
  %496 = load double, double* %495, align 8, !dbg !771
  %497 = call double @fabs(double %496) #1, !dbg !772
  %498 = fmul double %493, %497, !dbg !773
  %499 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !774
  %500 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %499, i32 0, i32 1, !dbg !775
  %501 = load double, double* %500, align 8, !dbg !776
  %502 = fadd double %501, %498, !dbg !776
  store double %502, double* %500, align 8, !dbg !776
  %503 = load double*, double** %20, align 8, !dbg !777
  store double 0.000000e+00, double* %503, align 8, !dbg !778
  %504 = load double*, double** %21, align 8, !dbg !779
  store double 0.000000e+00, double* %504, align 8, !dbg !780
  %505 = load i32, i32* %48, align 4, !dbg !781
  %506 = icmp ne i32 %505, 0, !dbg !781
  br i1 %506, label %507, label %509, !dbg !781

; <label>:507:                                    ; preds = %407
  %508 = load i32, i32* %48, align 4, !dbg !782
  br label %531, !dbg !782

; <label>:509:                                    ; preds = %407
  %510 = load i32, i32* %47, align 4, !dbg !783
  %511 = icmp ne i32 %510, 0, !dbg !783
  br i1 %511, label %512, label %514, !dbg !783

; <label>:512:                                    ; preds = %509
  %513 = load i32, i32* %47, align 4, !dbg !784
  br label %529, !dbg !784

; <label>:514:                                    ; preds = %509
  %515 = load i32, i32* %49, align 4, !dbg !785
  %516 = icmp ne i32 %515, 0, !dbg !785
  br i1 %516, label %517, label %519, !dbg !785

; <label>:517:                                    ; preds = %514
  %518 = load i32, i32* %49, align 4, !dbg !787
  br label %527, !dbg !787

; <label>:519:                                    ; preds = %514
  %520 = load i32, i32* %50, align 4, !dbg !789
  %521 = icmp ne i32 %520, 0, !dbg !789
  br i1 %521, label %522, label %524, !dbg !789

; <label>:522:                                    ; preds = %519
  %523 = load i32, i32* %50, align 4, !dbg !791
  br label %525, !dbg !791

; <label>:524:                                    ; preds = %519
  br label %525, !dbg !793

; <label>:525:                                    ; preds = %524, %522
  %526 = phi i32 [ %523, %522 ], [ 0, %524 ], !dbg !795
  br label %527, !dbg !795

; <label>:527:                                    ; preds = %525, %517
  %528 = phi i32 [ %518, %517 ], [ %526, %525 ], !dbg !797
  br label %529, !dbg !797

; <label>:529:                                    ; preds = %527, %512
  %530 = phi i32 [ %513, %512 ], [ %528, %527 ], !dbg !799
  br label %531, !dbg !799

; <label>:531:                                    ; preds = %529, %507
  %532 = phi i32 [ %508, %507 ], [ %530, %529 ], !dbg !801
  store i32 %532, i32* %11, align 4, !dbg !803
  br label %893, !dbg !803

; <label>:533:                                    ; preds = %218, %214, %211
  %534 = load double, double* %13, align 8, !dbg !804
  %535 = load double, double* %12, align 8, !dbg !806
  %536 = fmul double 2.000000e+00, %535, !dbg !807
  %537 = fcmp olt double %534, %536, !dbg !808
  br i1 %537, label %538, label %672, !dbg !809

; <label>:538:                                    ; preds = %533
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %51, metadata !810, metadata !60), !dbg !812
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %52, metadata !813, metadata !60), !dbg !814
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %53, metadata !815, metadata !60), !dbg !816
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %54, metadata !817, metadata !60), !dbg !818
  call void @llvm.dbg.declare(metadata double* %55, metadata !819, metadata !60), !dbg !820
  call void @llvm.dbg.declare(metadata double* %56, metadata !821, metadata !60), !dbg !822
  call void @llvm.dbg.declare(metadata i32* %57, metadata !823, metadata !60), !dbg !824
  call void @llvm.dbg.declare(metadata i32* %58, metadata !825, metadata !60), !dbg !826
  call void @llvm.dbg.declare(metadata i32* %59, metadata !827, metadata !60), !dbg !828
  call void @llvm.dbg.declare(metadata i32* %60, metadata !829, metadata !60), !dbg !830
  call void @llvm.dbg.declare(metadata i32* %61, metadata !831, metadata !60), !dbg !832
  call void @llvm.dbg.declare(metadata double* %62, metadata !833, metadata !60), !dbg !834
  call void @llvm.dbg.declare(metadata double* %63, metadata !835, metadata !60), !dbg !836
  call void @llvm.dbg.declare(metadata double* %64, metadata !837, metadata !60), !dbg !838
  call void @llvm.dbg.declare(metadata double* %65, metadata !839, metadata !60), !dbg !840
  %539 = load double, double* %14, align 8, !dbg !841
  %540 = load double, double* %12, align 8, !dbg !842
  %541 = load double, double* %13, align 8, !dbg !843
  %542 = call i32 @coulomb_jwkb(double %539, double %540, double %541, %struct.gsl_sf_result_struct* %51, %struct.gsl_sf_result_struct* %52, double* %55), !dbg !844
  store i32 %542, i32* %57, align 4, !dbg !845
  %543 = load i32, i32* %15, align 4, !dbg !846
  %544 = icmp eq i32 %543, 0, !dbg !848
  br i1 %544, label %545, label %552, !dbg !849

; <label>:545:                                    ; preds = %538
  %546 = load i32, i32* %57, align 4, !dbg !850
  store i32 %546, i32* %58, align 4, !dbg !852
  %547 = bitcast %struct.gsl_sf_result_struct* %53 to i8*, !dbg !853
  %548 = bitcast %struct.gsl_sf_result_struct* %51 to i8*, !dbg !853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %547, i8* %548, i64 16, i32 8, i1 false), !dbg !853
  %549 = bitcast %struct.gsl_sf_result_struct* %54 to i8*, !dbg !854
  %550 = bitcast %struct.gsl_sf_result_struct* %52 to i8*, !dbg !854
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %549, i8* %550, i64 16, i32 8, i1 false), !dbg !854
  %551 = load double, double* %55, align 8, !dbg !855
  store double %551, double* %56, align 8, !dbg !856
  br label %557, !dbg !857

; <label>:552:                                    ; preds = %538
  %553 = load double, double* %22, align 8, !dbg !858
  %554 = load double, double* %12, align 8, !dbg !860
  %555 = load double, double* %13, align 8, !dbg !861
  %556 = call i32 @coulomb_jwkb(double %553, double %554, double %555, %struct.gsl_sf_result_struct* %53, %struct.gsl_sf_result_struct* %54, double* %56), !dbg !862
  store i32 %556, i32* %58, align 4, !dbg !863
  br label %557

; <label>:557:                                    ; preds = %552, %545
  %558 = load double, double* %14, align 8, !dbg !864
  %559 = load double, double* %12, align 8, !dbg !865
  %560 = load double, double* %13, align 8, !dbg !866
  %561 = call i32 @coulomb_CF1(double %558, double %559, double %560, double* %64, double* %62, i32* %61), !dbg !867
  store i32 %561, i32* %59, align 4, !dbg !868
  %562 = load i32, i32* %15, align 4, !dbg !869
  %563 = icmp eq i32 %562, 0, !dbg !871
  br i1 %563, label %564, label %568, !dbg !872

; <label>:564:                                    ; preds = %557
  %565 = load i32, i32* %59, align 4, !dbg !873
  store i32 %565, i32* %60, align 4, !dbg !875
  %566 = load double, double* %64, align 8, !dbg !876
  store double %566, double* %65, align 8, !dbg !877
  %567 = load double, double* %62, align 8, !dbg !878
  store double %567, double* %63, align 8, !dbg !879
  br label %573, !dbg !880

; <label>:568:                                    ; preds = %557
  %569 = load double, double* %22, align 8, !dbg !881
  %570 = load double, double* %12, align 8, !dbg !883
  %571 = load double, double* %13, align 8, !dbg !884
  %572 = call i32 @coulomb_CF1(double %569, double %570, double %571, double* %65, double* %63, i32* %61), !dbg !885
  store i32 %572, i32* %60, align 4, !dbg !886
  br label %573

; <label>:573:                                    ; preds = %568, %564
  %574 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !887
  %575 = load double, double* %574, align 8, !dbg !887
  %576 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !888
  %577 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %576, i32 0, i32 0, !dbg !889
  store double %575, double* %577, align 8, !dbg !890
  %578 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !891
  %579 = load double, double* %578, align 8, !dbg !891
  %580 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !892
  %581 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %580, i32 0, i32 1, !dbg !893
  store double %579, double* %581, align 8, !dbg !894
  %582 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !895
  %583 = load double, double* %582, align 8, !dbg !895
  %584 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !896
  %585 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %584, i32 0, i32 0, !dbg !897
  store double %583, double* %585, align 8, !dbg !898
  %586 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !899
  %587 = load double, double* %586, align 8, !dbg !899
  %588 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !900
  %589 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %588, i32 0, i32 1, !dbg !901
  store double %587, double* %589, align 8, !dbg !902
  %590 = load double, double* %62, align 8, !dbg !903
  %591 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !904
  %592 = load double, double* %591, align 8, !dbg !904
  %593 = fmul double %590, %592, !dbg !905
  %594 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !906
  %595 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %594, i32 0, i32 0, !dbg !907
  store double %593, double* %595, align 8, !dbg !908
  %596 = load double, double* %62, align 8, !dbg !909
  %597 = call double @fabs(double %596) #1, !dbg !910
  %598 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !911
  %599 = load double, double* %598, align 8, !dbg !911
  %600 = fmul double %597, %599, !dbg !912
  %601 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !913
  %602 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %601, i32 0, i32 1, !dbg !914
  store double %600, double* %602, align 8, !dbg !915
  %603 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !916
  %604 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %603, i32 0, i32 0, !dbg !917
  %605 = load double, double* %604, align 8, !dbg !917
  %606 = call double @fabs(double %605) #1, !dbg !918
  %607 = fmul double 0x3CC0000000000000, %606, !dbg !919
  %608 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !920
  %609 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %608, i32 0, i32 1, !dbg !921
  %610 = load double, double* %609, align 8, !dbg !922
  %611 = fadd double %610, %607, !dbg !922
  store double %611, double* %609, align 8, !dbg !922
  %612 = load double, double* %63, align 8, !dbg !923
  %613 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !924
  %614 = load double, double* %613, align 8, !dbg !924
  %615 = fmul double %612, %614, !dbg !925
  %616 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !926
  %617 = load double, double* %616, align 8, !dbg !926
  %618 = fdiv double 1.000000e+00, %617, !dbg !927
  %619 = fsub double %615, %618, !dbg !928
  %620 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !929
  %621 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %620, i32 0, i32 0, !dbg !930
  store double %619, double* %621, align 8, !dbg !931
  %622 = load double, double* %63, align 8, !dbg !932
  %623 = call double @fabs(double %622) #1, !dbg !933
  %624 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !934
  %625 = load double, double* %624, align 8, !dbg !934
  %626 = fmul double %623, %625, !dbg !935
  %627 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !936
  %628 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %627, i32 0, i32 1, !dbg !937
  store double %626, double* %628, align 8, !dbg !938
  %629 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !939
  %630 = load double, double* %629, align 8, !dbg !939
  %631 = fdiv double 1.000000e+00, %630, !dbg !940
  %632 = call double @fabs(double %631) #1, !dbg !941
  %633 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !942
  %634 = load double, double* %633, align 8, !dbg !942
  %635 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !943
  %636 = load double, double* %635, align 8, !dbg !943
  %637 = fdiv double %634, %636, !dbg !944
  %638 = call double @fabs(double %637) #1, !dbg !945
  %639 = fmul double %632, %638, !dbg !947
  %640 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !948
  %641 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %640, i32 0, i32 1, !dbg !949
  %642 = load double, double* %641, align 8, !dbg !950
  %643 = fadd double %642, %639, !dbg !950
  store double %643, double* %641, align 8, !dbg !950
  %644 = load double, double* %55, align 8, !dbg !951
  %645 = load double*, double** %20, align 8, !dbg !952
  store double %644, double* %645, align 8, !dbg !953
  %646 = load double, double* %56, align 8, !dbg !954
  %647 = load double*, double** %21, align 8, !dbg !955
  store double %646, double* %647, align 8, !dbg !956
  %648 = load i32, i32* %57, align 4, !dbg !957
  %649 = icmp eq i32 %648, 16, !dbg !959
  br i1 %649, label %653, label %650, !dbg !960

; <label>:650:                                    ; preds = %573
  %651 = load i32, i32* %58, align 4, !dbg !961
  %652 = icmp eq i32 %651, 16, !dbg !963
  br i1 %652, label %653, label %656, !dbg !964

; <label>:653:                                    ; preds = %650, %573
  br label %654, !dbg !965, !llvm.loop !967

; <label>:654:                                    ; preds = %653
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1107, i32 16), !dbg !968
  store i32 16, i32* %11, align 4, !dbg !968
  br label %893, !dbg !968
                                                  ; No predecessors!
  br label %671, !dbg !971

; <label>:656:                                    ; preds = %650
  %657 = load i32, i32* %57, align 4, !dbg !972
  %658 = icmp ne i32 %657, 0, !dbg !972
  br i1 %658, label %659, label %661, !dbg !972

; <label>:659:                                    ; preds = %656
  %660 = load i32, i32* %57, align 4, !dbg !974
  br label %669, !dbg !974

; <label>:661:                                    ; preds = %656
  %662 = load i32, i32* %58, align 4, !dbg !976
  %663 = icmp ne i32 %662, 0, !dbg !976
  br i1 %663, label %664, label %666, !dbg !976

; <label>:664:                                    ; preds = %661
  %665 = load i32, i32* %58, align 4, !dbg !978
  br label %667, !dbg !978

; <label>:666:                                    ; preds = %661
  br label %667, !dbg !980

; <label>:667:                                    ; preds = %666, %664
  %668 = phi i32 [ %665, %664 ], [ 0, %666 ], !dbg !982
  br label %669, !dbg !982

; <label>:669:                                    ; preds = %667, %659
  %670 = phi i32 [ %660, %659 ], [ %668, %667 ], !dbg !984
  store i32 %670, i32* %11, align 4, !dbg !986
  br label %893, !dbg !986

; <label>:671:                                    ; preds = %655
  br label %890, !dbg !987

; <label>:672:                                    ; preds = %533
  call void @llvm.dbg.declare(metadata double* %66, metadata !988, metadata !60), !dbg !990
  store double 0x3E50000000000000, double* %66, align 8, !dbg !990
  call void @llvm.dbg.declare(metadata double* %67, metadata !991, metadata !60), !dbg !992
  %673 = load double, double* %13, align 8, !dbg !993
  %674 = fmul double 4.000000e+00, %673, !dbg !994
  %675 = load double, double* %13, align 8, !dbg !995
  %676 = load double, double* %12, align 8, !dbg !996
  %677 = fmul double 2.000000e+00, %676, !dbg !997
  %678 = fsub double %675, %677, !dbg !998
  %679 = fmul double %674, %678, !dbg !999
  %680 = fadd double 1.000000e+00, %679, !dbg !1000
  %681 = call double @sqrt(double %680) #6, !dbg !1001
  store double %681, double* %67, align 8, !dbg !992
  call void @llvm.dbg.declare(metadata i32* %68, metadata !1002, metadata !60), !dbg !1003
  %682 = load double, double* %14, align 8, !dbg !1004
  %683 = load double, double* %67, align 8, !dbg !1005
  %684 = fsub double %682, %683, !dbg !1006
  %685 = fadd double %684, 5.000000e-01, !dbg !1007
  %686 = call double @ceil(double %685) #1, !dbg !1008
  %687 = fptosi double %686 to i32, !dbg !1008
  store i32 %687, i32* %68, align 4, !dbg !1003
  call void @llvm.dbg.declare(metadata double* %69, metadata !1009, metadata !60), !dbg !1010
  %688 = load double, double* %14, align 8, !dbg !1011
  %689 = load i32, i32* %68, align 4, !dbg !1012
  %690 = icmp sgt i32 %689, 0, !dbg !1012
  br i1 %690, label %691, label %693, !dbg !1012

; <label>:691:                                    ; preds = %672
  %692 = load i32, i32* %68, align 4, !dbg !1013
  br label %694, !dbg !1013

; <label>:693:                                    ; preds = %672
  br label %694, !dbg !1015

; <label>:694:                                    ; preds = %693, %691
  %695 = phi i32 [ %692, %691 ], [ 0, %693 ], !dbg !1017
  %696 = sitofp i32 %695 to double, !dbg !1017
  %697 = fsub double %688, %696, !dbg !1019
  store double %697, double* %69, align 8, !dbg !1020
  call void @llvm.dbg.declare(metadata double* %70, metadata !1021, metadata !60), !dbg !1022
  %698 = load double, double* %69, align 8, !dbg !1023
  %699 = load double, double* %22, align 8, !dbg !1023
  %700 = fcmp olt double %698, %699, !dbg !1023
  br i1 %700, label %701, label %703, !dbg !1023

; <label>:701:                                    ; preds = %694
  %702 = load double, double* %69, align 8, !dbg !1024
  br label %705, !dbg !1024

; <label>:703:                                    ; preds = %694
  %704 = load double, double* %22, align 8, !dbg !1025
  br label %705, !dbg !1025

; <label>:705:                                    ; preds = %703, %701
  %706 = phi double [ %702, %701 ], [ %704, %703 ], !dbg !1026
  store double %706, double* %70, align 8, !dbg !1027
  call void @llvm.dbg.declare(metadata double* %71, metadata !1028, metadata !60), !dbg !1029
  call void @llvm.dbg.declare(metadata double* %72, metadata !1030, metadata !60), !dbg !1031
  call void @llvm.dbg.declare(metadata double* %73, metadata !1032, metadata !60), !dbg !1033
  call void @llvm.dbg.declare(metadata double* %74, metadata !1034, metadata !60), !dbg !1035
  call void @llvm.dbg.declare(metadata double* %75, metadata !1036, metadata !60), !dbg !1037
  call void @llvm.dbg.declare(metadata double* %76, metadata !1038, metadata !60), !dbg !1039
  call void @llvm.dbg.declare(metadata double* %77, metadata !1040, metadata !60), !dbg !1041
  call void @llvm.dbg.declare(metadata double* %78, metadata !1042, metadata !60), !dbg !1043
  call void @llvm.dbg.declare(metadata double* %79, metadata !1044, metadata !60), !dbg !1045
  call void @llvm.dbg.declare(metadata double* %80, metadata !1046, metadata !60), !dbg !1047
  call void @llvm.dbg.declare(metadata double* %81, metadata !1048, metadata !60), !dbg !1049
  call void @llvm.dbg.declare(metadata double* %82, metadata !1050, metadata !60), !dbg !1051
  call void @llvm.dbg.declare(metadata double* %83, metadata !1052, metadata !60), !dbg !1053
  call void @llvm.dbg.declare(metadata double* %84, metadata !1054, metadata !60), !dbg !1055
  call void @llvm.dbg.declare(metadata double* %85, metadata !1056, metadata !60), !dbg !1057
  call void @llvm.dbg.declare(metadata double* %86, metadata !1058, metadata !60), !dbg !1059
  call void @llvm.dbg.declare(metadata double* %87, metadata !1060, metadata !60), !dbg !1061
  call void @llvm.dbg.declare(metadata double* %88, metadata !1062, metadata !60), !dbg !1063
  call void @llvm.dbg.declare(metadata double* %89, metadata !1064, metadata !60), !dbg !1065
  call void @llvm.dbg.declare(metadata i32* %90, metadata !1066, metadata !60), !dbg !1067
  call void @llvm.dbg.declare(metadata i32* %91, metadata !1068, metadata !60), !dbg !1069
  call void @llvm.dbg.declare(metadata i32* %92, metadata !1070, metadata !60), !dbg !1071
  %707 = load double, double* %14, align 8, !dbg !1072
  %708 = load double, double* %12, align 8, !dbg !1073
  %709 = load double, double* %13, align 8, !dbg !1074
  %710 = call i32 @coulomb_CF1(double %707, double %708, double %709, double* %83, double* %81, i32* %90), !dbg !1075
  store i32 %710, i32* %92, align 4, !dbg !1071
  call void @llvm.dbg.declare(metadata i32* %93, metadata !1076, metadata !60), !dbg !1077
  call void @llvm.dbg.declare(metadata i32* %94, metadata !1078, metadata !60), !dbg !1079
  call void @llvm.dbg.declare(metadata i32* %95, metadata !1080, metadata !60), !dbg !1081
  call void @llvm.dbg.declare(metadata i32* %96, metadata !1082, metadata !60), !dbg !1083
  call void @llvm.dbg.declare(metadata i32* %97, metadata !1084, metadata !60), !dbg !1085
  call void @llvm.dbg.declare(metadata double* %98, metadata !1086, metadata !60), !dbg !1087
  %711 = load double, double* %83, align 8, !dbg !1088
  %712 = fmul double %711, 0x3E50000000000000, !dbg !1089
  store double %712, double* %71, align 8, !dbg !1090
  %713 = load double, double* %81, align 8, !dbg !1091
  %714 = load double, double* %71, align 8, !dbg !1092
  %715 = fmul double %713, %714, !dbg !1093
  store double %715, double* %72, align 8, !dbg !1094
  %716 = load i32, i32* %15, align 4, !dbg !1095
  %717 = load i32, i32* %68, align 4, !dbg !1095
  %718 = icmp sgt i32 %716, %717, !dbg !1095
  br i1 %718, label %719, label %721, !dbg !1095

; <label>:719:                                    ; preds = %705
  %720 = load i32, i32* %15, align 4, !dbg !1096
  br label %723, !dbg !1096

; <label>:721:                                    ; preds = %705
  %722 = load i32, i32* %68, align 4, !dbg !1097
  br label %723, !dbg !1097

; <label>:723:                                    ; preds = %721, %719
  %724 = phi i32 [ %720, %719 ], [ %722, %721 ], !dbg !1098
  store i32 %724, i32* %96, align 4, !dbg !1099
  %725 = load double, double* %70, align 8, !dbg !1100
  %726 = load i32, i32* %96, align 4, !dbg !1101
  %727 = load double, double* %12, align 8, !dbg !1102
  %728 = load double, double* %13, align 8, !dbg !1103
  %729 = load double, double* %71, align 8, !dbg !1104
  %730 = load double, double* %72, align 8, !dbg !1105
  %731 = call i32 @coulomb_F_recur(double %725, i32 %726, double %727, double %728, double %729, double %730, double* %75, double* %76), !dbg !1106
  store i32 %731, i32* %94, align 4, !dbg !1107
  %732 = load double, double* %76, align 8, !dbg !1108
  %733 = load double, double* %75, align 8, !dbg !1109
  %734 = fdiv double %732, %733, !dbg !1110
  store double %734, double* %82, align 8, !dbg !1111
  %735 = load double, double* %70, align 8, !dbg !1112
  %736 = load double, double* %12, align 8, !dbg !1113
  %737 = load double, double* %13, align 8, !dbg !1114
  %738 = call i32 @coulomb_CF2(double %735, double %736, double %737, double* %85, double* %86, i32* %91), !dbg !1115
  store i32 %738, i32* %93, align 4, !dbg !1116
  %739 = load double, double* %82, align 8, !dbg !1117
  %740 = load double, double* %85, align 8, !dbg !1118
  %741 = fsub double %739, %740, !dbg !1119
  store double %741, double* %87, align 8, !dbg !1120
  %742 = load double, double* %87, align 8, !dbg !1121
  %743 = load double, double* %86, align 8, !dbg !1122
  %744 = fdiv double %742, %743, !dbg !1123
  store double %744, double* %88, align 8, !dbg !1124
  %745 = load double, double* %75, align 8, !dbg !1125
  %746 = fcmp oge double %745, 0.000000e+00, !dbg !1125
  %747 = select i1 %746, i32 1, i32 -1, !dbg !1125
  %748 = sitofp i32 %747 to double, !dbg !1125
  store double %748, double* %84, align 8, !dbg !1126
  %749 = load double, double* %84, align 8, !dbg !1127
  %750 = load double, double* %87, align 8, !dbg !1128
  %751 = load double, double* %87, align 8, !dbg !1129
  %752 = fmul double %750, %751, !dbg !1130
  %753 = load double, double* %86, align 8, !dbg !1131
  %754 = fdiv double %752, %753, !dbg !1132
  %755 = load double, double* %86, align 8, !dbg !1133
  %756 = fadd double %754, %755, !dbg !1134
  %757 = call double @sqrt(double %756) #6, !dbg !1135
  %758 = fdiv double %749, %757, !dbg !1136
  store double %758, double* %77, align 8, !dbg !1137
  %759 = load double, double* %82, align 8, !dbg !1138
  %760 = load double, double* %77, align 8, !dbg !1139
  %761 = fmul double %759, %760, !dbg !1140
  store double %761, double* %78, align 8, !dbg !1141
  %762 = load double, double* %88, align 8, !dbg !1142
  %763 = load double, double* %77, align 8, !dbg !1143
  %764 = fmul double %762, %763, !dbg !1144
  store double %764, double* %79, align 8, !dbg !1145
  %765 = load double, double* %85, align 8, !dbg !1146
  %766 = load double, double* %88, align 8, !dbg !1147
  %767 = fmul double %765, %766, !dbg !1148
  %768 = load double, double* %86, align 8, !dbg !1149
  %769 = fsub double %767, %768, !dbg !1150
  %770 = load double, double* %77, align 8, !dbg !1151
  %771 = fmul double %769, %770, !dbg !1152
  store double %771, double* %80, align 8, !dbg !1153
  %772 = load double, double* %77, align 8, !dbg !1154
  %773 = load double, double* %75, align 8, !dbg !1155
  %774 = fdiv double %772, %773, !dbg !1156
  store double %774, double* %89, align 8, !dbg !1157
  %775 = load double, double* %89, align 8, !dbg !1158
  %776 = load double, double* %71, align 8, !dbg !1159
  %777 = fmul double %776, %775, !dbg !1159
  store double %777, double* %71, align 8, !dbg !1159
  %778 = load double, double* %89, align 8, !dbg !1160
  %779 = load double, double* %72, align 8, !dbg !1161
  %780 = fmul double %779, %778, !dbg !1161
  store double %780, double* %72, align 8, !dbg !1161
  %781 = load i32, i32* %68, align 4, !dbg !1162
  %782 = load i32, i32* %15, align 4, !dbg !1162
  %783 = sub nsw i32 %781, %782, !dbg !1162
  %784 = icmp sgt i32 %783, 0, !dbg !1162
  br i1 %784, label %785, label %789, !dbg !1162

; <label>:785:                                    ; preds = %723
  %786 = load i32, i32* %68, align 4, !dbg !1163
  %787 = load i32, i32* %15, align 4, !dbg !1163
  %788 = sub nsw i32 %786, %787, !dbg !1163
  br label %790, !dbg !1163

; <label>:789:                                    ; preds = %723
  br label %790, !dbg !1164

; <label>:790:                                    ; preds = %789, %785
  %791 = phi i32 [ %788, %785 ], [ 0, %789 ], !dbg !1165
  store i32 %791, i32* %97, align 4, !dbg !1166
  %792 = load double, double* %70, align 8, !dbg !1167
  %793 = load i32, i32* %97, align 4, !dbg !1168
  %794 = load double, double* %12, align 8, !dbg !1169
  %795 = load double, double* %13, align 8, !dbg !1170
  %796 = load double, double* %79, align 8, !dbg !1171
  %797 = load double, double* %80, align 8, !dbg !1172
  %798 = call i32 @coulomb_G_recur(double %792, i32 %793, double %794, double %795, double %796, double %797, double* %73, double* %74), !dbg !1173
  store i32 %798, i32* %95, align 4, !dbg !1174
  %799 = load i32, i32* %90, align 4, !dbg !1175
  %800 = load i32, i32* %91, align 4, !dbg !1176
  %801 = add nsw i32 %799, %800, !dbg !1177
  %802 = load i32, i32* %96, align 4, !dbg !1178
  %803 = add nsw i32 %801, %802, !dbg !1179
  %804 = load i32, i32* %97, align 4, !dbg !1180
  %805 = add nsw i32 %803, %804, !dbg !1181
  %806 = add nsw i32 %805, 1, !dbg !1182
  %807 = sitofp i32 %806 to double, !dbg !1175
  store double %807, double* %98, align 8, !dbg !1183
  %808 = load double, double* %71, align 8, !dbg !1184
  %809 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !1185
  %810 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %809, i32 0, i32 0, !dbg !1186
  store double %808, double* %810, align 8, !dbg !1187
  %811 = load double, double* %98, align 8, !dbg !1188
  %812 = fmul double 8.000000e+00, %811, !dbg !1189
  %813 = fmul double %812, 0x3CB0000000000000, !dbg !1190
  %814 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !1191
  %815 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %814, i32 0, i32 0, !dbg !1192
  %816 = load double, double* %815, align 8, !dbg !1192
  %817 = call double @fabs(double %816) #1, !dbg !1193
  %818 = fmul double %813, %817, !dbg !1194
  %819 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !1195
  %820 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %819, i32 0, i32 1, !dbg !1196
  store double %818, double* %820, align 8, !dbg !1197
  %821 = load double, double* %72, align 8, !dbg !1198
  %822 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !1199
  %823 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %822, i32 0, i32 0, !dbg !1200
  store double %821, double* %823, align 8, !dbg !1201
  %824 = load double, double* %98, align 8, !dbg !1202
  %825 = fmul double 8.000000e+00, %824, !dbg !1203
  %826 = fmul double %825, 0x3CB0000000000000, !dbg !1204
  %827 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !1205
  %828 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %827, i32 0, i32 0, !dbg !1206
  %829 = load double, double* %828, align 8, !dbg !1206
  %830 = call double @fabs(double %829) #1, !dbg !1207
  %831 = fmul double %826, %830, !dbg !1208
  %832 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !1209
  %833 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %832, i32 0, i32 1, !dbg !1210
  store double %831, double* %833, align 8, !dbg !1211
  %834 = load double, double* %73, align 8, !dbg !1212
  %835 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !1213
  %836 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %835, i32 0, i32 0, !dbg !1214
  store double %834, double* %836, align 8, !dbg !1215
  %837 = load double, double* %98, align 8, !dbg !1216
  %838 = fmul double 8.000000e+00, %837, !dbg !1217
  %839 = fmul double %838, 0x3CB0000000000000, !dbg !1218
  %840 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !1219
  %841 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %840, i32 0, i32 0, !dbg !1220
  %842 = load double, double* %841, align 8, !dbg !1220
  %843 = call double @fabs(double %842) #1, !dbg !1221
  %844 = fmul double %839, %843, !dbg !1222
  %845 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !1223
  %846 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %845, i32 0, i32 1, !dbg !1224
  store double %844, double* %846, align 8, !dbg !1225
  %847 = load double, double* %74, align 8, !dbg !1226
  %848 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !1227
  %849 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %848, i32 0, i32 0, !dbg !1228
  store double %847, double* %849, align 8, !dbg !1229
  %850 = load double, double* %98, align 8, !dbg !1230
  %851 = fmul double 8.000000e+00, %850, !dbg !1231
  %852 = fmul double %851, 0x3CB0000000000000, !dbg !1232
  %853 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !1233
  %854 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %853, i32 0, i32 0, !dbg !1234
  %855 = load double, double* %854, align 8, !dbg !1234
  %856 = call double @fabs(double %855) #1, !dbg !1235
  %857 = fmul double %852, %856, !dbg !1236
  %858 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !1237
  %859 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %858, i32 0, i32 1, !dbg !1238
  store double %857, double* %859, align 8, !dbg !1239
  %860 = load double*, double** %20, align 8, !dbg !1240
  store double 0.000000e+00, double* %860, align 8, !dbg !1241
  %861 = load double*, double** %21, align 8, !dbg !1242
  store double 0.000000e+00, double* %861, align 8, !dbg !1243
  %862 = load i32, i32* %92, align 4, !dbg !1244
  %863 = icmp ne i32 %862, 0, !dbg !1244
  br i1 %863, label %864, label %866, !dbg !1244

; <label>:864:                                    ; preds = %790
  %865 = load i32, i32* %92, align 4, !dbg !1245
  br label %888, !dbg !1245

; <label>:866:                                    ; preds = %790
  %867 = load i32, i32* %93, align 4, !dbg !1246
  %868 = icmp ne i32 %867, 0, !dbg !1246
  br i1 %868, label %869, label %871, !dbg !1246

; <label>:869:                                    ; preds = %866
  %870 = load i32, i32* %93, align 4, !dbg !1247
  br label %886, !dbg !1247

; <label>:871:                                    ; preds = %866
  %872 = load i32, i32* %94, align 4, !dbg !1248
  %873 = icmp ne i32 %872, 0, !dbg !1248
  br i1 %873, label %874, label %876, !dbg !1248

; <label>:874:                                    ; preds = %871
  %875 = load i32, i32* %94, align 4, !dbg !1250
  br label %884, !dbg !1250

; <label>:876:                                    ; preds = %871
  %877 = load i32, i32* %95, align 4, !dbg !1252
  %878 = icmp ne i32 %877, 0, !dbg !1252
  br i1 %878, label %879, label %881, !dbg !1252

; <label>:879:                                    ; preds = %876
  %880 = load i32, i32* %95, align 4, !dbg !1254
  br label %882, !dbg !1254

; <label>:881:                                    ; preds = %876
  br label %882, !dbg !1256

; <label>:882:                                    ; preds = %881, %879
  %883 = phi i32 [ %880, %879 ], [ 0, %881 ], !dbg !1258
  br label %884, !dbg !1258

; <label>:884:                                    ; preds = %882, %874
  %885 = phi i32 [ %875, %874 ], [ %883, %882 ], !dbg !1260
  br label %886, !dbg !1260

; <label>:886:                                    ; preds = %884, %869
  %887 = phi i32 [ %870, %869 ], [ %885, %884 ], !dbg !1262
  br label %888, !dbg !1262

; <label>:888:                                    ; preds = %886, %864
  %889 = phi i32 [ %865, %864 ], [ %887, %886 ], !dbg !1264
  store i32 %889, i32* %11, align 4, !dbg !1266
  br label %893, !dbg !1266

; <label>:890:                                    ; preds = %671
  br label %891

; <label>:891:                                    ; preds = %890
  br label %892

; <label>:892:                                    ; preds = %891, %210
  br label %893

; <label>:893:                                    ; preds = %138, %209, %321, %531, %654, %669, %888, %892, %139
  %894 = load i32, i32* %11, align 4, !dbg !1267
  ret i32 %894, !dbg !1267
}

; Function Attrs: nounwind uwtable
define internal i32 @coulomb_CF1(double, double, double, double*, double*, i32*) #0 !dbg !1268 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32*, align 8
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
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1272, metadata !60), !dbg !1273
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1274, metadata !60), !dbg !1275
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !1276, metadata !60), !dbg !1277
  store double* %3, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !1278, metadata !60), !dbg !1279
  store double* %4, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !1280, metadata !60), !dbg !1281
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !1282, metadata !60), !dbg !1283
  call void @llvm.dbg.declare(metadata double* %14, metadata !1284, metadata !60), !dbg !1285
  store double 1.000000e-30, double* %14, align 8, !dbg !1285
  call void @llvm.dbg.declare(metadata double* %15, metadata !1286, metadata !60), !dbg !1287
  store double 1.000000e+05, double* %15, align 8, !dbg !1287
  call void @llvm.dbg.declare(metadata double* %16, metadata !1288, metadata !60), !dbg !1289
  store double 0x3CC0000000000000, double* %16, align 8, !dbg !1289
  call void @llvm.dbg.declare(metadata double* %17, metadata !1290, metadata !60), !dbg !1291
  %28 = load double, double* %10, align 8, !dbg !1292
  %29 = fdiv double 1.000000e+00, %28, !dbg !1293
  store double %29, double* %17, align 8, !dbg !1291
  call void @llvm.dbg.declare(metadata double* %18, metadata !1294, metadata !60), !dbg !1295
  %30 = load double, double* %8, align 8, !dbg !1296
  %31 = fadd double %30, 1.000000e+00, !dbg !1297
  %32 = fadd double %31, 1.000000e+05, !dbg !1298
  store double %32, double* %18, align 8, !dbg !1295
  call void @llvm.dbg.declare(metadata double* %19, metadata !1299, metadata !60), !dbg !1300
  %33 = load double, double* %8, align 8, !dbg !1301
  %34 = fadd double %33, 1.000000e+00, !dbg !1302
  store double %34, double* %19, align 8, !dbg !1300
  call void @llvm.dbg.declare(metadata double* %20, metadata !1303, metadata !60), !dbg !1304
  %35 = load double, double* %9, align 8, !dbg !1305
  %36 = load double, double* %19, align 8, !dbg !1306
  %37 = fdiv double %35, %36, !dbg !1307
  %38 = load double, double* %19, align 8, !dbg !1308
  %39 = load double, double* %17, align 8, !dbg !1309
  %40 = fmul double %38, %39, !dbg !1310
  %41 = fadd double %37, %40, !dbg !1311
  store double %41, double* %20, align 8, !dbg !1304
  call void @llvm.dbg.declare(metadata double* %21, metadata !1312, metadata !60), !dbg !1313
  call void @llvm.dbg.declare(metadata double* %22, metadata !1314, metadata !60), !dbg !1315
  call void @llvm.dbg.declare(metadata double* %23, metadata !1316, metadata !60), !dbg !1317
  %42 = load double*, double** %11, align 8, !dbg !1318
  store double 1.000000e+00, double* %42, align 8, !dbg !1319
  %43 = load i32*, i32** %13, align 8, !dbg !1320
  store i32 0, i32* %43, align 4, !dbg !1321
  %44 = load double, double* %20, align 8, !dbg !1322
  %45 = call double @fabs(double %44) #1, !dbg !1324
  %46 = fcmp olt double %45, 1.000000e-30, !dbg !1325
  br i1 %46, label %47, label %48, !dbg !1326

; <label>:47:                                     ; preds = %6
  store double 1.000000e-30, double* %20, align 8, !dbg !1327
  br label %48, !dbg !1329

; <label>:48:                                     ; preds = %47, %6
  store double 0.000000e+00, double* %21, align 8, !dbg !1330
  %49 = load double, double* %20, align 8, !dbg !1331
  store double %49, double* %22, align 8, !dbg !1332
  br label %50, !dbg !1333, !llvm.loop !1334

; <label>:50:                                     ; preds = %118, %48
  call void @llvm.dbg.declare(metadata double* %24, metadata !1335, metadata !60), !dbg !1337
  %51 = load double, double* %19, align 8, !dbg !1338
  %52 = fadd double %51, 1.000000e+00, !dbg !1339
  store double %52, double* %24, align 8, !dbg !1337
  call void @llvm.dbg.declare(metadata double* %25, metadata !1340, metadata !60), !dbg !1341
  %53 = load double, double* %9, align 8, !dbg !1342
  %54 = load double, double* %19, align 8, !dbg !1343
  %55 = fdiv double %53, %54, !dbg !1344
  store double %55, double* %25, align 8, !dbg !1341
  call void @llvm.dbg.declare(metadata double* %26, metadata !1345, metadata !60), !dbg !1346
  %56 = load double, double* %25, align 8, !dbg !1347
  %57 = load double, double* %25, align 8, !dbg !1348
  %58 = fmul double %56, %57, !dbg !1349
  %59 = fadd double 1.000000e+00, %58, !dbg !1350
  store double %59, double* %26, align 8, !dbg !1346
  call void @llvm.dbg.declare(metadata double* %27, metadata !1351, metadata !60), !dbg !1352
  %60 = load double, double* %19, align 8, !dbg !1353
  %61 = load double, double* %24, align 8, !dbg !1354
  %62 = fadd double %60, %61, !dbg !1355
  %63 = load double, double* %17, align 8, !dbg !1356
  %64 = load double, double* %25, align 8, !dbg !1357
  %65 = load double, double* %24, align 8, !dbg !1358
  %66 = fdiv double %64, %65, !dbg !1359
  %67 = fadd double %63, %66, !dbg !1360
  %68 = fmul double %62, %67, !dbg !1361
  store double %68, double* %27, align 8, !dbg !1352
  %69 = load double, double* %27, align 8, !dbg !1362
  %70 = load double, double* %26, align 8, !dbg !1363
  %71 = load double, double* %21, align 8, !dbg !1364
  %72 = fmul double %70, %71, !dbg !1365
  %73 = fsub double %69, %72, !dbg !1366
  store double %73, double* %21, align 8, !dbg !1367
  %74 = load double, double* %27, align 8, !dbg !1368
  %75 = load double, double* %26, align 8, !dbg !1369
  %76 = load double, double* %22, align 8, !dbg !1370
  %77 = fdiv double %75, %76, !dbg !1371
  %78 = fsub double %74, %77, !dbg !1372
  store double %78, double* %22, align 8, !dbg !1373
  %79 = load double, double* %22, align 8, !dbg !1374
  %80 = call double @fabs(double %79) #1, !dbg !1376
  %81 = fcmp olt double %80, 1.000000e-30, !dbg !1377
  br i1 %81, label %82, label %83, !dbg !1378

; <label>:82:                                     ; preds = %50
  store double 1.000000e-30, double* %22, align 8, !dbg !1379
  br label %83, !dbg !1381

; <label>:83:                                     ; preds = %82, %50
  %84 = load double, double* %21, align 8, !dbg !1382
  %85 = call double @fabs(double %84) #1, !dbg !1384
  %86 = fcmp olt double %85, 1.000000e-30, !dbg !1385
  br i1 %86, label %87, label %88, !dbg !1386

; <label>:87:                                     ; preds = %83
  store double 1.000000e-30, double* %21, align 8, !dbg !1387
  br label %88, !dbg !1389

; <label>:88:                                     ; preds = %87, %83
  %89 = load double, double* %21, align 8, !dbg !1390
  %90 = fdiv double 1.000000e+00, %89, !dbg !1391
  store double %90, double* %21, align 8, !dbg !1392
  %91 = load double, double* %21, align 8, !dbg !1393
  %92 = load double, double* %22, align 8, !dbg !1394
  %93 = fmul double %91, %92, !dbg !1395
  store double %93, double* %23, align 8, !dbg !1396
  %94 = load double, double* %20, align 8, !dbg !1397
  %95 = load double, double* %23, align 8, !dbg !1398
  %96 = fmul double %94, %95, !dbg !1399
  store double %96, double* %20, align 8, !dbg !1400
  %97 = load double, double* %21, align 8, !dbg !1401
  %98 = fcmp olt double %97, 0.000000e+00, !dbg !1403
  br i1 %98, label %99, label %104, !dbg !1404

; <label>:99:                                     ; preds = %88
  %100 = load double*, double** %11, align 8, !dbg !1405
  %101 = load double, double* %100, align 8, !dbg !1407
  %102 = fsub double -0.000000e+00, %101, !dbg !1408
  %103 = load double*, double** %11, align 8, !dbg !1409
  store double %102, double* %103, align 8, !dbg !1410
  br label %104, !dbg !1411

; <label>:104:                                    ; preds = %99, %88
  %105 = load double, double* %24, align 8, !dbg !1412
  store double %105, double* %19, align 8, !dbg !1413
  %106 = load double, double* %19, align 8, !dbg !1414
  %107 = load double, double* %18, align 8, !dbg !1416
  %108 = fcmp ogt double %106, %107, !dbg !1417
  br i1 %108, label %109, label %114, !dbg !1418

; <label>:109:                                    ; preds = %104
  %110 = load double, double* %20, align 8, !dbg !1419
  %111 = load double*, double** %12, align 8, !dbg !1421
  store double %110, double* %111, align 8, !dbg !1422
  br label %112, !dbg !1423, !llvm.loop !1424

; <label>:112:                                    ; preds = %109
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 639, i32 10), !dbg !1425
  store i32 10, i32* %7, align 4, !dbg !1425
  br label %126, !dbg !1425
                                                  ; No predecessors!
  br label %114, !dbg !1428

; <label>:114:                                    ; preds = %113, %104
  %115 = load i32*, i32** %13, align 8, !dbg !1429
  %116 = load i32, i32* %115, align 4, !dbg !1430
  %117 = add nsw i32 %116, 1, !dbg !1430
  store i32 %117, i32* %115, align 4, !dbg !1430
  br label %118, !dbg !1431

; <label>:118:                                    ; preds = %114
  %119 = load double, double* %23, align 8, !dbg !1432
  %120 = fsub double %119, 1.000000e+00, !dbg !1433
  %121 = call double @fabs(double %120) #1, !dbg !1434
  %122 = fcmp ogt double %121, 0x3CC0000000000000, !dbg !1435
  br i1 %122, label %50, label %123, !dbg !1436, !llvm.loop !1334

; <label>:123:                                    ; preds = %118
  %124 = load double, double* %20, align 8, !dbg !1438
  %125 = load double*, double** %12, align 8, !dbg !1439
  store double %124, double* %125, align 8, !dbg !1440
  store i32 0, i32* %7, align 4, !dbg !1441
  br label %126, !dbg !1441

; <label>:126:                                    ; preds = %123, %112
  %127 = load i32, i32* %7, align 4, !dbg !1442
  ret i32 %127, !dbg !1442
}

; Function Attrs: nounwind uwtable
define internal i32 @coulomb_F_recur(double, i32, double, double, double, double, double*, double*) #0 !dbg !1443 {
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store double %0, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1446, metadata !60), !dbg !1447
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1448, metadata !60), !dbg !1449
  store double %2, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !1450, metadata !60), !dbg !1451
  store double %3, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !1452, metadata !60), !dbg !1453
  store double %4, double* %13, align 8
  call void @llvm.dbg.declare(metadata double* %13, metadata !1454, metadata !60), !dbg !1455
  store double %5, double* %14, align 8
  call void @llvm.dbg.declare(metadata double* %14, metadata !1456, metadata !60), !dbg !1457
  store double* %6, double** %15, align 8
  call void @llvm.dbg.declare(metadata double** %15, metadata !1458, metadata !60), !dbg !1459
  store double* %7, double** %16, align 8
  call void @llvm.dbg.declare(metadata double** %16, metadata !1460, metadata !60), !dbg !1461
  call void @llvm.dbg.declare(metadata double* %17, metadata !1462, metadata !60), !dbg !1463
  %27 = load double, double* %12, align 8, !dbg !1464
  %28 = fdiv double 1.000000e+00, %27, !dbg !1465
  store double %28, double* %17, align 8, !dbg !1463
  call void @llvm.dbg.declare(metadata double* %18, metadata !1466, metadata !60), !dbg !1467
  %29 = load double, double* %13, align 8, !dbg !1468
  store double %29, double* %18, align 8, !dbg !1467
  call void @llvm.dbg.declare(metadata double* %19, metadata !1469, metadata !60), !dbg !1470
  %30 = load double, double* %14, align 8, !dbg !1471
  store double %30, double* %19, align 8, !dbg !1470
  call void @llvm.dbg.declare(metadata double* %20, metadata !1472, metadata !60), !dbg !1473
  %31 = load double, double* %9, align 8, !dbg !1474
  %32 = load i32, i32* %10, align 4, !dbg !1475
  %33 = sitofp i32 %32 to double, !dbg !1475
  %34 = fadd double %31, %33, !dbg !1476
  store double %34, double* %20, align 8, !dbg !1473
  call void @llvm.dbg.declare(metadata double* %21, metadata !1477, metadata !60), !dbg !1478
  %35 = load double, double* %20, align 8, !dbg !1479
  store double %35, double* %21, align 8, !dbg !1478
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1480, metadata !60), !dbg !1481
  %36 = load i32, i32* %10, align 4, !dbg !1482
  %37 = sub nsw i32 %36, 1, !dbg !1484
  store i32 %37, i32* %22, align 4, !dbg !1485
  br label %38, !dbg !1486

; <label>:38:                                     ; preds = %69, %8
  %39 = load i32, i32* %22, align 4, !dbg !1487
  %40 = icmp sge i32 %39, 0, !dbg !1490
  br i1 %40, label %41, label %72, !dbg !1491

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %23, metadata !1492, metadata !60), !dbg !1494
  %42 = load double, double* %11, align 8, !dbg !1495
  %43 = load double, double* %21, align 8, !dbg !1496
  %44 = fdiv double %42, %43, !dbg !1497
  store double %44, double* %23, align 8, !dbg !1494
  call void @llvm.dbg.declare(metadata double* %24, metadata !1498, metadata !60), !dbg !1499
  %45 = load double, double* %23, align 8, !dbg !1500
  %46 = call double @hypot(double 1.000000e+00, double %45) #6, !dbg !1501
  store double %46, double* %24, align 8, !dbg !1499
  call void @llvm.dbg.declare(metadata double* %25, metadata !1502, metadata !60), !dbg !1503
  %47 = load double, double* %23, align 8, !dbg !1504
  %48 = load double, double* %21, align 8, !dbg !1505
  %49 = load double, double* %17, align 8, !dbg !1506
  %50 = fmul double %48, %49, !dbg !1507
  %51 = fadd double %47, %50, !dbg !1508
  store double %51, double* %25, align 8, !dbg !1503
  call void @llvm.dbg.declare(metadata double* %26, metadata !1509, metadata !60), !dbg !1510
  %52 = load double, double* %18, align 8, !dbg !1511
  %53 = load double, double* %25, align 8, !dbg !1512
  %54 = fmul double %52, %53, !dbg !1513
  %55 = load double, double* %19, align 8, !dbg !1514
  %56 = fadd double %54, %55, !dbg !1515
  %57 = load double, double* %24, align 8, !dbg !1516
  %58 = fdiv double %56, %57, !dbg !1517
  store double %58, double* %26, align 8, !dbg !1518
  %59 = load double, double* %26, align 8, !dbg !1519
  %60 = load double, double* %25, align 8, !dbg !1520
  %61 = fmul double %59, %60, !dbg !1521
  %62 = load double, double* %18, align 8, !dbg !1522
  %63 = load double, double* %24, align 8, !dbg !1523
  %64 = fmul double %62, %63, !dbg !1524
  %65 = fsub double %61, %64, !dbg !1525
  store double %65, double* %19, align 8, !dbg !1526
  %66 = load double, double* %26, align 8, !dbg !1527
  store double %66, double* %18, align 8, !dbg !1528
  %67 = load double, double* %21, align 8, !dbg !1529
  %68 = fsub double %67, 1.000000e+00, !dbg !1529
  store double %68, double* %21, align 8, !dbg !1529
  br label %69, !dbg !1530

; <label>:69:                                     ; preds = %41
  %70 = load i32, i32* %22, align 4, !dbg !1531
  %71 = add nsw i32 %70, -1, !dbg !1531
  store i32 %71, i32* %22, align 4, !dbg !1531
  br label %38, !dbg !1533, !llvm.loop !1534

; <label>:72:                                     ; preds = %38
  %73 = load double, double* %18, align 8, !dbg !1536
  %74 = load double*, double** %15, align 8, !dbg !1537
  store double %73, double* %74, align 8, !dbg !1538
  %75 = load double, double* %19, align 8, !dbg !1539
  %76 = load double*, double** %16, align 8, !dbg !1540
  store double %75, double* %76, align 8, !dbg !1541
  ret i32 0, !dbg !1542
}

; Function Attrs: nounwind uwtable
define internal i32 @coulomb_FGmhalf_series(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1543 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca %struct.gsl_sf_result_struct, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1546, metadata !60), !dbg !1547
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1548, metadata !60), !dbg !1549
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1550, metadata !60), !dbg !1551
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1552, metadata !60), !dbg !1553
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1554, metadata !60), !dbg !1555
  store i32 800, i32* %10, align 4, !dbg !1555
  call void @llvm.dbg.declare(metadata double* %11, metadata !1556, metadata !60), !dbg !1557
  %29 = load double, double* %7, align 8, !dbg !1558
  %30 = call double @sqrt(double %29) #6, !dbg !1559
  store double %30, double* %11, align 8, !dbg !1557
  call void @llvm.dbg.declare(metadata double* %12, metadata !1560, metadata !60), !dbg !1561
  %31 = load double, double* %7, align 8, !dbg !1562
  %32 = load double, double* %7, align 8, !dbg !1563
  %33 = fmul double %31, %32, !dbg !1564
  store double %33, double* %12, align 8, !dbg !1561
  call void @llvm.dbg.declare(metadata double* %13, metadata !1565, metadata !60), !dbg !1566
  %34 = load double, double* %6, align 8, !dbg !1567
  %35 = fmul double 2.000000e+00, %34, !dbg !1568
  %36 = load double, double* %7, align 8, !dbg !1569
  %37 = fmul double %35, %36, !dbg !1570
  store double %37, double* %13, align 8, !dbg !1566
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1571, metadata !60), !dbg !1572
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1573, metadata !60), !dbg !1574
  %38 = load double, double* %6, align 8, !dbg !1575
  %39 = call i32 @CLeta(double -5.000000e-01, double %38, %struct.gsl_sf_result_struct* %14), !dbg !1576
  store i32 %39, i32* %15, align 4, !dbg !1574
  call void @llvm.dbg.declare(metadata double* %16, metadata !1577, metadata !60), !dbg !1578
  store double 1.000000e+00, double* %16, align 8, !dbg !1578
  call void @llvm.dbg.declare(metadata double* %17, metadata !1579, metadata !60), !dbg !1580
  %40 = load double, double* %13, align 8, !dbg !1581
  %41 = load double, double* %16, align 8, !dbg !1582
  %42 = fmul double %40, %41, !dbg !1583
  store double %42, double* %17, align 8, !dbg !1580
  call void @llvm.dbg.declare(metadata double* %18, metadata !1584, metadata !60), !dbg !1585
  call void @llvm.dbg.declare(metadata double* %19, metadata !1586, metadata !60), !dbg !1587
  call void @llvm.dbg.declare(metadata double* %20, metadata !1588, metadata !60), !dbg !1589
  call void @llvm.dbg.declare(metadata double* %21, metadata !1590, metadata !60), !dbg !1591
  call void @llvm.dbg.declare(metadata double* %22, metadata !1592, metadata !60), !dbg !1593
  call void @llvm.dbg.declare(metadata double* %23, metadata !1594, metadata !60), !dbg !1595
  call void @llvm.dbg.declare(metadata double* %24, metadata !1596, metadata !60), !dbg !1597
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !1598, metadata !60), !dbg !1599
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %26, metadata !1600, metadata !60), !dbg !1601
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1602, metadata !60), !dbg !1603
  store i32 2, i32* %27, align 4, !dbg !1603
  %43 = load double, double* %6, align 8, !dbg !1604
  %44 = call i32 @gsl_sf_psi_1piy_e(double %43, %struct.gsl_sf_result_struct* %25), !dbg !1605
  %45 = load double, double* %6, align 8, !dbg !1606
  %46 = fmul double 2.000000e+00, %45, !dbg !1607
  %47 = call i32 @gsl_sf_psi_1piy_e(double %46, %struct.gsl_sf_result_struct* %26), !dbg !1608
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1609
  %49 = load double, double* %48, align 8, !dbg !1609
  %50 = fsub double 0x3FDD85ADF3CA6486, %49, !dbg !1610
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !1611
  %52 = load double, double* %51, align 8, !dbg !1611
  %53 = fmul double 2.000000e+00, %52, !dbg !1612
  %54 = fadd double %50, %53, !dbg !1613
  store double %54, double* %19, align 8, !dbg !1614
  %55 = load double, double* %13, align 8, !dbg !1615
  %56 = load double, double* %19, align 8, !dbg !1616
  %57 = load double, double* %16, align 8, !dbg !1617
  %58 = fmul double 2.000000e+00, %57, !dbg !1618
  %59 = fsub double %56, %58, !dbg !1619
  %60 = fmul double %55, %59, !dbg !1620
  store double %60, double* %20, align 8, !dbg !1621
  %61 = load double, double* %16, align 8, !dbg !1622
  %62 = load double, double* %17, align 8, !dbg !1623
  %63 = fadd double %61, %62, !dbg !1624
  store double %63, double* %22, align 8, !dbg !1625
  %64 = load double, double* %19, align 8, !dbg !1626
  %65 = load double, double* %20, align 8, !dbg !1627
  %66 = fadd double %64, %65, !dbg !1628
  store double %66, double* %23, align 8, !dbg !1629
  br label %67, !dbg !1630

; <label>:67:                                     ; preds = %122, %4
  %68 = load i32, i32* %27, align 4, !dbg !1631
  %69 = icmp slt i32 %68, 800, !dbg !1633
  br i1 %69, label %70, label %129, !dbg !1634

; <label>:70:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata double* %28, metadata !1635, metadata !60), !dbg !1637
  %71 = load i32, i32* %27, align 4, !dbg !1638
  %72 = load i32, i32* %27, align 4, !dbg !1639
  %73 = mul nsw i32 %71, %72, !dbg !1640
  %74 = sitofp i32 %73 to double, !dbg !1638
  store double %74, double* %28, align 8, !dbg !1637
  %75 = load double, double* %13, align 8, !dbg !1641
  %76 = load double, double* %17, align 8, !dbg !1642
  %77 = fmul double %75, %76, !dbg !1643
  %78 = load double, double* %12, align 8, !dbg !1644
  %79 = load double, double* %16, align 8, !dbg !1645
  %80 = fmul double %78, %79, !dbg !1646
  %81 = fsub double %77, %80, !dbg !1647
  %82 = load double, double* %28, align 8, !dbg !1648
  %83 = fdiv double %81, %82, !dbg !1649
  store double %83, double* %18, align 8, !dbg !1650
  %84 = load double, double* %13, align 8, !dbg !1651
  %85 = load double, double* %20, align 8, !dbg !1652
  %86 = fmul double %84, %85, !dbg !1653
  %87 = load double, double* %12, align 8, !dbg !1654
  %88 = load double, double* %19, align 8, !dbg !1655
  %89 = fmul double %87, %88, !dbg !1656
  %90 = fsub double %86, %89, !dbg !1657
  %91 = load i32, i32* %27, align 4, !dbg !1658
  %92 = sitofp i32 %91 to double, !dbg !1658
  %93 = fmul double 2.000000e+00, %92, !dbg !1659
  %94 = load double, double* %18, align 8, !dbg !1660
  %95 = fmul double %93, %94, !dbg !1661
  %96 = fsub double %90, %95, !dbg !1662
  %97 = load double, double* %28, align 8, !dbg !1663
  %98 = fdiv double %96, %97, !dbg !1664
  store double %98, double* %21, align 8, !dbg !1665
  %99 = load double, double* %18, align 8, !dbg !1666
  %100 = load double, double* %22, align 8, !dbg !1667
  %101 = fadd double %100, %99, !dbg !1667
  store double %101, double* %22, align 8, !dbg !1667
  %102 = load double, double* %21, align 8, !dbg !1668
  %103 = load double, double* %23, align 8, !dbg !1669
  %104 = fadd double %103, %102, !dbg !1669
  store double %104, double* %23, align 8, !dbg !1669
  %105 = load double, double* %22, align 8, !dbg !1670
  %106 = fcmp une double %105, 0.000000e+00, !dbg !1672
  br i1 %106, label %107, label %122, !dbg !1673

; <label>:107:                                    ; preds = %70
  %108 = load double, double* %23, align 8, !dbg !1674
  %109 = fcmp une double %108, 0.000000e+00, !dbg !1676
  br i1 %109, label %110, label %122, !dbg !1677

; <label>:110:                                    ; preds = %107
  %111 = load double, double* %18, align 8, !dbg !1678
  %112 = load double, double* %22, align 8, !dbg !1679
  %113 = fdiv double %111, %112, !dbg !1680
  %114 = call double @fabs(double %113) #1, !dbg !1681
  %115 = load double, double* %21, align 8, !dbg !1682
  %116 = load double, double* %23, align 8, !dbg !1683
  %117 = fdiv double %115, %116, !dbg !1684
  %118 = call double @fabs(double %117) #1, !dbg !1685
  %119 = fadd double %114, %118, !dbg !1687
  %120 = fcmp olt double %119, 0x3CE4000000000000, !dbg !1688
  br i1 %120, label %121, label %122, !dbg !1689

; <label>:121:                                    ; preds = %110
  br label %129, !dbg !1691

; <label>:122:                                    ; preds = %110, %107, %70
  %123 = load double, double* %17, align 8, !dbg !1693
  store double %123, double* %16, align 8, !dbg !1694
  %124 = load double, double* %18, align 8, !dbg !1695
  store double %124, double* %17, align 8, !dbg !1696
  %125 = load double, double* %20, align 8, !dbg !1697
  store double %125, double* %19, align 8, !dbg !1698
  %126 = load double, double* %21, align 8, !dbg !1699
  store double %126, double* %20, align 8, !dbg !1700
  %127 = load i32, i32* %27, align 4, !dbg !1701
  %128 = add nsw i32 %127, 1, !dbg !1701
  store i32 %128, i32* %27, align 4, !dbg !1701
  br label %67, !dbg !1702, !llvm.loop !1704

; <label>:129:                                    ; preds = %121, %67
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1705
  %131 = load double, double* %130, align 8, !dbg !1705
  %132 = load double, double* %11, align 8, !dbg !1706
  %133 = fmul double %131, %132, !dbg !1707
  %134 = load double, double* %22, align 8, !dbg !1708
  %135 = fmul double %133, %134, !dbg !1709
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1710
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 0, !dbg !1711
  store double %135, double* %137, align 8, !dbg !1712
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1713
  %139 = load double, double* %138, align 8, !dbg !1713
  %140 = load double, double* %11, align 8, !dbg !1714
  %141 = load double, double* %22, align 8, !dbg !1715
  %142 = fmul double %140, %141, !dbg !1716
  %143 = call double @fabs(double %142) #1, !dbg !1717
  %144 = fmul double %139, %143, !dbg !1718
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1719
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 0, !dbg !1720
  %147 = load double, double* %146, align 8, !dbg !1720
  %148 = call double @fabs(double %147) #1, !dbg !1721
  %149 = fmul double 0x3CC0000000000000, %148, !dbg !1722
  %150 = fadd double %144, %149, !dbg !1723
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1724
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 1, !dbg !1725
  store double %150, double* %152, align 8, !dbg !1726
  %153 = load double, double* %22, align 8, !dbg !1727
  %154 = load double, double* %7, align 8, !dbg !1728
  %155 = call double @log(double %154) #6, !dbg !1729
  %156 = fmul double %153, %155, !dbg !1730
  store double %156, double* %24, align 8, !dbg !1731
  %157 = load double, double* %11, align 8, !dbg !1732
  %158 = fsub double -0.000000e+00, %157, !dbg !1733
  %159 = load double, double* %24, align 8, !dbg !1734
  %160 = load double, double* %23, align 8, !dbg !1735
  %161 = fadd double %159, %160, !dbg !1736
  %162 = fmul double %158, %161, !dbg !1737
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1738
  %164 = load double, double* %163, align 8, !dbg !1738
  %165 = fdiv double %162, %164, !dbg !1739
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1740
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 0, !dbg !1741
  store double %165, double* %167, align 8, !dbg !1742
  %168 = load double, double* %11, align 8, !dbg !1743
  %169 = call double @fabs(double %168) #1, !dbg !1744
  %170 = load double, double* %24, align 8, !dbg !1745
  %171 = call double @fabs(double %170) #1, !dbg !1746
  %172 = load double, double* %23, align 8, !dbg !1747
  %173 = call double @fabs(double %172) #1, !dbg !1748
  %174 = fadd double %171, %173, !dbg !1749
  %175 = fmul double %169, %174, !dbg !1750
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1751
  %177 = load double, double* %176, align 8, !dbg !1751
  %178 = call double @fabs(double %177) #1, !dbg !1752
  %179 = fdiv double %175, %178, !dbg !1754
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1755
  %181 = load double, double* %180, align 8, !dbg !1755
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1756
  %183 = load double, double* %182, align 8, !dbg !1756
  %184 = fdiv double %181, %183, !dbg !1757
  %185 = call double @fabs(double %184) #1, !dbg !1758
  %186 = fmul double %179, %185, !dbg !1760
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1761
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !1762
  store double %186, double* %188, align 8, !dbg !1763
  %189 = load i32, i32* %27, align 4, !dbg !1764
  %190 = icmp eq i32 %189, 800, !dbg !1766
  br i1 %190, label %191, label %194, !dbg !1767

; <label>:191:                                    ; preds = %129
  br label %192, !dbg !1768, !llvm.loop !1769

; <label>:192:                                    ; preds = %191
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 503, i32 11), !dbg !1770
  store i32 11, i32* %5, align 4, !dbg !1770
  br label %196, !dbg !1770
                                                  ; No predecessors!
  br label %196, !dbg !1773

; <label>:194:                                    ; preds = %129
  %195 = load i32, i32* %15, align 4, !dbg !1775
  store i32 %195, i32* %5, align 4, !dbg !1776
  br label %196, !dbg !1776

; <label>:196:                                    ; preds = %192, %194, %193
  %197 = load i32, i32* %5, align 4, !dbg !1777
  ret i32 %197, !dbg !1777
}

; Function Attrs: nounwind uwtable
define internal i32 @coulomb_FG0_series(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1778 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
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
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1779, metadata !60), !dbg !1780
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1781, metadata !60), !dbg !1782
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1783, metadata !60), !dbg !1784
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1785, metadata !60), !dbg !1786
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1787, metadata !60), !dbg !1788
  store i32 800, i32* %10, align 4, !dbg !1788
  call void @llvm.dbg.declare(metadata double* %11, metadata !1789, metadata !60), !dbg !1790
  %38 = load double, double* %7, align 8, !dbg !1791
  %39 = load double, double* %7, align 8, !dbg !1792
  %40 = fmul double %38, %39, !dbg !1793
  store double %40, double* %11, align 8, !dbg !1790
  call void @llvm.dbg.declare(metadata double* %12, metadata !1794, metadata !60), !dbg !1795
  %41 = load double, double* %6, align 8, !dbg !1796
  %42 = fmul double 2.000000e+00, %41, !dbg !1797
  %43 = load double, double* %7, align 8, !dbg !1798
  %44 = fmul double %42, %43, !dbg !1799
  store double %44, double* %12, align 8, !dbg !1795
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1800, metadata !60), !dbg !1801
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1802, metadata !60), !dbg !1803
  %45 = load double, double* %6, align 8, !dbg !1804
  %46 = call i32 @CLeta(double 0.000000e+00, double %45, %struct.gsl_sf_result_struct* %13), !dbg !1805
  store i32 %46, i32* %14, align 4, !dbg !1803
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1806, metadata !60), !dbg !1807
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1808, metadata !60), !dbg !1809
  %47 = load double, double* %6, align 8, !dbg !1810
  %48 = call i32 @gsl_sf_psi_1piy_e(double %47, %struct.gsl_sf_result_struct* %15), !dbg !1811
  store i32 %48, i32* %16, align 4, !dbg !1809
  call void @llvm.dbg.declare(metadata double* %17, metadata !1812, metadata !60), !dbg !1813
  store double 0.000000e+00, double* %17, align 8, !dbg !1813
  call void @llvm.dbg.declare(metadata double* %18, metadata !1814, metadata !60), !dbg !1815
  %49 = load double, double* %7, align 8, !dbg !1816
  store double %49, double* %18, align 8, !dbg !1815
  call void @llvm.dbg.declare(metadata double* %19, metadata !1817, metadata !60), !dbg !1818
  call void @llvm.dbg.declare(metadata double* %20, metadata !1819, metadata !60), !dbg !1820
  store double 1.000000e+00, double* %20, align 8, !dbg !1820
  call void @llvm.dbg.declare(metadata double* %21, metadata !1821, metadata !60), !dbg !1822
  %50 = load double, double* %12, align 8, !dbg !1823
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1824
  %52 = load double, double* %51, align 8, !dbg !1824
  %53 = fadd double 0x3FC3C467E37DB0C8, %52, !dbg !1825
  %54 = fmul double %50, %53, !dbg !1826
  store double %54, double* %21, align 8, !dbg !1822
  call void @llvm.dbg.declare(metadata double* %22, metadata !1827, metadata !60), !dbg !1828
  call void @llvm.dbg.declare(metadata double* %23, metadata !1829, metadata !60), !dbg !1830
  %55 = load double, double* %17, align 8, !dbg !1831
  %56 = load double, double* %18, align 8, !dbg !1832
  %57 = fadd double %55, %56, !dbg !1833
  store double %57, double* %23, align 8, !dbg !1830
  call void @llvm.dbg.declare(metadata double* %24, metadata !1834, metadata !60), !dbg !1835
  %58 = load double, double* %20, align 8, !dbg !1836
  %59 = load double, double* %21, align 8, !dbg !1837
  %60 = fadd double %58, %59, !dbg !1838
  store double %60, double* %24, align 8, !dbg !1835
  call void @llvm.dbg.declare(metadata double* %25, metadata !1839, metadata !60), !dbg !1840
  %61 = load double, double* %23, align 8, !dbg !1841
  %62 = call double @fabs(double %61) #1, !dbg !1842
  store double %62, double* %25, align 8, !dbg !1840
  call void @llvm.dbg.declare(metadata double* %26, metadata !1843, metadata !60), !dbg !1844
  %63 = load double, double* %24, align 8, !dbg !1845
  %64 = call double @fabs(double %63) #1, !dbg !1846
  store double %64, double* %26, align 8, !dbg !1844
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1847, metadata !60), !dbg !1848
  store i32 2, i32* %27, align 4, !dbg !1848
  call void @llvm.dbg.declare(metadata double* %28, metadata !1849, metadata !60), !dbg !1850
  %65 = load double, double* %23, align 8, !dbg !1851
  %66 = call double @fabs(double %65) #1, !dbg !1852
  %67 = fmul double 0x3CC0000000000000, %66, !dbg !1853
  store double %67, double* %28, align 8, !dbg !1850
  call void @llvm.dbg.declare(metadata double* %29, metadata !1854, metadata !60), !dbg !1855
  %68 = load double, double* %24, align 8, !dbg !1856
  %69 = call double @fabs(double %68) #1, !dbg !1857
  %70 = fmul double 0x3CC0000000000000, %69, !dbg !1858
  store double %70, double* %29, align 8, !dbg !1855
  call void @llvm.dbg.declare(metadata double* %30, metadata !1859, metadata !60), !dbg !1860
  %71 = load double, double* %7, align 8, !dbg !1861
  %72 = fmul double 2.000000e+00, %71, !dbg !1862
  %73 = call double @log(double %72) #6, !dbg !1863
  store double %73, double* %30, align 8, !dbg !1860
  br label %74, !dbg !1864

; <label>:74:                                     ; preds = %170, %4
  %75 = load i32, i32* %27, align 4, !dbg !1865
  %76 = icmp slt i32 %75, 800, !dbg !1867
  br i1 %76, label %77, label %179, !dbg !1868

; <label>:77:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata double* %31, metadata !1869, metadata !60), !dbg !1871
  call void @llvm.dbg.declare(metadata double* %32, metadata !1872, metadata !60), !dbg !1873
  call void @llvm.dbg.declare(metadata double* %33, metadata !1874, metadata !60), !dbg !1875
  %78 = load i32, i32* %27, align 4, !dbg !1876
  %79 = sitofp i32 %78 to double, !dbg !1876
  %80 = load i32, i32* %27, align 4, !dbg !1877
  %81 = sitofp i32 %80 to double, !dbg !1877
  %82 = fsub double %81, 1.000000e+00, !dbg !1878
  %83 = fmul double %79, %82, !dbg !1879
  store double %83, double* %33, align 8, !dbg !1875
  %84 = load double, double* %12, align 8, !dbg !1880
  %85 = load double, double* %18, align 8, !dbg !1881
  %86 = fmul double %84, %85, !dbg !1882
  %87 = load double, double* %11, align 8, !dbg !1883
  %88 = load double, double* %17, align 8, !dbg !1884
  %89 = fmul double %87, %88, !dbg !1885
  %90 = fsub double %86, %89, !dbg !1886
  %91 = load double, double* %33, align 8, !dbg !1887
  %92 = fdiv double %90, %91, !dbg !1888
  store double %92, double* %19, align 8, !dbg !1889
  %93 = load double, double* %12, align 8, !dbg !1890
  %94 = load double, double* %21, align 8, !dbg !1891
  %95 = fmul double %93, %94, !dbg !1892
  %96 = load double, double* %11, align 8, !dbg !1893
  %97 = load double, double* %20, align 8, !dbg !1894
  %98 = fmul double %96, %97, !dbg !1895
  %99 = fsub double %95, %98, !dbg !1896
  %100 = load double, double* %6, align 8, !dbg !1897
  %101 = fmul double 2.000000e+00, %100, !dbg !1898
  %102 = load i32, i32* %27, align 4, !dbg !1899
  %103 = mul nsw i32 2, %102, !dbg !1900
  %104 = sub nsw i32 %103, 1, !dbg !1901
  %105 = sitofp i32 %104 to double, !dbg !1902
  %106 = fmul double %101, %105, !dbg !1903
  %107 = load double, double* %19, align 8, !dbg !1904
  %108 = fmul double %106, %107, !dbg !1905
  %109 = fsub double %99, %108, !dbg !1906
  %110 = load double, double* %33, align 8, !dbg !1907
  %111 = fdiv double %109, %110, !dbg !1908
  store double %111, double* %22, align 8, !dbg !1909
  %112 = load double, double* %19, align 8, !dbg !1910
  %113 = load double, double* %23, align 8, !dbg !1911
  %114 = fadd double %113, %112, !dbg !1911
  store double %114, double* %23, align 8, !dbg !1911
  %115 = load double, double* %22, align 8, !dbg !1912
  %116 = load double, double* %24, align 8, !dbg !1913
  %117 = fadd double %116, %115, !dbg !1913
  store double %117, double* %24, align 8, !dbg !1913
  %118 = load double, double* %19, align 8, !dbg !1914
  %119 = call double @fabs(double %118) #1, !dbg !1915
  store double %119, double* %31, align 8, !dbg !1916
  %120 = load double, double* %22, align 8, !dbg !1917
  %121 = call double @fabs(double %120) #1, !dbg !1918
  store double %121, double* %32, align 8, !dbg !1919
  %122 = load double, double* %31, align 8, !dbg !1920
  %123 = fmul double 0x3CC0000000000000, %122, !dbg !1921
  %124 = load double, double* %28, align 8, !dbg !1922
  %125 = fadd double %124, %123, !dbg !1922
  store double %125, double* %28, align 8, !dbg !1922
  %126 = load double, double* %32, align 8, !dbg !1923
  %127 = fmul double 0x3CC0000000000000, %126, !dbg !1924
  %128 = load double, double* %29, align 8, !dbg !1925
  %129 = fadd double %128, %127, !dbg !1925
  store double %129, double* %29, align 8, !dbg !1925
  %130 = load i32, i32* %27, align 4, !dbg !1926
  %131 = icmp sgt i32 %130, 15, !dbg !1928
  br i1 %131, label %132, label %170, !dbg !1929

; <label>:132:                                    ; preds = %77
  call void @llvm.dbg.declare(metadata double* %34, metadata !1930, metadata !60), !dbg !1932
  %133 = load double, double* %31, align 8, !dbg !1933
  %134 = load double, double* %25, align 8, !dbg !1933
  %135 = fcmp ogt double %133, %134, !dbg !1933
  br i1 %135, label %136, label %138, !dbg !1933

; <label>:136:                                    ; preds = %132
  %137 = load double, double* %31, align 8, !dbg !1934
  br label %140, !dbg !1934

; <label>:138:                                    ; preds = %132
  %139 = load double, double* %25, align 8, !dbg !1936
  br label %140, !dbg !1936

; <label>:140:                                    ; preds = %138, %136
  %141 = phi double [ %137, %136 ], [ %139, %138 ], !dbg !1938
  store double %141, double* %34, align 8, !dbg !1940
  call void @llvm.dbg.declare(metadata double* %35, metadata !1941, metadata !60), !dbg !1942
  %142 = load double, double* %32, align 8, !dbg !1943
  %143 = load double, double* %26, align 8, !dbg !1943
  %144 = fcmp ogt double %142, %143, !dbg !1943
  br i1 %144, label %145, label %147, !dbg !1943

; <label>:145:                                    ; preds = %140
  %146 = load double, double* %32, align 8, !dbg !1944
  br label %149, !dbg !1944

; <label>:147:                                    ; preds = %140
  %148 = load double, double* %26, align 8, !dbg !1945
  br label %149, !dbg !1945

; <label>:149:                                    ; preds = %147, %145
  %150 = phi double [ %146, %145 ], [ %148, %147 ], !dbg !1946
  store double %150, double* %35, align 8, !dbg !1947
  call void @llvm.dbg.declare(metadata double* %36, metadata !1948, metadata !60), !dbg !1949
  %151 = load double, double* %23, align 8, !dbg !1950
  %152 = call double @fabs(double %151) #1, !dbg !1951
  store double %152, double* %36, align 8, !dbg !1949
  call void @llvm.dbg.declare(metadata double* %37, metadata !1952, metadata !60), !dbg !1953
  %153 = load double, double* %24, align 8, !dbg !1954
  %154 = call double @fabs(double %153) #1, !dbg !1955
  store double %154, double* %37, align 8, !dbg !1953
  %155 = load double, double* %34, align 8, !dbg !1956
  %156 = load double, double* %34, align 8, !dbg !1958
  %157 = load double, double* %36, align 8, !dbg !1959
  %158 = fadd double %156, %157, !dbg !1960
  %159 = fdiv double %155, %158, !dbg !1961
  %160 = fcmp olt double %159, 0x3D04000000000000, !dbg !1962
  br i1 %160, label %161, label %169, !dbg !1963

; <label>:161:                                    ; preds = %149
  %162 = load double, double* %35, align 8, !dbg !1964
  %163 = load double, double* %35, align 8, !dbg !1966
  %164 = load double, double* %37, align 8, !dbg !1967
  %165 = fadd double %163, %164, !dbg !1968
  %166 = fdiv double %162, %165, !dbg !1969
  %167 = fcmp olt double %166, 0x3D04000000000000, !dbg !1970
  br i1 %167, label %168, label %169, !dbg !1971

; <label>:168:                                    ; preds = %161
  br label %179, !dbg !1972

; <label>:169:                                    ; preds = %161, %149
  br label %170, !dbg !1973

; <label>:170:                                    ; preds = %169, %77
  %171 = load double, double* %31, align 8, !dbg !1974
  store double %171, double* %25, align 8, !dbg !1975
  %172 = load double, double* %32, align 8, !dbg !1976
  store double %172, double* %26, align 8, !dbg !1977
  %173 = load double, double* %18, align 8, !dbg !1978
  store double %173, double* %17, align 8, !dbg !1979
  %174 = load double, double* %19, align 8, !dbg !1980
  store double %174, double* %18, align 8, !dbg !1981
  %175 = load double, double* %21, align 8, !dbg !1982
  store double %175, double* %20, align 8, !dbg !1983
  %176 = load double, double* %22, align 8, !dbg !1984
  store double %176, double* %21, align 8, !dbg !1985
  %177 = load i32, i32* %27, align 4, !dbg !1986
  %178 = add nsw i32 %177, 1, !dbg !1986
  store i32 %178, i32* %27, align 4, !dbg !1986
  br label %74, !dbg !1987, !llvm.loop !1989

; <label>:179:                                    ; preds = %168, %74
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1990
  %181 = load double, double* %180, align 8, !dbg !1990
  %182 = load double, double* %23, align 8, !dbg !1991
  %183 = fmul double %181, %182, !dbg !1992
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1993
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 0, !dbg !1994
  store double %183, double* %185, align 8, !dbg !1995
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1996
  %187 = load double, double* %186, align 8, !dbg !1996
  %188 = load double, double* %23, align 8, !dbg !1997
  %189 = call double @fabs(double %188) #1, !dbg !1998
  %190 = fmul double %187, %189, !dbg !1999
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2000
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %191, i32 0, i32 1, !dbg !2001
  store double %190, double* %192, align 8, !dbg !2002
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2003
  %194 = load double, double* %193, align 8, !dbg !2003
  %195 = call double @fabs(double %194) #1, !dbg !2004
  %196 = load double, double* %28, align 8, !dbg !2005
  %197 = fmul double %195, %196, !dbg !2006
  %198 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2007
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %198, i32 0, i32 1, !dbg !2008
  %200 = load double, double* %199, align 8, !dbg !2009
  %201 = fadd double %200, %197, !dbg !2009
  store double %201, double* %199, align 8, !dbg !2009
  %202 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2010
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %202, i32 0, i32 0, !dbg !2011
  %204 = load double, double* %203, align 8, !dbg !2011
  %205 = call double @fabs(double %204) #1, !dbg !2012
  %206 = fmul double 0x3CC0000000000000, %205, !dbg !2013
  %207 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2014
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %207, i32 0, i32 1, !dbg !2015
  %209 = load double, double* %208, align 8, !dbg !2016
  %210 = fadd double %209, %206, !dbg !2016
  store double %210, double* %208, align 8, !dbg !2016
  %211 = load double, double* %24, align 8, !dbg !2017
  %212 = load double, double* %6, align 8, !dbg !2018
  %213 = fmul double 2.000000e+00, %212, !dbg !2019
  %214 = load double, double* %23, align 8, !dbg !2020
  %215 = fmul double %213, %214, !dbg !2021
  %216 = load double, double* %30, align 8, !dbg !2022
  %217 = fmul double %215, %216, !dbg !2023
  %218 = fadd double %211, %217, !dbg !2024
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2025
  %220 = load double, double* %219, align 8, !dbg !2025
  %221 = fdiv double %218, %220, !dbg !2026
  %222 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2027
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %222, i32 0, i32 0, !dbg !2028
  store double %221, double* %223, align 8, !dbg !2029
  %224 = load double, double* %24, align 8, !dbg !2030
  %225 = call double @fabs(double %224) #1, !dbg !2031
  %226 = load double, double* %6, align 8, !dbg !2032
  %227 = fmul double 2.000000e+00, %226, !dbg !2033
  %228 = load double, double* %23, align 8, !dbg !2034
  %229 = fmul double %227, %228, !dbg !2035
  %230 = load double, double* %30, align 8, !dbg !2036
  %231 = fmul double %229, %230, !dbg !2037
  %232 = call double @fabs(double %231) #1, !dbg !2038
  %233 = fadd double %225, %232, !dbg !2039
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2040
  %235 = load double, double* %234, align 8, !dbg !2040
  %236 = call double @fabs(double %235) #1, !dbg !2041
  %237 = fdiv double %233, %236, !dbg !2042
  %238 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !2043
  %239 = load double, double* %238, align 8, !dbg !2043
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2044
  %241 = load double, double* %240, align 8, !dbg !2044
  %242 = fdiv double %239, %241, !dbg !2045
  %243 = call double @fabs(double %242) #1, !dbg !2046
  %244 = fmul double %237, %243, !dbg !2048
  %245 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2049
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %245, i32 0, i32 1, !dbg !2050
  store double %244, double* %246, align 8, !dbg !2051
  %247 = load double, double* %29, align 8, !dbg !2052
  %248 = load double, double* %6, align 8, !dbg !2053
  %249 = fmul double 2.000000e+00, %248, !dbg !2054
  %250 = load double, double* %28, align 8, !dbg !2055
  %251 = fmul double %249, %250, !dbg !2056
  %252 = load double, double* %30, align 8, !dbg !2057
  %253 = fmul double %251, %252, !dbg !2058
  %254 = call double @fabs(double %253) #1, !dbg !2059
  %255 = fadd double %247, %254, !dbg !2060
  %256 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2061
  %257 = load double, double* %256, align 8, !dbg !2061
  %258 = call double @fabs(double %257) #1, !dbg !2062
  %259 = fdiv double %255, %258, !dbg !2063
  %260 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2064
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %260, i32 0, i32 1, !dbg !2065
  %262 = load double, double* %261, align 8, !dbg !2066
  %263 = fadd double %262, %259, !dbg !2066
  store double %263, double* %261, align 8, !dbg !2066
  %264 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2067
  %265 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %264, i32 0, i32 0, !dbg !2068
  %266 = load double, double* %265, align 8, !dbg !2068
  %267 = call double @fabs(double %266) #1, !dbg !2069
  %268 = fmul double 0x3CC0000000000000, %267, !dbg !2070
  %269 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2071
  %270 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %269, i32 0, i32 1, !dbg !2072
  %271 = load double, double* %270, align 8, !dbg !2073
  %272 = fadd double %271, %268, !dbg !2073
  store double %272, double* %270, align 8, !dbg !2073
  %273 = load i32, i32* %27, align 4, !dbg !2074
  %274 = icmp eq i32 %273, 800, !dbg !2076
  br i1 %274, label %275, label %278, !dbg !2077

; <label>:275:                                    ; preds = %179
  br label %276, !dbg !2078, !llvm.loop !2079

; <label>:276:                                    ; preds = %275
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 440, i32 11), !dbg !2080
  store i32 11, i32* %5, align 4, !dbg !2080
  br label %293, !dbg !2080
                                                  ; No predecessors!
  br label %293, !dbg !2083

; <label>:278:                                    ; preds = %179
  %279 = load i32, i32* %16, align 4, !dbg !2085
  %280 = icmp ne i32 %279, 0, !dbg !2085
  br i1 %280, label %281, label %283, !dbg !2085

; <label>:281:                                    ; preds = %278
  %282 = load i32, i32* %16, align 4, !dbg !2086
  br label %291, !dbg !2086

; <label>:283:                                    ; preds = %278
  %284 = load i32, i32* %14, align 4, !dbg !2088
  %285 = icmp ne i32 %284, 0, !dbg !2088
  br i1 %285, label %286, label %288, !dbg !2088

; <label>:286:                                    ; preds = %283
  %287 = load i32, i32* %14, align 4, !dbg !2090
  br label %289, !dbg !2090

; <label>:288:                                    ; preds = %283
  br label %289, !dbg !2092

; <label>:289:                                    ; preds = %288, %286
  %290 = phi i32 [ %287, %286 ], [ 0, %288 ], !dbg !2094
  br label %291, !dbg !2094

; <label>:291:                                    ; preds = %289, %281
  %292 = phi i32 [ %282, %281 ], [ %290, %289 ], !dbg !2096
  store i32 %292, i32* %5, align 4, !dbg !2098
  br label %293, !dbg !2098

; <label>:293:                                    ; preds = %276, %291, %277
  %294 = load i32, i32* %5, align 4, !dbg !2099
  ret i32 %294, !dbg !2099
}

; Function Attrs: nounwind uwtable
define internal i32 @coulomb_FG_series(double, double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !2100 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca %struct.gsl_sf_result_struct, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2103, metadata !60), !dbg !2104
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2105, metadata !60), !dbg !2106
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2107, metadata !60), !dbg !2108
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !2109, metadata !60), !dbg !2110
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !2111, metadata !60), !dbg !2112
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2113, metadata !60), !dbg !2114
  store i32 800, i32* %12, align 4, !dbg !2114
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !2115, metadata !60), !dbg !2116
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !2117, metadata !60), !dbg !2118
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2119, metadata !60), !dbg !2120
  %41 = load double, double* %7, align 8, !dbg !2121
  %42 = load double, double* %8, align 8, !dbg !2122
  %43 = call i32 @CLeta(double %41, double %42, %struct.gsl_sf_result_struct* %13), !dbg !2123
  store i32 %43, i32* %15, align 4, !dbg !2120
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2124, metadata !60), !dbg !2125
  %44 = load double, double* %7, align 8, !dbg !2126
  %45 = fsub double -0.000000e+00, %44, !dbg !2127
  %46 = fsub double %45, 1.000000e+00, !dbg !2128
  %47 = load double, double* %8, align 8, !dbg !2129
  %48 = call i32 @CLeta(double %46, double %47, %struct.gsl_sf_result_struct* %14), !dbg !2130
  store i32 %48, i32* %16, align 4, !dbg !2125
  call void @llvm.dbg.declare(metadata double* %17, metadata !2131, metadata !60), !dbg !2132
  %49 = load double, double* %7, align 8, !dbg !2133
  %50 = fmul double 2.000000e+00, %49, !dbg !2134
  %51 = fadd double %50, 1.000000e+00, !dbg !2135
  store double %51, double* %17, align 8, !dbg !2132
  call void @llvm.dbg.declare(metadata double* %18, metadata !2136, metadata !60), !dbg !2137
  %52 = load double, double* %9, align 8, !dbg !2138
  %53 = load double, double* %7, align 8, !dbg !2139
  %54 = call double @pow(double %52, double %53) #6, !dbg !2140
  store double %54, double* %18, align 8, !dbg !2137
  call void @llvm.dbg.declare(metadata double* %19, metadata !2141, metadata !60), !dbg !2142
  call void @llvm.dbg.declare(metadata double* %20, metadata !2143, metadata !60), !dbg !2144
  call void @llvm.dbg.declare(metadata double* %21, metadata !2145, metadata !60), !dbg !2146
  store double 1.000000e+00, double* %21, align 8, !dbg !2146
  call void @llvm.dbg.declare(metadata double* %22, metadata !2147, metadata !60), !dbg !2148
  %55 = load double, double* %9, align 8, !dbg !2149
  %56 = load double, double* %8, align 8, !dbg !2150
  %57 = fmul double %55, %56, !dbg !2151
  %58 = load double, double* %7, align 8, !dbg !2152
  %59 = fadd double %58, 1.000000e+00, !dbg !2153
  %60 = fdiv double %57, %59, !dbg !2154
  store double %60, double* %22, align 8, !dbg !2148
  call void @llvm.dbg.declare(metadata double* %23, metadata !2155, metadata !60), !dbg !2156
  call void @llvm.dbg.declare(metadata double* %24, metadata !2157, metadata !60), !dbg !2158
  store double 1.000000e+00, double* %24, align 8, !dbg !2158
  call void @llvm.dbg.declare(metadata double* %25, metadata !2159, metadata !60), !dbg !2160
  %61 = load double, double* %9, align 8, !dbg !2161
  %62 = fsub double -0.000000e+00, %61, !dbg !2162
  %63 = load double, double* %8, align 8, !dbg !2163
  %64 = fmul double %62, %63, !dbg !2164
  %65 = load double, double* %7, align 8, !dbg !2165
  %66 = fdiv double %64, %65, !dbg !2166
  store double %66, double* %25, align 8, !dbg !2160
  call void @llvm.dbg.declare(metadata double* %26, metadata !2167, metadata !60), !dbg !2168
  call void @llvm.dbg.declare(metadata double* %27, metadata !2169, metadata !60), !dbg !2170
  %67 = load double, double* %21, align 8, !dbg !2171
  %68 = load double, double* %22, align 8, !dbg !2172
  %69 = fadd double %67, %68, !dbg !2173
  store double %69, double* %27, align 8, !dbg !2170
  call void @llvm.dbg.declare(metadata double* %28, metadata !2174, metadata !60), !dbg !2175
  %70 = load double, double* %24, align 8, !dbg !2176
  %71 = load double, double* %25, align 8, !dbg !2177
  %72 = fadd double %70, %71, !dbg !2178
  store double %72, double* %28, align 8, !dbg !2175
  call void @llvm.dbg.declare(metadata double* %29, metadata !2179, metadata !60), !dbg !2180
  %73 = load double, double* %27, align 8, !dbg !2181
  %74 = call double @fabs(double %73) #1, !dbg !2182
  store double %74, double* %29, align 8, !dbg !2180
  call void @llvm.dbg.declare(metadata double* %30, metadata !2183, metadata !60), !dbg !2184
  %75 = load double, double* %28, align 8, !dbg !2185
  %76 = call double @fabs(double %75) #1, !dbg !2186
  store double %76, double* %30, align 8, !dbg !2184
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !2187, metadata !60), !dbg !2188
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %32, metadata !2189, metadata !60), !dbg !2190
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2191, metadata !60), !dbg !2192
  store i32 2, i32* %33, align 4, !dbg !2192
  call void @llvm.dbg.declare(metadata i32* %34, metadata !2193, metadata !60), !dbg !2194
  %77 = load double, double* %7, align 8, !dbg !2195
  %78 = load double, double* %8, align 8, !dbg !2196
  %79 = call i32 @coulomb_connection(double %77, double %78, double* %19, double* %20), !dbg !2197
  store i32 %79, i32* %34, align 4, !dbg !2194
  %80 = load i32, i32* %34, align 4, !dbg !2198
  %81 = icmp eq i32 %80, 15, !dbg !2200
  br i1 %81, label %82, label %95, !dbg !2201

; <label>:82:                                     ; preds = %5
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2202
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !2204
  store double 0.000000e+00, double* %84, align 8, !dbg !2205
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2206
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !2207
  store double 0.000000e+00, double* %86, align 8, !dbg !2208
  br label %87, !dbg !2209, !llvm.loop !2210

; <label>:87:                                     ; preds = %82
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2211
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !2211
  store double 0x7FF0000000000000, double* %89, align 8, !dbg !2211
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2211
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !2211
  store double 0x7FF0000000000000, double* %91, align 8, !dbg !2211
  br label %92, !dbg !2211, !llvm.loop !2214

; <label>:92:                                     ; preds = %87
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 308, i32 16), !dbg !2216
  store i32 16, i32* %6, align 4, !dbg !2216
  br label %292, !dbg !2216
                                                  ; No predecessors!
  br label %94, !dbg !2219

; <label>:94:                                     ; preds = %93
  br label %95, !dbg !2221

; <label>:95:                                     ; preds = %94, %5
  br label %96, !dbg !2222

; <label>:96:                                     ; preds = %186, %95
  %97 = load i32, i32* %33, align 4, !dbg !2223
  %98 = icmp slt i32 %97, 800, !dbg !2225
  br i1 %98, label %99, label %195, !dbg !2226

; <label>:99:                                     ; preds = %96
  call void @llvm.dbg.declare(metadata double* %35, metadata !2227, metadata !60), !dbg !2229
  call void @llvm.dbg.declare(metadata double* %36, metadata !2230, metadata !60), !dbg !2231
  %100 = load double, double* %9, align 8, !dbg !2232
  %101 = load double, double* %8, align 8, !dbg !2233
  %102 = fmul double 2.000000e+00, %101, !dbg !2234
  %103 = load double, double* %22, align 8, !dbg !2235
  %104 = fmul double %102, %103, !dbg !2236
  %105 = load double, double* %9, align 8, !dbg !2237
  %106 = load double, double* %21, align 8, !dbg !2238
  %107 = fmul double %105, %106, !dbg !2239
  %108 = fsub double %104, %107, !dbg !2240
  %109 = fmul double %100, %108, !dbg !2241
  %110 = load i32, i32* %33, align 4, !dbg !2242
  %111 = sitofp i32 %110 to double, !dbg !2242
  %112 = load i32, i32* %33, align 4, !dbg !2243
  %113 = sitofp i32 %112 to double, !dbg !2243
  %114 = load double, double* %17, align 8, !dbg !2244
  %115 = fadd double %113, %114, !dbg !2245
  %116 = fmul double %111, %115, !dbg !2246
  %117 = fdiv double %109, %116, !dbg !2247
  store double %117, double* %23, align 8, !dbg !2248
  %118 = load double, double* %9, align 8, !dbg !2249
  %119 = load double, double* %8, align 8, !dbg !2250
  %120 = fmul double 2.000000e+00, %119, !dbg !2251
  %121 = load double, double* %25, align 8, !dbg !2252
  %122 = fmul double %120, %121, !dbg !2253
  %123 = load double, double* %9, align 8, !dbg !2254
  %124 = load double, double* %24, align 8, !dbg !2255
  %125 = fmul double %123, %124, !dbg !2256
  %126 = fsub double %122, %125, !dbg !2257
  %127 = fmul double %118, %126, !dbg !2258
  %128 = load i32, i32* %33, align 4, !dbg !2259
  %129 = sitofp i32 %128 to double, !dbg !2259
  %130 = load i32, i32* %33, align 4, !dbg !2260
  %131 = sitofp i32 %130 to double, !dbg !2260
  %132 = load double, double* %17, align 8, !dbg !2261
  %133 = fsub double %131, %132, !dbg !2262
  %134 = fmul double %129, %133, !dbg !2263
  %135 = fdiv double %127, %134, !dbg !2264
  store double %135, double* %26, align 8, !dbg !2265
  %136 = load double, double* %23, align 8, !dbg !2266
  %137 = load double, double* %27, align 8, !dbg !2267
  %138 = fadd double %137, %136, !dbg !2267
  store double %138, double* %27, align 8, !dbg !2267
  %139 = load double, double* %26, align 8, !dbg !2268
  %140 = load double, double* %28, align 8, !dbg !2269
  %141 = fadd double %140, %139, !dbg !2269
  store double %141, double* %28, align 8, !dbg !2269
  %142 = load double, double* %23, align 8, !dbg !2270
  %143 = call double @fabs(double %142) #1, !dbg !2271
  store double %143, double* %35, align 8, !dbg !2272
  %144 = load double, double* %26, align 8, !dbg !2273
  %145 = call double @fabs(double %144) #1, !dbg !2274
  store double %145, double* %36, align 8, !dbg !2275
  %146 = load i32, i32* %33, align 4, !dbg !2276
  %147 = icmp sgt i32 %146, 15, !dbg !2278
  br i1 %147, label %148, label %186, !dbg !2279

; <label>:148:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata double* %37, metadata !2280, metadata !60), !dbg !2282
  %149 = load double, double* %35, align 8, !dbg !2283
  %150 = load double, double* %29, align 8, !dbg !2283
  %151 = fcmp ogt double %149, %150, !dbg !2283
  br i1 %151, label %152, label %154, !dbg !2283

; <label>:152:                                    ; preds = %148
  %153 = load double, double* %35, align 8, !dbg !2284
  br label %156, !dbg !2284

; <label>:154:                                    ; preds = %148
  %155 = load double, double* %29, align 8, !dbg !2286
  br label %156, !dbg !2286

; <label>:156:                                    ; preds = %154, %152
  %157 = phi double [ %153, %152 ], [ %155, %154 ], !dbg !2288
  store double %157, double* %37, align 8, !dbg !2290
  call void @llvm.dbg.declare(metadata double* %38, metadata !2291, metadata !60), !dbg !2292
  %158 = load double, double* %36, align 8, !dbg !2293
  %159 = load double, double* %30, align 8, !dbg !2293
  %160 = fcmp ogt double %158, %159, !dbg !2293
  br i1 %160, label %161, label %163, !dbg !2293

; <label>:161:                                    ; preds = %156
  %162 = load double, double* %36, align 8, !dbg !2294
  br label %165, !dbg !2294

; <label>:163:                                    ; preds = %156
  %164 = load double, double* %30, align 8, !dbg !2295
  br label %165, !dbg !2295

; <label>:165:                                    ; preds = %163, %161
  %166 = phi double [ %162, %161 ], [ %164, %163 ], !dbg !2296
  store double %166, double* %38, align 8, !dbg !2297
  call void @llvm.dbg.declare(metadata double* %39, metadata !2298, metadata !60), !dbg !2299
  %167 = load double, double* %27, align 8, !dbg !2300
  %168 = call double @fabs(double %167) #1, !dbg !2301
  store double %168, double* %39, align 8, !dbg !2299
  call void @llvm.dbg.declare(metadata double* %40, metadata !2302, metadata !60), !dbg !2303
  %169 = load double, double* %28, align 8, !dbg !2304
  %170 = call double @fabs(double %169) #1, !dbg !2305
  store double %170, double* %40, align 8, !dbg !2303
  %171 = load double, double* %37, align 8, !dbg !2306
  %172 = load double, double* %37, align 8, !dbg !2308
  %173 = load double, double* %39, align 8, !dbg !2309
  %174 = fadd double %172, %173, !dbg !2310
  %175 = fdiv double %171, %174, !dbg !2311
  %176 = fcmp olt double %175, 0x3CD0000000000000, !dbg !2312
  br i1 %176, label %177, label %185, !dbg !2313

; <label>:177:                                    ; preds = %165
  %178 = load double, double* %38, align 8, !dbg !2314
  %179 = load double, double* %38, align 8, !dbg !2316
  %180 = load double, double* %40, align 8, !dbg !2317
  %181 = fadd double %179, %180, !dbg !2318
  %182 = fdiv double %178, %181, !dbg !2319
  %183 = fcmp olt double %182, 0x3CD0000000000000, !dbg !2320
  br i1 %183, label %184, label %185, !dbg !2321

; <label>:184:                                    ; preds = %177
  br label %195, !dbg !2322

; <label>:185:                                    ; preds = %177, %165
  br label %186, !dbg !2323

; <label>:186:                                    ; preds = %185, %99
  %187 = load double, double* %35, align 8, !dbg !2324
  store double %187, double* %29, align 8, !dbg !2325
  %188 = load double, double* %36, align 8, !dbg !2326
  store double %188, double* %30, align 8, !dbg !2327
  %189 = load double, double* %22, align 8, !dbg !2328
  store double %189, double* %21, align 8, !dbg !2329
  %190 = load double, double* %23, align 8, !dbg !2330
  store double %190, double* %22, align 8, !dbg !2331
  %191 = load double, double* %25, align 8, !dbg !2332
  store double %191, double* %24, align 8, !dbg !2333
  %192 = load double, double* %26, align 8, !dbg !2334
  store double %192, double* %25, align 8, !dbg !2335
  %193 = load i32, i32* %33, align 4, !dbg !2336
  %194 = add nsw i32 %193, 1, !dbg !2336
  store i32 %194, i32* %33, align 4, !dbg !2336
  br label %96, !dbg !2337, !llvm.loop !2339

; <label>:195:                                    ; preds = %184, %96
  %196 = load double, double* %27, align 8, !dbg !2340
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2341
  %198 = load double, double* %197, align 8, !dbg !2341
  %199 = fmul double %196, %198, !dbg !2342
  %200 = load double, double* %18, align 8, !dbg !2343
  %201 = fmul double %199, %200, !dbg !2344
  %202 = load double, double* %9, align 8, !dbg !2345
  %203 = fmul double %201, %202, !dbg !2346
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2347
  store double %203, double* %204, align 8, !dbg !2348
  %205 = load double, double* %27, align 8, !dbg !2349
  %206 = call double @fabs(double %205) #1, !dbg !2350
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !2351
  %208 = load double, double* %207, align 8, !dbg !2351
  %209 = fmul double %206, %208, !dbg !2352
  %210 = load double, double* %18, align 8, !dbg !2353
  %211 = fmul double %209, %210, !dbg !2354
  %212 = load double, double* %9, align 8, !dbg !2355
  %213 = fmul double %211, %212, !dbg !2356
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2357
  %215 = load double, double* %214, align 8, !dbg !2357
  %216 = call double @fabs(double %215) #1, !dbg !2358
  %217 = fmul double 0x3CC0000000000000, %216, !dbg !2359
  %218 = fadd double %213, %217, !dbg !2360
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !2361
  store double %218, double* %219, align 8, !dbg !2362
  %220 = load double, double* %28, align 8, !dbg !2363
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !2364
  %222 = load double, double* %221, align 8, !dbg !2364
  %223 = fmul double %220, %222, !dbg !2365
  %224 = load double, double* %18, align 8, !dbg !2366
  %225 = fdiv double %223, %224, !dbg !2367
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !2368
  store double %225, double* %226, align 8, !dbg !2369
  %227 = load double, double* %28, align 8, !dbg !2370
  %228 = call double @fabs(double %227) #1, !dbg !2371
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !2372
  %230 = load double, double* %229, align 8, !dbg !2372
  %231 = fmul double %228, %230, !dbg !2373
  %232 = load double, double* %18, align 8, !dbg !2374
  %233 = fdiv double %231, %232, !dbg !2375
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !2376
  %235 = load double, double* %234, align 8, !dbg !2376
  %236 = call double @fabs(double %235) #1, !dbg !2377
  %237 = fmul double 0x3CC0000000000000, %236, !dbg !2378
  %238 = fadd double %233, %237, !dbg !2379
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !2380
  store double %238, double* %239, align 8, !dbg !2381
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2382
  %241 = load double, double* %240, align 8, !dbg !2382
  %242 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2383
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %242, i32 0, i32 0, !dbg !2384
  store double %241, double* %243, align 8, !dbg !2385
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !2386
  %245 = load double, double* %244, align 8, !dbg !2386
  %246 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2387
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %246, i32 0, i32 1, !dbg !2388
  store double %245, double* %247, align 8, !dbg !2389
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2390
  %249 = load double, double* %248, align 8, !dbg !2390
  %250 = load double, double* %19, align 8, !dbg !2391
  %251 = fmul double %249, %250, !dbg !2392
  %252 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !2393
  %253 = load double, double* %252, align 8, !dbg !2393
  %254 = fsub double %251, %253, !dbg !2394
  %255 = load double, double* %20, align 8, !dbg !2395
  %256 = fdiv double %254, %255, !dbg !2396
  %257 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2397
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %257, i32 0, i32 0, !dbg !2398
  store double %256, double* %258, align 8, !dbg !2399
  %259 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !2400
  %260 = load double, double* %259, align 8, !dbg !2400
  %261 = load double, double* %19, align 8, !dbg !2401
  %262 = call double @fabs(double %261) #1, !dbg !2402
  %263 = fmul double %260, %262, !dbg !2403
  %264 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !2404
  %265 = load double, double* %264, align 8, !dbg !2404
  %266 = fadd double %263, %265, !dbg !2405
  %267 = load double, double* %20, align 8, !dbg !2406
  %268 = call double @fabs(double %267) #1, !dbg !2407
  %269 = fdiv double %266, %268, !dbg !2408
  %270 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2409
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %270, i32 0, i32 1, !dbg !2410
  store double %269, double* %271, align 8, !dbg !2411
  %272 = load i32, i32* %33, align 4, !dbg !2412
  %273 = icmp sge i32 %272, 800, !dbg !2414
  br i1 %273, label %274, label %277, !dbg !2415

; <label>:274:                                    ; preds = %195
  br label %275, !dbg !2416, !llvm.loop !2417

; <label>:275:                                    ; preds = %274
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 356, i32 11), !dbg !2418
  store i32 11, i32* %6, align 4, !dbg !2418
  br label %292, !dbg !2418
                                                  ; No predecessors!
  br label %292, !dbg !2421

; <label>:277:                                    ; preds = %195
  %278 = load i32, i32* %15, align 4, !dbg !2423
  %279 = icmp ne i32 %278, 0, !dbg !2423
  br i1 %279, label %280, label %282, !dbg !2423

; <label>:280:                                    ; preds = %277
  %281 = load i32, i32* %15, align 4, !dbg !2424
  br label %290, !dbg !2424

; <label>:282:                                    ; preds = %277
  %283 = load i32, i32* %16, align 4, !dbg !2426
  %284 = icmp ne i32 %283, 0, !dbg !2426
  br i1 %284, label %285, label %287, !dbg !2426

; <label>:285:                                    ; preds = %282
  %286 = load i32, i32* %16, align 4, !dbg !2428
  br label %288, !dbg !2428

; <label>:287:                                    ; preds = %282
  br label %288, !dbg !2430

; <label>:288:                                    ; preds = %287, %285
  %289 = phi i32 [ %286, %285 ], [ 0, %287 ], !dbg !2432
  br label %290, !dbg !2432

; <label>:290:                                    ; preds = %288, %280
  %291 = phi i32 [ %281, %280 ], [ %289, %288 ], !dbg !2434
  store i32 %291, i32* %6, align 4, !dbg !2436
  br label %292, !dbg !2436

; <label>:292:                                    ; preds = %92, %275, %290, %276
  %293 = load i32, i32* %6, align 4, !dbg !2437
  ret i32 %293, !dbg !2437
}

; Function Attrs: nounwind uwtable
define internal i32 @coulomb_G_recur(double, i32, double, double, double, double, double*, double*) #0 !dbg !2438 {
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store double %0, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2441, metadata !60), !dbg !2442
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2443, metadata !60), !dbg !2444
  store double %2, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !2445, metadata !60), !dbg !2446
  store double %3, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !2447, metadata !60), !dbg !2448
  store double %4, double* %13, align 8
  call void @llvm.dbg.declare(metadata double* %13, metadata !2449, metadata !60), !dbg !2450
  store double %5, double* %14, align 8
  call void @llvm.dbg.declare(metadata double* %14, metadata !2451, metadata !60), !dbg !2452
  store double* %6, double** %15, align 8
  call void @llvm.dbg.declare(metadata double** %15, metadata !2453, metadata !60), !dbg !2454
  store double* %7, double** %16, align 8
  call void @llvm.dbg.declare(metadata double** %16, metadata !2455, metadata !60), !dbg !2456
  call void @llvm.dbg.declare(metadata double* %17, metadata !2457, metadata !60), !dbg !2458
  %26 = load double, double* %12, align 8, !dbg !2459
  %27 = fdiv double 1.000000e+00, %26, !dbg !2460
  store double %27, double* %17, align 8, !dbg !2458
  call void @llvm.dbg.declare(metadata double* %18, metadata !2461, metadata !60), !dbg !2462
  %28 = load double, double* %13, align 8, !dbg !2463
  store double %28, double* %18, align 8, !dbg !2462
  call void @llvm.dbg.declare(metadata double* %19, metadata !2464, metadata !60), !dbg !2465
  %29 = load double, double* %14, align 8, !dbg !2466
  store double %29, double* %19, align 8, !dbg !2465
  call void @llvm.dbg.declare(metadata double* %20, metadata !2467, metadata !60), !dbg !2468
  %30 = load double, double* %9, align 8, !dbg !2469
  %31 = fadd double %30, 1.000000e+00, !dbg !2470
  store double %31, double* %20, align 8, !dbg !2468
  call void @llvm.dbg.declare(metadata i32* %21, metadata !2471, metadata !60), !dbg !2472
  store i32 1, i32* %21, align 4, !dbg !2473
  br label %32, !dbg !2475

; <label>:32:                                     ; preds = %64, %8
  %33 = load i32, i32* %21, align 4, !dbg !2476
  %34 = load i32, i32* %10, align 4, !dbg !2479
  %35 = icmp sle i32 %33, %34, !dbg !2480
  br i1 %35, label %36, label %67, !dbg !2481

; <label>:36:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata double* %22, metadata !2482, metadata !60), !dbg !2484
  %37 = load double, double* %11, align 8, !dbg !2485
  %38 = load double, double* %20, align 8, !dbg !2486
  %39 = fdiv double %37, %38, !dbg !2487
  store double %39, double* %22, align 8, !dbg !2484
  call void @llvm.dbg.declare(metadata double* %23, metadata !2488, metadata !60), !dbg !2489
  %40 = load double, double* %22, align 8, !dbg !2490
  %41 = call double @hypot(double 1.000000e+00, double %40) #6, !dbg !2491
  store double %41, double* %23, align 8, !dbg !2489
  call void @llvm.dbg.declare(metadata double* %24, metadata !2492, metadata !60), !dbg !2493
  %42 = load double, double* %22, align 8, !dbg !2494
  %43 = load double, double* %20, align 8, !dbg !2495
  %44 = load double, double* %17, align 8, !dbg !2496
  %45 = fmul double %43, %44, !dbg !2497
  %46 = fadd double %42, %45, !dbg !2498
  store double %46, double* %24, align 8, !dbg !2493
  call void @llvm.dbg.declare(metadata double* %25, metadata !2499, metadata !60), !dbg !2500
  %47 = load double, double* %24, align 8, !dbg !2501
  %48 = load double, double* %18, align 8, !dbg !2502
  %49 = fmul double %47, %48, !dbg !2503
  %50 = load double, double* %19, align 8, !dbg !2504
  %51 = fsub double %49, %50, !dbg !2505
  %52 = load double, double* %23, align 8, !dbg !2506
  %53 = fdiv double %51, %52, !dbg !2507
  store double %53, double* %25, align 8, !dbg !2500
  %54 = load double, double* %23, align 8, !dbg !2508
  %55 = load double, double* %18, align 8, !dbg !2509
  %56 = fmul double %54, %55, !dbg !2510
  %57 = load double, double* %24, align 8, !dbg !2511
  %58 = load double, double* %25, align 8, !dbg !2512
  %59 = fmul double %57, %58, !dbg !2513
  %60 = fsub double %56, %59, !dbg !2514
  store double %60, double* %19, align 8, !dbg !2515
  %61 = load double, double* %25, align 8, !dbg !2516
  store double %61, double* %18, align 8, !dbg !2517
  %62 = load double, double* %20, align 8, !dbg !2518
  %63 = fadd double %62, 1.000000e+00, !dbg !2518
  store double %63, double* %20, align 8, !dbg !2518
  br label %64, !dbg !2519

; <label>:64:                                     ; preds = %36
  %65 = load i32, i32* %21, align 4, !dbg !2520
  %66 = add nsw i32 %65, 1, !dbg !2520
  store i32 %66, i32* %21, align 4, !dbg !2520
  br label %32, !dbg !2522, !llvm.loop !2523

; <label>:67:                                     ; preds = %32
  %68 = load double, double* %18, align 8, !dbg !2525
  %69 = load double*, double** %15, align 8, !dbg !2526
  store double %68, double* %69, align 8, !dbg !2527
  %70 = load double, double* %19, align 8, !dbg !2528
  %71 = load double*, double** %16, align 8, !dbg !2529
  store double %70, double* %71, align 8, !dbg !2530
  ret i32 0, !dbg !2531
}

; Function Attrs: nounwind uwtable
define internal i32 @coulomb_jwkb(double, double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*, double*) #0 !dbg !2532 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca %struct.gsl_sf_result_struct*, align 8
  %13 = alloca double*, align 8
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
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2535, metadata !60), !dbg !2536
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2537, metadata !60), !dbg !2538
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !2539, metadata !60), !dbg !2540
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !2541, metadata !60), !dbg !2542
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %12, metadata !2543, metadata !60), !dbg !2544
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !2545, metadata !60), !dbg !2546
  call void @llvm.dbg.declare(metadata double* %14, metadata !2547, metadata !60), !dbg !2548
  %29 = load double, double* %8, align 8, !dbg !2549
  %30 = load double, double* %8, align 8, !dbg !2550
  %31 = fadd double %30, 1.000000e+00, !dbg !2551
  %32 = fmul double %29, %31, !dbg !2552
  %33 = fadd double %32, 0x3FC5F15F15F15F16, !dbg !2553
  store double %33, double* %14, align 8, !dbg !2548
  call void @llvm.dbg.declare(metadata double* %15, metadata !2554, metadata !60), !dbg !2555
  %34 = load double, double* %14, align 8, !dbg !2556
  %35 = fcmp ogt double %34, 0.000000e+00, !dbg !2556
  br i1 %35, label %36, label %38, !dbg !2556

; <label>:36:                                     ; preds = %6
  %37 = load double, double* %14, align 8, !dbg !2557
  br label %39, !dbg !2557

; <label>:38:                                     ; preds = %6
  br label %39, !dbg !2559

; <label>:39:                                     ; preds = %38, %36
  %40 = phi double [ %37, %36 ], [ 0.000000e+00, %38 ], !dbg !2561
  store double %40, double* %15, align 8, !dbg !2563
  call void @llvm.dbg.declare(metadata double* %16, metadata !2564, metadata !60), !dbg !2565
  %41 = load double, double* %10, align 8, !dbg !2566
  %42 = load double, double* %9, align 8, !dbg !2567
  %43 = fmul double 2.000000e+00, %42, !dbg !2568
  %44 = load double, double* %10, align 8, !dbg !2569
  %45 = fsub double %43, %44, !dbg !2570
  %46 = fmul double %41, %45, !dbg !2571
  %47 = load double, double* %15, align 8, !dbg !2572
  %48 = fadd double %46, %47, !dbg !2573
  %49 = call double @sqrt(double %48) #6, !dbg !2574
  store double %49, double* %16, align 8, !dbg !2565
  call void @llvm.dbg.declare(metadata double* %17, metadata !2575, metadata !60), !dbg !2576
  %50 = load double, double* %15, align 8, !dbg !2577
  %51 = load double, double* %9, align 8, !dbg !2578
  %52 = load double, double* %9, align 8, !dbg !2579
  %53 = fmul double %51, %52, !dbg !2580
  %54 = load double, double* %15, align 8, !dbg !2581
  %55 = fadd double %53, %54, !dbg !2582
  %56 = fdiv double %50, %55, !dbg !2583
  %57 = call double @sqrt(double %56) #6, !dbg !2584
  %58 = load double, double* %16, align 8, !dbg !2585
  %59 = fmul double %57, %58, !dbg !2586
  %60 = load double, double* %10, align 8, !dbg !2587
  %61 = fdiv double %59, %60, !dbg !2588
  store double %61, double* %17, align 8, !dbg !2576
  call void @llvm.dbg.declare(metadata double* %18, metadata !2589, metadata !60), !dbg !2590
  %62 = load double, double* %17, align 8, !dbg !2591
  %63 = load double, double* %17, align 8, !dbg !2592
  %64 = call double @hypot(double 1.000000e+00, double %63) #6, !dbg !2593
  %65 = fadd double %62, %64, !dbg !2594
  %66 = call double @log(double %65) #6, !dbg !2595
  store double %66, double* %18, align 8, !dbg !2590
  call void @llvm.dbg.declare(metadata double* %19, metadata !2596, metadata !60), !dbg !2597
  %67 = load double, double* %16, align 8, !dbg !2598
  %68 = load double, double* %9, align 8, !dbg !2599
  %69 = load double, double* %16, align 8, !dbg !2600
  %70 = load double, double* %10, align 8, !dbg !2601
  %71 = load double, double* %9, align 8, !dbg !2602
  %72 = fsub double %70, %71, !dbg !2603
  %73 = call double @atan2(double %69, double %72) #6, !dbg !2604
  %74 = fmul double %68, %73, !dbg !2605
  %75 = fsub double %67, %74, !dbg !2606
  %76 = load double, double* %15, align 8, !dbg !2607
  %77 = call double @sqrt(double %76) #6, !dbg !2608
  %78 = load double, double* %18, align 8, !dbg !2609
  %79 = fmul double %77, %78, !dbg !2610
  %80 = fsub double %75, %79, !dbg !2611
  %81 = call double @fabs(double %80) #1, !dbg !2612
  store double %81, double* %19, align 8, !dbg !2597
  call void @llvm.dbg.declare(metadata double* %20, metadata !2613, metadata !60), !dbg !2614
  %82 = load double, double* %19, align 8, !dbg !2615
  %83 = fmul double 3.000000e+00, %82, !dbg !2616
  %84 = fdiv double %83, 2.000000e+00, !dbg !2617
  %85 = call double @pow(double %84, double 0x3FD5555555555555) #6, !dbg !2618
  store double %85, double* %20, align 8, !dbg !2614
  call void @llvm.dbg.declare(metadata double* %21, metadata !2619, metadata !60), !dbg !2620
  %86 = load double, double* %19, align 8, !dbg !2621
  %87 = fmul double 0x400921FB54442D18, %86, !dbg !2622
  %88 = load double, double* %10, align 8, !dbg !2623
  %89 = fmul double %87, %88, !dbg !2624
  %90 = load double, double* %16, align 8, !dbg !2625
  %91 = fmul double 6.000000e+00, %90, !dbg !2626
  %92 = fdiv double %89, %91, !dbg !2627
  %93 = call double @sqrt(double %92) #6, !dbg !2628
  store double %93, double* %21, align 8, !dbg !2620
  call void @llvm.dbg.declare(metadata double* %22, metadata !2629, metadata !60), !dbg !2630
  %94 = load double, double* %21, align 8, !dbg !2631
  %95 = fmul double %94, 3.000000e+00, !dbg !2632
  %96 = load double, double* %20, align 8, !dbg !2633
  %97 = fdiv double %95, %96, !dbg !2634
  store double %97, double* %22, align 8, !dbg !2630
  call void @llvm.dbg.declare(metadata double* %23, metadata !2635, metadata !60), !dbg !2636
  %98 = load double, double* %21, align 8, !dbg !2637
  %99 = fmul double %98, 3.000000e+00, !dbg !2638
  %100 = load double, double* %20, align 8, !dbg !2639
  %101 = fdiv double %99, %100, !dbg !2640
  store double %101, double* %23, align 8, !dbg !2636
  call void @llvm.dbg.declare(metadata double* %24, metadata !2641, metadata !60), !dbg !2642
  call void @llvm.dbg.declare(metadata double* %25, metadata !2643, metadata !60), !dbg !2644
  call void @llvm.dbg.declare(metadata double* %26, metadata !2645, metadata !60), !dbg !2646
  %102 = load double, double* %19, align 8, !dbg !2647
  store double %102, double* %26, align 8, !dbg !2646
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !2648, metadata !60), !dbg !2649
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !2650, metadata !60), !dbg !2651
  %103 = load double, double* %20, align 8, !dbg !2652
  %104 = load double, double* %20, align 8, !dbg !2653
  %105 = fmul double %103, %104, !dbg !2654
  %106 = call i32 @gsl_sf_airy_Ai_scaled_e(double %105, i32 0, %struct.gsl_sf_result_struct* %27), !dbg !2655
  %107 = load double, double* %20, align 8, !dbg !2656
  %108 = load double, double* %20, align 8, !dbg !2657
  %109 = fmul double %107, %108, !dbg !2658
  %110 = call i32 @gsl_sf_airy_Bi_scaled_e(double %109, i32 0, %struct.gsl_sf_result_struct* %28), !dbg !2659
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !2660
  %112 = load double, double* %111, align 8, !dbg !2660
  %113 = load double, double* %22, align 8, !dbg !2661
  %114 = fmul double %113, %112, !dbg !2661
  store double %114, double* %22, align 8, !dbg !2661
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !2662
  %116 = load double, double* %115, align 8, !dbg !2662
  %117 = load double, double* %23, align 8, !dbg !2663
  %118 = fmul double %117, %116, !dbg !2663
  store double %118, double* %23, align 8, !dbg !2663
  %119 = load double, double* %22, align 8, !dbg !2664
  %120 = call double @log(double %119) #6, !dbg !2665
  %121 = load double, double* %26, align 8, !dbg !2666
  %122 = fsub double %120, %121, !dbg !2667
  store double %122, double* %24, align 8, !dbg !2668
  %123 = load double, double* %23, align 8, !dbg !2669
  %124 = call double @log(double %123) #6, !dbg !2670
  %125 = load double, double* %26, align 8, !dbg !2671
  %126 = fadd double %124, %125, !dbg !2672
  store double %126, double* %25, align 8, !dbg !2673
  %127 = load double, double* %25, align 8, !dbg !2674
  %128 = fcmp oge double %127, 0x40862E42FEFA39EF, !dbg !2676
  br i1 %128, label %129, label %150, !dbg !2677

; <label>:129:                                    ; preds = %39
  %130 = load double, double* %22, align 8, !dbg !2678
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2680
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !2681
  store double %130, double* %132, align 8, !dbg !2682
  %133 = load double, double* %23, align 8, !dbg !2683
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !2684
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 0, !dbg !2685
  store double %133, double* %135, align 8, !dbg !2686
  %136 = load double, double* %22, align 8, !dbg !2687
  %137 = call double @fabs(double %136) #1, !dbg !2688
  %138 = fmul double 1.000000e-03, %137, !dbg !2689
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2690
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 1, !dbg !2691
  store double %138, double* %140, align 8, !dbg !2692
  %141 = load double, double* %23, align 8, !dbg !2693
  %142 = call double @fabs(double %141) #1, !dbg !2694
  %143 = fmul double 1.000000e-03, %142, !dbg !2695
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !2696
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 1, !dbg !2697
  store double %143, double* %145, align 8, !dbg !2698
  %146 = load double, double* %26, align 8, !dbg !2699
  %147 = load double*, double** %13, align 8, !dbg !2700
  store double %146, double* %147, align 8, !dbg !2701
  br label %148, !dbg !2702, !llvm.loop !2703

; <label>:148:                                    ; preds = %129
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 858, i32 16), !dbg !2704
  store i32 16, i32* %7, align 4, !dbg !2704
  br label %174, !dbg !2704
                                                  ; No predecessors!
  br label %174, !dbg !2707

; <label>:150:                                    ; preds = %39
  %151 = load double, double* %24, align 8, !dbg !2708
  %152 = call double @exp(double %151) #6, !dbg !2710
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2711
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 0, !dbg !2712
  store double %152, double* %154, align 8, !dbg !2713
  %155 = load double, double* %25, align 8, !dbg !2714
  %156 = call double @exp(double %155) #6, !dbg !2715
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !2716
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 0, !dbg !2717
  store double %156, double* %158, align 8, !dbg !2718
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2719
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !2720
  %161 = load double, double* %160, align 8, !dbg !2720
  %162 = call double @fabs(double %161) #1, !dbg !2721
  %163 = fmul double 1.000000e-03, %162, !dbg !2722
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2723
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 1, !dbg !2724
  store double %163, double* %165, align 8, !dbg !2725
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !2726
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 0, !dbg !2727
  %168 = load double, double* %167, align 8, !dbg !2727
  %169 = call double @fabs(double %168) #1, !dbg !2728
  %170 = fmul double 1.000000e-03, %169, !dbg !2729
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !2730
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !2731
  store double %170, double* %172, align 8, !dbg !2732
  %173 = load double*, double** %13, align 8, !dbg !2733
  store double 0.000000e+00, double* %173, align 8, !dbg !2734
  store i32 0, i32* %7, align 4, !dbg !2735
  br label %174, !dbg !2735

; <label>:174:                                    ; preds = %148, %150, %149
  %175 = load i32, i32* %7, align 4, !dbg !2736
  ret i32 %175, !dbg !2736
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind uwtable
define internal i32 @coulomb_CF2(double, double, double, double*, double*, i32*) #0 !dbg !2737 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
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
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2740, metadata !60), !dbg !2741
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2742, metadata !60), !dbg !2743
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2744, metadata !60), !dbg !2745
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !2746, metadata !60), !dbg !2747
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !2748, metadata !60), !dbg !2749
  store i32* %5, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !2750, metadata !60), !dbg !2751
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2752, metadata !60), !dbg !2753
  store i32 0, i32* %13, align 4, !dbg !2753
  call void @llvm.dbg.declare(metadata double* %14, metadata !2754, metadata !60), !dbg !2755
  store double 0x3CD0000000000000, double* %14, align 8, !dbg !2755
  call void @llvm.dbg.declare(metadata double* %15, metadata !2756, metadata !60), !dbg !2757
  store double 2.000000e+05, double* %15, align 8, !dbg !2757
  call void @llvm.dbg.declare(metadata double* %16, metadata !2758, metadata !60), !dbg !2759
  %34 = load double, double* %8, align 8, !dbg !2760
  %35 = fmul double 2.000000e+00, %34, !dbg !2761
  store double %35, double* %16, align 8, !dbg !2759
  call void @llvm.dbg.declare(metadata double* %17, metadata !2762, metadata !60), !dbg !2763
  %36 = load double, double* %9, align 8, !dbg !2764
  %37 = fdiv double 1.000000e+00, %36, !dbg !2765
  store double %37, double* %17, align 8, !dbg !2763
  call void @llvm.dbg.declare(metadata double* %18, metadata !2766, metadata !60), !dbg !2767
  %38 = load double, double* %8, align 8, !dbg !2768
  %39 = load double, double* %8, align 8, !dbg !2769
  %40 = fmul double %38, %39, !dbg !2770
  %41 = load double, double* %7, align 8, !dbg !2771
  %42 = load double, double* %7, align 8, !dbg !2772
  %43 = fadd double %42, 1.000000e+00, !dbg !2773
  %44 = fmul double %41, %43, !dbg !2774
  %45 = fadd double %40, %44, !dbg !2775
  store double %45, double* %18, align 8, !dbg !2767
  call void @llvm.dbg.declare(metadata double* %19, metadata !2776, metadata !60), !dbg !2777
  %46 = load double, double* %18, align 8, !dbg !2778
  %47 = fsub double -0.000000e+00, %46, !dbg !2779
  store double %47, double* %19, align 8, !dbg !2777
  call void @llvm.dbg.declare(metadata double* %20, metadata !2780, metadata !60), !dbg !2781
  %48 = load double, double* %8, align 8, !dbg !2782
  store double %48, double* %20, align 8, !dbg !2781
  call void @llvm.dbg.declare(metadata double* %21, metadata !2783, metadata !60), !dbg !2784
  %49 = load double, double* %9, align 8, !dbg !2785
  %50 = load double, double* %8, align 8, !dbg !2786
  %51 = fsub double %49, %50, !dbg !2787
  %52 = fmul double 2.000000e+00, %51, !dbg !2788
  store double %52, double* %21, align 8, !dbg !2784
  call void @llvm.dbg.declare(metadata double* %22, metadata !2789, metadata !60), !dbg !2790
  store double 2.000000e+00, double* %22, align 8, !dbg !2790
  call void @llvm.dbg.declare(metadata double* %23, metadata !2791, metadata !60), !dbg !2792
  %53 = load double, double* %21, align 8, !dbg !2793
  %54 = load double, double* %21, align 8, !dbg !2794
  %55 = load double, double* %21, align 8, !dbg !2795
  %56 = fmul double %54, %55, !dbg !2796
  %57 = load double, double* %22, align 8, !dbg !2797
  %58 = load double, double* %22, align 8, !dbg !2798
  %59 = fmul double %57, %58, !dbg !2799
  %60 = fadd double %56, %59, !dbg !2800
  %61 = fdiv double %53, %60, !dbg !2801
  store double %61, double* %23, align 8, !dbg !2792
  call void @llvm.dbg.declare(metadata double* %24, metadata !2802, metadata !60), !dbg !2803
  %62 = load double, double* %22, align 8, !dbg !2804
  %63 = fsub double -0.000000e+00, %62, !dbg !2805
  %64 = load double, double* %21, align 8, !dbg !2806
  %65 = load double, double* %21, align 8, !dbg !2807
  %66 = fmul double %64, %65, !dbg !2808
  %67 = load double, double* %22, align 8, !dbg !2809
  %68 = load double, double* %22, align 8, !dbg !2810
  %69 = fmul double %67, %68, !dbg !2811
  %70 = fadd double %66, %69, !dbg !2812
  %71 = fdiv double %63, %70, !dbg !2813
  store double %71, double* %24, align 8, !dbg !2803
  call void @llvm.dbg.declare(metadata double* %25, metadata !2814, metadata !60), !dbg !2815
  %72 = load double, double* %17, align 8, !dbg !2816
  %73 = fsub double -0.000000e+00, %72, !dbg !2817
  %74 = load double, double* %19, align 8, !dbg !2818
  %75 = load double, double* %24, align 8, !dbg !2819
  %76 = fmul double %74, %75, !dbg !2820
  %77 = load double, double* %20, align 8, !dbg !2821
  %78 = load double, double* %23, align 8, !dbg !2822
  %79 = fmul double %77, %78, !dbg !2823
  %80 = fadd double %76, %79, !dbg !2824
  %81 = fmul double %73, %80, !dbg !2825
  store double %81, double* %25, align 8, !dbg !2815
  call void @llvm.dbg.declare(metadata double* %26, metadata !2826, metadata !60), !dbg !2827
  %82 = load double, double* %17, align 8, !dbg !2828
  %83 = load double, double* %19, align 8, !dbg !2829
  %84 = load double, double* %23, align 8, !dbg !2830
  %85 = fmul double %83, %84, !dbg !2831
  %86 = load double, double* %20, align 8, !dbg !2832
  %87 = load double, double* %24, align 8, !dbg !2833
  %88 = fmul double %86, %87, !dbg !2834
  %89 = fsub double %85, %88, !dbg !2835
  %90 = fmul double %82, %89, !dbg !2836
  store double %90, double* %26, align 8, !dbg !2827
  call void @llvm.dbg.declare(metadata double* %27, metadata !2837, metadata !60), !dbg !2838
  call void @llvm.dbg.declare(metadata double* %28, metadata !2839, metadata !60), !dbg !2840
  call void @llvm.dbg.declare(metadata double* %29, metadata !2841, metadata !60), !dbg !2842
  call void @llvm.dbg.declare(metadata double* %30, metadata !2843, metadata !60), !dbg !2844
  call void @llvm.dbg.declare(metadata double* %31, metadata !2845, metadata !60), !dbg !2846
  store double 0.000000e+00, double* %31, align 8, !dbg !2846
  call void @llvm.dbg.declare(metadata double* %32, metadata !2847, metadata !60), !dbg !2848
  store double 0.000000e+00, double* %32, align 8, !dbg !2848
  call void @llvm.dbg.declare(metadata double* %33, metadata !2849, metadata !60), !dbg !2850
  %91 = load double, double* %8, align 8, !dbg !2851
  %92 = load double, double* %17, align 8, !dbg !2852
  %93 = fmul double %91, %92, !dbg !2853
  %94 = fsub double 1.000000e+00, %93, !dbg !2854
  store double %94, double* %33, align 8, !dbg !2850
  %95 = load i32*, i32** %12, align 8, !dbg !2855
  store i32 0, i32* %95, align 4, !dbg !2856
  br label %96, !dbg !2857, !llvm.loop !2858

; <label>:96:                                     ; preds = %183, %6
  %97 = load double, double* %25, align 8, !dbg !2859
  %98 = load double, double* %32, align 8, !dbg !2861
  %99 = fadd double %98, %97, !dbg !2861
  store double %99, double* %32, align 8, !dbg !2861
  %100 = load double, double* %26, align 8, !dbg !2862
  %101 = load double, double* %33, align 8, !dbg !2863
  %102 = fadd double %101, %100, !dbg !2863
  store double %102, double* %33, align 8, !dbg !2863
  %103 = load double, double* %31, align 8, !dbg !2864
  %104 = fadd double %103, 2.000000e+00, !dbg !2864
  store double %104, double* %31, align 8, !dbg !2864
  %105 = load double, double* %31, align 8, !dbg !2865
  %106 = load double, double* %19, align 8, !dbg !2866
  %107 = fadd double %106, %105, !dbg !2866
  store double %107, double* %19, align 8, !dbg !2866
  %108 = load double, double* %16, align 8, !dbg !2867
  %109 = load double, double* %20, align 8, !dbg !2868
  %110 = fadd double %109, %108, !dbg !2868
  store double %110, double* %20, align 8, !dbg !2868
  %111 = load double, double* %22, align 8, !dbg !2869
  %112 = fadd double %111, 2.000000e+00, !dbg !2869
  store double %112, double* %22, align 8, !dbg !2869
  %113 = load double, double* %19, align 8, !dbg !2870
  %114 = load double, double* %23, align 8, !dbg !2871
  %115 = fmul double %113, %114, !dbg !2872
  %116 = load double, double* %20, align 8, !dbg !2873
  %117 = load double, double* %24, align 8, !dbg !2874
  %118 = fmul double %116, %117, !dbg !2875
  %119 = fsub double %115, %118, !dbg !2876
  %120 = load double, double* %21, align 8, !dbg !2877
  %121 = fadd double %119, %120, !dbg !2878
  store double %121, double* %30, align 8, !dbg !2879
  %122 = load double, double* %20, align 8, !dbg !2880
  %123 = load double, double* %23, align 8, !dbg !2881
  %124 = fmul double %122, %123, !dbg !2882
  %125 = load double, double* %19, align 8, !dbg !2883
  %126 = load double, double* %24, align 8, !dbg !2884
  %127 = fmul double %125, %126, !dbg !2885
  %128 = fadd double %124, %127, !dbg !2886
  %129 = load double, double* %22, align 8, !dbg !2887
  %130 = fadd double %128, %129, !dbg !2888
  store double %130, double* %24, align 8, !dbg !2889
  %131 = load double, double* %30, align 8, !dbg !2890
  %132 = load double, double* %30, align 8, !dbg !2891
  %133 = fmul double %131, %132, !dbg !2892
  %134 = load double, double* %24, align 8, !dbg !2893
  %135 = load double, double* %24, align 8, !dbg !2894
  %136 = fmul double %134, %135, !dbg !2895
  %137 = fadd double %133, %136, !dbg !2896
  %138 = fdiv double 1.000000e+00, %137, !dbg !2897
  store double %138, double* %29, align 8, !dbg !2898
  %139 = load double, double* %29, align 8, !dbg !2899
  %140 = load double, double* %30, align 8, !dbg !2900
  %141 = fmul double %139, %140, !dbg !2901
  store double %141, double* %23, align 8, !dbg !2902
  %142 = load double, double* %29, align 8, !dbg !2903
  %143 = fsub double -0.000000e+00, %142, !dbg !2904
  %144 = load double, double* %24, align 8, !dbg !2905
  %145 = fmul double %143, %144, !dbg !2906
  store double %145, double* %24, align 8, !dbg !2907
  %146 = load double, double* %21, align 8, !dbg !2908
  %147 = load double, double* %23, align 8, !dbg !2909
  %148 = fmul double %146, %147, !dbg !2910
  %149 = load double, double* %22, align 8, !dbg !2911
  %150 = load double, double* %24, align 8, !dbg !2912
  %151 = fmul double %149, %150, !dbg !2913
  %152 = fsub double %148, %151, !dbg !2914
  %153 = fsub double %152, 1.000000e+00, !dbg !2915
  store double %153, double* %27, align 8, !dbg !2916
  %154 = load double, double* %22, align 8, !dbg !2917
  %155 = load double, double* %23, align 8, !dbg !2918
  %156 = fmul double %154, %155, !dbg !2919
  %157 = load double, double* %21, align 8, !dbg !2920
  %158 = load double, double* %24, align 8, !dbg !2921
  %159 = fmul double %157, %158, !dbg !2922
  %160 = fadd double %156, %159, !dbg !2923
  store double %160, double* %28, align 8, !dbg !2924
  %161 = load double, double* %25, align 8, !dbg !2925
  %162 = load double, double* %27, align 8, !dbg !2926
  %163 = fmul double %161, %162, !dbg !2927
  %164 = load double, double* %26, align 8, !dbg !2928
  %165 = load double, double* %28, align 8, !dbg !2929
  %166 = fmul double %164, %165, !dbg !2930
  %167 = fsub double %163, %166, !dbg !2931
  store double %167, double* %29, align 8, !dbg !2932
  %168 = load double, double* %25, align 8, !dbg !2933
  %169 = load double, double* %28, align 8, !dbg !2934
  %170 = fmul double %168, %169, !dbg !2935
  %171 = load double, double* %26, align 8, !dbg !2936
  %172 = load double, double* %27, align 8, !dbg !2937
  %173 = fmul double %171, %172, !dbg !2938
  %174 = fadd double %170, %173, !dbg !2939
  store double %174, double* %26, align 8, !dbg !2940
  %175 = load double, double* %29, align 8, !dbg !2941
  store double %175, double* %25, align 8, !dbg !2942
  %176 = load double, double* %31, align 8, !dbg !2943
  %177 = fcmp ogt double %176, 2.000000e+05, !dbg !2945
  br i1 %177, label %178, label %179, !dbg !2946

; <label>:178:                                    ; preds = %96
  store i32 10, i32* %13, align 4, !dbg !2947
  br label %196, !dbg !2949

; <label>:179:                                    ; preds = %96
  %180 = load i32*, i32** %12, align 8, !dbg !2950
  %181 = load i32, i32* %180, align 4, !dbg !2951
  %182 = add nsw i32 %181, 1, !dbg !2951
  store i32 %182, i32* %180, align 4, !dbg !2951
  br label %183, !dbg !2952

; <label>:183:                                    ; preds = %179
  %184 = load double, double* %25, align 8, !dbg !2953
  %185 = call double @fabs(double %184) #1, !dbg !2954
  %186 = load double, double* %26, align 8, !dbg !2955
  %187 = call double @fabs(double %186) #1, !dbg !2956
  %188 = fadd double %185, %187, !dbg !2958
  %189 = load double, double* %32, align 8, !dbg !2959
  %190 = call double @fabs(double %189) #1, !dbg !2960
  %191 = load double, double* %33, align 8, !dbg !2962
  %192 = call double @fabs(double %191) #1, !dbg !2963
  %193 = fadd double %190, %192, !dbg !2965
  %194 = fmul double %193, 0x3CD0000000000000, !dbg !2966
  %195 = fcmp ogt double %188, %194, !dbg !2967
  br i1 %195, label %96, label %196, !dbg !2968, !llvm.loop !2858

; <label>:196:                                    ; preds = %183, %178
  %197 = load double, double* %33, align 8, !dbg !2970
  %198 = load double, double* %32, align 8, !dbg !2972
  %199 = call double @fabs(double %198) #1, !dbg !2973
  %200 = fmul double 0x3DC86A0000000000, %199, !dbg !2974
  %201 = fcmp olt double %197, %200, !dbg !2975
  br i1 %201, label %202, label %203, !dbg !2976

; <label>:202:                                    ; preds = %196
  store i32 17, i32* %13, align 4, !dbg !2977
  br label %203, !dbg !2979

; <label>:203:                                    ; preds = %202, %196
  %204 = load double, double* %32, align 8, !dbg !2980
  %205 = load double*, double** %10, align 8, !dbg !2981
  store double %204, double* %205, align 8, !dbg !2982
  %206 = load double, double* %33, align 8, !dbg !2983
  %207 = load double*, double** %11, align 8, !dbg !2984
  store double %206, double* %207, align 8, !dbg !2985
  %208 = load i32, i32* %13, align 4, !dbg !2986
  ret i32 %208, !dbg !2987
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coulomb_wave_F_array(double, i32, double, double, double*, double*) #0 !dbg !2988 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2991, metadata !60), !dbg !2992
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2993, metadata !60), !dbg !2994
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !2995, metadata !60), !dbg !2996
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !2997, metadata !60), !dbg !2998
  store double* %4, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !2999, metadata !60), !dbg !3000
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !3001, metadata !60), !dbg !3002
  %32 = load double, double* %11, align 8, !dbg !3003
  %33 = fcmp oeq double %32, 0.000000e+00, !dbg !3005
  br i1 %33, label %34, label %59, !dbg !3006

; <label>:34:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3007, metadata !60), !dbg !3009
  %35 = load double*, double** %13, align 8, !dbg !3010
  store double 0.000000e+00, double* %35, align 8, !dbg !3011
  store i32 0, i32* %14, align 4, !dbg !3012
  br label %36, !dbg !3014

; <label>:36:                                     ; preds = %45, %34
  %37 = load i32, i32* %14, align 4, !dbg !3015
  %38 = load i32, i32* %9, align 4, !dbg !3018
  %39 = icmp sle i32 %37, %38, !dbg !3019
  br i1 %39, label %40, label %48, !dbg !3020

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %14, align 4, !dbg !3021
  %42 = sext i32 %41 to i64, !dbg !3023
  %43 = load double*, double** %12, align 8, !dbg !3023
  %44 = getelementptr inbounds double, double* %43, i64 %42, !dbg !3023
  store double 0.000000e+00, double* %44, align 8, !dbg !3024
  br label %45, !dbg !3025

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %14, align 4, !dbg !3026
  %47 = add nsw i32 %46, 1, !dbg !3026
  store i32 %47, i32* %14, align 4, !dbg !3026
  br label %36, !dbg !3028, !llvm.loop !3029

; <label>:48:                                     ; preds = %36
  %49 = load double, double* %8, align 8, !dbg !3031
  %50 = fcmp oeq double %49, 0.000000e+00, !dbg !3033
  br i1 %50, label %51, label %58, !dbg !3034

; <label>:51:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !3035, metadata !60), !dbg !3037
  %52 = load double, double* %10, align 8, !dbg !3038
  %53 = call i32 @CLeta(double 0.000000e+00, double %52, %struct.gsl_sf_result_struct* %15), !dbg !3039
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !3040
  %55 = load double, double* %54, align 8, !dbg !3040
  %56 = load double*, double** %12, align 8, !dbg !3041
  %57 = getelementptr inbounds double, double* %56, i64 0, !dbg !3041
  store double %55, double* %57, align 8, !dbg !3042
  br label %58, !dbg !3043

; <label>:58:                                     ; preds = %51, %48
  store i32 0, i32* %7, align 4, !dbg !3044
  br label %125, !dbg !3044

; <label>:59:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata double* %16, metadata !3045, metadata !60), !dbg !3047
  %60 = load double, double* %11, align 8, !dbg !3048
  %61 = fdiv double 1.000000e+00, %60, !dbg !3049
  store double %61, double* %16, align 8, !dbg !3047
  call void @llvm.dbg.declare(metadata double* %17, metadata !3050, metadata !60), !dbg !3051
  %62 = load double, double* %8, align 8, !dbg !3052
  %63 = load i32, i32* %9, align 4, !dbg !3053
  %64 = sitofp i32 %63 to double, !dbg !3053
  %65 = fadd double %62, %64, !dbg !3054
  store double %65, double* %17, align 8, !dbg !3051
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !3055, metadata !60), !dbg !3056
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !3057, metadata !60), !dbg !3058
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !3059, metadata !60), !dbg !3060
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !3061, metadata !60), !dbg !3062
  call void @llvm.dbg.declare(metadata double* %22, metadata !3063, metadata !60), !dbg !3064
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3065, metadata !60), !dbg !3066
  %66 = load double, double* %10, align 8, !dbg !3067
  %67 = load double, double* %11, align 8, !dbg !3068
  %68 = load double, double* %17, align 8, !dbg !3069
  %69 = load double*, double** %13, align 8, !dbg !3070
  %70 = call i32 @gsl_sf_coulomb_wave_FG_e(double %66, double %67, double %68, i32 0, %struct.gsl_sf_result_struct* %18, %struct.gsl_sf_result_struct* %19, %struct.gsl_sf_result_struct* %20, %struct.gsl_sf_result_struct* %21, double* %69, double* %22), !dbg !3071
  store i32 %70, i32* %23, align 4, !dbg !3066
  call void @llvm.dbg.declare(metadata double* %24, metadata !3072, metadata !60), !dbg !3073
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !3074
  %72 = load double, double* %71, align 8, !dbg !3074
  store double %72, double* %24, align 8, !dbg !3073
  call void @llvm.dbg.declare(metadata double* %25, metadata !3075, metadata !60), !dbg !3076
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !3077
  %74 = load double, double* %73, align 8, !dbg !3077
  store double %74, double* %25, align 8, !dbg !3076
  call void @llvm.dbg.declare(metadata double* %26, metadata !3078, metadata !60), !dbg !3079
  %75 = load double, double* %17, align 8, !dbg !3080
  store double %75, double* %26, align 8, !dbg !3079
  call void @llvm.dbg.declare(metadata i32* %27, metadata !3081, metadata !60), !dbg !3082
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !3083
  %77 = load double, double* %76, align 8, !dbg !3083
  %78 = load i32, i32* %9, align 4, !dbg !3084
  %79 = sext i32 %78 to i64, !dbg !3085
  %80 = load double*, double** %12, align 8, !dbg !3085
  %81 = getelementptr inbounds double, double* %80, i64 %79, !dbg !3085
  store double %77, double* %81, align 8, !dbg !3086
  %82 = load i32, i32* %9, align 4, !dbg !3087
  %83 = sub nsw i32 %82, 1, !dbg !3089
  store i32 %83, i32* %27, align 4, !dbg !3090
  br label %84, !dbg !3091

; <label>:84:                                     ; preds = %120, %59
  %85 = load i32, i32* %27, align 4, !dbg !3092
  %86 = icmp sge i32 %85, 0, !dbg !3095
  br i1 %86, label %87, label %123, !dbg !3096

; <label>:87:                                     ; preds = %84
  call void @llvm.dbg.declare(metadata double* %28, metadata !3097, metadata !60), !dbg !3099
  %88 = load double, double* %10, align 8, !dbg !3100
  %89 = load double, double* %26, align 8, !dbg !3101
  %90 = fdiv double %88, %89, !dbg !3102
  store double %90, double* %28, align 8, !dbg !3099
  call void @llvm.dbg.declare(metadata double* %29, metadata !3103, metadata !60), !dbg !3104
  %91 = load double, double* %28, align 8, !dbg !3105
  %92 = call double @hypot(double 1.000000e+00, double %91) #6, !dbg !3106
  store double %92, double* %29, align 8, !dbg !3104
  call void @llvm.dbg.declare(metadata double* %30, metadata !3107, metadata !60), !dbg !3108
  %93 = load double, double* %28, align 8, !dbg !3109
  %94 = load double, double* %26, align 8, !dbg !3110
  %95 = load double, double* %16, align 8, !dbg !3111
  %96 = fmul double %94, %95, !dbg !3112
  %97 = fadd double %93, %96, !dbg !3113
  store double %97, double* %30, align 8, !dbg !3108
  call void @llvm.dbg.declare(metadata double* %31, metadata !3114, metadata !60), !dbg !3115
  %98 = load double, double* %24, align 8, !dbg !3116
  %99 = load double, double* %30, align 8, !dbg !3117
  %100 = fmul double %98, %99, !dbg !3118
  %101 = load double, double* %25, align 8, !dbg !3119
  %102 = fadd double %100, %101, !dbg !3120
  %103 = load double, double* %29, align 8, !dbg !3121
  %104 = fdiv double %102, %103, !dbg !3122
  store double %104, double* %31, align 8, !dbg !3115
  %105 = load double, double* %31, align 8, !dbg !3123
  %106 = load i32, i32* %27, align 4, !dbg !3124
  %107 = sext i32 %106 to i64, !dbg !3125
  %108 = load double*, double** %12, align 8, !dbg !3125
  %109 = getelementptr inbounds double, double* %108, i64 %107, !dbg !3125
  store double %105, double* %109, align 8, !dbg !3126
  %110 = load double, double* %31, align 8, !dbg !3127
  %111 = load double, double* %30, align 8, !dbg !3128
  %112 = fmul double %110, %111, !dbg !3129
  %113 = load double, double* %24, align 8, !dbg !3130
  %114 = load double, double* %29, align 8, !dbg !3131
  %115 = fmul double %113, %114, !dbg !3132
  %116 = fsub double %112, %115, !dbg !3133
  store double %116, double* %25, align 8, !dbg !3134
  %117 = load double, double* %31, align 8, !dbg !3135
  store double %117, double* %24, align 8, !dbg !3136
  %118 = load double, double* %26, align 8, !dbg !3137
  %119 = fsub double %118, 1.000000e+00, !dbg !3137
  store double %119, double* %26, align 8, !dbg !3137
  br label %120, !dbg !3138

; <label>:120:                                    ; preds = %87
  %121 = load i32, i32* %27, align 4, !dbg !3139
  %122 = add nsw i32 %121, -1, !dbg !3139
  store i32 %122, i32* %27, align 4, !dbg !3139
  br label %84, !dbg !3141, !llvm.loop !3142

; <label>:123:                                    ; preds = %84
  %124 = load i32, i32* %23, align 4, !dbg !3144
  store i32 %124, i32* %7, align 4, !dbg !3145
  br label %125, !dbg !3145

; <label>:125:                                    ; preds = %123, %58
  %126 = load i32, i32* %7, align 4, !dbg !3146
  ret i32 %126, !dbg !3146
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coulomb_wave_FG_array(double, i32, double, double, double*, double*, double*, double*) #0 !dbg !3147 {
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  store double %0, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3150, metadata !60), !dbg !3151
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3152, metadata !60), !dbg !3153
  store double %2, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !3154, metadata !60), !dbg !3155
  store double %3, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !3156, metadata !60), !dbg !3157
  store double* %4, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !3158, metadata !60), !dbg !3159
  store double* %5, double** %14, align 8
  call void @llvm.dbg.declare(metadata double** %14, metadata !3160, metadata !60), !dbg !3161
  store double* %6, double** %15, align 8
  call void @llvm.dbg.declare(metadata double** %15, metadata !3162, metadata !60), !dbg !3163
  store double* %7, double** %16, align 8
  call void @llvm.dbg.declare(metadata double** %16, metadata !3164, metadata !60), !dbg !3165
  call void @llvm.dbg.declare(metadata double* %17, metadata !3166, metadata !60), !dbg !3167
  %38 = load double, double* %12, align 8, !dbg !3168
  %39 = fdiv double 1.000000e+00, %38, !dbg !3169
  store double %39, double* %17, align 8, !dbg !3167
  call void @llvm.dbg.declare(metadata double* %18, metadata !3170, metadata !60), !dbg !3171
  %40 = load double, double* %9, align 8, !dbg !3172
  %41 = load i32, i32* %10, align 4, !dbg !3173
  %42 = sitofp i32 %41 to double, !dbg !3173
  %43 = fadd double %40, %42, !dbg !3174
  store double %43, double* %18, align 8, !dbg !3171
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !3175, metadata !60), !dbg !3176
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !3177, metadata !60), !dbg !3178
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !3179, metadata !60), !dbg !3180
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !3181, metadata !60), !dbg !3182
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3183, metadata !60), !dbg !3184
  %44 = load double, double* %11, align 8, !dbg !3185
  %45 = load double, double* %12, align 8, !dbg !3186
  %46 = load double, double* %18, align 8, !dbg !3187
  %47 = load i32, i32* %10, align 4, !dbg !3188
  %48 = load double*, double** %15, align 8, !dbg !3189
  %49 = load double*, double** %16, align 8, !dbg !3190
  %50 = call i32 @gsl_sf_coulomb_wave_FG_e(double %44, double %45, double %46, i32 %47, %struct.gsl_sf_result_struct* %19, %struct.gsl_sf_result_struct* %20, %struct.gsl_sf_result_struct* %21, %struct.gsl_sf_result_struct* %22, double* %48, double* %49), !dbg !3191
  store i32 %50, i32* %23, align 4, !dbg !3184
  call void @llvm.dbg.declare(metadata double* %24, metadata !3192, metadata !60), !dbg !3193
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !3194
  %52 = load double, double* %51, align 8, !dbg !3194
  store double %52, double* %24, align 8, !dbg !3193
  call void @llvm.dbg.declare(metadata double* %25, metadata !3195, metadata !60), !dbg !3196
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !3197
  %54 = load double, double* %53, align 8, !dbg !3197
  store double %54, double* %25, align 8, !dbg !3196
  call void @llvm.dbg.declare(metadata double* %26, metadata !3198, metadata !60), !dbg !3199
  %55 = load double, double* %18, align 8, !dbg !3200
  store double %55, double* %26, align 8, !dbg !3199
  call void @llvm.dbg.declare(metadata i32* %27, metadata !3201, metadata !60), !dbg !3202
  call void @llvm.dbg.declare(metadata double* %28, metadata !3203, metadata !60), !dbg !3204
  call void @llvm.dbg.declare(metadata double* %29, metadata !3205, metadata !60), !dbg !3206
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !3207
  %57 = load double, double* %56, align 8, !dbg !3207
  %58 = load i32, i32* %10, align 4, !dbg !3208
  %59 = sext i32 %58 to i64, !dbg !3209
  %60 = load double*, double** %13, align 8, !dbg !3209
  %61 = getelementptr inbounds double, double* %60, i64 %59, !dbg !3209
  store double %57, double* %61, align 8, !dbg !3210
  %62 = load i32, i32* %10, align 4, !dbg !3211
  %63 = sub nsw i32 %62, 1, !dbg !3213
  store i32 %63, i32* %27, align 4, !dbg !3214
  br label %64, !dbg !3215

; <label>:64:                                     ; preds = %100, %8
  %65 = load i32, i32* %27, align 4, !dbg !3216
  %66 = icmp sge i32 %65, 0, !dbg !3219
  br i1 %66, label %67, label %103, !dbg !3220

; <label>:67:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata double* %30, metadata !3221, metadata !60), !dbg !3223
  %68 = load double, double* %11, align 8, !dbg !3224
  %69 = load double, double* %26, align 8, !dbg !3225
  %70 = fdiv double %68, %69, !dbg !3226
  store double %70, double* %30, align 8, !dbg !3223
  call void @llvm.dbg.declare(metadata double* %31, metadata !3227, metadata !60), !dbg !3228
  %71 = load double, double* %30, align 8, !dbg !3229
  %72 = call double @hypot(double 1.000000e+00, double %71) #6, !dbg !3230
  store double %72, double* %31, align 8, !dbg !3228
  call void @llvm.dbg.declare(metadata double* %32, metadata !3231, metadata !60), !dbg !3232
  %73 = load double, double* %30, align 8, !dbg !3233
  %74 = load double, double* %26, align 8, !dbg !3234
  %75 = load double, double* %17, align 8, !dbg !3235
  %76 = fmul double %74, %75, !dbg !3236
  %77 = fadd double %73, %76, !dbg !3237
  store double %77, double* %32, align 8, !dbg !3232
  call void @llvm.dbg.declare(metadata double* %33, metadata !3238, metadata !60), !dbg !3239
  %78 = load double, double* %24, align 8, !dbg !3240
  %79 = load double, double* %32, align 8, !dbg !3241
  %80 = fmul double %78, %79, !dbg !3242
  %81 = load double, double* %25, align 8, !dbg !3243
  %82 = fadd double %80, %81, !dbg !3244
  %83 = load double, double* %31, align 8, !dbg !3245
  %84 = fdiv double %82, %83, !dbg !3246
  store double %84, double* %33, align 8, !dbg !3247
  %85 = load double, double* %33, align 8, !dbg !3248
  %86 = load i32, i32* %27, align 4, !dbg !3249
  %87 = sext i32 %86 to i64, !dbg !3250
  %88 = load double*, double** %13, align 8, !dbg !3250
  %89 = getelementptr inbounds double, double* %88, i64 %87, !dbg !3250
  store double %85, double* %89, align 8, !dbg !3251
  %90 = load double, double* %33, align 8, !dbg !3252
  %91 = load double, double* %32, align 8, !dbg !3253
  %92 = fmul double %90, %91, !dbg !3254
  %93 = load double, double* %24, align 8, !dbg !3255
  %94 = load double, double* %31, align 8, !dbg !3256
  %95 = fmul double %93, %94, !dbg !3257
  %96 = fsub double %92, %95, !dbg !3258
  store double %96, double* %25, align 8, !dbg !3259
  %97 = load double, double* %33, align 8, !dbg !3260
  store double %97, double* %24, align 8, !dbg !3261
  %98 = load double, double* %26, align 8, !dbg !3262
  %99 = fsub double %98, 1.000000e+00, !dbg !3262
  store double %99, double* %26, align 8, !dbg !3262
  br label %100, !dbg !3263

; <label>:100:                                    ; preds = %67
  %101 = load i32, i32* %27, align 4, !dbg !3264
  %102 = add nsw i32 %101, -1, !dbg !3264
  store i32 %102, i32* %27, align 4, !dbg !3264
  br label %64, !dbg !3266, !llvm.loop !3267

; <label>:103:                                    ; preds = %64
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !3269
  %105 = load double, double* %104, align 8, !dbg !3269
  store double %105, double* %28, align 8, !dbg !3270
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !3271
  %107 = load double, double* %106, align 8, !dbg !3271
  store double %107, double* %29, align 8, !dbg !3272
  %108 = load double, double* %9, align 8, !dbg !3273
  %109 = fadd double %108, 1.000000e+00, !dbg !3274
  store double %109, double* %26, align 8, !dbg !3275
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !3276
  %111 = load double, double* %110, align 8, !dbg !3276
  %112 = load double*, double** %14, align 8, !dbg !3277
  %113 = getelementptr inbounds double, double* %112, i64 0, !dbg !3277
  store double %111, double* %113, align 8, !dbg !3278
  store i32 1, i32* %27, align 4, !dbg !3279
  br label %114, !dbg !3281

; <label>:114:                                    ; preds = %151, %103
  %115 = load i32, i32* %27, align 4, !dbg !3282
  %116 = load i32, i32* %10, align 4, !dbg !3285
  %117 = icmp sle i32 %115, %116, !dbg !3286
  br i1 %117, label %118, label %154, !dbg !3287

; <label>:118:                                    ; preds = %114
  call void @llvm.dbg.declare(metadata double* %34, metadata !3288, metadata !60), !dbg !3290
  %119 = load double, double* %11, align 8, !dbg !3291
  %120 = load double, double* %26, align 8, !dbg !3292
  %121 = fdiv double %119, %120, !dbg !3293
  store double %121, double* %34, align 8, !dbg !3290
  call void @llvm.dbg.declare(metadata double* %35, metadata !3294, metadata !60), !dbg !3295
  %122 = load double, double* %34, align 8, !dbg !3296
  %123 = call double @hypot(double 1.000000e+00, double %122) #6, !dbg !3297
  store double %123, double* %35, align 8, !dbg !3295
  call void @llvm.dbg.declare(metadata double* %36, metadata !3298, metadata !60), !dbg !3299
  %124 = load double, double* %34, align 8, !dbg !3300
  %125 = load double, double* %26, align 8, !dbg !3301
  %126 = load double, double* %17, align 8, !dbg !3302
  %127 = fmul double %125, %126, !dbg !3303
  %128 = fadd double %124, %127, !dbg !3304
  store double %128, double* %36, align 8, !dbg !3299
  call void @llvm.dbg.declare(metadata double* %37, metadata !3305, metadata !60), !dbg !3306
  %129 = load double, double* %36, align 8, !dbg !3307
  %130 = load double, double* %28, align 8, !dbg !3308
  %131 = fmul double %129, %130, !dbg !3309
  %132 = load double, double* %29, align 8, !dbg !3310
  %133 = fsub double %131, %132, !dbg !3311
  %134 = load double, double* %35, align 8, !dbg !3312
  %135 = fdiv double %133, %134, !dbg !3313
  store double %135, double* %37, align 8, !dbg !3306
  %136 = load double, double* %37, align 8, !dbg !3314
  %137 = load i32, i32* %27, align 4, !dbg !3315
  %138 = sext i32 %137 to i64, !dbg !3316
  %139 = load double*, double** %14, align 8, !dbg !3316
  %140 = getelementptr inbounds double, double* %139, i64 %138, !dbg !3316
  store double %136, double* %140, align 8, !dbg !3317
  %141 = load double, double* %35, align 8, !dbg !3318
  %142 = load double, double* %28, align 8, !dbg !3319
  %143 = fmul double %141, %142, !dbg !3320
  %144 = load double, double* %36, align 8, !dbg !3321
  %145 = load double, double* %37, align 8, !dbg !3322
  %146 = fmul double %144, %145, !dbg !3323
  %147 = fsub double %143, %146, !dbg !3324
  store double %147, double* %29, align 8, !dbg !3325
  %148 = load double, double* %37, align 8, !dbg !3326
  store double %148, double* %28, align 8, !dbg !3327
  %149 = load double, double* %26, align 8, !dbg !3328
  %150 = fadd double %149, 1.000000e+00, !dbg !3328
  store double %150, double* %26, align 8, !dbg !3328
  br label %151, !dbg !3329

; <label>:151:                                    ; preds = %118
  %152 = load i32, i32* %27, align 4, !dbg !3330
  %153 = add nsw i32 %152, 1, !dbg !3330
  store i32 %153, i32* %27, align 4, !dbg !3330
  br label %114, !dbg !3332, !llvm.loop !3333

; <label>:154:                                    ; preds = %114
  %155 = load i32, i32* %23, align 4, !dbg !3335
  ret i32 %155, !dbg !3336
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coulomb_wave_FGp_array(double, i32, double, double, double*, double*, double*, double*, double*, double*) #0 !dbg !3337 {
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca %struct.gsl_sf_result_struct, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  store double %0, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !3340, metadata !60), !dbg !3341
  store i32 %1, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3342, metadata !60), !dbg !3343
  store double %2, double* %13, align 8
  call void @llvm.dbg.declare(metadata double* %13, metadata !3344, metadata !60), !dbg !3345
  store double %3, double* %14, align 8
  call void @llvm.dbg.declare(metadata double* %14, metadata !3346, metadata !60), !dbg !3347
  store double* %4, double** %15, align 8
  call void @llvm.dbg.declare(metadata double** %15, metadata !3348, metadata !60), !dbg !3349
  store double* %5, double** %16, align 8
  call void @llvm.dbg.declare(metadata double** %16, metadata !3350, metadata !60), !dbg !3351
  store double* %6, double** %17, align 8
  call void @llvm.dbg.declare(metadata double** %17, metadata !3352, metadata !60), !dbg !3353
  store double* %7, double** %18, align 8
  call void @llvm.dbg.declare(metadata double** %18, metadata !3354, metadata !60), !dbg !3355
  store double* %8, double** %19, align 8
  call void @llvm.dbg.declare(metadata double** %19, metadata !3356, metadata !60), !dbg !3357
  store double* %9, double** %20, align 8
  call void @llvm.dbg.declare(metadata double** %20, metadata !3358, metadata !60), !dbg !3359
  call void @llvm.dbg.declare(metadata double* %21, metadata !3360, metadata !60), !dbg !3361
  %42 = load double, double* %14, align 8, !dbg !3362
  %43 = fdiv double 1.000000e+00, %42, !dbg !3363
  store double %43, double* %21, align 8, !dbg !3361
  call void @llvm.dbg.declare(metadata double* %22, metadata !3364, metadata !60), !dbg !3365
  %44 = load double, double* %11, align 8, !dbg !3366
  %45 = load i32, i32* %12, align 4, !dbg !3367
  %46 = sitofp i32 %45 to double, !dbg !3367
  %47 = fadd double %44, %46, !dbg !3368
  store double %47, double* %22, align 8, !dbg !3365
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !3369, metadata !60), !dbg !3370
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !3371, metadata !60), !dbg !3372
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !3373, metadata !60), !dbg !3374
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %26, metadata !3375, metadata !60), !dbg !3376
  call void @llvm.dbg.declare(metadata i32* %27, metadata !3377, metadata !60), !dbg !3378
  %48 = load double, double* %13, align 8, !dbg !3379
  %49 = load double, double* %14, align 8, !dbg !3380
  %50 = load double, double* %22, align 8, !dbg !3381
  %51 = load i32, i32* %12, align 4, !dbg !3382
  %52 = load double*, double** %19, align 8, !dbg !3383
  %53 = load double*, double** %20, align 8, !dbg !3384
  %54 = call i32 @gsl_sf_coulomb_wave_FG_e(double %48, double %49, double %50, i32 %51, %struct.gsl_sf_result_struct* %23, %struct.gsl_sf_result_struct* %24, %struct.gsl_sf_result_struct* %25, %struct.gsl_sf_result_struct* %26, double* %52, double* %53), !dbg !3385
  store i32 %54, i32* %27, align 4, !dbg !3378
  call void @llvm.dbg.declare(metadata double* %28, metadata !3386, metadata !60), !dbg !3387
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !3388
  %56 = load double, double* %55, align 8, !dbg !3388
  store double %56, double* %28, align 8, !dbg !3387
  call void @llvm.dbg.declare(metadata double* %29, metadata !3389, metadata !60), !dbg !3390
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !3391
  %58 = load double, double* %57, align 8, !dbg !3391
  store double %58, double* %29, align 8, !dbg !3390
  call void @llvm.dbg.declare(metadata double* %30, metadata !3392, metadata !60), !dbg !3393
  %59 = load double, double* %22, align 8, !dbg !3394
  store double %59, double* %30, align 8, !dbg !3393
  call void @llvm.dbg.declare(metadata i32* %31, metadata !3395, metadata !60), !dbg !3396
  call void @llvm.dbg.declare(metadata double* %32, metadata !3397, metadata !60), !dbg !3398
  call void @llvm.dbg.declare(metadata double* %33, metadata !3399, metadata !60), !dbg !3400
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !3401
  %61 = load double, double* %60, align 8, !dbg !3401
  %62 = load i32, i32* %12, align 4, !dbg !3402
  %63 = sext i32 %62 to i64, !dbg !3403
  %64 = load double*, double** %15, align 8, !dbg !3403
  %65 = getelementptr inbounds double, double* %64, i64 %63, !dbg !3403
  store double %61, double* %65, align 8, !dbg !3404
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !3405
  %67 = load double, double* %66, align 8, !dbg !3405
  %68 = load i32, i32* %12, align 4, !dbg !3406
  %69 = sext i32 %68 to i64, !dbg !3407
  %70 = load double*, double** %16, align 8, !dbg !3407
  %71 = getelementptr inbounds double, double* %70, i64 %69, !dbg !3407
  store double %67, double* %71, align 8, !dbg !3408
  %72 = load i32, i32* %12, align 4, !dbg !3409
  %73 = sub nsw i32 %72, 1, !dbg !3411
  store i32 %73, i32* %31, align 4, !dbg !3412
  br label %74, !dbg !3413

; <label>:74:                                     ; preds = %115, %10
  %75 = load i32, i32* %31, align 4, !dbg !3414
  %76 = icmp sge i32 %75, 0, !dbg !3417
  br i1 %76, label %77, label %118, !dbg !3418

; <label>:77:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata double* %34, metadata !3419, metadata !60), !dbg !3421
  %78 = load double, double* %13, align 8, !dbg !3422
  %79 = load double, double* %30, align 8, !dbg !3423
  %80 = fdiv double %78, %79, !dbg !3424
  store double %80, double* %34, align 8, !dbg !3421
  call void @llvm.dbg.declare(metadata double* %35, metadata !3425, metadata !60), !dbg !3426
  %81 = load double, double* %34, align 8, !dbg !3427
  %82 = call double @hypot(double 1.000000e+00, double %81) #6, !dbg !3428
  store double %82, double* %35, align 8, !dbg !3426
  call void @llvm.dbg.declare(metadata double* %36, metadata !3429, metadata !60), !dbg !3430
  %83 = load double, double* %34, align 8, !dbg !3431
  %84 = load double, double* %30, align 8, !dbg !3432
  %85 = load double, double* %21, align 8, !dbg !3433
  %86 = fmul double %84, %85, !dbg !3434
  %87 = fadd double %83, %86, !dbg !3435
  store double %87, double* %36, align 8, !dbg !3430
  call void @llvm.dbg.declare(metadata double* %37, metadata !3436, metadata !60), !dbg !3437
  %88 = load double, double* %28, align 8, !dbg !3438
  %89 = load double, double* %36, align 8, !dbg !3439
  %90 = fmul double %88, %89, !dbg !3440
  %91 = load double, double* %29, align 8, !dbg !3441
  %92 = fadd double %90, %91, !dbg !3442
  %93 = load double, double* %35, align 8, !dbg !3443
  %94 = fdiv double %92, %93, !dbg !3444
  store double %94, double* %37, align 8, !dbg !3445
  %95 = load double, double* %37, align 8, !dbg !3446
  %96 = load i32, i32* %31, align 4, !dbg !3447
  %97 = sext i32 %96 to i64, !dbg !3448
  %98 = load double*, double** %15, align 8, !dbg !3448
  %99 = getelementptr inbounds double, double* %98, i64 %97, !dbg !3448
  store double %95, double* %99, align 8, !dbg !3449
  %100 = load double, double* %37, align 8, !dbg !3450
  %101 = load double, double* %36, align 8, !dbg !3451
  %102 = fmul double %100, %101, !dbg !3452
  %103 = load double, double* %28, align 8, !dbg !3453
  %104 = load double, double* %35, align 8, !dbg !3454
  %105 = fmul double %103, %104, !dbg !3455
  %106 = fsub double %102, %105, !dbg !3456
  store double %106, double* %29, align 8, !dbg !3457
  %107 = load double, double* %29, align 8, !dbg !3458
  %108 = load i32, i32* %31, align 4, !dbg !3459
  %109 = sext i32 %108 to i64, !dbg !3460
  %110 = load double*, double** %16, align 8, !dbg !3460
  %111 = getelementptr inbounds double, double* %110, i64 %109, !dbg !3460
  store double %107, double* %111, align 8, !dbg !3461
  %112 = load double, double* %37, align 8, !dbg !3462
  store double %112, double* %28, align 8, !dbg !3463
  %113 = load double, double* %30, align 8, !dbg !3464
  %114 = fsub double %113, 1.000000e+00, !dbg !3464
  store double %114, double* %30, align 8, !dbg !3464
  br label %115, !dbg !3465

; <label>:115:                                    ; preds = %77
  %116 = load i32, i32* %31, align 4, !dbg !3466
  %117 = add nsw i32 %116, -1, !dbg !3466
  store i32 %117, i32* %31, align 4, !dbg !3466
  br label %74, !dbg !3468, !llvm.loop !3469

; <label>:118:                                    ; preds = %74
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !3471
  %120 = load double, double* %119, align 8, !dbg !3471
  store double %120, double* %32, align 8, !dbg !3472
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !3473
  %122 = load double, double* %121, align 8, !dbg !3473
  store double %122, double* %33, align 8, !dbg !3474
  %123 = load double, double* %11, align 8, !dbg !3475
  %124 = fadd double %123, 1.000000e+00, !dbg !3476
  store double %124, double* %30, align 8, !dbg !3477
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !3478
  %126 = load double, double* %125, align 8, !dbg !3478
  %127 = load double*, double** %17, align 8, !dbg !3479
  %128 = getelementptr inbounds double, double* %127, i64 0, !dbg !3479
  store double %126, double* %128, align 8, !dbg !3480
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !3481
  %130 = load double, double* %129, align 8, !dbg !3481
  %131 = load double*, double** %18, align 8, !dbg !3482
  %132 = getelementptr inbounds double, double* %131, i64 0, !dbg !3482
  store double %130, double* %132, align 8, !dbg !3483
  store i32 1, i32* %31, align 4, !dbg !3484
  br label %133, !dbg !3486

; <label>:133:                                    ; preds = %175, %118
  %134 = load i32, i32* %31, align 4, !dbg !3487
  %135 = load i32, i32* %12, align 4, !dbg !3490
  %136 = icmp sle i32 %134, %135, !dbg !3491
  br i1 %136, label %137, label %178, !dbg !3492

; <label>:137:                                    ; preds = %133
  call void @llvm.dbg.declare(metadata double* %38, metadata !3493, metadata !60), !dbg !3495
  %138 = load double, double* %13, align 8, !dbg !3496
  %139 = load double, double* %30, align 8, !dbg !3497
  %140 = fdiv double %138, %139, !dbg !3498
  store double %140, double* %38, align 8, !dbg !3495
  call void @llvm.dbg.declare(metadata double* %39, metadata !3499, metadata !60), !dbg !3500
  %141 = load double, double* %38, align 8, !dbg !3501
  %142 = call double @hypot(double 1.000000e+00, double %141) #6, !dbg !3502
  store double %142, double* %39, align 8, !dbg !3500
  call void @llvm.dbg.declare(metadata double* %40, metadata !3503, metadata !60), !dbg !3504
  %143 = load double, double* %38, align 8, !dbg !3505
  %144 = load double, double* %30, align 8, !dbg !3506
  %145 = load double, double* %21, align 8, !dbg !3507
  %146 = fmul double %144, %145, !dbg !3508
  %147 = fadd double %143, %146, !dbg !3509
  store double %147, double* %40, align 8, !dbg !3504
  call void @llvm.dbg.declare(metadata double* %41, metadata !3510, metadata !60), !dbg !3511
  %148 = load double, double* %40, align 8, !dbg !3512
  %149 = load double, double* %32, align 8, !dbg !3513
  %150 = fmul double %148, %149, !dbg !3514
  %151 = load double, double* %33, align 8, !dbg !3515
  %152 = fsub double %150, %151, !dbg !3516
  %153 = load double, double* %39, align 8, !dbg !3517
  %154 = fdiv double %152, %153, !dbg !3518
  store double %154, double* %41, align 8, !dbg !3511
  %155 = load double, double* %41, align 8, !dbg !3519
  %156 = load i32, i32* %31, align 4, !dbg !3520
  %157 = sext i32 %156 to i64, !dbg !3521
  %158 = load double*, double** %17, align 8, !dbg !3521
  %159 = getelementptr inbounds double, double* %158, i64 %157, !dbg !3521
  store double %155, double* %159, align 8, !dbg !3522
  %160 = load double, double* %39, align 8, !dbg !3523
  %161 = load double, double* %32, align 8, !dbg !3524
  %162 = fmul double %160, %161, !dbg !3525
  %163 = load double, double* %40, align 8, !dbg !3526
  %164 = load double, double* %41, align 8, !dbg !3527
  %165 = fmul double %163, %164, !dbg !3528
  %166 = fsub double %162, %165, !dbg !3529
  store double %166, double* %33, align 8, !dbg !3530
  %167 = load double, double* %33, align 8, !dbg !3531
  %168 = load i32, i32* %31, align 4, !dbg !3532
  %169 = sext i32 %168 to i64, !dbg !3533
  %170 = load double*, double** %18, align 8, !dbg !3533
  %171 = getelementptr inbounds double, double* %170, i64 %169, !dbg !3533
  store double %167, double* %171, align 8, !dbg !3534
  %172 = load double, double* %41, align 8, !dbg !3535
  store double %172, double* %32, align 8, !dbg !3536
  %173 = load double, double* %30, align 8, !dbg !3537
  %174 = fadd double %173, 1.000000e+00, !dbg !3537
  store double %174, double* %30, align 8, !dbg !3537
  br label %175, !dbg !3538

; <label>:175:                                    ; preds = %137
  %176 = load i32, i32* %31, align 4, !dbg !3539
  %177 = add nsw i32 %176, 1, !dbg !3539
  store i32 %177, i32* %31, align 4, !dbg !3539
  br label %133, !dbg !3541, !llvm.loop !3542

; <label>:178:                                    ; preds = %133
  %179 = load i32, i32* %27, align 4, !dbg !3544
  ret i32 %179, !dbg !3545
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coulomb_wave_sphF_array(double, i32, double, double, double*, double*) #0 !dbg !3546 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3547, metadata !60), !dbg !3548
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3549, metadata !60), !dbg !3550
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !3551, metadata !60), !dbg !3552
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !3553, metadata !60), !dbg !3554
  store double* %4, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !3555, metadata !60), !dbg !3556
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !3557, metadata !60), !dbg !3558
  %17 = load double, double* %11, align 8, !dbg !3559
  %18 = fcmp olt double %17, 0.000000e+00, !dbg !3561
  br i1 %18, label %22, label %19, !dbg !3562

; <label>:19:                                     ; preds = %6
  %20 = load double, double* %8, align 8, !dbg !3563
  %21 = fcmp olt double %20, -5.000000e-01, !dbg !3565
  br i1 %21, label %22, label %25, !dbg !3566

; <label>:22:                                     ; preds = %19, %6
  br label %23, !dbg !3567, !llvm.loop !3569

; <label>:23:                                     ; preds = %22
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1387, i32 1), !dbg !3570
  store i32 1, i32* %7, align 4, !dbg !3570
  br label %89, !dbg !3570
                                                  ; No predecessors!
  br label %89, !dbg !3573

; <label>:25:                                     ; preds = %19
  %26 = load double, double* %11, align 8, !dbg !3574
  %27 = fcmp olt double %26, 0x24000000000001, !dbg !3576
  br i1 %27, label %28, label %59, !dbg !3577

; <label>:28:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3578, metadata !60), !dbg !3580
  store i32 0, i32* %14, align 4, !dbg !3581
  br label %29, !dbg !3583

; <label>:29:                                     ; preds = %38, %28
  %30 = load i32, i32* %14, align 4, !dbg !3584
  %31 = load i32, i32* %9, align 4, !dbg !3587
  %32 = icmp sle i32 %30, %31, !dbg !3588
  br i1 %32, label %33, label %41, !dbg !3589

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %14, align 4, !dbg !3590
  %35 = sext i32 %34 to i64, !dbg !3592
  %36 = load double*, double** %12, align 8, !dbg !3592
  %37 = getelementptr inbounds double, double* %36, i64 %35, !dbg !3592
  store double 0.000000e+00, double* %37, align 8, !dbg !3593
  br label %38, !dbg !3594

; <label>:38:                                     ; preds = %33
  %39 = load i32, i32* %14, align 4, !dbg !3595
  %40 = add nsw i32 %39, 1, !dbg !3595
  store i32 %40, i32* %14, align 4, !dbg !3595
  br label %29, !dbg !3597, !llvm.loop !3598

; <label>:41:                                     ; preds = %29
  %42 = load double, double* %8, align 8, !dbg !3600
  %43 = fcmp oeq double %42, 0.000000e+00, !dbg !3602
  br i1 %43, label %44, label %50, !dbg !3603

; <label>:44:                                     ; preds = %41
  %45 = load double, double* %10, align 8, !dbg !3604
  %46 = call double @C0sq(double %45), !dbg !3606
  %47 = call double @sqrt(double %46) #6, !dbg !3607
  %48 = load double*, double** %12, align 8, !dbg !3609
  %49 = getelementptr inbounds double, double* %48, i64 0, !dbg !3609
  store double %47, double* %49, align 8, !dbg !3610
  br label %50, !dbg !3611

; <label>:50:                                     ; preds = %44, %41
  %51 = load double*, double** %13, align 8, !dbg !3612
  store double 0.000000e+00, double* %51, align 8, !dbg !3613
  %52 = load double, double* %11, align 8, !dbg !3614
  %53 = fcmp oeq double %52, 0.000000e+00, !dbg !3616
  br i1 %53, label %54, label %55, !dbg !3617

; <label>:54:                                     ; preds = %50
  store i32 0, i32* %7, align 4, !dbg !3618
  br label %89, !dbg !3618

; <label>:55:                                     ; preds = %50
  br label %56, !dbg !3619, !llvm.loop !3620

; <label>:56:                                     ; preds = %55
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1401, i32 15), !dbg !3621
  store i32 15, i32* %7, align 4, !dbg !3621
  br label %89, !dbg !3621
                                                  ; No predecessors!
  br label %58

; <label>:58:                                     ; preds = %57
  br label %88, !dbg !3624

; <label>:59:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3625, metadata !60), !dbg !3627
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3628, metadata !60), !dbg !3629
  %60 = load double, double* %8, align 8, !dbg !3630
  %61 = load i32, i32* %9, align 4, !dbg !3631
  %62 = load double, double* %10, align 8, !dbg !3632
  %63 = load double, double* %11, align 8, !dbg !3633
  %64 = load double*, double** %12, align 8, !dbg !3634
  %65 = load double*, double** %13, align 8, !dbg !3635
  %66 = call i32 @gsl_sf_coulomb_wave_F_array(double %60, i32 %61, double %62, double %63, double* %64, double* %65), !dbg !3636
  store i32 %66, i32* %16, align 4, !dbg !3629
  store i32 0, i32* %15, align 4, !dbg !3637
  br label %67, !dbg !3639

; <label>:67:                                     ; preds = %83, %59
  %68 = load i32, i32* %15, align 4, !dbg !3640
  %69 = load i32, i32* %9, align 4, !dbg !3643
  %70 = icmp sle i32 %68, %69, !dbg !3644
  br i1 %70, label %71, label %86, !dbg !3645

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %15, align 4, !dbg !3646
  %73 = sext i32 %72 to i64, !dbg !3648
  %74 = load double*, double** %12, align 8, !dbg !3648
  %75 = getelementptr inbounds double, double* %74, i64 %73, !dbg !3648
  %76 = load double, double* %75, align 8, !dbg !3648
  %77 = load double, double* %11, align 8, !dbg !3649
  %78 = fdiv double %76, %77, !dbg !3650
  %79 = load i32, i32* %15, align 4, !dbg !3651
  %80 = sext i32 %79 to i64, !dbg !3652
  %81 = load double*, double** %12, align 8, !dbg !3652
  %82 = getelementptr inbounds double, double* %81, i64 %80, !dbg !3652
  store double %78, double* %82, align 8, !dbg !3653
  br label %83, !dbg !3654

; <label>:83:                                     ; preds = %71
  %84 = load i32, i32* %15, align 4, !dbg !3655
  %85 = add nsw i32 %84, 1, !dbg !3655
  store i32 %85, i32* %15, align 4, !dbg !3655
  br label %67, !dbg !3657, !llvm.loop !3658

; <label>:86:                                     ; preds = %67
  %87 = load i32, i32* %16, align 4, !dbg !3660
  store i32 %87, i32* %7, align 4, !dbg !3661
  br label %89, !dbg !3661

; <label>:88:                                     ; preds = %58
  br label %89

; <label>:89:                                     ; preds = %23, %54, %56, %86, %88, %24
  %90 = load i32, i32* %7, align 4, !dbg !3662
  ret i32 %90, !dbg !3662
}

declare i32 @gsl_sf_expm1_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lngamma_complex_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_psi_1piy_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind uwtable
define internal i32 @coulomb_connection(double, double, double*, double*) #0 !dbg !3663 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3666, metadata !60), !dbg !3667
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3668, metadata !60), !dbg !3669
  store double* %2, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !3670, metadata !60), !dbg !3671
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !3672, metadata !60), !dbg !3673
  %15 = load double, double* %7, align 8, !dbg !3674
  %16 = fcmp ogt double %15, 0x40915EFC686FD866, !dbg !3676
  br i1 %16, label %17, label %22, !dbg !3677

; <label>:17:                                     ; preds = %4
  %18 = load double*, double** %8, align 8, !dbg !3678
  store double 1.000000e+00, double* %18, align 8, !dbg !3680
  %19 = load double*, double** %9, align 8, !dbg !3681
  store double 0.000000e+00, double* %19, align 8, !dbg !3682
  br label %20, !dbg !3683, !llvm.loop !3684

; <label>:20:                                     ; preds = %17
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 242, i32 15), !dbg !3685
  store i32 15, i32* %5, align 4, !dbg !3685
  br label %71, !dbg !3685
                                                  ; No predecessors!
  br label %71, !dbg !3688

; <label>:22:                                     ; preds = %4
  %23 = load double, double* %7, align 8, !dbg !3689
  %24 = fcmp ogt double %23, 0x4006F233C496DA5E, !dbg !3691
  br i1 %24, label %25, label %50, !dbg !3692

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata double* %10, metadata !3693, metadata !60), !dbg !3695
  %26 = load double, double* %7, align 8, !dbg !3696
  %27 = fmul double 0xC01921FB54442D18, %26, !dbg !3697
  %28 = call double @exp(double %27) #6, !dbg !3698
  %29 = fmul double 2.000000e+00, %28, !dbg !3699
  store double %29, double* %10, align 8, !dbg !3695
  call void @llvm.dbg.declare(metadata double* %11, metadata !3700, metadata !60), !dbg !3701
  %30 = load double, double* %6, align 8, !dbg !3702
  %31 = fmul double 0x400921FB54442D18, %30, !dbg !3703
  %32 = call double @tan(double %31) #6, !dbg !3704
  store double %32, double* %11, align 8, !dbg !3701
  call void @llvm.dbg.declare(metadata double* %12, metadata !3705, metadata !60), !dbg !3706
  %33 = load double, double* %10, align 8, !dbg !3707
  %34 = load double, double* %11, align 8, !dbg !3708
  %35 = fmul double %33, %34, !dbg !3709
  %36 = load double, double* %11, align 8, !dbg !3710
  %37 = load double, double* %11, align 8, !dbg !3711
  %38 = fmul double %36, %37, !dbg !3712
  %39 = fadd double %38, 1.000000e+00, !dbg !3713
  %40 = fdiv double %35, %39, !dbg !3714
  store double %40, double* %12, align 8, !dbg !3706
  %41 = load double, double* %12, align 8, !dbg !3715
  %42 = fmul double 5.000000e-01, %41, !dbg !3716
  %43 = load double, double* %12, align 8, !dbg !3717
  %44 = fmul double %42, %43, !dbg !3718
  %45 = fadd double -1.000000e+00, %44, !dbg !3719
  %46 = load double*, double** %8, align 8, !dbg !3720
  store double %45, double* %46, align 8, !dbg !3721
  %47 = load double, double* %12, align 8, !dbg !3722
  %48 = fsub double -0.000000e+00, %47, !dbg !3723
  %49 = load double*, double** %9, align 8, !dbg !3724
  store double %48, double* %49, align 8, !dbg !3725
  store i32 0, i32* %5, align 4, !dbg !3726
  br label %71, !dbg !3726

; <label>:50:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata double* %13, metadata !3727, metadata !60), !dbg !3729
  %51 = load double, double* %7, align 8, !dbg !3730
  %52 = fmul double 0x400921FB54442D18, %51, !dbg !3731
  %53 = call double @tanh(double %52) #6, !dbg !3732
  %54 = load double, double* %6, align 8, !dbg !3733
  %55 = fmul double 0x400921FB54442D18, %54, !dbg !3734
  %56 = call double @tan(double %55) #6, !dbg !3735
  %57 = fdiv double %53, %56, !dbg !3737
  store double %57, double* %13, align 8, !dbg !3729
  call void @llvm.dbg.declare(metadata double* %14, metadata !3738, metadata !60), !dbg !3739
  %58 = load double, double* %13, align 8, !dbg !3740
  %59 = call double @atan(double %58) #6, !dbg !3741
  %60 = fsub double -0.000000e+00, %59, !dbg !3742
  %61 = load double, double* %6, align 8, !dbg !3743
  %62 = fadd double %61, 5.000000e-01, !dbg !3744
  %63 = fmul double %62, 0x400921FB54442D18, !dbg !3745
  %64 = fsub double %60, %63, !dbg !3746
  store double %64, double* %14, align 8, !dbg !3739
  %65 = load double, double* %14, align 8, !dbg !3747
  %66 = call double @cos(double %65) #6, !dbg !3748
  %67 = load double*, double** %8, align 8, !dbg !3749
  store double %66, double* %67, align 8, !dbg !3750
  %68 = load double, double* %14, align 8, !dbg !3751
  %69 = call double @sin(double %68) #6, !dbg !3752
  %70 = load double*, double** %9, align 8, !dbg !3753
  store double %69, double* %70, align 8, !dbg !3754
  store i32 0, i32* %5, align 4, !dbg !3755
  br label %71, !dbg !3755

; <label>:71:                                     ; preds = %20, %25, %50, %21
  %72 = load i32, i32* %5, align 4, !dbg !3756
  ret i32 %72, !dbg !3756
}

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind
declare double @tan(double) #4

; Function Attrs: nounwind
declare double @tanh(double) #4

; Function Attrs: nounwind
declare double @atan(double) #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare double @atan2(double, double) #4

declare i32 @gsl_sf_airy_Ai_scaled_e(double, i32, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_airy_Bi_scaled_e(double, i32, %struct.gsl_sf_result_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "coulomb.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42}
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"PIC Level", i32 2}
!46 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!47 = distinct !DISubprogram(name: "gsl_sf_coulomb_CL_e", scope: !1, file: !1, line: 105, type: !48, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!48 = !DISubroutineType(types: !49)
!49 = !{!42, !50, !50, !51}
!50 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !50, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !50, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "lam", arg: 1, scope: !47, file: !1, line: 105, type: !50)
!60 = !DIExpression()
!61 = !DILocation(line: 105, column: 28, scope: !47)
!62 = !DILocalVariable(name: "eta", arg: 2, scope: !47, file: !1, line: 105, type: !50)
!63 = !DILocation(line: 105, column: 40, scope: !47)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !47, file: !1, line: 105, type: !51)
!65 = !DILocation(line: 105, column: 61, scope: !47)
!66 = !DILocation(line: 109, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !47, file: !1, line: 109, column: 6)
!68 = !DILocation(line: 109, column: 10, scope: !67)
!69 = !DILocation(line: 109, column: 6, scope: !47)
!70 = !DILocation(line: 110, column: 5, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 109, column: 19)
!72 = distinct !{!72, !70}
!73 = !DILocation(line: 110, column: 5, scope: !74)
!74 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 1)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 110, column: 5)
!76 = distinct !{!76, !77}
!77 = !DILocation(line: 110, column: 5, scope: !75)
!78 = !DILocation(line: 110, column: 5, scope: !79)
!79 = !DILexicalBlockFile(scope: !80, file: !1, discriminator: 2)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 110, column: 5)
!81 = !DILocation(line: 110, column: 5, scope: !82)
!82 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 3)
!83 = !DILocation(line: 111, column: 3, scope: !71)
!84 = !DILocation(line: 112, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !67, file: !1, line: 112, column: 11)
!86 = !DILocation(line: 112, column: 11, scope: !85)
!87 = !DILocation(line: 112, column: 21, scope: !85)
!88 = !DILocation(line: 112, column: 11, scope: !67)
!89 = !DILocation(line: 114, column: 29, scope: !90)
!90 = distinct !DILexicalBlock(scope: !85, file: !1, line: 112, column: 40)
!91 = !DILocation(line: 114, column: 24, scope: !90)
!92 = !DILocation(line: 114, column: 19, scope: !93)
!93 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 1)
!94 = !DILocation(line: 114, column: 5, scope: !90)
!95 = !DILocation(line: 114, column: 13, scope: !90)
!96 = !DILocation(line: 114, column: 17, scope: !90)
!97 = !DILocation(line: 115, column: 43, scope: !90)
!98 = !DILocation(line: 115, column: 51, scope: !90)
!99 = !DILocation(line: 115, column: 41, scope: !90)
!100 = !DILocation(line: 115, column: 5, scope: !90)
!101 = !DILocation(line: 115, column: 13, scope: !90)
!102 = !DILocation(line: 115, column: 17, scope: !90)
!103 = !DILocation(line: 116, column: 5, scope: !90)
!104 = !DILocation(line: 119, column: 18, scope: !105)
!105 = distinct !DILexicalBlock(scope: !85, file: !1, line: 118, column: 8)
!106 = !DILocation(line: 119, column: 23, scope: !105)
!107 = !DILocation(line: 119, column: 28, scope: !105)
!108 = !DILocation(line: 119, column: 12, scope: !105)
!109 = !DILocation(line: 119, column: 5, scope: !105)
!110 = !DILocation(line: 121, column: 1, scope: !47)
!111 = distinct !DISubprogram(name: "C0sq", scope: !1, file: !1, line: 50, type: !112, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!112 = !DISubroutineType(types: !113)
!113 = !{!50, !50}
!114 = !DILocalVariable(name: "eta", arg: 1, scope: !111, file: !1, line: 50, type: !50)
!115 = !DILocation(line: 50, column: 13, scope: !111)
!116 = !DILocalVariable(name: "twopieta", scope: !111, file: !1, line: 52, type: !50)
!117 = !DILocation(line: 52, column: 10, scope: !111)
!118 = !DILocation(line: 52, column: 30, scope: !111)
!119 = !DILocation(line: 52, column: 29, scope: !111)
!120 = !DILocation(line: 54, column: 11, scope: !121)
!121 = distinct !DILexicalBlock(scope: !111, file: !1, line: 54, column: 6)
!122 = !DILocation(line: 54, column: 6, scope: !121)
!123 = !DILocation(line: 54, column: 16, scope: !121)
!124 = !DILocation(line: 54, column: 6, scope: !111)
!125 = !DILocation(line: 55, column: 5, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 54, column: 35)
!127 = !DILocation(line: 57, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !1, line: 57, column: 11)
!129 = !DILocation(line: 57, column: 20, scope: !128)
!130 = !DILocation(line: 57, column: 11, scope: !121)
!131 = !DILocation(line: 58, column: 5, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 57, column: 39)
!133 = !DILocalVariable(name: "scale", scope: !134, file: !1, line: 61, type: !52)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 60, column: 8)
!135 = !DILocation(line: 61, column: 19, scope: !134)
!136 = !DILocation(line: 62, column: 20, scope: !134)
!137 = !DILocation(line: 62, column: 5, scope: !134)
!138 = !DILocation(line: 63, column: 12, scope: !134)
!139 = !DILocation(line: 63, column: 27, scope: !134)
!140 = !DILocation(line: 63, column: 20, scope: !134)
!141 = !DILocation(line: 63, column: 5, scope: !134)
!142 = !DILocation(line: 65, column: 1, scope: !111)
!143 = distinct !DISubprogram(name: "CLeta", scope: !1, file: !1, line: 79, type: !48, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!144 = !DILocalVariable(name: "L", arg: 1, scope: !143, file: !1, line: 79, type: !50)
!145 = !DILocation(line: 79, column: 14, scope: !143)
!146 = !DILocalVariable(name: "eta", arg: 2, scope: !143, file: !1, line: 79, type: !50)
!147 = !DILocation(line: 79, column: 24, scope: !143)
!148 = !DILocalVariable(name: "result", arg: 3, scope: !143, file: !1, line: 79, type: !51)
!149 = !DILocation(line: 79, column: 45, scope: !143)
!150 = !DILocalVariable(name: "ln1", scope: !143, file: !1, line: 81, type: !52)
!151 = !DILocation(line: 81, column: 17, scope: !143)
!152 = !DILocalVariable(name: "ln2", scope: !143, file: !1, line: 82, type: !52)
!153 = !DILocation(line: 82, column: 17, scope: !143)
!154 = !DILocalVariable(name: "sgn", scope: !143, file: !1, line: 83, type: !50)
!155 = !DILocation(line: 83, column: 10, scope: !143)
!156 = !DILocalVariable(name: "arg_val", scope: !143, file: !1, line: 84, type: !50)
!157 = !DILocation(line: 84, column: 10, scope: !143)
!158 = !DILocalVariable(name: "arg_err", scope: !143, file: !1, line: 84, type: !50)
!159 = !DILocation(line: 84, column: 19, scope: !143)
!160 = !DILocation(line: 86, column: 11, scope: !161)
!161 = distinct !DILexicalBlock(scope: !143, file: !1, line: 86, column: 6)
!162 = !DILocation(line: 86, column: 16, scope: !161)
!163 = !DILocation(line: 86, column: 17, scope: !161)
!164 = !DILocation(line: 86, column: 14, scope: !161)
!165 = !DILocation(line: 86, column: 6, scope: !161)
!166 = !DILocation(line: 86, column: 24, scope: !161)
!167 = !DILocation(line: 86, column: 6, scope: !143)
!168 = !DILocation(line: 87, column: 22, scope: !169)
!169 = distinct !DILexicalBlock(scope: !161, file: !1, line: 86, column: 43)
!170 = !DILocation(line: 87, column: 23, scope: !169)
!171 = !DILocation(line: 87, column: 5, scope: !169)
!172 = !DILocation(line: 88, column: 3, scope: !169)
!173 = !DILocalVariable(name: "p1", scope: !174, file: !1, line: 90, type: !52)
!174 = distinct !DILexicalBlock(scope: !161, file: !1, line: 89, column: 8)
!175 = !DILocation(line: 90, column: 19, scope: !174)
!176 = !DILocation(line: 91, column: 30, scope: !174)
!177 = !DILocation(line: 91, column: 31, scope: !174)
!178 = !DILocation(line: 91, column: 37, scope: !174)
!179 = !DILocation(line: 91, column: 5, scope: !174)
!180 = !DILocation(line: 94, column: 25, scope: !143)
!181 = !DILocation(line: 94, column: 26, scope: !143)
!182 = !DILocation(line: 94, column: 23, scope: !143)
!183 = !DILocation(line: 94, column: 3, scope: !143)
!184 = !DILocation(line: 95, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !143, file: !1, line: 95, column: 6)
!186 = !DILocation(line: 95, column: 8, scope: !185)
!187 = !DILocation(line: 95, column: 6, scope: !143)
!188 = !DILocation(line: 95, column: 23, scope: !189)
!189 = !DILexicalBlockFile(scope: !185, file: !1, discriminator: 1)
!190 = !DILocation(line: 95, column: 22, scope: !189)
!191 = !DILocation(line: 95, column: 20, scope: !189)
!192 = !DILocation(line: 95, column: 16, scope: !189)
!193 = !DILocation(line: 97, column: 14, scope: !143)
!194 = !DILocation(line: 97, column: 15, scope: !143)
!195 = !DILocation(line: 97, column: 28, scope: !143)
!196 = !DILocation(line: 97, column: 27, scope: !143)
!197 = !DILocation(line: 97, column: 31, scope: !143)
!198 = !DILocation(line: 97, column: 22, scope: !143)
!199 = !DILocation(line: 97, column: 43, scope: !143)
!200 = !DILocation(line: 97, column: 37, scope: !143)
!201 = !DILocation(line: 97, column: 53, scope: !143)
!202 = !DILocation(line: 97, column: 47, scope: !143)
!203 = !DILocation(line: 97, column: 12, scope: !143)
!204 = !DILocation(line: 98, column: 18, scope: !143)
!205 = !DILocation(line: 98, column: 28, scope: !143)
!206 = !DILocation(line: 98, column: 22, scope: !143)
!207 = !DILocation(line: 98, column: 12, scope: !143)
!208 = !DILocation(line: 99, column: 38, scope: !143)
!209 = !DILocation(line: 99, column: 39, scope: !143)
!210 = !DILocation(line: 99, column: 33, scope: !143)
!211 = !DILocation(line: 99, column: 58, scope: !143)
!212 = !DILocation(line: 99, column: 57, scope: !143)
!213 = !DILocation(line: 99, column: 61, scope: !143)
!214 = !DILocation(line: 99, column: 49, scope: !215)
!215 = !DILexicalBlockFile(scope: !143, file: !1, discriminator: 1)
!216 = !DILocation(line: 99, column: 47, scope: !143)
!217 = !DILocation(line: 99, column: 30, scope: !143)
!218 = !DILocation(line: 99, column: 11, scope: !143)
!219 = !DILocation(line: 100, column: 27, scope: !143)
!220 = !DILocation(line: 100, column: 36, scope: !143)
!221 = !DILocation(line: 100, column: 45, scope: !143)
!222 = !DILocation(line: 100, column: 10, scope: !143)
!223 = !DILocation(line: 100, column: 3, scope: !143)
!224 = distinct !DISubprogram(name: "gsl_sf_coulomb_CL_array", scope: !1, file: !1, line: 127, type: !225, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!225 = !DISubroutineType(types: !226)
!226 = !{!42, !50, !42, !50, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!228 = !DILocalVariable(name: "lam_min", arg: 1, scope: !224, file: !1, line: 127, type: !50)
!229 = !DILocation(line: 127, column: 32, scope: !224)
!230 = !DILocalVariable(name: "kmax", arg: 2, scope: !224, file: !1, line: 127, type: !42)
!231 = !DILocation(line: 127, column: 45, scope: !224)
!232 = !DILocalVariable(name: "eta", arg: 3, scope: !224, file: !1, line: 127, type: !50)
!233 = !DILocation(line: 127, column: 58, scope: !224)
!234 = !DILocalVariable(name: "cl", arg: 4, scope: !224, file: !1, line: 127, type: !227)
!235 = !DILocation(line: 127, column: 72, scope: !224)
!236 = !DILocalVariable(name: "k", scope: !224, file: !1, line: 129, type: !42)
!237 = !DILocation(line: 129, column: 7, scope: !224)
!238 = !DILocalVariable(name: "cl_0", scope: !224, file: !1, line: 130, type: !52)
!239 = !DILocation(line: 130, column: 17, scope: !224)
!240 = !DILocation(line: 131, column: 23, scope: !224)
!241 = !DILocation(line: 131, column: 32, scope: !224)
!242 = !DILocation(line: 131, column: 3, scope: !224)
!243 = !DILocation(line: 132, column: 16, scope: !224)
!244 = !DILocation(line: 132, column: 3, scope: !224)
!245 = !DILocation(line: 132, column: 9, scope: !224)
!246 = !DILocation(line: 134, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !224, file: !1, line: 134, column: 3)
!248 = !DILocation(line: 134, column: 7, scope: !247)
!249 = !DILocation(line: 134, column: 12, scope: !250)
!250 = !DILexicalBlockFile(scope: !251, file: !1, discriminator: 1)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 134, column: 3)
!252 = !DILocation(line: 134, column: 15, scope: !250)
!253 = !DILocation(line: 134, column: 13, scope: !250)
!254 = !DILocation(line: 134, column: 3, scope: !250)
!255 = !DILocalVariable(name: "L", scope: !256, file: !1, line: 135, type: !50)
!256 = distinct !DILexicalBlock(scope: !251, file: !1, line: 134, column: 26)
!257 = !DILocation(line: 135, column: 12, scope: !256)
!258 = !DILocation(line: 135, column: 16, scope: !256)
!259 = !DILocation(line: 135, column: 26, scope: !256)
!260 = !DILocation(line: 135, column: 24, scope: !256)
!261 = !DILocation(line: 136, column: 16, scope: !256)
!262 = !DILocation(line: 136, column: 17, scope: !256)
!263 = !DILocation(line: 136, column: 13, scope: !256)
!264 = !DILocation(line: 136, column: 29, scope: !256)
!265 = !DILocation(line: 136, column: 32, scope: !256)
!266 = !DILocation(line: 136, column: 23, scope: !256)
!267 = !DILocation(line: 136, column: 21, scope: !256)
!268 = !DILocation(line: 136, column: 38, scope: !256)
!269 = !DILocation(line: 136, column: 45, scope: !256)
!270 = !DILocation(line: 136, column: 44, scope: !256)
!271 = !DILocation(line: 136, column: 46, scope: !256)
!272 = !DILocation(line: 136, column: 39, scope: !256)
!273 = !DILocation(line: 136, column: 36, scope: !256)
!274 = !DILocation(line: 136, column: 8, scope: !256)
!275 = !DILocation(line: 136, column: 5, scope: !256)
!276 = !DILocation(line: 136, column: 11, scope: !256)
!277 = !DILocation(line: 137, column: 3, scope: !256)
!278 = !DILocation(line: 134, column: 22, scope: !279)
!279 = !DILexicalBlockFile(scope: !251, file: !1, discriminator: 2)
!280 = !DILocation(line: 134, column: 3, scope: !279)
!281 = distinct !{!281, !282}
!282 = !DILocation(line: 134, column: 3, scope: !224)
!283 = !DILocation(line: 139, column: 3, scope: !224)
!284 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_FG_e", scope: !1, file: !1, line: 896, type: !285, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!285 = !DISubroutineType(types: !286)
!286 = !{!42, !287, !287, !287, !288, !51, !51, !51, !51, !227, !227}
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!289 = !DILocalVariable(name: "eta", arg: 1, scope: !284, file: !1, line: 896, type: !287)
!290 = !DILocation(line: 896, column: 39, scope: !284)
!291 = !DILocalVariable(name: "x", arg: 2, scope: !284, file: !1, line: 896, type: !287)
!292 = !DILocation(line: 896, column: 57, scope: !284)
!293 = !DILocalVariable(name: "lam_F", arg: 3, scope: !284, file: !1, line: 897, type: !287)
!294 = !DILocation(line: 897, column: 42, scope: !284)
!295 = !DILocalVariable(name: "k_lam_G", arg: 4, scope: !284, file: !1, line: 898, type: !288)
!296 = !DILocation(line: 898, column: 40, scope: !284)
!297 = !DILocalVariable(name: "F", arg: 5, scope: !284, file: !1, line: 899, type: !51)
!298 = !DILocation(line: 899, column: 45, scope: !284)
!299 = !DILocalVariable(name: "Fp", arg: 6, scope: !284, file: !1, line: 899, type: !51)
!300 = !DILocation(line: 899, column: 64, scope: !284)
!301 = !DILocalVariable(name: "G", arg: 7, scope: !284, file: !1, line: 900, type: !51)
!302 = !DILocation(line: 900, column: 45, scope: !284)
!303 = !DILocalVariable(name: "Gp", arg: 8, scope: !284, file: !1, line: 900, type: !51)
!304 = !DILocation(line: 900, column: 64, scope: !284)
!305 = !DILocalVariable(name: "exp_F", arg: 9, scope: !284, file: !1, line: 901, type: !227)
!306 = !DILocation(line: 901, column: 38, scope: !284)
!307 = !DILocalVariable(name: "exp_G", arg: 10, scope: !284, file: !1, line: 901, type: !227)
!308 = !DILocation(line: 901, column: 54, scope: !284)
!309 = !DILocalVariable(name: "lam_G", scope: !284, file: !1, line: 903, type: !287)
!310 = !DILocation(line: 903, column: 16, scope: !284)
!311 = !DILocation(line: 903, column: 24, scope: !284)
!312 = !DILocation(line: 903, column: 32, scope: !284)
!313 = !DILocation(line: 903, column: 30, scope: !284)
!314 = !DILocation(line: 905, column: 6, scope: !315)
!315 = distinct !DILexicalBlock(scope: !284, file: !1, line: 905, column: 6)
!316 = !DILocation(line: 905, column: 8, scope: !315)
!317 = !DILocation(line: 905, column: 14, scope: !315)
!318 = !DILocation(line: 905, column: 17, scope: !319)
!319 = !DILexicalBlockFile(scope: !315, file: !1, discriminator: 1)
!320 = !DILocation(line: 905, column: 23, scope: !319)
!321 = !DILocation(line: 905, column: 31, scope: !319)
!322 = !DILocation(line: 905, column: 34, scope: !323)
!323 = !DILexicalBlockFile(scope: !315, file: !1, discriminator: 2)
!324 = !DILocation(line: 905, column: 40, scope: !323)
!325 = !DILocation(line: 905, column: 6, scope: !323)
!326 = !DILocation(line: 906, column: 5, scope: !327)
!327 = distinct !DILexicalBlock(scope: !315, file: !1, line: 905, column: 49)
!328 = distinct !{!328, !326}
!329 = !DILocation(line: 906, column: 5, scope: !330)
!330 = !DILexicalBlockFile(scope: !331, file: !1, discriminator: 1)
!331 = distinct !DILexicalBlock(scope: !327, file: !1, line: 906, column: 5)
!332 = !DILocation(line: 907, column: 5, scope: !327)
!333 = distinct !{!333, !332}
!334 = !DILocation(line: 907, column: 5, scope: !335)
!335 = !DILexicalBlockFile(scope: !336, file: !1, discriminator: 1)
!336 = distinct !DILexicalBlock(scope: !327, file: !1, line: 907, column: 5)
!337 = !DILocation(line: 908, column: 5, scope: !327)
!338 = distinct !{!338, !337}
!339 = !DILocation(line: 908, column: 5, scope: !340)
!340 = !DILexicalBlockFile(scope: !341, file: !1, discriminator: 1)
!341 = distinct !DILexicalBlock(scope: !327, file: !1, line: 908, column: 5)
!342 = !DILocation(line: 909, column: 5, scope: !327)
!343 = distinct !{!343, !342}
!344 = !DILocation(line: 909, column: 5, scope: !345)
!345 = !DILexicalBlockFile(scope: !346, file: !1, discriminator: 1)
!346 = distinct !DILexicalBlock(scope: !327, file: !1, line: 909, column: 5)
!347 = !DILocation(line: 910, column: 6, scope: !327)
!348 = !DILocation(line: 910, column: 12, scope: !327)
!349 = !DILocation(line: 911, column: 6, scope: !327)
!350 = !DILocation(line: 911, column: 12, scope: !327)
!351 = !DILocation(line: 912, column: 5, scope: !327)
!352 = distinct !{!352, !351}
!353 = !DILocation(line: 912, column: 5, scope: !354)
!354 = !DILexicalBlockFile(scope: !355, file: !1, discriminator: 1)
!355 = distinct !DILexicalBlock(scope: !327, file: !1, line: 912, column: 5)
!356 = !DILocation(line: 913, column: 3, scope: !327)
!357 = !DILocation(line: 914, column: 11, scope: !358)
!358 = distinct !DILexicalBlock(scope: !315, file: !1, line: 914, column: 11)
!359 = !DILocation(line: 914, column: 13, scope: !358)
!360 = !DILocation(line: 914, column: 11, scope: !315)
!361 = !DILocalVariable(name: "C0", scope: !362, file: !1, line: 915, type: !52)
!362 = distinct !DILexicalBlock(scope: !358, file: !1, line: 914, column: 21)
!363 = !DILocation(line: 915, column: 19, scope: !362)
!364 = !DILocation(line: 916, column: 16, scope: !362)
!365 = !DILocation(line: 916, column: 5, scope: !362)
!366 = !DILocation(line: 917, column: 5, scope: !362)
!367 = distinct !{!367, !366}
!368 = !DILocation(line: 917, column: 5, scope: !369)
!369 = !DILexicalBlockFile(scope: !370, file: !1, discriminator: 1)
!370 = distinct !DILexicalBlock(scope: !362, file: !1, line: 917, column: 5)
!371 = !DILocation(line: 918, column: 5, scope: !362)
!372 = distinct !{!372, !371}
!373 = !DILocation(line: 918, column: 5, scope: !374)
!374 = !DILexicalBlockFile(scope: !375, file: !1, discriminator: 1)
!375 = distinct !DILexicalBlock(scope: !362, file: !1, line: 918, column: 5)
!376 = !DILocation(line: 919, column: 5, scope: !362)
!377 = distinct !{!377, !376}
!378 = !DILocation(line: 919, column: 5, scope: !379)
!379 = !DILexicalBlockFile(scope: !380, file: !1, discriminator: 1)
!380 = distinct !DILexicalBlock(scope: !362, file: !1, line: 919, column: 5)
!381 = !DILocation(line: 920, column: 5, scope: !362)
!382 = distinct !{!382, !381}
!383 = !DILocation(line: 920, column: 5, scope: !384)
!384 = !DILexicalBlockFile(scope: !385, file: !1, discriminator: 1)
!385 = distinct !DILexicalBlock(scope: !362, file: !1, line: 920, column: 5)
!386 = !DILocation(line: 921, column: 6, scope: !362)
!387 = !DILocation(line: 921, column: 12, scope: !362)
!388 = !DILocation(line: 922, column: 6, scope: !362)
!389 = !DILocation(line: 922, column: 12, scope: !362)
!390 = !DILocation(line: 923, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !362, file: !1, line: 923, column: 8)
!392 = !DILocation(line: 923, column: 14, scope: !391)
!393 = !DILocation(line: 923, column: 8, scope: !362)
!394 = !DILocation(line: 924, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !1, line: 923, column: 21)
!396 = distinct !{!396, !394}
!397 = !DILocation(line: 924, column: 7, scope: !398)
!398 = !DILexicalBlockFile(scope: !399, file: !1, discriminator: 1)
!399 = distinct !DILexicalBlock(scope: !395, file: !1, line: 924, column: 7)
!400 = !DILocation(line: 925, column: 5, scope: !395)
!401 = !DILocation(line: 926, column: 8, scope: !402)
!402 = distinct !DILexicalBlock(scope: !362, file: !1, line: 926, column: 8)
!403 = !DILocation(line: 926, column: 14, scope: !402)
!404 = !DILocation(line: 926, column: 8, scope: !362)
!405 = !DILocation(line: 927, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !1, line: 926, column: 22)
!407 = distinct !{!407, !405}
!408 = !DILocation(line: 927, column: 7, scope: !409)
!409 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 1)
!410 = distinct !DILexicalBlock(scope: !406, file: !1, line: 927, column: 7)
!411 = !DILocation(line: 927, column: 7, scope: !412)
!412 = !DILexicalBlockFile(scope: !409, file: !1, discriminator: 2)
!413 = !DILocation(line: 928, column: 5, scope: !406)
!414 = !DILocation(line: 929, column: 5, scope: !362)
!415 = distinct !{!415, !414}
!416 = !DILocation(line: 929, column: 5, scope: !417)
!417 = !DILexicalBlockFile(scope: !418, file: !1, discriminator: 1)
!418 = distinct !DILexicalBlock(scope: !362, file: !1, line: 929, column: 5)
!419 = !DILocation(line: 931, column: 3, scope: !362)
!420 = !DILocation(line: 932, column: 11, scope: !421)
!421 = distinct !DILexicalBlock(scope: !358, file: !1, line: 932, column: 11)
!422 = !DILocation(line: 932, column: 13, scope: !421)
!423 = !DILocation(line: 932, column: 19, scope: !421)
!424 = !DILocation(line: 932, column: 31, scope: !425)
!425 = !DILexicalBlockFile(scope: !421, file: !1, discriminator: 1)
!426 = !DILocation(line: 932, column: 30, scope: !425)
!427 = !DILocation(line: 932, column: 35, scope: !425)
!428 = !DILocation(line: 932, column: 60, scope: !425)
!429 = !DILocation(line: 932, column: 68, scope: !430)
!430 = !DILexicalBlockFile(scope: !421, file: !1, discriminator: 2)
!431 = !DILocation(line: 932, column: 72, scope: !430)
!432 = !DILocation(line: 932, column: 71, scope: !430)
!433 = !DILocation(line: 932, column: 63, scope: !430)
!434 = !DILocation(line: 932, column: 75, scope: !430)
!435 = !DILocation(line: 932, column: 11, scope: !430)
!436 = !DILocalVariable(name: "SMALL", scope: !437, file: !1, line: 940, type: !287)
!437 = distinct !DILexicalBlock(scope: !421, file: !1, line: 932, column: 83)
!438 = !DILocation(line: 940, column: 18, scope: !437)
!439 = !DILocalVariable(name: "N", scope: !437, file: !1, line: 941, type: !288)
!440 = !DILocation(line: 941, column: 15, scope: !437)
!441 = !DILocation(line: 941, column: 28, scope: !437)
!442 = !DILocation(line: 941, column: 34, scope: !437)
!443 = !DILocation(line: 941, column: 22, scope: !437)
!444 = !DILocalVariable(name: "span", scope: !437, file: !1, line: 942, type: !288)
!445 = !DILocation(line: 942, column: 15, scope: !437)
!446 = !DILocation(line: 942, column: 22, scope: !437)
!447 = !DILocation(line: 942, column: 22, scope: !448)
!448 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 1)
!449 = !DILocation(line: 942, column: 22, scope: !450)
!450 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 2)
!451 = !DILocation(line: 942, column: 22, scope: !452)
!452 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 3)
!453 = !DILocation(line: 942, column: 15, scope: !452)
!454 = !DILocalVariable(name: "lam_min", scope: !437, file: !1, line: 943, type: !287)
!455 = !DILocation(line: 943, column: 18, scope: !437)
!456 = !DILocation(line: 943, column: 28, scope: !437)
!457 = !DILocation(line: 943, column: 36, scope: !437)
!458 = !DILocation(line: 943, column: 34, scope: !437)
!459 = !DILocalVariable(name: "F_lam_F", scope: !437, file: !1, line: 944, type: !50)
!460 = !DILocation(line: 944, column: 12, scope: !437)
!461 = !DILocalVariable(name: "Fp_lam_F", scope: !437, file: !1, line: 944, type: !50)
!462 = !DILocation(line: 944, column: 21, scope: !437)
!463 = !DILocalVariable(name: "G_lam_G", scope: !437, file: !1, line: 945, type: !50)
!464 = !DILocation(line: 945, column: 12, scope: !437)
!465 = !DILocalVariable(name: "Gp_lam_G", scope: !437, file: !1, line: 945, type: !50)
!466 = !DILocation(line: 945, column: 21, scope: !437)
!467 = !DILocalVariable(name: "F_lam_F_err", scope: !437, file: !1, line: 946, type: !50)
!468 = !DILocation(line: 946, column: 12, scope: !437)
!469 = !DILocalVariable(name: "Fp_lam_F_err", scope: !437, file: !1, line: 946, type: !50)
!470 = !DILocation(line: 946, column: 25, scope: !437)
!471 = !DILocalVariable(name: "Fp_over_F_lam_F", scope: !437, file: !1, line: 947, type: !50)
!472 = !DILocation(line: 947, column: 12, scope: !437)
!473 = !DILocalVariable(name: "F_sign_lam_F", scope: !437, file: !1, line: 948, type: !50)
!474 = !DILocation(line: 948, column: 12, scope: !437)
!475 = !DILocalVariable(name: "F_lam_min_unnorm", scope: !437, file: !1, line: 949, type: !50)
!476 = !DILocation(line: 949, column: 12, scope: !437)
!477 = !DILocalVariable(name: "Fp_lam_min_unnorm", scope: !437, file: !1, line: 949, type: !50)
!478 = !DILocation(line: 949, column: 30, scope: !437)
!479 = !DILocalVariable(name: "Fp_over_F_lam_min", scope: !437, file: !1, line: 950, type: !50)
!480 = !DILocation(line: 950, column: 12, scope: !437)
!481 = !DILocalVariable(name: "F_lam_min", scope: !437, file: !1, line: 951, type: !52)
!482 = !DILocation(line: 951, column: 19, scope: !437)
!483 = !DILocalVariable(name: "G_lam_min", scope: !437, file: !1, line: 952, type: !52)
!484 = !DILocation(line: 952, column: 19, scope: !437)
!485 = !DILocalVariable(name: "Gp_lam_min", scope: !437, file: !1, line: 952, type: !52)
!486 = !DILocation(line: 952, column: 30, scope: !437)
!487 = !DILocalVariable(name: "F_scale", scope: !437, file: !1, line: 953, type: !50)
!488 = !DILocation(line: 953, column: 12, scope: !437)
!489 = !DILocalVariable(name: "Gerr_frac", scope: !437, file: !1, line: 954, type: !50)
!490 = !DILocation(line: 954, column: 12, scope: !437)
!491 = !DILocalVariable(name: "F_scale_frac_err", scope: !437, file: !1, line: 955, type: !50)
!492 = !DILocation(line: 955, column: 12, scope: !437)
!493 = !DILocalVariable(name: "F_unnorm_frac_err", scope: !437, file: !1, line: 956, type: !50)
!494 = !DILocation(line: 956, column: 12, scope: !437)
!495 = !DILocalVariable(name: "CF1_count", scope: !437, file: !1, line: 959, type: !42)
!496 = !DILocation(line: 959, column: 9, scope: !437)
!497 = !DILocalVariable(name: "stat_CF1", scope: !437, file: !1, line: 960, type: !42)
!498 = !DILocation(line: 960, column: 9, scope: !437)
!499 = !DILocation(line: 960, column: 32, scope: !437)
!500 = !DILocation(line: 960, column: 39, scope: !437)
!501 = !DILocation(line: 960, column: 44, scope: !437)
!502 = !DILocation(line: 960, column: 20, scope: !437)
!503 = !DILocalVariable(name: "stat_ser", scope: !437, file: !1, line: 962, type: !42)
!504 = !DILocation(line: 962, column: 9, scope: !437)
!505 = !DILocalVariable(name: "stat_Fr", scope: !437, file: !1, line: 963, type: !42)
!506 = !DILocation(line: 963, column: 9, scope: !437)
!507 = !DILocalVariable(name: "stat_Gr", scope: !437, file: !1, line: 964, type: !42)
!508 = !DILocation(line: 964, column: 9, scope: !437)
!509 = !DILocation(line: 967, column: 14, scope: !437)
!510 = !DILocation(line: 968, column: 16, scope: !437)
!511 = !DILocation(line: 968, column: 34, scope: !437)
!512 = !DILocation(line: 968, column: 32, scope: !437)
!513 = !DILocation(line: 968, column: 14, scope: !437)
!514 = !DILocation(line: 969, column: 8, scope: !515)
!515 = distinct !DILexicalBlock(scope: !437, file: !1, line: 969, column: 8)
!516 = !DILocation(line: 969, column: 13, scope: !515)
!517 = !DILocation(line: 969, column: 8, scope: !437)
!518 = !DILocation(line: 970, column: 33, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !1, line: 969, column: 19)
!520 = !DILocation(line: 970, column: 42, scope: !519)
!521 = !DILocation(line: 970, column: 48, scope: !519)
!522 = !DILocation(line: 970, column: 53, scope: !519)
!523 = !DILocation(line: 971, column: 33, scope: !519)
!524 = !DILocation(line: 971, column: 42, scope: !519)
!525 = !DILocation(line: 970, column: 17, scope: !519)
!526 = !DILocation(line: 970, column: 15, scope: !519)
!527 = !DILocation(line: 974, column: 5, scope: !519)
!528 = !DILocation(line: 976, column: 28, scope: !529)
!529 = distinct !DILexicalBlock(scope: !515, file: !1, line: 975, column: 10)
!530 = !DILocation(line: 976, column: 25, scope: !529)
!531 = !DILocation(line: 977, column: 27, scope: !529)
!532 = !DILocation(line: 977, column: 25, scope: !529)
!533 = !DILocation(line: 978, column: 15, scope: !529)
!534 = !DILocation(line: 982, column: 8, scope: !535)
!535 = distinct !DILexicalBlock(scope: !437, file: !1, line: 982, column: 8)
!536 = !DILocation(line: 982, column: 16, scope: !535)
!537 = !DILocation(line: 982, column: 8, scope: !437)
!538 = !DILocation(line: 983, column: 41, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !1, line: 982, column: 25)
!540 = !DILocation(line: 983, column: 46, scope: !539)
!541 = !DILocation(line: 983, column: 18, scope: !539)
!542 = !DILocation(line: 983, column: 16, scope: !539)
!543 = !DILocation(line: 984, column: 5, scope: !539)
!544 = !DILocation(line: 985, column: 13, scope: !545)
!545 = distinct !DILexicalBlock(scope: !535, file: !1, line: 985, column: 13)
!546 = !DILocation(line: 985, column: 21, scope: !545)
!547 = !DILocation(line: 985, column: 13, scope: !535)
!548 = !DILocation(line: 986, column: 37, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !1, line: 985, column: 29)
!550 = !DILocation(line: 986, column: 42, scope: !549)
!551 = !DILocation(line: 986, column: 18, scope: !549)
!552 = !DILocation(line: 986, column: 16, scope: !549)
!553 = !DILocation(line: 987, column: 5, scope: !549)
!554 = !DILocation(line: 988, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !545, file: !1, line: 988, column: 13)
!556 = !DILocation(line: 988, column: 21, scope: !555)
!557 = !DILocation(line: 988, column: 13, scope: !545)
!558 = !DILocation(line: 990, column: 17, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !1, line: 988, column: 29)
!560 = !DILocation(line: 990, column: 7, scope: !559)
!561 = !DILocation(line: 990, column: 10, scope: !559)
!562 = !DILocation(line: 990, column: 15, scope: !559)
!563 = !DILocation(line: 991, column: 46, scope: !559)
!564 = !DILocation(line: 991, column: 49, scope: !559)
!565 = !DILocation(line: 991, column: 41, scope: !559)
!566 = !DILocation(line: 991, column: 39, scope: !559)
!567 = !DILocation(line: 991, column: 7, scope: !559)
!568 = !DILocation(line: 991, column: 10, scope: !559)
!569 = !DILocation(line: 991, column: 15, scope: !559)
!570 = !DILocation(line: 992, column: 17, scope: !559)
!571 = !DILocation(line: 992, column: 7, scope: !559)
!572 = !DILocation(line: 992, column: 11, scope: !559)
!573 = !DILocation(line: 992, column: 15, scope: !559)
!574 = !DILocation(line: 993, column: 46, scope: !559)
!575 = !DILocation(line: 993, column: 50, scope: !559)
!576 = !DILocation(line: 993, column: 41, scope: !559)
!577 = !DILocation(line: 993, column: 39, scope: !559)
!578 = !DILocation(line: 993, column: 7, scope: !559)
!579 = !DILocation(line: 993, column: 11, scope: !559)
!580 = !DILocation(line: 993, column: 15, scope: !559)
!581 = !DILocation(line: 994, column: 17, scope: !559)
!582 = !DILocation(line: 994, column: 7, scope: !559)
!583 = !DILocation(line: 994, column: 10, scope: !559)
!584 = !DILocation(line: 994, column: 15, scope: !559)
!585 = !DILocation(line: 995, column: 46, scope: !559)
!586 = !DILocation(line: 995, column: 49, scope: !559)
!587 = !DILocation(line: 995, column: 41, scope: !559)
!588 = !DILocation(line: 995, column: 39, scope: !559)
!589 = !DILocation(line: 995, column: 7, scope: !559)
!590 = !DILocation(line: 995, column: 10, scope: !559)
!591 = !DILocation(line: 995, column: 15, scope: !559)
!592 = !DILocation(line: 996, column: 17, scope: !559)
!593 = !DILocation(line: 996, column: 7, scope: !559)
!594 = !DILocation(line: 996, column: 11, scope: !559)
!595 = !DILocation(line: 996, column: 15, scope: !559)
!596 = !DILocation(line: 997, column: 46, scope: !559)
!597 = !DILocation(line: 997, column: 50, scope: !559)
!598 = !DILocation(line: 997, column: 41, scope: !559)
!599 = !DILocation(line: 997, column: 39, scope: !559)
!600 = !DILocation(line: 997, column: 7, scope: !559)
!601 = !DILocation(line: 997, column: 11, scope: !559)
!602 = !DILocation(line: 997, column: 15, scope: !559)
!603 = !DILocation(line: 998, column: 8, scope: !559)
!604 = !DILocation(line: 998, column: 14, scope: !559)
!605 = !DILocation(line: 999, column: 8, scope: !559)
!606 = !DILocation(line: 999, column: 14, scope: !559)
!607 = !DILocation(line: 1000, column: 7, scope: !559)
!608 = distinct !{!608, !607}
!609 = !DILocation(line: 1000, column: 7, scope: !610)
!610 = !DILexicalBlockFile(scope: !611, file: !1, discriminator: 1)
!611 = distinct !DILexicalBlock(scope: !559, file: !1, line: 1000, column: 7)
!612 = !DILocation(line: 1001, column: 5, scope: !559)
!613 = !DILocation(line: 1003, column: 36, scope: !614)
!614 = distinct !DILexicalBlock(scope: !555, file: !1, line: 1002, column: 10)
!615 = !DILocation(line: 1003, column: 45, scope: !614)
!616 = !DILocation(line: 1003, column: 50, scope: !614)
!617 = !DILocation(line: 1003, column: 18, scope: !614)
!618 = !DILocation(line: 1003, column: 16, scope: !614)
!619 = !DILocation(line: 1007, column: 25, scope: !437)
!620 = !DILocation(line: 1007, column: 45, scope: !437)
!621 = !DILocation(line: 1007, column: 43, scope: !437)
!622 = !DILocation(line: 1007, column: 23, scope: !437)
!623 = !DILocation(line: 1008, column: 23, scope: !437)
!624 = !DILocation(line: 1008, column: 51, scope: !437)
!625 = !DILocation(line: 1008, column: 40, scope: !437)
!626 = !DILocation(line: 1008, column: 71, scope: !437)
!627 = !DILocation(line: 1008, column: 60, scope: !437)
!628 = !DILocation(line: 1008, column: 55, scope: !437)
!629 = !DILocation(line: 1008, column: 16, scope: !437)
!630 = !DILocation(line: 1008, column: 21, scope: !437)
!631 = !DILocation(line: 1009, column: 28, scope: !437)
!632 = !DILocation(line: 1009, column: 23, scope: !437)
!633 = !DILocation(line: 1009, column: 57, scope: !437)
!634 = !DILocation(line: 1009, column: 46, scope: !437)
!635 = !DILocation(line: 1009, column: 16, scope: !437)
!636 = !DILocation(line: 1009, column: 21, scope: !437)
!637 = !DILocation(line: 1010, column: 42, scope: !437)
!638 = !DILocation(line: 1010, column: 31, scope: !437)
!639 = !DILocation(line: 1010, column: 23, scope: !437)
!640 = !DILocation(line: 1010, column: 64, scope: !437)
!641 = !DILocation(line: 1010, column: 78, scope: !437)
!642 = !DILocation(line: 1010, column: 67, scope: !437)
!643 = !DILocation(line: 1010, column: 49, scope: !448)
!644 = !DILocation(line: 1010, column: 47, scope: !437)
!645 = !DILocation(line: 1010, column: 16, scope: !437)
!646 = !DILocation(line: 1010, column: 20, scope: !437)
!647 = !DILocation(line: 1011, column: 29, scope: !437)
!648 = !DILocation(line: 1011, column: 35, scope: !437)
!649 = !DILocation(line: 1011, column: 33, scope: !437)
!650 = !DILocation(line: 1011, column: 17, scope: !437)
!651 = !DILocation(line: 1014, column: 40, scope: !437)
!652 = !DILocation(line: 1014, column: 54, scope: !437)
!653 = !DILocation(line: 1014, column: 43, scope: !437)
!654 = !DILocation(line: 1014, column: 25, scope: !437)
!655 = !DILocation(line: 1014, column: 23, scope: !437)
!656 = !DILocation(line: 1015, column: 46, scope: !437)
!657 = !DILocation(line: 1015, column: 56, scope: !437)
!658 = !DILocation(line: 1015, column: 55, scope: !437)
!659 = !DILocation(line: 1015, column: 60, scope: !437)
!660 = !DILocation(line: 1015, column: 45, scope: !437)
!661 = !DILocation(line: 1015, column: 44, scope: !437)
!662 = !DILocation(line: 1015, column: 23, scope: !437)
!663 = !DILocation(line: 1016, column: 20, scope: !437)
!664 = !DILocation(line: 1016, column: 17, scope: !437)
!665 = !DILocation(line: 1017, column: 25, scope: !437)
!666 = !DILocation(line: 1017, column: 20, scope: !437)
!667 = !DILocation(line: 1017, column: 37, scope: !437)
!668 = !DILocation(line: 1017, column: 57, scope: !437)
!669 = !DILocation(line: 1017, column: 55, scope: !437)
!670 = !DILocation(line: 1017, column: 34, scope: !437)
!671 = !DILocation(line: 1017, column: 18, scope: !437)
!672 = !DILocation(line: 1018, column: 20, scope: !437)
!673 = !DILocation(line: 1018, column: 17, scope: !437)
!674 = !DILocation(line: 1019, column: 25, scope: !437)
!675 = !DILocation(line: 1019, column: 20, scope: !437)
!676 = !DILocation(line: 1019, column: 38, scope: !437)
!677 = !DILocation(line: 1019, column: 58, scope: !437)
!678 = !DILocation(line: 1019, column: 56, scope: !437)
!679 = !DILocation(line: 1019, column: 35, scope: !437)
!680 = !DILocation(line: 1019, column: 18, scope: !437)
!681 = !DILocation(line: 1022, column: 31, scope: !437)
!682 = !DILocation(line: 1022, column: 40, scope: !437)
!683 = !DILocation(line: 1022, column: 40, scope: !448)
!684 = !DILocation(line: 1022, column: 40, scope: !450)
!685 = !DILocation(line: 1022, column: 40, scope: !452)
!686 = !DILocation(line: 1022, column: 62, scope: !452)
!687 = !DILocation(line: 1022, column: 67, scope: !452)
!688 = !DILocation(line: 1023, column: 41, scope: !437)
!689 = !DILocation(line: 1023, column: 57, scope: !437)
!690 = !DILocation(line: 1022, column: 15, scope: !452)
!691 = !DILocation(line: 1022, column: 13, scope: !452)
!692 = !DILocation(line: 1027, column: 15, scope: !437)
!693 = !DILocation(line: 1027, column: 5, scope: !437)
!694 = !DILocation(line: 1027, column: 8, scope: !437)
!695 = !DILocation(line: 1027, column: 13, scope: !437)
!696 = !DILocation(line: 1028, column: 15, scope: !437)
!697 = !DILocation(line: 1028, column: 5, scope: !437)
!698 = !DILocation(line: 1028, column: 8, scope: !437)
!699 = !DILocation(line: 1028, column: 13, scope: !437)
!700 = !DILocation(line: 1029, column: 44, scope: !437)
!701 = !DILocation(line: 1029, column: 39, scope: !437)
!702 = !DILocation(line: 1029, column: 37, scope: !437)
!703 = !DILocation(line: 1029, column: 5, scope: !437)
!704 = !DILocation(line: 1029, column: 8, scope: !437)
!705 = !DILocation(line: 1029, column: 12, scope: !437)
!706 = !DILocation(line: 1031, column: 16, scope: !437)
!707 = !DILocation(line: 1031, column: 5, scope: !437)
!708 = !DILocation(line: 1031, column: 9, scope: !437)
!709 = !DILocation(line: 1031, column: 14, scope: !437)
!710 = !DILocation(line: 1032, column: 16, scope: !437)
!711 = !DILocation(line: 1032, column: 5, scope: !437)
!712 = !DILocation(line: 1032, column: 9, scope: !437)
!713 = !DILocation(line: 1032, column: 14, scope: !437)
!714 = !DILocation(line: 1033, column: 45, scope: !437)
!715 = !DILocation(line: 1033, column: 40, scope: !437)
!716 = !DILocation(line: 1033, column: 38, scope: !437)
!717 = !DILocation(line: 1033, column: 5, scope: !437)
!718 = !DILocation(line: 1033, column: 9, scope: !437)
!719 = !DILocation(line: 1033, column: 13, scope: !437)
!720 = !DILocation(line: 1035, column: 32, scope: !437)
!721 = !DILocation(line: 1035, column: 46, scope: !437)
!722 = !DILocation(line: 1035, column: 35, scope: !437)
!723 = !DILocation(line: 1035, column: 17, scope: !437)
!724 = !DILocation(line: 1035, column: 69, scope: !437)
!725 = !DILocation(line: 1035, column: 84, scope: !437)
!726 = !DILocation(line: 1035, column: 72, scope: !437)
!727 = !DILocation(line: 1035, column: 53, scope: !448)
!728 = !DILocation(line: 1035, column: 51, scope: !437)
!729 = !DILocation(line: 1035, column: 15, scope: !437)
!730 = !DILocation(line: 1037, column: 15, scope: !437)
!731 = !DILocation(line: 1037, column: 5, scope: !437)
!732 = !DILocation(line: 1037, column: 8, scope: !437)
!733 = !DILocation(line: 1037, column: 13, scope: !437)
!734 = !DILocation(line: 1038, column: 15, scope: !437)
!735 = !DILocation(line: 1038, column: 32, scope: !437)
!736 = !DILocation(line: 1038, column: 27, scope: !437)
!737 = !DILocation(line: 1038, column: 25, scope: !437)
!738 = !DILocation(line: 1038, column: 5, scope: !437)
!739 = !DILocation(line: 1038, column: 8, scope: !437)
!740 = !DILocation(line: 1038, column: 13, scope: !437)
!741 = !DILocation(line: 1039, column: 22, scope: !437)
!742 = !DILocation(line: 1039, column: 31, scope: !437)
!743 = !DILocation(line: 1039, column: 21, scope: !437)
!744 = !DILocation(line: 1039, column: 19, scope: !437)
!745 = !DILocation(line: 1039, column: 35, scope: !437)
!746 = !DILocation(line: 1039, column: 60, scope: !437)
!747 = !DILocation(line: 1039, column: 63, scope: !437)
!748 = !DILocation(line: 1039, column: 55, scope: !437)
!749 = !DILocation(line: 1039, column: 53, scope: !437)
!750 = !DILocation(line: 1039, column: 5, scope: !437)
!751 = !DILocation(line: 1039, column: 8, scope: !437)
!752 = !DILocation(line: 1039, column: 12, scope: !437)
!753 = !DILocation(line: 1041, column: 16, scope: !437)
!754 = !DILocation(line: 1041, column: 5, scope: !437)
!755 = !DILocation(line: 1041, column: 9, scope: !437)
!756 = !DILocation(line: 1041, column: 14, scope: !437)
!757 = !DILocation(line: 1042, column: 16, scope: !437)
!758 = !DILocation(line: 1042, column: 33, scope: !437)
!759 = !DILocation(line: 1042, column: 37, scope: !437)
!760 = !DILocation(line: 1042, column: 28, scope: !437)
!761 = !DILocation(line: 1042, column: 26, scope: !437)
!762 = !DILocation(line: 1042, column: 5, scope: !437)
!763 = !DILocation(line: 1042, column: 9, scope: !437)
!764 = !DILocation(line: 1042, column: 14, scope: !437)
!765 = !DILocation(line: 1043, column: 23, scope: !437)
!766 = !DILocation(line: 1043, column: 32, scope: !437)
!767 = !DILocation(line: 1043, column: 22, scope: !437)
!768 = !DILocation(line: 1043, column: 20, scope: !437)
!769 = !DILocation(line: 1043, column: 36, scope: !437)
!770 = !DILocation(line: 1043, column: 61, scope: !437)
!771 = !DILocation(line: 1043, column: 65, scope: !437)
!772 = !DILocation(line: 1043, column: 56, scope: !437)
!773 = !DILocation(line: 1043, column: 54, scope: !437)
!774 = !DILocation(line: 1043, column: 5, scope: !437)
!775 = !DILocation(line: 1043, column: 9, scope: !437)
!776 = !DILocation(line: 1043, column: 13, scope: !437)
!777 = !DILocation(line: 1045, column: 6, scope: !437)
!778 = !DILocation(line: 1045, column: 12, scope: !437)
!779 = !DILocation(line: 1046, column: 6, scope: !437)
!780 = !DILocation(line: 1046, column: 12, scope: !437)
!781 = !DILocation(line: 1048, column: 12, scope: !437)
!782 = !DILocation(line: 1048, column: 12, scope: !448)
!783 = !DILocation(line: 1048, column: 12, scope: !450)
!784 = !DILocation(line: 1048, column: 12, scope: !452)
!785 = !DILocation(line: 1048, column: 12, scope: !786)
!786 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 4)
!787 = !DILocation(line: 1048, column: 12, scope: !788)
!788 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 5)
!789 = !DILocation(line: 1048, column: 12, scope: !790)
!790 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 6)
!791 = !DILocation(line: 1048, column: 12, scope: !792)
!792 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 7)
!793 = !DILocation(line: 1048, column: 12, scope: !794)
!794 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 8)
!795 = !DILocation(line: 1048, column: 12, scope: !796)
!796 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 9)
!797 = !DILocation(line: 1048, column: 12, scope: !798)
!798 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 10)
!799 = !DILocation(line: 1048, column: 12, scope: !800)
!800 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 11)
!801 = !DILocation(line: 1048, column: 12, scope: !802)
!802 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 12)
!803 = !DILocation(line: 1048, column: 5, scope: !802)
!804 = !DILocation(line: 1050, column: 11, scope: !805)
!805 = distinct !DILexicalBlock(scope: !421, file: !1, line: 1050, column: 11)
!806 = !DILocation(line: 1050, column: 19, scope: !805)
!807 = !DILocation(line: 1050, column: 18, scope: !805)
!808 = !DILocation(line: 1050, column: 13, scope: !805)
!809 = !DILocation(line: 1050, column: 11, scope: !421)
!810 = !DILocalVariable(name: "F_lam_F", scope: !811, file: !1, line: 1055, type: !52)
!811 = distinct !DILexicalBlock(scope: !805, file: !1, line: 1050, column: 24)
!812 = !DILocation(line: 1055, column: 19, scope: !811)
!813 = !DILocalVariable(name: "G_lam_F", scope: !811, file: !1, line: 1055, type: !52)
!814 = !DILocation(line: 1055, column: 28, scope: !811)
!815 = !DILocalVariable(name: "F_lam_G", scope: !811, file: !1, line: 1056, type: !52)
!816 = !DILocation(line: 1056, column: 19, scope: !811)
!817 = !DILocalVariable(name: "G_lam_G", scope: !811, file: !1, line: 1056, type: !52)
!818 = !DILocation(line: 1056, column: 28, scope: !811)
!819 = !DILocalVariable(name: "exp_lam_F", scope: !811, file: !1, line: 1057, type: !50)
!820 = !DILocation(line: 1057, column: 12, scope: !811)
!821 = !DILocalVariable(name: "exp_lam_G", scope: !811, file: !1, line: 1057, type: !50)
!822 = !DILocation(line: 1057, column: 23, scope: !811)
!823 = !DILocalVariable(name: "stat_lam_F", scope: !811, file: !1, line: 1058, type: !42)
!824 = !DILocation(line: 1058, column: 9, scope: !811)
!825 = !DILocalVariable(name: "stat_lam_G", scope: !811, file: !1, line: 1059, type: !42)
!826 = !DILocation(line: 1059, column: 9, scope: !811)
!827 = !DILocalVariable(name: "stat_CF1_lam_F", scope: !811, file: !1, line: 1060, type: !42)
!828 = !DILocation(line: 1060, column: 9, scope: !811)
!829 = !DILocalVariable(name: "stat_CF1_lam_G", scope: !811, file: !1, line: 1061, type: !42)
!830 = !DILocation(line: 1061, column: 9, scope: !811)
!831 = !DILocalVariable(name: "CF1_count", scope: !811, file: !1, line: 1062, type: !42)
!832 = !DILocation(line: 1062, column: 9, scope: !811)
!833 = !DILocalVariable(name: "Fp_over_F_lam_F", scope: !811, file: !1, line: 1063, type: !50)
!834 = !DILocation(line: 1063, column: 12, scope: !811)
!835 = !DILocalVariable(name: "Fp_over_F_lam_G", scope: !811, file: !1, line: 1064, type: !50)
!836 = !DILocation(line: 1064, column: 12, scope: !811)
!837 = !DILocalVariable(name: "F_sign_lam_F", scope: !811, file: !1, line: 1065, type: !50)
!838 = !DILocation(line: 1065, column: 12, scope: !811)
!839 = !DILocalVariable(name: "F_sign_lam_G", scope: !811, file: !1, line: 1066, type: !50)
!840 = !DILocation(line: 1066, column: 12, scope: !811)
!841 = !DILocation(line: 1068, column: 31, scope: !811)
!842 = !DILocation(line: 1068, column: 38, scope: !811)
!843 = !DILocation(line: 1068, column: 43, scope: !811)
!844 = !DILocation(line: 1068, column: 18, scope: !811)
!845 = !DILocation(line: 1068, column: 16, scope: !811)
!846 = !DILocation(line: 1069, column: 8, scope: !847)
!847 = distinct !DILexicalBlock(scope: !811, file: !1, line: 1069, column: 8)
!848 = !DILocation(line: 1069, column: 16, scope: !847)
!849 = !DILocation(line: 1069, column: 8, scope: !811)
!850 = !DILocation(line: 1070, column: 20, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !1, line: 1069, column: 22)
!852 = !DILocation(line: 1070, column: 18, scope: !851)
!853 = !DILocation(line: 1071, column: 17, scope: !851)
!854 = !DILocation(line: 1072, column: 17, scope: !851)
!855 = !DILocation(line: 1073, column: 19, scope: !851)
!856 = !DILocation(line: 1073, column: 17, scope: !851)
!857 = !DILocation(line: 1074, column: 5, scope: !851)
!858 = !DILocation(line: 1076, column: 33, scope: !859)
!859 = distinct !DILexicalBlock(scope: !847, file: !1, line: 1075, column: 10)
!860 = !DILocation(line: 1076, column: 40, scope: !859)
!861 = !DILocation(line: 1076, column: 45, scope: !859)
!862 = !DILocation(line: 1076, column: 20, scope: !859)
!863 = !DILocation(line: 1076, column: 18, scope: !859)
!864 = !DILocation(line: 1079, column: 34, scope: !811)
!865 = !DILocation(line: 1079, column: 41, scope: !811)
!866 = !DILocation(line: 1079, column: 46, scope: !811)
!867 = !DILocation(line: 1079, column: 22, scope: !811)
!868 = !DILocation(line: 1079, column: 20, scope: !811)
!869 = !DILocation(line: 1080, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !811, file: !1, line: 1080, column: 8)
!871 = !DILocation(line: 1080, column: 16, scope: !870)
!872 = !DILocation(line: 1080, column: 8, scope: !811)
!873 = !DILocation(line: 1081, column: 25, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !1, line: 1080, column: 22)
!875 = !DILocation(line: 1081, column: 23, scope: !874)
!876 = !DILocation(line: 1082, column: 25, scope: !874)
!877 = !DILocation(line: 1082, column: 23, scope: !874)
!878 = !DILocation(line: 1083, column: 25, scope: !874)
!879 = !DILocation(line: 1083, column: 23, scope: !874)
!880 = !DILocation(line: 1084, column: 5, scope: !874)
!881 = !DILocation(line: 1086, column: 36, scope: !882)
!882 = distinct !DILexicalBlock(scope: !870, file: !1, line: 1085, column: 10)
!883 = !DILocation(line: 1086, column: 43, scope: !882)
!884 = !DILocation(line: 1086, column: 48, scope: !882)
!885 = !DILocation(line: 1086, column: 24, scope: !882)
!886 = !DILocation(line: 1086, column: 22, scope: !882)
!887 = !DILocation(line: 1089, column: 22, scope: !811)
!888 = !DILocation(line: 1089, column: 5, scope: !811)
!889 = !DILocation(line: 1089, column: 8, scope: !811)
!890 = !DILocation(line: 1089, column: 12, scope: !811)
!891 = !DILocation(line: 1090, column: 22, scope: !811)
!892 = !DILocation(line: 1090, column: 5, scope: !811)
!893 = !DILocation(line: 1090, column: 8, scope: !811)
!894 = !DILocation(line: 1090, column: 12, scope: !811)
!895 = !DILocation(line: 1092, column: 22, scope: !811)
!896 = !DILocation(line: 1092, column: 5, scope: !811)
!897 = !DILocation(line: 1092, column: 8, scope: !811)
!898 = !DILocation(line: 1092, column: 12, scope: !811)
!899 = !DILocation(line: 1093, column: 22, scope: !811)
!900 = !DILocation(line: 1093, column: 5, scope: !811)
!901 = !DILocation(line: 1093, column: 8, scope: !811)
!902 = !DILocation(line: 1093, column: 12, scope: !811)
!903 = !DILocation(line: 1095, column: 16, scope: !811)
!904 = !DILocation(line: 1095, column: 42, scope: !811)
!905 = !DILocation(line: 1095, column: 32, scope: !811)
!906 = !DILocation(line: 1095, column: 5, scope: !811)
!907 = !DILocation(line: 1095, column: 9, scope: !811)
!908 = !DILocation(line: 1095, column: 14, scope: !811)
!909 = !DILocation(line: 1096, column: 21, scope: !811)
!910 = !DILocation(line: 1096, column: 16, scope: !811)
!911 = !DILocation(line: 1096, column: 48, scope: !811)
!912 = !DILocation(line: 1096, column: 38, scope: !811)
!913 = !DILocation(line: 1096, column: 5, scope: !811)
!914 = !DILocation(line: 1096, column: 9, scope: !811)
!915 = !DILocation(line: 1096, column: 14, scope: !811)
!916 = !DILocation(line: 1097, column: 41, scope: !811)
!917 = !DILocation(line: 1097, column: 45, scope: !811)
!918 = !DILocation(line: 1097, column: 36, scope: !811)
!919 = !DILocation(line: 1097, column: 35, scope: !811)
!920 = !DILocation(line: 1097, column: 5, scope: !811)
!921 = !DILocation(line: 1097, column: 9, scope: !811)
!922 = !DILocation(line: 1097, column: 13, scope: !811)
!923 = !DILocation(line: 1099, column: 16, scope: !811)
!924 = !DILocation(line: 1099, column: 42, scope: !811)
!925 = !DILocation(line: 1099, column: 32, scope: !811)
!926 = !DILocation(line: 1099, column: 60, scope: !811)
!927 = !DILocation(line: 1099, column: 51, scope: !811)
!928 = !DILocation(line: 1099, column: 46, scope: !811)
!929 = !DILocation(line: 1099, column: 5, scope: !811)
!930 = !DILocation(line: 1099, column: 9, scope: !811)
!931 = !DILocation(line: 1099, column: 14, scope: !811)
!932 = !DILocation(line: 1100, column: 21, scope: !811)
!933 = !DILocation(line: 1100, column: 16, scope: !811)
!934 = !DILocation(line: 1100, column: 48, scope: !811)
!935 = !DILocation(line: 1100, column: 38, scope: !811)
!936 = !DILocation(line: 1100, column: 5, scope: !811)
!937 = !DILocation(line: 1100, column: 9, scope: !811)
!938 = !DILocation(line: 1100, column: 14, scope: !811)
!939 = !DILocation(line: 1101, column: 33, scope: !811)
!940 = !DILocation(line: 1101, column: 24, scope: !811)
!941 = !DILocation(line: 1101, column: 16, scope: !811)
!942 = !DILocation(line: 1101, column: 53, scope: !811)
!943 = !DILocation(line: 1101, column: 65, scope: !811)
!944 = !DILocation(line: 1101, column: 56, scope: !811)
!945 = !DILocation(line: 1101, column: 40, scope: !946)
!946 = !DILexicalBlockFile(scope: !811, file: !1, discriminator: 1)
!947 = !DILocation(line: 1101, column: 38, scope: !811)
!948 = !DILocation(line: 1101, column: 5, scope: !811)
!949 = !DILocation(line: 1101, column: 9, scope: !811)
!950 = !DILocation(line: 1101, column: 13, scope: !811)
!951 = !DILocation(line: 1103, column: 14, scope: !811)
!952 = !DILocation(line: 1103, column: 6, scope: !811)
!953 = !DILocation(line: 1103, column: 12, scope: !811)
!954 = !DILocation(line: 1104, column: 14, scope: !811)
!955 = !DILocation(line: 1104, column: 6, scope: !811)
!956 = !DILocation(line: 1104, column: 12, scope: !811)
!957 = !DILocation(line: 1106, column: 8, scope: !958)
!958 = distinct !DILexicalBlock(scope: !811, file: !1, line: 1106, column: 8)
!959 = !DILocation(line: 1106, column: 19, scope: !958)
!960 = !DILocation(line: 1106, column: 34, scope: !958)
!961 = !DILocation(line: 1106, column: 37, scope: !962)
!962 = !DILexicalBlockFile(scope: !958, file: !1, discriminator: 1)
!963 = !DILocation(line: 1106, column: 48, scope: !962)
!964 = !DILocation(line: 1106, column: 8, scope: !962)
!965 = !DILocation(line: 1107, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !958, file: !1, line: 1106, column: 64)
!967 = distinct !{!967, !965}
!968 = !DILocation(line: 1107, column: 7, scope: !969)
!969 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 1)
!970 = distinct !DILexicalBlock(scope: !966, file: !1, line: 1107, column: 7)
!971 = !DILocation(line: 1108, column: 5, scope: !966)
!972 = !DILocation(line: 1110, column: 14, scope: !973)
!973 = distinct !DILexicalBlock(scope: !958, file: !1, line: 1109, column: 10)
!974 = !DILocation(line: 1110, column: 14, scope: !975)
!975 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 1)
!976 = !DILocation(line: 1110, column: 14, scope: !977)
!977 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 2)
!978 = !DILocation(line: 1110, column: 14, scope: !979)
!979 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 3)
!980 = !DILocation(line: 1110, column: 14, scope: !981)
!981 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 4)
!982 = !DILocation(line: 1110, column: 14, scope: !983)
!983 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 5)
!984 = !DILocation(line: 1110, column: 14, scope: !985)
!985 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 6)
!986 = !DILocation(line: 1110, column: 7, scope: !985)
!987 = !DILocation(line: 1112, column: 3, scope: !811)
!988 = !DILocalVariable(name: "SMALL", scope: !989, file: !1, line: 1123, type: !287)
!989 = distinct !DILexicalBlock(scope: !805, file: !1, line: 1113, column: 8)
!990 = !DILocation(line: 1123, column: 18, scope: !989)
!991 = !DILocalVariable(name: "C", scope: !989, file: !1, line: 1124, type: !287)
!992 = !DILocation(line: 1124, column: 18, scope: !989)
!993 = !DILocation(line: 1124, column: 37, scope: !989)
!994 = !DILocation(line: 1124, column: 36, scope: !989)
!995 = !DILocation(line: 1124, column: 40, scope: !989)
!996 = !DILocation(line: 1124, column: 46, scope: !989)
!997 = !DILocation(line: 1124, column: 45, scope: !989)
!998 = !DILocation(line: 1124, column: 41, scope: !989)
!999 = !DILocation(line: 1124, column: 38, scope: !989)
!1000 = !DILocation(line: 1124, column: 31, scope: !989)
!1001 = !DILocation(line: 1124, column: 22, scope: !989)
!1002 = !DILocalVariable(name: "N", scope: !989, file: !1, line: 1125, type: !288)
!1003 = !DILocation(line: 1125, column: 15, scope: !989)
!1004 = !DILocation(line: 1125, column: 24, scope: !989)
!1005 = !DILocation(line: 1125, column: 32, scope: !989)
!1006 = !DILocation(line: 1125, column: 30, scope: !989)
!1007 = !DILocation(line: 1125, column: 34, scope: !989)
!1008 = !DILocation(line: 1125, column: 19, scope: !989)
!1009 = !DILocalVariable(name: "lam_0", scope: !989, file: !1, line: 1126, type: !287)
!1010 = !DILocation(line: 1126, column: 18, scope: !989)
!1011 = !DILocation(line: 1126, column: 28, scope: !989)
!1012 = !DILocation(line: 1126, column: 36, scope: !989)
!1013 = !DILocation(line: 1126, column: 36, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 1)
!1015 = !DILocation(line: 1126, column: 36, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 2)
!1017 = !DILocation(line: 1126, column: 36, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 3)
!1019 = !DILocation(line: 1126, column: 34, scope: !1018)
!1020 = !DILocation(line: 1126, column: 18, scope: !1018)
!1021 = !DILocalVariable(name: "lam_min", scope: !989, file: !1, line: 1127, type: !287)
!1022 = !DILocation(line: 1127, column: 18, scope: !989)
!1023 = !DILocation(line: 1127, column: 28, scope: !989)
!1024 = !DILocation(line: 1127, column: 28, scope: !1014)
!1025 = !DILocation(line: 1127, column: 28, scope: !1016)
!1026 = !DILocation(line: 1127, column: 28, scope: !1018)
!1027 = !DILocation(line: 1127, column: 18, scope: !1018)
!1028 = !DILocalVariable(name: "F_lam_F", scope: !989, file: !1, line: 1128, type: !50)
!1029 = !DILocation(line: 1128, column: 12, scope: !989)
!1030 = !DILocalVariable(name: "Fp_lam_F", scope: !989, file: !1, line: 1128, type: !50)
!1031 = !DILocation(line: 1128, column: 21, scope: !989)
!1032 = !DILocalVariable(name: "G_lam_G", scope: !989, file: !1, line: 1129, type: !50)
!1033 = !DILocation(line: 1129, column: 12, scope: !989)
!1034 = !DILocalVariable(name: "Gp_lam_G", scope: !989, file: !1, line: 1129, type: !50)
!1035 = !DILocation(line: 1129, column: 21, scope: !989)
!1036 = !DILocalVariable(name: "F_lam_min_unnorm", scope: !989, file: !1, line: 1130, type: !50)
!1037 = !DILocation(line: 1130, column: 12, scope: !989)
!1038 = !DILocalVariable(name: "Fp_lam_min_unnorm", scope: !989, file: !1, line: 1130, type: !50)
!1039 = !DILocation(line: 1130, column: 30, scope: !989)
!1040 = !DILocalVariable(name: "F_lam_min", scope: !989, file: !1, line: 1131, type: !50)
!1041 = !DILocation(line: 1131, column: 12, scope: !989)
!1042 = !DILocalVariable(name: "Fp_lam_min", scope: !989, file: !1, line: 1131, type: !50)
!1043 = !DILocation(line: 1131, column: 23, scope: !989)
!1044 = !DILocalVariable(name: "G_lam_min", scope: !989, file: !1, line: 1132, type: !50)
!1045 = !DILocation(line: 1132, column: 12, scope: !989)
!1046 = !DILocalVariable(name: "Gp_lam_min", scope: !989, file: !1, line: 1132, type: !50)
!1047 = !DILocation(line: 1132, column: 23, scope: !989)
!1048 = !DILocalVariable(name: "Fp_over_F_lam_F", scope: !989, file: !1, line: 1133, type: !50)
!1049 = !DILocation(line: 1133, column: 12, scope: !989)
!1050 = !DILocalVariable(name: "Fp_over_F_lam_min", scope: !989, file: !1, line: 1134, type: !50)
!1051 = !DILocation(line: 1134, column: 12, scope: !989)
!1052 = !DILocalVariable(name: "F_sign_lam_F", scope: !989, file: !1, line: 1135, type: !50)
!1053 = !DILocation(line: 1135, column: 12, scope: !989)
!1054 = !DILocalVariable(name: "F_sign_lam_min", scope: !989, file: !1, line: 1135, type: !50)
!1055 = !DILocation(line: 1135, column: 26, scope: !989)
!1056 = !DILocalVariable(name: "P_lam_min", scope: !989, file: !1, line: 1136, type: !50)
!1057 = !DILocation(line: 1136, column: 12, scope: !989)
!1058 = !DILocalVariable(name: "Q_lam_min", scope: !989, file: !1, line: 1136, type: !50)
!1059 = !DILocation(line: 1136, column: 23, scope: !989)
!1060 = !DILocalVariable(name: "alpha", scope: !989, file: !1, line: 1137, type: !50)
!1061 = !DILocation(line: 1137, column: 12, scope: !989)
!1062 = !DILocalVariable(name: "gamma", scope: !989, file: !1, line: 1138, type: !50)
!1063 = !DILocation(line: 1138, column: 12, scope: !989)
!1064 = !DILocalVariable(name: "F_scale", scope: !989, file: !1, line: 1139, type: !50)
!1065 = !DILocation(line: 1139, column: 12, scope: !989)
!1066 = !DILocalVariable(name: "CF1_count", scope: !989, file: !1, line: 1141, type: !42)
!1067 = !DILocation(line: 1141, column: 9, scope: !989)
!1068 = !DILocalVariable(name: "CF2_count", scope: !989, file: !1, line: 1142, type: !42)
!1069 = !DILocation(line: 1142, column: 9, scope: !989)
!1070 = !DILocalVariable(name: "stat_CF1", scope: !989, file: !1, line: 1143, type: !42)
!1071 = !DILocation(line: 1143, column: 9, scope: !989)
!1072 = !DILocation(line: 1143, column: 32, scope: !989)
!1073 = !DILocation(line: 1143, column: 39, scope: !989)
!1074 = !DILocation(line: 1143, column: 44, scope: !989)
!1075 = !DILocation(line: 1143, column: 20, scope: !989)
!1076 = !DILocalVariable(name: "stat_CF2", scope: !989, file: !1, line: 1144, type: !42)
!1077 = !DILocation(line: 1144, column: 9, scope: !989)
!1078 = !DILocalVariable(name: "stat_Fr", scope: !989, file: !1, line: 1145, type: !42)
!1079 = !DILocation(line: 1145, column: 9, scope: !989)
!1080 = !DILocalVariable(name: "stat_Gr", scope: !989, file: !1, line: 1146, type: !42)
!1081 = !DILocation(line: 1146, column: 9, scope: !989)
!1082 = !DILocalVariable(name: "F_recur_count", scope: !989, file: !1, line: 1148, type: !42)
!1083 = !DILocation(line: 1148, column: 9, scope: !989)
!1084 = !DILocalVariable(name: "G_recur_count", scope: !989, file: !1, line: 1149, type: !42)
!1085 = !DILocation(line: 1149, column: 9, scope: !989)
!1086 = !DILocalVariable(name: "err_amplify", scope: !989, file: !1, line: 1151, type: !50)
!1087 = !DILocation(line: 1151, column: 12, scope: !989)
!1088 = !DILocation(line: 1153, column: 16, scope: !989)
!1089 = !DILocation(line: 1153, column: 29, scope: !989)
!1090 = !DILocation(line: 1153, column: 14, scope: !989)
!1091 = !DILocation(line: 1154, column: 16, scope: !989)
!1092 = !DILocation(line: 1154, column: 34, scope: !989)
!1093 = !DILocation(line: 1154, column: 32, scope: !989)
!1094 = !DILocation(line: 1154, column: 14, scope: !989)
!1095 = !DILocation(line: 1157, column: 21, scope: !989)
!1096 = !DILocation(line: 1157, column: 21, scope: !1014)
!1097 = !DILocation(line: 1157, column: 21, scope: !1016)
!1098 = !DILocation(line: 1157, column: 21, scope: !1018)
!1099 = !DILocation(line: 1157, column: 19, scope: !1018)
!1100 = !DILocation(line: 1158, column: 31, scope: !989)
!1101 = !DILocation(line: 1158, column: 40, scope: !989)
!1102 = !DILocation(line: 1158, column: 55, scope: !989)
!1103 = !DILocation(line: 1158, column: 60, scope: !989)
!1104 = !DILocation(line: 1159, column: 31, scope: !989)
!1105 = !DILocation(line: 1159, column: 40, scope: !989)
!1106 = !DILocation(line: 1158, column: 15, scope: !989)
!1107 = !DILocation(line: 1158, column: 13, scope: !989)
!1108 = !DILocation(line: 1162, column: 25, scope: !989)
!1109 = !DILocation(line: 1162, column: 45, scope: !989)
!1110 = !DILocation(line: 1162, column: 43, scope: !989)
!1111 = !DILocation(line: 1162, column: 23, scope: !989)
!1112 = !DILocation(line: 1165, column: 28, scope: !989)
!1113 = !DILocation(line: 1165, column: 37, scope: !989)
!1114 = !DILocation(line: 1165, column: 42, scope: !989)
!1115 = !DILocation(line: 1165, column: 16, scope: !989)
!1116 = !DILocation(line: 1165, column: 14, scope: !989)
!1117 = !DILocation(line: 1166, column: 13, scope: !989)
!1118 = !DILocation(line: 1166, column: 33, scope: !989)
!1119 = !DILocation(line: 1166, column: 31, scope: !989)
!1120 = !DILocation(line: 1166, column: 11, scope: !989)
!1121 = !DILocation(line: 1167, column: 13, scope: !989)
!1122 = !DILocation(line: 1167, column: 19, scope: !989)
!1123 = !DILocation(line: 1167, column: 18, scope: !989)
!1124 = !DILocation(line: 1167, column: 11, scope: !989)
!1125 = !DILocation(line: 1169, column: 22, scope: !989)
!1126 = !DILocation(line: 1169, column: 20, scope: !989)
!1127 = !DILocation(line: 1171, column: 18, scope: !989)
!1128 = !DILocation(line: 1171, column: 40, scope: !989)
!1129 = !DILocation(line: 1171, column: 46, scope: !989)
!1130 = !DILocation(line: 1171, column: 45, scope: !989)
!1131 = !DILocation(line: 1171, column: 52, scope: !989)
!1132 = !DILocation(line: 1171, column: 51, scope: !989)
!1133 = !DILocation(line: 1171, column: 64, scope: !989)
!1134 = !DILocation(line: 1171, column: 62, scope: !989)
!1135 = !DILocation(line: 1171, column: 35, scope: !989)
!1136 = !DILocation(line: 1171, column: 33, scope: !989)
!1137 = !DILocation(line: 1171, column: 16, scope: !989)
!1138 = !DILocation(line: 1172, column: 18, scope: !989)
!1139 = !DILocation(line: 1172, column: 38, scope: !989)
!1140 = !DILocation(line: 1172, column: 36, scope: !989)
!1141 = !DILocation(line: 1172, column: 16, scope: !989)
!1142 = !DILocation(line: 1173, column: 18, scope: !989)
!1143 = !DILocation(line: 1173, column: 26, scope: !989)
!1144 = !DILocation(line: 1173, column: 24, scope: !989)
!1145 = !DILocation(line: 1173, column: 16, scope: !989)
!1146 = !DILocation(line: 1174, column: 19, scope: !989)
!1147 = !DILocation(line: 1174, column: 31, scope: !989)
!1148 = !DILocation(line: 1174, column: 29, scope: !989)
!1149 = !DILocation(line: 1174, column: 39, scope: !989)
!1150 = !DILocation(line: 1174, column: 37, scope: !989)
!1151 = !DILocation(line: 1174, column: 52, scope: !989)
!1152 = !DILocation(line: 1174, column: 50, scope: !989)
!1153 = !DILocation(line: 1174, column: 16, scope: !989)
!1154 = !DILocation(line: 1177, column: 15, scope: !989)
!1155 = !DILocation(line: 1177, column: 27, scope: !989)
!1156 = !DILocation(line: 1177, column: 25, scope: !989)
!1157 = !DILocation(line: 1177, column: 13, scope: !989)
!1158 = !DILocation(line: 1178, column: 17, scope: !989)
!1159 = !DILocation(line: 1178, column: 14, scope: !989)
!1160 = !DILocation(line: 1179, column: 17, scope: !989)
!1161 = !DILocation(line: 1179, column: 14, scope: !989)
!1162 = !DILocation(line: 1182, column: 21, scope: !989)
!1163 = !DILocation(line: 1182, column: 21, scope: !1014)
!1164 = !DILocation(line: 1182, column: 21, scope: !1016)
!1165 = !DILocation(line: 1182, column: 21, scope: !1018)
!1166 = !DILocation(line: 1182, column: 19, scope: !1018)
!1167 = !DILocation(line: 1183, column: 31, scope: !989)
!1168 = !DILocation(line: 1183, column: 40, scope: !989)
!1169 = !DILocation(line: 1183, column: 55, scope: !989)
!1170 = !DILocation(line: 1183, column: 60, scope: !989)
!1171 = !DILocation(line: 1184, column: 31, scope: !989)
!1172 = !DILocation(line: 1184, column: 42, scope: !989)
!1173 = !DILocation(line: 1183, column: 15, scope: !989)
!1174 = !DILocation(line: 1183, column: 13, scope: !989)
!1175 = !DILocation(line: 1188, column: 19, scope: !989)
!1176 = !DILocation(line: 1188, column: 31, scope: !989)
!1177 = !DILocation(line: 1188, column: 29, scope: !989)
!1178 = !DILocation(line: 1188, column: 43, scope: !989)
!1179 = !DILocation(line: 1188, column: 41, scope: !989)
!1180 = !DILocation(line: 1188, column: 59, scope: !989)
!1181 = !DILocation(line: 1188, column: 57, scope: !989)
!1182 = !DILocation(line: 1188, column: 73, scope: !989)
!1183 = !DILocation(line: 1188, column: 17, scope: !989)
!1184 = !DILocation(line: 1190, column: 15, scope: !989)
!1185 = !DILocation(line: 1190, column: 5, scope: !989)
!1186 = !DILocation(line: 1190, column: 8, scope: !989)
!1187 = !DILocation(line: 1190, column: 13, scope: !989)
!1188 = !DILocation(line: 1191, column: 19, scope: !989)
!1189 = !DILocation(line: 1191, column: 18, scope: !989)
!1190 = !DILocation(line: 1191, column: 30, scope: !989)
!1191 = !DILocation(line: 1191, column: 54, scope: !989)
!1192 = !DILocation(line: 1191, column: 57, scope: !989)
!1193 = !DILocation(line: 1191, column: 49, scope: !989)
!1194 = !DILocation(line: 1191, column: 47, scope: !989)
!1195 = !DILocation(line: 1191, column: 5, scope: !989)
!1196 = !DILocation(line: 1191, column: 8, scope: !989)
!1197 = !DILocation(line: 1191, column: 13, scope: !989)
!1198 = !DILocation(line: 1193, column: 15, scope: !989)
!1199 = !DILocation(line: 1193, column: 5, scope: !989)
!1200 = !DILocation(line: 1193, column: 9, scope: !989)
!1201 = !DILocation(line: 1193, column: 13, scope: !989)
!1202 = !DILocation(line: 1194, column: 19, scope: !989)
!1203 = !DILocation(line: 1194, column: 18, scope: !989)
!1204 = !DILocation(line: 1194, column: 30, scope: !989)
!1205 = !DILocation(line: 1194, column: 54, scope: !989)
!1206 = !DILocation(line: 1194, column: 58, scope: !989)
!1207 = !DILocation(line: 1194, column: 49, scope: !989)
!1208 = !DILocation(line: 1194, column: 47, scope: !989)
!1209 = !DILocation(line: 1194, column: 5, scope: !989)
!1210 = !DILocation(line: 1194, column: 9, scope: !989)
!1211 = !DILocation(line: 1194, column: 13, scope: !989)
!1212 = !DILocation(line: 1196, column: 15, scope: !989)
!1213 = !DILocation(line: 1196, column: 5, scope: !989)
!1214 = !DILocation(line: 1196, column: 8, scope: !989)
!1215 = !DILocation(line: 1196, column: 13, scope: !989)
!1216 = !DILocation(line: 1197, column: 19, scope: !989)
!1217 = !DILocation(line: 1197, column: 18, scope: !989)
!1218 = !DILocation(line: 1197, column: 30, scope: !989)
!1219 = !DILocation(line: 1197, column: 54, scope: !989)
!1220 = !DILocation(line: 1197, column: 57, scope: !989)
!1221 = !DILocation(line: 1197, column: 49, scope: !989)
!1222 = !DILocation(line: 1197, column: 47, scope: !989)
!1223 = !DILocation(line: 1197, column: 5, scope: !989)
!1224 = !DILocation(line: 1197, column: 8, scope: !989)
!1225 = !DILocation(line: 1197, column: 13, scope: !989)
!1226 = !DILocation(line: 1199, column: 15, scope: !989)
!1227 = !DILocation(line: 1199, column: 5, scope: !989)
!1228 = !DILocation(line: 1199, column: 9, scope: !989)
!1229 = !DILocation(line: 1199, column: 13, scope: !989)
!1230 = !DILocation(line: 1200, column: 19, scope: !989)
!1231 = !DILocation(line: 1200, column: 18, scope: !989)
!1232 = !DILocation(line: 1200, column: 30, scope: !989)
!1233 = !DILocation(line: 1200, column: 54, scope: !989)
!1234 = !DILocation(line: 1200, column: 58, scope: !989)
!1235 = !DILocation(line: 1200, column: 49, scope: !989)
!1236 = !DILocation(line: 1200, column: 47, scope: !989)
!1237 = !DILocation(line: 1200, column: 5, scope: !989)
!1238 = !DILocation(line: 1200, column: 9, scope: !989)
!1239 = !DILocation(line: 1200, column: 13, scope: !989)
!1240 = !DILocation(line: 1202, column: 6, scope: !989)
!1241 = !DILocation(line: 1202, column: 12, scope: !989)
!1242 = !DILocation(line: 1203, column: 6, scope: !989)
!1243 = !DILocation(line: 1203, column: 12, scope: !989)
!1244 = !DILocation(line: 1205, column: 12, scope: !989)
!1245 = !DILocation(line: 1205, column: 12, scope: !1014)
!1246 = !DILocation(line: 1205, column: 12, scope: !1016)
!1247 = !DILocation(line: 1205, column: 12, scope: !1018)
!1248 = !DILocation(line: 1205, column: 12, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 4)
!1250 = !DILocation(line: 1205, column: 12, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 5)
!1252 = !DILocation(line: 1205, column: 12, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 6)
!1254 = !DILocation(line: 1205, column: 12, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 7)
!1256 = !DILocation(line: 1205, column: 12, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 8)
!1258 = !DILocation(line: 1205, column: 12, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 9)
!1260 = !DILocation(line: 1205, column: 12, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 10)
!1262 = !DILocation(line: 1205, column: 12, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 11)
!1264 = !DILocation(line: 1205, column: 12, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 12)
!1266 = !DILocation(line: 1205, column: 5, scope: !1265)
!1267 = !DILocation(line: 1207, column: 1, scope: !284)
!1268 = distinct !DISubprogram(name: "coulomb_CF1", scope: !1, file: !1, line: 595, type: !1269, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!42, !50, !50, !50, !227, !227, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!1272 = !DILocalVariable(name: "lambda", arg: 1, scope: !1268, file: !1, line: 595, type: !50)
!1273 = !DILocation(line: 595, column: 20, scope: !1268)
!1274 = !DILocalVariable(name: "eta", arg: 2, scope: !1268, file: !1, line: 596, type: !50)
!1275 = !DILocation(line: 596, column: 20, scope: !1268)
!1276 = !DILocalVariable(name: "x", arg: 3, scope: !1268, file: !1, line: 596, type: !50)
!1277 = !DILocation(line: 596, column: 32, scope: !1268)
!1278 = !DILocalVariable(name: "fcl_sign", arg: 4, scope: !1268, file: !1, line: 597, type: !227)
!1279 = !DILocation(line: 597, column: 22, scope: !1268)
!1280 = !DILocalVariable(name: "result", arg: 5, scope: !1268, file: !1, line: 598, type: !227)
!1281 = !DILocation(line: 598, column: 22, scope: !1268)
!1282 = !DILocalVariable(name: "count", arg: 6, scope: !1268, file: !1, line: 599, type: !1271)
!1283 = !DILocation(line: 599, column: 19, scope: !1268)
!1284 = !DILocalVariable(name: "CF1_small", scope: !1268, file: !1, line: 602, type: !287)
!1285 = !DILocation(line: 602, column: 16, scope: !1268)
!1286 = !DILocalVariable(name: "CF1_abort", scope: !1268, file: !1, line: 603, type: !287)
!1287 = !DILocation(line: 603, column: 16, scope: !1268)
!1288 = !DILocalVariable(name: "CF1_acc", scope: !1268, file: !1, line: 604, type: !287)
!1289 = !DILocation(line: 604, column: 16, scope: !1268)
!1290 = !DILocalVariable(name: "x_inv", scope: !1268, file: !1, line: 605, type: !287)
!1291 = !DILocation(line: 605, column: 16, scope: !1268)
!1292 = !DILocation(line: 605, column: 32, scope: !1268)
!1293 = !DILocation(line: 605, column: 31, scope: !1268)
!1294 = !DILocalVariable(name: "px", scope: !1268, file: !1, line: 606, type: !287)
!1295 = !DILocation(line: 606, column: 16, scope: !1268)
!1296 = !DILocation(line: 606, column: 28, scope: !1268)
!1297 = !DILocation(line: 606, column: 35, scope: !1268)
!1298 = !DILocation(line: 606, column: 41, scope: !1268)
!1299 = !DILocalVariable(name: "pk", scope: !1268, file: !1, line: 608, type: !50)
!1300 = !DILocation(line: 608, column: 10, scope: !1268)
!1301 = !DILocation(line: 608, column: 15, scope: !1268)
!1302 = !DILocation(line: 608, column: 22, scope: !1268)
!1303 = !DILocalVariable(name: "F", scope: !1268, file: !1, line: 609, type: !50)
!1304 = !DILocation(line: 609, column: 10, scope: !1268)
!1305 = !DILocation(line: 609, column: 15, scope: !1268)
!1306 = !DILocation(line: 609, column: 19, scope: !1268)
!1307 = !DILocation(line: 609, column: 18, scope: !1268)
!1308 = !DILocation(line: 609, column: 24, scope: !1268)
!1309 = !DILocation(line: 609, column: 27, scope: !1268)
!1310 = !DILocation(line: 609, column: 26, scope: !1268)
!1311 = !DILocation(line: 609, column: 22, scope: !1268)
!1312 = !DILocalVariable(name: "D", scope: !1268, file: !1, line: 610, type: !50)
!1313 = !DILocation(line: 610, column: 10, scope: !1268)
!1314 = !DILocalVariable(name: "C", scope: !1268, file: !1, line: 610, type: !50)
!1315 = !DILocation(line: 610, column: 13, scope: !1268)
!1316 = !DILocalVariable(name: "df", scope: !1268, file: !1, line: 611, type: !50)
!1317 = !DILocation(line: 611, column: 10, scope: !1268)
!1318 = !DILocation(line: 613, column: 4, scope: !1268)
!1319 = !DILocation(line: 613, column: 13, scope: !1268)
!1320 = !DILocation(line: 614, column: 4, scope: !1268)
!1321 = !DILocation(line: 614, column: 10, scope: !1268)
!1322 = !DILocation(line: 616, column: 11, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 616, column: 6)
!1324 = !DILocation(line: 616, column: 6, scope: !1323)
!1325 = !DILocation(line: 616, column: 14, scope: !1323)
!1326 = !DILocation(line: 616, column: 6, scope: !1268)
!1327 = !DILocation(line: 616, column: 29, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1323, file: !1, discriminator: 1)
!1329 = !DILocation(line: 616, column: 27, scope: !1328)
!1330 = !DILocation(line: 617, column: 5, scope: !1268)
!1331 = !DILocation(line: 618, column: 7, scope: !1268)
!1332 = !DILocation(line: 618, column: 5, scope: !1268)
!1333 = !DILocation(line: 620, column: 3, scope: !1268)
!1334 = distinct !{!1334, !1333}
!1335 = !DILocalVariable(name: "pk1", scope: !1336, file: !1, line: 621, type: !50)
!1336 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 620, column: 6)
!1337 = !DILocation(line: 621, column: 12, scope: !1336)
!1338 = !DILocation(line: 621, column: 18, scope: !1336)
!1339 = !DILocation(line: 621, column: 21, scope: !1336)
!1340 = !DILocalVariable(name: "ek", scope: !1336, file: !1, line: 622, type: !50)
!1341 = !DILocation(line: 622, column: 12, scope: !1336)
!1342 = !DILocation(line: 622, column: 18, scope: !1336)
!1343 = !DILocation(line: 622, column: 24, scope: !1336)
!1344 = !DILocation(line: 622, column: 22, scope: !1336)
!1345 = !DILocalVariable(name: "rk2", scope: !1336, file: !1, line: 623, type: !50)
!1346 = !DILocation(line: 623, column: 12, scope: !1336)
!1347 = !DILocation(line: 623, column: 24, scope: !1336)
!1348 = !DILocation(line: 623, column: 27, scope: !1336)
!1349 = !DILocation(line: 623, column: 26, scope: !1336)
!1350 = !DILocation(line: 623, column: 22, scope: !1336)
!1351 = !DILocalVariable(name: "tk", scope: !1336, file: !1, line: 624, type: !50)
!1352 = !DILocation(line: 624, column: 12, scope: !1336)
!1353 = !DILocation(line: 624, column: 19, scope: !1336)
!1354 = !DILocation(line: 624, column: 24, scope: !1336)
!1355 = !DILocation(line: 624, column: 22, scope: !1336)
!1356 = !DILocation(line: 624, column: 30, scope: !1336)
!1357 = !DILocation(line: 624, column: 38, scope: !1336)
!1358 = !DILocation(line: 624, column: 41, scope: !1336)
!1359 = !DILocation(line: 624, column: 40, scope: !1336)
!1360 = !DILocation(line: 624, column: 36, scope: !1336)
!1361 = !DILocation(line: 624, column: 28, scope: !1336)
!1362 = !DILocation(line: 625, column: 12, scope: !1336)
!1363 = !DILocation(line: 625, column: 17, scope: !1336)
!1364 = !DILocation(line: 625, column: 23, scope: !1336)
!1365 = !DILocation(line: 625, column: 21, scope: !1336)
!1366 = !DILocation(line: 625, column: 15, scope: !1336)
!1367 = !DILocation(line: 625, column: 9, scope: !1336)
!1368 = !DILocation(line: 626, column: 12, scope: !1336)
!1369 = !DILocation(line: 626, column: 17, scope: !1336)
!1370 = !DILocation(line: 626, column: 23, scope: !1336)
!1371 = !DILocation(line: 626, column: 21, scope: !1336)
!1372 = !DILocation(line: 626, column: 15, scope: !1336)
!1373 = !DILocation(line: 626, column: 9, scope: !1336)
!1374 = !DILocation(line: 627, column: 13, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 627, column: 8)
!1376 = !DILocation(line: 627, column: 8, scope: !1375)
!1377 = !DILocation(line: 627, column: 16, scope: !1375)
!1378 = !DILocation(line: 627, column: 8, scope: !1336)
!1379 = !DILocation(line: 627, column: 31, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1375, file: !1, discriminator: 1)
!1381 = !DILocation(line: 627, column: 29, scope: !1380)
!1382 = !DILocation(line: 628, column: 13, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 628, column: 8)
!1384 = !DILocation(line: 628, column: 8, scope: !1383)
!1385 = !DILocation(line: 628, column: 16, scope: !1383)
!1386 = !DILocation(line: 628, column: 8, scope: !1336)
!1387 = !DILocation(line: 628, column: 31, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1383, file: !1, discriminator: 1)
!1389 = !DILocation(line: 628, column: 29, scope: !1388)
!1390 = !DILocation(line: 629, column: 13, scope: !1336)
!1391 = !DILocation(line: 629, column: 12, scope: !1336)
!1392 = !DILocation(line: 629, column: 7, scope: !1336)
!1393 = !DILocation(line: 630, column: 10, scope: !1336)
!1394 = !DILocation(line: 630, column: 14, scope: !1336)
!1395 = !DILocation(line: 630, column: 12, scope: !1336)
!1396 = !DILocation(line: 630, column: 8, scope: !1336)
!1397 = !DILocation(line: 631, column: 10, scope: !1336)
!1398 = !DILocation(line: 631, column: 14, scope: !1336)
!1399 = !DILocation(line: 631, column: 12, scope: !1336)
!1400 = !DILocation(line: 631, column: 8, scope: !1336)
!1401 = !DILocation(line: 632, column: 8, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 632, column: 8)
!1403 = !DILocation(line: 632, column: 10, scope: !1402)
!1404 = !DILocation(line: 632, column: 8, scope: !1336)
!1405 = !DILocation(line: 634, column: 22, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 632, column: 17)
!1407 = !DILocation(line: 634, column: 21, scope: !1406)
!1408 = !DILocation(line: 634, column: 19, scope: !1406)
!1409 = !DILocation(line: 634, column: 8, scope: !1406)
!1410 = !DILocation(line: 634, column: 17, scope: !1406)
!1411 = !DILocation(line: 635, column: 5, scope: !1406)
!1412 = !DILocation(line: 636, column: 10, scope: !1336)
!1413 = !DILocation(line: 636, column: 8, scope: !1336)
!1414 = !DILocation(line: 637, column: 9, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 637, column: 9)
!1416 = !DILocation(line: 637, column: 14, scope: !1415)
!1417 = !DILocation(line: 637, column: 12, scope: !1415)
!1418 = !DILocation(line: 637, column: 9, scope: !1336)
!1419 = !DILocation(line: 638, column: 17, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 637, column: 19)
!1421 = !DILocation(line: 638, column: 8, scope: !1420)
!1422 = !DILocation(line: 638, column: 15, scope: !1420)
!1423 = !DILocation(line: 639, column: 7, scope: !1420)
!1424 = distinct !{!1424, !1423}
!1425 = !DILocation(line: 639, column: 7, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1427, file: !1, discriminator: 1)
!1427 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 639, column: 7)
!1428 = !DILocation(line: 640, column: 5, scope: !1420)
!1429 = !DILocation(line: 641, column: 9, scope: !1336)
!1430 = !DILocation(line: 641, column: 5, scope: !1336)
!1431 = !DILocation(line: 642, column: 3, scope: !1336)
!1432 = !DILocation(line: 643, column: 14, scope: !1268)
!1433 = !DILocation(line: 643, column: 16, scope: !1268)
!1434 = !DILocation(line: 643, column: 9, scope: !1268)
!1435 = !DILocation(line: 643, column: 22, scope: !1268)
!1436 = !DILocation(line: 642, column: 3, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1336, file: !1, discriminator: 1)
!1438 = !DILocation(line: 645, column: 13, scope: !1268)
!1439 = !DILocation(line: 645, column: 4, scope: !1268)
!1440 = !DILocation(line: 645, column: 11, scope: !1268)
!1441 = !DILocation(line: 646, column: 3, scope: !1268)
!1442 = !DILocation(line: 647, column: 1, scope: !1268)
!1443 = distinct !DISubprogram(name: "coulomb_F_recur", scope: !1, file: !1, line: 520, type: !1444, isLocal: true, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!42, !50, !42, !50, !50, !50, !50, !227, !227}
!1446 = !DILocalVariable(name: "lam_min", arg: 1, scope: !1443, file: !1, line: 520, type: !50)
!1447 = !DILocation(line: 520, column: 24, scope: !1443)
!1448 = !DILocalVariable(name: "kmax", arg: 2, scope: !1443, file: !1, line: 520, type: !42)
!1449 = !DILocation(line: 520, column: 37, scope: !1443)
!1450 = !DILocalVariable(name: "eta", arg: 3, scope: !1443, file: !1, line: 521, type: !50)
!1451 = !DILocation(line: 521, column: 24, scope: !1443)
!1452 = !DILocalVariable(name: "x", arg: 4, scope: !1443, file: !1, line: 521, type: !50)
!1453 = !DILocation(line: 521, column: 36, scope: !1443)
!1454 = !DILocalVariable(name: "F_lam_max", arg: 5, scope: !1443, file: !1, line: 522, type: !50)
!1455 = !DILocation(line: 522, column: 24, scope: !1443)
!1456 = !DILocalVariable(name: "Fp_lam_max", arg: 6, scope: !1443, file: !1, line: 522, type: !50)
!1457 = !DILocation(line: 522, column: 42, scope: !1443)
!1458 = !DILocalVariable(name: "F_lam_min", arg: 7, scope: !1443, file: !1, line: 523, type: !227)
!1459 = !DILocation(line: 523, column: 26, scope: !1443)
!1460 = !DILocalVariable(name: "Fp_lam_min", arg: 8, scope: !1443, file: !1, line: 523, type: !227)
!1461 = !DILocation(line: 523, column: 46, scope: !1443)
!1462 = !DILocalVariable(name: "x_inv", scope: !1443, file: !1, line: 526, type: !50)
!1463 = !DILocation(line: 526, column: 10, scope: !1443)
!1464 = !DILocation(line: 526, column: 22, scope: !1443)
!1465 = !DILocation(line: 526, column: 21, scope: !1443)
!1466 = !DILocalVariable(name: "fcl", scope: !1443, file: !1, line: 527, type: !50)
!1467 = !DILocation(line: 527, column: 10, scope: !1443)
!1468 = !DILocation(line: 527, column: 16, scope: !1443)
!1469 = !DILocalVariable(name: "fpl", scope: !1443, file: !1, line: 528, type: !50)
!1470 = !DILocation(line: 528, column: 10, scope: !1443)
!1471 = !DILocation(line: 528, column: 16, scope: !1443)
!1472 = !DILocalVariable(name: "lam_max", scope: !1443, file: !1, line: 529, type: !50)
!1473 = !DILocation(line: 529, column: 10, scope: !1443)
!1474 = !DILocation(line: 529, column: 20, scope: !1443)
!1475 = !DILocation(line: 529, column: 30, scope: !1443)
!1476 = !DILocation(line: 529, column: 28, scope: !1443)
!1477 = !DILocalVariable(name: "lam", scope: !1443, file: !1, line: 530, type: !50)
!1478 = !DILocation(line: 530, column: 10, scope: !1443)
!1479 = !DILocation(line: 530, column: 16, scope: !1443)
!1480 = !DILocalVariable(name: "k", scope: !1443, file: !1, line: 531, type: !42)
!1481 = !DILocation(line: 531, column: 7, scope: !1443)
!1482 = !DILocation(line: 533, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 533, column: 3)
!1484 = !DILocation(line: 533, column: 13, scope: !1483)
!1485 = !DILocation(line: 533, column: 8, scope: !1483)
!1486 = !DILocation(line: 533, column: 7, scope: !1483)
!1487 = !DILocation(line: 533, column: 17, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 1)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !1, line: 533, column: 3)
!1490 = !DILocation(line: 533, column: 18, scope: !1488)
!1491 = !DILocation(line: 533, column: 3, scope: !1488)
!1492 = !DILocalVariable(name: "el", scope: !1493, file: !1, line: 534, type: !50)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 533, column: 28)
!1494 = !DILocation(line: 534, column: 12, scope: !1493)
!1495 = !DILocation(line: 534, column: 17, scope: !1493)
!1496 = !DILocation(line: 534, column: 21, scope: !1493)
!1497 = !DILocation(line: 534, column: 20, scope: !1493)
!1498 = !DILocalVariable(name: "rl", scope: !1493, file: !1, line: 535, type: !50)
!1499 = !DILocation(line: 535, column: 12, scope: !1493)
!1500 = !DILocation(line: 535, column: 28, scope: !1493)
!1501 = !DILocation(line: 535, column: 17, scope: !1493)
!1502 = !DILocalVariable(name: "sl", scope: !1493, file: !1, line: 536, type: !50)
!1503 = !DILocation(line: 536, column: 12, scope: !1493)
!1504 = !DILocation(line: 536, column: 17, scope: !1493)
!1505 = !DILocation(line: 536, column: 23, scope: !1493)
!1506 = !DILocation(line: 536, column: 27, scope: !1493)
!1507 = !DILocation(line: 536, column: 26, scope: !1493)
!1508 = !DILocation(line: 536, column: 21, scope: !1493)
!1509 = !DILocalVariable(name: "fc_lm1", scope: !1493, file: !1, line: 537, type: !50)
!1510 = !DILocation(line: 537, column: 12, scope: !1493)
!1511 = !DILocation(line: 538, column: 15, scope: !1493)
!1512 = !DILocation(line: 538, column: 19, scope: !1493)
!1513 = !DILocation(line: 538, column: 18, scope: !1493)
!1514 = !DILocation(line: 538, column: 24, scope: !1493)
!1515 = !DILocation(line: 538, column: 22, scope: !1493)
!1516 = !DILocation(line: 538, column: 29, scope: !1493)
!1517 = !DILocation(line: 538, column: 28, scope: !1493)
!1518 = !DILocation(line: 538, column: 12, scope: !1493)
!1519 = !DILocation(line: 539, column: 15, scope: !1493)
!1520 = !DILocation(line: 539, column: 22, scope: !1493)
!1521 = !DILocation(line: 539, column: 21, scope: !1493)
!1522 = !DILocation(line: 539, column: 27, scope: !1493)
!1523 = !DILocation(line: 539, column: 31, scope: !1493)
!1524 = !DILocation(line: 539, column: 30, scope: !1493)
!1525 = !DILocation(line: 539, column: 25, scope: !1493)
!1526 = !DILocation(line: 539, column: 12, scope: !1493)
!1527 = !DILocation(line: 540, column: 15, scope: !1493)
!1528 = !DILocation(line: 540, column: 12, scope: !1493)
!1529 = !DILocation(line: 541, column: 9, scope: !1493)
!1530 = !DILocation(line: 542, column: 3, scope: !1493)
!1531 = !DILocation(line: 533, column: 24, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 2)
!1533 = !DILocation(line: 533, column: 3, scope: !1532)
!1534 = distinct !{!1534, !1535}
!1535 = !DILocation(line: 533, column: 3, scope: !1443)
!1536 = !DILocation(line: 544, column: 17, scope: !1443)
!1537 = !DILocation(line: 544, column: 4, scope: !1443)
!1538 = !DILocation(line: 544, column: 15, scope: !1443)
!1539 = !DILocation(line: 545, column: 17, scope: !1443)
!1540 = !DILocation(line: 545, column: 4, scope: !1443)
!1541 = !DILocation(line: 545, column: 15, scope: !1443)
!1542 = !DILocation(line: 546, column: 3, scope: !1443)
!1543 = distinct !DISubprogram(name: "coulomb_FGmhalf_series", scope: !1, file: !1, line: 451, type: !1544, isLocal: true, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!42, !287, !287, !51, !51}
!1546 = !DILocalVariable(name: "eta", arg: 1, scope: !1543, file: !1, line: 451, type: !287)
!1547 = !DILocation(line: 451, column: 37, scope: !1543)
!1548 = !DILocalVariable(name: "x", arg: 2, scope: !1543, file: !1, line: 451, type: !287)
!1549 = !DILocation(line: 451, column: 55, scope: !1543)
!1550 = !DILocalVariable(name: "F", arg: 3, scope: !1543, file: !1, line: 452, type: !51)
!1551 = !DILocation(line: 452, column: 40, scope: !1543)
!1552 = !DILocalVariable(name: "G", arg: 4, scope: !1543, file: !1, line: 452, type: !51)
!1553 = !DILocation(line: 452, column: 59, scope: !1543)
!1554 = !DILocalVariable(name: "max_iter", scope: !1543, file: !1, line: 454, type: !288)
!1555 = !DILocation(line: 454, column: 13, scope: !1543)
!1556 = !DILocalVariable(name: "rx", scope: !1543, file: !1, line: 455, type: !287)
!1557 = !DILocation(line: 455, column: 16, scope: !1543)
!1558 = !DILocation(line: 455, column: 27, scope: !1543)
!1559 = !DILocation(line: 455, column: 22, scope: !1543)
!1560 = !DILocalVariable(name: "x2", scope: !1543, file: !1, line: 456, type: !287)
!1561 = !DILocation(line: 456, column: 16, scope: !1543)
!1562 = !DILocation(line: 456, column: 22, scope: !1543)
!1563 = !DILocation(line: 456, column: 24, scope: !1543)
!1564 = !DILocation(line: 456, column: 23, scope: !1543)
!1565 = !DILocalVariable(name: "tex", scope: !1543, file: !1, line: 457, type: !287)
!1566 = !DILocation(line: 457, column: 16, scope: !1543)
!1567 = !DILocation(line: 457, column: 26, scope: !1543)
!1568 = !DILocation(line: 457, column: 25, scope: !1543)
!1569 = !DILocation(line: 457, column: 30, scope: !1543)
!1570 = !DILocation(line: 457, column: 29, scope: !1543)
!1571 = !DILocalVariable(name: "Cmhalf", scope: !1543, file: !1, line: 458, type: !52)
!1572 = !DILocation(line: 458, column: 17, scope: !1543)
!1573 = !DILocalVariable(name: "stat_CL", scope: !1543, file: !1, line: 459, type: !42)
!1574 = !DILocation(line: 459, column: 7, scope: !1543)
!1575 = !DILocation(line: 459, column: 29, scope: !1543)
!1576 = !DILocation(line: 459, column: 17, scope: !1543)
!1577 = !DILocalVariable(name: "u_mm2", scope: !1543, file: !1, line: 460, type: !50)
!1578 = !DILocation(line: 460, column: 10, scope: !1543)
!1579 = !DILocalVariable(name: "u_mm1", scope: !1543, file: !1, line: 461, type: !50)
!1580 = !DILocation(line: 461, column: 10, scope: !1543)
!1581 = !DILocation(line: 461, column: 18, scope: !1543)
!1582 = !DILocation(line: 461, column: 24, scope: !1543)
!1583 = !DILocation(line: 461, column: 22, scope: !1543)
!1584 = !DILocalVariable(name: "u_m", scope: !1543, file: !1, line: 462, type: !50)
!1585 = !DILocation(line: 462, column: 10, scope: !1543)
!1586 = !DILocalVariable(name: "v_mm2", scope: !1543, file: !1, line: 463, type: !50)
!1587 = !DILocation(line: 463, column: 10, scope: !1543)
!1588 = !DILocalVariable(name: "v_mm1", scope: !1543, file: !1, line: 463, type: !50)
!1589 = !DILocation(line: 463, column: 17, scope: !1543)
!1590 = !DILocalVariable(name: "v_m", scope: !1543, file: !1, line: 463, type: !50)
!1591 = !DILocation(line: 463, column: 24, scope: !1543)
!1592 = !DILocalVariable(name: "f_sum", scope: !1543, file: !1, line: 464, type: !50)
!1593 = !DILocation(line: 464, column: 10, scope: !1543)
!1594 = !DILocalVariable(name: "g_sum", scope: !1543, file: !1, line: 464, type: !50)
!1595 = !DILocation(line: 464, column: 17, scope: !1543)
!1596 = !DILocalVariable(name: "tmp1", scope: !1543, file: !1, line: 465, type: !50)
!1597 = !DILocation(line: 465, column: 10, scope: !1543)
!1598 = !DILocalVariable(name: "rpsi_1pe", scope: !1543, file: !1, line: 466, type: !52)
!1599 = !DILocation(line: 466, column: 17, scope: !1543)
!1600 = !DILocalVariable(name: "rpsi_1p2e", scope: !1543, file: !1, line: 467, type: !52)
!1601 = !DILocation(line: 467, column: 17, scope: !1543)
!1602 = !DILocalVariable(name: "m", scope: !1543, file: !1, line: 468, type: !42)
!1603 = !DILocation(line: 468, column: 7, scope: !1543)
!1604 = !DILocation(line: 470, column: 21, scope: !1543)
!1605 = !DILocation(line: 470, column: 3, scope: !1543)
!1606 = !DILocation(line: 471, column: 25, scope: !1543)
!1607 = !DILocation(line: 471, column: 24, scope: !1543)
!1608 = !DILocation(line: 471, column: 3, scope: !1543)
!1609 = !DILocation(line: 473, column: 42, scope: !1543)
!1610 = !DILocation(line: 473, column: 31, scope: !1543)
!1611 = !DILocation(line: 473, column: 62, scope: !1543)
!1612 = !DILocation(line: 473, column: 51, scope: !1543)
!1613 = !DILocation(line: 473, column: 46, scope: !1543)
!1614 = !DILocation(line: 473, column: 9, scope: !1543)
!1615 = !DILocation(line: 474, column: 11, scope: !1543)
!1616 = !DILocation(line: 474, column: 16, scope: !1543)
!1617 = !DILocation(line: 474, column: 28, scope: !1543)
!1618 = !DILocation(line: 474, column: 27, scope: !1543)
!1619 = !DILocation(line: 474, column: 22, scope: !1543)
!1620 = !DILocation(line: 474, column: 14, scope: !1543)
!1621 = !DILocation(line: 474, column: 9, scope: !1543)
!1622 = !DILocation(line: 476, column: 11, scope: !1543)
!1623 = !DILocation(line: 476, column: 19, scope: !1543)
!1624 = !DILocation(line: 476, column: 17, scope: !1543)
!1625 = !DILocation(line: 476, column: 9, scope: !1543)
!1626 = !DILocation(line: 477, column: 11, scope: !1543)
!1627 = !DILocation(line: 477, column: 19, scope: !1543)
!1628 = !DILocation(line: 477, column: 17, scope: !1543)
!1629 = !DILocation(line: 477, column: 9, scope: !1543)
!1630 = !DILocation(line: 479, column: 3, scope: !1543)
!1631 = !DILocation(line: 479, column: 9, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1543, file: !1, discriminator: 1)
!1633 = !DILocation(line: 479, column: 11, scope: !1632)
!1634 = !DILocation(line: 479, column: 3, scope: !1632)
!1635 = !DILocalVariable(name: "m2", scope: !1636, file: !1, line: 480, type: !50)
!1636 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 479, column: 23)
!1637 = !DILocation(line: 480, column: 12, scope: !1636)
!1638 = !DILocation(line: 480, column: 17, scope: !1636)
!1639 = !DILocation(line: 480, column: 19, scope: !1636)
!1640 = !DILocation(line: 480, column: 18, scope: !1636)
!1641 = !DILocation(line: 481, column: 12, scope: !1636)
!1642 = !DILocation(line: 481, column: 16, scope: !1636)
!1643 = !DILocation(line: 481, column: 15, scope: !1636)
!1644 = !DILocation(line: 481, column: 24, scope: !1636)
!1645 = !DILocation(line: 481, column: 27, scope: !1636)
!1646 = !DILocation(line: 481, column: 26, scope: !1636)
!1647 = !DILocation(line: 481, column: 22, scope: !1636)
!1648 = !DILocation(line: 481, column: 34, scope: !1636)
!1649 = !DILocation(line: 481, column: 33, scope: !1636)
!1650 = !DILocation(line: 481, column: 9, scope: !1636)
!1651 = !DILocation(line: 482, column: 12, scope: !1636)
!1652 = !DILocation(line: 482, column: 16, scope: !1636)
!1653 = !DILocation(line: 482, column: 15, scope: !1636)
!1654 = !DILocation(line: 482, column: 24, scope: !1636)
!1655 = !DILocation(line: 482, column: 27, scope: !1636)
!1656 = !DILocation(line: 482, column: 26, scope: !1636)
!1657 = !DILocation(line: 482, column: 22, scope: !1636)
!1658 = !DILocation(line: 482, column: 39, scope: !1636)
!1659 = !DILocation(line: 482, column: 38, scope: !1636)
!1660 = !DILocation(line: 482, column: 41, scope: !1636)
!1661 = !DILocation(line: 482, column: 40, scope: !1636)
!1662 = !DILocation(line: 482, column: 33, scope: !1636)
!1663 = !DILocation(line: 482, column: 46, scope: !1636)
!1664 = !DILocation(line: 482, column: 45, scope: !1636)
!1665 = !DILocation(line: 482, column: 9, scope: !1636)
!1666 = !DILocation(line: 483, column: 14, scope: !1636)
!1667 = !DILocation(line: 483, column: 11, scope: !1636)
!1668 = !DILocation(line: 484, column: 14, scope: !1636)
!1669 = !DILocation(line: 484, column: 11, scope: !1636)
!1670 = !DILocation(line: 485, column: 11, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 485, column: 11)
!1672 = !DILocation(line: 485, column: 17, scope: !1671)
!1673 = !DILocation(line: 486, column: 8, scope: !1671)
!1674 = !DILocation(line: 486, column: 11, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1671, file: !1, discriminator: 1)
!1676 = !DILocation(line: 486, column: 17, scope: !1675)
!1677 = !DILocation(line: 487, column: 8, scope: !1671)
!1678 = !DILocation(line: 487, column: 17, scope: !1675)
!1679 = !DILocation(line: 487, column: 21, scope: !1675)
!1680 = !DILocation(line: 487, column: 20, scope: !1675)
!1681 = !DILocation(line: 487, column: 12, scope: !1675)
!1682 = !DILocation(line: 487, column: 35, scope: !1675)
!1683 = !DILocation(line: 487, column: 39, scope: !1675)
!1684 = !DILocation(line: 487, column: 38, scope: !1675)
!1685 = !DILocation(line: 487, column: 30, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1675, file: !1, discriminator: 3)
!1687 = !DILocation(line: 487, column: 28, scope: !1675)
!1688 = !DILocation(line: 487, column: 46, scope: !1675)
!1689 = !DILocation(line: 485, column: 11, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1636, file: !1, discriminator: 1)
!1691 = !DILocation(line: 487, column: 71, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1671, file: !1, discriminator: 2)
!1693 = !DILocation(line: 488, column: 13, scope: !1636)
!1694 = !DILocation(line: 488, column: 11, scope: !1636)
!1695 = !DILocation(line: 489, column: 13, scope: !1636)
!1696 = !DILocation(line: 489, column: 11, scope: !1636)
!1697 = !DILocation(line: 490, column: 13, scope: !1636)
!1698 = !DILocation(line: 490, column: 11, scope: !1636)
!1699 = !DILocation(line: 491, column: 13, scope: !1636)
!1700 = !DILocation(line: 491, column: 11, scope: !1636)
!1701 = !DILocation(line: 492, column: 6, scope: !1636)
!1702 = !DILocation(line: 479, column: 3, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1543, file: !1, discriminator: 2)
!1704 = distinct !{!1704, !1630}
!1705 = !DILocation(line: 495, column: 19, scope: !1543)
!1706 = !DILocation(line: 495, column: 25, scope: !1543)
!1707 = !DILocation(line: 495, column: 23, scope: !1543)
!1708 = !DILocation(line: 495, column: 30, scope: !1543)
!1709 = !DILocation(line: 495, column: 28, scope: !1543)
!1710 = !DILocation(line: 495, column: 3, scope: !1543)
!1711 = !DILocation(line: 495, column: 6, scope: !1543)
!1712 = !DILocation(line: 495, column: 10, scope: !1543)
!1713 = !DILocation(line: 496, column: 19, scope: !1543)
!1714 = !DILocation(line: 496, column: 30, scope: !1543)
!1715 = !DILocation(line: 496, column: 35, scope: !1543)
!1716 = !DILocation(line: 496, column: 33, scope: !1543)
!1717 = !DILocation(line: 496, column: 25, scope: !1543)
!1718 = !DILocation(line: 496, column: 23, scope: !1543)
!1719 = !DILocation(line: 496, column: 69, scope: !1543)
!1720 = !DILocation(line: 496, column: 72, scope: !1543)
!1721 = !DILocation(line: 496, column: 64, scope: !1632)
!1722 = !DILocation(line: 496, column: 63, scope: !1543)
!1723 = !DILocation(line: 496, column: 42, scope: !1543)
!1724 = !DILocation(line: 496, column: 3, scope: !1543)
!1725 = !DILocation(line: 496, column: 6, scope: !1543)
!1726 = !DILocation(line: 496, column: 10, scope: !1543)
!1727 = !DILocation(line: 498, column: 10, scope: !1543)
!1728 = !DILocation(line: 498, column: 20, scope: !1543)
!1729 = !DILocation(line: 498, column: 16, scope: !1543)
!1730 = !DILocation(line: 498, column: 15, scope: !1543)
!1731 = !DILocation(line: 498, column: 8, scope: !1543)
!1732 = !DILocation(line: 499, column: 13, scope: !1543)
!1733 = !DILocation(line: 499, column: 12, scope: !1543)
!1734 = !DILocation(line: 499, column: 17, scope: !1543)
!1735 = !DILocation(line: 499, column: 24, scope: !1543)
!1736 = !DILocation(line: 499, column: 22, scope: !1543)
!1737 = !DILocation(line: 499, column: 15, scope: !1543)
!1738 = !DILocation(line: 499, column: 38, scope: !1543)
!1739 = !DILocation(line: 499, column: 30, scope: !1543)
!1740 = !DILocation(line: 499, column: 3, scope: !1543)
!1741 = !DILocation(line: 499, column: 6, scope: !1543)
!1742 = !DILocation(line: 499, column: 10, scope: !1543)
!1743 = !DILocation(line: 500, column: 17, scope: !1543)
!1744 = !DILocation(line: 500, column: 12, scope: !1543)
!1745 = !DILocation(line: 500, column: 27, scope: !1543)
!1746 = !DILocation(line: 500, column: 22, scope: !1632)
!1747 = !DILocation(line: 500, column: 40, scope: !1543)
!1748 = !DILocation(line: 500, column: 35, scope: !1703)
!1749 = !DILocation(line: 500, column: 33, scope: !1543)
!1750 = !DILocation(line: 500, column: 20, scope: !1543)
!1751 = !DILocation(line: 500, column: 60, scope: !1543)
!1752 = !DILocation(line: 500, column: 48, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1543, file: !1, discriminator: 3)
!1754 = !DILocation(line: 500, column: 47, scope: !1543)
!1755 = !DILocation(line: 500, column: 79, scope: !1543)
!1756 = !DILocation(line: 500, column: 90, scope: !1543)
!1757 = !DILocation(line: 500, column: 82, scope: !1543)
!1758 = !DILocation(line: 500, column: 67, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1543, file: !1, discriminator: 4)
!1760 = !DILocation(line: 500, column: 65, scope: !1543)
!1761 = !DILocation(line: 500, column: 3, scope: !1543)
!1762 = !DILocation(line: 500, column: 6, scope: !1543)
!1763 = !DILocation(line: 500, column: 10, scope: !1543)
!1764 = !DILocation(line: 502, column: 6, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 502, column: 6)
!1766 = !DILocation(line: 502, column: 8, scope: !1765)
!1767 = !DILocation(line: 502, column: 6, scope: !1543)
!1768 = !DILocation(line: 503, column: 5, scope: !1765)
!1769 = distinct !{!1769, !1768}
!1770 = !DILocation(line: 503, column: 5, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1772, file: !1, discriminator: 1)
!1772 = distinct !DILexicalBlock(scope: !1765, file: !1, line: 503, column: 5)
!1773 = !DILocation(line: 503, column: 5, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1772, file: !1, discriminator: 2)
!1775 = !DILocation(line: 505, column: 12, scope: !1765)
!1776 = !DILocation(line: 505, column: 5, scope: !1765)
!1777 = !DILocation(line: 506, column: 1, scope: !1543)
!1778 = distinct !DISubprogram(name: "coulomb_FG0_series", scope: !1, file: !1, line: 368, type: !1544, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1779 = !DILocalVariable(name: "eta", arg: 1, scope: !1778, file: !1, line: 368, type: !287)
!1780 = !DILocation(line: 368, column: 33, scope: !1778)
!1781 = !DILocalVariable(name: "x", arg: 2, scope: !1778, file: !1, line: 368, type: !287)
!1782 = !DILocation(line: 368, column: 51, scope: !1778)
!1783 = !DILocalVariable(name: "F", arg: 3, scope: !1778, file: !1, line: 369, type: !51)
!1784 = !DILocation(line: 369, column: 36, scope: !1778)
!1785 = !DILocalVariable(name: "G", arg: 4, scope: !1778, file: !1, line: 369, type: !51)
!1786 = !DILocation(line: 369, column: 55, scope: !1778)
!1787 = !DILocalVariable(name: "max_iter", scope: !1778, file: !1, line: 371, type: !288)
!1788 = !DILocation(line: 371, column: 13, scope: !1778)
!1789 = !DILocalVariable(name: "x2", scope: !1778, file: !1, line: 372, type: !287)
!1790 = !DILocation(line: 372, column: 16, scope: !1778)
!1791 = !DILocation(line: 372, column: 22, scope: !1778)
!1792 = !DILocation(line: 372, column: 24, scope: !1778)
!1793 = !DILocation(line: 372, column: 23, scope: !1778)
!1794 = !DILocalVariable(name: "tex", scope: !1778, file: !1, line: 373, type: !287)
!1795 = !DILocation(line: 373, column: 16, scope: !1778)
!1796 = !DILocation(line: 373, column: 26, scope: !1778)
!1797 = !DILocation(line: 373, column: 25, scope: !1778)
!1798 = !DILocation(line: 373, column: 30, scope: !1778)
!1799 = !DILocation(line: 373, column: 29, scope: !1778)
!1800 = !DILocalVariable(name: "C0", scope: !1778, file: !1, line: 374, type: !52)
!1801 = !DILocation(line: 374, column: 17, scope: !1778)
!1802 = !DILocalVariable(name: "stat_CL", scope: !1778, file: !1, line: 375, type: !42)
!1803 = !DILocation(line: 375, column: 7, scope: !1778)
!1804 = !DILocation(line: 375, column: 28, scope: !1778)
!1805 = !DILocation(line: 375, column: 17, scope: !1778)
!1806 = !DILocalVariable(name: "r1pie", scope: !1778, file: !1, line: 376, type: !52)
!1807 = !DILocation(line: 376, column: 17, scope: !1778)
!1808 = !DILocalVariable(name: "psi_stat", scope: !1778, file: !1, line: 377, type: !42)
!1809 = !DILocation(line: 377, column: 7, scope: !1778)
!1810 = !DILocation(line: 377, column: 36, scope: !1778)
!1811 = !DILocation(line: 377, column: 18, scope: !1778)
!1812 = !DILocalVariable(name: "u_mm2", scope: !1778, file: !1, line: 378, type: !50)
!1813 = !DILocation(line: 378, column: 10, scope: !1778)
!1814 = !DILocalVariable(name: "u_mm1", scope: !1778, file: !1, line: 379, type: !50)
!1815 = !DILocation(line: 379, column: 10, scope: !1778)
!1816 = !DILocation(line: 379, column: 18, scope: !1778)
!1817 = !DILocalVariable(name: "u_m", scope: !1778, file: !1, line: 380, type: !50)
!1818 = !DILocation(line: 380, column: 10, scope: !1778)
!1819 = !DILocalVariable(name: "v_mm2", scope: !1778, file: !1, line: 381, type: !50)
!1820 = !DILocation(line: 381, column: 10, scope: !1778)
!1821 = !DILocalVariable(name: "v_mm1", scope: !1778, file: !1, line: 382, type: !50)
!1822 = !DILocation(line: 382, column: 10, scope: !1778)
!1823 = !DILocation(line: 382, column: 18, scope: !1778)
!1824 = !DILocation(line: 382, column: 45, scope: !1778)
!1825 = !DILocation(line: 382, column: 38, scope: !1778)
!1826 = !DILocation(line: 382, column: 21, scope: !1778)
!1827 = !DILocalVariable(name: "v_m", scope: !1778, file: !1, line: 383, type: !50)
!1828 = !DILocation(line: 383, column: 10, scope: !1778)
!1829 = !DILocalVariable(name: "u_sum", scope: !1778, file: !1, line: 384, type: !50)
!1830 = !DILocation(line: 384, column: 10, scope: !1778)
!1831 = !DILocation(line: 384, column: 18, scope: !1778)
!1832 = !DILocation(line: 384, column: 26, scope: !1778)
!1833 = !DILocation(line: 384, column: 24, scope: !1778)
!1834 = !DILocalVariable(name: "v_sum", scope: !1778, file: !1, line: 385, type: !50)
!1835 = !DILocation(line: 385, column: 10, scope: !1778)
!1836 = !DILocation(line: 385, column: 18, scope: !1778)
!1837 = !DILocation(line: 385, column: 26, scope: !1778)
!1838 = !DILocation(line: 385, column: 24, scope: !1778)
!1839 = !DILocalVariable(name: "u_abs_del_prev", scope: !1778, file: !1, line: 386, type: !50)
!1840 = !DILocation(line: 386, column: 10, scope: !1778)
!1841 = !DILocation(line: 386, column: 32, scope: !1778)
!1842 = !DILocation(line: 386, column: 27, scope: !1778)
!1843 = !DILocalVariable(name: "v_abs_del_prev", scope: !1778, file: !1, line: 387, type: !50)
!1844 = !DILocation(line: 387, column: 10, scope: !1778)
!1845 = !DILocation(line: 387, column: 32, scope: !1778)
!1846 = !DILocation(line: 387, column: 27, scope: !1778)
!1847 = !DILocalVariable(name: "m", scope: !1778, file: !1, line: 388, type: !42)
!1848 = !DILocation(line: 388, column: 7, scope: !1778)
!1849 = !DILocalVariable(name: "u_sum_err", scope: !1778, file: !1, line: 389, type: !50)
!1850 = !DILocation(line: 389, column: 10, scope: !1778)
!1851 = !DILocation(line: 389, column: 51, scope: !1778)
!1852 = !DILocation(line: 389, column: 46, scope: !1778)
!1853 = !DILocation(line: 389, column: 44, scope: !1778)
!1854 = !DILocalVariable(name: "v_sum_err", scope: !1778, file: !1, line: 390, type: !50)
!1855 = !DILocation(line: 390, column: 10, scope: !1778)
!1856 = !DILocation(line: 390, column: 51, scope: !1778)
!1857 = !DILocation(line: 390, column: 46, scope: !1778)
!1858 = !DILocation(line: 390, column: 44, scope: !1778)
!1859 = !DILocalVariable(name: "ln2x", scope: !1778, file: !1, line: 391, type: !50)
!1860 = !DILocation(line: 391, column: 10, scope: !1778)
!1861 = !DILocation(line: 391, column: 25, scope: !1778)
!1862 = !DILocation(line: 391, column: 24, scope: !1778)
!1863 = !DILocation(line: 391, column: 17, scope: !1778)
!1864 = !DILocation(line: 393, column: 3, scope: !1778)
!1865 = !DILocation(line: 393, column: 9, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1778, file: !1, discriminator: 1)
!1867 = !DILocation(line: 393, column: 11, scope: !1866)
!1868 = !DILocation(line: 393, column: 3, scope: !1866)
!1869 = !DILocalVariable(name: "abs_du", scope: !1870, file: !1, line: 394, type: !50)
!1870 = distinct !DILexicalBlock(scope: !1778, file: !1, line: 393, column: 23)
!1871 = !DILocation(line: 394, column: 12, scope: !1870)
!1872 = !DILocalVariable(name: "abs_dv", scope: !1870, file: !1, line: 395, type: !50)
!1873 = !DILocation(line: 395, column: 12, scope: !1870)
!1874 = !DILocalVariable(name: "m_mm1", scope: !1870, file: !1, line: 396, type: !50)
!1875 = !DILocation(line: 396, column: 12, scope: !1870)
!1876 = !DILocation(line: 396, column: 20, scope: !1870)
!1877 = !DILocation(line: 396, column: 23, scope: !1870)
!1878 = !DILocation(line: 396, column: 24, scope: !1870)
!1879 = !DILocation(line: 396, column: 21, scope: !1870)
!1880 = !DILocation(line: 397, column: 12, scope: !1870)
!1881 = !DILocation(line: 397, column: 16, scope: !1870)
!1882 = !DILocation(line: 397, column: 15, scope: !1870)
!1883 = !DILocation(line: 397, column: 24, scope: !1870)
!1884 = !DILocation(line: 397, column: 27, scope: !1870)
!1885 = !DILocation(line: 397, column: 26, scope: !1870)
!1886 = !DILocation(line: 397, column: 22, scope: !1870)
!1887 = !DILocation(line: 397, column: 34, scope: !1870)
!1888 = !DILocation(line: 397, column: 33, scope: !1870)
!1889 = !DILocation(line: 397, column: 9, scope: !1870)
!1890 = !DILocation(line: 398, column: 12, scope: !1870)
!1891 = !DILocation(line: 398, column: 16, scope: !1870)
!1892 = !DILocation(line: 398, column: 15, scope: !1870)
!1893 = !DILocation(line: 398, column: 24, scope: !1870)
!1894 = !DILocation(line: 398, column: 27, scope: !1870)
!1895 = !DILocation(line: 398, column: 26, scope: !1870)
!1896 = !DILocation(line: 398, column: 22, scope: !1870)
!1897 = !DILocation(line: 398, column: 39, scope: !1870)
!1898 = !DILocation(line: 398, column: 38, scope: !1870)
!1899 = !DILocation(line: 398, column: 46, scope: !1870)
!1900 = !DILocation(line: 398, column: 45, scope: !1870)
!1901 = !DILocation(line: 398, column: 47, scope: !1870)
!1902 = !DILocation(line: 398, column: 43, scope: !1870)
!1903 = !DILocation(line: 398, column: 42, scope: !1870)
!1904 = !DILocation(line: 398, column: 51, scope: !1870)
!1905 = !DILocation(line: 398, column: 50, scope: !1870)
!1906 = !DILocation(line: 398, column: 33, scope: !1870)
!1907 = !DILocation(line: 398, column: 56, scope: !1870)
!1908 = !DILocation(line: 398, column: 55, scope: !1870)
!1909 = !DILocation(line: 398, column: 9, scope: !1870)
!1910 = !DILocation(line: 399, column: 14, scope: !1870)
!1911 = !DILocation(line: 399, column: 11, scope: !1870)
!1912 = !DILocation(line: 400, column: 14, scope: !1870)
!1913 = !DILocation(line: 400, column: 11, scope: !1870)
!1914 = !DILocation(line: 401, column: 19, scope: !1870)
!1915 = !DILocation(line: 401, column: 14, scope: !1870)
!1916 = !DILocation(line: 401, column: 12, scope: !1870)
!1917 = !DILocation(line: 402, column: 19, scope: !1870)
!1918 = !DILocation(line: 402, column: 14, scope: !1870)
!1919 = !DILocation(line: 402, column: 12, scope: !1870)
!1920 = !DILocation(line: 403, column: 42, scope: !1870)
!1921 = !DILocation(line: 403, column: 40, scope: !1870)
!1922 = !DILocation(line: 403, column: 15, scope: !1870)
!1923 = !DILocation(line: 404, column: 42, scope: !1870)
!1924 = !DILocation(line: 404, column: 40, scope: !1870)
!1925 = !DILocation(line: 404, column: 15, scope: !1870)
!1926 = !DILocation(line: 405, column: 8, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1870, file: !1, line: 405, column: 8)
!1928 = !DILocation(line: 405, column: 10, scope: !1927)
!1929 = !DILocation(line: 405, column: 8, scope: !1870)
!1930 = !DILocalVariable(name: "max_abs_du", scope: !1931, file: !1, line: 412, type: !50)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 405, column: 16)
!1932 = !DILocation(line: 412, column: 14, scope: !1931)
!1933 = !DILocation(line: 412, column: 27, scope: !1931)
!1934 = !DILocation(line: 412, column: 27, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1931, file: !1, discriminator: 1)
!1936 = !DILocation(line: 412, column: 27, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1931, file: !1, discriminator: 2)
!1938 = !DILocation(line: 412, column: 27, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1931, file: !1, discriminator: 3)
!1940 = !DILocation(line: 412, column: 14, scope: !1939)
!1941 = !DILocalVariable(name: "max_abs_dv", scope: !1931, file: !1, line: 413, type: !50)
!1942 = !DILocation(line: 413, column: 14, scope: !1931)
!1943 = !DILocation(line: 413, column: 27, scope: !1931)
!1944 = !DILocation(line: 413, column: 27, scope: !1935)
!1945 = !DILocation(line: 413, column: 27, scope: !1937)
!1946 = !DILocation(line: 413, column: 27, scope: !1939)
!1947 = !DILocation(line: 413, column: 14, scope: !1939)
!1948 = !DILocalVariable(name: "abs_u", scope: !1931, file: !1, line: 414, type: !50)
!1949 = !DILocation(line: 414, column: 14, scope: !1931)
!1950 = !DILocation(line: 414, column: 27, scope: !1931)
!1951 = !DILocation(line: 414, column: 22, scope: !1931)
!1952 = !DILocalVariable(name: "abs_v", scope: !1931, file: !1, line: 415, type: !50)
!1953 = !DILocation(line: 415, column: 14, scope: !1931)
!1954 = !DILocation(line: 415, column: 27, scope: !1931)
!1955 = !DILocation(line: 415, column: 22, scope: !1931)
!1956 = !DILocation(line: 416, column: 13, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1931, file: !1, line: 416, column: 13)
!1958 = !DILocation(line: 416, column: 25, scope: !1957)
!1959 = !DILocation(line: 416, column: 38, scope: !1957)
!1960 = !DILocation(line: 416, column: 36, scope: !1957)
!1961 = !DILocation(line: 416, column: 23, scope: !1957)
!1962 = !DILocation(line: 416, column: 45, scope: !1957)
!1963 = !DILocation(line: 417, column: 10, scope: !1957)
!1964 = !DILocation(line: 417, column: 13, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1957, file: !1, discriminator: 1)
!1966 = !DILocation(line: 417, column: 25, scope: !1965)
!1967 = !DILocation(line: 417, column: 38, scope: !1965)
!1968 = !DILocation(line: 417, column: 36, scope: !1965)
!1969 = !DILocation(line: 417, column: 23, scope: !1965)
!1970 = !DILocation(line: 417, column: 45, scope: !1965)
!1971 = !DILocation(line: 416, column: 13, scope: !1935)
!1972 = !DILocation(line: 418, column: 12, scope: !1957)
!1973 = !DILocation(line: 419, column: 5, scope: !1931)
!1974 = !DILocation(line: 420, column: 22, scope: !1870)
!1975 = !DILocation(line: 420, column: 20, scope: !1870)
!1976 = !DILocation(line: 421, column: 22, scope: !1870)
!1977 = !DILocation(line: 421, column: 20, scope: !1870)
!1978 = !DILocation(line: 422, column: 13, scope: !1870)
!1979 = !DILocation(line: 422, column: 11, scope: !1870)
!1980 = !DILocation(line: 423, column: 13, scope: !1870)
!1981 = !DILocation(line: 423, column: 11, scope: !1870)
!1982 = !DILocation(line: 424, column: 13, scope: !1870)
!1983 = !DILocation(line: 424, column: 11, scope: !1870)
!1984 = !DILocation(line: 425, column: 13, scope: !1870)
!1985 = !DILocation(line: 425, column: 11, scope: !1870)
!1986 = !DILocation(line: 426, column: 6, scope: !1870)
!1987 = !DILocation(line: 393, column: 3, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1778, file: !1, discriminator: 2)
!1989 = distinct !{!1989, !1864}
!1990 = !DILocation(line: 429, column: 16, scope: !1778)
!1991 = !DILocation(line: 429, column: 22, scope: !1778)
!1992 = !DILocation(line: 429, column: 20, scope: !1778)
!1993 = !DILocation(line: 429, column: 3, scope: !1778)
!1994 = !DILocation(line: 429, column: 6, scope: !1778)
!1995 = !DILocation(line: 429, column: 11, scope: !1778)
!1996 = !DILocation(line: 430, column: 16, scope: !1778)
!1997 = !DILocation(line: 430, column: 27, scope: !1778)
!1998 = !DILocation(line: 430, column: 22, scope: !1778)
!1999 = !DILocation(line: 430, column: 20, scope: !1778)
!2000 = !DILocation(line: 430, column: 3, scope: !1778)
!2001 = !DILocation(line: 430, column: 6, scope: !1778)
!2002 = !DILocation(line: 430, column: 11, scope: !1778)
!2003 = !DILocation(line: 431, column: 21, scope: !1778)
!2004 = !DILocation(line: 431, column: 13, scope: !1778)
!2005 = !DILocation(line: 431, column: 28, scope: !1778)
!2006 = !DILocation(line: 431, column: 26, scope: !1778)
!2007 = !DILocation(line: 431, column: 3, scope: !1778)
!2008 = !DILocation(line: 431, column: 6, scope: !1778)
!2009 = !DILocation(line: 431, column: 10, scope: !1778)
!2010 = !DILocation(line: 432, column: 42, scope: !1778)
!2011 = !DILocation(line: 432, column: 45, scope: !1778)
!2012 = !DILocation(line: 432, column: 37, scope: !1778)
!2013 = !DILocation(line: 432, column: 35, scope: !1778)
!2014 = !DILocation(line: 432, column: 3, scope: !1778)
!2015 = !DILocation(line: 432, column: 6, scope: !1778)
!2016 = !DILocation(line: 432, column: 10, scope: !1778)
!2017 = !DILocation(line: 434, column: 14, scope: !1778)
!2018 = !DILocation(line: 434, column: 26, scope: !1778)
!2019 = !DILocation(line: 434, column: 25, scope: !1778)
!2020 = !DILocation(line: 434, column: 30, scope: !1778)
!2021 = !DILocation(line: 434, column: 29, scope: !1778)
!2022 = !DILocation(line: 434, column: 38, scope: !1778)
!2023 = !DILocation(line: 434, column: 36, scope: !1778)
!2024 = !DILocation(line: 434, column: 20, scope: !1778)
!2025 = !DILocation(line: 434, column: 49, scope: !1778)
!2026 = !DILocation(line: 434, column: 44, scope: !1778)
!2027 = !DILocation(line: 434, column: 3, scope: !1778)
!2028 = !DILocation(line: 434, column: 6, scope: !1778)
!2029 = !DILocation(line: 434, column: 11, scope: !1778)
!2030 = !DILocation(line: 435, column: 19, scope: !1778)
!2031 = !DILocation(line: 435, column: 14, scope: !1778)
!2032 = !DILocation(line: 435, column: 37, scope: !1778)
!2033 = !DILocation(line: 435, column: 36, scope: !1778)
!2034 = !DILocation(line: 435, column: 41, scope: !1778)
!2035 = !DILocation(line: 435, column: 40, scope: !1778)
!2036 = !DILocation(line: 435, column: 49, scope: !1778)
!2037 = !DILocation(line: 435, column: 47, scope: !1778)
!2038 = !DILocation(line: 435, column: 28, scope: !1866)
!2039 = !DILocation(line: 435, column: 26, scope: !1778)
!2040 = !DILocation(line: 435, column: 66, scope: !1778)
!2041 = !DILocation(line: 435, column: 58, scope: !1988)
!2042 = !DILocation(line: 435, column: 56, scope: !1778)
!2043 = !DILocation(line: 435, column: 81, scope: !1778)
!2044 = !DILocation(line: 435, column: 88, scope: !1778)
!2045 = !DILocation(line: 435, column: 84, scope: !1778)
!2046 = !DILocation(line: 435, column: 73, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !1778, file: !1, discriminator: 3)
!2048 = !DILocation(line: 435, column: 71, scope: !1778)
!2049 = !DILocation(line: 435, column: 3, scope: !1778)
!2050 = !DILocation(line: 435, column: 6, scope: !1778)
!2051 = !DILocation(line: 435, column: 11, scope: !1778)
!2052 = !DILocation(line: 436, column: 14, scope: !1778)
!2053 = !DILocation(line: 436, column: 35, scope: !1778)
!2054 = !DILocation(line: 436, column: 34, scope: !1778)
!2055 = !DILocation(line: 436, column: 39, scope: !1778)
!2056 = !DILocation(line: 436, column: 38, scope: !1778)
!2057 = !DILocation(line: 436, column: 49, scope: !1778)
!2058 = !DILocation(line: 436, column: 48, scope: !1778)
!2059 = !DILocation(line: 436, column: 26, scope: !1778)
!2060 = !DILocation(line: 436, column: 24, scope: !1778)
!2061 = !DILocation(line: 436, column: 66, scope: !1778)
!2062 = !DILocation(line: 436, column: 58, scope: !1866)
!2063 = !DILocation(line: 436, column: 56, scope: !1778)
!2064 = !DILocation(line: 436, column: 3, scope: !1778)
!2065 = !DILocation(line: 436, column: 6, scope: !1778)
!2066 = !DILocation(line: 436, column: 10, scope: !1778)
!2067 = !DILocation(line: 437, column: 42, scope: !1778)
!2068 = !DILocation(line: 437, column: 45, scope: !1778)
!2069 = !DILocation(line: 437, column: 37, scope: !1778)
!2070 = !DILocation(line: 437, column: 35, scope: !1778)
!2071 = !DILocation(line: 437, column: 3, scope: !1778)
!2072 = !DILocation(line: 437, column: 6, scope: !1778)
!2073 = !DILocation(line: 437, column: 10, scope: !1778)
!2074 = !DILocation(line: 439, column: 6, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1778, file: !1, line: 439, column: 6)
!2076 = !DILocation(line: 439, column: 8, scope: !2075)
!2077 = !DILocation(line: 439, column: 6, scope: !1778)
!2078 = !DILocation(line: 440, column: 5, scope: !2075)
!2079 = distinct !{!2079, !2078}
!2080 = !DILocation(line: 440, column: 5, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2082, file: !1, discriminator: 1)
!2082 = distinct !DILexicalBlock(scope: !2075, file: !1, line: 440, column: 5)
!2083 = !DILocation(line: 440, column: 5, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2082, file: !1, discriminator: 2)
!2085 = !DILocation(line: 442, column: 12, scope: !2075)
!2086 = !DILocation(line: 442, column: 12, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2075, file: !1, discriminator: 1)
!2088 = !DILocation(line: 442, column: 12, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2075, file: !1, discriminator: 2)
!2090 = !DILocation(line: 442, column: 12, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2075, file: !1, discriminator: 3)
!2092 = !DILocation(line: 442, column: 12, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !2075, file: !1, discriminator: 4)
!2094 = !DILocation(line: 442, column: 12, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2075, file: !1, discriminator: 5)
!2096 = !DILocation(line: 442, column: 12, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2075, file: !1, discriminator: 6)
!2098 = !DILocation(line: 442, column: 5, scope: !2097)
!2099 = !DILocation(line: 443, column: 1, scope: !1778)
!2100 = distinct !DISubprogram(name: "coulomb_FG_series", scope: !1, file: !1, line: 277, type: !2101, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!42, !287, !287, !287, !51, !51}
!2103 = !DILocalVariable(name: "lam", arg: 1, scope: !2100, file: !1, line: 277, type: !287)
!2104 = !DILocation(line: 277, column: 32, scope: !2100)
!2105 = !DILocalVariable(name: "eta", arg: 2, scope: !2100, file: !1, line: 277, type: !287)
!2106 = !DILocation(line: 277, column: 50, scope: !2100)
!2107 = !DILocalVariable(name: "x", arg: 3, scope: !2100, file: !1, line: 277, type: !287)
!2108 = !DILocation(line: 277, column: 68, scope: !2100)
!2109 = !DILocalVariable(name: "F", arg: 4, scope: !2100, file: !1, line: 278, type: !51)
!2110 = !DILocation(line: 278, column: 35, scope: !2100)
!2111 = !DILocalVariable(name: "G", arg: 5, scope: !2100, file: !1, line: 278, type: !51)
!2112 = !DILocation(line: 278, column: 54, scope: !2100)
!2113 = !DILocalVariable(name: "max_iter", scope: !2100, file: !1, line: 280, type: !288)
!2114 = !DILocation(line: 280, column: 13, scope: !2100)
!2115 = !DILocalVariable(name: "ClamA", scope: !2100, file: !1, line: 281, type: !52)
!2116 = !DILocation(line: 281, column: 17, scope: !2100)
!2117 = !DILocalVariable(name: "ClamB", scope: !2100, file: !1, line: 282, type: !52)
!2118 = !DILocation(line: 282, column: 17, scope: !2100)
!2119 = !DILocalVariable(name: "stat_A", scope: !2100, file: !1, line: 283, type: !42)
!2120 = !DILocation(line: 283, column: 7, scope: !2100)
!2121 = !DILocation(line: 283, column: 22, scope: !2100)
!2122 = !DILocation(line: 283, column: 27, scope: !2100)
!2123 = !DILocation(line: 283, column: 16, scope: !2100)
!2124 = !DILocalVariable(name: "stat_B", scope: !2100, file: !1, line: 284, type: !42)
!2125 = !DILocation(line: 284, column: 7, scope: !2100)
!2126 = !DILocation(line: 284, column: 23, scope: !2100)
!2127 = !DILocation(line: 284, column: 22, scope: !2100)
!2128 = !DILocation(line: 284, column: 26, scope: !2100)
!2129 = !DILocation(line: 284, column: 32, scope: !2100)
!2130 = !DILocation(line: 284, column: 16, scope: !2100)
!2131 = !DILocalVariable(name: "tlp1", scope: !2100, file: !1, line: 285, type: !287)
!2132 = !DILocation(line: 285, column: 16, scope: !2100)
!2133 = !DILocation(line: 285, column: 27, scope: !2100)
!2134 = !DILocation(line: 285, column: 26, scope: !2100)
!2135 = !DILocation(line: 285, column: 31, scope: !2100)
!2136 = !DILocalVariable(name: "pow_x", scope: !2100, file: !1, line: 286, type: !287)
!2137 = !DILocation(line: 286, column: 16, scope: !2100)
!2138 = !DILocation(line: 286, column: 28, scope: !2100)
!2139 = !DILocation(line: 286, column: 31, scope: !2100)
!2140 = !DILocation(line: 286, column: 24, scope: !2100)
!2141 = !DILocalVariable(name: "cos_phi_lam", scope: !2100, file: !1, line: 287, type: !50)
!2142 = !DILocation(line: 287, column: 10, scope: !2100)
!2143 = !DILocalVariable(name: "sin_phi_lam", scope: !2100, file: !1, line: 288, type: !50)
!2144 = !DILocation(line: 288, column: 10, scope: !2100)
!2145 = !DILocalVariable(name: "uA_mm2", scope: !2100, file: !1, line: 290, type: !50)
!2146 = !DILocation(line: 290, column: 10, scope: !2100)
!2147 = !DILocalVariable(name: "uA_mm1", scope: !2100, file: !1, line: 291, type: !50)
!2148 = !DILocation(line: 291, column: 10, scope: !2100)
!2149 = !DILocation(line: 291, column: 19, scope: !2100)
!2150 = !DILocation(line: 291, column: 21, scope: !2100)
!2151 = !DILocation(line: 291, column: 20, scope: !2100)
!2152 = !DILocation(line: 291, column: 26, scope: !2100)
!2153 = !DILocation(line: 291, column: 29, scope: !2100)
!2154 = !DILocation(line: 291, column: 24, scope: !2100)
!2155 = !DILocalVariable(name: "uA_m", scope: !2100, file: !1, line: 292, type: !50)
!2156 = !DILocation(line: 292, column: 10, scope: !2100)
!2157 = !DILocalVariable(name: "uB_mm2", scope: !2100, file: !1, line: 293, type: !50)
!2158 = !DILocation(line: 293, column: 10, scope: !2100)
!2159 = !DILocalVariable(name: "uB_mm1", scope: !2100, file: !1, line: 294, type: !50)
!2160 = !DILocation(line: 294, column: 10, scope: !2100)
!2161 = !DILocation(line: 294, column: 20, scope: !2100)
!2162 = !DILocation(line: 294, column: 19, scope: !2100)
!2163 = !DILocation(line: 294, column: 22, scope: !2100)
!2164 = !DILocation(line: 294, column: 21, scope: !2100)
!2165 = !DILocation(line: 294, column: 26, scope: !2100)
!2166 = !DILocation(line: 294, column: 25, scope: !2100)
!2167 = !DILocalVariable(name: "uB_m", scope: !2100, file: !1, line: 295, type: !50)
!2168 = !DILocation(line: 295, column: 10, scope: !2100)
!2169 = !DILocalVariable(name: "A_sum", scope: !2100, file: !1, line: 296, type: !50)
!2170 = !DILocation(line: 296, column: 10, scope: !2100)
!2171 = !DILocation(line: 296, column: 18, scope: !2100)
!2172 = !DILocation(line: 296, column: 27, scope: !2100)
!2173 = !DILocation(line: 296, column: 25, scope: !2100)
!2174 = !DILocalVariable(name: "B_sum", scope: !2100, file: !1, line: 297, type: !50)
!2175 = !DILocation(line: 297, column: 10, scope: !2100)
!2176 = !DILocation(line: 297, column: 18, scope: !2100)
!2177 = !DILocation(line: 297, column: 27, scope: !2100)
!2178 = !DILocation(line: 297, column: 25, scope: !2100)
!2179 = !DILocalVariable(name: "A_abs_del_prev", scope: !2100, file: !1, line: 298, type: !50)
!2180 = !DILocation(line: 298, column: 10, scope: !2100)
!2181 = !DILocation(line: 298, column: 32, scope: !2100)
!2182 = !DILocation(line: 298, column: 27, scope: !2100)
!2183 = !DILocalVariable(name: "B_abs_del_prev", scope: !2100, file: !1, line: 299, type: !50)
!2184 = !DILocation(line: 299, column: 10, scope: !2100)
!2185 = !DILocation(line: 299, column: 32, scope: !2100)
!2186 = !DILocation(line: 299, column: 27, scope: !2100)
!2187 = !DILocalVariable(name: "FA", scope: !2100, file: !1, line: 300, type: !52)
!2188 = !DILocation(line: 300, column: 17, scope: !2100)
!2189 = !DILocalVariable(name: "FB", scope: !2100, file: !1, line: 300, type: !52)
!2190 = !DILocation(line: 300, column: 21, scope: !2100)
!2191 = !DILocalVariable(name: "m", scope: !2100, file: !1, line: 301, type: !42)
!2192 = !DILocation(line: 301, column: 7, scope: !2100)
!2193 = !DILocalVariable(name: "stat_conn", scope: !2100, file: !1, line: 303, type: !42)
!2194 = !DILocation(line: 303, column: 7, scope: !2100)
!2195 = !DILocation(line: 303, column: 38, scope: !2100)
!2196 = !DILocation(line: 303, column: 43, scope: !2100)
!2197 = !DILocation(line: 303, column: 19, scope: !2100)
!2198 = !DILocation(line: 305, column: 6, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2100, file: !1, line: 305, column: 6)
!2200 = !DILocation(line: 305, column: 16, scope: !2199)
!2201 = !DILocation(line: 305, column: 6, scope: !2100)
!2202 = !DILocation(line: 306, column: 5, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 305, column: 33)
!2204 = !DILocation(line: 306, column: 8, scope: !2203)
!2205 = !DILocation(line: 306, column: 12, scope: !2203)
!2206 = !DILocation(line: 307, column: 5, scope: !2203)
!2207 = !DILocation(line: 307, column: 8, scope: !2203)
!2208 = !DILocation(line: 307, column: 12, scope: !2203)
!2209 = !DILocation(line: 308, column: 5, scope: !2203)
!2210 = distinct !{!2210, !2209}
!2211 = !DILocation(line: 308, column: 5, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2213, file: !1, discriminator: 1)
!2213 = distinct !DILexicalBlock(scope: !2203, file: !1, line: 308, column: 5)
!2214 = distinct !{!2214, !2215}
!2215 = !DILocation(line: 308, column: 5, scope: !2213)
!2216 = !DILocation(line: 308, column: 5, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2218, file: !1, discriminator: 2)
!2218 = distinct !DILexicalBlock(scope: !2213, file: !1, line: 308, column: 5)
!2219 = !DILocation(line: 308, column: 5, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2213, file: !1, discriminator: 3)
!2221 = !DILocation(line: 309, column: 3, scope: !2203)
!2222 = !DILocation(line: 311, column: 3, scope: !2100)
!2223 = !DILocation(line: 311, column: 9, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2100, file: !1, discriminator: 1)
!2225 = !DILocation(line: 311, column: 11, scope: !2224)
!2226 = !DILocation(line: 311, column: 3, scope: !2224)
!2227 = !DILocalVariable(name: "abs_dA", scope: !2228, file: !1, line: 312, type: !50)
!2228 = distinct !DILexicalBlock(scope: !2100, file: !1, line: 311, column: 23)
!2229 = !DILocation(line: 312, column: 12, scope: !2228)
!2230 = !DILocalVariable(name: "abs_dB", scope: !2228, file: !1, line: 313, type: !50)
!2231 = !DILocation(line: 313, column: 12, scope: !2228)
!2232 = !DILocation(line: 314, column: 12, scope: !2228)
!2233 = !DILocation(line: 314, column: 19, scope: !2228)
!2234 = !DILocation(line: 314, column: 18, scope: !2228)
!2235 = !DILocation(line: 314, column: 23, scope: !2228)
!2236 = !DILocation(line: 314, column: 22, scope: !2228)
!2237 = !DILocation(line: 314, column: 32, scope: !2228)
!2238 = !DILocation(line: 314, column: 34, scope: !2228)
!2239 = !DILocation(line: 314, column: 33, scope: !2228)
!2240 = !DILocation(line: 314, column: 30, scope: !2228)
!2241 = !DILocation(line: 314, column: 13, scope: !2228)
!2242 = !DILocation(line: 314, column: 43, scope: !2228)
!2243 = !DILocation(line: 314, column: 46, scope: !2228)
!2244 = !DILocation(line: 314, column: 48, scope: !2228)
!2245 = !DILocation(line: 314, column: 47, scope: !2228)
!2246 = !DILocation(line: 314, column: 44, scope: !2228)
!2247 = !DILocation(line: 314, column: 41, scope: !2228)
!2248 = !DILocation(line: 314, column: 10, scope: !2228)
!2249 = !DILocation(line: 315, column: 12, scope: !2228)
!2250 = !DILocation(line: 315, column: 19, scope: !2228)
!2251 = !DILocation(line: 315, column: 18, scope: !2228)
!2252 = !DILocation(line: 315, column: 23, scope: !2228)
!2253 = !DILocation(line: 315, column: 22, scope: !2228)
!2254 = !DILocation(line: 315, column: 32, scope: !2228)
!2255 = !DILocation(line: 315, column: 34, scope: !2228)
!2256 = !DILocation(line: 315, column: 33, scope: !2228)
!2257 = !DILocation(line: 315, column: 30, scope: !2228)
!2258 = !DILocation(line: 315, column: 13, scope: !2228)
!2259 = !DILocation(line: 315, column: 43, scope: !2228)
!2260 = !DILocation(line: 315, column: 46, scope: !2228)
!2261 = !DILocation(line: 315, column: 48, scope: !2228)
!2262 = !DILocation(line: 315, column: 47, scope: !2228)
!2263 = !DILocation(line: 315, column: 44, scope: !2228)
!2264 = !DILocation(line: 315, column: 41, scope: !2228)
!2265 = !DILocation(line: 315, column: 10, scope: !2228)
!2266 = !DILocation(line: 316, column: 14, scope: !2228)
!2267 = !DILocation(line: 316, column: 11, scope: !2228)
!2268 = !DILocation(line: 317, column: 14, scope: !2228)
!2269 = !DILocation(line: 317, column: 11, scope: !2228)
!2270 = !DILocation(line: 318, column: 19, scope: !2228)
!2271 = !DILocation(line: 318, column: 14, scope: !2228)
!2272 = !DILocation(line: 318, column: 12, scope: !2228)
!2273 = !DILocation(line: 319, column: 19, scope: !2228)
!2274 = !DILocation(line: 319, column: 14, scope: !2228)
!2275 = !DILocation(line: 319, column: 12, scope: !2228)
!2276 = !DILocation(line: 320, column: 8, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2228, file: !1, line: 320, column: 8)
!2278 = !DILocation(line: 320, column: 10, scope: !2277)
!2279 = !DILocation(line: 320, column: 8, scope: !2228)
!2280 = !DILocalVariable(name: "max_abs_dA", scope: !2281, file: !1, line: 327, type: !50)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 320, column: 16)
!2282 = !DILocation(line: 327, column: 14, scope: !2281)
!2283 = !DILocation(line: 327, column: 27, scope: !2281)
!2284 = !DILocation(line: 327, column: 27, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2281, file: !1, discriminator: 1)
!2286 = !DILocation(line: 327, column: 27, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2281, file: !1, discriminator: 2)
!2288 = !DILocation(line: 327, column: 27, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2281, file: !1, discriminator: 3)
!2290 = !DILocation(line: 327, column: 14, scope: !2289)
!2291 = !DILocalVariable(name: "max_abs_dB", scope: !2281, file: !1, line: 328, type: !50)
!2292 = !DILocation(line: 328, column: 14, scope: !2281)
!2293 = !DILocation(line: 328, column: 27, scope: !2281)
!2294 = !DILocation(line: 328, column: 27, scope: !2285)
!2295 = !DILocation(line: 328, column: 27, scope: !2287)
!2296 = !DILocation(line: 328, column: 27, scope: !2289)
!2297 = !DILocation(line: 328, column: 14, scope: !2289)
!2298 = !DILocalVariable(name: "abs_A", scope: !2281, file: !1, line: 329, type: !50)
!2299 = !DILocation(line: 329, column: 14, scope: !2281)
!2300 = !DILocation(line: 329, column: 27, scope: !2281)
!2301 = !DILocation(line: 329, column: 22, scope: !2281)
!2302 = !DILocalVariable(name: "abs_B", scope: !2281, file: !1, line: 330, type: !50)
!2303 = !DILocation(line: 330, column: 14, scope: !2281)
!2304 = !DILocation(line: 330, column: 27, scope: !2281)
!2305 = !DILocation(line: 330, column: 22, scope: !2281)
!2306 = !DILocation(line: 331, column: 13, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2281, file: !1, line: 331, column: 13)
!2308 = !DILocation(line: 331, column: 25, scope: !2307)
!2309 = !DILocation(line: 331, column: 38, scope: !2307)
!2310 = !DILocation(line: 331, column: 36, scope: !2307)
!2311 = !DILocation(line: 331, column: 23, scope: !2307)
!2312 = !DILocation(line: 331, column: 45, scope: !2307)
!2313 = !DILocation(line: 332, column: 10, scope: !2307)
!2314 = !DILocation(line: 332, column: 13, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2307, file: !1, discriminator: 1)
!2316 = !DILocation(line: 332, column: 25, scope: !2315)
!2317 = !DILocation(line: 332, column: 38, scope: !2315)
!2318 = !DILocation(line: 332, column: 36, scope: !2315)
!2319 = !DILocation(line: 332, column: 23, scope: !2315)
!2320 = !DILocation(line: 332, column: 45, scope: !2315)
!2321 = !DILocation(line: 331, column: 13, scope: !2285)
!2322 = !DILocation(line: 333, column: 12, scope: !2307)
!2323 = !DILocation(line: 334, column: 5, scope: !2281)
!2324 = !DILocation(line: 335, column: 22, scope: !2228)
!2325 = !DILocation(line: 335, column: 20, scope: !2228)
!2326 = !DILocation(line: 336, column: 22, scope: !2228)
!2327 = !DILocation(line: 336, column: 20, scope: !2228)
!2328 = !DILocation(line: 337, column: 14, scope: !2228)
!2329 = !DILocation(line: 337, column: 12, scope: !2228)
!2330 = !DILocation(line: 338, column: 14, scope: !2228)
!2331 = !DILocation(line: 338, column: 12, scope: !2228)
!2332 = !DILocation(line: 339, column: 14, scope: !2228)
!2333 = !DILocation(line: 339, column: 12, scope: !2228)
!2334 = !DILocation(line: 340, column: 14, scope: !2228)
!2335 = !DILocation(line: 340, column: 12, scope: !2228)
!2336 = !DILocation(line: 341, column: 6, scope: !2228)
!2337 = !DILocation(line: 311, column: 3, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2100, file: !1, discriminator: 2)
!2339 = distinct !{!2339, !2222}
!2340 = !DILocation(line: 344, column: 12, scope: !2100)
!2341 = !DILocation(line: 344, column: 26, scope: !2100)
!2342 = !DILocation(line: 344, column: 18, scope: !2100)
!2343 = !DILocation(line: 344, column: 32, scope: !2100)
!2344 = !DILocation(line: 344, column: 30, scope: !2100)
!2345 = !DILocation(line: 344, column: 40, scope: !2100)
!2346 = !DILocation(line: 344, column: 38, scope: !2100)
!2347 = !DILocation(line: 344, column: 6, scope: !2100)
!2348 = !DILocation(line: 344, column: 10, scope: !2100)
!2349 = !DILocation(line: 345, column: 17, scope: !2100)
!2350 = !DILocation(line: 345, column: 12, scope: !2100)
!2351 = !DILocation(line: 345, column: 32, scope: !2100)
!2352 = !DILocation(line: 345, column: 24, scope: !2100)
!2353 = !DILocation(line: 345, column: 38, scope: !2100)
!2354 = !DILocation(line: 345, column: 36, scope: !2100)
!2355 = !DILocation(line: 345, column: 46, scope: !2100)
!2356 = !DILocation(line: 345, column: 44, scope: !2100)
!2357 = !DILocation(line: 345, column: 78, scope: !2100)
!2358 = !DILocation(line: 345, column: 70, scope: !2224)
!2359 = !DILocation(line: 345, column: 69, scope: !2100)
!2360 = !DILocation(line: 345, column: 48, scope: !2100)
!2361 = !DILocation(line: 345, column: 6, scope: !2100)
!2362 = !DILocation(line: 345, column: 10, scope: !2100)
!2363 = !DILocation(line: 346, column: 12, scope: !2100)
!2364 = !DILocation(line: 346, column: 26, scope: !2100)
!2365 = !DILocation(line: 346, column: 18, scope: !2100)
!2366 = !DILocation(line: 346, column: 32, scope: !2100)
!2367 = !DILocation(line: 346, column: 30, scope: !2100)
!2368 = !DILocation(line: 346, column: 6, scope: !2100)
!2369 = !DILocation(line: 346, column: 10, scope: !2100)
!2370 = !DILocation(line: 347, column: 17, scope: !2100)
!2371 = !DILocation(line: 347, column: 12, scope: !2100)
!2372 = !DILocation(line: 347, column: 32, scope: !2100)
!2373 = !DILocation(line: 347, column: 24, scope: !2100)
!2374 = !DILocation(line: 347, column: 38, scope: !2100)
!2375 = !DILocation(line: 347, column: 36, scope: !2100)
!2376 = !DILocation(line: 347, column: 74, scope: !2100)
!2377 = !DILocation(line: 347, column: 66, scope: !2224)
!2378 = !DILocation(line: 347, column: 65, scope: !2100)
!2379 = !DILocation(line: 347, column: 44, scope: !2100)
!2380 = !DILocation(line: 347, column: 6, scope: !2100)
!2381 = !DILocation(line: 347, column: 10, scope: !2100)
!2382 = !DILocation(line: 349, column: 15, scope: !2100)
!2383 = !DILocation(line: 349, column: 3, scope: !2100)
!2384 = !DILocation(line: 349, column: 6, scope: !2100)
!2385 = !DILocation(line: 349, column: 10, scope: !2100)
!2386 = !DILocation(line: 350, column: 15, scope: !2100)
!2387 = !DILocation(line: 350, column: 3, scope: !2100)
!2388 = !DILocation(line: 350, column: 6, scope: !2100)
!2389 = !DILocation(line: 350, column: 10, scope: !2100)
!2390 = !DILocation(line: 352, column: 16, scope: !2100)
!2391 = !DILocation(line: 352, column: 22, scope: !2100)
!2392 = !DILocation(line: 352, column: 20, scope: !2100)
!2393 = !DILocation(line: 352, column: 39, scope: !2100)
!2394 = !DILocation(line: 352, column: 34, scope: !2100)
!2395 = !DILocation(line: 352, column: 44, scope: !2100)
!2396 = !DILocation(line: 352, column: 43, scope: !2100)
!2397 = !DILocation(line: 352, column: 3, scope: !2100)
!2398 = !DILocation(line: 352, column: 6, scope: !2100)
!2399 = !DILocation(line: 352, column: 10, scope: !2100)
!2400 = !DILocation(line: 353, column: 16, scope: !2100)
!2401 = !DILocation(line: 353, column: 27, scope: !2100)
!2402 = !DILocation(line: 353, column: 22, scope: !2100)
!2403 = !DILocation(line: 353, column: 20, scope: !2100)
!2404 = !DILocation(line: 353, column: 45, scope: !2100)
!2405 = !DILocation(line: 353, column: 40, scope: !2100)
!2406 = !DILocation(line: 353, column: 55, scope: !2100)
!2407 = !DILocation(line: 353, column: 50, scope: !2224)
!2408 = !DILocation(line: 353, column: 49, scope: !2100)
!2409 = !DILocation(line: 353, column: 3, scope: !2100)
!2410 = !DILocation(line: 353, column: 6, scope: !2100)
!2411 = !DILocation(line: 353, column: 10, scope: !2100)
!2412 = !DILocation(line: 355, column: 6, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2100, file: !1, line: 355, column: 6)
!2414 = !DILocation(line: 355, column: 8, scope: !2413)
!2415 = !DILocation(line: 355, column: 6, scope: !2100)
!2416 = !DILocation(line: 356, column: 5, scope: !2413)
!2417 = distinct !{!2417, !2416}
!2418 = !DILocation(line: 356, column: 5, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2420, file: !1, discriminator: 1)
!2420 = distinct !DILexicalBlock(scope: !2413, file: !1, line: 356, column: 5)
!2421 = !DILocation(line: 356, column: 5, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !2420, file: !1, discriminator: 2)
!2423 = !DILocation(line: 358, column: 12, scope: !2413)
!2424 = !DILocation(line: 358, column: 12, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !2413, file: !1, discriminator: 1)
!2426 = !DILocation(line: 358, column: 12, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2413, file: !1, discriminator: 2)
!2428 = !DILocation(line: 358, column: 12, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2413, file: !1, discriminator: 3)
!2430 = !DILocation(line: 358, column: 12, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2413, file: !1, discriminator: 4)
!2432 = !DILocation(line: 358, column: 12, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !2413, file: !1, discriminator: 5)
!2434 = !DILocation(line: 358, column: 12, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2413, file: !1, discriminator: 6)
!2436 = !DILocation(line: 358, column: 5, scope: !2435)
!2437 = !DILocation(line: 359, column: 1, scope: !2100)
!2438 = distinct !DISubprogram(name: "coulomb_G_recur", scope: !1, file: !1, line: 559, type: !2439, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!42, !287, !288, !287, !287, !287, !287, !227, !227}
!2441 = !DILocalVariable(name: "lam_min", arg: 1, scope: !2438, file: !1, line: 559, type: !287)
!2442 = !DILocation(line: 559, column: 30, scope: !2438)
!2443 = !DILocalVariable(name: "kmax", arg: 2, scope: !2438, file: !1, line: 559, type: !288)
!2444 = !DILocation(line: 559, column: 49, scope: !2438)
!2445 = !DILocalVariable(name: "eta", arg: 3, scope: !2438, file: !1, line: 560, type: !287)
!2446 = !DILocation(line: 560, column: 30, scope: !2438)
!2447 = !DILocalVariable(name: "x", arg: 4, scope: !2438, file: !1, line: 560, type: !287)
!2448 = !DILocation(line: 560, column: 48, scope: !2438)
!2449 = !DILocalVariable(name: "G_lam_min", arg: 5, scope: !2438, file: !1, line: 561, type: !287)
!2450 = !DILocation(line: 561, column: 30, scope: !2438)
!2451 = !DILocalVariable(name: "Gp_lam_min", arg: 6, scope: !2438, file: !1, line: 561, type: !287)
!2452 = !DILocation(line: 561, column: 54, scope: !2438)
!2453 = !DILocalVariable(name: "G_lam_max", arg: 7, scope: !2438, file: !1, line: 562, type: !227)
!2454 = !DILocation(line: 562, column: 26, scope: !2438)
!2455 = !DILocalVariable(name: "Gp_lam_max", arg: 8, scope: !2438, file: !1, line: 562, type: !227)
!2456 = !DILocation(line: 562, column: 46, scope: !2438)
!2457 = !DILocalVariable(name: "x_inv", scope: !2438, file: !1, line: 565, type: !50)
!2458 = !DILocation(line: 565, column: 10, scope: !2438)
!2459 = !DILocation(line: 565, column: 22, scope: !2438)
!2460 = !DILocation(line: 565, column: 21, scope: !2438)
!2461 = !DILocalVariable(name: "gcl", scope: !2438, file: !1, line: 566, type: !50)
!2462 = !DILocation(line: 566, column: 10, scope: !2438)
!2463 = !DILocation(line: 566, column: 16, scope: !2438)
!2464 = !DILocalVariable(name: "gpl", scope: !2438, file: !1, line: 567, type: !50)
!2465 = !DILocation(line: 567, column: 10, scope: !2438)
!2466 = !DILocation(line: 567, column: 16, scope: !2438)
!2467 = !DILocalVariable(name: "lam", scope: !2438, file: !1, line: 568, type: !50)
!2468 = !DILocation(line: 568, column: 10, scope: !2438)
!2469 = !DILocation(line: 568, column: 16, scope: !2438)
!2470 = !DILocation(line: 568, column: 24, scope: !2438)
!2471 = !DILocalVariable(name: "k", scope: !2438, file: !1, line: 569, type: !42)
!2472 = !DILocation(line: 569, column: 7, scope: !2438)
!2473 = !DILocation(line: 571, column: 8, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2438, file: !1, line: 571, column: 3)
!2475 = !DILocation(line: 571, column: 7, scope: !2474)
!2476 = !DILocation(line: 571, column: 12, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2478, file: !1, discriminator: 1)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 571, column: 3)
!2479 = !DILocation(line: 571, column: 15, scope: !2477)
!2480 = !DILocation(line: 571, column: 13, scope: !2477)
!2481 = !DILocation(line: 571, column: 3, scope: !2477)
!2482 = !DILocalVariable(name: "el", scope: !2483, file: !1, line: 572, type: !50)
!2483 = distinct !DILexicalBlock(scope: !2478, file: !1, line: 571, column: 26)
!2484 = !DILocation(line: 572, column: 12, scope: !2483)
!2485 = !DILocation(line: 572, column: 17, scope: !2483)
!2486 = !DILocation(line: 572, column: 21, scope: !2483)
!2487 = !DILocation(line: 572, column: 20, scope: !2483)
!2488 = !DILocalVariable(name: "rl", scope: !2483, file: !1, line: 573, type: !50)
!2489 = !DILocation(line: 573, column: 12, scope: !2483)
!2490 = !DILocation(line: 573, column: 28, scope: !2483)
!2491 = !DILocation(line: 573, column: 17, scope: !2483)
!2492 = !DILocalVariable(name: "sl", scope: !2483, file: !1, line: 574, type: !50)
!2493 = !DILocation(line: 574, column: 12, scope: !2483)
!2494 = !DILocation(line: 574, column: 17, scope: !2483)
!2495 = !DILocation(line: 574, column: 22, scope: !2483)
!2496 = !DILocation(line: 574, column: 26, scope: !2483)
!2497 = !DILocation(line: 574, column: 25, scope: !2483)
!2498 = !DILocation(line: 574, column: 20, scope: !2483)
!2499 = !DILocalVariable(name: "gcl1", scope: !2483, file: !1, line: 575, type: !50)
!2500 = !DILocation(line: 575, column: 12, scope: !2483)
!2501 = !DILocation(line: 575, column: 20, scope: !2483)
!2502 = !DILocation(line: 575, column: 23, scope: !2483)
!2503 = !DILocation(line: 575, column: 22, scope: !2483)
!2504 = !DILocation(line: 575, column: 29, scope: !2483)
!2505 = !DILocation(line: 575, column: 27, scope: !2483)
!2506 = !DILocation(line: 575, column: 34, scope: !2483)
!2507 = !DILocation(line: 575, column: 33, scope: !2483)
!2508 = !DILocation(line: 576, column: 13, scope: !2483)
!2509 = !DILocation(line: 576, column: 16, scope: !2483)
!2510 = !DILocation(line: 576, column: 15, scope: !2483)
!2511 = !DILocation(line: 576, column: 22, scope: !2483)
!2512 = !DILocation(line: 576, column: 25, scope: !2483)
!2513 = !DILocation(line: 576, column: 24, scope: !2483)
!2514 = !DILocation(line: 576, column: 20, scope: !2483)
!2515 = !DILocation(line: 576, column: 11, scope: !2483)
!2516 = !DILocation(line: 577, column: 13, scope: !2483)
!2517 = !DILocation(line: 577, column: 11, scope: !2483)
!2518 = !DILocation(line: 578, column: 9, scope: !2483)
!2519 = !DILocation(line: 579, column: 3, scope: !2483)
!2520 = !DILocation(line: 571, column: 22, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !2478, file: !1, discriminator: 2)
!2522 = !DILocation(line: 571, column: 3, scope: !2521)
!2523 = distinct !{!2523, !2524}
!2524 = !DILocation(line: 571, column: 3, scope: !2438)
!2525 = !DILocation(line: 581, column: 17, scope: !2438)
!2526 = !DILocation(line: 581, column: 4, scope: !2438)
!2527 = !DILocation(line: 581, column: 15, scope: !2438)
!2528 = !DILocation(line: 582, column: 17, scope: !2438)
!2529 = !DILocation(line: 582, column: 4, scope: !2438)
!2530 = !DILocation(line: 582, column: 15, scope: !2438)
!2531 = !DILocation(line: 583, column: 3, scope: !2438)
!2532 = distinct !DISubprogram(name: "coulomb_jwkb", scope: !1, file: !1, line: 822, type: !2533, isLocal: true, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!42, !287, !287, !287, !51, !51, !227}
!2535 = !DILocalVariable(name: "lam", arg: 1, scope: !2532, file: !1, line: 822, type: !287)
!2536 = !DILocation(line: 822, column: 27, scope: !2532)
!2537 = !DILocalVariable(name: "eta", arg: 2, scope: !2532, file: !1, line: 822, type: !287)
!2538 = !DILocation(line: 822, column: 45, scope: !2532)
!2539 = !DILocalVariable(name: "x", arg: 3, scope: !2532, file: !1, line: 822, type: !287)
!2540 = !DILocation(line: 822, column: 63, scope: !2532)
!2541 = !DILocalVariable(name: "fjwkb", arg: 4, scope: !2532, file: !1, line: 823, type: !51)
!2542 = !DILocation(line: 823, column: 30, scope: !2532)
!2543 = !DILocalVariable(name: "gjwkb", arg: 5, scope: !2532, file: !1, line: 823, type: !51)
!2544 = !DILocation(line: 823, column: 53, scope: !2532)
!2545 = !DILocalVariable(name: "exponent", arg: 6, scope: !2532, file: !1, line: 824, type: !227)
!2546 = !DILocation(line: 824, column: 23, scope: !2532)
!2547 = !DILocalVariable(name: "llp1", scope: !2532, file: !1, line: 826, type: !287)
!2548 = !DILocation(line: 826, column: 16, scope: !2532)
!2549 = !DILocation(line: 826, column: 28, scope: !2532)
!2550 = !DILocation(line: 826, column: 33, scope: !2532)
!2551 = !DILocation(line: 826, column: 36, scope: !2532)
!2552 = !DILocation(line: 826, column: 31, scope: !2532)
!2553 = !DILocation(line: 826, column: 42, scope: !2532)
!2554 = !DILocalVariable(name: "llp1_eff", scope: !2532, file: !1, line: 827, type: !287)
!2555 = !DILocation(line: 827, column: 16, scope: !2532)
!2556 = !DILocation(line: 827, column: 28, scope: !2532)
!2557 = !DILocation(line: 827, column: 28, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2532, file: !1, discriminator: 1)
!2559 = !DILocation(line: 827, column: 28, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !2532, file: !1, discriminator: 2)
!2561 = !DILocation(line: 827, column: 28, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2532, file: !1, discriminator: 3)
!2563 = !DILocation(line: 827, column: 16, scope: !2562)
!2564 = !DILocalVariable(name: "rho_ghalf", scope: !2532, file: !1, line: 828, type: !287)
!2565 = !DILocation(line: 828, column: 16, scope: !2532)
!2566 = !DILocation(line: 828, column: 33, scope: !2532)
!2567 = !DILocation(line: 828, column: 40, scope: !2532)
!2568 = !DILocation(line: 828, column: 39, scope: !2532)
!2569 = !DILocation(line: 828, column: 46, scope: !2532)
!2570 = !DILocation(line: 828, column: 44, scope: !2532)
!2571 = !DILocation(line: 828, column: 34, scope: !2532)
!2572 = !DILocation(line: 828, column: 51, scope: !2532)
!2573 = !DILocation(line: 828, column: 49, scope: !2532)
!2574 = !DILocation(line: 828, column: 28, scope: !2532)
!2575 = !DILocalVariable(name: "sinh_arg", scope: !2532, file: !1, line: 829, type: !287)
!2576 = !DILocation(line: 829, column: 16, scope: !2532)
!2577 = !DILocation(line: 829, column: 33, scope: !2532)
!2578 = !DILocation(line: 829, column: 43, scope: !2532)
!2579 = !DILocation(line: 829, column: 47, scope: !2532)
!2580 = !DILocation(line: 829, column: 46, scope: !2532)
!2581 = !DILocation(line: 829, column: 51, scope: !2532)
!2582 = !DILocation(line: 829, column: 50, scope: !2532)
!2583 = !DILocation(line: 829, column: 41, scope: !2532)
!2584 = !DILocation(line: 829, column: 28, scope: !2532)
!2585 = !DILocation(line: 829, column: 64, scope: !2532)
!2586 = !DILocation(line: 829, column: 62, scope: !2532)
!2587 = !DILocation(line: 829, column: 76, scope: !2532)
!2588 = !DILocation(line: 829, column: 74, scope: !2532)
!2589 = !DILocalVariable(name: "sinh_inv", scope: !2532, file: !1, line: 830, type: !287)
!2590 = !DILocation(line: 830, column: 16, scope: !2532)
!2591 = !DILocation(line: 830, column: 32, scope: !2532)
!2592 = !DILocation(line: 830, column: 53, scope: !2532)
!2593 = !DILocation(line: 830, column: 43, scope: !2532)
!2594 = !DILocation(line: 830, column: 41, scope: !2532)
!2595 = !DILocation(line: 830, column: 28, scope: !2558)
!2596 = !DILocalVariable(name: "phi", scope: !2532, file: !1, line: 832, type: !287)
!2597 = !DILocation(line: 832, column: 16, scope: !2532)
!2598 = !DILocation(line: 832, column: 27, scope: !2532)
!2599 = !DILocation(line: 832, column: 39, scope: !2532)
!2600 = !DILocation(line: 832, column: 49, scope: !2532)
!2601 = !DILocation(line: 832, column: 59, scope: !2532)
!2602 = !DILocation(line: 832, column: 61, scope: !2532)
!2603 = !DILocation(line: 832, column: 60, scope: !2532)
!2604 = !DILocation(line: 832, column: 43, scope: !2532)
!2605 = !DILocation(line: 832, column: 42, scope: !2532)
!2606 = !DILocation(line: 832, column: 37, scope: !2532)
!2607 = !DILocation(line: 832, column: 73, scope: !2532)
!2608 = !DILocation(line: 832, column: 68, scope: !2558)
!2609 = !DILocation(line: 832, column: 85, scope: !2532)
!2610 = !DILocation(line: 832, column: 83, scope: !2532)
!2611 = !DILocation(line: 832, column: 66, scope: !2532)
!2612 = !DILocation(line: 832, column: 22, scope: !2560)
!2613 = !DILocalVariable(name: "zeta_half", scope: !2532, file: !1, line: 834, type: !287)
!2614 = !DILocation(line: 834, column: 16, scope: !2532)
!2615 = !DILocation(line: 834, column: 36, scope: !2532)
!2616 = !DILocation(line: 834, column: 35, scope: !2532)
!2617 = !DILocation(line: 834, column: 39, scope: !2532)
!2618 = !DILocation(line: 834, column: 28, scope: !2532)
!2619 = !DILocalVariable(name: "prefactor", scope: !2532, file: !1, line: 835, type: !287)
!2620 = !DILocation(line: 835, column: 16, scope: !2532)
!2621 = !DILocation(line: 835, column: 38, scope: !2532)
!2622 = !DILocation(line: 835, column: 37, scope: !2532)
!2623 = !DILocation(line: 835, column: 42, scope: !2532)
!2624 = !DILocation(line: 835, column: 41, scope: !2532)
!2625 = !DILocation(line: 835, column: 51, scope: !2532)
!2626 = !DILocation(line: 835, column: 49, scope: !2532)
!2627 = !DILocation(line: 835, column: 43, scope: !2532)
!2628 = !DILocation(line: 835, column: 28, scope: !2532)
!2629 = !DILocalVariable(name: "F", scope: !2532, file: !1, line: 837, type: !50)
!2630 = !DILocation(line: 837, column: 10, scope: !2532)
!2631 = !DILocation(line: 837, column: 14, scope: !2532)
!2632 = !DILocation(line: 837, column: 24, scope: !2532)
!2633 = !DILocation(line: 837, column: 30, scope: !2532)
!2634 = !DILocation(line: 837, column: 29, scope: !2532)
!2635 = !DILocalVariable(name: "G", scope: !2532, file: !1, line: 838, type: !50)
!2636 = !DILocation(line: 838, column: 10, scope: !2532)
!2637 = !DILocation(line: 838, column: 14, scope: !2532)
!2638 = !DILocation(line: 838, column: 24, scope: !2532)
!2639 = !DILocation(line: 838, column: 30, scope: !2532)
!2640 = !DILocation(line: 838, column: 29, scope: !2532)
!2641 = !DILocalVariable(name: "F_exp", scope: !2532, file: !1, line: 839, type: !50)
!2642 = !DILocation(line: 839, column: 10, scope: !2532)
!2643 = !DILocalVariable(name: "G_exp", scope: !2532, file: !1, line: 840, type: !50)
!2644 = !DILocation(line: 840, column: 10, scope: !2532)
!2645 = !DILocalVariable(name: "airy_scale_exp", scope: !2532, file: !1, line: 842, type: !287)
!2646 = !DILocation(line: 842, column: 16, scope: !2532)
!2647 = !DILocation(line: 842, column: 33, scope: !2532)
!2648 = !DILocalVariable(name: "ai", scope: !2532, file: !1, line: 843, type: !52)
!2649 = !DILocation(line: 843, column: 17, scope: !2532)
!2650 = !DILocalVariable(name: "bi", scope: !2532, file: !1, line: 844, type: !52)
!2651 = !DILocation(line: 844, column: 17, scope: !2532)
!2652 = !DILocation(line: 845, column: 27, scope: !2532)
!2653 = !DILocation(line: 845, column: 37, scope: !2532)
!2654 = !DILocation(line: 845, column: 36, scope: !2532)
!2655 = !DILocation(line: 845, column: 3, scope: !2532)
!2656 = !DILocation(line: 846, column: 27, scope: !2532)
!2657 = !DILocation(line: 846, column: 37, scope: !2532)
!2658 = !DILocation(line: 846, column: 36, scope: !2532)
!2659 = !DILocation(line: 846, column: 3, scope: !2532)
!2660 = !DILocation(line: 847, column: 11, scope: !2532)
!2661 = !DILocation(line: 847, column: 5, scope: !2532)
!2662 = !DILocation(line: 848, column: 11, scope: !2532)
!2663 = !DILocation(line: 848, column: 5, scope: !2532)
!2664 = !DILocation(line: 849, column: 15, scope: !2532)
!2665 = !DILocation(line: 849, column: 11, scope: !2532)
!2666 = !DILocation(line: 849, column: 20, scope: !2532)
!2667 = !DILocation(line: 849, column: 18, scope: !2532)
!2668 = !DILocation(line: 849, column: 9, scope: !2532)
!2669 = !DILocation(line: 850, column: 15, scope: !2532)
!2670 = !DILocation(line: 850, column: 11, scope: !2532)
!2671 = !DILocation(line: 850, column: 20, scope: !2532)
!2672 = !DILocation(line: 850, column: 18, scope: !2532)
!2673 = !DILocation(line: 850, column: 9, scope: !2532)
!2674 = !DILocation(line: 852, column: 6, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 852, column: 6)
!2676 = !DILocation(line: 852, column: 12, scope: !2675)
!2677 = !DILocation(line: 852, column: 6, scope: !2532)
!2678 = !DILocation(line: 853, column: 18, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !1, line: 852, column: 32)
!2680 = !DILocation(line: 853, column: 5, scope: !2679)
!2681 = !DILocation(line: 853, column: 12, scope: !2679)
!2682 = !DILocation(line: 853, column: 16, scope: !2679)
!2683 = !DILocation(line: 854, column: 18, scope: !2679)
!2684 = !DILocation(line: 854, column: 5, scope: !2679)
!2685 = !DILocation(line: 854, column: 12, scope: !2679)
!2686 = !DILocation(line: 854, column: 16, scope: !2679)
!2687 = !DILocation(line: 855, column: 32, scope: !2679)
!2688 = !DILocation(line: 855, column: 27, scope: !2679)
!2689 = !DILocation(line: 855, column: 25, scope: !2679)
!2690 = !DILocation(line: 855, column: 5, scope: !2679)
!2691 = !DILocation(line: 855, column: 12, scope: !2679)
!2692 = !DILocation(line: 855, column: 16, scope: !2679)
!2693 = !DILocation(line: 856, column: 32, scope: !2679)
!2694 = !DILocation(line: 856, column: 27, scope: !2679)
!2695 = !DILocation(line: 856, column: 25, scope: !2679)
!2696 = !DILocation(line: 856, column: 5, scope: !2679)
!2697 = !DILocation(line: 856, column: 12, scope: !2679)
!2698 = !DILocation(line: 856, column: 16, scope: !2679)
!2699 = !DILocation(line: 857, column: 17, scope: !2679)
!2700 = !DILocation(line: 857, column: 6, scope: !2679)
!2701 = !DILocation(line: 857, column: 15, scope: !2679)
!2702 = !DILocation(line: 858, column: 5, scope: !2679)
!2703 = distinct !{!2703, !2702}
!2704 = !DILocation(line: 858, column: 5, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2706, file: !1, discriminator: 1)
!2706 = distinct !DILexicalBlock(scope: !2679, file: !1, line: 858, column: 5)
!2707 = !DILocation(line: 859, column: 3, scope: !2679)
!2708 = !DILocation(line: 861, column: 22, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2675, file: !1, line: 860, column: 8)
!2710 = !DILocation(line: 861, column: 18, scope: !2709)
!2711 = !DILocation(line: 861, column: 5, scope: !2709)
!2712 = !DILocation(line: 861, column: 12, scope: !2709)
!2713 = !DILocation(line: 861, column: 16, scope: !2709)
!2714 = !DILocation(line: 862, column: 22, scope: !2709)
!2715 = !DILocation(line: 862, column: 18, scope: !2709)
!2716 = !DILocation(line: 862, column: 5, scope: !2709)
!2717 = !DILocation(line: 862, column: 12, scope: !2709)
!2718 = !DILocation(line: 862, column: 16, scope: !2709)
!2719 = !DILocation(line: 863, column: 32, scope: !2709)
!2720 = !DILocation(line: 863, column: 39, scope: !2709)
!2721 = !DILocation(line: 863, column: 27, scope: !2709)
!2722 = !DILocation(line: 863, column: 25, scope: !2709)
!2723 = !DILocation(line: 863, column: 5, scope: !2709)
!2724 = !DILocation(line: 863, column: 12, scope: !2709)
!2725 = !DILocation(line: 863, column: 16, scope: !2709)
!2726 = !DILocation(line: 864, column: 32, scope: !2709)
!2727 = !DILocation(line: 864, column: 39, scope: !2709)
!2728 = !DILocation(line: 864, column: 27, scope: !2709)
!2729 = !DILocation(line: 864, column: 25, scope: !2709)
!2730 = !DILocation(line: 864, column: 5, scope: !2709)
!2731 = !DILocation(line: 864, column: 12, scope: !2709)
!2732 = !DILocation(line: 864, column: 16, scope: !2709)
!2733 = !DILocation(line: 865, column: 6, scope: !2709)
!2734 = !DILocation(line: 865, column: 15, scope: !2709)
!2735 = !DILocation(line: 866, column: 5, scope: !2709)
!2736 = !DILocation(line: 868, column: 1, scope: !2532)
!2737 = distinct !DISubprogram(name: "coulomb_CF2", scope: !1, file: !1, line: 735, type: !2738, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!42, !287, !287, !287, !227, !227, !1271}
!2740 = !DILocalVariable(name: "lambda", arg: 1, scope: !2737, file: !1, line: 735, type: !287)
!2741 = !DILocation(line: 735, column: 26, scope: !2737)
!2742 = !DILocalVariable(name: "eta", arg: 2, scope: !2737, file: !1, line: 735, type: !287)
!2743 = !DILocation(line: 735, column: 47, scope: !2737)
!2744 = !DILocalVariable(name: "x", arg: 3, scope: !2737, file: !1, line: 735, type: !287)
!2745 = !DILocation(line: 735, column: 65, scope: !2737)
!2746 = !DILocalVariable(name: "result_P", arg: 4, scope: !2737, file: !1, line: 736, type: !227)
!2747 = !DILocation(line: 736, column: 22, scope: !2737)
!2748 = !DILocalVariable(name: "result_Q", arg: 5, scope: !2737, file: !1, line: 736, type: !227)
!2749 = !DILocation(line: 736, column: 41, scope: !2737)
!2750 = !DILocalVariable(name: "count", arg: 6, scope: !2737, file: !1, line: 736, type: !1271)
!2751 = !DILocation(line: 736, column: 57, scope: !2737)
!2752 = !DILocalVariable(name: "status", scope: !2737, file: !1, line: 739, type: !42)
!2753 = !DILocation(line: 739, column: 7, scope: !2737)
!2754 = !DILocalVariable(name: "CF2_acc", scope: !2737, file: !1, line: 741, type: !287)
!2755 = !DILocation(line: 741, column: 16, scope: !2737)
!2756 = !DILocalVariable(name: "CF2_abort", scope: !2737, file: !1, line: 742, type: !287)
!2757 = !DILocation(line: 742, column: 16, scope: !2737)
!2758 = !DILocalVariable(name: "wi", scope: !2737, file: !1, line: 744, type: !287)
!2759 = !DILocation(line: 744, column: 16, scope: !2737)
!2760 = !DILocation(line: 744, column: 28, scope: !2737)
!2761 = !DILocation(line: 744, column: 27, scope: !2737)
!2762 = !DILocalVariable(name: "x_inv", scope: !2737, file: !1, line: 745, type: !287)
!2763 = !DILocation(line: 745, column: 16, scope: !2737)
!2764 = !DILocation(line: 745, column: 28, scope: !2737)
!2765 = !DILocation(line: 745, column: 27, scope: !2737)
!2766 = !DILocalVariable(name: "e2mm1", scope: !2737, file: !1, line: 746, type: !287)
!2767 = !DILocation(line: 746, column: 16, scope: !2737)
!2768 = !DILocation(line: 746, column: 24, scope: !2737)
!2769 = !DILocation(line: 746, column: 28, scope: !2737)
!2770 = !DILocation(line: 746, column: 27, scope: !2737)
!2771 = !DILocation(line: 746, column: 34, scope: !2737)
!2772 = !DILocation(line: 746, column: 42, scope: !2737)
!2773 = !DILocation(line: 746, column: 49, scope: !2737)
!2774 = !DILocation(line: 746, column: 40, scope: !2737)
!2775 = !DILocation(line: 746, column: 32, scope: !2737)
!2776 = !DILocalVariable(name: "ar", scope: !2737, file: !1, line: 748, type: !50)
!2777 = !DILocation(line: 748, column: 10, scope: !2737)
!2778 = !DILocation(line: 748, column: 16, scope: !2737)
!2779 = !DILocation(line: 748, column: 15, scope: !2737)
!2780 = !DILocalVariable(name: "ai", scope: !2737, file: !1, line: 749, type: !50)
!2781 = !DILocation(line: 749, column: 10, scope: !2737)
!2782 = !DILocation(line: 749, column: 16, scope: !2737)
!2783 = !DILocalVariable(name: "br", scope: !2737, file: !1, line: 751, type: !50)
!2784 = !DILocation(line: 751, column: 10, scope: !2737)
!2785 = !DILocation(line: 751, column: 21, scope: !2737)
!2786 = !DILocation(line: 751, column: 25, scope: !2737)
!2787 = !DILocation(line: 751, column: 23, scope: !2737)
!2788 = !DILocation(line: 751, column: 19, scope: !2737)
!2789 = !DILocalVariable(name: "bi", scope: !2737, file: !1, line: 752, type: !50)
!2790 = !DILocation(line: 752, column: 10, scope: !2737)
!2791 = !DILocalVariable(name: "dr", scope: !2737, file: !1, line: 754, type: !50)
!2792 = !DILocation(line: 754, column: 10, scope: !2737)
!2793 = !DILocation(line: 754, column: 16, scope: !2737)
!2794 = !DILocation(line: 754, column: 20, scope: !2737)
!2795 = !DILocation(line: 754, column: 23, scope: !2737)
!2796 = !DILocation(line: 754, column: 22, scope: !2737)
!2797 = !DILocation(line: 754, column: 28, scope: !2737)
!2798 = !DILocation(line: 754, column: 31, scope: !2737)
!2799 = !DILocation(line: 754, column: 30, scope: !2737)
!2800 = !DILocation(line: 754, column: 26, scope: !2737)
!2801 = !DILocation(line: 754, column: 18, scope: !2737)
!2802 = !DILocalVariable(name: "di", scope: !2737, file: !1, line: 755, type: !50)
!2803 = !DILocation(line: 755, column: 10, scope: !2737)
!2804 = !DILocation(line: 755, column: 16, scope: !2737)
!2805 = !DILocation(line: 755, column: 15, scope: !2737)
!2806 = !DILocation(line: 755, column: 20, scope: !2737)
!2807 = !DILocation(line: 755, column: 23, scope: !2737)
!2808 = !DILocation(line: 755, column: 22, scope: !2737)
!2809 = !DILocation(line: 755, column: 28, scope: !2737)
!2810 = !DILocation(line: 755, column: 31, scope: !2737)
!2811 = !DILocation(line: 755, column: 30, scope: !2737)
!2812 = !DILocation(line: 755, column: 26, scope: !2737)
!2813 = !DILocation(line: 755, column: 18, scope: !2737)
!2814 = !DILocalVariable(name: "dp", scope: !2737, file: !1, line: 757, type: !50)
!2815 = !DILocation(line: 757, column: 10, scope: !2737)
!2816 = !DILocation(line: 757, column: 16, scope: !2737)
!2817 = !DILocation(line: 757, column: 15, scope: !2737)
!2818 = !DILocation(line: 757, column: 23, scope: !2737)
!2819 = !DILocation(line: 757, column: 26, scope: !2737)
!2820 = !DILocation(line: 757, column: 25, scope: !2737)
!2821 = !DILocation(line: 757, column: 31, scope: !2737)
!2822 = !DILocation(line: 757, column: 34, scope: !2737)
!2823 = !DILocation(line: 757, column: 33, scope: !2737)
!2824 = !DILocation(line: 757, column: 29, scope: !2737)
!2825 = !DILocation(line: 757, column: 21, scope: !2737)
!2826 = !DILocalVariable(name: "dq", scope: !2737, file: !1, line: 758, type: !50)
!2827 = !DILocation(line: 758, column: 10, scope: !2737)
!2828 = !DILocation(line: 758, column: 16, scope: !2737)
!2829 = !DILocation(line: 758, column: 23, scope: !2737)
!2830 = !DILocation(line: 758, column: 26, scope: !2737)
!2831 = !DILocation(line: 758, column: 25, scope: !2737)
!2832 = !DILocation(line: 758, column: 31, scope: !2737)
!2833 = !DILocation(line: 758, column: 34, scope: !2737)
!2834 = !DILocation(line: 758, column: 33, scope: !2737)
!2835 = !DILocation(line: 758, column: 29, scope: !2737)
!2836 = !DILocation(line: 758, column: 21, scope: !2737)
!2837 = !DILocalVariable(name: "A", scope: !2737, file: !1, line: 760, type: !50)
!2838 = !DILocation(line: 760, column: 10, scope: !2737)
!2839 = !DILocalVariable(name: "B", scope: !2737, file: !1, line: 760, type: !50)
!2840 = !DILocation(line: 760, column: 13, scope: !2737)
!2841 = !DILocalVariable(name: "C", scope: !2737, file: !1, line: 760, type: !50)
!2842 = !DILocation(line: 760, column: 16, scope: !2737)
!2843 = !DILocalVariable(name: "D", scope: !2737, file: !1, line: 760, type: !50)
!2844 = !DILocation(line: 760, column: 19, scope: !2737)
!2845 = !DILocalVariable(name: "pk", scope: !2737, file: !1, line: 762, type: !50)
!2846 = !DILocation(line: 762, column: 10, scope: !2737)
!2847 = !DILocalVariable(name: "P", scope: !2737, file: !1, line: 763, type: !50)
!2848 = !DILocation(line: 763, column: 10, scope: !2737)
!2849 = !DILocalVariable(name: "Q", scope: !2737, file: !1, line: 764, type: !50)
!2850 = !DILocation(line: 764, column: 10, scope: !2737)
!2851 = !DILocation(line: 764, column: 22, scope: !2737)
!2852 = !DILocation(line: 764, column: 26, scope: !2737)
!2853 = !DILocation(line: 764, column: 25, scope: !2737)
!2854 = !DILocation(line: 764, column: 20, scope: !2737)
!2855 = !DILocation(line: 766, column: 4, scope: !2737)
!2856 = !DILocation(line: 766, column: 10, scope: !2737)
!2857 = !DILocation(line: 768, column: 3, scope: !2737)
!2858 = distinct !{!2858, !2857}
!2859 = !DILocation(line: 769, column: 10, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2737, file: !1, line: 768, column: 6)
!2861 = !DILocation(line: 769, column: 7, scope: !2860)
!2862 = !DILocation(line: 770, column: 10, scope: !2860)
!2863 = !DILocation(line: 770, column: 7, scope: !2860)
!2864 = !DILocation(line: 771, column: 8, scope: !2860)
!2865 = !DILocation(line: 772, column: 11, scope: !2860)
!2866 = !DILocation(line: 772, column: 8, scope: !2860)
!2867 = !DILocation(line: 773, column: 11, scope: !2860)
!2868 = !DILocation(line: 773, column: 8, scope: !2860)
!2869 = !DILocation(line: 774, column: 8, scope: !2860)
!2870 = !DILocation(line: 775, column: 10, scope: !2860)
!2871 = !DILocation(line: 775, column: 13, scope: !2860)
!2872 = !DILocation(line: 775, column: 12, scope: !2860)
!2873 = !DILocation(line: 775, column: 18, scope: !2860)
!2874 = !DILocation(line: 775, column: 21, scope: !2860)
!2875 = !DILocation(line: 775, column: 20, scope: !2860)
!2876 = !DILocation(line: 775, column: 16, scope: !2860)
!2877 = !DILocation(line: 775, column: 26, scope: !2860)
!2878 = !DILocation(line: 775, column: 24, scope: !2860)
!2879 = !DILocation(line: 775, column: 8, scope: !2860)
!2880 = !DILocation(line: 776, column: 10, scope: !2860)
!2881 = !DILocation(line: 776, column: 13, scope: !2860)
!2882 = !DILocation(line: 776, column: 12, scope: !2860)
!2883 = !DILocation(line: 776, column: 18, scope: !2860)
!2884 = !DILocation(line: 776, column: 21, scope: !2860)
!2885 = !DILocation(line: 776, column: 20, scope: !2860)
!2886 = !DILocation(line: 776, column: 16, scope: !2860)
!2887 = !DILocation(line: 776, column: 26, scope: !2860)
!2888 = !DILocation(line: 776, column: 24, scope: !2860)
!2889 = !DILocation(line: 776, column: 8, scope: !2860)
!2890 = !DILocation(line: 777, column: 15, scope: !2860)
!2891 = !DILocation(line: 777, column: 17, scope: !2860)
!2892 = !DILocation(line: 777, column: 16, scope: !2860)
!2893 = !DILocation(line: 777, column: 21, scope: !2860)
!2894 = !DILocation(line: 777, column: 24, scope: !2860)
!2895 = !DILocation(line: 777, column: 23, scope: !2860)
!2896 = !DILocation(line: 777, column: 19, scope: !2860)
!2897 = !DILocation(line: 777, column: 13, scope: !2860)
!2898 = !DILocation(line: 777, column: 8, scope: !2860)
!2899 = !DILocation(line: 778, column: 11, scope: !2860)
!2900 = !DILocation(line: 778, column: 13, scope: !2860)
!2901 = !DILocation(line: 778, column: 12, scope: !2860)
!2902 = !DILocation(line: 778, column: 8, scope: !2860)
!2903 = !DILocation(line: 779, column: 11, scope: !2860)
!2904 = !DILocation(line: 779, column: 10, scope: !2860)
!2905 = !DILocation(line: 779, column: 13, scope: !2860)
!2906 = !DILocation(line: 779, column: 12, scope: !2860)
!2907 = !DILocation(line: 779, column: 8, scope: !2860)
!2908 = !DILocation(line: 780, column: 10, scope: !2860)
!2909 = !DILocation(line: 780, column: 13, scope: !2860)
!2910 = !DILocation(line: 780, column: 12, scope: !2860)
!2911 = !DILocation(line: 780, column: 18, scope: !2860)
!2912 = !DILocation(line: 780, column: 21, scope: !2860)
!2913 = !DILocation(line: 780, column: 20, scope: !2860)
!2914 = !DILocation(line: 780, column: 16, scope: !2860)
!2915 = !DILocation(line: 780, column: 24, scope: !2860)
!2916 = !DILocation(line: 780, column: 8, scope: !2860)
!2917 = !DILocation(line: 781, column: 10, scope: !2860)
!2918 = !DILocation(line: 781, column: 13, scope: !2860)
!2919 = !DILocation(line: 781, column: 12, scope: !2860)
!2920 = !DILocation(line: 781, column: 18, scope: !2860)
!2921 = !DILocation(line: 781, column: 21, scope: !2860)
!2922 = !DILocation(line: 781, column: 20, scope: !2860)
!2923 = !DILocation(line: 781, column: 16, scope: !2860)
!2924 = !DILocation(line: 781, column: 8, scope: !2860)
!2925 = !DILocation(line: 782, column: 10, scope: !2860)
!2926 = !DILocation(line: 782, column: 13, scope: !2860)
!2927 = !DILocation(line: 782, column: 12, scope: !2860)
!2928 = !DILocation(line: 782, column: 18, scope: !2860)
!2929 = !DILocation(line: 782, column: 21, scope: !2860)
!2930 = !DILocation(line: 782, column: 20, scope: !2860)
!2931 = !DILocation(line: 782, column: 16, scope: !2860)
!2932 = !DILocation(line: 782, column: 8, scope: !2860)
!2933 = !DILocation(line: 783, column: 10, scope: !2860)
!2934 = !DILocation(line: 783, column: 13, scope: !2860)
!2935 = !DILocation(line: 783, column: 12, scope: !2860)
!2936 = !DILocation(line: 783, column: 18, scope: !2860)
!2937 = !DILocation(line: 783, column: 21, scope: !2860)
!2938 = !DILocation(line: 783, column: 20, scope: !2860)
!2939 = !DILocation(line: 783, column: 16, scope: !2860)
!2940 = !DILocation(line: 783, column: 8, scope: !2860)
!2941 = !DILocation(line: 784, column: 10, scope: !2860)
!2942 = !DILocation(line: 784, column: 8, scope: !2860)
!2943 = !DILocation(line: 785, column: 8, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2860, file: !1, line: 785, column: 8)
!2945 = !DILocation(line: 785, column: 11, scope: !2944)
!2946 = !DILocation(line: 785, column: 8, scope: !2860)
!2947 = !DILocation(line: 786, column: 14, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2944, file: !1, line: 785, column: 24)
!2949 = !DILocation(line: 787, column: 7, scope: !2948)
!2950 = !DILocation(line: 789, column: 9, scope: !2860)
!2951 = !DILocation(line: 789, column: 5, scope: !2860)
!2952 = !DILocation(line: 790, column: 3, scope: !2860)
!2953 = !DILocation(line: 791, column: 14, scope: !2737)
!2954 = !DILocation(line: 791, column: 9, scope: !2737)
!2955 = !DILocation(line: 791, column: 23, scope: !2737)
!2956 = !DILocation(line: 791, column: 18, scope: !2957)
!2957 = !DILexicalBlockFile(scope: !2737, file: !1, discriminator: 1)
!2958 = !DILocation(line: 791, column: 17, scope: !2737)
!2959 = !DILocation(line: 791, column: 35, scope: !2737)
!2960 = !DILocation(line: 791, column: 30, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !2737, file: !1, discriminator: 2)
!2962 = !DILocation(line: 791, column: 43, scope: !2737)
!2963 = !DILocation(line: 791, column: 38, scope: !2964)
!2964 = !DILexicalBlockFile(scope: !2737, file: !1, discriminator: 3)
!2965 = !DILocation(line: 791, column: 37, scope: !2737)
!2966 = !DILocation(line: 791, column: 46, scope: !2737)
!2967 = !DILocation(line: 791, column: 27, scope: !2737)
!2968 = !DILocation(line: 790, column: 3, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2860, file: !1, discriminator: 1)
!2970 = !DILocation(line: 793, column: 6, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2737, file: !1, line: 793, column: 6)
!2972 = !DILocation(line: 793, column: 41, scope: !2971)
!2973 = !DILocation(line: 793, column: 36, scope: !2971)
!2974 = !DILocation(line: 793, column: 35, scope: !2971)
!2975 = !DILocation(line: 793, column: 8, scope: !2971)
!2976 = !DILocation(line: 793, column: 6, scope: !2737)
!2977 = !DILocation(line: 794, column: 12, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2971, file: !1, line: 793, column: 45)
!2979 = !DILocation(line: 795, column: 3, scope: !2978)
!2980 = !DILocation(line: 797, column: 15, scope: !2737)
!2981 = !DILocation(line: 797, column: 4, scope: !2737)
!2982 = !DILocation(line: 797, column: 13, scope: !2737)
!2983 = !DILocation(line: 798, column: 15, scope: !2737)
!2984 = !DILocation(line: 798, column: 4, scope: !2737)
!2985 = !DILocation(line: 798, column: 13, scope: !2737)
!2986 = !DILocation(line: 799, column: 10, scope: !2737)
!2987 = !DILocation(line: 799, column: 3, scope: !2737)
!2988 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_F_array", scope: !1, file: !1, line: 1211, type: !2989, isLocal: false, isDefinition: true, scopeLine: 1215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!42, !50, !42, !50, !50, !227, !227}
!2991 = !DILocalVariable(name: "lam_min", arg: 1, scope: !2988, file: !1, line: 1211, type: !50)
!2992 = !DILocation(line: 1211, column: 36, scope: !2988)
!2993 = !DILocalVariable(name: "kmax", arg: 2, scope: !2988, file: !1, line: 1211, type: !42)
!2994 = !DILocation(line: 1211, column: 49, scope: !2988)
!2995 = !DILocalVariable(name: "eta", arg: 3, scope: !2988, file: !1, line: 1212, type: !50)
!2996 = !DILocation(line: 1212, column: 41, scope: !2988)
!2997 = !DILocalVariable(name: "x", arg: 4, scope: !2988, file: !1, line: 1212, type: !50)
!2998 = !DILocation(line: 1212, column: 53, scope: !2988)
!2999 = !DILocalVariable(name: "fc_array", arg: 5, scope: !2988, file: !1, line: 1213, type: !227)
!3000 = !DILocation(line: 1213, column: 43, scope: !2988)
!3001 = !DILocalVariable(name: "F_exp", arg: 6, scope: !2988, file: !1, line: 1214, type: !227)
!3002 = !DILocation(line: 1214, column: 43, scope: !2988)
!3003 = !DILocation(line: 1216, column: 6, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2988, file: !1, line: 1216, column: 6)
!3005 = !DILocation(line: 1216, column: 8, scope: !3004)
!3006 = !DILocation(line: 1216, column: 6, scope: !2988)
!3007 = !DILocalVariable(name: "k", scope: !3008, file: !1, line: 1217, type: !42)
!3008 = distinct !DILexicalBlock(scope: !3004, file: !1, line: 1216, column: 16)
!3009 = !DILocation(line: 1217, column: 9, scope: !3008)
!3010 = !DILocation(line: 1218, column: 6, scope: !3008)
!3011 = !DILocation(line: 1218, column: 12, scope: !3008)
!3012 = !DILocation(line: 1219, column: 10, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !1, line: 1219, column: 5)
!3014 = !DILocation(line: 1219, column: 9, scope: !3013)
!3015 = !DILocation(line: 1219, column: 14, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !3017, file: !1, discriminator: 1)
!3017 = distinct !DILexicalBlock(scope: !3013, file: !1, line: 1219, column: 5)
!3018 = !DILocation(line: 1219, column: 17, scope: !3016)
!3019 = !DILocation(line: 1219, column: 15, scope: !3016)
!3020 = !DILocation(line: 1219, column: 5, scope: !3016)
!3021 = !DILocation(line: 1220, column: 16, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3017, file: !1, line: 1219, column: 28)
!3023 = !DILocation(line: 1220, column: 7, scope: !3022)
!3024 = !DILocation(line: 1220, column: 19, scope: !3022)
!3025 = !DILocation(line: 1221, column: 5, scope: !3022)
!3026 = !DILocation(line: 1219, column: 24, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !3017, file: !1, discriminator: 2)
!3028 = !DILocation(line: 1219, column: 5, scope: !3027)
!3029 = distinct !{!3029, !3030}
!3030 = !DILocation(line: 1219, column: 5, scope: !3008)
!3031 = !DILocation(line: 1222, column: 8, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3008, file: !1, line: 1222, column: 8)
!3033 = !DILocation(line: 1222, column: 16, scope: !3032)
!3034 = !DILocation(line: 1222, column: 8, scope: !3008)
!3035 = !DILocalVariable(name: "f_0", scope: !3036, file: !1, line: 1223, type: !52)
!3036 = distinct !DILexicalBlock(scope: !3032, file: !1, line: 1222, column: 23)
!3037 = !DILocation(line: 1223, column: 21, scope: !3036)
!3038 = !DILocation(line: 1224, column: 18, scope: !3036)
!3039 = !DILocation(line: 1224, column: 7, scope: !3036)
!3040 = !DILocation(line: 1225, column: 25, scope: !3036)
!3041 = !DILocation(line: 1225, column: 7, scope: !3036)
!3042 = !DILocation(line: 1225, column: 19, scope: !3036)
!3043 = !DILocation(line: 1226, column: 5, scope: !3036)
!3044 = !DILocation(line: 1227, column: 5, scope: !3008)
!3045 = !DILocalVariable(name: "x_inv", scope: !3046, file: !1, line: 1230, type: !287)
!3046 = distinct !DILexicalBlock(scope: !3004, file: !1, line: 1229, column: 8)
!3047 = !DILocation(line: 1230, column: 18, scope: !3046)
!3048 = !DILocation(line: 1230, column: 30, scope: !3046)
!3049 = !DILocation(line: 1230, column: 29, scope: !3046)
!3050 = !DILocalVariable(name: "lam_max", scope: !3046, file: !1, line: 1231, type: !287)
!3051 = !DILocation(line: 1231, column: 18, scope: !3046)
!3052 = !DILocation(line: 1231, column: 28, scope: !3046)
!3053 = !DILocation(line: 1231, column: 38, scope: !3046)
!3054 = !DILocation(line: 1231, column: 36, scope: !3046)
!3055 = !DILocalVariable(name: "F", scope: !3046, file: !1, line: 1232, type: !52)
!3056 = !DILocation(line: 1232, column: 19, scope: !3046)
!3057 = !DILocalVariable(name: "Fp", scope: !3046, file: !1, line: 1232, type: !52)
!3058 = !DILocation(line: 1232, column: 22, scope: !3046)
!3059 = !DILocalVariable(name: "G", scope: !3046, file: !1, line: 1233, type: !52)
!3060 = !DILocation(line: 1233, column: 19, scope: !3046)
!3061 = !DILocalVariable(name: "Gp", scope: !3046, file: !1, line: 1233, type: !52)
!3062 = !DILocation(line: 1233, column: 22, scope: !3046)
!3063 = !DILocalVariable(name: "G_exp", scope: !3046, file: !1, line: 1234, type: !50)
!3064 = !DILocation(line: 1234, column: 12, scope: !3046)
!3065 = !DILocalVariable(name: "stat_FG", scope: !3046, file: !1, line: 1236, type: !42)
!3066 = !DILocation(line: 1236, column: 9, scope: !3046)
!3067 = !DILocation(line: 1236, column: 44, scope: !3046)
!3068 = !DILocation(line: 1236, column: 49, scope: !3046)
!3069 = !DILocation(line: 1236, column: 52, scope: !3046)
!3070 = !DILocation(line: 1237, column: 65, scope: !3046)
!3071 = !DILocation(line: 1236, column: 19, scope: !3046)
!3072 = !DILocalVariable(name: "fcl", scope: !3046, file: !1, line: 1239, type: !50)
!3073 = !DILocation(line: 1239, column: 12, scope: !3046)
!3074 = !DILocation(line: 1239, column: 21, scope: !3046)
!3075 = !DILocalVariable(name: "fpl", scope: !3046, file: !1, line: 1240, type: !50)
!3076 = !DILocation(line: 1240, column: 12, scope: !3046)
!3077 = !DILocation(line: 1240, column: 21, scope: !3046)
!3078 = !DILocalVariable(name: "lam", scope: !3046, file: !1, line: 1241, type: !50)
!3079 = !DILocation(line: 1241, column: 12, scope: !3046)
!3080 = !DILocation(line: 1241, column: 18, scope: !3046)
!3081 = !DILocalVariable(name: "k", scope: !3046, file: !1, line: 1242, type: !42)
!3082 = !DILocation(line: 1242, column: 9, scope: !3046)
!3083 = !DILocation(line: 1244, column: 24, scope: !3046)
!3084 = !DILocation(line: 1244, column: 14, scope: !3046)
!3085 = !DILocation(line: 1244, column: 5, scope: !3046)
!3086 = !DILocation(line: 1244, column: 20, scope: !3046)
!3087 = !DILocation(line: 1246, column: 11, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3046, file: !1, line: 1246, column: 5)
!3089 = !DILocation(line: 1246, column: 15, scope: !3088)
!3090 = !DILocation(line: 1246, column: 10, scope: !3088)
!3091 = !DILocation(line: 1246, column: 9, scope: !3088)
!3092 = !DILocation(line: 1246, column: 19, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !3094, file: !1, discriminator: 1)
!3094 = distinct !DILexicalBlock(scope: !3088, file: !1, line: 1246, column: 5)
!3095 = !DILocation(line: 1246, column: 20, scope: !3093)
!3096 = !DILocation(line: 1246, column: 5, scope: !3093)
!3097 = !DILocalVariable(name: "el", scope: !3098, file: !1, line: 1247, type: !50)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !1, line: 1246, column: 30)
!3099 = !DILocation(line: 1247, column: 14, scope: !3098)
!3100 = !DILocation(line: 1247, column: 19, scope: !3098)
!3101 = !DILocation(line: 1247, column: 23, scope: !3098)
!3102 = !DILocation(line: 1247, column: 22, scope: !3098)
!3103 = !DILocalVariable(name: "rl", scope: !3098, file: !1, line: 1248, type: !50)
!3104 = !DILocation(line: 1248, column: 14, scope: !3098)
!3105 = !DILocation(line: 1248, column: 30, scope: !3098)
!3106 = !DILocation(line: 1248, column: 19, scope: !3098)
!3107 = !DILocalVariable(name: "sl", scope: !3098, file: !1, line: 1249, type: !50)
!3108 = !DILocation(line: 1249, column: 14, scope: !3098)
!3109 = !DILocation(line: 1249, column: 19, scope: !3098)
!3110 = !DILocation(line: 1249, column: 25, scope: !3098)
!3111 = !DILocation(line: 1249, column: 29, scope: !3098)
!3112 = !DILocation(line: 1249, column: 28, scope: !3098)
!3113 = !DILocation(line: 1249, column: 23, scope: !3098)
!3114 = !DILocalVariable(name: "fc_lm1", scope: !3098, file: !1, line: 1250, type: !50)
!3115 = !DILocation(line: 1250, column: 14, scope: !3098)
!3116 = !DILocation(line: 1250, column: 24, scope: !3098)
!3117 = !DILocation(line: 1250, column: 28, scope: !3098)
!3118 = !DILocation(line: 1250, column: 27, scope: !3098)
!3119 = !DILocation(line: 1250, column: 33, scope: !3098)
!3120 = !DILocation(line: 1250, column: 31, scope: !3098)
!3121 = !DILocation(line: 1250, column: 38, scope: !3098)
!3122 = !DILocation(line: 1250, column: 37, scope: !3098)
!3123 = !DILocation(line: 1251, column: 23, scope: !3098)
!3124 = !DILocation(line: 1251, column: 16, scope: !3098)
!3125 = !DILocation(line: 1251, column: 7, scope: !3098)
!3126 = !DILocation(line: 1251, column: 21, scope: !3098)
!3127 = !DILocation(line: 1252, column: 24, scope: !3098)
!3128 = !DILocation(line: 1252, column: 31, scope: !3098)
!3129 = !DILocation(line: 1252, column: 30, scope: !3098)
!3130 = !DILocation(line: 1252, column: 36, scope: !3098)
!3131 = !DILocation(line: 1252, column: 40, scope: !3098)
!3132 = !DILocation(line: 1252, column: 39, scope: !3098)
!3133 = !DILocation(line: 1252, column: 34, scope: !3098)
!3134 = !DILocation(line: 1252, column: 21, scope: !3098)
!3135 = !DILocation(line: 1253, column: 24, scope: !3098)
!3136 = !DILocation(line: 1253, column: 21, scope: !3098)
!3137 = !DILocation(line: 1254, column: 11, scope: !3098)
!3138 = !DILocation(line: 1255, column: 5, scope: !3098)
!3139 = !DILocation(line: 1246, column: 26, scope: !3140)
!3140 = !DILexicalBlockFile(scope: !3094, file: !1, discriminator: 2)
!3141 = !DILocation(line: 1246, column: 5, scope: !3140)
!3142 = distinct !{!3142, !3143}
!3143 = !DILocation(line: 1246, column: 5, scope: !3046)
!3144 = !DILocation(line: 1257, column: 12, scope: !3046)
!3145 = !DILocation(line: 1257, column: 5, scope: !3046)
!3146 = !DILocation(line: 1259, column: 1, scope: !2988)
!3147 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_FG_array", scope: !1, file: !1, line: 1263, type: !3148, isLocal: false, isDefinition: true, scopeLine: 1267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!42, !50, !42, !50, !50, !227, !227, !227, !227}
!3150 = !DILocalVariable(name: "lam_min", arg: 1, scope: !3147, file: !1, line: 1263, type: !50)
!3151 = !DILocation(line: 1263, column: 37, scope: !3147)
!3152 = !DILocalVariable(name: "kmax", arg: 2, scope: !3147, file: !1, line: 1263, type: !42)
!3153 = !DILocation(line: 1263, column: 50, scope: !3147)
!3154 = !DILocalVariable(name: "eta", arg: 3, scope: !3147, file: !1, line: 1264, type: !50)
!3155 = !DILocation(line: 1264, column: 42, scope: !3147)
!3156 = !DILocalVariable(name: "x", arg: 4, scope: !3147, file: !1, line: 1264, type: !50)
!3157 = !DILocation(line: 1264, column: 54, scope: !3147)
!3158 = !DILocalVariable(name: "fc_array", arg: 5, scope: !3147, file: !1, line: 1265, type: !227)
!3159 = !DILocation(line: 1265, column: 44, scope: !3147)
!3160 = !DILocalVariable(name: "gc_array", arg: 6, scope: !3147, file: !1, line: 1265, type: !227)
!3161 = !DILocation(line: 1265, column: 63, scope: !3147)
!3162 = !DILocalVariable(name: "F_exp", arg: 7, scope: !3147, file: !1, line: 1266, type: !227)
!3163 = !DILocation(line: 1266, column: 44, scope: !3147)
!3164 = !DILocalVariable(name: "G_exp", arg: 8, scope: !3147, file: !1, line: 1266, type: !227)
!3165 = !DILocation(line: 1266, column: 60, scope: !3147)
!3166 = !DILocalVariable(name: "x_inv", scope: !3147, file: !1, line: 1268, type: !287)
!3167 = !DILocation(line: 1268, column: 16, scope: !3147)
!3168 = !DILocation(line: 1268, column: 28, scope: !3147)
!3169 = !DILocation(line: 1268, column: 27, scope: !3147)
!3170 = !DILocalVariable(name: "lam_max", scope: !3147, file: !1, line: 1269, type: !287)
!3171 = !DILocation(line: 1269, column: 16, scope: !3147)
!3172 = !DILocation(line: 1269, column: 26, scope: !3147)
!3173 = !DILocation(line: 1269, column: 36, scope: !3147)
!3174 = !DILocation(line: 1269, column: 34, scope: !3147)
!3175 = !DILocalVariable(name: "F", scope: !3147, file: !1, line: 1270, type: !52)
!3176 = !DILocation(line: 1270, column: 17, scope: !3147)
!3177 = !DILocalVariable(name: "Fp", scope: !3147, file: !1, line: 1270, type: !52)
!3178 = !DILocation(line: 1270, column: 20, scope: !3147)
!3179 = !DILocalVariable(name: "G", scope: !3147, file: !1, line: 1271, type: !52)
!3180 = !DILocation(line: 1271, column: 17, scope: !3147)
!3181 = !DILocalVariable(name: "Gp", scope: !3147, file: !1, line: 1271, type: !52)
!3182 = !DILocation(line: 1271, column: 20, scope: !3147)
!3183 = !DILocalVariable(name: "stat_FG", scope: !3147, file: !1, line: 1273, type: !42)
!3184 = !DILocation(line: 1273, column: 7, scope: !3147)
!3185 = !DILocation(line: 1273, column: 42, scope: !3147)
!3186 = !DILocation(line: 1273, column: 47, scope: !3147)
!3187 = !DILocation(line: 1273, column: 50, scope: !3147)
!3188 = !DILocation(line: 1273, column: 59, scope: !3147)
!3189 = !DILocation(line: 1274, column: 63, scope: !3147)
!3190 = !DILocation(line: 1274, column: 70, scope: !3147)
!3191 = !DILocation(line: 1273, column: 17, scope: !3147)
!3192 = !DILocalVariable(name: "fcl", scope: !3147, file: !1, line: 1276, type: !50)
!3193 = !DILocation(line: 1276, column: 10, scope: !3147)
!3194 = !DILocation(line: 1276, column: 19, scope: !3147)
!3195 = !DILocalVariable(name: "fpl", scope: !3147, file: !1, line: 1277, type: !50)
!3196 = !DILocation(line: 1277, column: 10, scope: !3147)
!3197 = !DILocation(line: 1277, column: 19, scope: !3147)
!3198 = !DILocalVariable(name: "lam", scope: !3147, file: !1, line: 1278, type: !50)
!3199 = !DILocation(line: 1278, column: 10, scope: !3147)
!3200 = !DILocation(line: 1278, column: 16, scope: !3147)
!3201 = !DILocalVariable(name: "k", scope: !3147, file: !1, line: 1279, type: !42)
!3202 = !DILocation(line: 1279, column: 7, scope: !3147)
!3203 = !DILocalVariable(name: "gcl", scope: !3147, file: !1, line: 1281, type: !50)
!3204 = !DILocation(line: 1281, column: 10, scope: !3147)
!3205 = !DILocalVariable(name: "gpl", scope: !3147, file: !1, line: 1281, type: !50)
!3206 = !DILocation(line: 1281, column: 15, scope: !3147)
!3207 = !DILocation(line: 1283, column: 22, scope: !3147)
!3208 = !DILocation(line: 1283, column: 12, scope: !3147)
!3209 = !DILocation(line: 1283, column: 3, scope: !3147)
!3210 = !DILocation(line: 1283, column: 18, scope: !3147)
!3211 = !DILocation(line: 1285, column: 9, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3147, file: !1, line: 1285, column: 3)
!3213 = !DILocation(line: 1285, column: 13, scope: !3212)
!3214 = !DILocation(line: 1285, column: 8, scope: !3212)
!3215 = !DILocation(line: 1285, column: 7, scope: !3212)
!3216 = !DILocation(line: 1285, column: 17, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !3218, file: !1, discriminator: 1)
!3218 = distinct !DILexicalBlock(scope: !3212, file: !1, line: 1285, column: 3)
!3219 = !DILocation(line: 1285, column: 18, scope: !3217)
!3220 = !DILocation(line: 1285, column: 3, scope: !3217)
!3221 = !DILocalVariable(name: "el", scope: !3222, file: !1, line: 1286, type: !50)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !1, line: 1285, column: 28)
!3223 = !DILocation(line: 1286, column: 12, scope: !3222)
!3224 = !DILocation(line: 1286, column: 17, scope: !3222)
!3225 = !DILocation(line: 1286, column: 21, scope: !3222)
!3226 = !DILocation(line: 1286, column: 20, scope: !3222)
!3227 = !DILocalVariable(name: "rl", scope: !3222, file: !1, line: 1287, type: !50)
!3228 = !DILocation(line: 1287, column: 12, scope: !3222)
!3229 = !DILocation(line: 1287, column: 28, scope: !3222)
!3230 = !DILocation(line: 1287, column: 17, scope: !3222)
!3231 = !DILocalVariable(name: "sl", scope: !3222, file: !1, line: 1288, type: !50)
!3232 = !DILocation(line: 1288, column: 12, scope: !3222)
!3233 = !DILocation(line: 1288, column: 17, scope: !3222)
!3234 = !DILocation(line: 1288, column: 23, scope: !3222)
!3235 = !DILocation(line: 1288, column: 27, scope: !3222)
!3236 = !DILocation(line: 1288, column: 26, scope: !3222)
!3237 = !DILocation(line: 1288, column: 21, scope: !3222)
!3238 = !DILocalVariable(name: "fc_lm1", scope: !3222, file: !1, line: 1289, type: !50)
!3239 = !DILocation(line: 1289, column: 12, scope: !3222)
!3240 = !DILocation(line: 1290, column: 15, scope: !3222)
!3241 = !DILocation(line: 1290, column: 19, scope: !3222)
!3242 = !DILocation(line: 1290, column: 18, scope: !3222)
!3243 = !DILocation(line: 1290, column: 24, scope: !3222)
!3244 = !DILocation(line: 1290, column: 22, scope: !3222)
!3245 = !DILocation(line: 1290, column: 29, scope: !3222)
!3246 = !DILocation(line: 1290, column: 28, scope: !3222)
!3247 = !DILocation(line: 1290, column: 12, scope: !3222)
!3248 = !DILocation(line: 1291, column: 19, scope: !3222)
!3249 = !DILocation(line: 1291, column: 14, scope: !3222)
!3250 = !DILocation(line: 1291, column: 5, scope: !3222)
!3251 = !DILocation(line: 1291, column: 17, scope: !3222)
!3252 = !DILocation(line: 1292, column: 20, scope: !3222)
!3253 = !DILocation(line: 1292, column: 27, scope: !3222)
!3254 = !DILocation(line: 1292, column: 26, scope: !3222)
!3255 = !DILocation(line: 1292, column: 32, scope: !3222)
!3256 = !DILocation(line: 1292, column: 36, scope: !3222)
!3257 = !DILocation(line: 1292, column: 35, scope: !3222)
!3258 = !DILocation(line: 1292, column: 30, scope: !3222)
!3259 = !DILocation(line: 1292, column: 17, scope: !3222)
!3260 = !DILocation(line: 1293, column: 20, scope: !3222)
!3261 = !DILocation(line: 1293, column: 17, scope: !3222)
!3262 = !DILocation(line: 1294, column: 9, scope: !3222)
!3263 = !DILocation(line: 1295, column: 3, scope: !3222)
!3264 = !DILocation(line: 1285, column: 24, scope: !3265)
!3265 = !DILexicalBlockFile(scope: !3218, file: !1, discriminator: 2)
!3266 = !DILocation(line: 1285, column: 3, scope: !3265)
!3267 = distinct !{!3267, !3268}
!3268 = !DILocation(line: 1285, column: 3, scope: !3147)
!3269 = !DILocation(line: 1297, column: 11, scope: !3147)
!3270 = !DILocation(line: 1297, column: 7, scope: !3147)
!3271 = !DILocation(line: 1298, column: 12, scope: !3147)
!3272 = !DILocation(line: 1298, column: 7, scope: !3147)
!3273 = !DILocation(line: 1299, column: 9, scope: !3147)
!3274 = !DILocation(line: 1299, column: 17, scope: !3147)
!3275 = !DILocation(line: 1299, column: 7, scope: !3147)
!3276 = !DILocation(line: 1301, column: 19, scope: !3147)
!3277 = !DILocation(line: 1301, column: 3, scope: !3147)
!3278 = !DILocation(line: 1301, column: 15, scope: !3147)
!3279 = !DILocation(line: 1303, column: 8, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3147, file: !1, line: 1303, column: 3)
!3281 = !DILocation(line: 1303, column: 7, scope: !3280)
!3282 = !DILocation(line: 1303, column: 12, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !3284, file: !1, discriminator: 1)
!3284 = distinct !DILexicalBlock(scope: !3280, file: !1, line: 1303, column: 3)
!3285 = !DILocation(line: 1303, column: 15, scope: !3283)
!3286 = !DILocation(line: 1303, column: 13, scope: !3283)
!3287 = !DILocation(line: 1303, column: 3, scope: !3283)
!3288 = !DILocalVariable(name: "el", scope: !3289, file: !1, line: 1304, type: !50)
!3289 = distinct !DILexicalBlock(scope: !3284, file: !1, line: 1303, column: 26)
!3290 = !DILocation(line: 1304, column: 12, scope: !3289)
!3291 = !DILocation(line: 1304, column: 17, scope: !3289)
!3292 = !DILocation(line: 1304, column: 21, scope: !3289)
!3293 = !DILocation(line: 1304, column: 20, scope: !3289)
!3294 = !DILocalVariable(name: "rl", scope: !3289, file: !1, line: 1305, type: !50)
!3295 = !DILocation(line: 1305, column: 12, scope: !3289)
!3296 = !DILocation(line: 1305, column: 28, scope: !3289)
!3297 = !DILocation(line: 1305, column: 17, scope: !3289)
!3298 = !DILocalVariable(name: "sl", scope: !3289, file: !1, line: 1306, type: !50)
!3299 = !DILocation(line: 1306, column: 12, scope: !3289)
!3300 = !DILocation(line: 1306, column: 17, scope: !3289)
!3301 = !DILocation(line: 1306, column: 22, scope: !3289)
!3302 = !DILocation(line: 1306, column: 26, scope: !3289)
!3303 = !DILocation(line: 1306, column: 25, scope: !3289)
!3304 = !DILocation(line: 1306, column: 20, scope: !3289)
!3305 = !DILocalVariable(name: "gcl1", scope: !3289, file: !1, line: 1307, type: !50)
!3306 = !DILocation(line: 1307, column: 12, scope: !3289)
!3307 = !DILocation(line: 1307, column: 20, scope: !3289)
!3308 = !DILocation(line: 1307, column: 23, scope: !3289)
!3309 = !DILocation(line: 1307, column: 22, scope: !3289)
!3310 = !DILocation(line: 1307, column: 29, scope: !3289)
!3311 = !DILocation(line: 1307, column: 27, scope: !3289)
!3312 = !DILocation(line: 1307, column: 34, scope: !3289)
!3313 = !DILocation(line: 1307, column: 33, scope: !3289)
!3314 = !DILocation(line: 1308, column: 19, scope: !3289)
!3315 = !DILocation(line: 1308, column: 14, scope: !3289)
!3316 = !DILocation(line: 1308, column: 5, scope: !3289)
!3317 = !DILocation(line: 1308, column: 17, scope: !3289)
!3318 = !DILocation(line: 1309, column: 19, scope: !3289)
!3319 = !DILocation(line: 1309, column: 22, scope: !3289)
!3320 = !DILocation(line: 1309, column: 21, scope: !3289)
!3321 = !DILocation(line: 1309, column: 28, scope: !3289)
!3322 = !DILocation(line: 1309, column: 31, scope: !3289)
!3323 = !DILocation(line: 1309, column: 30, scope: !3289)
!3324 = !DILocation(line: 1309, column: 26, scope: !3289)
!3325 = !DILocation(line: 1309, column: 17, scope: !3289)
!3326 = !DILocation(line: 1310, column: 19, scope: !3289)
!3327 = !DILocation(line: 1310, column: 17, scope: !3289)
!3328 = !DILocation(line: 1311, column: 9, scope: !3289)
!3329 = !DILocation(line: 1312, column: 3, scope: !3289)
!3330 = !DILocation(line: 1303, column: 22, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !3284, file: !1, discriminator: 2)
!3332 = !DILocation(line: 1303, column: 3, scope: !3331)
!3333 = distinct !{!3333, !3334}
!3334 = !DILocation(line: 1303, column: 3, scope: !3147)
!3335 = !DILocation(line: 1314, column: 10, scope: !3147)
!3336 = !DILocation(line: 1314, column: 3, scope: !3147)
!3337 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_FGp_array", scope: !1, file: !1, line: 1319, type: !3338, isLocal: false, isDefinition: true, scopeLine: 1325, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!42, !50, !42, !50, !50, !227, !227, !227, !227, !227, !227}
!3340 = !DILocalVariable(name: "lam_min", arg: 1, scope: !3337, file: !1, line: 1319, type: !50)
!3341 = !DILocation(line: 1319, column: 38, scope: !3337)
!3342 = !DILocalVariable(name: "kmax", arg: 2, scope: !3337, file: !1, line: 1319, type: !42)
!3343 = !DILocation(line: 1319, column: 51, scope: !3337)
!3344 = !DILocalVariable(name: "eta", arg: 3, scope: !3337, file: !1, line: 1320, type: !50)
!3345 = !DILocation(line: 1320, column: 43, scope: !3337)
!3346 = !DILocalVariable(name: "x", arg: 4, scope: !3337, file: !1, line: 1320, type: !50)
!3347 = !DILocation(line: 1320, column: 55, scope: !3337)
!3348 = !DILocalVariable(name: "fc_array", arg: 5, scope: !3337, file: !1, line: 1321, type: !227)
!3349 = !DILocation(line: 1321, column: 45, scope: !3337)
!3350 = !DILocalVariable(name: "fcp_array", arg: 6, scope: !3337, file: !1, line: 1321, type: !227)
!3351 = !DILocation(line: 1321, column: 64, scope: !3337)
!3352 = !DILocalVariable(name: "gc_array", arg: 7, scope: !3337, file: !1, line: 1322, type: !227)
!3353 = !DILocation(line: 1322, column: 45, scope: !3337)
!3354 = !DILocalVariable(name: "gcp_array", arg: 8, scope: !3337, file: !1, line: 1322, type: !227)
!3355 = !DILocation(line: 1322, column: 64, scope: !3337)
!3356 = !DILocalVariable(name: "F_exp", arg: 9, scope: !3337, file: !1, line: 1323, type: !227)
!3357 = !DILocation(line: 1323, column: 45, scope: !3337)
!3358 = !DILocalVariable(name: "G_exp", arg: 10, scope: !3337, file: !1, line: 1323, type: !227)
!3359 = !DILocation(line: 1323, column: 61, scope: !3337)
!3360 = !DILocalVariable(name: "x_inv", scope: !3337, file: !1, line: 1326, type: !287)
!3361 = !DILocation(line: 1326, column: 16, scope: !3337)
!3362 = !DILocation(line: 1326, column: 28, scope: !3337)
!3363 = !DILocation(line: 1326, column: 27, scope: !3337)
!3364 = !DILocalVariable(name: "lam_max", scope: !3337, file: !1, line: 1327, type: !287)
!3365 = !DILocation(line: 1327, column: 16, scope: !3337)
!3366 = !DILocation(line: 1327, column: 26, scope: !3337)
!3367 = !DILocation(line: 1327, column: 36, scope: !3337)
!3368 = !DILocation(line: 1327, column: 34, scope: !3337)
!3369 = !DILocalVariable(name: "F", scope: !3337, file: !1, line: 1328, type: !52)
!3370 = !DILocation(line: 1328, column: 17, scope: !3337)
!3371 = !DILocalVariable(name: "Fp", scope: !3337, file: !1, line: 1328, type: !52)
!3372 = !DILocation(line: 1328, column: 20, scope: !3337)
!3373 = !DILocalVariable(name: "G", scope: !3337, file: !1, line: 1329, type: !52)
!3374 = !DILocation(line: 1329, column: 17, scope: !3337)
!3375 = !DILocalVariable(name: "Gp", scope: !3337, file: !1, line: 1329, type: !52)
!3376 = !DILocation(line: 1329, column: 20, scope: !3337)
!3377 = !DILocalVariable(name: "stat_FG", scope: !3337, file: !1, line: 1331, type: !42)
!3378 = !DILocation(line: 1331, column: 7, scope: !3337)
!3379 = !DILocation(line: 1331, column: 42, scope: !3337)
!3380 = !DILocation(line: 1331, column: 47, scope: !3337)
!3381 = !DILocation(line: 1331, column: 50, scope: !3337)
!3382 = !DILocation(line: 1331, column: 59, scope: !3337)
!3383 = !DILocation(line: 1332, column: 63, scope: !3337)
!3384 = !DILocation(line: 1332, column: 70, scope: !3337)
!3385 = !DILocation(line: 1331, column: 17, scope: !3337)
!3386 = !DILocalVariable(name: "fcl", scope: !3337, file: !1, line: 1334, type: !50)
!3387 = !DILocation(line: 1334, column: 10, scope: !3337)
!3388 = !DILocation(line: 1334, column: 19, scope: !3337)
!3389 = !DILocalVariable(name: "fpl", scope: !3337, file: !1, line: 1335, type: !50)
!3390 = !DILocation(line: 1335, column: 10, scope: !3337)
!3391 = !DILocation(line: 1335, column: 19, scope: !3337)
!3392 = !DILocalVariable(name: "lam", scope: !3337, file: !1, line: 1336, type: !50)
!3393 = !DILocation(line: 1336, column: 10, scope: !3337)
!3394 = !DILocation(line: 1336, column: 16, scope: !3337)
!3395 = !DILocalVariable(name: "k", scope: !3337, file: !1, line: 1337, type: !42)
!3396 = !DILocation(line: 1337, column: 7, scope: !3337)
!3397 = !DILocalVariable(name: "gcl", scope: !3337, file: !1, line: 1339, type: !50)
!3398 = !DILocation(line: 1339, column: 10, scope: !3337)
!3399 = !DILocalVariable(name: "gpl", scope: !3337, file: !1, line: 1339, type: !50)
!3400 = !DILocation(line: 1339, column: 15, scope: !3337)
!3401 = !DILocation(line: 1341, column: 23, scope: !3337)
!3402 = !DILocation(line: 1341, column: 12, scope: !3337)
!3403 = !DILocation(line: 1341, column: 3, scope: !3337)
!3404 = !DILocation(line: 1341, column: 19, scope: !3337)
!3405 = !DILocation(line: 1342, column: 24, scope: !3337)
!3406 = !DILocation(line: 1342, column: 13, scope: !3337)
!3407 = !DILocation(line: 1342, column: 3, scope: !3337)
!3408 = !DILocation(line: 1342, column: 19, scope: !3337)
!3409 = !DILocation(line: 1344, column: 9, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3337, file: !1, line: 1344, column: 3)
!3411 = !DILocation(line: 1344, column: 13, scope: !3410)
!3412 = !DILocation(line: 1344, column: 8, scope: !3410)
!3413 = !DILocation(line: 1344, column: 7, scope: !3410)
!3414 = !DILocation(line: 1344, column: 17, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3416, file: !1, discriminator: 1)
!3416 = distinct !DILexicalBlock(scope: !3410, file: !1, line: 1344, column: 3)
!3417 = !DILocation(line: 1344, column: 18, scope: !3415)
!3418 = !DILocation(line: 1344, column: 3, scope: !3415)
!3419 = !DILocalVariable(name: "el", scope: !3420, file: !1, line: 1345, type: !50)
!3420 = distinct !DILexicalBlock(scope: !3416, file: !1, line: 1344, column: 28)
!3421 = !DILocation(line: 1345, column: 12, scope: !3420)
!3422 = !DILocation(line: 1345, column: 17, scope: !3420)
!3423 = !DILocation(line: 1345, column: 21, scope: !3420)
!3424 = !DILocation(line: 1345, column: 20, scope: !3420)
!3425 = !DILocalVariable(name: "rl", scope: !3420, file: !1, line: 1346, type: !50)
!3426 = !DILocation(line: 1346, column: 12, scope: !3420)
!3427 = !DILocation(line: 1346, column: 28, scope: !3420)
!3428 = !DILocation(line: 1346, column: 17, scope: !3420)
!3429 = !DILocalVariable(name: "sl", scope: !3420, file: !1, line: 1347, type: !50)
!3430 = !DILocation(line: 1347, column: 12, scope: !3420)
!3431 = !DILocation(line: 1347, column: 17, scope: !3420)
!3432 = !DILocation(line: 1347, column: 23, scope: !3420)
!3433 = !DILocation(line: 1347, column: 27, scope: !3420)
!3434 = !DILocation(line: 1347, column: 26, scope: !3420)
!3435 = !DILocation(line: 1347, column: 21, scope: !3420)
!3436 = !DILocalVariable(name: "fc_lm1", scope: !3420, file: !1, line: 1348, type: !50)
!3437 = !DILocation(line: 1348, column: 12, scope: !3420)
!3438 = !DILocation(line: 1349, column: 15, scope: !3420)
!3439 = !DILocation(line: 1349, column: 19, scope: !3420)
!3440 = !DILocation(line: 1349, column: 18, scope: !3420)
!3441 = !DILocation(line: 1349, column: 24, scope: !3420)
!3442 = !DILocation(line: 1349, column: 22, scope: !3420)
!3443 = !DILocation(line: 1349, column: 29, scope: !3420)
!3444 = !DILocation(line: 1349, column: 28, scope: !3420)
!3445 = !DILocation(line: 1349, column: 12, scope: !3420)
!3446 = !DILocation(line: 1350, column: 20, scope: !3420)
!3447 = !DILocation(line: 1350, column: 14, scope: !3420)
!3448 = !DILocation(line: 1350, column: 5, scope: !3420)
!3449 = !DILocation(line: 1350, column: 18, scope: !3420)
!3450 = !DILocation(line: 1351, column: 20, scope: !3420)
!3451 = !DILocation(line: 1351, column: 27, scope: !3420)
!3452 = !DILocation(line: 1351, column: 26, scope: !3420)
!3453 = !DILocation(line: 1351, column: 32, scope: !3420)
!3454 = !DILocation(line: 1351, column: 36, scope: !3420)
!3455 = !DILocation(line: 1351, column: 35, scope: !3420)
!3456 = !DILocation(line: 1351, column: 30, scope: !3420)
!3457 = !DILocation(line: 1351, column: 18, scope: !3420)
!3458 = !DILocation(line: 1352, column: 20, scope: !3420)
!3459 = !DILocation(line: 1352, column: 15, scope: !3420)
!3460 = !DILocation(line: 1352, column: 5, scope: !3420)
!3461 = !DILocation(line: 1352, column: 18, scope: !3420)
!3462 = !DILocation(line: 1353, column: 21, scope: !3420)
!3463 = !DILocation(line: 1353, column: 18, scope: !3420)
!3464 = !DILocation(line: 1354, column: 9, scope: !3420)
!3465 = !DILocation(line: 1355, column: 3, scope: !3420)
!3466 = !DILocation(line: 1344, column: 24, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !3416, file: !1, discriminator: 2)
!3468 = !DILocation(line: 1344, column: 3, scope: !3467)
!3469 = distinct !{!3469, !3470}
!3470 = !DILocation(line: 1344, column: 3, scope: !3337)
!3471 = !DILocation(line: 1357, column: 11, scope: !3337)
!3472 = !DILocation(line: 1357, column: 7, scope: !3337)
!3473 = !DILocation(line: 1358, column: 12, scope: !3337)
!3474 = !DILocation(line: 1358, column: 7, scope: !3337)
!3475 = !DILocation(line: 1359, column: 9, scope: !3337)
!3476 = !DILocation(line: 1359, column: 17, scope: !3337)
!3477 = !DILocation(line: 1359, column: 7, scope: !3337)
!3478 = !DILocation(line: 1361, column: 20, scope: !3337)
!3479 = !DILocation(line: 1361, column: 3, scope: !3337)
!3480 = !DILocation(line: 1361, column: 16, scope: !3337)
!3481 = !DILocation(line: 1362, column: 21, scope: !3337)
!3482 = !DILocation(line: 1362, column: 3, scope: !3337)
!3483 = !DILocation(line: 1362, column: 16, scope: !3337)
!3484 = !DILocation(line: 1364, column: 8, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3337, file: !1, line: 1364, column: 3)
!3486 = !DILocation(line: 1364, column: 7, scope: !3485)
!3487 = !DILocation(line: 1364, column: 12, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !3489, file: !1, discriminator: 1)
!3489 = distinct !DILexicalBlock(scope: !3485, file: !1, line: 1364, column: 3)
!3490 = !DILocation(line: 1364, column: 15, scope: !3488)
!3491 = !DILocation(line: 1364, column: 13, scope: !3488)
!3492 = !DILocation(line: 1364, column: 3, scope: !3488)
!3493 = !DILocalVariable(name: "el", scope: !3494, file: !1, line: 1365, type: !50)
!3494 = distinct !DILexicalBlock(scope: !3489, file: !1, line: 1364, column: 26)
!3495 = !DILocation(line: 1365, column: 12, scope: !3494)
!3496 = !DILocation(line: 1365, column: 17, scope: !3494)
!3497 = !DILocation(line: 1365, column: 21, scope: !3494)
!3498 = !DILocation(line: 1365, column: 20, scope: !3494)
!3499 = !DILocalVariable(name: "rl", scope: !3494, file: !1, line: 1366, type: !50)
!3500 = !DILocation(line: 1366, column: 12, scope: !3494)
!3501 = !DILocation(line: 1366, column: 28, scope: !3494)
!3502 = !DILocation(line: 1366, column: 17, scope: !3494)
!3503 = !DILocalVariable(name: "sl", scope: !3494, file: !1, line: 1367, type: !50)
!3504 = !DILocation(line: 1367, column: 12, scope: !3494)
!3505 = !DILocation(line: 1367, column: 17, scope: !3494)
!3506 = !DILocation(line: 1367, column: 22, scope: !3494)
!3507 = !DILocation(line: 1367, column: 26, scope: !3494)
!3508 = !DILocation(line: 1367, column: 25, scope: !3494)
!3509 = !DILocation(line: 1367, column: 20, scope: !3494)
!3510 = !DILocalVariable(name: "gcl1", scope: !3494, file: !1, line: 1368, type: !50)
!3511 = !DILocation(line: 1368, column: 12, scope: !3494)
!3512 = !DILocation(line: 1368, column: 20, scope: !3494)
!3513 = !DILocation(line: 1368, column: 23, scope: !3494)
!3514 = !DILocation(line: 1368, column: 22, scope: !3494)
!3515 = !DILocation(line: 1368, column: 29, scope: !3494)
!3516 = !DILocation(line: 1368, column: 27, scope: !3494)
!3517 = !DILocation(line: 1368, column: 34, scope: !3494)
!3518 = !DILocation(line: 1368, column: 33, scope: !3494)
!3519 = !DILocation(line: 1369, column: 20, scope: !3494)
!3520 = !DILocation(line: 1369, column: 14, scope: !3494)
!3521 = !DILocation(line: 1369, column: 5, scope: !3494)
!3522 = !DILocation(line: 1369, column: 18, scope: !3494)
!3523 = !DILocation(line: 1370, column: 20, scope: !3494)
!3524 = !DILocation(line: 1370, column: 23, scope: !3494)
!3525 = !DILocation(line: 1370, column: 22, scope: !3494)
!3526 = !DILocation(line: 1370, column: 29, scope: !3494)
!3527 = !DILocation(line: 1370, column: 32, scope: !3494)
!3528 = !DILocation(line: 1370, column: 31, scope: !3494)
!3529 = !DILocation(line: 1370, column: 27, scope: !3494)
!3530 = !DILocation(line: 1370, column: 18, scope: !3494)
!3531 = !DILocation(line: 1371, column: 20, scope: !3494)
!3532 = !DILocation(line: 1371, column: 15, scope: !3494)
!3533 = !DILocation(line: 1371, column: 5, scope: !3494)
!3534 = !DILocation(line: 1371, column: 18, scope: !3494)
!3535 = !DILocation(line: 1372, column: 20, scope: !3494)
!3536 = !DILocation(line: 1372, column: 18, scope: !3494)
!3537 = !DILocation(line: 1373, column: 9, scope: !3494)
!3538 = !DILocation(line: 1374, column: 3, scope: !3494)
!3539 = !DILocation(line: 1364, column: 22, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !3489, file: !1, discriminator: 2)
!3541 = !DILocation(line: 1364, column: 3, scope: !3540)
!3542 = distinct !{!3542, !3543}
!3543 = !DILocation(line: 1364, column: 3, scope: !3337)
!3544 = !DILocation(line: 1376, column: 10, scope: !3337)
!3545 = !DILocation(line: 1376, column: 3, scope: !3337)
!3546 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_sphF_array", scope: !1, file: !1, line: 1381, type: !2989, isLocal: false, isDefinition: true, scopeLine: 1385, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!3547 = !DILocalVariable(name: "lam_min", arg: 1, scope: !3546, file: !1, line: 1381, type: !50)
!3548 = !DILocation(line: 1381, column: 39, scope: !3546)
!3549 = !DILocalVariable(name: "kmax", arg: 2, scope: !3546, file: !1, line: 1381, type: !42)
!3550 = !DILocation(line: 1381, column: 52, scope: !3546)
!3551 = !DILocalVariable(name: "eta", arg: 3, scope: !3546, file: !1, line: 1382, type: !50)
!3552 = !DILocation(line: 1382, column: 44, scope: !3546)
!3553 = !DILocalVariable(name: "x", arg: 4, scope: !3546, file: !1, line: 1382, type: !50)
!3554 = !DILocation(line: 1382, column: 56, scope: !3546)
!3555 = !DILocalVariable(name: "fc_array", arg: 5, scope: !3546, file: !1, line: 1383, type: !227)
!3556 = !DILocation(line: 1383, column: 46, scope: !3546)
!3557 = !DILocalVariable(name: "F_exp", arg: 6, scope: !3546, file: !1, line: 1384, type: !227)
!3558 = !DILocation(line: 1384, column: 46, scope: !3546)
!3559 = !DILocation(line: 1386, column: 6, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3546, file: !1, line: 1386, column: 6)
!3561 = !DILocation(line: 1386, column: 8, scope: !3560)
!3562 = !DILocation(line: 1386, column: 14, scope: !3560)
!3563 = !DILocation(line: 1386, column: 17, scope: !3564)
!3564 = !DILexicalBlockFile(scope: !3560, file: !1, discriminator: 1)
!3565 = !DILocation(line: 1386, column: 25, scope: !3564)
!3566 = !DILocation(line: 1386, column: 6, scope: !3564)
!3567 = !DILocation(line: 1387, column: 5, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3560, file: !1, line: 1386, column: 33)
!3569 = distinct !{!3569, !3567}
!3570 = !DILocation(line: 1387, column: 5, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !3572, file: !1, discriminator: 1)
!3572 = distinct !DILexicalBlock(scope: !3568, file: !1, line: 1387, column: 5)
!3573 = !DILocation(line: 1388, column: 3, scope: !3568)
!3574 = !DILocation(line: 1389, column: 11, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3560, file: !1, line: 1389, column: 11)
!3576 = !DILocation(line: 1389, column: 13, scope: !3575)
!3577 = !DILocation(line: 1389, column: 11, scope: !3560)
!3578 = !DILocalVariable(name: "k", scope: !3579, file: !1, line: 1390, type: !42)
!3579 = distinct !DILexicalBlock(scope: !3575, file: !1, line: 1389, column: 33)
!3580 = !DILocation(line: 1390, column: 9, scope: !3579)
!3581 = !DILocation(line: 1391, column: 10, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 1391, column: 5)
!3583 = !DILocation(line: 1391, column: 9, scope: !3582)
!3584 = !DILocation(line: 1391, column: 14, scope: !3585)
!3585 = !DILexicalBlockFile(scope: !3586, file: !1, discriminator: 1)
!3586 = distinct !DILexicalBlock(scope: !3582, file: !1, line: 1391, column: 5)
!3587 = !DILocation(line: 1391, column: 17, scope: !3585)
!3588 = !DILocation(line: 1391, column: 15, scope: !3585)
!3589 = !DILocation(line: 1391, column: 5, scope: !3585)
!3590 = !DILocation(line: 1392, column: 16, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3586, file: !1, line: 1391, column: 28)
!3592 = !DILocation(line: 1392, column: 7, scope: !3591)
!3593 = !DILocation(line: 1392, column: 19, scope: !3591)
!3594 = !DILocation(line: 1393, column: 5, scope: !3591)
!3595 = !DILocation(line: 1391, column: 24, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !3586, file: !1, discriminator: 2)
!3597 = !DILocation(line: 1391, column: 5, scope: !3596)
!3598 = distinct !{!3598, !3599}
!3599 = !DILocation(line: 1391, column: 5, scope: !3579)
!3600 = !DILocation(line: 1394, column: 8, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 1394, column: 8)
!3602 = !DILocation(line: 1394, column: 16, scope: !3601)
!3603 = !DILocation(line: 1394, column: 8, scope: !3579)
!3604 = !DILocation(line: 1395, column: 31, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3601, file: !1, line: 1394, column: 24)
!3606 = !DILocation(line: 1395, column: 26, scope: !3605)
!3607 = !DILocation(line: 1395, column: 21, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3605, file: !1, discriminator: 1)
!3609 = !DILocation(line: 1395, column: 7, scope: !3605)
!3610 = !DILocation(line: 1395, column: 19, scope: !3605)
!3611 = !DILocation(line: 1396, column: 5, scope: !3605)
!3612 = !DILocation(line: 1397, column: 6, scope: !3579)
!3613 = !DILocation(line: 1397, column: 12, scope: !3579)
!3614 = !DILocation(line: 1398, column: 8, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 1398, column: 8)
!3616 = !DILocation(line: 1398, column: 10, scope: !3615)
!3617 = !DILocation(line: 1398, column: 8, scope: !3579)
!3618 = !DILocation(line: 1399, column: 7, scope: !3615)
!3619 = !DILocation(line: 1401, column: 7, scope: !3615)
!3620 = distinct !{!3620, !3619}
!3621 = !DILocation(line: 1401, column: 7, scope: !3622)
!3622 = !DILexicalBlockFile(scope: !3623, file: !1, discriminator: 1)
!3623 = distinct !DILexicalBlock(scope: !3615, file: !1, line: 1401, column: 7)
!3624 = !DILocation(line: 1402, column: 3, scope: !3579)
!3625 = !DILocalVariable(name: "k", scope: !3626, file: !1, line: 1404, type: !42)
!3626 = distinct !DILexicalBlock(scope: !3575, file: !1, line: 1403, column: 8)
!3627 = !DILocation(line: 1404, column: 9, scope: !3626)
!3628 = !DILocalVariable(name: "stat_F", scope: !3626, file: !1, line: 1405, type: !42)
!3629 = !DILocation(line: 1405, column: 9, scope: !3626)
!3630 = !DILocation(line: 1405, column: 46, scope: !3626)
!3631 = !DILocation(line: 1405, column: 55, scope: !3626)
!3632 = !DILocation(line: 1406, column: 51, scope: !3626)
!3633 = !DILocation(line: 1406, column: 56, scope: !3626)
!3634 = !DILocation(line: 1407, column: 51, scope: !3626)
!3635 = !DILocation(line: 1408, column: 51, scope: !3626)
!3636 = !DILocation(line: 1405, column: 18, scope: !3626)
!3637 = !DILocation(line: 1410, column: 10, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3626, file: !1, line: 1410, column: 5)
!3639 = !DILocation(line: 1410, column: 9, scope: !3638)
!3640 = !DILocation(line: 1410, column: 14, scope: !3641)
!3641 = !DILexicalBlockFile(scope: !3642, file: !1, discriminator: 1)
!3642 = distinct !DILexicalBlock(scope: !3638, file: !1, line: 1410, column: 5)
!3643 = !DILocation(line: 1410, column: 17, scope: !3641)
!3644 = !DILocation(line: 1410, column: 15, scope: !3641)
!3645 = !DILocation(line: 1410, column: 5, scope: !3641)
!3646 = !DILocation(line: 1411, column: 30, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3642, file: !1, line: 1410, column: 28)
!3648 = !DILocation(line: 1411, column: 21, scope: !3647)
!3649 = !DILocation(line: 1411, column: 35, scope: !3647)
!3650 = !DILocation(line: 1411, column: 33, scope: !3647)
!3651 = !DILocation(line: 1411, column: 16, scope: !3647)
!3652 = !DILocation(line: 1411, column: 7, scope: !3647)
!3653 = !DILocation(line: 1411, column: 19, scope: !3647)
!3654 = !DILocation(line: 1412, column: 5, scope: !3647)
!3655 = !DILocation(line: 1410, column: 24, scope: !3656)
!3656 = !DILexicalBlockFile(scope: !3642, file: !1, discriminator: 2)
!3657 = !DILocation(line: 1410, column: 5, scope: !3656)
!3658 = distinct !{!3658, !3659}
!3659 = !DILocation(line: 1410, column: 5, scope: !3626)
!3660 = !DILocation(line: 1413, column: 12, scope: !3626)
!3661 = !DILocation(line: 1413, column: 5, scope: !3626)
!3662 = !DILocation(line: 1415, column: 1, scope: !3546)
!3663 = distinct !DISubprogram(name: "coulomb_connection", scope: !1, file: !1, line: 236, type: !3664, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!42, !287, !287, !227, !227}
!3666 = !DILocalVariable(name: "lam", arg: 1, scope: !3663, file: !1, line: 236, type: !287)
!3667 = !DILocation(line: 236, column: 33, scope: !3663)
!3668 = !DILocalVariable(name: "eta", arg: 2, scope: !3663, file: !1, line: 236, type: !287)
!3669 = !DILocation(line: 236, column: 51, scope: !3663)
!3670 = !DILocalVariable(name: "cos_phi", arg: 3, scope: !3663, file: !1, line: 237, type: !227)
!3671 = !DILocation(line: 237, column: 29, scope: !3663)
!3672 = !DILocalVariable(name: "sin_phi", arg: 4, scope: !3663, file: !1, line: 237, type: !227)
!3673 = !DILocation(line: 237, column: 47, scope: !3663)
!3674 = !DILocation(line: 239, column: 6, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3663, file: !1, line: 239, column: 6)
!3676 = !DILocation(line: 239, column: 10, scope: !3675)
!3677 = !DILocation(line: 239, column: 6, scope: !3663)
!3678 = !DILocation(line: 240, column: 6, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3675, file: !1, line: 239, column: 43)
!3680 = !DILocation(line: 240, column: 14, scope: !3679)
!3681 = !DILocation(line: 241, column: 6, scope: !3679)
!3682 = !DILocation(line: 241, column: 14, scope: !3679)
!3683 = !DILocation(line: 242, column: 5, scope: !3679)
!3684 = distinct !{!3684, !3683}
!3685 = !DILocation(line: 242, column: 5, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3687, file: !1, discriminator: 1)
!3687 = distinct !DILexicalBlock(scope: !3679, file: !1, line: 242, column: 5)
!3688 = !DILocation(line: 243, column: 3, scope: !3679)
!3689 = !DILocation(line: 244, column: 11, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3675, file: !1, line: 244, column: 11)
!3691 = !DILocation(line: 244, column: 15, scope: !3690)
!3692 = !DILocation(line: 244, column: 11, scope: !3675)
!3693 = !DILocalVariable(name: "eps", scope: !3694, file: !1, line: 245, type: !287)
!3694 = distinct !DILexicalBlock(scope: !3690, file: !1, line: 244, column: 50)
!3695 = !DILocation(line: 245, column: 18, scope: !3694)
!3696 = !DILocation(line: 245, column: 44, scope: !3694)
!3697 = !DILocation(line: 245, column: 43, scope: !3694)
!3698 = !DILocation(line: 245, column: 30, scope: !3694)
!3699 = !DILocation(line: 245, column: 28, scope: !3694)
!3700 = !DILocalVariable(name: "tpl", scope: !3694, file: !1, line: 246, type: !287)
!3701 = !DILocation(line: 246, column: 18, scope: !3694)
!3702 = !DILocation(line: 246, column: 35, scope: !3694)
!3703 = !DILocation(line: 246, column: 33, scope: !3694)
!3704 = !DILocation(line: 246, column: 24, scope: !3694)
!3705 = !DILocalVariable(name: "dth", scope: !3694, file: !1, line: 247, type: !287)
!3706 = !DILocation(line: 247, column: 18, scope: !3694)
!3707 = !DILocation(line: 247, column: 24, scope: !3694)
!3708 = !DILocation(line: 247, column: 30, scope: !3694)
!3709 = !DILocation(line: 247, column: 28, scope: !3694)
!3710 = !DILocation(line: 247, column: 37, scope: !3694)
!3711 = !DILocation(line: 247, column: 41, scope: !3694)
!3712 = !DILocation(line: 247, column: 40, scope: !3694)
!3713 = !DILocation(line: 247, column: 45, scope: !3694)
!3714 = !DILocation(line: 247, column: 34, scope: !3694)
!3715 = !DILocation(line: 248, column: 29, scope: !3694)
!3716 = !DILocation(line: 248, column: 27, scope: !3694)
!3717 = !DILocation(line: 248, column: 33, scope: !3694)
!3718 = !DILocation(line: 248, column: 32, scope: !3694)
!3719 = !DILocation(line: 248, column: 21, scope: !3694)
!3720 = !DILocation(line: 248, column: 6, scope: !3694)
!3721 = !DILocation(line: 248, column: 14, scope: !3694)
!3722 = !DILocation(line: 249, column: 17, scope: !3694)
!3723 = !DILocation(line: 249, column: 16, scope: !3694)
!3724 = !DILocation(line: 249, column: 6, scope: !3694)
!3725 = !DILocation(line: 249, column: 14, scope: !3694)
!3726 = !DILocation(line: 250, column: 5, scope: !3694)
!3727 = !DILocalVariable(name: "X", scope: !3728, file: !1, line: 253, type: !50)
!3728 = distinct !DILexicalBlock(scope: !3690, file: !1, line: 252, column: 8)
!3729 = !DILocation(line: 253, column: 12, scope: !3728)
!3730 = !DILocation(line: 253, column: 30, scope: !3728)
!3731 = !DILocation(line: 253, column: 28, scope: !3728)
!3732 = !DILocation(line: 253, column: 18, scope: !3728)
!3733 = !DILocation(line: 253, column: 48, scope: !3728)
!3734 = !DILocation(line: 253, column: 46, scope: !3728)
!3735 = !DILocation(line: 253, column: 37, scope: !3736)
!3736 = !DILexicalBlockFile(scope: !3728, file: !1, discriminator: 1)
!3737 = !DILocation(line: 253, column: 35, scope: !3728)
!3738 = !DILocalVariable(name: "phi", scope: !3728, file: !1, line: 254, type: !50)
!3739 = !DILocation(line: 254, column: 12, scope: !3728)
!3740 = !DILocation(line: 254, column: 24, scope: !3728)
!3741 = !DILocation(line: 254, column: 19, scope: !3728)
!3742 = !DILocation(line: 254, column: 18, scope: !3728)
!3743 = !DILocation(line: 254, column: 30, scope: !3728)
!3744 = !DILocation(line: 254, column: 34, scope: !3728)
!3745 = !DILocation(line: 254, column: 41, scope: !3728)
!3746 = !DILocation(line: 254, column: 27, scope: !3728)
!3747 = !DILocation(line: 255, column: 20, scope: !3728)
!3748 = !DILocation(line: 255, column: 16, scope: !3728)
!3749 = !DILocation(line: 255, column: 6, scope: !3728)
!3750 = !DILocation(line: 255, column: 14, scope: !3728)
!3751 = !DILocation(line: 256, column: 20, scope: !3728)
!3752 = !DILocation(line: 256, column: 16, scope: !3728)
!3753 = !DILocation(line: 256, column: 6, scope: !3728)
!3754 = !DILocation(line: 256, column: 14, scope: !3728)
!3755 = !DILocation(line: 257, column: 5, scope: !3728)
!3756 = !DILocation(line: 259, column: 1, scope: !3663)
