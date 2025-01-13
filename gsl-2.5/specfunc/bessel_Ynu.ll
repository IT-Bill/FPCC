; ModuleID = 'bessel_Ynu.c'
source_filename = "bessel_Ynu.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Ynu.c\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Ynu_e(nu, x, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Ynupos_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  %19 = load double, double* %5, align 8, !dbg !66
  %20 = fcmp ogt double %19, 5.000000e+01, !dbg !68
  br i1 %20, label %21, label %26, !dbg !69

; <label>:21:                                     ; preds = %3
  %22 = load double, double* %5, align 8, !dbg !70
  %23 = load double, double* %6, align 8, !dbg !72
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !73
  %25 = call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double %22, double %23, %struct.gsl_sf_result_struct* %24), !dbg !74
  store i32 %25, i32* %4, align 4, !dbg !75
  br label %104, !dbg !75

; <label>:26:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !76, metadata !60), !dbg !78
  %27 = load double, double* %5, align 8, !dbg !79
  %28 = fadd double %27, 5.000000e-01, !dbg !80
  %29 = fptosi double %28 to i32, !dbg !81
  store i32 %29, i32* %8, align 4, !dbg !78
  call void @llvm.dbg.declare(metadata double* %9, metadata !82, metadata !60), !dbg !83
  %30 = load double, double* %5, align 8, !dbg !84
  %31 = load i32, i32* %8, align 4, !dbg !85
  %32 = sitofp i32 %31 to double, !dbg !85
  %33 = fsub double %30, %32, !dbg !86
  store double %33, double* %9, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !87, metadata !60), !dbg !88
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !89, metadata !60), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %12, metadata !91, metadata !60), !dbg !92
  call void @llvm.dbg.declare(metadata double* %13, metadata !93, metadata !60), !dbg !94
  call void @llvm.dbg.declare(metadata double* %14, metadata !95, metadata !60), !dbg !96
  call void @llvm.dbg.declare(metadata double* %15, metadata !97, metadata !60), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %16, metadata !99, metadata !60), !dbg !100
  %34 = load double, double* %6, align 8, !dbg !101
  %35 = fcmp olt double %34, 2.000000e+00, !dbg !103
  br i1 %35, label %36, label %40, !dbg !104

; <label>:36:                                     ; preds = %26
  %37 = load double, double* %9, align 8, !dbg !105
  %38 = load double, double* %6, align 8, !dbg !107
  %39 = call i32 @gsl_sf_bessel_Y_temme(double %37, double %38, %struct.gsl_sf_result_struct* %10, %struct.gsl_sf_result_struct* %11), !dbg !108
  store i32 %39, i32* %12, align 4, !dbg !109
  br label %44, !dbg !110

; <label>:40:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !111, metadata !60), !dbg !113
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !114, metadata !60), !dbg !115
  %41 = load double, double* %9, align 8, !dbg !116
  %42 = load double, double* %6, align 8, !dbg !117
  %43 = call i32 @gsl_sf_bessel_JY_mu_restricted(double %41, double %42, %struct.gsl_sf_result_struct* %17, %struct.gsl_sf_result_struct* %18, %struct.gsl_sf_result_struct* %10, %struct.gsl_sf_result_struct* %11), !dbg !118
  store i32 %43, i32* %12, align 4, !dbg !119
  br label %44

; <label>:44:                                     ; preds = %40, %36
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !120
  %46 = load double, double* %45, align 8, !dbg !120
  store double %46, double* %13, align 8, !dbg !121
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !122
  %48 = load double, double* %47, align 8, !dbg !122
  store double %48, double* %14, align 8, !dbg !123
  store i32 1, i32* %16, align 4, !dbg !124
  br label %49, !dbg !126

; <label>:49:                                     ; preds = %67, %44
  %50 = load i32, i32* %16, align 4, !dbg !127
  %51 = load i32, i32* %8, align 4, !dbg !130
  %52 = icmp sle i32 %50, %51, !dbg !131
  br i1 %52, label %53, label %70, !dbg !132

; <label>:53:                                     ; preds = %49
  %54 = load double, double* %9, align 8, !dbg !133
  %55 = load i32, i32* %16, align 4, !dbg !135
  %56 = sitofp i32 %55 to double, !dbg !135
  %57 = fadd double %54, %56, !dbg !136
  %58 = fmul double 2.000000e+00, %57, !dbg !137
  %59 = load double, double* %6, align 8, !dbg !138
  %60 = fdiv double %58, %59, !dbg !139
  %61 = load double, double* %14, align 8, !dbg !140
  %62 = fmul double %60, %61, !dbg !141
  %63 = load double, double* %13, align 8, !dbg !142
  %64 = fsub double %62, %63, !dbg !143
  store double %64, double* %15, align 8, !dbg !144
  %65 = load double, double* %14, align 8, !dbg !145
  store double %65, double* %13, align 8, !dbg !146
  %66 = load double, double* %15, align 8, !dbg !147
  store double %66, double* %14, align 8, !dbg !148
  br label %67, !dbg !149

; <label>:67:                                     ; preds = %53
  %68 = load i32, i32* %16, align 4, !dbg !150
  %69 = add nsw i32 %68, 1, !dbg !150
  store i32 %69, i32* %16, align 4, !dbg !150
  br label %49, !dbg !152, !llvm.loop !153

; <label>:70:                                     ; preds = %49
  %71 = load double, double* %13, align 8, !dbg !155
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !156
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !157
  store double %71, double* %73, align 8, !dbg !158
  %74 = load i32, i32* %8, align 4, !dbg !159
  %75 = sitofp i32 %74 to double, !dbg !159
  %76 = fadd double %75, 1.000000e+00, !dbg !160
  %77 = load double, double* %13, align 8, !dbg !161
  %78 = call double @fabs(double %77) #1, !dbg !162
  %79 = fmul double %76, %78, !dbg !163
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !164
  %81 = load double, double* %80, align 8, !dbg !164
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !165
  %83 = load double, double* %82, align 8, !dbg !165
  %84 = fdiv double %81, %83, !dbg !166
  %85 = call double @fabs(double %84) #1, !dbg !167
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !169
  %87 = load double, double* %86, align 8, !dbg !169
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !170
  %89 = load double, double* %88, align 8, !dbg !170
  %90 = fdiv double %87, %89, !dbg !171
  %91 = call double @fabs(double %90) #1, !dbg !172
  %92 = fadd double %85, %91, !dbg !174
  %93 = fmul double %79, %92, !dbg !175
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !176
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !177
  store double %93, double* %95, align 8, !dbg !178
  %96 = load double, double* %13, align 8, !dbg !179
  %97 = call double @fabs(double %96) #1, !dbg !180
  %98 = fmul double 0x3CC0000000000000, %97, !dbg !181
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !182
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !183
  %101 = load double, double* %100, align 8, !dbg !184
  %102 = fadd double %101, %98, !dbg !184
  store double %102, double* %100, align 8, !dbg !184
  %103 = load i32, i32* %12, align 4, !dbg !185
  store i32 %103, i32* %4, align 4, !dbg !186
  br label %104, !dbg !186

; <label>:104:                                    ; preds = %70, %21
  %105 = load i32, i32* %4, align 4, !dbg !187
  ret i32 %105, !dbg !187
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Y_temme(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_JY_mu_restricted(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Ynu_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !188 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !189, metadata !60), !dbg !190
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !191, metadata !60), !dbg !192
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !193, metadata !60), !dbg !194
  %20 = load double, double* %6, align 8, !dbg !195
  %21 = fcmp ole double %20, 0.000000e+00, !dbg !197
  br i1 %21, label %22, label %31, !dbg !198

; <label>:22:                                     ; preds = %3
  br label %23, !dbg !199, !llvm.loop !201

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !202
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !202
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !202
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !202
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !202
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !202
  br label %28, !dbg !202, !llvm.loop !205

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 126, i32 1), !dbg !207
  store i32 1, i32* %4, align 4, !dbg !207
  br label %138, !dbg !207
                                                  ; No predecessors!
  br label %30, !dbg !210

; <label>:30:                                     ; preds = %29
  br label %138, !dbg !212

; <label>:31:                                     ; preds = %3
  %32 = load double, double* %5, align 8, !dbg !213
  %33 = fcmp olt double %32, 0.000000e+00, !dbg !215
  br i1 %33, label %34, label %133, !dbg !216

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !217, metadata !60), !dbg !219
  %35 = load double, double* %5, align 8, !dbg !220
  %36 = fsub double -0.000000e+00, %35, !dbg !221
  %37 = load double, double* %6, align 8, !dbg !222
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !223
  %39 = call i32 @gsl_sf_bessel_Jnupos_e(double %36, double %37, %struct.gsl_sf_result_struct* %38), !dbg !224
  store i32 %39, i32* %8, align 4, !dbg !219
  call void @llvm.dbg.declare(metadata double* %9, metadata !225, metadata !60), !dbg !226
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !227
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !228
  %42 = load double, double* %41, align 8, !dbg !228
  store double %42, double* %9, align 8, !dbg !226
  call void @llvm.dbg.declare(metadata double* %10, metadata !229, metadata !60), !dbg !230
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !231
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !232
  %45 = load double, double* %44, align 8, !dbg !232
  store double %45, double* %10, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata i32* %11, metadata !233, metadata !60), !dbg !234
  %46 = load double, double* %5, align 8, !dbg !235
  %47 = fsub double -0.000000e+00, %46, !dbg !236
  %48 = load double, double* %6, align 8, !dbg !237
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !238
  %50 = call i32 @gsl_sf_bessel_Ynupos_e(double %47, double %48, %struct.gsl_sf_result_struct* %49), !dbg !239
  store i32 %50, i32* %11, align 4, !dbg !234
  call void @llvm.dbg.declare(metadata double* %12, metadata !240, metadata !60), !dbg !241
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !242
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !243
  %53 = load double, double* %52, align 8, !dbg !243
  store double %53, double* %12, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata double* %13, metadata !244, metadata !60), !dbg !245
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !246
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !247
  %56 = load double, double* %55, align 8, !dbg !247
  store double %56, double* %13, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata i32* %14, metadata !248, metadata !60), !dbg !249
  %57 = load double, double* %5, align 8, !dbg !250
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !251
  %59 = call i32 @gsl_sf_sin_pi_e(double %57, %struct.gsl_sf_result_struct* %58), !dbg !252
  store i32 %59, i32* %14, align 4, !dbg !249
  call void @llvm.dbg.declare(metadata double* %15, metadata !253, metadata !60), !dbg !254
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !255
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !256
  %62 = load double, double* %61, align 8, !dbg !256
  store double %62, double* %15, align 8, !dbg !254
  call void @llvm.dbg.declare(metadata double* %16, metadata !257, metadata !60), !dbg !258
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !259
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !260
  %65 = load double, double* %64, align 8, !dbg !260
  store double %65, double* %16, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata i32* %17, metadata !261, metadata !60), !dbg !262
  %66 = load double, double* %5, align 8, !dbg !263
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !264
  %68 = call i32 @gsl_sf_cos_pi_e(double %66, %struct.gsl_sf_result_struct* %67), !dbg !265
  store i32 %68, i32* %17, align 4, !dbg !262
  call void @llvm.dbg.declare(metadata double* %18, metadata !266, metadata !60), !dbg !267
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !268
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !269
  %71 = load double, double* %70, align 8, !dbg !269
  store double %71, double* %18, align 8, !dbg !267
  call void @llvm.dbg.declare(metadata double* %19, metadata !270, metadata !60), !dbg !271
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !272
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !273
  %74 = load double, double* %73, align 8, !dbg !273
  store double %74, double* %19, align 8, !dbg !271
  %75 = load double, double* %18, align 8, !dbg !274
  %76 = load double, double* %12, align 8, !dbg !275
  %77 = fmul double %75, %76, !dbg !276
  %78 = load double, double* %15, align 8, !dbg !277
  %79 = load double, double* %9, align 8, !dbg !278
  %80 = fmul double %78, %79, !dbg !279
  %81 = fsub double %77, %80, !dbg !280
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !281
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !282
  store double %81, double* %83, align 8, !dbg !283
  %84 = load double, double* %18, align 8, !dbg !284
  %85 = load double, double* %13, align 8, !dbg !285
  %86 = fmul double %84, %85, !dbg !286
  %87 = call double @fabs(double %86) #1, !dbg !287
  %88 = load double, double* %15, align 8, !dbg !288
  %89 = load double, double* %10, align 8, !dbg !289
  %90 = fmul double %88, %89, !dbg !290
  %91 = call double @fabs(double %90) #1, !dbg !291
  %92 = fadd double %87, %91, !dbg !293
  %93 = load double, double* %19, align 8, !dbg !294
  %94 = load double, double* %12, align 8, !dbg !295
  %95 = fmul double %93, %94, !dbg !296
  %96 = call double @fabs(double %95) #1, !dbg !297
  %97 = fadd double %92, %96, !dbg !299
  %98 = load double, double* %16, align 8, !dbg !300
  %99 = load double, double* %9, align 8, !dbg !301
  %100 = fmul double %98, %99, !dbg !302
  %101 = call double @fabs(double %100) #1, !dbg !303
  %102 = fadd double %97, %101, !dbg !305
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !306
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !307
  store double %102, double* %104, align 8, !dbg !308
  %105 = load i32, i32* %8, align 4, !dbg !309
  %106 = icmp ne i32 %105, 0, !dbg !309
  br i1 %106, label %107, label %109, !dbg !309

; <label>:107:                                    ; preds = %34
  %108 = load i32, i32* %8, align 4, !dbg !310
  br label %131, !dbg !310

; <label>:109:                                    ; preds = %34
  %110 = load i32, i32* %11, align 4, !dbg !311
  %111 = icmp ne i32 %110, 0, !dbg !311
  br i1 %111, label %112, label %114, !dbg !311

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %11, align 4, !dbg !312
  br label %129, !dbg !312

; <label>:114:                                    ; preds = %109
  %115 = load i32, i32* %14, align 4, !dbg !313
  %116 = icmp ne i32 %115, 0, !dbg !313
  br i1 %116, label %117, label %119, !dbg !313

; <label>:117:                                    ; preds = %114
  %118 = load i32, i32* %14, align 4, !dbg !315
  br label %127, !dbg !315

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* %17, align 4, !dbg !317
  %121 = icmp ne i32 %120, 0, !dbg !317
  br i1 %121, label %122, label %124, !dbg !317

; <label>:122:                                    ; preds = %119
  %123 = load i32, i32* %17, align 4, !dbg !319
  br label %125, !dbg !319

; <label>:124:                                    ; preds = %119
  br label %125, !dbg !321

; <label>:125:                                    ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 0, %124 ], !dbg !323
  br label %127, !dbg !323

; <label>:127:                                    ; preds = %125, %117
  %128 = phi i32 [ %118, %117 ], [ %126, %125 ], !dbg !325
  br label %129, !dbg !325

; <label>:129:                                    ; preds = %127, %112
  %130 = phi i32 [ %113, %112 ], [ %128, %127 ], !dbg !327
  br label %131, !dbg !327

; <label>:131:                                    ; preds = %129, %107
  %132 = phi i32 [ %108, %107 ], [ %130, %129 ], !dbg !329
  store i32 %132, i32* %4, align 4, !dbg !331
  br label %138, !dbg !331

; <label>:133:                                    ; preds = %31
  %134 = load double, double* %5, align 8, !dbg !332
  %135 = load double, double* %6, align 8, !dbg !333
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !334
  %137 = call i32 @gsl_sf_bessel_Ynupos_e(double %134, double %135, %struct.gsl_sf_result_struct* %136), !dbg !335
  store i32 %137, i32* %4, align 4, !dbg !336
  br label %138, !dbg !336

; <label>:138:                                    ; preds = %28, %131, %133, %30
  %139 = load i32, i32* %4, align 4, !dbg !337
  ret i32 %139, !dbg !337
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

declare i32 @gsl_sf_bessel_Jnupos_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_sin_pi_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_cos_pi_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Ynu(double, double) #0 !dbg !338 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !342, metadata !60), !dbg !343
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !344, metadata !60), !dbg !345
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !346, metadata !60), !dbg !347
  call void @llvm.dbg.declare(metadata i32* %7, metadata !348, metadata !60), !dbg !347
  %8 = load double, double* %4, align 8, !dbg !347
  %9 = load double, double* %5, align 8, !dbg !347
  %10 = call i32 @gsl_sf_bessel_Ynu_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !347
  store i32 %10, i32* %7, align 4, !dbg !347
  %11 = load i32, i32* %7, align 4, !dbg !349
  %12 = icmp ne i32 %11, 0, !dbg !349
  br i1 %12, label %13, label %19, !dbg !347

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !351, !llvm.loop !354

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !356
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 155, i32 %15), !dbg !356
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !356
  %17 = load double, double* %16, align 8, !dbg !356
  store double %17, double* %3, align 8, !dbg !356
  br label %22, !dbg !356
                                                  ; No predecessors!
  br label %19, !dbg !359

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !361
  %21 = load double, double* %20, align 8, !dbg !361
  store double %21, double* %3, align 8, !dbg !361
  br label %22, !dbg !361

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !363
  ret double %23, !dbg !363
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_Ynu.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynupos_e", scope: !1, file: !1, line: 69, type: !48, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
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
!59 = !DILocalVariable(name: "nu", arg: 1, scope: !47, file: !1, line: 69, type: !50)
!60 = !DIExpression()
!61 = !DILocation(line: 69, column: 31, scope: !47)
!62 = !DILocalVariable(name: "x", arg: 2, scope: !47, file: !1, line: 69, type: !50)
!63 = !DILocation(line: 69, column: 42, scope: !47)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !47, file: !1, line: 69, type: !51)
!65 = !DILocation(line: 69, column: 61, scope: !47)
!66 = !DILocation(line: 72, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !47, file: !1, line: 72, column: 6)
!68 = !DILocation(line: 72, column: 9, scope: !67)
!69 = !DILocation(line: 72, column: 6, scope: !47)
!70 = !DILocation(line: 73, column: 44, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 72, column: 17)
!72 = !DILocation(line: 73, column: 48, scope: !71)
!73 = !DILocation(line: 73, column: 51, scope: !71)
!74 = !DILocation(line: 73, column: 12, scope: !71)
!75 = !DILocation(line: 73, column: 5, scope: !71)
!76 = !DILocalVariable(name: "N", scope: !77, file: !1, line: 77, type: !42)
!77 = distinct !DILexicalBlock(scope: !67, file: !1, line: 75, column: 8)
!78 = !DILocation(line: 77, column: 9, scope: !77)
!79 = !DILocation(line: 77, column: 19, scope: !77)
!80 = !DILocation(line: 77, column: 22, scope: !77)
!81 = !DILocation(line: 77, column: 13, scope: !77)
!82 = !DILocalVariable(name: "mu", scope: !77, file: !1, line: 78, type: !50)
!83 = !DILocation(line: 78, column: 12, scope: !77)
!84 = !DILocation(line: 78, column: 17, scope: !77)
!85 = !DILocation(line: 78, column: 22, scope: !77)
!86 = !DILocation(line: 78, column: 20, scope: !77)
!87 = !DILocalVariable(name: "Y_mu", scope: !77, file: !1, line: 80, type: !52)
!88 = !DILocation(line: 80, column: 19, scope: !77)
!89 = !DILocalVariable(name: "Y_mup1", scope: !77, file: !1, line: 80, type: !52)
!90 = !DILocation(line: 80, column: 25, scope: !77)
!91 = !DILocalVariable(name: "stat_mu", scope: !77, file: !1, line: 81, type: !42)
!92 = !DILocation(line: 81, column: 9, scope: !77)
!93 = !DILocalVariable(name: "Ynm1", scope: !77, file: !1, line: 82, type: !50)
!94 = !DILocation(line: 82, column: 12, scope: !77)
!95 = !DILocalVariable(name: "Yn", scope: !77, file: !1, line: 83, type: !50)
!96 = !DILocation(line: 83, column: 12, scope: !77)
!97 = !DILocalVariable(name: "Ynp1", scope: !77, file: !1, line: 84, type: !50)
!98 = !DILocation(line: 84, column: 12, scope: !77)
!99 = !DILocalVariable(name: "n", scope: !77, file: !1, line: 85, type: !42)
!100 = !DILocation(line: 85, column: 9, scope: !77)
!101 = !DILocation(line: 87, column: 8, scope: !102)
!102 = distinct !DILexicalBlock(scope: !77, file: !1, line: 87, column: 8)
!103 = !DILocation(line: 87, column: 10, scope: !102)
!104 = !DILocation(line: 87, column: 8, scope: !77)
!105 = !DILocation(line: 93, column: 39, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 87, column: 17)
!107 = !DILocation(line: 93, column: 43, scope: !106)
!108 = !DILocation(line: 93, column: 17, scope: !106)
!109 = !DILocation(line: 93, column: 15, scope: !106)
!110 = !DILocation(line: 94, column: 5, scope: !106)
!111 = !DILocalVariable(name: "J_mu", scope: !112, file: !1, line: 98, type: !52)
!112 = distinct !DILexicalBlock(scope: !102, file: !1, line: 95, column: 10)
!113 = !DILocation(line: 98, column: 21, scope: !112)
!114 = !DILocalVariable(name: "J_mup1", scope: !112, file: !1, line: 98, type: !52)
!115 = !DILocation(line: 98, column: 27, scope: !112)
!116 = !DILocation(line: 99, column: 48, scope: !112)
!117 = !DILocation(line: 99, column: 52, scope: !112)
!118 = !DILocation(line: 99, column: 17, scope: !112)
!119 = !DILocation(line: 99, column: 15, scope: !112)
!120 = !DILocation(line: 104, column: 17, scope: !77)
!121 = !DILocation(line: 104, column: 10, scope: !77)
!122 = !DILocation(line: 105, column: 19, scope: !77)
!123 = !DILocation(line: 105, column: 10, scope: !77)
!124 = !DILocation(line: 106, column: 10, scope: !125)
!125 = distinct !DILexicalBlock(scope: !77, file: !1, line: 106, column: 5)
!126 = !DILocation(line: 106, column: 9, scope: !125)
!127 = !DILocation(line: 106, column: 14, scope: !128)
!128 = !DILexicalBlockFile(scope: !129, file: !1, discriminator: 1)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 106, column: 5)
!130 = !DILocation(line: 106, column: 17, scope: !128)
!131 = !DILocation(line: 106, column: 15, scope: !128)
!132 = !DILocation(line: 106, column: 5, scope: !128)
!133 = !DILocation(line: 107, column: 19, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 106, column: 25)
!135 = !DILocation(line: 107, column: 22, scope: !134)
!136 = !DILocation(line: 107, column: 21, scope: !134)
!137 = !DILocation(line: 107, column: 17, scope: !134)
!138 = !DILocation(line: 107, column: 25, scope: !134)
!139 = !DILocation(line: 107, column: 24, scope: !134)
!140 = !DILocation(line: 107, column: 29, scope: !134)
!141 = !DILocation(line: 107, column: 27, scope: !134)
!142 = !DILocation(line: 107, column: 34, scope: !134)
!143 = !DILocation(line: 107, column: 32, scope: !134)
!144 = !DILocation(line: 107, column: 12, scope: !134)
!145 = !DILocation(line: 108, column: 14, scope: !134)
!146 = !DILocation(line: 108, column: 12, scope: !134)
!147 = !DILocation(line: 109, column: 14, scope: !134)
!148 = !DILocation(line: 109, column: 12, scope: !134)
!149 = !DILocation(line: 110, column: 5, scope: !134)
!150 = !DILocation(line: 106, column: 21, scope: !151)
!151 = !DILexicalBlockFile(scope: !129, file: !1, discriminator: 2)
!152 = !DILocation(line: 106, column: 5, scope: !151)
!153 = distinct !{!153, !154}
!154 = !DILocation(line: 106, column: 5, scope: !77)
!155 = !DILocation(line: 112, column: 20, scope: !77)
!156 = !DILocation(line: 112, column: 5, scope: !77)
!157 = !DILocation(line: 112, column: 13, scope: !77)
!158 = !DILocation(line: 112, column: 18, scope: !77)
!159 = !DILocation(line: 113, column: 21, scope: !77)
!160 = !DILocation(line: 113, column: 23, scope: !77)
!161 = !DILocation(line: 113, column: 37, scope: !77)
!162 = !DILocation(line: 113, column: 32, scope: !77)
!163 = !DILocation(line: 113, column: 30, scope: !77)
!164 = !DILocation(line: 113, column: 56, scope: !77)
!165 = !DILocation(line: 113, column: 65, scope: !77)
!166 = !DILocation(line: 113, column: 59, scope: !77)
!167 = !DILocation(line: 113, column: 46, scope: !168)
!168 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 1)
!169 = !DILocation(line: 113, column: 84, scope: !77)
!170 = !DILocation(line: 113, column: 95, scope: !77)
!171 = !DILocation(line: 113, column: 87, scope: !77)
!172 = !DILocation(line: 113, column: 72, scope: !173)
!173 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 2)
!174 = !DILocation(line: 113, column: 70, scope: !77)
!175 = !DILocation(line: 113, column: 43, scope: !77)
!176 = !DILocation(line: 113, column: 5, scope: !77)
!177 = !DILocation(line: 113, column: 13, scope: !77)
!178 = !DILocation(line: 113, column: 18, scope: !77)
!179 = !DILocation(line: 114, column: 49, scope: !77)
!180 = !DILocation(line: 114, column: 44, scope: !77)
!181 = !DILocation(line: 114, column: 42, scope: !77)
!182 = !DILocation(line: 114, column: 5, scope: !77)
!183 = !DILocation(line: 114, column: 13, scope: !77)
!184 = !DILocation(line: 114, column: 17, scope: !77)
!185 = !DILocation(line: 116, column: 12, scope: !77)
!186 = !DILocation(line: 116, column: 5, scope: !77)
!187 = !DILocation(line: 118, column: 1, scope: !47)
!188 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu_e", scope: !1, file: !1, line: 121, type: !48, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!189 = !DILocalVariable(name: "nu", arg: 1, scope: !188, file: !1, line: 121, type: !50)
!190 = !DILocation(line: 121, column: 28, scope: !188)
!191 = !DILocalVariable(name: "x", arg: 2, scope: !188, file: !1, line: 121, type: !50)
!192 = !DILocation(line: 121, column: 39, scope: !188)
!193 = !DILocalVariable(name: "result", arg: 3, scope: !188, file: !1, line: 121, type: !51)
!194 = !DILocation(line: 121, column: 58, scope: !188)
!195 = !DILocation(line: 125, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !188, file: !1, line: 125, column: 6)
!197 = !DILocation(line: 125, column: 8, scope: !196)
!198 = !DILocation(line: 125, column: 6, scope: !188)
!199 = !DILocation(line: 126, column: 5, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 125, column: 16)
!201 = distinct !{!201, !199}
!202 = !DILocation(line: 126, column: 5, scope: !203)
!203 = !DILexicalBlockFile(scope: !204, file: !1, discriminator: 1)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 126, column: 5)
!205 = distinct !{!205, !206}
!206 = !DILocation(line: 126, column: 5, scope: !204)
!207 = !DILocation(line: 126, column: 5, scope: !208)
!208 = !DILexicalBlockFile(scope: !209, file: !1, discriminator: 2)
!209 = distinct !DILexicalBlock(scope: !204, file: !1, line: 126, column: 5)
!210 = !DILocation(line: 126, column: 5, scope: !211)
!211 = !DILexicalBlockFile(scope: !204, file: !1, discriminator: 3)
!212 = !DILocation(line: 127, column: 3, scope: !200)
!213 = !DILocation(line: 128, column: 12, scope: !214)
!214 = distinct !DILexicalBlock(scope: !196, file: !1, line: 128, column: 12)
!215 = !DILocation(line: 128, column: 15, scope: !214)
!216 = !DILocation(line: 128, column: 12, scope: !196)
!217 = !DILocalVariable(name: "Jstatus", scope: !218, file: !1, line: 129, type: !42)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 128, column: 22)
!219 = !DILocation(line: 129, column: 9, scope: !218)
!220 = !DILocation(line: 129, column: 43, scope: !218)
!221 = !DILocation(line: 129, column: 42, scope: !218)
!222 = !DILocation(line: 129, column: 47, scope: !218)
!223 = !DILocation(line: 129, column: 50, scope: !218)
!224 = !DILocation(line: 129, column: 19, scope: !218)
!225 = !DILocalVariable(name: "Jval", scope: !218, file: !1, line: 130, type: !50)
!226 = !DILocation(line: 130, column: 12, scope: !218)
!227 = !DILocation(line: 130, column: 19, scope: !218)
!228 = !DILocation(line: 130, column: 27, scope: !218)
!229 = !DILocalVariable(name: "Jerr", scope: !218, file: !1, line: 131, type: !50)
!230 = !DILocation(line: 131, column: 12, scope: !218)
!231 = !DILocation(line: 131, column: 19, scope: !218)
!232 = !DILocation(line: 131, column: 27, scope: !218)
!233 = !DILocalVariable(name: "Ystatus", scope: !218, file: !1, line: 132, type: !42)
!234 = !DILocation(line: 132, column: 9, scope: !218)
!235 = !DILocation(line: 132, column: 43, scope: !218)
!236 = !DILocation(line: 132, column: 42, scope: !218)
!237 = !DILocation(line: 132, column: 47, scope: !218)
!238 = !DILocation(line: 132, column: 50, scope: !218)
!239 = !DILocation(line: 132, column: 19, scope: !218)
!240 = !DILocalVariable(name: "Yval", scope: !218, file: !1, line: 133, type: !50)
!241 = !DILocation(line: 133, column: 12, scope: !218)
!242 = !DILocation(line: 133, column: 19, scope: !218)
!243 = !DILocation(line: 133, column: 27, scope: !218)
!244 = !DILocalVariable(name: "Yerr", scope: !218, file: !1, line: 134, type: !50)
!245 = !DILocation(line: 134, column: 12, scope: !218)
!246 = !DILocation(line: 134, column: 19, scope: !218)
!247 = !DILocation(line: 134, column: 27, scope: !218)
!248 = !DILocalVariable(name: "sinstatus", scope: !218, file: !1, line: 136, type: !42)
!249 = !DILocation(line: 136, column: 9, scope: !218)
!250 = !DILocation(line: 136, column: 37, scope: !218)
!251 = !DILocation(line: 136, column: 41, scope: !218)
!252 = !DILocation(line: 136, column: 21, scope: !218)
!253 = !DILocalVariable(name: "s", scope: !218, file: !1, line: 137, type: !50)
!254 = !DILocation(line: 137, column: 12, scope: !218)
!255 = !DILocation(line: 137, column: 16, scope: !218)
!256 = !DILocation(line: 137, column: 24, scope: !218)
!257 = !DILocalVariable(name: "serr", scope: !218, file: !1, line: 138, type: !50)
!258 = !DILocation(line: 138, column: 12, scope: !218)
!259 = !DILocation(line: 138, column: 19, scope: !218)
!260 = !DILocation(line: 138, column: 27, scope: !218)
!261 = !DILocalVariable(name: "cosstatus", scope: !218, file: !1, line: 139, type: !42)
!262 = !DILocation(line: 139, column: 9, scope: !218)
!263 = !DILocation(line: 139, column: 37, scope: !218)
!264 = !DILocation(line: 139, column: 41, scope: !218)
!265 = !DILocation(line: 139, column: 21, scope: !218)
!266 = !DILocalVariable(name: "c", scope: !218, file: !1, line: 140, type: !50)
!267 = !DILocation(line: 140, column: 12, scope: !218)
!268 = !DILocation(line: 140, column: 16, scope: !218)
!269 = !DILocation(line: 140, column: 24, scope: !218)
!270 = !DILocalVariable(name: "cerr", scope: !218, file: !1, line: 141, type: !50)
!271 = !DILocation(line: 141, column: 12, scope: !218)
!272 = !DILocation(line: 141, column: 19, scope: !218)
!273 = !DILocation(line: 141, column: 27, scope: !218)
!274 = !DILocation(line: 142, column: 19, scope: !218)
!275 = !DILocation(line: 142, column: 21, scope: !218)
!276 = !DILocation(line: 142, column: 20, scope: !218)
!277 = !DILocation(line: 142, column: 28, scope: !218)
!278 = !DILocation(line: 142, column: 30, scope: !218)
!279 = !DILocation(line: 142, column: 29, scope: !218)
!280 = !DILocation(line: 142, column: 26, scope: !218)
!281 = !DILocation(line: 142, column: 5, scope: !218)
!282 = !DILocation(line: 142, column: 13, scope: !218)
!283 = !DILocation(line: 142, column: 17, scope: !218)
!284 = !DILocation(line: 143, column: 24, scope: !218)
!285 = !DILocation(line: 143, column: 26, scope: !218)
!286 = !DILocation(line: 143, column: 25, scope: !218)
!287 = !DILocation(line: 143, column: 19, scope: !218)
!288 = !DILocation(line: 143, column: 39, scope: !218)
!289 = !DILocation(line: 143, column: 41, scope: !218)
!290 = !DILocation(line: 143, column: 40, scope: !218)
!291 = !DILocation(line: 143, column: 34, scope: !292)
!292 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 1)
!293 = !DILocation(line: 143, column: 32, scope: !218)
!294 = !DILocation(line: 143, column: 54, scope: !218)
!295 = !DILocation(line: 143, column: 59, scope: !218)
!296 = !DILocation(line: 143, column: 58, scope: !218)
!297 = !DILocation(line: 143, column: 49, scope: !298)
!298 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 2)
!299 = !DILocation(line: 143, column: 47, scope: !218)
!300 = !DILocation(line: 143, column: 72, scope: !218)
!301 = !DILocation(line: 143, column: 77, scope: !218)
!302 = !DILocation(line: 143, column: 76, scope: !218)
!303 = !DILocation(line: 143, column: 67, scope: !304)
!304 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 3)
!305 = !DILocation(line: 143, column: 65, scope: !218)
!306 = !DILocation(line: 143, column: 5, scope: !218)
!307 = !DILocation(line: 143, column: 13, scope: !218)
!308 = !DILocation(line: 143, column: 17, scope: !218)
!309 = !DILocation(line: 144, column: 12, scope: !218)
!310 = !DILocation(line: 144, column: 12, scope: !292)
!311 = !DILocation(line: 144, column: 12, scope: !298)
!312 = !DILocation(line: 144, column: 12, scope: !304)
!313 = !DILocation(line: 144, column: 12, scope: !314)
!314 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 4)
!315 = !DILocation(line: 144, column: 12, scope: !316)
!316 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 5)
!317 = !DILocation(line: 144, column: 12, scope: !318)
!318 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 6)
!319 = !DILocation(line: 144, column: 12, scope: !320)
!320 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 7)
!321 = !DILocation(line: 144, column: 12, scope: !322)
!322 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 8)
!323 = !DILocation(line: 144, column: 12, scope: !324)
!324 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 9)
!325 = !DILocation(line: 144, column: 12, scope: !326)
!326 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 10)
!327 = !DILocation(line: 144, column: 12, scope: !328)
!328 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 11)
!329 = !DILocation(line: 144, column: 12, scope: !330)
!330 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 12)
!331 = !DILocation(line: 144, column: 5, scope: !330)
!332 = !DILocation(line: 146, column: 38, scope: !214)
!333 = !DILocation(line: 146, column: 42, scope: !214)
!334 = !DILocation(line: 146, column: 45, scope: !214)
!335 = !DILocation(line: 146, column: 15, scope: !214)
!336 = !DILocation(line: 146, column: 8, scope: !214)
!337 = !DILocation(line: 147, column: 1, scope: !188)
!338 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu", scope: !1, file: !1, line: 153, type: !339, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!339 = !DISubroutineType(types: !340)
!340 = !{!50, !341, !341}
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!342 = !DILocalVariable(name: "nu", arg: 1, scope: !338, file: !1, line: 153, type: !341)
!343 = !DILocation(line: 153, column: 39, scope: !338)
!344 = !DILocalVariable(name: "x", arg: 2, scope: !338, file: !1, line: 153, type: !341)
!345 = !DILocation(line: 153, column: 56, scope: !338)
!346 = !DILocalVariable(name: "result", scope: !338, file: !1, line: 155, type: !52)
!347 = !DILocation(line: 155, column: 3, scope: !338)
!348 = !DILocalVariable(name: "status", scope: !338, file: !1, line: 155, type: !42)
!349 = !DILocation(line: 155, column: 3, scope: !350)
!350 = distinct !DILexicalBlock(scope: !338, file: !1, line: 155, column: 3)
!351 = !DILocation(line: 155, column: 3, scope: !352)
!352 = !DILexicalBlockFile(scope: !353, file: !1, discriminator: 1)
!353 = distinct !DILexicalBlock(scope: !350, file: !1, line: 155, column: 3)
!354 = distinct !{!354, !355}
!355 = !DILocation(line: 155, column: 3, scope: !353)
!356 = !DILocation(line: 155, column: 3, scope: !357)
!357 = !DILexicalBlockFile(scope: !358, file: !1, discriminator: 2)
!358 = distinct !DILexicalBlock(scope: !353, file: !1, line: 155, column: 3)
!359 = !DILocation(line: 155, column: 3, scope: !360)
!360 = !DILexicalBlockFile(scope: !353, file: !1, discriminator: 3)
!361 = !DILocation(line: 155, column: 3, scope: !362)
!362 = !DILexicalBlockFile(scope: !338, file: !1, discriminator: 4)
!363 = !DILocation(line: 156, column: 1, scope: !338)
