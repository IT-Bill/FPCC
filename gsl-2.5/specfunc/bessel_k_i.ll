; ModuleID = 'bessel_k.ll'
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
@0 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_k0_scaled_e\00"
@1 = private unnamed_addr constant [12 x i8] c"bessel_k.ll\00"
@2 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_k1_scaled_e\00"
@3 = private unnamed_addr constant [12 x i8] c"bessel_k.ll\00"
@4 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_k2_scaled_e\00"
@5 = private unnamed_addr constant [12 x i8] c"bessel_k.ll\00"
@6 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_kl_scaled_e\00"
@7 = private unnamed_addr constant [12 x i8] c"bessel_k.ll\00"
@8 = private unnamed_addr constant [25 x i8] c"bessel_kl_scaled_small_x\00"
@9 = private unnamed_addr constant [12 x i8] c"bessel_k.ll\00"
@10 = private unnamed_addr constant [30 x i8] c"gsl_sf_bessel_kl_scaled_array\00"
@11 = private unnamed_addr constant [12 x i8] c"bessel_k.ll\00"
@12 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_k0_scaled\00"
@13 = private unnamed_addr constant [12 x i8] c"bessel_k.ll\00"
@14 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_k1_scaled\00"
@15 = private unnamed_addr constant [12 x i8] c"bessel_k.ll\00"
@16 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_k2_scaled\00"
@17 = private unnamed_addr constant [12 x i8] c"bessel_k.ll\00"
@18 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_kl_scaled\00"
@19 = private unnamed_addr constant [12 x i8] c"bessel_k.ll\00"

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
  %8 = call i1 @fCmpInstHandler(double %6, double 0.000000e+00, i1 %7, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94199567755584, i32 88, i32 8), !dbg !69
  br i1 %8, label %9, label %18, !dbg !69

; <label>:9:                                      ; preds = %2
  br label %10, !dbg !70, !llvm.loop !72

; <label>:10:                                     ; preds = %9
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !73
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !73
  store double 0x7FF8000000000000, double* %12, align 8, !dbg !73
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !73
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !73
  store double 0x7FF8000000000000, double* %14, align 8, !dbg !73
  br label %15, !dbg !73, !llvm.loop !76

; <label>:15:                                     ; preds = %10
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 89, i32 1), !dbg !78
  store i32 1, i32* %3, align 4, !dbg !78
  br label %41, !dbg !78
                                                  ; No predecessors!
  br label %17, !dbg !81

; <label>:17:                                     ; preds = %16
  br label %41, !dbg !83

; <label>:18:                                     ; preds = %2
  %19 = load double, double* %4, align 8, !dbg !84
  %20 = fmul double 2.000000e+00, %19, !dbg !86
  call void @fMulHandler(double 2.000000e+00, double %19, double %20, i64 0, i64 94199567769304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94199567769744, i32 92, i32 28), !dbg !87
  %21 = fdiv double 0x400921FB54442D18, %20, !dbg !87
  call void @fDivHandler(double 0x400921FB54442D18, double %20, double %21, i64 0, i64 94199567769744, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94199567770192, i32 92, i32 23), !dbg !88
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !88
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !89
  store double %21, double* %23, align 8, !dbg !90
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !91
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !92
  %26 = load double, double* %25, align 8, !dbg !92
  %27 = call double @fabs(double %26) #1, !dbg !93
  %28 = fmul double 0x3CC0000000000000, %27, !dbg !94
  call void @fMulHandler(double 0x3CC0000000000000, double %27, double %28, i64 0, i64 94199567756720, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94199567775152, i32 93, i32 41), !dbg !95
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !96
  store double %28, double* %30, align 8, !dbg !97
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !98
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !98
  %33 = load double, double* %32, align 8, !dbg !98
  %34 = call double @fabs(double %33) #1, !dbg !98
  %35 = fcmp olt double %34, 0x10000000000000, !dbg !98
  %36 = call i1 @fCmpInstHandler(double %34, double 0x10000000000000, i1 %35, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94199567779888, i32 94, i32 5), !dbg !100
  br i1 %36, label %37, label %40, !dbg !100

; <label>:37:                                     ; preds = %18
  br label %38, !dbg !101, !llvm.loop !103

; <label>:38:                                     ; preds = %37
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 94, i32 15), !dbg !104
  store i32 15, i32* %3, align 4, !dbg !104
  br label %41, !dbg !104
                                                  ; No predecessors!
  br label %40, !dbg !107

; <label>:40:                                     ; preds = %39, %18
  store i32 0, i32* %3, align 4, !dbg !109
  br label %41, !dbg !109

; <label>:41:                                     ; preds = %40, %38, %17, %15
  %42 = load i32, i32* %3, align 4, !dbg !110
  ret i32 %42, !dbg !110
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
  %8 = call i1 @fCmpInstHandler(double %6, double 0.000000e+00, i1 %7, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94199567793792, i32 104, i32 8), !dbg !119
  br i1 %8, label %9, label %18, !dbg !119

; <label>:9:                                      ; preds = %2
  br label %10, !dbg !120, !llvm.loop !122

; <label>:10:                                     ; preds = %9
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !123
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !123
  store double 0x7FF8000000000000, double* %12, align 8, !dbg !123
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !123
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !123
  store double 0x7FF8000000000000, double* %14, align 8, !dbg !123
  br label %15, !dbg !123, !llvm.loop !126

; <label>:15:                                     ; preds = %10
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 105, i32 1), !dbg !128
  store i32 1, i32* %3, align 4, !dbg !128
  br label %59, !dbg !128
                                                  ; No predecessors!
  br label %17, !dbg !131

; <label>:17:                                     ; preds = %16
  br label %59, !dbg !133

; <label>:18:                                     ; preds = %2
  %19 = load double, double* %4, align 8, !dbg !134
  %20 = fcmp olt double %19, 0x1FFF5DE25335C4EE, !dbg !136
  %21 = call i1 @fCmpInstHandler(double %19, double 0x1FFF5DE25335C4EE, i1 %20, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94199567802432, i32 107, i32 13), !dbg !137
  br i1 %21, label %22, label %31, !dbg !137

; <label>:22:                                     ; preds = %18
  br label %23, !dbg !138, !llvm.loop !140

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !141
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !141
  store double 0x7FF0000000000000, double* %25, align 8, !dbg !141
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !141
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !141
  store double 0x7FF0000000000000, double* %27, align 8, !dbg !141
  br label %28, !dbg !141, !llvm.loop !144

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 108, i32 16), !dbg !146
  store i32 16, i32* %3, align 4, !dbg !146
  br label %59, !dbg !146
                                                  ; No predecessors!
  br label %30, !dbg !149

; <label>:30:                                     ; preds = %29
  br label %58, !dbg !151

; <label>:31:                                     ; preds = %18
  %32 = load double, double* %4, align 8, !dbg !152
  %33 = fmul double 2.000000e+00, %32, !dbg !154
  call void @fMulHandler(double 2.000000e+00, double %32, double %33, i64 0, i64 94199567810904, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94199567811280, i32 111, i32 28), !dbg !155
  %34 = fdiv double 0x400921FB54442D18, %33, !dbg !155
  call void @fDivHandler(double 0x400921FB54442D18, double %33, double %34, i64 0, i64 94199567811280, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94199567811664, i32 111, i32 23), !dbg !156
  %35 = load double, double* %4, align 8, !dbg !156
  %36 = fdiv double 1.000000e+00, %35, !dbg !157
  call void @fDivHandler(double 1.000000e+00, double %35, double %36, i64 0, i64 94199567812056, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94199567812560, i32 111, i32 44), !dbg !158
  %37 = fadd double 1.000000e+00, %36, !dbg !158
  call void @fAddHandler(double 1.000000e+00, double %36, double %37, i64 0, i64 94199567812560, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94199567812976, i32 111, i32 39), !dbg !159
  %38 = fmul double %34, %37, !dbg !159
  call void @fMulHandler(double %34, double %37, double %38, i64 94199567811664, i64 94199567812976, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94199567813360, i32 111, i32 32), !dbg !160
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !160
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !161
  store double %38, double* %40, align 8, !dbg !162
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !163
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !164
  %43 = load double, double* %42, align 8, !dbg !164
  %44 = call double @fabs(double %43) #1, !dbg !165
  %45 = fmul double 0x3CC0000000000000, %44, !dbg !166
  call void @fMulHandler(double 0x3CC0000000000000, double %44, double %45, i64 0, i64 94199567817568, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94199567818048, i32 112, i32 41), !dbg !167
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !167
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !168
  store double %45, double* %47, align 8, !dbg !169
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !170
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !170
  %50 = load double, double* %49, align 8, !dbg !170
  %51 = call double @fabs(double %50) #1, !dbg !170
  %52 = fcmp olt double %51, 0x10000000000000, !dbg !170
  %53 = call i1 @fCmpInstHandler(double %51, double 0x10000000000000, i1 %52, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94199567822192, i32 113, i32 5), !dbg !172
  br i1 %53, label %54, label %57, !dbg !172

; <label>:54:                                     ; preds = %31
  br label %55, !dbg !173, !llvm.loop !175

; <label>:55:                                     ; preds = %54
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 113, i32 15), !dbg !176
  store i32 15, i32* %3, align 4, !dbg !176
  br label %59, !dbg !176
                                                  ; No predecessors!
  br label %57, !dbg !179

; <label>:57:                                     ; preds = %56, %31
  store i32 0, i32* %3, align 4, !dbg !181
  br label %59, !dbg !181

; <label>:58:                                     ; preds = %30
  br label %59

; <label>:59:                                     ; preds = %58, %57, %55, %28, %17, %15
  %60 = load i32, i32* %3, align 4, !dbg !182
  ret i32 %60, !dbg !182
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
  %8 = call i1 @fCmpInstHandler(double %6, double 0.000000e+00, i1 %7, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567834704, i32 123, i32 8), !dbg !191
  br i1 %8, label %9, label %18, !dbg !191

; <label>:9:                                      ; preds = %2
  br label %10, !dbg !192, !llvm.loop !194

; <label>:10:                                     ; preds = %9
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !195
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !195
  store double 0x7FF8000000000000, double* %12, align 8, !dbg !195
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !195
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !195
  store double 0x7FF8000000000000, double* %14, align 8, !dbg !195
  br label %15, !dbg !195, !llvm.loop !198

; <label>:15:                                     ; preds = %10
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 124, i32 1), !dbg !200
  store i32 1, i32* %3, align 4, !dbg !200
  br label %63, !dbg !200
                                                  ; No predecessors!
  br label %17, !dbg !203

; <label>:17:                                     ; preds = %16
  br label %63, !dbg !205

; <label>:18:                                     ; preds = %2
  %19 = load double, double* %4, align 8, !dbg !206
  %20 = fcmp olt double %19, 0x2AA965FEA53D6E98, !dbg !208
  %21 = call i1 @fCmpInstHandler(double %19, double 0x2AA965FEA53D6E98, i1 %20, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567843536, i32 126, i32 13), !dbg !209
  br i1 %21, label %22, label %31, !dbg !209

; <label>:22:                                     ; preds = %18
  br label %23, !dbg !210, !llvm.loop !212

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !213
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !213
  store double 0x7FF0000000000000, double* %25, align 8, !dbg !213
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !213
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !213
  store double 0x7FF0000000000000, double* %27, align 8, !dbg !213
  br label %28, !dbg !213, !llvm.loop !216

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 127, i32 16), !dbg !218
  store i32 16, i32* %3, align 4, !dbg !218
  br label %63, !dbg !218
                                                  ; No predecessors!
  br label %30, !dbg !221

; <label>:30:                                     ; preds = %29
  br label %62, !dbg !223

; <label>:31:                                     ; preds = %18
  %32 = load double, double* %4, align 8, !dbg !224
  %33 = fmul double 2.000000e+00, %32, !dbg !226
  call void @fMulHandler(double 2.000000e+00, double %32, double %33, i64 0, i64 94199567851752, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567852128, i32 130, i32 28), !dbg !227
  %34 = fdiv double 0x400921FB54442D18, %33, !dbg !227
  call void @fDivHandler(double 0x400921FB54442D18, double %33, double %34, i64 0, i64 94199567852128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567852512, i32 130, i32 23), !dbg !228
  %35 = load double, double* %4, align 8, !dbg !228
  %36 = fdiv double 3.000000e+00, %35, !dbg !229
  call void @fDivHandler(double 3.000000e+00, double %35, double %36, i64 0, i64 94199567852904, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567853408, i32 130, i32 44), !dbg !230
  %37 = load double, double* %4, align 8, !dbg !230
  %38 = fdiv double 1.000000e+00, %37, !dbg !231
  call void @fDivHandler(double 1.000000e+00, double %37, double %38, i64 0, i64 94199567853768, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567854208, i32 130, i32 59), !dbg !232
  %39 = fadd double 1.000000e+00, %38, !dbg !232
  call void @fAddHandler(double 1.000000e+00, double %38, double %39, i64 0, i64 94199567854208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567854624, i32 130, i32 54), !dbg !233
  %40 = fmul double %36, %39, !dbg !233
  call void @fMulHandler(double %36, double %39, double %40, i64 94199567853408, i64 94199567854624, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567855008, i32 130, i32 47), !dbg !234
  %41 = fadd double 1.000000e+00, %40, !dbg !234
  call void @fAddHandler(double 1.000000e+00, double %40, double %41, i64 0, i64 94199567855008, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567855456, i32 130, i32 39), !dbg !235
  %42 = fmul double %34, %41, !dbg !235
  call void @fMulHandler(double %34, double %41, double %42, i64 94199567852512, i64 94199567855456, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567855840, i32 130, i32 32), !dbg !236
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !236
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !237
  store double %42, double* %44, align 8, !dbg !238
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !239
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !240
  %47 = load double, double* %46, align 8, !dbg !240
  %48 = call double @fabs(double %47) #1, !dbg !241
  %49 = fmul double 0x3CC0000000000000, %48, !dbg !242
  call void @fMulHandler(double 0x3CC0000000000000, double %48, double %49, i64 0, i64 94199567860048, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567860528, i32 131, i32 41), !dbg !243
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !243
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !244
  store double %49, double* %51, align 8, !dbg !245
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !246
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !246
  %54 = load double, double* %53, align 8, !dbg !246
  %55 = call double @fabs(double %54) #1, !dbg !246
  %56 = fcmp olt double %55, 0x10000000000000, !dbg !246
  %57 = call i1 @fCmpInstHandler(double %55, double 0x10000000000000, i1 %56, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94199567864672, i32 132, i32 5), !dbg !248
  br i1 %57, label %58, label %61, !dbg !248

; <label>:58:                                     ; preds = %31
  br label %59, !dbg !249, !llvm.loop !251

; <label>:59:                                     ; preds = %58
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 132, i32 15), !dbg !252
  store i32 15, i32* %3, align 4, !dbg !252
  br label %63, !dbg !252
                                                  ; No predecessors!
  br label %61, !dbg !255

; <label>:61:                                     ; preds = %60, %31
  store i32 0, i32* %3, align 4, !dbg !257
  br label %63, !dbg !257

; <label>:62:                                     ; preds = %30
  br label %63

; <label>:63:                                     ; preds = %62, %61, %59, %28, %17, %15
  %64 = load i32, i32* %3, align 4, !dbg !258
  ret i32 %64, !dbg !258
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
  %22 = sext i32 %20 to i64, !dbg !271
  %23 = call i1 @iCmpInstHandler(i64 %22, i64 0, i1 %21, i32 40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567879840, i32 140, i32 8), !dbg !271
  br i1 %23, label %28, label %24, !dbg !271

; <label>:24:                                     ; preds = %3
  %25 = load double, double* %6, align 8, !dbg !272
  %26 = fcmp ole double %25, 0.000000e+00, !dbg !274
  %27 = call i1 @fCmpInstHandler(double %25, double 0.000000e+00, i1 %26, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567881296, i32 140, i32 17), !dbg !275
  br i1 %27, label %28, label %37, !dbg !275

; <label>:28:                                     ; preds = %24, %3
  br label %29, !dbg !276, !llvm.loop !278

; <label>:29:                                     ; preds = %28
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !279
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !279
  store double 0x7FF8000000000000, double* %31, align 8, !dbg !279
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !279
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !279
  store double 0x7FF8000000000000, double* %33, align 8, !dbg !279
  br label %34, !dbg !279, !llvm.loop !282

; <label>:34:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 141, i32 1), !dbg !284
  store i32 1, i32* %4, align 4, !dbg !284
  br label %249, !dbg !284
                                                  ; No predecessors!
  br label %36, !dbg !287

; <label>:36:                                     ; preds = %35
  br label %249, !dbg !289

; <label>:37:                                     ; preds = %24
  %38 = load i32, i32* %5, align 4, !dbg !290
  %39 = icmp eq i32 %38, 0, !dbg !292
  %40 = sext i32 %38 to i64, !dbg !293
  %41 = call i1 @iCmpInstHandler(i64 %40, i64 0, i1 %39, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567889856, i32 143, i32 13), !dbg !293
  br i1 %41, label %42, label %46, !dbg !293

; <label>:42:                                     ; preds = %37
  %43 = load double, double* %6, align 8, !dbg !294
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !296
  %45 = call i32 @gsl_sf_bessel_k0_scaled_e(double %43, %struct.gsl_sf_result_struct* %44), !dbg !297
  store i32 %45, i32* %4, align 4, !dbg !298
  br label %249, !dbg !298

; <label>:46:                                     ; preds = %37
  %47 = load i32, i32* %5, align 4, !dbg !299
  %48 = icmp eq i32 %47, 1, !dbg !301
  %49 = sext i32 %47 to i64, !dbg !302
  %50 = call i1 @iCmpInstHandler(i64 %49, i64 1, i1 %48, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567894608, i32 146, i32 13), !dbg !302
  br i1 %50, label %51, label %55, !dbg !302

; <label>:51:                                     ; preds = %46
  %52 = load double, double* %6, align 8, !dbg !303
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !305
  %54 = call i32 @gsl_sf_bessel_k1_scaled_e(double %52, %struct.gsl_sf_result_struct* %53), !dbg !306
  store i32 %54, i32* %4, align 4, !dbg !307
  br label %249, !dbg !307

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %5, align 4, !dbg !308
  %57 = icmp eq i32 %56, 2, !dbg !310
  %58 = sext i32 %56 to i64, !dbg !311
  %59 = call i1 @iCmpInstHandler(i64 %58, i64 2, i1 %57, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567899424, i32 149, i32 13), !dbg !311
  br i1 %59, label %60, label %64, !dbg !311

; <label>:60:                                     ; preds = %55
  %61 = load double, double* %6, align 8, !dbg !312
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !314
  %63 = call i32 @gsl_sf_bessel_k2_scaled_e(double %61, %struct.gsl_sf_result_struct* %62), !dbg !315
  store i32 %63, i32* %4, align 4, !dbg !316
  br label %249, !dbg !316

; <label>:64:                                     ; preds = %55
  %65 = load double, double* %6, align 8, !dbg !317
  %66 = fcmp olt double %65, 3.000000e+00, !dbg !319
  %67 = call i1 @fCmpInstHandler(double %65, double 3.000000e+00, i1 %66, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567904208, i32 152, i32 13), !dbg !320
  br i1 %67, label %68, label %73, !dbg !320

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %5, align 4, !dbg !321
  %70 = load double, double* %6, align 8, !dbg !323
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !324
  %72 = call i32 @bessel_kl_scaled_small_x(i32 %69, double %70, %struct.gsl_sf_result_struct* %71), !dbg !325
  store i32 %72, i32* %4, align 4, !dbg !326
  br label %249, !dbg !326

; <label>:73:                                     ; preds = %64
  %74 = load double, double* %6, align 8, !dbg !327
  %75 = fmul double 0x3ED965FEA53D6E41, %74, !dbg !329
  call void @fMulHandler(double 0x3ED965FEA53D6E41, double %74, double %75, i64 0, i64 94199567909384, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567910832, i32 155, i32 33), !dbg !330
  %76 = load i32, i32* %5, align 4, !dbg !330
  %77 = load i32, i32* %5, align 4, !dbg !331
  %78 = mul nsw i32 %76, %77, !dbg !332
  %79 = load i32, i32* %5, align 4, !dbg !333
  %80 = add nsw i32 %78, %79, !dbg !334
  %81 = add nsw i32 %80, 1, !dbg !335
  %82 = sitofp i32 %81 to double, !dbg !336
  %83 = fcmp ogt double %75, %82, !dbg !337
  %84 = call i1 @fCmpInstHandler(double %75, double %82, i1 %83, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567914032, i32 155, i32 37), !dbg !338
  br i1 %84, label %85, label %106, !dbg !338

; <label>:85:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata i32* %8, metadata !339, metadata !62), !dbg !341
  %86 = load i32, i32* %5, align 4, !dbg !342
  %87 = sitofp i32 %86 to double, !dbg !342
  %88 = fadd double %87, 5.000000e-01, !dbg !343
  call void @fAddHandler(double %87, double 5.000000e-01, double %88, i64 94199567916600, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567918368, i32 156, i32 54), !dbg !344
  %89 = load double, double* %6, align 8, !dbg !344
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !345
  %91 = call i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double %88, double %89, %struct.gsl_sf_result_struct* %90), !dbg !346
  store i32 %91, i32* %8, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata double* %9, metadata !347, metadata !62), !dbg !348
  %92 = load double, double* %6, align 8, !dbg !349
  %93 = fdiv double 0x3FF921FB54442D18, %92, !dbg !350
  call void @fDivHandler(double 0x3FF921FB54442D18, double %92, double %93, i64 0, i64 94199567923288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567923728, i32 157, i32 33), !dbg !351
  %94 = call double @sqrt(double %93) #5, !dbg !351
  call void @callOneArgHandler(i32 14, double %93, double %94, i64 94199567923728, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567924480, i32 157, i32 18), !dbg !348
  store double %94, double* %9, align 8, !dbg !348
  %95 = load double, double* %9, align 8, !dbg !352
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !353
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !354
  %98 = load double, double* %97, align 8, !dbg !355
  %99 = fmul double %98, %95, !dbg !355
  call void @fMulHandler(double %98, double %95, double %99, i64 94199567927864, i64 94199567926648, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567928272, i32 158, i32 17), !dbg !355
  store double %99, double* %97, align 8, !dbg !355
  %100 = load double, double* %9, align 8, !dbg !356
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !357
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !358
  %103 = load double, double* %102, align 8, !dbg !359
  %104 = fmul double %103, %100, !dbg !359
  call void @fMulHandler(double %103, double %100, double %104, i64 94199567931272, i64 94199567930056, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567931680, i32 159, i32 17), !dbg !359
  store double %104, double* %102, align 8, !dbg !359
  %105 = load i32, i32* %8, align 4, !dbg !360
  store i32 %105, i32* %4, align 4, !dbg !361
  br label %249, !dbg !361

; <label>:106:                                    ; preds = %73
  %107 = load i32, i32* %5, align 4, !dbg !362
  %108 = load i32, i32* %5, align 4, !dbg !362
  %109 = mul nsw i32 %107, %108, !dbg !362
  %110 = sitofp i32 %109 to double, !dbg !362
  %111 = fadd double %110, 1.000000e+00, !dbg !362
  call void @fAddHandler(double %110, double 1.000000e+00, double %111, i64 94199567938008, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567938160, i32 162, i32 11), !dbg !362
  %112 = fdiv double 2.900000e-01, %111, !dbg !362
  call void @fDivHandler(double 2.900000e-01, double %111, double %112, i64 0, i64 94199567938160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567938352, i32 162, i32 11), !dbg !362
  %113 = load i32, i32* %5, align 4, !dbg !362
  %114 = load i32, i32* %5, align 4, !dbg !362
  %115 = mul nsw i32 %113, %114, !dbg !362
  %116 = sitofp i32 %115 to double, !dbg !362
  %117 = fadd double %116, 1.000000e+00, !dbg !362
  call void @fAddHandler(double %116, double 1.000000e+00, double %117, i64 94199567938776, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567938896, i32 162, i32 11), !dbg !362
  %118 = load double, double* %6, align 8, !dbg !362
  %119 = load double, double* %6, align 8, !dbg !362
  %120 = fmul double %118, %119, !dbg !362
  call void @fMulHandler(double %118, double %119, double %120, i64 94199567939000, i64 94199567939096, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567939216, i32 162, i32 11), !dbg !362
  %121 = fadd double %117, %120, !dbg !362
  call void @fAddHandler(double %117, double %120, double %121, i64 94199567938896, i64 94199567939216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567939344, i32 162, i32 11), !dbg !362
  %122 = fdiv double 5.000000e-01, %121, !dbg !362
  call void @fDivHandler(double 5.000000e-01, double %121, double %122, i64 0, i64 94199567939344, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567939472, i32 162, i32 11), !dbg !362
  %123 = fcmp olt double %112, %122, !dbg !362
  %124 = call i1 @fCmpInstHandler(double %112, double %122, i1 %123, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567939600, i32 162, i32 11), !dbg !362
  br i1 %124, label %125, label %132, !dbg !362

; <label>:125:                                    ; preds = %106
  %126 = load i32, i32* %5, align 4, !dbg !364
  %127 = load i32, i32* %5, align 4, !dbg !364
  %128 = mul nsw i32 %126, %127, !dbg !364
  %129 = sitofp i32 %128 to double, !dbg !364
  %130 = fadd double %129, 1.000000e+00, !dbg !364
  call void @fAddHandler(double %129, double 1.000000e+00, double %130, i64 94199567942200, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567942352, i32 162, i32 11), !dbg !364
  %131 = fdiv double 2.900000e-01, %130, !dbg !364
  call void @fDivHandler(double 2.900000e-01, double %130, double %131, i64 0, i64 94199567942352, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567942480, i32 162, i32 11), !dbg !364
  br label %143, !dbg !364

; <label>:132:                                    ; preds = %106
  %133 = load i32, i32* %5, align 4, !dbg !366
  %134 = load i32, i32* %5, align 4, !dbg !366
  %135 = mul nsw i32 %133, %134, !dbg !366
  %136 = sitofp i32 %135 to double, !dbg !366
  %137 = fadd double %136, 1.000000e+00, !dbg !366
  call void @fAddHandler(double %136, double 1.000000e+00, double %137, i64 94199567944888, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567945040, i32 162, i32 11), !dbg !366
  %138 = load double, double* %6, align 8, !dbg !366
  %139 = load double, double* %6, align 8, !dbg !366
  %140 = fmul double %138, %139, !dbg !366
  call void @fMulHandler(double %138, double %139, double %140, i64 94199567945144, i64 94199567945240, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567945360, i32 162, i32 11), !dbg !366
  %141 = fadd double %137, %140, !dbg !366
  call void @fAddHandler(double %137, double %140, double %141, i64 94199567945040, i64 94199567945360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567947552, i32 162, i32 11), !dbg !366
  %142 = fdiv double 5.000000e-01, %141, !dbg !366
  call void @fDivHandler(double 5.000000e-01, double %141, double %142, i64 0, i64 94199567947552, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567947680, i32 162, i32 11), !dbg !366
  br label %143, !dbg !366

; <label>:143:                                    ; preds = %132, %125
  %144 = phi double [ %131, %125 ], [ %142, %132 ], !dbg !368
  %145 = fcmp olt double %144, 0x3ED965FEA53D6E41, !dbg !370
  %146 = call i1 @fCmpInstHandler(double %144, double 0x3ED965FEA53D6E41, i1 %145, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567948272, i32 162, i32 54), !dbg !368
  br i1 %146, label %147, label %168, !dbg !368

; <label>:147:                                    ; preds = %143
  call void @llvm.dbg.declare(metadata i32* %10, metadata !371, metadata !62), !dbg !373
  %148 = load i32, i32* %5, align 4, !dbg !374
  %149 = sitofp i32 %148 to double, !dbg !374
  %150 = fadd double %149, 5.000000e-01, !dbg !375
  call void @fAddHandler(double %149, double 5.000000e-01, double %150, i64 94199567952104, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567953808, i32 163, i32 58), !dbg !376
  %151 = load double, double* %6, align 8, !dbg !376
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !377
  %153 = call i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double %150, double %151, %struct.gsl_sf_result_struct* %152), !dbg !378
  store i32 %153, i32* %10, align 4, !dbg !373
  call void @llvm.dbg.declare(metadata double* %11, metadata !379, metadata !62), !dbg !380
  %154 = load double, double* %6, align 8, !dbg !381
  %155 = fdiv double 0x3FF921FB54442D18, %154, !dbg !382
  call void @fDivHandler(double 0x3FF921FB54442D18, double %154, double %155, i64 0, i64 94199567958728, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567959104, i32 164, i32 33), !dbg !383
  %156 = call double @sqrt(double %155) #5, !dbg !383
  call void @callOneArgHandler(i32 14, double %155, double %156, i64 94199567959104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567959584, i32 164, i32 18), !dbg !380
  store double %156, double* %11, align 8, !dbg !380
  %157 = load double, double* %11, align 8, !dbg !384
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !385
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 0, !dbg !386
  %160 = load double, double* %159, align 8, !dbg !387
  %161 = fmul double %160, %157, !dbg !387
  call void @fMulHandler(double %160, double %157, double %161, i64 94199567962936, i64 94199567961720, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567963344, i32 165, i32 17), !dbg !387
  store double %161, double* %159, align 8, !dbg !387
  %162 = load double, double* %11, align 8, !dbg !388
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !389
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 1, !dbg !390
  %165 = load double, double* %164, align 8, !dbg !391
  %166 = fmul double %165, %162, !dbg !391
  call void @fMulHandler(double %165, double %162, double %166, i64 94199567966344, i64 94199567965128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567966752, i32 166, i32 17), !dbg !391
  store double %166, double* %164, align 8, !dbg !391
  %167 = load i32, i32* %10, align 4, !dbg !392
  store i32 %167, i32* %4, align 4, !dbg !393
  br label %249, !dbg !393

; <label>:168:                                    ; preds = %143
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !394, metadata !62), !dbg !396
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !397, metadata !62), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %14, metadata !399, metadata !62), !dbg !400
  %169 = load double, double* %6, align 8, !dbg !401
  %170 = call i32 @gsl_sf_bessel_k1_scaled_e(double %169, %struct.gsl_sf_result_struct* %12), !dbg !402
  store i32 %170, i32* %14, align 4, !dbg !400
  call void @llvm.dbg.declare(metadata i32* %15, metadata !403, metadata !62), !dbg !404
  %171 = load double, double* %6, align 8, !dbg !405
  %172 = call i32 @gsl_sf_bessel_k0_scaled_e(double %171, %struct.gsl_sf_result_struct* %13), !dbg !406
  store i32 %172, i32* %15, align 4, !dbg !404
  call void @llvm.dbg.declare(metadata double* %16, metadata !407, metadata !62), !dbg !408
  call void @llvm.dbg.declare(metadata double* %17, metadata !409, metadata !62), !dbg !410
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !411
  %174 = load double, double* %173, align 8, !dbg !411
  store double %174, double* %17, align 8, !dbg !410
  call void @llvm.dbg.declare(metadata double* %18, metadata !412, metadata !62), !dbg !413
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !414
  %176 = load double, double* %175, align 8, !dbg !414
  store double %176, double* %18, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata i32* %19, metadata !415, metadata !62), !dbg !416
  store i32 1, i32* %19, align 4, !dbg !417
  br label %177, !dbg !419

; <label>:177:                                    ; preds = %197, %168
  %178 = load i32, i32* %19, align 4, !dbg !420
  %179 = load i32, i32* %5, align 4, !dbg !423
  %180 = icmp slt i32 %178, %179, !dbg !424
  %181 = sext i32 %178 to i64, !dbg !425
  %182 = sext i32 %179 to i64, !dbg !425
  %183 = call i1 @iCmpInstHandler(i64 %181, i64 %182, i1 %180, i32 40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567994032, i32 179, i32 15), !dbg !425
  br i1 %183, label %184, label %200, !dbg !425

; <label>:184:                                    ; preds = %177
  %185 = load i32, i32* %19, align 4, !dbg !426
  %186 = mul nsw i32 2, %185, !dbg !428
  %187 = add nsw i32 %186, 1, !dbg !429
  %188 = sitofp i32 %187 to double, !dbg !430
  %189 = load double, double* %6, align 8, !dbg !431
  %190 = fdiv double %188, %189, !dbg !432
  call void @fDivHandler(double %188, double %189, double %190, i64 94199567996296, i64 94199567996680, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567997088, i32 180, i32 20), !dbg !433
  %191 = load double, double* %17, align 8, !dbg !433
  %192 = fmul double %190, %191, !dbg !434
  call void @fMulHandler(double %190, double %191, double %192, i64 94199567997088, i64 94199567997480, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567997888, i32 180, i32 22), !dbg !435
  %193 = load double, double* %18, align 8, !dbg !435
  %194 = fadd double %192, %193, !dbg !436
  call void @fAddHandler(double %192, double %193, double %194, i64 94199567997888, i64 94199567998280, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199567998688, i32 180, i32 26), !dbg !437
  store double %194, double* %16, align 8, !dbg !437
  %195 = load double, double* %17, align 8, !dbg !438
  store double %195, double* %18, align 8, !dbg !439
  %196 = load double, double* %16, align 8, !dbg !440
  store double %196, double* %17, align 8, !dbg !441
  br label %197, !dbg !442

; <label>:197:                                    ; preds = %184
  %198 = load i32, i32* %19, align 4, !dbg !443
  %199 = add nsw i32 %198, 1, !dbg !443
  store i32 %199, i32* %19, align 4, !dbg !443
  br label %177, !dbg !445, !llvm.loop !446

; <label>:200:                                    ; preds = %177
  %201 = load double, double* %17, align 8, !dbg !448
  %202 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !449
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %202, i32 0, i32 0, !dbg !450
  store double %201, double* %203, align 8, !dbg !451
  %204 = load double, double* %17, align 8, !dbg !452
  %205 = call double @fabs(double %204) #1, !dbg !453
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !454
  %207 = load double, double* %206, align 8, !dbg !454
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !455
  %209 = load double, double* %208, align 8, !dbg !455
  %210 = fdiv double %207, %209, !dbg !456
  call void @fDivHandler(double %207, double %209, double %210, i64 94199568007368, i64 94199568009464, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199568011136, i32 185, i32 45), !dbg !457
  %211 = call double @fabs(double %210) #1, !dbg !457
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !459
  %213 = load double, double* %212, align 8, !dbg !459
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !460
  %215 = load double, double* %214, align 8, !dbg !460
  %216 = fdiv double %213, %215, !dbg !461
  call void @fDivHandler(double %213, double %215, double %216, i64 94199568012520, i64 94199568014616, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199568016288, i32 185, i32 72), !dbg !462
  %217 = call double @fabs(double %216) #1, !dbg !462
  %218 = fadd double %211, %217, !dbg !464
  call void @fAddHandler(double %211, double %217, double %218, i64 94199568011616, i64 94199568016768, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199568017248, i32 185, i32 56), !dbg !465
  %219 = fmul double %205, %218, !dbg !465
  call void @fMulHandler(double %205, double %218, double %219, i64 94199568006464, i64 94199568017248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199568017664, i32 185, i32 29), !dbg !466
  %220 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !466
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %220, i32 0, i32 1, !dbg !467
  store double %219, double* %221, align 8, !dbg !468
  %222 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !469
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %222, i32 0, i32 0, !dbg !470
  %224 = load double, double* %223, align 8, !dbg !470
  %225 = call double @fabs(double %224) #1, !dbg !471
  %226 = fmul double 0x3CC0000000000000, %225, !dbg !472
  call void @fMulHandler(double 0x3CC0000000000000, double %225, double %226, i64 0, i64 94199568021872, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199568022352, i32 186, i32 42), !dbg !473
  %227 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !473
  %228 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %227, i32 0, i32 1, !dbg !474
  %229 = load double, double* %228, align 8, !dbg !475
  %230 = fadd double %229, %226, !dbg !475
  call void @fAddHandler(double %229, double %226, double %230, i64 94199568023576, i64 94199568022352, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199568023984, i32 186, i32 17), !dbg !475
  store double %230, double* %228, align 8, !dbg !475
  %231 = load i32, i32* %14, align 4, !dbg !476
  %232 = icmp ne i32 %231, 0, !dbg !476
  %233 = sext i32 %231 to i64, !dbg !476
  %234 = call i1 @iCmpInstHandler(i64 %233, i64 0, i1 %232, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199568026176, i32 188, i32 12), !dbg !476
  br i1 %234, label %235, label %237, !dbg !476

; <label>:235:                                    ; preds = %200
  %236 = load i32, i32* %14, align 4, !dbg !477
  br label %247, !dbg !477

; <label>:237:                                    ; preds = %200
  %238 = load i32, i32* %15, align 4, !dbg !478
  %239 = icmp ne i32 %238, 0, !dbg !478
  %240 = sext i32 %238 to i64, !dbg !478
  %241 = call i1 @iCmpInstHandler(i64 %240, i64 0, i1 %239, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94199568030720, i32 188, i32 12), !dbg !478
  br i1 %241, label %242, label %244, !dbg !478

; <label>:242:                                    ; preds = %237
  %243 = load i32, i32* %15, align 4, !dbg !479
  br label %245, !dbg !479

; <label>:244:                                    ; preds = %237
  br label %245, !dbg !481

; <label>:245:                                    ; preds = %244, %242
  %246 = phi i32 [ %243, %242 ], [ 0, %244 ], !dbg !483
  br label %247, !dbg !483

; <label>:247:                                    ; preds = %245, %235
  %248 = phi i32 [ %236, %235 ], [ %246, %245 ], !dbg !485
  store i32 %248, i32* %4, align 4, !dbg !487
  br label %249, !dbg !487

; <label>:249:                                    ; preds = %247, %147, %85, %68, %60, %51, %42, %36, %34
  %250 = load i32, i32* %4, align 4, !dbg !488
  ret i32 %250, !dbg !488
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
  %33 = sext i32 %31 to i64, !dbg !513
  %34 = call i1 @iCmpInstHandler(i64 %33, i64 0, i1 %32, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568059232, i32 47, i32 14), !dbg !513
  br i1 %34, label %39, label %35, !dbg !513

; <label>:35:                                     ; preds = %3
  %36 = load double, double* %9, align 8, !dbg !514
  %37 = fcmp oeq double %36, 0.000000e+00, !dbg !516
  %38 = call i1 @fCmpInstHandler(double %36, double 0.000000e+00, i1 %37, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568060688, i32 47, i32 36), !dbg !517
  br i1 %38, label %39, label %48, !dbg !517

; <label>:39:                                     ; preds = %35, %3
  br label %40, !dbg !518, !llvm.loop !520

; <label>:40:                                     ; preds = %39
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !521
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !521
  store double 0x7FF0000000000000, double* %42, align 8, !dbg !521
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !521
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !521
  store double 0x7FF0000000000000, double* %44, align 8, !dbg !521
  br label %45, !dbg !521, !llvm.loop !524

; <label>:45:                                     ; preds = %40
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 48, i32 16), !dbg !526
  store i32 16, i32* %4, align 4, !dbg !526
  br label %135, !dbg !526
                                                  ; No predecessors!
  br label %47, !dbg !529

; <label>:47:                                     ; preds = %46
  br label %135, !dbg !531

; <label>:48:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata i32* %11, metadata !532, metadata !62), !dbg !535
  store i32 50, i32* %11, align 4, !dbg !535
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !536, metadata !62), !dbg !537
  call void @llvm.dbg.declare(metadata double* %13, metadata !538, metadata !62), !dbg !539
  call void @llvm.dbg.declare(metadata double* %14, metadata !540, metadata !62), !dbg !541
  %49 = load i32, i32* %5, align 4, !dbg !542
  %50 = and i32 %49, 1, !dbg !542
  %51 = icmp ne i32 %50, 0, !dbg !542
  %52 = sext i32 %50 to i64, !dbg !542
  %53 = call i1 @iCmpInstHandler(i64 %52, i64 0, i1 %51, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568077072, i32 54, i32 19), !dbg !542
  %54 = select i1 %53, double -1.000000e+00, double 1.000000e+00, !dbg !542
  store double %54, double* %14, align 8, !dbg !541
  call void @llvm.dbg.declare(metadata double* %15, metadata !543, metadata !62), !dbg !544
  %55 = load double, double* %6, align 8, !dbg !545
  %56 = call double @exp(double %55) #5, !dbg !546
  call void @callOneArgHandler(i32 11, double %55, double %56, i64 94199568080184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568080896, i32 55, i32 18), !dbg !544
  store double %56, double* %15, align 8, !dbg !544
  call void @llvm.dbg.declare(metadata double* %16, metadata !547, metadata !62), !dbg !548
  %57 = load double, double* %6, align 8, !dbg !549
  %58 = fmul double 5.000000e-01, %57, !dbg !550
  call void @fMulHandler(double 5.000000e-01, double %57, double %58, i64 0, i64 94199568084232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568084640, i32 56, i32 19), !dbg !551
  %59 = load double, double* %6, align 8, !dbg !551
  %60 = fmul double %58, %59, !dbg !552
  call void @fMulHandler(double %58, double %59, double %60, i64 94199568084640, i64 94199568085000, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568085408, i32 56, i32 21), !dbg !548
  store double %60, double* %16, align 8, !dbg !548
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
  br label %61, !dbg !567

; <label>:61:                                     ; preds = %94, %48
  %62 = load i32, i32* %22, align 4, !dbg !568
  %63 = icmp slt i32 %62, 50, !dbg !571
  %64 = sext i32 %62 to i64, !dbg !572
  %65 = call i1 @iCmpInstHandler(i64 %64, i64 50, i1 %63, i32 40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568100336, i32 64, i32 15), !dbg !572
  br i1 %65, label %66, label %97, !dbg !572

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %22, align 4, !dbg !573
  %68 = load i32, i32* %22, align 4, !dbg !575
  %69 = load i32, i32* %5, align 4, !dbg !576
  %70 = sub nsw i32 %68, %69, !dbg !577
  %71 = mul nsw i32 2, %70, !dbg !578
  %72 = sub nsw i32 %71, 1, !dbg !579
  %73 = mul nsw i32 %67, %72, !dbg !580
  %74 = sitofp i32 %73 to double, !dbg !573
  %75 = load double, double* %18, align 8, !dbg !581
  %76 = fdiv double %75, %74, !dbg !581
  call void @fDivHandler(double %75, double %74, double %76, i64 94199568105848, i64 94199568104200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568106256, i32 65, i32 15), !dbg !581
  store double %76, double* %18, align 8, !dbg !581
  %77 = load double, double* %16, align 8, !dbg !582
  %78 = load double, double* %19, align 8, !dbg !583
  %79 = fmul double %78, %77, !dbg !583
  call void @fMulHandler(double %78, double %77, double %79, i64 94199568108424, i64 94199568108040, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568108832, i32 66, i32 15), !dbg !583
  store double %79, double* %19, align 8, !dbg !583
  %80 = load double, double* %19, align 8, !dbg !584
  %81 = load double, double* %18, align 8, !dbg !585
  %82 = fmul double %80, %81, !dbg !586
  call void @fMulHandler(double %80, double %81, double %82, i64 94199568110616, i64 94199568111000, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568111408, i32 67, i32 22), !dbg !587
  store double %82, double* %20, align 8, !dbg !587
  %83 = load double, double* %20, align 8, !dbg !588
  %84 = load double, double* %17, align 8, !dbg !589
  %85 = fadd double %84, %83, !dbg !589
  call void @fAddHandler(double %84, double %83, double %85, i64 94199568112600, i64 94199568112216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568113008, i32 68, i32 11), !dbg !589
  store double %85, double* %17, align 8, !dbg !589
  %86 = load double, double* %20, align 8, !dbg !590
  %87 = load double, double* %17, align 8, !dbg !592
  %88 = fdiv double %86, %87, !dbg !593
  call void @fDivHandler(double %86, double %87, double %88, i64 94199568114792, i64 94199568115176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568115584, i32 69, i32 20), !dbg !594
  %89 = call double @fabs(double %88) #1, !dbg !594
  %90 = fcmp olt double %89, 0x3CB0000000000000, !dbg !595
  %91 = call i1 @fCmpInstHandler(double %89, double 0x3CB0000000000000, i1 %90, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568116608, i32 69, i32 26), !dbg !596
  br i1 %91, label %92, label %93, !dbg !596

; <label>:92:                                     ; preds = %66
  br label %97, !dbg !597

; <label>:93:                                     ; preds = %66
  br label %94, !dbg !599

; <label>:94:                                     ; preds = %93
  %95 = load i32, i32* %22, align 4, !dbg !600
  %96 = add nsw i32 %95, 1, !dbg !600
  store i32 %96, i32* %22, align 4, !dbg !600
  br label %61, !dbg !602, !llvm.loop !603

; <label>:97:                                     ; preds = %92, %61
  %98 = load i32, i32* %5, align 4, !dbg !605
  %99 = load double, double* %6, align 8, !dbg !606
  %100 = call i32 @gsl_sf_bessel_il_scaled_e(i32 %98, double %99, %struct.gsl_sf_result_struct* %12), !dbg !607
  store i32 %100, i32* %21, align 4, !dbg !608
  %101 = load double, double* %14, align 8, !dbg !609
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !610
  %103 = load double, double* %102, align 8, !dbg !610
  %104 = fmul double %101, %103, !dbg !611
  call void @fMulHandler(double %101, double %103, double %104, i64 94199568123368, i64 94199568124200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568125872, i32 73, i32 22), !dbg !612
  %105 = load double, double* %9, align 8, !dbg !612
  %106 = fdiv double %104, %105, !dbg !613
  call void @fDivHandler(double %104, double %105, double %106, i64 94199568125872, i64 94199568126264, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568126672, i32 73, i32 36), !dbg !614
  %107 = load double, double* %17, align 8, !dbg !614
  %108 = fmul double %106, %107, !dbg !615
  call void @fMulHandler(double %106, double %107, double %108, i64 94199568126672, i64 94199568127064, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568127472, i32 73, i32 41), !dbg !616
  store double %108, double* %13, align 8, !dbg !616
  %109 = load double, double* %14, align 8, !dbg !617
  %110 = fsub double -0.000000e+00, %109, !dbg !618
  call void @fSubHandler(double -0.000000e+00, double %109, double %110, i64 0, i64 94199568128280, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568128752, i32 74, i32 19), !dbg !619
  %111 = fmul double %110, 5.000000e-01, !dbg !619
  call void @fMulHandler(double %110, double 5.000000e-01, double %111, i64 94199568128752, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568129200, i32 74, i32 24), !dbg !620
  %112 = fmul double %111, 0x400921FB54442D18, !dbg !620
  call void @fMulHandler(double %111, double 0x400921FB54442D18, double %112, i64 94199568129200, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568129584, i32 74, i32 29), !dbg !621
  %113 = load double, double* %15, align 8, !dbg !621
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !622
  %115 = load double, double* %114, align 8, !dbg !622
  %116 = fmul double %113, %115, !dbg !623
  call void @fMulHandler(double %113, double %115, double %116, i64 94199568129976, i64 94199568130808, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568132480, i32 74, i32 40), !dbg !624
  %117 = load double, double* %13, align 8, !dbg !624
  %118 = fsub double %116, %117, !dbg !625
  call void @fSubHandler(double %116, double %117, double %118, i64 94199568132480, i64 94199568132872, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568133280, i32 74, i32 55), !dbg !626
  %119 = fmul double %112, %118, !dbg !626
  call void @fMulHandler(double %112, double %118, double %119, i64 94199568129584, i64 94199568133280, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568133696, i32 74, i32 35), !dbg !627
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !627
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !628
  store double %119, double* %121, align 8, !dbg !629
  %122 = load double, double* %15, align 8, !dbg !630
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !631
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !632
  %125 = load double, double* %124, align 8, !dbg !633
  %126 = fmul double %125, %122, !dbg !633
  call void @fMulHandler(double %125, double %122, double %126, i64 94199568136552, i64 94199568135336, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568136960, i32 75, i32 17), !dbg !633
  store double %126, double* %124, align 8, !dbg !633
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !634
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 0, !dbg !635
  %129 = load double, double* %128, align 8, !dbg !635
  %130 = call double @fabs(double %129) #1, !dbg !636
  %131 = fmul double 0x3CC0000000000000, %130, !dbg !637
  call void @fMulHandler(double 0x3CC0000000000000, double %130, double %131, i64 0, i64 94199568141312, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94199568141792, i32 76, i32 41), !dbg !638
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !638
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 1, !dbg !639
  store double %131, double* %133, align 8, !dbg !640
  %134 = load i32, i32* %21, align 4, !dbg !641
  store i32 %134, i32* %4, align 4, !dbg !642
  br label %135, !dbg !642

; <label>:135:                                    ; preds = %97, %47, %45
  %136 = load i32, i32* %4, align 4, !dbg !643
  ret i32 %136, !dbg !643
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
  %18 = sext i32 %16 to i64, !dbg !657
  %19 = call i1 @iCmpInstHandler(i64 %18, i64 0, i1 %17, i32 40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94199568154992, i32 195, i32 11), !dbg !657
  br i1 %19, label %24, label %20, !dbg !657

; <label>:20:                                     ; preds = %3
  %21 = load double, double* %6, align 8, !dbg !658
  %22 = fcmp ole double %21, 0.000000e+00, !dbg !660
  %23 = call i1 @fCmpInstHandler(double %21, double 0.000000e+00, i1 %22, i32 5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94199568156208, i32 195, i32 20), !dbg !661
  br i1 %23, label %24, label %27, !dbg !661

; <label>:24:                                     ; preds = %20, %3
  br label %25, !dbg !662, !llvm.loop !664

; <label>:25:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 196, i32 1), !dbg !665
  store i32 1, i32* %4, align 4, !dbg !665
  br label %85, !dbg !665
                                                  ; No predecessors!
  br label %85, !dbg !668

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !669
  %29 = icmp eq i32 %28, 0, !dbg !672
  %30 = sext i32 %28 to i64, !dbg !669
  %31 = call i1 @iCmpInstHandler(i64 %30, i64 0, i1 %29, i32 32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94199568161136, i32 197, i32 19), !dbg !669
  br i1 %31, label %32, label %40, !dbg !669

; <label>:32:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !673, metadata !62), !dbg !675
  call void @llvm.dbg.declare(metadata i32* %9, metadata !676, metadata !62), !dbg !677
  %33 = load double, double* %6, align 8, !dbg !678
  %34 = call i32 @gsl_sf_bessel_k0_scaled_e(double %33, %struct.gsl_sf_result_struct* %8), !dbg !679
  store i32 %34, i32* %9, align 4, !dbg !677
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !680
  %36 = load double, double* %35, align 8, !dbg !680
  %37 = load double*, double** %7, align 8, !dbg !681
  %38 = getelementptr inbounds double, double* %37, i64 0, !dbg !681
  store double %36, double* %38, align 8, !dbg !682
  %39 = load i32, i32* %9, align 4, !dbg !683
  store i32 %39, i32* %4, align 4, !dbg !684
  br label %85, !dbg !684

; <label>:40:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i32* %10, metadata !685, metadata !62), !dbg !687
  call void @llvm.dbg.declare(metadata double* %11, metadata !688, metadata !62), !dbg !689
  call void @llvm.dbg.declare(metadata double* %12, metadata !690, metadata !62), !dbg !691
  call void @llvm.dbg.declare(metadata double* %13, metadata !692, metadata !62), !dbg !693
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !694, metadata !62), !dbg !695
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !696, metadata !62), !dbg !697
  %41 = load double, double* %6, align 8, !dbg !698
  %42 = call i32 @gsl_sf_bessel_k1_scaled_e(double %41, %struct.gsl_sf_result_struct* %14), !dbg !699
  %43 = load double, double* %6, align 8, !dbg !700
  %44 = call i32 @gsl_sf_bessel_k0_scaled_e(double %43, %struct.gsl_sf_result_struct* %15), !dbg !701
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !702
  %46 = load double, double* %45, align 8, !dbg !702
  store double %46, double* %12, align 8, !dbg !703
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !704
  %48 = load double, double* %47, align 8, !dbg !704
  store double %48, double* %13, align 8, !dbg !705
  %49 = load double, double* %13, align 8, !dbg !706
  %50 = load double*, double** %7, align 8, !dbg !707
  %51 = getelementptr inbounds double, double* %50, i64 0, !dbg !707
  store double %49, double* %51, align 8, !dbg !708
  %52 = load double, double* %12, align 8, !dbg !709
  %53 = load double*, double** %7, align 8, !dbg !710
  %54 = getelementptr inbounds double, double* %53, i64 1, !dbg !710
  store double %52, double* %54, align 8, !dbg !711
  store i32 1, i32* %10, align 4, !dbg !712
  br label %55, !dbg !714

; <label>:55:                                     ; preds = %81, %40
  %56 = load i32, i32* %10, align 4, !dbg !715
  %57 = load i32, i32* %5, align 4, !dbg !718
  %58 = icmp slt i32 %56, %57, !dbg !719
  %59 = sext i32 %56 to i64, !dbg !720
  %60 = sext i32 %57 to i64, !dbg !720
  %61 = call i1 @iCmpInstHandler(i64 %59, i64 %60, i1 %58, i32 40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94199568200240, i32 213, i32 22), !dbg !720
  br i1 %61, label %62, label %84, !dbg !720

; <label>:62:                                     ; preds = %55
  %63 = load i32, i32* %10, align 4, !dbg !721
  %64 = mul nsw i32 2, %63, !dbg !723
  %65 = add nsw i32 %64, 1, !dbg !724
  %66 = sitofp i32 %65 to double, !dbg !725
  %67 = load double, double* %6, align 8, !dbg !726
  %68 = fdiv double %66, %67, !dbg !727
  call void @fDivHandler(double %66, double %67, double %68, i64 94199568202504, i64 94199568202888, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94199568203296, i32 214, i32 25), !dbg !728
  %69 = load double, double* %12, align 8, !dbg !728
  %70 = fmul double %68, %69, !dbg !729
  call void @fMulHandler(double %68, double %69, double %70, i64 94199568203296, i64 94199568203688, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94199568204096, i32 214, i32 28), !dbg !730
  %71 = load double, double* %13, align 8, !dbg !730
  %72 = fadd double %70, %71, !dbg !731
  call void @fAddHandler(double %70, double %71, double %72, i64 94199568204096, i64 94199568204488, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94199568204896, i32 214, i32 35), !dbg !732
  store double %72, double* %11, align 8, !dbg !732
  %73 = load double, double* %11, align 8, !dbg !733
  %74 = load i32, i32* %10, align 4, !dbg !734
  %75 = add nsw i32 %74, 1, !dbg !735
  %76 = sext i32 %75 to i64, !dbg !736
  %77 = load double*, double** %7, align 8, !dbg !736
  %78 = getelementptr inbounds double, double* %77, i64 %76, !dbg !736
  store double %73, double* %78, align 8, !dbg !737
  %79 = load double, double* %12, align 8, !dbg !738
  store double %79, double* %13, align 8, !dbg !739
  %80 = load double, double* %11, align 8, !dbg !740
  store double %80, double* %12, align 8, !dbg !741
  br label %81, !dbg !742

; <label>:81:                                     ; preds = %62
  %82 = load i32, i32* %10, align 4, !dbg !743
  %83 = add nsw i32 %82, 1, !dbg !743
  store i32 %83, i32* %10, align 4, !dbg !743
  br label %55, !dbg !745, !llvm.loop !746

; <label>:84:                                     ; preds = %55
  store i32 0, i32* %4, align 4, !dbg !748
  br label %85, !dbg !748

; <label>:85:                                     ; preds = %84, %32, %26, %25
  %86 = load i32, i32* %4, align 4, !dbg !749
  ret i32 %86, !dbg !749
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
  %10 = sext i32 %8 to i64, !dbg !756
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94199568226224, i32 230, i32 3), !dbg !756
  br i1 %11, label %12, label %18, !dbg !756

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !760, !llvm.loop !763

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !765
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 230, i32 %14), !dbg !765
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !765
  %16 = load double, double* %15, align 8, !dbg !765
  store double %16, double* %2, align 8, !dbg !765
  br label %21, !dbg !765
                                                  ; No predecessors!
  br label %18, !dbg !768

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !770
  %20 = load double, double* %19, align 8, !dbg !770
  store double %20, double* %2, align 8, !dbg !770
  br label %21, !dbg !770

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !772
  ret double %22, !dbg !772
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
  %10 = sext i32 %8 to i64, !dbg !777
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @15, i32 0, i32 0), i64 94199568243520, i32 235, i32 3), !dbg !777
  br i1 %11, label %12, label %18, !dbg !777

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !781, !llvm.loop !784

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !786
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 235, i32 %14), !dbg !786
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !786
  %16 = load double, double* %15, align 8, !dbg !786
  store double %16, double* %2, align 8, !dbg !786
  br label %21, !dbg !786
                                                  ; No predecessors!
  br label %18, !dbg !789

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !791
  %20 = load double, double* %19, align 8, !dbg !791
  store double %20, double* %2, align 8, !dbg !791
  br label %21, !dbg !791

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !793
  ret double %22, !dbg !793
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
  %10 = sext i32 %8 to i64, !dbg !798
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @17, i32 0, i32 0), i64 94199568260816, i32 240, i32 3), !dbg !798
  br i1 %11, label %12, label %18, !dbg !798

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !802, !llvm.loop !805

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !807
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 240, i32 %14), !dbg !807
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !807
  %16 = load double, double* %15, align 8, !dbg !807
  store double %16, double* %2, align 8, !dbg !807
  br label %21, !dbg !807
                                                  ; No predecessors!
  br label %18, !dbg !810

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !812
  %20 = load double, double* %19, align 8, !dbg !812
  store double %20, double* %2, align 8, !dbg !812
  br label %21, !dbg !812

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !814
  ret double %22, !dbg !814
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
  %13 = sext i32 %11 to i64, !dbg !823
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94199568279552, i32 245, i32 3), !dbg !823
  br i1 %14, label %15, label %21, !dbg !823

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !827, !llvm.loop !830

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !832
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 245, i32 %17), !dbg !832
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !832
  %19 = load double, double* %18, align 8, !dbg !832
  store double %19, double* %3, align 8, !dbg !832
  br label %24, !dbg !832
                                                  ; No predecessors!
  br label %21, !dbg !835

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !837
  %23 = load double, double* %22, align 8, !dbg !837
  store double %23, double* %3, align 8, !dbg !837
  br label %24, !dbg !837

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !839
  ret double %25, !dbg !839
}

declare double @gsl_sf_pow_int(double, i32) #2

declare i32 @gsl_sf_doublefact_e(i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @exp(double) #4

declare i32 @gsl_sf_bessel_il_scaled_e(i32, double, %struct.gsl_sf_result_struct*) #2

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
