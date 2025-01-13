; ModuleID = 'bessel_k.c'
source_filename = "bessel_k.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_k.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_k0_scaled_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_k1_scaled_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_k2_scaled_e(x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_kl_scaled_e(l, x, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_k0_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !61, metadata !62), !dbg !63
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !64, metadata !62), !dbg !65
  %6 = load double, double* %4, align 8, !dbg !66
  %7 = fcmp ole double %6, 0.000000e+00, !dbg !68
  br i1 %7, label %8, label %17, !dbg !69

; <label>:8:                                      ; preds = %2
  br label %9, !dbg !70, !llvm.loop !72

; <label>:9:                                      ; preds = %8
  %10 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !73
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !73
  store double 0x7FF8000000000000, double* %11, align 8, !dbg !73
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !73
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !73
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !73
  br label %14, !dbg !73, !llvm.loop !76

; <label>:14:                                     ; preds = %9
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 89, i32 1), !dbg !78
  store i32 1, i32* %3, align 4, !dbg !78
  br label %39, !dbg !78
                                                  ; No predecessors!
  br label %16, !dbg !81

; <label>:16:                                     ; preds = %15
  br label %39, !dbg !83

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %4, align 8, !dbg !84
  %19 = fmul double 2.000000e+00, %18, !dbg !86
  %20 = fdiv double 0x400921FB54442D18, %19, !dbg !87
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !88
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !89
  store double %20, double* %22, align 8, !dbg !90
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !91
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !92
  %25 = load double, double* %24, align 8, !dbg !92
  %26 = call double @fabs(double %25) #1, !dbg !93
  %27 = fmul double 0x3CC0000000000000, %26, !dbg !94
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !96
  store double %27, double* %29, align 8, !dbg !97
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !98
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !98
  %32 = load double, double* %31, align 8, !dbg !98
  %33 = call double @fabs(double %32) #1, !dbg !98
  %34 = fcmp olt double %33, 0x10000000000000, !dbg !98
  br i1 %34, label %35, label %38, !dbg !100

; <label>:35:                                     ; preds = %17
  br label %36, !dbg !101, !llvm.loop !103

; <label>:36:                                     ; preds = %35
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 94, i32 15), !dbg !104
  store i32 15, i32* %3, align 4, !dbg !104
  br label %39, !dbg !104
                                                  ; No predecessors!
  br label %38, !dbg !107

; <label>:38:                                     ; preds = %37, %17
  store i32 0, i32* %3, align 4, !dbg !109
  br label %39, !dbg !109

; <label>:39:                                     ; preds = %14, %36, %38, %16
  %40 = load i32, i32* %3, align 4, !dbg !110
  ret i32 %40, !dbg !110
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_k1_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !111 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !112, metadata !62), !dbg !113
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !114, metadata !62), !dbg !115
  %6 = load double, double* %4, align 8, !dbg !116
  %7 = fcmp ole double %6, 0.000000e+00, !dbg !118
  br i1 %7, label %8, label %17, !dbg !119

; <label>:8:                                      ; preds = %2
  br label %9, !dbg !120, !llvm.loop !122

; <label>:9:                                      ; preds = %8
  %10 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !123
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !123
  store double 0x7FF8000000000000, double* %11, align 8, !dbg !123
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !123
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !123
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !123
  br label %14, !dbg !123, !llvm.loop !126

; <label>:14:                                     ; preds = %9
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 105, i32 1), !dbg !128
  store i32 1, i32* %3, align 4, !dbg !128
  br label %56, !dbg !128
                                                  ; No predecessors!
  br label %16, !dbg !131

; <label>:16:                                     ; preds = %15
  br label %56, !dbg !133

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %4, align 8, !dbg !134
  %19 = fcmp olt double %18, 0x1FFF5DE25335C4EE, !dbg !136
  br i1 %19, label %20, label %29, !dbg !137

; <label>:20:                                     ; preds = %17
  br label %21, !dbg !138, !llvm.loop !140

; <label>:21:                                     ; preds = %20
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !141
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !141
  store double 0x7FF0000000000000, double* %23, align 8, !dbg !141
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !141
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !141
  store double 0x7FF0000000000000, double* %25, align 8, !dbg !141
  br label %26, !dbg !141, !llvm.loop !144

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 108, i32 16), !dbg !146
  store i32 16, i32* %3, align 4, !dbg !146
  br label %56, !dbg !146
                                                  ; No predecessors!
  br label %28, !dbg !149

; <label>:28:                                     ; preds = %27
  br label %55, !dbg !151

; <label>:29:                                     ; preds = %17
  %30 = load double, double* %4, align 8, !dbg !152
  %31 = fmul double 2.000000e+00, %30, !dbg !154
  %32 = fdiv double 0x400921FB54442D18, %31, !dbg !155
  %33 = load double, double* %4, align 8, !dbg !156
  %34 = fdiv double 1.000000e+00, %33, !dbg !157
  %35 = fadd double 1.000000e+00, %34, !dbg !158
  %36 = fmul double %32, %35, !dbg !159
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !160
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !161
  store double %36, double* %38, align 8, !dbg !162
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !163
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !164
  %41 = load double, double* %40, align 8, !dbg !164
  %42 = call double @fabs(double %41) #1, !dbg !165
  %43 = fmul double 0x3CC0000000000000, %42, !dbg !166
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !167
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !168
  store double %43, double* %45, align 8, !dbg !169
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !170
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !170
  %48 = load double, double* %47, align 8, !dbg !170
  %49 = call double @fabs(double %48) #1, !dbg !170
  %50 = fcmp olt double %49, 0x10000000000000, !dbg !170
  br i1 %50, label %51, label %54, !dbg !172

; <label>:51:                                     ; preds = %29
  br label %52, !dbg !173, !llvm.loop !175

; <label>:52:                                     ; preds = %51
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 113, i32 15), !dbg !176
  store i32 15, i32* %3, align 4, !dbg !176
  br label %56, !dbg !176
                                                  ; No predecessors!
  br label %54, !dbg !179

; <label>:54:                                     ; preds = %53, %29
  store i32 0, i32* %3, align 4, !dbg !181
  br label %56, !dbg !181

; <label>:55:                                     ; preds = %28
  br label %56

; <label>:56:                                     ; preds = %14, %26, %52, %54, %55, %16
  %57 = load i32, i32* %3, align 4, !dbg !182
  ret i32 %57, !dbg !182
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_k2_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !183 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !184, metadata !62), !dbg !185
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !186, metadata !62), !dbg !187
  %6 = load double, double* %4, align 8, !dbg !188
  %7 = fcmp ole double %6, 0.000000e+00, !dbg !190
  br i1 %7, label %8, label %17, !dbg !191

; <label>:8:                                      ; preds = %2
  br label %9, !dbg !192, !llvm.loop !194

; <label>:9:                                      ; preds = %8
  %10 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !195
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !195
  store double 0x7FF8000000000000, double* %11, align 8, !dbg !195
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !195
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !195
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !195
  br label %14, !dbg !195, !llvm.loop !198

; <label>:14:                                     ; preds = %9
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 124, i32 1), !dbg !200
  store i32 1, i32* %3, align 4, !dbg !200
  br label %60, !dbg !200
                                                  ; No predecessors!
  br label %16, !dbg !203

; <label>:16:                                     ; preds = %15
  br label %60, !dbg !205

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %4, align 8, !dbg !206
  %19 = fcmp olt double %18, 0x2AA965FEA53D6E98, !dbg !208
  br i1 %19, label %20, label %29, !dbg !209

; <label>:20:                                     ; preds = %17
  br label %21, !dbg !210, !llvm.loop !212

; <label>:21:                                     ; preds = %20
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !213
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !213
  store double 0x7FF0000000000000, double* %23, align 8, !dbg !213
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !213
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !213
  store double 0x7FF0000000000000, double* %25, align 8, !dbg !213
  br label %26, !dbg !213, !llvm.loop !216

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 127, i32 16), !dbg !218
  store i32 16, i32* %3, align 4, !dbg !218
  br label %60, !dbg !218
                                                  ; No predecessors!
  br label %28, !dbg !221

; <label>:28:                                     ; preds = %27
  br label %59, !dbg !223

; <label>:29:                                     ; preds = %17
  %30 = load double, double* %4, align 8, !dbg !224
  %31 = fmul double 2.000000e+00, %30, !dbg !226
  %32 = fdiv double 0x400921FB54442D18, %31, !dbg !227
  %33 = load double, double* %4, align 8, !dbg !228
  %34 = fdiv double 3.000000e+00, %33, !dbg !229
  %35 = load double, double* %4, align 8, !dbg !230
  %36 = fdiv double 1.000000e+00, %35, !dbg !231
  %37 = fadd double 1.000000e+00, %36, !dbg !232
  %38 = fmul double %34, %37, !dbg !233
  %39 = fadd double 1.000000e+00, %38, !dbg !234
  %40 = fmul double %32, %39, !dbg !235
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !236
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !237
  store double %40, double* %42, align 8, !dbg !238
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !239
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !240
  %45 = load double, double* %44, align 8, !dbg !240
  %46 = call double @fabs(double %45) #1, !dbg !241
  %47 = fmul double 0x3CC0000000000000, %46, !dbg !242
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !243
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !244
  store double %47, double* %49, align 8, !dbg !245
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !246
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !246
  %52 = load double, double* %51, align 8, !dbg !246
  %53 = call double @fabs(double %52) #1, !dbg !246
  %54 = fcmp olt double %53, 0x10000000000000, !dbg !246
  br i1 %54, label %55, label %58, !dbg !248

; <label>:55:                                     ; preds = %29
  br label %56, !dbg !249, !llvm.loop !251

; <label>:56:                                     ; preds = %55
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 132, i32 15), !dbg !252
  store i32 15, i32* %3, align 4, !dbg !252
  br label %60, !dbg !252
                                                  ; No predecessors!
  br label %58, !dbg !255

; <label>:58:                                     ; preds = %57, %29
  store i32 0, i32* %3, align 4, !dbg !257
  br label %60, !dbg !257

; <label>:59:                                     ; preds = %28
  br label %60

; <label>:60:                                     ; preds = %14, %26, %56, %58, %59, %16
  %61 = load i32, i32* %3, align 4, !dbg !258
  ret i32 %61, !dbg !258
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_kl_scaled_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !259 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !262, metadata !62), !dbg !263
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !264, metadata !62), !dbg !265
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !266, metadata !62), !dbg !267
  %20 = load i32, i32* %5, align 4, !dbg !268
  %21 = icmp slt i32 %20, 0, !dbg !270
  br i1 %21, label %25, label %22, !dbg !271

; <label>:22:                                     ; preds = %3
  %23 = load double, double* %6, align 8, !dbg !272
  %24 = fcmp ole double %23, 0.000000e+00, !dbg !274
  br i1 %24, label %25, label %34, !dbg !275

; <label>:25:                                     ; preds = %22, %3
  br label %26, !dbg !276, !llvm.loop !278

; <label>:26:                                     ; preds = %25
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !279
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !279
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !279
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !279
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !279
  store double 0x7FF8000000000000, double* %30, align 8, !dbg !279
  br label %31, !dbg !279, !llvm.loop !282

; <label>:31:                                     ; preds = %26
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 141, i32 1), !dbg !284
  store i32 1, i32* %4, align 4, !dbg !284
  br label %229, !dbg !284
                                                  ; No predecessors!
  br label %33, !dbg !287

; <label>:33:                                     ; preds = %32
  br label %229, !dbg !289

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* %5, align 4, !dbg !290
  %36 = icmp eq i32 %35, 0, !dbg !292
  br i1 %36, label %37, label %41, !dbg !293

; <label>:37:                                     ; preds = %34
  %38 = load double, double* %6, align 8, !dbg !294
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !296
  %40 = call i32 @gsl_sf_bessel_k0_scaled_e(double %38, %struct.gsl_sf_result_struct* %39), !dbg !297
  store i32 %40, i32* %4, align 4, !dbg !298
  br label %229, !dbg !298

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %5, align 4, !dbg !299
  %43 = icmp eq i32 %42, 1, !dbg !301
  br i1 %43, label %44, label %48, !dbg !302

; <label>:44:                                     ; preds = %41
  %45 = load double, double* %6, align 8, !dbg !303
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !305
  %47 = call i32 @gsl_sf_bessel_k1_scaled_e(double %45, %struct.gsl_sf_result_struct* %46), !dbg !306
  store i32 %47, i32* %4, align 4, !dbg !307
  br label %229, !dbg !307

; <label>:48:                                     ; preds = %41
  %49 = load i32, i32* %5, align 4, !dbg !308
  %50 = icmp eq i32 %49, 2, !dbg !310
  br i1 %50, label %51, label %55, !dbg !311

; <label>:51:                                     ; preds = %48
  %52 = load double, double* %6, align 8, !dbg !312
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !314
  %54 = call i32 @gsl_sf_bessel_k2_scaled_e(double %52, %struct.gsl_sf_result_struct* %53), !dbg !315
  store i32 %54, i32* %4, align 4, !dbg !316
  br label %229, !dbg !316

; <label>:55:                                     ; preds = %48
  %56 = load double, double* %6, align 8, !dbg !317
  %57 = fcmp olt double %56, 3.000000e+00, !dbg !319
  br i1 %57, label %58, label %63, !dbg !320

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %5, align 4, !dbg !321
  %60 = load double, double* %6, align 8, !dbg !323
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !324
  %62 = call i32 @bessel_kl_scaled_small_x(i32 %59, double %60, %struct.gsl_sf_result_struct* %61), !dbg !325
  store i32 %62, i32* %4, align 4, !dbg !326
  br label %229, !dbg !326

; <label>:63:                                     ; preds = %55
  %64 = load double, double* %6, align 8, !dbg !327
  %65 = fmul double 0x3ED965FEA53D6E41, %64, !dbg !329
  %66 = load i32, i32* %5, align 4, !dbg !330
  %67 = load i32, i32* %5, align 4, !dbg !331
  %68 = mul nsw i32 %66, %67, !dbg !332
  %69 = load i32, i32* %5, align 4, !dbg !333
  %70 = add nsw i32 %68, %69, !dbg !334
  %71 = add nsw i32 %70, 1, !dbg !335
  %72 = sitofp i32 %71 to double, !dbg !336
  %73 = fcmp ogt double %65, %72, !dbg !337
  br i1 %73, label %74, label %95, !dbg !338

; <label>:74:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata i32* %8, metadata !339, metadata !62), !dbg !341
  %75 = load i32, i32* %5, align 4, !dbg !342
  %76 = sitofp i32 %75 to double, !dbg !342
  %77 = fadd double %76, 5.000000e-01, !dbg !343
  %78 = load double, double* %6, align 8, !dbg !344
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !345
  %80 = call i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double %77, double %78, %struct.gsl_sf_result_struct* %79), !dbg !346
  store i32 %80, i32* %8, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata double* %9, metadata !347, metadata !62), !dbg !348
  %81 = load double, double* %6, align 8, !dbg !349
  %82 = fdiv double 0x3FF921FB54442D18, %81, !dbg !350
  %83 = call double @sqrt(double %82) #5, !dbg !351
  store double %83, double* %9, align 8, !dbg !348
  %84 = load double, double* %9, align 8, !dbg !352
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !353
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !354
  %87 = load double, double* %86, align 8, !dbg !355
  %88 = fmul double %87, %84, !dbg !355
  store double %88, double* %86, align 8, !dbg !355
  %89 = load double, double* %9, align 8, !dbg !356
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !357
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !358
  %92 = load double, double* %91, align 8, !dbg !359
  %93 = fmul double %92, %89, !dbg !359
  store double %93, double* %91, align 8, !dbg !359
  %94 = load i32, i32* %8, align 4, !dbg !360
  store i32 %94, i32* %4, align 4, !dbg !361
  br label %229, !dbg !361

; <label>:95:                                     ; preds = %63
  %96 = load i32, i32* %5, align 4, !dbg !362
  %97 = load i32, i32* %5, align 4, !dbg !362
  %98 = mul nsw i32 %96, %97, !dbg !362
  %99 = sitofp i32 %98 to double, !dbg !362
  %100 = fadd double %99, 1.000000e+00, !dbg !362
  %101 = fdiv double 2.900000e-01, %100, !dbg !362
  %102 = load i32, i32* %5, align 4, !dbg !362
  %103 = load i32, i32* %5, align 4, !dbg !362
  %104 = mul nsw i32 %102, %103, !dbg !362
  %105 = sitofp i32 %104 to double, !dbg !362
  %106 = fadd double %105, 1.000000e+00, !dbg !362
  %107 = load double, double* %6, align 8, !dbg !362
  %108 = load double, double* %6, align 8, !dbg !362
  %109 = fmul double %107, %108, !dbg !362
  %110 = fadd double %106, %109, !dbg !362
  %111 = fdiv double 5.000000e-01, %110, !dbg !362
  %112 = fcmp olt double %101, %111, !dbg !362
  br i1 %112, label %113, label %120, !dbg !362

; <label>:113:                                    ; preds = %95
  %114 = load i32, i32* %5, align 4, !dbg !364
  %115 = load i32, i32* %5, align 4, !dbg !364
  %116 = mul nsw i32 %114, %115, !dbg !364
  %117 = sitofp i32 %116 to double, !dbg !364
  %118 = fadd double %117, 1.000000e+00, !dbg !364
  %119 = fdiv double 2.900000e-01, %118, !dbg !364
  br label %131, !dbg !364

; <label>:120:                                    ; preds = %95
  %121 = load i32, i32* %5, align 4, !dbg !366
  %122 = load i32, i32* %5, align 4, !dbg !366
  %123 = mul nsw i32 %121, %122, !dbg !366
  %124 = sitofp i32 %123 to double, !dbg !366
  %125 = fadd double %124, 1.000000e+00, !dbg !366
  %126 = load double, double* %6, align 8, !dbg !366
  %127 = load double, double* %6, align 8, !dbg !366
  %128 = fmul double %126, %127, !dbg !366
  %129 = fadd double %125, %128, !dbg !366
  %130 = fdiv double 5.000000e-01, %129, !dbg !366
  br label %131, !dbg !366

; <label>:131:                                    ; preds = %120, %113
  %132 = phi double [ %119, %113 ], [ %130, %120 ], !dbg !368
  %133 = fcmp olt double %132, 0x3ED965FEA53D6E41, !dbg !370
  br i1 %133, label %134, label %155, !dbg !368

; <label>:134:                                    ; preds = %131
  call void @llvm.dbg.declare(metadata i32* %10, metadata !371, metadata !62), !dbg !373
  %135 = load i32, i32* %5, align 4, !dbg !374
  %136 = sitofp i32 %135 to double, !dbg !374
  %137 = fadd double %136, 5.000000e-01, !dbg !375
  %138 = load double, double* %6, align 8, !dbg !376
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !377
  %140 = call i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double %137, double %138, %struct.gsl_sf_result_struct* %139), !dbg !378
  store i32 %140, i32* %10, align 4, !dbg !373
  call void @llvm.dbg.declare(metadata double* %11, metadata !379, metadata !62), !dbg !380
  %141 = load double, double* %6, align 8, !dbg !381
  %142 = fdiv double 0x3FF921FB54442D18, %141, !dbg !382
  %143 = call double @sqrt(double %142) #5, !dbg !383
  store double %143, double* %11, align 8, !dbg !380
  %144 = load double, double* %11, align 8, !dbg !384
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !385
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 0, !dbg !386
  %147 = load double, double* %146, align 8, !dbg !387
  %148 = fmul double %147, %144, !dbg !387
  store double %148, double* %146, align 8, !dbg !387
  %149 = load double, double* %11, align 8, !dbg !388
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !389
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 1, !dbg !390
  %152 = load double, double* %151, align 8, !dbg !391
  %153 = fmul double %152, %149, !dbg !391
  store double %153, double* %151, align 8, !dbg !391
  %154 = load i32, i32* %10, align 4, !dbg !392
  store i32 %154, i32* %4, align 4, !dbg !393
  br label %229, !dbg !393

; <label>:155:                                    ; preds = %131
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !394, metadata !62), !dbg !396
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !397, metadata !62), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %14, metadata !399, metadata !62), !dbg !400
  %156 = load double, double* %6, align 8, !dbg !401
  %157 = call i32 @gsl_sf_bessel_k1_scaled_e(double %156, %struct.gsl_sf_result_struct* %12), !dbg !402
  store i32 %157, i32* %14, align 4, !dbg !400
  call void @llvm.dbg.declare(metadata i32* %15, metadata !403, metadata !62), !dbg !404
  %158 = load double, double* %6, align 8, !dbg !405
  %159 = call i32 @gsl_sf_bessel_k0_scaled_e(double %158, %struct.gsl_sf_result_struct* %13), !dbg !406
  store i32 %159, i32* %15, align 4, !dbg !404
  call void @llvm.dbg.declare(metadata double* %16, metadata !407, metadata !62), !dbg !408
  call void @llvm.dbg.declare(metadata double* %17, metadata !409, metadata !62), !dbg !410
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !411
  %161 = load double, double* %160, align 8, !dbg !411
  store double %161, double* %17, align 8, !dbg !410
  call void @llvm.dbg.declare(metadata double* %18, metadata !412, metadata !62), !dbg !413
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !414
  %163 = load double, double* %162, align 8, !dbg !414
  store double %163, double* %18, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata i32* %19, metadata !415, metadata !62), !dbg !416
  store i32 1, i32* %19, align 4, !dbg !417
  br label %164, !dbg !419

; <label>:164:                                    ; preds = %181, %155
  %165 = load i32, i32* %19, align 4, !dbg !420
  %166 = load i32, i32* %5, align 4, !dbg !423
  %167 = icmp slt i32 %165, %166, !dbg !424
  br i1 %167, label %168, label %184, !dbg !425

; <label>:168:                                    ; preds = %164
  %169 = load i32, i32* %19, align 4, !dbg !426
  %170 = mul nsw i32 2, %169, !dbg !428
  %171 = add nsw i32 %170, 1, !dbg !429
  %172 = sitofp i32 %171 to double, !dbg !430
  %173 = load double, double* %6, align 8, !dbg !431
  %174 = fdiv double %172, %173, !dbg !432
  %175 = load double, double* %17, align 8, !dbg !433
  %176 = fmul double %174, %175, !dbg !434
  %177 = load double, double* %18, align 8, !dbg !435
  %178 = fadd double %176, %177, !dbg !436
  store double %178, double* %16, align 8, !dbg !437
  %179 = load double, double* %17, align 8, !dbg !438
  store double %179, double* %18, align 8, !dbg !439
  %180 = load double, double* %16, align 8, !dbg !440
  store double %180, double* %17, align 8, !dbg !441
  br label %181, !dbg !442

; <label>:181:                                    ; preds = %168
  %182 = load i32, i32* %19, align 4, !dbg !443
  %183 = add nsw i32 %182, 1, !dbg !443
  store i32 %183, i32* %19, align 4, !dbg !443
  br label %164, !dbg !445, !llvm.loop !446

; <label>:184:                                    ; preds = %164
  %185 = load double, double* %17, align 8, !dbg !448
  %186 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !449
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %186, i32 0, i32 0, !dbg !450
  store double %185, double* %187, align 8, !dbg !451
  %188 = load double, double* %17, align 8, !dbg !452
  %189 = call double @fabs(double %188) #1, !dbg !453
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !454
  %191 = load double, double* %190, align 8, !dbg !454
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !455
  %193 = load double, double* %192, align 8, !dbg !455
  %194 = fdiv double %191, %193, !dbg !456
  %195 = call double @fabs(double %194) #1, !dbg !457
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !459
  %197 = load double, double* %196, align 8, !dbg !459
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !460
  %199 = load double, double* %198, align 8, !dbg !460
  %200 = fdiv double %197, %199, !dbg !461
  %201 = call double @fabs(double %200) #1, !dbg !462
  %202 = fadd double %195, %201, !dbg !464
  %203 = fmul double %189, %202, !dbg !465
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !466
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 1, !dbg !467
  store double %203, double* %205, align 8, !dbg !468
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !469
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %206, i32 0, i32 0, !dbg !470
  %208 = load double, double* %207, align 8, !dbg !470
  %209 = call double @fabs(double %208) #1, !dbg !471
  %210 = fmul double 0x3CC0000000000000, %209, !dbg !472
  %211 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !473
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %211, i32 0, i32 1, !dbg !474
  %213 = load double, double* %212, align 8, !dbg !475
  %214 = fadd double %213, %210, !dbg !475
  store double %214, double* %212, align 8, !dbg !475
  %215 = load i32, i32* %14, align 4, !dbg !476
  %216 = icmp ne i32 %215, 0, !dbg !476
  br i1 %216, label %217, label %219, !dbg !476

; <label>:217:                                    ; preds = %184
  %218 = load i32, i32* %14, align 4, !dbg !477
  br label %227, !dbg !477

; <label>:219:                                    ; preds = %184
  %220 = load i32, i32* %15, align 4, !dbg !478
  %221 = icmp ne i32 %220, 0, !dbg !478
  br i1 %221, label %222, label %224, !dbg !478

; <label>:222:                                    ; preds = %219
  %223 = load i32, i32* %15, align 4, !dbg !479
  br label %225, !dbg !479

; <label>:224:                                    ; preds = %219
  br label %225, !dbg !481

; <label>:225:                                    ; preds = %224, %222
  %226 = phi i32 [ %223, %222 ], [ 0, %224 ], !dbg !483
  br label %227, !dbg !483

; <label>:227:                                    ; preds = %225, %217
  %228 = phi i32 [ %218, %217 ], [ %226, %225 ], !dbg !485
  store i32 %228, i32* %4, align 4, !dbg !487
  br label %229, !dbg !487

; <label>:229:                                    ; preds = %31, %37, %44, %51, %58, %74, %134, %227, %33
  %230 = load i32, i32* %4, align 4, !dbg !488
  ret i32 %230, !dbg !488
}

; Function Attrs: nounwind uwtable
define internal i32 @bessel_kl_scaled_small_x(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !489 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !490, metadata !62), !dbg !491
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !492, metadata !62), !dbg !493
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !494, metadata !62), !dbg !495
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !496, metadata !62), !dbg !497
  call void @llvm.dbg.declare(metadata double* %9, metadata !498, metadata !62), !dbg !499
  %23 = load double, double* %6, align 8, !dbg !500
  %24 = load i32, i32* %5, align 4, !dbg !501
  %25 = add nsw i32 %24, 1, !dbg !502
  %26 = call double @gsl_sf_pow_int(double %23, i32 %25), !dbg !503
  store double %26, double* %9, align 8, !dbg !499
  call void @llvm.dbg.declare(metadata i32* %10, metadata !504, metadata !62), !dbg !505
  %27 = load i32, i32* %5, align 4, !dbg !506
  %28 = mul nsw i32 2, %27, !dbg !507
  %29 = sub nsw i32 %28, 1, !dbg !508
  %30 = call i32 @gsl_sf_doublefact_e(i32 %29, %struct.gsl_sf_result_struct* %8), !dbg !509
  store i32 %30, i32* %10, align 4, !dbg !505
  %31 = load i32, i32* %10, align 4, !dbg !510
  %32 = icmp ne i32 %31, 0, !dbg !512
  br i1 %32, label %36, label %33, !dbg !513

; <label>:33:                                     ; preds = %3
  %34 = load double, double* %9, align 8, !dbg !514
  %35 = fcmp oeq double %34, 0.000000e+00, !dbg !516
  br i1 %35, label %36, label %45, !dbg !517

; <label>:36:                                     ; preds = %33, %3
  br label %37, !dbg !518, !llvm.loop !520

; <label>:37:                                     ; preds = %36
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !521
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !521
  store double 0x7FF0000000000000, double* %39, align 8, !dbg !521
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !521
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !521
  store double 0x7FF0000000000000, double* %41, align 8, !dbg !521
  br label %42, !dbg !521, !llvm.loop !524

; <label>:42:                                     ; preds = %37
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 48, i32 16), !dbg !526
  store i32 16, i32* %4, align 4, !dbg !526
  br label %127, !dbg !526
                                                  ; No predecessors!
  br label %44, !dbg !529

; <label>:44:                                     ; preds = %43
  br label %127, !dbg !531

; <label>:45:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %11, metadata !532, metadata !62), !dbg !535
  store i32 50, i32* %11, align 4, !dbg !535
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !536, metadata !62), !dbg !537
  call void @llvm.dbg.declare(metadata double* %13, metadata !538, metadata !62), !dbg !539
  call void @llvm.dbg.declare(metadata double* %14, metadata !540, metadata !62), !dbg !541
  %46 = load i32, i32* %5, align 4, !dbg !542
  %47 = and i32 %46, 1, !dbg !542
  %48 = icmp ne i32 %47, 0, !dbg !542
  %49 = select i1 %48, double -1.000000e+00, double 1.000000e+00, !dbg !542
  store double %49, double* %14, align 8, !dbg !541
  call void @llvm.dbg.declare(metadata double* %15, metadata !543, metadata !62), !dbg !544
  %50 = load double, double* %6, align 8, !dbg !545
  %51 = call double @exp(double %50) #5, !dbg !546
  store double %51, double* %15, align 8, !dbg !544
  call void @llvm.dbg.declare(metadata double* %16, metadata !547, metadata !62), !dbg !548
  %52 = load double, double* %6, align 8, !dbg !549
  %53 = fmul double 5.000000e-01, %52, !dbg !550
  %54 = load double, double* %6, align 8, !dbg !551
  %55 = fmul double %53, %54, !dbg !552
  store double %55, double* %16, align 8, !dbg !548
  call void @llvm.dbg.declare(metadata double* %17, metadata !553, metadata !62), !dbg !554
  store double 1.000000e+00, double* %17, align 8, !dbg !554
  call void @llvm.dbg.declare(metadata double* %18, metadata !555, metadata !62), !dbg !556
  store double 1.000000e+00, double* %18, align 8, !dbg !556
  call void @llvm.dbg.declare(metadata double* %19, metadata !557, metadata !62), !dbg !558
  store double 1.000000e+00, double* %19, align 8, !dbg !558
  call void @llvm.dbg.declare(metadata double* %20, metadata !559, metadata !62), !dbg !560
  call void @llvm.dbg.declare(metadata i32* %21, metadata !561, metadata !62), !dbg !562
  call void @llvm.dbg.declare(metadata i32* %22, metadata !563, metadata !62), !dbg !564
  store i32 1, i32* %22, align 4, !dbg !565
  br label %56, !dbg !567

; <label>:56:                                     ; preds = %86, %45
  %57 = load i32, i32* %22, align 4, !dbg !568
  %58 = icmp slt i32 %57, 50, !dbg !571
  br i1 %58, label %59, label %89, !dbg !572

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %22, align 4, !dbg !573
  %61 = load i32, i32* %22, align 4, !dbg !575
  %62 = load i32, i32* %5, align 4, !dbg !576
  %63 = sub nsw i32 %61, %62, !dbg !577
  %64 = mul nsw i32 2, %63, !dbg !578
  %65 = sub nsw i32 %64, 1, !dbg !579
  %66 = mul nsw i32 %60, %65, !dbg !580
  %67 = sitofp i32 %66 to double, !dbg !573
  %68 = load double, double* %18, align 8, !dbg !581
  %69 = fdiv double %68, %67, !dbg !581
  store double %69, double* %18, align 8, !dbg !581
  %70 = load double, double* %16, align 8, !dbg !582
  %71 = load double, double* %19, align 8, !dbg !583
  %72 = fmul double %71, %70, !dbg !583
  store double %72, double* %19, align 8, !dbg !583
  %73 = load double, double* %19, align 8, !dbg !584
  %74 = load double, double* %18, align 8, !dbg !585
  %75 = fmul double %73, %74, !dbg !586
  store double %75, double* %20, align 8, !dbg !587
  %76 = load double, double* %20, align 8, !dbg !588
  %77 = load double, double* %17, align 8, !dbg !589
  %78 = fadd double %77, %76, !dbg !589
  store double %78, double* %17, align 8, !dbg !589
  %79 = load double, double* %20, align 8, !dbg !590
  %80 = load double, double* %17, align 8, !dbg !592
  %81 = fdiv double %79, %80, !dbg !593
  %82 = call double @fabs(double %81) #1, !dbg !594
  %83 = fcmp olt double %82, 0x3CB0000000000000, !dbg !595
  br i1 %83, label %84, label %85, !dbg !596

; <label>:84:                                     ; preds = %59
  br label %89, !dbg !597

; <label>:85:                                     ; preds = %59
  br label %86, !dbg !599

; <label>:86:                                     ; preds = %85
  %87 = load i32, i32* %22, align 4, !dbg !600
  %88 = add nsw i32 %87, 1, !dbg !600
  store i32 %88, i32* %22, align 4, !dbg !600
  br label %56, !dbg !602, !llvm.loop !603

; <label>:89:                                     ; preds = %84, %56
  %90 = load i32, i32* %5, align 4, !dbg !605
  %91 = load double, double* %6, align 8, !dbg !606
  %92 = call i32 @gsl_sf_bessel_il_scaled_e(i32 %90, double %91, %struct.gsl_sf_result_struct* %12), !dbg !607
  store i32 %92, i32* %21, align 4, !dbg !608
  %93 = load double, double* %14, align 8, !dbg !609
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !610
  %95 = load double, double* %94, align 8, !dbg !610
  %96 = fmul double %93, %95, !dbg !611
  %97 = load double, double* %9, align 8, !dbg !612
  %98 = fdiv double %96, %97, !dbg !613
  %99 = load double, double* %17, align 8, !dbg !614
  %100 = fmul double %98, %99, !dbg !615
  store double %100, double* %13, align 8, !dbg !616
  %101 = load double, double* %14, align 8, !dbg !617
  %102 = fsub double -0.000000e+00, %101, !dbg !618
  %103 = fmul double %102, 5.000000e-01, !dbg !619
  %104 = fmul double %103, 0x400921FB54442D18, !dbg !620
  %105 = load double, double* %15, align 8, !dbg !621
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !622
  %107 = load double, double* %106, align 8, !dbg !622
  %108 = fmul double %105, %107, !dbg !623
  %109 = load double, double* %13, align 8, !dbg !624
  %110 = fsub double %108, %109, !dbg !625
  %111 = fmul double %104, %110, !dbg !626
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !627
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !628
  store double %111, double* %113, align 8, !dbg !629
  %114 = load double, double* %15, align 8, !dbg !630
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !631
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !632
  %117 = load double, double* %116, align 8, !dbg !633
  %118 = fmul double %117, %114, !dbg !633
  store double %118, double* %116, align 8, !dbg !633
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !634
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 0, !dbg !635
  %121 = load double, double* %120, align 8, !dbg !635
  %122 = call double @fabs(double %121) #1, !dbg !636
  %123 = fmul double 0x3CC0000000000000, %122, !dbg !637
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !638
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 1, !dbg !639
  store double %123, double* %125, align 8, !dbg !640
  %126 = load i32, i32* %21, align 4, !dbg !641
  store i32 %126, i32* %4, align 4, !dbg !642
  br label %127, !dbg !642

; <label>:127:                                    ; preds = %42, %89, %44
  %128 = load i32, i32* %4, align 4, !dbg !643
  ret i32 %128, !dbg !643
}

declare i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_kl_scaled_array(i32, double, double*) #0 !dbg !644 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !648, metadata !62), !dbg !649
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !650, metadata !62), !dbg !651
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !652, metadata !62), !dbg !653
  %16 = load i32, i32* %5, align 4, !dbg !654
  %17 = icmp slt i32 %16, 0, !dbg !656
  br i1 %17, label %21, label %18, !dbg !657

; <label>:18:                                     ; preds = %3
  %19 = load double, double* %6, align 8, !dbg !658
  %20 = fcmp ole double %19, 0.000000e+00, !dbg !660
  br i1 %20, label %21, label %24, !dbg !661

; <label>:21:                                     ; preds = %18, %3
  br label %22, !dbg !662, !llvm.loop !664

; <label>:22:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 196, i32 1), !dbg !665
  store i32 1, i32* %4, align 4, !dbg !665
  br label %77, !dbg !665
                                                  ; No predecessors!
  br label %77, !dbg !668

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %5, align 4, !dbg !669
  %26 = icmp eq i32 %25, 0, !dbg !672
  br i1 %26, label %27, label %35, !dbg !669

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !673, metadata !62), !dbg !675
  call void @llvm.dbg.declare(metadata i32* %9, metadata !676, metadata !62), !dbg !677
  %28 = load double, double* %6, align 8, !dbg !678
  %29 = call i32 @gsl_sf_bessel_k0_scaled_e(double %28, %struct.gsl_sf_result_struct* %8), !dbg !679
  store i32 %29, i32* %9, align 4, !dbg !677
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !680
  %31 = load double, double* %30, align 8, !dbg !680
  %32 = load double*, double** %7, align 8, !dbg !681
  %33 = getelementptr inbounds double, double* %32, i64 0, !dbg !681
  store double %31, double* %33, align 8, !dbg !682
  %34 = load i32, i32* %9, align 4, !dbg !683
  store i32 %34, i32* %4, align 4, !dbg !684
  br label %77, !dbg !684

; <label>:35:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i32* %10, metadata !685, metadata !62), !dbg !687
  call void @llvm.dbg.declare(metadata double* %11, metadata !688, metadata !62), !dbg !689
  call void @llvm.dbg.declare(metadata double* %12, metadata !690, metadata !62), !dbg !691
  call void @llvm.dbg.declare(metadata double* %13, metadata !692, metadata !62), !dbg !693
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !694, metadata !62), !dbg !695
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !696, metadata !62), !dbg !697
  %36 = load double, double* %6, align 8, !dbg !698
  %37 = call i32 @gsl_sf_bessel_k1_scaled_e(double %36, %struct.gsl_sf_result_struct* %14), !dbg !699
  %38 = load double, double* %6, align 8, !dbg !700
  %39 = call i32 @gsl_sf_bessel_k0_scaled_e(double %38, %struct.gsl_sf_result_struct* %15), !dbg !701
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !702
  %41 = load double, double* %40, align 8, !dbg !702
  store double %41, double* %12, align 8, !dbg !703
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !704
  %43 = load double, double* %42, align 8, !dbg !704
  store double %43, double* %13, align 8, !dbg !705
  %44 = load double, double* %13, align 8, !dbg !706
  %45 = load double*, double** %7, align 8, !dbg !707
  %46 = getelementptr inbounds double, double* %45, i64 0, !dbg !707
  store double %44, double* %46, align 8, !dbg !708
  %47 = load double, double* %12, align 8, !dbg !709
  %48 = load double*, double** %7, align 8, !dbg !710
  %49 = getelementptr inbounds double, double* %48, i64 1, !dbg !710
  store double %47, double* %49, align 8, !dbg !711
  store i32 1, i32* %10, align 4, !dbg !712
  br label %50, !dbg !714

; <label>:50:                                     ; preds = %73, %35
  %51 = load i32, i32* %10, align 4, !dbg !715
  %52 = load i32, i32* %5, align 4, !dbg !718
  %53 = icmp slt i32 %51, %52, !dbg !719
  br i1 %53, label %54, label %76, !dbg !720

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* %10, align 4, !dbg !721
  %56 = mul nsw i32 2, %55, !dbg !723
  %57 = add nsw i32 %56, 1, !dbg !724
  %58 = sitofp i32 %57 to double, !dbg !725
  %59 = load double, double* %6, align 8, !dbg !726
  %60 = fdiv double %58, %59, !dbg !727
  %61 = load double, double* %12, align 8, !dbg !728
  %62 = fmul double %60, %61, !dbg !729
  %63 = load double, double* %13, align 8, !dbg !730
  %64 = fadd double %62, %63, !dbg !731
  store double %64, double* %11, align 8, !dbg !732
  %65 = load double, double* %11, align 8, !dbg !733
  %66 = load i32, i32* %10, align 4, !dbg !734
  %67 = add nsw i32 %66, 1, !dbg !735
  %68 = sext i32 %67 to i64, !dbg !736
  %69 = load double*, double** %7, align 8, !dbg !736
  %70 = getelementptr inbounds double, double* %69, i64 %68, !dbg !736
  store double %65, double* %70, align 8, !dbg !737
  %71 = load double, double* %12, align 8, !dbg !738
  store double %71, double* %13, align 8, !dbg !739
  %72 = load double, double* %11, align 8, !dbg !740
  store double %72, double* %12, align 8, !dbg !741
  br label %73, !dbg !742

; <label>:73:                                     ; preds = %54
  %74 = load i32, i32* %10, align 4, !dbg !743
  %75 = add nsw i32 %74, 1, !dbg !743
  store i32 %75, i32* %10, align 4, !dbg !743
  br label %50, !dbg !745, !llvm.loop !746

; <label>:76:                                     ; preds = %50
  store i32 0, i32* %4, align 4, !dbg !748
  br label %77, !dbg !748

; <label>:77:                                     ; preds = %22, %27, %76, %23
  %78 = load i32, i32* %4, align 4, !dbg !749
  ret i32 %78, !dbg !749
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_k0_scaled(double) #0 !dbg !750 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !753, metadata !62), !dbg !754
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !755, metadata !62), !dbg !756
  call void @llvm.dbg.declare(metadata i32* %5, metadata !757, metadata !62), !dbg !756
  %6 = load double, double* %3, align 8, !dbg !756
  %7 = call i32 @gsl_sf_bessel_k0_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !756
  store i32 %7, i32* %5, align 4, !dbg !756
  %8 = load i32, i32* %5, align 4, !dbg !758
  %9 = icmp ne i32 %8, 0, !dbg !758
  br i1 %9, label %10, label %16, !dbg !756

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !760, !llvm.loop !763

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !765
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 230, i32 %12), !dbg !765
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !765
  %14 = load double, double* %13, align 8, !dbg !765
  store double %14, double* %2, align 8, !dbg !765
  br label %19, !dbg !765
                                                  ; No predecessors!
  br label %16, !dbg !768

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !770
  %18 = load double, double* %17, align 8, !dbg !770
  store double %18, double* %2, align 8, !dbg !770
  br label %19, !dbg !770

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !772
  ret double %20, !dbg !772
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_k1_scaled(double) #0 !dbg !773 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !774, metadata !62), !dbg !775
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !776, metadata !62), !dbg !777
  call void @llvm.dbg.declare(metadata i32* %5, metadata !778, metadata !62), !dbg !777
  %6 = load double, double* %3, align 8, !dbg !777
  %7 = call i32 @gsl_sf_bessel_k1_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !777
  store i32 %7, i32* %5, align 4, !dbg !777
  %8 = load i32, i32* %5, align 4, !dbg !779
  %9 = icmp ne i32 %8, 0, !dbg !779
  br i1 %9, label %10, label %16, !dbg !777

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !781, !llvm.loop !784

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !786
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 235, i32 %12), !dbg !786
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !786
  %14 = load double, double* %13, align 8, !dbg !786
  store double %14, double* %2, align 8, !dbg !786
  br label %19, !dbg !786
                                                  ; No predecessors!
  br label %16, !dbg !789

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !791
  %18 = load double, double* %17, align 8, !dbg !791
  store double %18, double* %2, align 8, !dbg !791
  br label %19, !dbg !791

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !793
  ret double %20, !dbg !793
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_k2_scaled(double) #0 !dbg !794 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !795, metadata !62), !dbg !796
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !797, metadata !62), !dbg !798
  call void @llvm.dbg.declare(metadata i32* %5, metadata !799, metadata !62), !dbg !798
  %6 = load double, double* %3, align 8, !dbg !798
  %7 = call i32 @gsl_sf_bessel_k2_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !798
  store i32 %7, i32* %5, align 4, !dbg !798
  %8 = load i32, i32* %5, align 4, !dbg !800
  %9 = icmp ne i32 %8, 0, !dbg !800
  br i1 %9, label %10, label %16, !dbg !798

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !802, !llvm.loop !805

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !807
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 240, i32 %12), !dbg !807
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !807
  %14 = load double, double* %13, align 8, !dbg !807
  store double %14, double* %2, align 8, !dbg !807
  br label %19, !dbg !807
                                                  ; No predecessors!
  br label %16, !dbg !810

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !812
  %18 = load double, double* %17, align 8, !dbg !812
  store double %18, double* %2, align 8, !dbg !812
  br label %19, !dbg !812

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !814
  ret double %20, !dbg !814
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_kl_scaled(i32, double) #0 !dbg !815 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !818, metadata !62), !dbg !819
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !820, metadata !62), !dbg !821
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !822, metadata !62), !dbg !823
  call void @llvm.dbg.declare(metadata i32* %7, metadata !824, metadata !62), !dbg !823
  %8 = load i32, i32* %4, align 4, !dbg !823
  %9 = load double, double* %5, align 8, !dbg !823
  %10 = call i32 @gsl_sf_bessel_kl_scaled_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !823
  store i32 %10, i32* %7, align 4, !dbg !823
  %11 = load i32, i32* %7, align 4, !dbg !825
  %12 = icmp ne i32 %11, 0, !dbg !825
  br i1 %12, label %13, label %19, !dbg !823

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !827, !llvm.loop !830

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !832
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 245, i32 %15), !dbg !832
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !832
  %17 = load double, double* %16, align 8, !dbg !832
  store double %17, double* %3, align 8, !dbg !832
  br label %22, !dbg !832
                                                  ; No predecessors!
  br label %19, !dbg !835

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !837
  %21 = load double, double* %20, align 8, !dbg !837
  store double %21, double* %3, align 8, !dbg !837
  br label %22, !dbg !837

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !839
  ret double %23, !dbg !839
}

declare double @gsl_sf_pow_int(double, i32) #2

declare i32 @gsl_sf_doublefact_e(i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @exp(double) #4

declare i32 @gsl_sf_bessel_il_scaled_e(i32, double, %struct.gsl_sf_result_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_k.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"PIC Level", i32 2}
!46 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_k0_scaled_e", scope: !1, file: !1, line: 84, type: !48, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !51, !53}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !55, line: 37, size: 128, align: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !55, line: 38, baseType: !52, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !56, file: !55, line: 39, baseType: !52, size: 64, align: 64, offset: 64)
!60 = !{}
!61 = !DILocalVariable(name: "x", arg: 1, scope: !47, file: !1, line: 84, type: !51)
!62 = !DIExpression()
!63 = !DILocation(line: 84, column: 44, scope: !47)
!64 = !DILocalVariable(name: "result", arg: 2, scope: !47, file: !1, line: 84, type: !53)
!65 = !DILocation(line: 84, column: 63, scope: !47)
!66 = !DILocation(line: 88, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !47, file: !1, line: 88, column: 6)
!68 = !DILocation(line: 88, column: 8, scope: !67)
!69 = !DILocation(line: 88, column: 6, scope: !47)
!70 = !DILocation(line: 89, column: 5, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 88, column: 16)
!72 = distinct !{!72, !70}
!73 = !DILocation(line: 89, column: 5, scope: !74)
!74 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 1)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 89, column: 5)
!76 = distinct !{!76, !77}
!77 = !DILocation(line: 89, column: 5, scope: !75)
!78 = !DILocation(line: 89, column: 5, scope: !79)
!79 = !DILexicalBlockFile(scope: !80, file: !1, discriminator: 2)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 89, column: 5)
!81 = !DILocation(line: 89, column: 5, scope: !82)
!82 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 3)
!83 = !DILocation(line: 90, column: 3, scope: !71)
!84 = !DILocation(line: 92, column: 29, scope: !85)
!85 = distinct !DILexicalBlock(scope: !67, file: !1, line: 91, column: 8)
!86 = !DILocation(line: 92, column: 28, scope: !85)
!87 = !DILocation(line: 92, column: 23, scope: !85)
!88 = !DILocation(line: 92, column: 5, scope: !85)
!89 = !DILocation(line: 92, column: 13, scope: !85)
!90 = !DILocation(line: 92, column: 17, scope: !85)
!91 = !DILocation(line: 93, column: 48, scope: !85)
!92 = !DILocation(line: 93, column: 56, scope: !85)
!93 = !DILocation(line: 93, column: 43, scope: !85)
!94 = !DILocation(line: 93, column: 41, scope: !85)
!95 = !DILocation(line: 93, column: 5, scope: !85)
!96 = !DILocation(line: 93, column: 13, scope: !85)
!97 = !DILocation(line: 93, column: 17, scope: !85)
!98 = !DILocation(line: 94, column: 5, scope: !99)
!99 = distinct !DILexicalBlock(scope: !85, file: !1, line: 94, column: 5)
!100 = !DILocation(line: 94, column: 5, scope: !85)
!101 = !DILocation(line: 94, column: 5, scope: !102)
!102 = !DILexicalBlockFile(scope: !99, file: !1, discriminator: 1)
!103 = distinct !{!103, !98}
!104 = !DILocation(line: 94, column: 5, scope: !105)
!105 = !DILexicalBlockFile(scope: !106, file: !1, discriminator: 2)
!106 = distinct !DILexicalBlock(scope: !99, file: !1, line: 94, column: 5)
!107 = !DILocation(line: 94, column: 5, scope: !108)
!108 = !DILexicalBlockFile(scope: !106, file: !1, discriminator: 3)
!109 = !DILocation(line: 95, column: 5, scope: !85)
!110 = !DILocation(line: 97, column: 1, scope: !47)
!111 = distinct !DISubprogram(name: "gsl_sf_bessel_k1_scaled_e", scope: !1, file: !1, line: 100, type: !48, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!112 = !DILocalVariable(name: "x", arg: 1, scope: !111, file: !1, line: 100, type: !51)
!113 = !DILocation(line: 100, column: 44, scope: !111)
!114 = !DILocalVariable(name: "result", arg: 2, scope: !111, file: !1, line: 100, type: !53)
!115 = !DILocation(line: 100, column: 63, scope: !111)
!116 = !DILocation(line: 104, column: 6, scope: !117)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 104, column: 6)
!118 = !DILocation(line: 104, column: 8, scope: !117)
!119 = !DILocation(line: 104, column: 6, scope: !111)
!120 = !DILocation(line: 105, column: 5, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 104, column: 16)
!122 = distinct !{!122, !120}
!123 = !DILocation(line: 105, column: 5, scope: !124)
!124 = !DILexicalBlockFile(scope: !125, file: !1, discriminator: 1)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 105, column: 5)
!126 = distinct !{!126, !127}
!127 = !DILocation(line: 105, column: 5, scope: !125)
!128 = !DILocation(line: 105, column: 5, scope: !129)
!129 = !DILexicalBlockFile(scope: !130, file: !1, discriminator: 2)
!130 = distinct !DILexicalBlock(scope: !125, file: !1, line: 105, column: 5)
!131 = !DILocation(line: 105, column: 5, scope: !132)
!132 = !DILexicalBlockFile(scope: !125, file: !1, discriminator: 3)
!133 = !DILocation(line: 106, column: 3, scope: !121)
!134 = !DILocation(line: 107, column: 11, scope: !135)
!135 = distinct !DILexicalBlock(scope: !117, file: !1, line: 107, column: 11)
!136 = !DILocation(line: 107, column: 13, scope: !135)
!137 = !DILocation(line: 107, column: 11, scope: !117)
!138 = !DILocation(line: 108, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 107, column: 58)
!140 = distinct !{!140, !138}
!141 = !DILocation(line: 108, column: 5, scope: !142)
!142 = !DILexicalBlockFile(scope: !143, file: !1, discriminator: 1)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 108, column: 5)
!144 = distinct !{!144, !145}
!145 = !DILocation(line: 108, column: 5, scope: !143)
!146 = !DILocation(line: 108, column: 5, scope: !147)
!147 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 2)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 108, column: 5)
!149 = !DILocation(line: 108, column: 5, scope: !150)
!150 = !DILexicalBlockFile(scope: !143, file: !1, discriminator: 3)
!151 = !DILocation(line: 109, column: 3, scope: !139)
!152 = !DILocation(line: 111, column: 29, scope: !153)
!153 = distinct !DILexicalBlock(scope: !135, file: !1, line: 110, column: 8)
!154 = !DILocation(line: 111, column: 28, scope: !153)
!155 = !DILocation(line: 111, column: 23, scope: !153)
!156 = !DILocation(line: 111, column: 45, scope: !153)
!157 = !DILocation(line: 111, column: 44, scope: !153)
!158 = !DILocation(line: 111, column: 39, scope: !153)
!159 = !DILocation(line: 111, column: 32, scope: !153)
!160 = !DILocation(line: 111, column: 5, scope: !153)
!161 = !DILocation(line: 111, column: 13, scope: !153)
!162 = !DILocation(line: 111, column: 17, scope: !153)
!163 = !DILocation(line: 112, column: 48, scope: !153)
!164 = !DILocation(line: 112, column: 56, scope: !153)
!165 = !DILocation(line: 112, column: 43, scope: !153)
!166 = !DILocation(line: 112, column: 41, scope: !153)
!167 = !DILocation(line: 112, column: 5, scope: !153)
!168 = !DILocation(line: 112, column: 13, scope: !153)
!169 = !DILocation(line: 112, column: 17, scope: !153)
!170 = !DILocation(line: 113, column: 5, scope: !171)
!171 = distinct !DILexicalBlock(scope: !153, file: !1, line: 113, column: 5)
!172 = !DILocation(line: 113, column: 5, scope: !153)
!173 = !DILocation(line: 113, column: 5, scope: !174)
!174 = !DILexicalBlockFile(scope: !171, file: !1, discriminator: 1)
!175 = distinct !{!175, !170}
!176 = !DILocation(line: 113, column: 5, scope: !177)
!177 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 2)
!178 = distinct !DILexicalBlock(scope: !171, file: !1, line: 113, column: 5)
!179 = !DILocation(line: 113, column: 5, scope: !180)
!180 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 3)
!181 = !DILocation(line: 114, column: 5, scope: !153)
!182 = !DILocation(line: 116, column: 1, scope: !111)
!183 = distinct !DISubprogram(name: "gsl_sf_bessel_k2_scaled_e", scope: !1, file: !1, line: 119, type: !48, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!184 = !DILocalVariable(name: "x", arg: 1, scope: !183, file: !1, line: 119, type: !51)
!185 = !DILocation(line: 119, column: 44, scope: !183)
!186 = !DILocalVariable(name: "result", arg: 2, scope: !183, file: !1, line: 119, type: !53)
!187 = !DILocation(line: 119, column: 63, scope: !183)
!188 = !DILocation(line: 123, column: 6, scope: !189)
!189 = distinct !DILexicalBlock(scope: !183, file: !1, line: 123, column: 6)
!190 = !DILocation(line: 123, column: 8, scope: !189)
!191 = !DILocation(line: 123, column: 6, scope: !183)
!192 = !DILocation(line: 124, column: 5, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 123, column: 16)
!194 = distinct !{!194, !192}
!195 = !DILocation(line: 124, column: 5, scope: !196)
!196 = !DILexicalBlockFile(scope: !197, file: !1, discriminator: 1)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 124, column: 5)
!198 = distinct !{!198, !199}
!199 = !DILocation(line: 124, column: 5, scope: !197)
!200 = !DILocation(line: 124, column: 5, scope: !201)
!201 = !DILexicalBlockFile(scope: !202, file: !1, discriminator: 2)
!202 = distinct !DILexicalBlock(scope: !197, file: !1, line: 124, column: 5)
!203 = !DILocation(line: 124, column: 5, scope: !204)
!204 = !DILexicalBlockFile(scope: !197, file: !1, discriminator: 3)
!205 = !DILocation(line: 125, column: 3, scope: !193)
!206 = !DILocation(line: 126, column: 11, scope: !207)
!207 = distinct !DILexicalBlock(scope: !189, file: !1, line: 126, column: 11)
!208 = !DILocation(line: 126, column: 13, scope: !207)
!209 = !DILocation(line: 126, column: 11, scope: !189)
!210 = !DILocation(line: 127, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 126, column: 38)
!212 = distinct !{!212, !210}
!213 = !DILocation(line: 127, column: 5, scope: !214)
!214 = !DILexicalBlockFile(scope: !215, file: !1, discriminator: 1)
!215 = distinct !DILexicalBlock(scope: !211, file: !1, line: 127, column: 5)
!216 = distinct !{!216, !217}
!217 = !DILocation(line: 127, column: 5, scope: !215)
!218 = !DILocation(line: 127, column: 5, scope: !219)
!219 = !DILexicalBlockFile(scope: !220, file: !1, discriminator: 2)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 127, column: 5)
!221 = !DILocation(line: 127, column: 5, scope: !222)
!222 = !DILexicalBlockFile(scope: !215, file: !1, discriminator: 3)
!223 = !DILocation(line: 128, column: 3, scope: !211)
!224 = !DILocation(line: 130, column: 29, scope: !225)
!225 = distinct !DILexicalBlock(scope: !207, file: !1, line: 129, column: 8)
!226 = !DILocation(line: 130, column: 28, scope: !225)
!227 = !DILocation(line: 130, column: 23, scope: !225)
!228 = !DILocation(line: 130, column: 45, scope: !225)
!229 = !DILocation(line: 130, column: 44, scope: !225)
!230 = !DILocation(line: 130, column: 60, scope: !225)
!231 = !DILocation(line: 130, column: 59, scope: !225)
!232 = !DILocation(line: 130, column: 54, scope: !225)
!233 = !DILocation(line: 130, column: 47, scope: !225)
!234 = !DILocation(line: 130, column: 39, scope: !225)
!235 = !DILocation(line: 130, column: 32, scope: !225)
!236 = !DILocation(line: 130, column: 5, scope: !225)
!237 = !DILocation(line: 130, column: 13, scope: !225)
!238 = !DILocation(line: 130, column: 17, scope: !225)
!239 = !DILocation(line: 131, column: 48, scope: !225)
!240 = !DILocation(line: 131, column: 56, scope: !225)
!241 = !DILocation(line: 131, column: 43, scope: !225)
!242 = !DILocation(line: 131, column: 41, scope: !225)
!243 = !DILocation(line: 131, column: 5, scope: !225)
!244 = !DILocation(line: 131, column: 13, scope: !225)
!245 = !DILocation(line: 131, column: 17, scope: !225)
!246 = !DILocation(line: 132, column: 5, scope: !247)
!247 = distinct !DILexicalBlock(scope: !225, file: !1, line: 132, column: 5)
!248 = !DILocation(line: 132, column: 5, scope: !225)
!249 = !DILocation(line: 132, column: 5, scope: !250)
!250 = !DILexicalBlockFile(scope: !247, file: !1, discriminator: 1)
!251 = distinct !{!251, !246}
!252 = !DILocation(line: 132, column: 5, scope: !253)
!253 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 2)
!254 = distinct !DILexicalBlock(scope: !247, file: !1, line: 132, column: 5)
!255 = !DILocation(line: 132, column: 5, scope: !256)
!256 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 3)
!257 = !DILocation(line: 133, column: 5, scope: !225)
!258 = !DILocation(line: 135, column: 1, scope: !183)
!259 = distinct !DISubprogram(name: "gsl_sf_bessel_kl_scaled_e", scope: !1, file: !1, line: 138, type: !260, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!260 = !DISubroutineType(types: !261)
!261 = !{!50, !50, !51, !53}
!262 = !DILocalVariable(name: "l", arg: 1, scope: !259, file: !1, line: 138, type: !50)
!263 = !DILocation(line: 138, column: 35, scope: !259)
!264 = !DILocalVariable(name: "x", arg: 2, scope: !259, file: !1, line: 138, type: !51)
!265 = !DILocation(line: 138, column: 51, scope: !259)
!266 = !DILocalVariable(name: "result", arg: 3, scope: !259, file: !1, line: 138, type: !53)
!267 = !DILocation(line: 138, column: 70, scope: !259)
!268 = !DILocation(line: 140, column: 6, scope: !269)
!269 = distinct !DILexicalBlock(scope: !259, file: !1, line: 140, column: 6)
!270 = !DILocation(line: 140, column: 8, scope: !269)
!271 = !DILocation(line: 140, column: 12, scope: !269)
!272 = !DILocation(line: 140, column: 15, scope: !273)
!273 = !DILexicalBlockFile(scope: !269, file: !1, discriminator: 1)
!274 = !DILocation(line: 140, column: 17, scope: !273)
!275 = !DILocation(line: 140, column: 6, scope: !273)
!276 = !DILocation(line: 141, column: 5, scope: !277)
!277 = distinct !DILexicalBlock(scope: !269, file: !1, line: 140, column: 25)
!278 = distinct !{!278, !276}
!279 = !DILocation(line: 141, column: 5, scope: !280)
!280 = !DILexicalBlockFile(scope: !281, file: !1, discriminator: 1)
!281 = distinct !DILexicalBlock(scope: !277, file: !1, line: 141, column: 5)
!282 = distinct !{!282, !283}
!283 = !DILocation(line: 141, column: 5, scope: !281)
!284 = !DILocation(line: 141, column: 5, scope: !285)
!285 = !DILexicalBlockFile(scope: !286, file: !1, discriminator: 2)
!286 = distinct !DILexicalBlock(scope: !281, file: !1, line: 141, column: 5)
!287 = !DILocation(line: 141, column: 5, scope: !288)
!288 = !DILexicalBlockFile(scope: !281, file: !1, discriminator: 3)
!289 = !DILocation(line: 142, column: 3, scope: !277)
!290 = !DILocation(line: 143, column: 11, scope: !291)
!291 = distinct !DILexicalBlock(scope: !269, file: !1, line: 143, column: 11)
!292 = !DILocation(line: 143, column: 13, scope: !291)
!293 = !DILocation(line: 143, column: 11, scope: !269)
!294 = !DILocation(line: 144, column: 38, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 143, column: 19)
!296 = !DILocation(line: 144, column: 41, scope: !295)
!297 = !DILocation(line: 144, column: 12, scope: !295)
!298 = !DILocation(line: 144, column: 5, scope: !295)
!299 = !DILocation(line: 146, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !291, file: !1, line: 146, column: 11)
!301 = !DILocation(line: 146, column: 13, scope: !300)
!302 = !DILocation(line: 146, column: 11, scope: !291)
!303 = !DILocation(line: 147, column: 38, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !1, line: 146, column: 19)
!305 = !DILocation(line: 147, column: 41, scope: !304)
!306 = !DILocation(line: 147, column: 12, scope: !304)
!307 = !DILocation(line: 147, column: 5, scope: !304)
!308 = !DILocation(line: 149, column: 11, scope: !309)
!309 = distinct !DILexicalBlock(scope: !300, file: !1, line: 149, column: 11)
!310 = !DILocation(line: 149, column: 13, scope: !309)
!311 = !DILocation(line: 149, column: 11, scope: !300)
!312 = !DILocation(line: 150, column: 38, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !1, line: 149, column: 19)
!314 = !DILocation(line: 150, column: 41, scope: !313)
!315 = !DILocation(line: 150, column: 12, scope: !313)
!316 = !DILocation(line: 150, column: 5, scope: !313)
!317 = !DILocation(line: 152, column: 11, scope: !318)
!318 = distinct !DILexicalBlock(scope: !309, file: !1, line: 152, column: 11)
!319 = !DILocation(line: 152, column: 13, scope: !318)
!320 = !DILocation(line: 152, column: 11, scope: !309)
!321 = !DILocation(line: 153, column: 37, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !1, line: 152, column: 20)
!323 = !DILocation(line: 153, column: 40, scope: !322)
!324 = !DILocation(line: 153, column: 43, scope: !322)
!325 = !DILocation(line: 153, column: 12, scope: !322)
!326 = !DILocation(line: 153, column: 5, scope: !322)
!327 = !DILocation(line: 155, column: 35, scope: !328)
!328 = distinct !DILexicalBlock(scope: !318, file: !1, line: 155, column: 11)
!329 = !DILocation(line: 155, column: 33, scope: !328)
!330 = !DILocation(line: 155, column: 40, scope: !328)
!331 = !DILocation(line: 155, column: 42, scope: !328)
!332 = !DILocation(line: 155, column: 41, scope: !328)
!333 = !DILocation(line: 155, column: 46, scope: !328)
!334 = !DILocation(line: 155, column: 44, scope: !328)
!335 = !DILocation(line: 155, column: 48, scope: !328)
!336 = !DILocation(line: 155, column: 39, scope: !328)
!337 = !DILocation(line: 155, column: 37, scope: !328)
!338 = !DILocation(line: 155, column: 11, scope: !318)
!339 = !DILocalVariable(name: "status", scope: !340, file: !1, line: 156, type: !50)
!340 = distinct !DILexicalBlock(scope: !328, file: !1, line: 155, column: 54)
!341 = !DILocation(line: 156, column: 9, scope: !340)
!342 = !DILocation(line: 156, column: 52, scope: !340)
!343 = !DILocation(line: 156, column: 54, scope: !340)
!344 = !DILocation(line: 156, column: 61, scope: !340)
!345 = !DILocation(line: 156, column: 64, scope: !340)
!346 = !DILocation(line: 156, column: 18, scope: !340)
!347 = !DILocalVariable(name: "pre", scope: !340, file: !1, line: 157, type: !52)
!348 = !DILocation(line: 157, column: 12, scope: !340)
!349 = !DILocation(line: 157, column: 34, scope: !340)
!350 = !DILocation(line: 157, column: 33, scope: !340)
!351 = !DILocation(line: 157, column: 18, scope: !340)
!352 = !DILocation(line: 158, column: 20, scope: !340)
!353 = !DILocation(line: 158, column: 5, scope: !340)
!354 = !DILocation(line: 158, column: 13, scope: !340)
!355 = !DILocation(line: 158, column: 17, scope: !340)
!356 = !DILocation(line: 159, column: 20, scope: !340)
!357 = !DILocation(line: 159, column: 5, scope: !340)
!358 = !DILocation(line: 159, column: 13, scope: !340)
!359 = !DILocation(line: 159, column: 17, scope: !340)
!360 = !DILocation(line: 160, column: 12, scope: !340)
!361 = !DILocation(line: 160, column: 5, scope: !340)
!362 = !DILocation(line: 162, column: 11, scope: !363)
!363 = distinct !DILexicalBlock(scope: !328, file: !1, line: 162, column: 11)
!364 = !DILocation(line: 162, column: 11, scope: !365)
!365 = !DILexicalBlockFile(scope: !363, file: !1, discriminator: 1)
!366 = !DILocation(line: 162, column: 11, scope: !367)
!367 = !DILexicalBlockFile(scope: !363, file: !1, discriminator: 2)
!368 = !DILocation(line: 162, column: 11, scope: !369)
!369 = !DILexicalBlockFile(scope: !363, file: !1, discriminator: 3)
!370 = !DILocation(line: 162, column: 54, scope: !369)
!371 = !DILocalVariable(name: "status", scope: !372, file: !1, line: 163, type: !50)
!372 = distinct !DILexicalBlock(scope: !363, file: !1, line: 162, column: 79)
!373 = !DILocation(line: 163, column: 9, scope: !372)
!374 = !DILocation(line: 163, column: 56, scope: !372)
!375 = !DILocation(line: 163, column: 58, scope: !372)
!376 = !DILocation(line: 163, column: 65, scope: !372)
!377 = !DILocation(line: 163, column: 68, scope: !372)
!378 = !DILocation(line: 163, column: 18, scope: !372)
!379 = !DILocalVariable(name: "pre", scope: !372, file: !1, line: 164, type: !52)
!380 = !DILocation(line: 164, column: 12, scope: !372)
!381 = !DILocation(line: 164, column: 34, scope: !372)
!382 = !DILocation(line: 164, column: 33, scope: !372)
!383 = !DILocation(line: 164, column: 18, scope: !372)
!384 = !DILocation(line: 165, column: 20, scope: !372)
!385 = !DILocation(line: 165, column: 5, scope: !372)
!386 = !DILocation(line: 165, column: 13, scope: !372)
!387 = !DILocation(line: 165, column: 17, scope: !372)
!388 = !DILocation(line: 166, column: 20, scope: !372)
!389 = !DILocation(line: 166, column: 5, scope: !372)
!390 = !DILocation(line: 166, column: 13, scope: !372)
!391 = !DILocation(line: 166, column: 17, scope: !372)
!392 = !DILocation(line: 167, column: 12, scope: !372)
!393 = !DILocation(line: 167, column: 5, scope: !372)
!394 = !DILocalVariable(name: "r_bk", scope: !395, file: !1, line: 171, type: !54)
!395 = distinct !DILexicalBlock(scope: !363, file: !1, line: 169, column: 8)
!396 = !DILocation(line: 171, column: 19, scope: !395)
!397 = !DILocalVariable(name: "r_bkm", scope: !395, file: !1, line: 172, type: !54)
!398 = !DILocation(line: 172, column: 19, scope: !395)
!399 = !DILocalVariable(name: "stat_1", scope: !395, file: !1, line: 173, type: !50)
!400 = !DILocation(line: 173, column: 9, scope: !395)
!401 = !DILocation(line: 173, column: 44, scope: !395)
!402 = !DILocation(line: 173, column: 18, scope: !395)
!403 = !DILocalVariable(name: "stat_0", scope: !395, file: !1, line: 174, type: !50)
!404 = !DILocation(line: 174, column: 9, scope: !395)
!405 = !DILocation(line: 174, column: 44, scope: !395)
!406 = !DILocation(line: 174, column: 18, scope: !395)
!407 = !DILocalVariable(name: "bkp", scope: !395, file: !1, line: 175, type: !52)
!408 = !DILocation(line: 175, column: 12, scope: !395)
!409 = !DILocalVariable(name: "bk", scope: !395, file: !1, line: 176, type: !52)
!410 = !DILocation(line: 176, column: 12, scope: !395)
!411 = !DILocation(line: 176, column: 23, scope: !395)
!412 = !DILocalVariable(name: "bkm", scope: !395, file: !1, line: 177, type: !52)
!413 = !DILocation(line: 177, column: 12, scope: !395)
!414 = !DILocation(line: 177, column: 24, scope: !395)
!415 = !DILocalVariable(name: "j", scope: !395, file: !1, line: 178, type: !50)
!416 = !DILocation(line: 178, column: 9, scope: !395)
!417 = !DILocation(line: 179, column: 10, scope: !418)
!418 = distinct !DILexicalBlock(scope: !395, file: !1, line: 179, column: 5)
!419 = !DILocation(line: 179, column: 9, scope: !418)
!420 = !DILocation(line: 179, column: 14, scope: !421)
!421 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 1)
!422 = distinct !DILexicalBlock(scope: !418, file: !1, line: 179, column: 5)
!423 = !DILocation(line: 179, column: 16, scope: !421)
!424 = !DILocation(line: 179, column: 15, scope: !421)
!425 = !DILocation(line: 179, column: 5, scope: !421)
!426 = !DILocation(line: 180, column: 16, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !1, line: 179, column: 24)
!428 = !DILocation(line: 180, column: 15, scope: !427)
!429 = !DILocation(line: 180, column: 17, scope: !427)
!430 = !DILocation(line: 180, column: 13, scope: !427)
!431 = !DILocation(line: 180, column: 21, scope: !427)
!432 = !DILocation(line: 180, column: 20, scope: !427)
!433 = !DILocation(line: 180, column: 23, scope: !427)
!434 = !DILocation(line: 180, column: 22, scope: !427)
!435 = !DILocation(line: 180, column: 28, scope: !427)
!436 = !DILocation(line: 180, column: 26, scope: !427)
!437 = !DILocation(line: 180, column: 11, scope: !427)
!438 = !DILocation(line: 181, column: 13, scope: !427)
!439 = !DILocation(line: 181, column: 11, scope: !427)
!440 = !DILocation(line: 182, column: 13, scope: !427)
!441 = !DILocation(line: 182, column: 11, scope: !427)
!442 = !DILocation(line: 183, column: 5, scope: !427)
!443 = !DILocation(line: 179, column: 20, scope: !444)
!444 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 2)
!445 = !DILocation(line: 179, column: 5, scope: !444)
!446 = distinct !{!446, !447}
!447 = !DILocation(line: 179, column: 5, scope: !395)
!448 = !DILocation(line: 184, column: 20, scope: !395)
!449 = !DILocation(line: 184, column: 5, scope: !395)
!450 = !DILocation(line: 184, column: 13, scope: !395)
!451 = !DILocation(line: 184, column: 18, scope: !395)
!452 = !DILocation(line: 185, column: 25, scope: !395)
!453 = !DILocation(line: 185, column: 20, scope: !395)
!454 = !DILocation(line: 185, column: 42, scope: !395)
!455 = !DILocation(line: 185, column: 51, scope: !395)
!456 = !DILocation(line: 185, column: 45, scope: !395)
!457 = !DILocation(line: 185, column: 32, scope: !458)
!458 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 1)
!459 = !DILocation(line: 185, column: 69, scope: !395)
!460 = !DILocation(line: 185, column: 79, scope: !395)
!461 = !DILocation(line: 185, column: 72, scope: !395)
!462 = !DILocation(line: 185, column: 58, scope: !463)
!463 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 2)
!464 = !DILocation(line: 185, column: 56, scope: !395)
!465 = !DILocation(line: 185, column: 29, scope: !395)
!466 = !DILocation(line: 185, column: 5, scope: !395)
!467 = !DILocation(line: 185, column: 13, scope: !395)
!468 = !DILocation(line: 185, column: 18, scope: !395)
!469 = !DILocation(line: 186, column: 49, scope: !395)
!470 = !DILocation(line: 186, column: 57, scope: !395)
!471 = !DILocation(line: 186, column: 44, scope: !395)
!472 = !DILocation(line: 186, column: 42, scope: !395)
!473 = !DILocation(line: 186, column: 5, scope: !395)
!474 = !DILocation(line: 186, column: 13, scope: !395)
!475 = !DILocation(line: 186, column: 17, scope: !395)
!476 = !DILocation(line: 188, column: 12, scope: !395)
!477 = !DILocation(line: 188, column: 12, scope: !458)
!478 = !DILocation(line: 188, column: 12, scope: !463)
!479 = !DILocation(line: 188, column: 12, scope: !480)
!480 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 3)
!481 = !DILocation(line: 188, column: 12, scope: !482)
!482 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 4)
!483 = !DILocation(line: 188, column: 12, scope: !484)
!484 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 5)
!485 = !DILocation(line: 188, column: 12, scope: !486)
!486 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 6)
!487 = !DILocation(line: 188, column: 5, scope: !486)
!488 = !DILocation(line: 190, column: 1, scope: !259)
!489 = distinct !DISubprogram(name: "bessel_kl_scaled_small_x", scope: !1, file: !1, line: 41, type: !260, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!490 = !DILocalVariable(name: "l", arg: 1, scope: !489, file: !1, line: 41, type: !50)
!491 = !DILocation(line: 41, column: 41, scope: !489)
!492 = !DILocalVariable(name: "x", arg: 2, scope: !489, file: !1, line: 41, type: !51)
!493 = !DILocation(line: 41, column: 57, scope: !489)
!494 = !DILocalVariable(name: "result", arg: 3, scope: !489, file: !1, line: 41, type: !53)
!495 = !DILocation(line: 41, column: 76, scope: !489)
!496 = !DILocalVariable(name: "num_fact", scope: !489, file: !1, line: 43, type: !54)
!497 = !DILocation(line: 43, column: 17, scope: !489)
!498 = !DILocalVariable(name: "den", scope: !489, file: !1, line: 44, type: !52)
!499 = !DILocation(line: 44, column: 10, scope: !489)
!500 = !DILocation(line: 44, column: 32, scope: !489)
!501 = !DILocation(line: 44, column: 35, scope: !489)
!502 = !DILocation(line: 44, column: 36, scope: !489)
!503 = !DILocation(line: 44, column: 17, scope: !489)
!504 = !DILocalVariable(name: "stat_df", scope: !489, file: !1, line: 45, type: !50)
!505 = !DILocation(line: 45, column: 7, scope: !489)
!506 = !DILocation(line: 45, column: 55, scope: !489)
!507 = !DILocation(line: 45, column: 54, scope: !489)
!508 = !DILocation(line: 45, column: 56, scope: !489)
!509 = !DILocation(line: 45, column: 17, scope: !489)
!510 = !DILocation(line: 47, column: 6, scope: !511)
!511 = distinct !DILexicalBlock(scope: !489, file: !1, line: 47, column: 6)
!512 = !DILocation(line: 47, column: 14, scope: !511)
!513 = !DILocation(line: 47, column: 29, scope: !511)
!514 = !DILocation(line: 47, column: 32, scope: !515)
!515 = !DILexicalBlockFile(scope: !511, file: !1, discriminator: 1)
!516 = !DILocation(line: 47, column: 36, scope: !515)
!517 = !DILocation(line: 47, column: 6, scope: !515)
!518 = !DILocation(line: 48, column: 5, scope: !519)
!519 = distinct !DILexicalBlock(scope: !511, file: !1, line: 47, column: 44)
!520 = distinct !{!520, !518}
!521 = !DILocation(line: 48, column: 5, scope: !522)
!522 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 1)
!523 = distinct !DILexicalBlock(scope: !519, file: !1, line: 48, column: 5)
!524 = distinct !{!524, !525}
!525 = !DILocation(line: 48, column: 5, scope: !523)
!526 = !DILocation(line: 48, column: 5, scope: !527)
!527 = !DILexicalBlockFile(scope: !528, file: !1, discriminator: 2)
!528 = distinct !DILexicalBlock(scope: !523, file: !1, line: 48, column: 5)
!529 = !DILocation(line: 48, column: 5, scope: !530)
!530 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 3)
!531 = !DILocation(line: 49, column: 3, scope: !519)
!532 = !DILocalVariable(name: "lmax", scope: !533, file: !1, line: 51, type: !534)
!533 = distinct !DILexicalBlock(scope: !511, file: !1, line: 50, column: 8)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!535 = !DILocation(line: 51, column: 15, scope: !533)
!536 = !DILocalVariable(name: "ipos_term", scope: !533, file: !1, line: 52, type: !54)
!537 = !DILocation(line: 52, column: 19, scope: !533)
!538 = !DILocalVariable(name: "ineg_term", scope: !533, file: !1, line: 53, type: !52)
!539 = !DILocation(line: 53, column: 12, scope: !533)
!540 = !DILocalVariable(name: "sgn", scope: !533, file: !1, line: 54, type: !52)
!541 = !DILocation(line: 54, column: 12, scope: !533)
!542 = !DILocation(line: 54, column: 19, scope: !533)
!543 = !DILocalVariable(name: "ex", scope: !533, file: !1, line: 55, type: !52)
!544 = !DILocation(line: 55, column: 12, scope: !533)
!545 = !DILocation(line: 55, column: 22, scope: !533)
!546 = !DILocation(line: 55, column: 18, scope: !533)
!547 = !DILocalVariable(name: "t", scope: !533, file: !1, line: 56, type: !52)
!548 = !DILocation(line: 56, column: 12, scope: !533)
!549 = !DILocation(line: 56, column: 20, scope: !533)
!550 = !DILocation(line: 56, column: 19, scope: !533)
!551 = !DILocation(line: 56, column: 22, scope: !533)
!552 = !DILocation(line: 56, column: 21, scope: !533)
!553 = !DILocalVariable(name: "sum", scope: !533, file: !1, line: 57, type: !52)
!554 = !DILocation(line: 57, column: 12, scope: !533)
!555 = !DILocalVariable(name: "t_coeff", scope: !533, file: !1, line: 58, type: !52)
!556 = !DILocation(line: 58, column: 12, scope: !533)
!557 = !DILocalVariable(name: "t_power", scope: !533, file: !1, line: 59, type: !52)
!558 = !DILocation(line: 59, column: 12, scope: !533)
!559 = !DILocalVariable(name: "delta", scope: !533, file: !1, line: 60, type: !52)
!560 = !DILocation(line: 60, column: 12, scope: !533)
!561 = !DILocalVariable(name: "stat_il", scope: !533, file: !1, line: 61, type: !50)
!562 = !DILocation(line: 61, column: 9, scope: !533)
!563 = !DILocalVariable(name: "i", scope: !533, file: !1, line: 62, type: !50)
!564 = !DILocation(line: 62, column: 9, scope: !533)
!565 = !DILocation(line: 64, column: 10, scope: !566)
!566 = distinct !DILexicalBlock(scope: !533, file: !1, line: 64, column: 5)
!567 = !DILocation(line: 64, column: 9, scope: !566)
!568 = !DILocation(line: 64, column: 14, scope: !569)
!569 = !DILexicalBlockFile(scope: !570, file: !1, discriminator: 1)
!570 = distinct !DILexicalBlock(scope: !566, file: !1, line: 64, column: 5)
!571 = !DILocation(line: 64, column: 15, scope: !569)
!572 = !DILocation(line: 64, column: 5, scope: !569)
!573 = !DILocation(line: 65, column: 18, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !1, line: 64, column: 27)
!575 = !DILocation(line: 65, column: 24, scope: !574)
!576 = !DILocation(line: 65, column: 26, scope: !574)
!577 = !DILocation(line: 65, column: 25, scope: !574)
!578 = !DILocation(line: 65, column: 22, scope: !574)
!579 = !DILocation(line: 65, column: 29, scope: !574)
!580 = !DILocation(line: 65, column: 19, scope: !574)
!581 = !DILocation(line: 65, column: 15, scope: !574)
!582 = !DILocation(line: 66, column: 18, scope: !574)
!583 = !DILocation(line: 66, column: 15, scope: !574)
!584 = !DILocation(line: 67, column: 15, scope: !574)
!585 = !DILocation(line: 67, column: 23, scope: !574)
!586 = !DILocation(line: 67, column: 22, scope: !574)
!587 = !DILocation(line: 67, column: 13, scope: !574)
!588 = !DILocation(line: 68, column: 14, scope: !574)
!589 = !DILocation(line: 68, column: 11, scope: !574)
!590 = !DILocation(line: 69, column: 15, scope: !591)
!591 = distinct !DILexicalBlock(scope: !574, file: !1, line: 69, column: 10)
!592 = !DILocation(line: 69, column: 21, scope: !591)
!593 = !DILocation(line: 69, column: 20, scope: !591)
!594 = !DILocation(line: 69, column: 10, scope: !591)
!595 = !DILocation(line: 69, column: 26, scope: !591)
!596 = !DILocation(line: 69, column: 10, scope: !574)
!597 = !DILocation(line: 69, column: 45, scope: !598)
!598 = !DILexicalBlockFile(scope: !591, file: !1, discriminator: 1)
!599 = !DILocation(line: 70, column: 5, scope: !574)
!600 = !DILocation(line: 64, column: 23, scope: !601)
!601 = !DILexicalBlockFile(scope: !570, file: !1, discriminator: 2)
!602 = !DILocation(line: 64, column: 5, scope: !601)
!603 = distinct !{!603, !604}
!604 = !DILocation(line: 64, column: 5, scope: !533)
!605 = !DILocation(line: 72, column: 41, scope: !533)
!606 = !DILocation(line: 72, column: 44, scope: !533)
!607 = !DILocation(line: 72, column: 15, scope: !533)
!608 = !DILocation(line: 72, column: 13, scope: !533)
!609 = !DILocation(line: 73, column: 18, scope: !533)
!610 = !DILocation(line: 73, column: 33, scope: !533)
!611 = !DILocation(line: 73, column: 22, scope: !533)
!612 = !DILocation(line: 73, column: 37, scope: !533)
!613 = !DILocation(line: 73, column: 36, scope: !533)
!614 = !DILocation(line: 73, column: 43, scope: !533)
!615 = !DILocation(line: 73, column: 41, scope: !533)
!616 = !DILocation(line: 73, column: 15, scope: !533)
!617 = !DILocation(line: 74, column: 20, scope: !533)
!618 = !DILocation(line: 74, column: 19, scope: !533)
!619 = !DILocation(line: 74, column: 24, scope: !533)
!620 = !DILocation(line: 74, column: 29, scope: !533)
!621 = !DILocation(line: 74, column: 38, scope: !533)
!622 = !DILocation(line: 74, column: 51, scope: !533)
!623 = !DILocation(line: 74, column: 40, scope: !533)
!624 = !DILocation(line: 74, column: 57, scope: !533)
!625 = !DILocation(line: 74, column: 55, scope: !533)
!626 = !DILocation(line: 74, column: 35, scope: !533)
!627 = !DILocation(line: 74, column: 5, scope: !533)
!628 = !DILocation(line: 74, column: 13, scope: !533)
!629 = !DILocation(line: 74, column: 17, scope: !533)
!630 = !DILocation(line: 75, column: 20, scope: !533)
!631 = !DILocation(line: 75, column: 5, scope: !533)
!632 = !DILocation(line: 75, column: 13, scope: !533)
!633 = !DILocation(line: 75, column: 17, scope: !533)
!634 = !DILocation(line: 76, column: 48, scope: !533)
!635 = !DILocation(line: 76, column: 56, scope: !533)
!636 = !DILocation(line: 76, column: 43, scope: !533)
!637 = !DILocation(line: 76, column: 41, scope: !533)
!638 = !DILocation(line: 76, column: 5, scope: !533)
!639 = !DILocation(line: 76, column: 13, scope: !533)
!640 = !DILocation(line: 76, column: 17, scope: !533)
!641 = !DILocation(line: 77, column: 12, scope: !533)
!642 = !DILocation(line: 77, column: 5, scope: !533)
!643 = !DILocation(line: 79, column: 1, scope: !489)
!644 = distinct !DISubprogram(name: "gsl_sf_bessel_kl_scaled_array", scope: !1, file: !1, line: 193, type: !645, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!645 = !DISubroutineType(types: !646)
!646 = !{!50, !534, !51, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!648 = !DILocalVariable(name: "lmax", arg: 1, scope: !644, file: !1, line: 193, type: !534)
!649 = !DILocation(line: 193, column: 41, scope: !644)
!650 = !DILocalVariable(name: "x", arg: 2, scope: !644, file: !1, line: 193, type: !51)
!651 = !DILocation(line: 193, column: 60, scope: !644)
!652 = !DILocalVariable(name: "result_array", arg: 3, scope: !644, file: !1, line: 193, type: !647)
!653 = !DILocation(line: 193, column: 72, scope: !644)
!654 = !DILocation(line: 195, column: 6, scope: !655)
!655 = distinct !DILexicalBlock(scope: !644, file: !1, line: 195, column: 6)
!656 = !DILocation(line: 195, column: 11, scope: !655)
!657 = !DILocation(line: 195, column: 15, scope: !655)
!658 = !DILocation(line: 195, column: 18, scope: !659)
!659 = !DILexicalBlockFile(scope: !655, file: !1, discriminator: 1)
!660 = !DILocation(line: 195, column: 20, scope: !659)
!661 = !DILocation(line: 195, column: 6, scope: !659)
!662 = !DILocation(line: 196, column: 5, scope: !663)
!663 = distinct !DILexicalBlock(scope: !655, file: !1, line: 195, column: 28)
!664 = distinct !{!664, !662}
!665 = !DILocation(line: 196, column: 5, scope: !666)
!666 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 1)
!667 = distinct !DILexicalBlock(scope: !663, file: !1, line: 196, column: 5)
!668 = !DILocation(line: 197, column: 3, scope: !663)
!669 = !DILocation(line: 197, column: 14, scope: !670)
!670 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 1)
!671 = distinct !DILexicalBlock(scope: !655, file: !1, line: 197, column: 14)
!672 = !DILocation(line: 197, column: 19, scope: !670)
!673 = !DILocalVariable(name: "result", scope: !674, file: !1, line: 198, type: !54)
!674 = distinct !DILexicalBlock(scope: !671, file: !1, line: 197, column: 25)
!675 = !DILocation(line: 198, column: 19, scope: !674)
!676 = !DILocalVariable(name: "stat", scope: !674, file: !1, line: 199, type: !50)
!677 = !DILocation(line: 199, column: 9, scope: !674)
!678 = !DILocation(line: 199, column: 42, scope: !674)
!679 = !DILocation(line: 199, column: 16, scope: !674)
!680 = !DILocation(line: 200, column: 30, scope: !674)
!681 = !DILocation(line: 200, column: 5, scope: !674)
!682 = !DILocation(line: 200, column: 21, scope: !674)
!683 = !DILocation(line: 201, column: 12, scope: !674)
!684 = !DILocation(line: 201, column: 5, scope: !674)
!685 = !DILocalVariable(name: "ell", scope: !686, file: !1, line: 203, type: !50)
!686 = distinct !DILexicalBlock(scope: !671, file: !1, line: 202, column: 10)
!687 = !DILocation(line: 203, column: 9, scope: !686)
!688 = !DILocalVariable(name: "kellp1", scope: !686, file: !1, line: 204, type: !52)
!689 = !DILocation(line: 204, column: 12, scope: !686)
!690 = !DILocalVariable(name: "kell", scope: !686, file: !1, line: 204, type: !52)
!691 = !DILocation(line: 204, column: 20, scope: !686)
!692 = !DILocalVariable(name: "kellm1", scope: !686, file: !1, line: 204, type: !52)
!693 = !DILocation(line: 204, column: 26, scope: !686)
!694 = !DILocalVariable(name: "r_kell", scope: !686, file: !1, line: 205, type: !54)
!695 = !DILocation(line: 205, column: 19, scope: !686)
!696 = !DILocalVariable(name: "r_kellm1", scope: !686, file: !1, line: 206, type: !54)
!697 = !DILocation(line: 206, column: 19, scope: !686)
!698 = !DILocation(line: 207, column: 31, scope: !686)
!699 = !DILocation(line: 207, column: 5, scope: !686)
!700 = !DILocation(line: 208, column: 31, scope: !686)
!701 = !DILocation(line: 208, column: 5, scope: !686)
!702 = !DILocation(line: 209, column: 21, scope: !686)
!703 = !DILocation(line: 209, column: 12, scope: !686)
!704 = !DILocation(line: 210, column: 23, scope: !686)
!705 = !DILocation(line: 210, column: 12, scope: !686)
!706 = !DILocation(line: 211, column: 23, scope: !686)
!707 = !DILocation(line: 211, column: 5, scope: !686)
!708 = !DILocation(line: 211, column: 21, scope: !686)
!709 = !DILocation(line: 212, column: 23, scope: !686)
!710 = !DILocation(line: 212, column: 5, scope: !686)
!711 = !DILocation(line: 212, column: 21, scope: !686)
!712 = !DILocation(line: 213, column: 13, scope: !713)
!713 = distinct !DILexicalBlock(scope: !686, file: !1, line: 213, column: 5)
!714 = !DILocation(line: 213, column: 9, scope: !713)
!715 = !DILocation(line: 213, column: 18, scope: !716)
!716 = !DILexicalBlockFile(scope: !717, file: !1, discriminator: 1)
!717 = distinct !DILexicalBlock(scope: !713, file: !1, line: 213, column: 5)
!718 = !DILocation(line: 213, column: 24, scope: !716)
!719 = !DILocation(line: 213, column: 22, scope: !716)
!720 = !DILocation(line: 213, column: 5, scope: !716)
!721 = !DILocation(line: 214, column: 19, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !1, line: 213, column: 37)
!723 = !DILocation(line: 214, column: 18, scope: !722)
!724 = !DILocation(line: 214, column: 22, scope: !722)
!725 = !DILocation(line: 214, column: 16, scope: !722)
!726 = !DILocation(line: 214, column: 26, scope: !722)
!727 = !DILocation(line: 214, column: 25, scope: !722)
!728 = !DILocation(line: 214, column: 30, scope: !722)
!729 = !DILocation(line: 214, column: 28, scope: !722)
!730 = !DILocation(line: 214, column: 37, scope: !722)
!731 = !DILocation(line: 214, column: 35, scope: !722)
!732 = !DILocation(line: 214, column: 14, scope: !722)
!733 = !DILocation(line: 215, column: 29, scope: !722)
!734 = !DILocation(line: 215, column: 20, scope: !722)
!735 = !DILocation(line: 215, column: 23, scope: !722)
!736 = !DILocation(line: 215, column: 7, scope: !722)
!737 = !DILocation(line: 215, column: 27, scope: !722)
!738 = !DILocation(line: 216, column: 16, scope: !722)
!739 = !DILocation(line: 216, column: 14, scope: !722)
!740 = !DILocation(line: 217, column: 16, scope: !722)
!741 = !DILocation(line: 217, column: 14, scope: !722)
!742 = !DILocation(line: 218, column: 5, scope: !722)
!743 = !DILocation(line: 213, column: 33, scope: !744)
!744 = !DILexicalBlockFile(scope: !717, file: !1, discriminator: 2)
!745 = !DILocation(line: 213, column: 5, scope: !744)
!746 = distinct !{!746, !747}
!747 = !DILocation(line: 213, column: 5, scope: !686)
!748 = !DILocation(line: 219, column: 5, scope: !686)
!749 = !DILocation(line: 221, column: 1, scope: !644)
!750 = distinct !DISubprogram(name: "gsl_sf_bessel_k0_scaled", scope: !1, file: !1, line: 228, type: !751, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!751 = !DISubroutineType(types: !752)
!752 = !{!52, !51}
!753 = !DILocalVariable(name: "x", arg: 1, scope: !750, file: !1, line: 228, type: !51)
!754 = !DILocation(line: 228, column: 45, scope: !750)
!755 = !DILocalVariable(name: "result", scope: !750, file: !1, line: 230, type: !54)
!756 = !DILocation(line: 230, column: 3, scope: !750)
!757 = !DILocalVariable(name: "status", scope: !750, file: !1, line: 230, type: !50)
!758 = !DILocation(line: 230, column: 3, scope: !759)
!759 = distinct !DILexicalBlock(scope: !750, file: !1, line: 230, column: 3)
!760 = !DILocation(line: 230, column: 3, scope: !761)
!761 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 1)
!762 = distinct !DILexicalBlock(scope: !759, file: !1, line: 230, column: 3)
!763 = distinct !{!763, !764}
!764 = !DILocation(line: 230, column: 3, scope: !762)
!765 = !DILocation(line: 230, column: 3, scope: !766)
!766 = !DILexicalBlockFile(scope: !767, file: !1, discriminator: 2)
!767 = distinct !DILexicalBlock(scope: !762, file: !1, line: 230, column: 3)
!768 = !DILocation(line: 230, column: 3, scope: !769)
!769 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 3)
!770 = !DILocation(line: 230, column: 3, scope: !771)
!771 = !DILexicalBlockFile(scope: !750, file: !1, discriminator: 4)
!772 = !DILocation(line: 231, column: 1, scope: !750)
!773 = distinct !DISubprogram(name: "gsl_sf_bessel_k1_scaled", scope: !1, file: !1, line: 233, type: !751, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!774 = !DILocalVariable(name: "x", arg: 1, scope: !773, file: !1, line: 233, type: !51)
!775 = !DILocation(line: 233, column: 45, scope: !773)
!776 = !DILocalVariable(name: "result", scope: !773, file: !1, line: 235, type: !54)
!777 = !DILocation(line: 235, column: 3, scope: !773)
!778 = !DILocalVariable(name: "status", scope: !773, file: !1, line: 235, type: !50)
!779 = !DILocation(line: 235, column: 3, scope: !780)
!780 = distinct !DILexicalBlock(scope: !773, file: !1, line: 235, column: 3)
!781 = !DILocation(line: 235, column: 3, scope: !782)
!782 = !DILexicalBlockFile(scope: !783, file: !1, discriminator: 1)
!783 = distinct !DILexicalBlock(scope: !780, file: !1, line: 235, column: 3)
!784 = distinct !{!784, !785}
!785 = !DILocation(line: 235, column: 3, scope: !783)
!786 = !DILocation(line: 235, column: 3, scope: !787)
!787 = !DILexicalBlockFile(scope: !788, file: !1, discriminator: 2)
!788 = distinct !DILexicalBlock(scope: !783, file: !1, line: 235, column: 3)
!789 = !DILocation(line: 235, column: 3, scope: !790)
!790 = !DILexicalBlockFile(scope: !783, file: !1, discriminator: 3)
!791 = !DILocation(line: 235, column: 3, scope: !792)
!792 = !DILexicalBlockFile(scope: !773, file: !1, discriminator: 4)
!793 = !DILocation(line: 236, column: 1, scope: !773)
!794 = distinct !DISubprogram(name: "gsl_sf_bessel_k2_scaled", scope: !1, file: !1, line: 238, type: !751, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!795 = !DILocalVariable(name: "x", arg: 1, scope: !794, file: !1, line: 238, type: !51)
!796 = !DILocation(line: 238, column: 45, scope: !794)
!797 = !DILocalVariable(name: "result", scope: !794, file: !1, line: 240, type: !54)
!798 = !DILocation(line: 240, column: 3, scope: !794)
!799 = !DILocalVariable(name: "status", scope: !794, file: !1, line: 240, type: !50)
!800 = !DILocation(line: 240, column: 3, scope: !801)
!801 = distinct !DILexicalBlock(scope: !794, file: !1, line: 240, column: 3)
!802 = !DILocation(line: 240, column: 3, scope: !803)
!803 = !DILexicalBlockFile(scope: !804, file: !1, discriminator: 1)
!804 = distinct !DILexicalBlock(scope: !801, file: !1, line: 240, column: 3)
!805 = distinct !{!805, !806}
!806 = !DILocation(line: 240, column: 3, scope: !804)
!807 = !DILocation(line: 240, column: 3, scope: !808)
!808 = !DILexicalBlockFile(scope: !809, file: !1, discriminator: 2)
!809 = distinct !DILexicalBlock(scope: !804, file: !1, line: 240, column: 3)
!810 = !DILocation(line: 240, column: 3, scope: !811)
!811 = !DILexicalBlockFile(scope: !804, file: !1, discriminator: 3)
!812 = !DILocation(line: 240, column: 3, scope: !813)
!813 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 4)
!814 = !DILocation(line: 241, column: 1, scope: !794)
!815 = distinct !DISubprogram(name: "gsl_sf_bessel_kl_scaled", scope: !1, file: !1, line: 243, type: !816, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!816 = !DISubroutineType(types: !817)
!817 = !{!52, !534, !51}
!818 = !DILocalVariable(name: "l", arg: 1, scope: !815, file: !1, line: 243, type: !534)
!819 = !DILocation(line: 243, column: 42, scope: !815)
!820 = !DILocalVariable(name: "x", arg: 2, scope: !815, file: !1, line: 243, type: !51)
!821 = !DILocation(line: 243, column: 58, scope: !815)
!822 = !DILocalVariable(name: "result", scope: !815, file: !1, line: 245, type: !54)
!823 = !DILocation(line: 245, column: 3, scope: !815)
!824 = !DILocalVariable(name: "status", scope: !815, file: !1, line: 245, type: !50)
!825 = !DILocation(line: 245, column: 3, scope: !826)
!826 = distinct !DILexicalBlock(scope: !815, file: !1, line: 245, column: 3)
!827 = !DILocation(line: 245, column: 3, scope: !828)
!828 = !DILexicalBlockFile(scope: !829, file: !1, discriminator: 1)
!829 = distinct !DILexicalBlock(scope: !826, file: !1, line: 245, column: 3)
!830 = distinct !{!830, !831}
!831 = !DILocation(line: 245, column: 3, scope: !829)
!832 = !DILocation(line: 245, column: 3, scope: !833)
!833 = !DILexicalBlockFile(scope: !834, file: !1, discriminator: 2)
!834 = distinct !DILexicalBlock(scope: !829, file: !1, line: 245, column: 3)
!835 = !DILocation(line: 245, column: 3, scope: !836)
!836 = !DILexicalBlockFile(scope: !829, file: !1, discriminator: 3)
!837 = !DILocation(line: 245, column: 3, scope: !838)
!838 = !DILexicalBlockFile(scope: !815, file: !1, discriminator: 4)
!839 = !DILocation(line: 246, column: 1, scope: !815)
