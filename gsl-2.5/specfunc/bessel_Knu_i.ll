; ModuleID = 'bessel_Knu.ll'
source_filename = "bessel_Knu.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_result_e10_struct = type { double, double, i32 }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Knu.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"gsl_sf_bessel_Knu_scaled_e(nu, x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Knu_e(nu, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_lnKnu_e(nu, x, &result)\00", align 1
@0 = private unnamed_addr constant [27 x i8] c"gsl_sf_bessel_Knu_scaled_e\00"
@1 = private unnamed_addr constant [14 x i8] c"bessel_Knu.ll\00"
@2 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_Knu_scaled_e10_e\00"
@3 = private unnamed_addr constant [14 x i8] c"bessel_Knu.ll\00"
@4 = private unnamed_addr constant [20 x i8] c"gsl_sf_bessel_Knu_e\00"
@5 = private unnamed_addr constant [14 x i8] c"bessel_Knu.ll\00"
@6 = private unnamed_addr constant [22 x i8] c"gsl_sf_bessel_lnKnu_e\00"
@7 = private unnamed_addr constant [14 x i8] c"bessel_Knu.ll\00"
@8 = private unnamed_addr constant [25 x i8] c"gsl_sf_bessel_Knu_scaled\00"
@9 = private unnamed_addr constant [14 x i8] c"bessel_Knu.ll\00"
@10 = private unnamed_addr constant [18 x i8] c"gsl_sf_bessel_Knu\00"
@11 = private unnamed_addr constant [14 x i8] c"bessel_Knu.ll\00"
@12 = private unnamed_addr constant [20 x i8] c"gsl_sf_bessel_lnKnu\00"
@13 = private unnamed_addr constant [14 x i8] c"bessel_Knu.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Knu_scaled_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_e10_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !60, metadata !61), !dbg !62
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !63, metadata !61), !dbg !64
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !65, metadata !61), !dbg !66
  %11 = load double, double* %6, align 8, !dbg !67
  %12 = fcmp ole double %11, 0.000000e+00, !dbg !69
  %13 = call i1 @fCmpInstHandler(double %11, double 0.000000e+00, i1 %12, i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94737336696112, i32 41, i32 8), !dbg !70
  br i1 %13, label %18, label %14, !dbg !70

; <label>:14:                                     ; preds = %3
  %15 = load double, double* %5, align 8, !dbg !71
  %16 = fcmp olt double %15, 0.000000e+00, !dbg !73
  %17 = call i1 @fCmpInstHandler(double %15, double 0.000000e+00, i1 %16, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94737336697568, i32 41, i32 21), !dbg !74
  br i1 %17, label %18, label %27, !dbg !74

; <label>:18:                                     ; preds = %14, %3
  br label %19, !dbg !75, !llvm.loop !77

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !78
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !78
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !78
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !78
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !78
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !78
  br label %24, !dbg !78, !llvm.loop !81

; <label>:24:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 42, i32 1), !dbg !83
  store i32 1, i32* %4, align 4, !dbg !83
  br label %51, !dbg !83
                                                  ; No predecessors!
  br label %26, !dbg !86

; <label>:26:                                     ; preds = %25
  br label %51, !dbg !88

; <label>:27:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct* %8, metadata !89, metadata !61), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %9, metadata !98, metadata !61), !dbg !99
  %28 = load double, double* %5, align 8, !dbg !100
  %29 = load double, double* %6, align 8, !dbg !101
  %30 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double %28, double %29, %struct.gsl_sf_result_e10_struct* %8), !dbg !102
  store i32 %30, i32* %9, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %10, metadata !103, metadata !61), !dbg !104
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !105
  %32 = call i32 @gsl_sf_result_smash_e(%struct.gsl_sf_result_e10_struct* %8, %struct.gsl_sf_result_struct* %31), !dbg !106
  store i32 %32, i32* %10, align 4, !dbg !104
  %33 = load i32, i32* %9, align 4, !dbg !107
  %34 = icmp ne i32 %33, 0, !dbg !107
  %35 = sext i32 %33 to i64, !dbg !107
  %36 = call i1 @iCmpInstHandler(i64 %35, i64 0, i1 %34, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94737336721024, i32 48, i32 12), !dbg !107
  br i1 %36, label %37, label %39, !dbg !107

; <label>:37:                                     ; preds = %27
  %38 = load i32, i32* %9, align 4, !dbg !108
  br label %49, !dbg !108

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %10, align 4, !dbg !110
  %41 = icmp ne i32 %40, 0, !dbg !110
  %42 = sext i32 %40 to i64, !dbg !110
  %43 = call i1 @iCmpInstHandler(i64 %42, i64 0, i1 %41, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94737336726096, i32 48, i32 12), !dbg !110
  br i1 %43, label %44, label %46, !dbg !110

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %10, align 4, !dbg !112
  br label %47, !dbg !112

; <label>:46:                                     ; preds = %39
  br label %47, !dbg !114

; <label>:47:                                     ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ], !dbg !116
  br label %49, !dbg !116

; <label>:49:                                     ; preds = %47, %37
  %50 = phi i32 [ %38, %37 ], [ %48, %47 ], !dbg !118
  store i32 %50, i32* %4, align 4, !dbg !120
  br label %51, !dbg !120

; <label>:51:                                     ; preds = %49, %26, %24
  %52 = load i32, i32* %4, align 4, !dbg !121
  ret i32 %52, !dbg !121
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Knu_scaled_e10_e(double, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !122 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !126, metadata !61), !dbg !127
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !128, metadata !61), !dbg !129
  store %struct.gsl_sf_result_e10_struct* %2, %struct.gsl_sf_result_e10_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %7, metadata !130, metadata !61), !dbg !131
  %20 = load double, double* %6, align 8, !dbg !132
  %21 = fcmp ole double %20, 0.000000e+00, !dbg !134
  %22 = call i1 @fCmpInstHandler(double %20, double 0.000000e+00, i1 %21, i32 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336744160, i32 57, i32 8), !dbg !135
  br i1 %22, label %27, label %23, !dbg !135

; <label>:23:                                     ; preds = %3
  %24 = load double, double* %5, align 8, !dbg !136
  %25 = fcmp olt double %24, 0.000000e+00, !dbg !138
  %26 = call i1 @fCmpInstHandler(double %24, double 0.000000e+00, i1 %25, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336745520, i32 57, i32 21), !dbg !139
  br i1 %26, label %27, label %38, !dbg !139

; <label>:27:                                     ; preds = %23, %3
  br label %28, !dbg !140, !llvm.loop !142

; <label>:28:                                     ; preds = %27
  %29 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !143
  %30 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %29, i32 0, i32 0, !dbg !143
  store double 0x7FF8000000000000, double* %30, align 8, !dbg !143
  %31 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !143
  %32 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %31, i32 0, i32 1, !dbg !143
  store double 0x7FF8000000000000, double* %32, align 8, !dbg !143
  %33 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !143
  %34 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %33, i32 0, i32 2, !dbg !143
  store i32 0, i32* %34, align 8, !dbg !143
  br label %35, !dbg !143, !llvm.loop !146

; <label>:35:                                     ; preds = %28
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 58, i32 1), !dbg !148
  store i32 1, i32* %4, align 4, !dbg !148
  br label %127, !dbg !148
                                                  ; No predecessors!
  br label %37, !dbg !151

; <label>:37:                                     ; preds = %36
  br label %127, !dbg !153

; <label>:38:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %8, metadata !154, metadata !61), !dbg !156
  %39 = load double, double* %5, align 8, !dbg !157
  %40 = fadd double %39, 5.000000e-01, !dbg !158
  call void @fAddHandler(double %39, double 5.000000e-01, double %40, i64 94737336755144, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336755616, i32 61, i32 22), !dbg !159
  %41 = fptosi double %40 to i32, !dbg !159
  store i32 %41, i32* %8, align 4, !dbg !156
  call void @llvm.dbg.declare(metadata double* %9, metadata !160, metadata !61), !dbg !161
  %42 = load double, double* %5, align 8, !dbg !162
  %43 = load i32, i32* %8, align 4, !dbg !163
  %44 = sitofp i32 %43 to double, !dbg !163
  %45 = fsub double %42, %44, !dbg !164
  call void @fSubHandler(double %42, double %44, double %45, i64 94737336759160, i64 94737336759896, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336761568, i32 62, i32 20), !dbg !161
  store double %45, double* %9, align 8, !dbg !161
  call void @llvm.dbg.declare(metadata double* %10, metadata !165, metadata !61), !dbg !166
  call void @llvm.dbg.declare(metadata double* %11, metadata !167, metadata !61), !dbg !168
  call void @llvm.dbg.declare(metadata double* %12, metadata !169, metadata !61), !dbg !170
  call void @llvm.dbg.declare(metadata double* %13, metadata !171, metadata !61), !dbg !172
  call void @llvm.dbg.declare(metadata double* %14, metadata !173, metadata !61), !dbg !174
  call void @llvm.dbg.declare(metadata double* %15, metadata !175, metadata !61), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %16, metadata !177, metadata !61), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %17, metadata !179, metadata !61), !dbg !180
  store i32 0, i32* %17, align 4, !dbg !180
  %46 = load double, double* %6, align 8, !dbg !181
  %47 = fcmp olt double %46, 2.000000e+00, !dbg !183
  %48 = call i1 @fCmpInstHandler(double %46, double 2.000000e+00, i1 %47, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336774528, i32 67, i32 10), !dbg !184
  br i1 %48, label %49, label %53, !dbg !184

; <label>:49:                                     ; preds = %38
  %50 = load double, double* %9, align 8, !dbg !185
  %51 = load double, double* %6, align 8, !dbg !187
  %52 = call i32 @gsl_sf_bessel_K_scaled_temme(double %50, double %51, double* %10, double* %11, double* %12), !dbg !188
  br label %57, !dbg !189

; <label>:53:                                     ; preds = %38
  %54 = load double, double* %9, align 8, !dbg !190
  %55 = load double, double* %6, align 8, !dbg !192
  %56 = call i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double %54, double %55, double* %10, double* %11, double* %12), !dbg !193
  br label %57

; <label>:57:                                     ; preds = %53, %49
  %58 = load double, double* %10, align 8, !dbg !194
  store double %58, double* %13, align 8, !dbg !195
  %59 = load double, double* %11, align 8, !dbg !196
  store double %59, double* %14, align 8, !dbg !197
  store i32 0, i32* %16, align 4, !dbg !198
  br label %60, !dbg !200

; <label>:60:                                     ; preds = %106, %57
  %61 = load i32, i32* %16, align 4, !dbg !201
  %62 = load i32, i32* %8, align 4, !dbg !204
  %63 = icmp slt i32 %61, %62, !dbg !205
  %64 = sext i32 %61 to i64, !dbg !206
  %65 = sext i32 %62 to i64, !dbg !206
  %66 = call i1 @iCmpInstHandler(i64 %64, i64 %65, i1 %63, i32 40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336782880, i32 78, i32 15), !dbg !206
  br i1 %66, label %67, label %109, !dbg !206

; <label>:67:                                     ; preds = %60
  %68 = load double, double* %13, align 8, !dbg !207
  store double %68, double* %15, align 8, !dbg !209
  %69 = load double, double* %14, align 8, !dbg !210
  store double %69, double* %13, align 8, !dbg !211
  %70 = load double, double* %13, align 8, !dbg !212
  %71 = call double @fabs(double %70) #1, !dbg !214
  %72 = fcmp ogt double %71, 0x5FEFFFFFFFFFFFFF, !dbg !215
  %73 = call i1 @fCmpInstHandler(double %71, double 0x5FEFFFFFFFFFFFFF, i1 %72, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336788304, i32 82, i32 22), !dbg !216
  br i1 %73, label %74, label %93, !dbg !216

; <label>:74:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata double* %18, metadata !217, metadata !61), !dbg !219
  %75 = load double, double* %13, align 8, !dbg !220
  %76 = call double @fabs(double %75) #1, !dbg !221
  %77 = call double @log(double %76) #5, !dbg !222
  call void @callOneArgHandler(i32 12, double %76, double %77, i64 94737336791008, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336791824, i32 83, i32 26), !dbg !224
  %78 = fdiv double %77, 0x40026BB1BBB55516, !dbg !224
  call void @fDivHandler(double %77, double 0x40026BB1BBB55516, double %78, i64 94737336791824, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336792400, i32 83, i32 41), !dbg !225
  %79 = call double @floor(double %78) #1, !dbg !225
  store double %79, double* %18, align 8, !dbg !219
  call void @llvm.dbg.declare(metadata double* %19, metadata !227, metadata !61), !dbg !228
  %80 = load double, double* %18, align 8, !dbg !229
  %81 = call double @pow(double 1.000000e+01, double %80) #5, !dbg !230
  call void @callTwoArgsHandler(i32 15, double 1.000000e+01, double %80, double %81, i64 0, i64 94737336796536, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336797368, i32 84, i32 25), !dbg !228
  store double %81, double* %19, align 8, !dbg !228
  %82 = load double, double* %19, align 8, !dbg !231
  %83 = load double, double* %15, align 8, !dbg !232
  %84 = fdiv double %83, %82, !dbg !232
  call void @fDivHandler(double %83, double %82, double %84, i64 94737336799880, i64 94737336799496, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336800288, i32 85, i32 16), !dbg !232
  store double %84, double* %15, align 8, !dbg !232
  %85 = load double, double* %19, align 8, !dbg !233
  %86 = load double, double* %13, align 8, !dbg !234
  %87 = fdiv double %86, %85, !dbg !234
  call void @fDivHandler(double %86, double %85, double %87, i64 94737336802456, i64 94737336802072, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336802864, i32 86, i32 14), !dbg !234
  store double %87, double* %13, align 8, !dbg !234
  %88 = load double, double* %18, align 8, !dbg !235
  %89 = load i32, i32* %17, align 4, !dbg !236
  %90 = sitofp i32 %89 to double, !dbg !236
  %91 = fadd double %90, %88, !dbg !236
  call void @fAddHandler(double %90, double %88, double %91, i64 94737336805416, i64 94737336804648, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336807088, i32 87, i32 13), !dbg !236
  %92 = fptosi double %91 to i32, !dbg !236
  store i32 %92, i32* %17, align 4, !dbg !236
  br label %93, !dbg !237

; <label>:93:                                     ; preds = %74, %67
  %94 = load double, double* %9, align 8, !dbg !238
  %95 = load i32, i32* %16, align 4, !dbg !239
  %96 = sitofp i32 %95 to double, !dbg !239
  %97 = fadd double %94, %96, !dbg !240
  call void @fAddHandler(double %94, double %96, double %97, i64 94737336807800, i64 94737336808504, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336810176, i32 89, i32 23), !dbg !241
  %98 = fadd double %97, 1.000000e+00, !dbg !241
  call void @fAddHandler(double %97, double 1.000000e+00, double %98, i64 94737336810176, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336810688, i32 89, i32 25), !dbg !242
  %99 = fmul double 2.000000e+00, %98, !dbg !242
  call void @fMulHandler(double 2.000000e+00, double %98, double %99, i64 0, i64 94737336810688, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336811104, i32 89, i32 19), !dbg !243
  %100 = load double, double* %6, align 8, !dbg !243
  %101 = fdiv double %99, %100, !dbg !244
  call void @fDivHandler(double %99, double %100, double %101, i64 94737336811104, i64 94737336811464, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336811872, i32 89, i32 28), !dbg !245
  %102 = load double, double* %13, align 8, !dbg !245
  %103 = fmul double %101, %102, !dbg !246
  call void @fMulHandler(double %101, double %102, double %103, i64 94737336811872, i64 94737336812264, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336812672, i32 89, i32 31), !dbg !247
  %104 = load double, double* %15, align 8, !dbg !247
  %105 = fadd double %103, %104, !dbg !248
  call void @fAddHandler(double %103, double %104, double %105, i64 94737336812672, i64 94737336813064, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336813472, i32 89, i32 38), !dbg !249
  store double %105, double* %14, align 8, !dbg !249
  br label %106, !dbg !250

; <label>:106:                                    ; preds = %93
  %107 = load i32, i32* %16, align 4, !dbg !251
  %108 = add nsw i32 %107, 1, !dbg !251
  store i32 %108, i32* %16, align 4, !dbg !251
  br label %60, !dbg !253, !llvm.loop !254

; <label>:109:                                    ; preds = %60
  %110 = load double, double* %13, align 8, !dbg !256
  %111 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !257
  %112 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %111, i32 0, i32 0, !dbg !258
  store double %110, double* %112, align 8, !dbg !259
  %113 = load i32, i32* %8, align 4, !dbg !260
  %114 = sitofp i32 %113 to double, !dbg !260
  %115 = fadd double %114, 4.000000e+00, !dbg !261
  call void @fAddHandler(double %114, double 4.000000e+00, double %115, i64 94737336819560, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336821328, i32 93, i32 46), !dbg !262
  %116 = fmul double 0x3CC0000000000000, %115, !dbg !262
  call void @fMulHandler(double 0x3CC0000000000000, double %115, double %116, i64 0, i64 94737336821328, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336821776, i32 93, i32 41), !dbg !263
  %117 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !263
  %118 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %117, i32 0, i32 0, !dbg !264
  %119 = load double, double* %118, align 8, !dbg !264
  %120 = call double @fabs(double %119) #1, !dbg !265
  %121 = fmul double %116, %120, !dbg !266
  call void @fMulHandler(double %116, double %120, double %121, i64 94737336821776, i64 94737336824736, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94737336825216, i32 93, i32 53), !dbg !267
  %122 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !267
  %123 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %122, i32 0, i32 1, !dbg !268
  store double %121, double* %123, align 8, !dbg !269
  %124 = load i32, i32* %17, align 4, !dbg !270
  %125 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !271
  %126 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %125, i32 0, i32 2, !dbg !272
  store i32 %124, i32* %126, align 8, !dbg !273
  store i32 0, i32* %4, align 4, !dbg !274
  br label %127, !dbg !274

; <label>:127:                                    ; preds = %109, %37, %35
  %128 = load i32, i32* %4, align 4, !dbg !275
  ret i32 %128, !dbg !275
}

declare i32 @gsl_sf_result_smash_e(%struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_K_scaled_temme(double, double, double*, double*, double*) #2

declare i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double, double, double*, double*, double*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Knu_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !276 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !277, metadata !61), !dbg !278
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !279, metadata !61), !dbg !280
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !281, metadata !61), !dbg !282
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !283, metadata !61), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %8, metadata !285, metadata !61), !dbg !286
  %10 = load double, double* %4, align 8, !dbg !287
  %11 = load double, double* %5, align 8, !dbg !288
  %12 = call i32 @gsl_sf_bessel_Knu_scaled_e(double %10, double %11, %struct.gsl_sf_result_struct* %7), !dbg !289
  store i32 %12, i32* %8, align 4, !dbg !286
  call void @llvm.dbg.declare(metadata i32* %9, metadata !290, metadata !61), !dbg !291
  %13 = load double, double* %5, align 8, !dbg !292
  %14 = fsub double -0.000000e+00, %13, !dbg !293
  call void @fSubHandler(double -0.000000e+00, double %13, double %14, i64 0, i64 94737336793032, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94737336848240, i32 105, i32 38), !dbg !294
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !294
  %16 = load double, double* %15, align 8, !dbg !294
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !295
  %18 = load double, double* %17, align 8, !dbg !295
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !296
  %20 = call i32 @gsl_sf_exp_mult_err_e(double %14, double 0.000000e+00, double %16, double %18, %struct.gsl_sf_result_struct* %19), !dbg !297
  store i32 %20, i32* %9, align 4, !dbg !291
  %21 = load i32, i32* %9, align 4, !dbg !298
  %22 = icmp ne i32 %21, 0, !dbg !298
  %23 = sext i32 %21 to i64, !dbg !298
  %24 = call i1 @iCmpInstHandler(i64 %23, i64 0, i1 %22, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94737336855872, i32 106, i32 10), !dbg !298
  br i1 %24, label %25, label %27, !dbg !298

; <label>:25:                                     ; preds = %3
  %26 = load i32, i32* %9, align 4, !dbg !299
  br label %37, !dbg !299

; <label>:27:                                     ; preds = %3
  %28 = load i32, i32* %8, align 4, !dbg !301
  %29 = icmp ne i32 %28, 0, !dbg !301
  %30 = sext i32 %28 to i64, !dbg !301
  %31 = call i1 @iCmpInstHandler(i64 %30, i64 0, i1 %29, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94737336860272, i32 106, i32 10), !dbg !301
  br i1 %31, label %32, label %34, !dbg !301

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %8, align 4, !dbg !303
  br label %35, !dbg !303

; <label>:34:                                     ; preds = %27
  br label %35, !dbg !305

; <label>:35:                                     ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ], !dbg !307
  br label %37, !dbg !307

; <label>:37:                                     ; preds = %35, %25
  %38 = phi i32 [ %26, %25 ], [ %36, %35 ], !dbg !309
  ret i32 %38, !dbg !311
}

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_lnKnu_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !312 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_e10_struct, align 8
  %14 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !313, metadata !61), !dbg !314
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !315, metadata !61), !dbg !316
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !317, metadata !61), !dbg !318
  %15 = load double, double* %6, align 8, !dbg !319
  %16 = fcmp ole double %15, 0.000000e+00, !dbg !321
  %17 = call i1 @fCmpInstHandler(double %15, double 0.000000e+00, i1 %16, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336874352, i32 115, i32 8), !dbg !322
  br i1 %17, label %22, label %18, !dbg !322

; <label>:18:                                     ; preds = %3
  %19 = load double, double* %5, align 8, !dbg !323
  %20 = fcmp olt double %19, 0.000000e+00, !dbg !325
  %21 = call i1 @fCmpInstHandler(double %19, double 0.000000e+00, i1 %20, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336875664, i32 115, i32 21), !dbg !326
  br i1 %21, label %22, label %31, !dbg !326

; <label>:22:                                     ; preds = %18, %3
  br label %23, !dbg !327, !llvm.loop !329

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !330
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !330
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !330
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !330
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !330
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !330
  br label %28, !dbg !330, !llvm.loop !333

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 116, i32 1), !dbg !335
  store i32 1, i32* %4, align 4, !dbg !335
  br label %179, !dbg !335
                                                  ; No predecessors!
  br label %30, !dbg !338

; <label>:30:                                     ; preds = %29
  br label %139, !dbg !340

; <label>:31:                                     ; preds = %18
  %32 = load double, double* %5, align 8, !dbg !341
  %33 = fcmp oeq double %32, 0.000000e+00, !dbg !343
  %34 = call i1 @fCmpInstHandler(double %32, double 0.000000e+00, i1 %33, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336884368, i32 118, i32 14), !dbg !344
  br i1 %34, label %35, label %68, !dbg !344

; <label>:35:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !345, metadata !61), !dbg !347
  %36 = load double, double* %6, align 8, !dbg !348
  %37 = call i32 @gsl_sf_bessel_K0_scaled_e(double %36, %struct.gsl_sf_result_struct* %8), !dbg !349
  %38 = load double, double* %6, align 8, !dbg !350
  %39 = fsub double -0.000000e+00, %38, !dbg !351
  call void @fSubHandler(double -0.000000e+00, double %38, double %39, i64 0, i64 94737336887832, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336888208, i32 125, i32 20), !dbg !352
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !352
  %41 = load double, double* %40, align 8, !dbg !352
  %42 = call double @fabs(double %41) #1, !dbg !353
  %43 = call double @log(double %42) #5, !dbg !354
  call void @callOneArgHandler(i32 12, double %42, double %43, i64 94737336890784, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336891328, i32 125, i32 25), !dbg !356
  %44 = fadd double %39, %43, !dbg !356
  call void @fAddHandler(double %39, double %43, double %44, i64 94737336888208, i64 94737336891328, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336891808, i32 125, i32 23), !dbg !357
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !357
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !358
  store double %44, double* %46, align 8, !dbg !359
  %47 = load double, double* %6, align 8, !dbg !360
  %48 = call double @fabs(double %47) #1, !dbg !361
  %49 = fmul double 0x3CB0000000000000, %48, !dbg !362
  call void @fMulHandler(double 0x3CB0000000000000, double %48, double %49, i64 0, i64 94737336893920, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336894464, i32 126, i32 36), !dbg !363
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !363
  %51 = load double, double* %50, align 8, !dbg !363
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !364
  %53 = load double, double* %52, align 8, !dbg !364
  %54 = fdiv double %51, %53, !dbg !365
  call void @fDivHandler(double %51, double %53, double %54, i64 94737336895304, i64 94737336897400, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336899072, i32 126, i32 65), !dbg !366
  %55 = call double @fabs(double %54) #1, !dbg !366
  %56 = fadd double %49, %55, !dbg !367
  call void @fAddHandler(double %49, double %55, double %56, i64 94737336894464, i64 94737336899552, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336900032, i32 126, i32 46), !dbg !368
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !368
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !369
  store double %56, double* %58, align 8, !dbg !370
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !371
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 0, !dbg !372
  %61 = load double, double* %60, align 8, !dbg !372
  %62 = call double @fabs(double %61) #1, !dbg !373
  %63 = fmul double 0x3CB0000000000000, %62, !dbg !374
  call void @fMulHandler(double 0x3CB0000000000000, double %62, double %63, i64 0, i64 94737336904240, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336904720, i32 127, i32 36), !dbg !375
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !375
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !376
  %66 = load double, double* %65, align 8, !dbg !377
  %67 = fadd double %66, %63, !dbg !377
  call void @fAddHandler(double %66, double %63, double %67, i64 94737336905944, i64 94737336904720, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336906352, i32 127, i32 17), !dbg !377
  store double %67, double* %65, align 8, !dbg !377
  store i32 0, i32* %4, align 4, !dbg !378
  br label %179, !dbg !378

; <label>:68:                                     ; preds = %31
  %69 = load double, double* %6, align 8, !dbg !379
  %70 = fcmp olt double %69, 2.000000e+00, !dbg !381
  %71 = call i1 @fCmpInstHandler(double %69, double 2.000000e+00, i1 %70, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336910576, i32 130, i32 13), !dbg !382
  br i1 %71, label %72, label %137, !dbg !382

; <label>:72:                                     ; preds = %68
  %73 = load double, double* %5, align 8, !dbg !383
  %74 = fcmp ogt double %73, 1.000000e+00, !dbg !385
  %75 = call i1 @fCmpInstHandler(double %73, double 1.000000e+00, i1 %74, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336912032, i32 130, i32 25), !dbg !386
  br i1 %75, label %76, label %137, !dbg !386

; <label>:76:                                     ; preds = %72
  call void @llvm.dbg.declare(metadata double* %9, metadata !387, metadata !61), !dbg !389
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !390, metadata !61), !dbg !391
  %77 = load double, double* %5, align 8, !dbg !392
  %78 = call i32 @gsl_sf_lngamma_e(double %77, %struct.gsl_sf_result_struct* %10), !dbg !393
  %79 = load double, double* %5, align 8, !dbg !394
  %80 = load double, double* %6, align 8, !dbg !395
  %81 = fmul double 5.000000e-01, %80, !dbg !396
  call void @fMulHandler(double 5.000000e-01, double %80, double %81, i64 0, i64 94737336916776, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336917216, i32 141, i32 35), !dbg !397
  %82 = call double @log(double %81) #5, !dbg !397
  call void @callOneArgHandler(i32 12, double %81, double %82, i64 94737336917216, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336917664, i32 141, i32 28), !dbg !398
  %83 = fmul double %79, %82, !dbg !398
  call void @fMulHandler(double %79, double %82, double %83, i64 94737336916392, i64 94737336917664, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336918144, i32 141, i32 27), !dbg !399
  %84 = fsub double 0xBFE62E42FEFA39EF, %83, !dbg !399
  call void @fSubHandler(double 0xBFE62E42FEFA39EF, double %83, double %84, i64 0, i64 94737336918144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336918624, i32 141, i32 23), !dbg !400
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !400
  %86 = load double, double* %85, align 8, !dbg !400
  %87 = fadd double %84, %86, !dbg !401
  call void @fAddHandler(double %84, double %86, double %87, i64 94737336918624, i64 94737336919464, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336921136, i32 141, i32 39), !dbg !402
  store double %87, double* %9, align 8, !dbg !402
  %88 = load double, double* %9, align 8, !dbg !403
  %89 = fcmp ogt double %88, 0x40858E42FEFA39EF, !dbg !405
  %90 = call i1 @fCmpInstHandler(double %88, double 0x40858E42FEFA39EF, i1 %89, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336922416, i32 142, i32 17), !dbg !406
  br i1 %90, label %91, label %136, !dbg !406

; <label>:91:                                     ; preds = %76
  call void @llvm.dbg.declare(metadata double* %11, metadata !407, metadata !61), !dbg !409
  %92 = load double, double* %6, align 8, !dbg !410
  %93 = fmul double 2.500000e-01, %92, !dbg !411
  call void @fMulHandler(double 2.500000e-01, double %92, double %93, i64 0, i64 94737336924632, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336925104, i32 145, i32 24), !dbg !412
  %94 = load double, double* %6, align 8, !dbg !412
  %95 = fmul double %93, %94, !dbg !413
  call void @fMulHandler(double %93, double %94, double %95, i64 94737336925104, i64 94737336925464, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336925872, i32 145, i32 26), !dbg !409
  store double %95, double* %11, align 8, !dbg !409
  call void @llvm.dbg.declare(metadata double* %12, metadata !414, metadata !61), !dbg !415
  %96 = load double, double* %11, align 8, !dbg !416
  %97 = load double, double* %5, align 8, !dbg !417
  %98 = fsub double %97, 1.000000e+00, !dbg !418
  call void @fSubHandler(double %97, double 1.000000e+00, double %98, i64 94737336929416, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336929856, i32 146, i32 32), !dbg !419
  %99 = fdiv double %96, %98, !dbg !419
  call void @fDivHandler(double %96, double %98, double %99, i64 94737336929064, i64 94737336929856, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336930240, i32 146, i32 28), !dbg !420
  %100 = fsub double 1.000000e+00, %99, !dbg !420
  call void @fSubHandler(double 1.000000e+00, double %99, double %100, i64 0, i64 94737336930240, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336930688, i32 146, i32 24), !dbg !415
  store double %100, double* %12, align 8, !dbg !415
  %101 = load double, double* %5, align 8, !dbg !421
  %102 = fcmp ogt double %101, 2.000000e+00, !dbg !423
  %103 = call i1 @fCmpInstHandler(double %101, double 2.000000e+00, i1 %102, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336933168, i32 147, i32 13), !dbg !424
  br i1 %103, label %104, label %116, !dbg !424

; <label>:104:                                    ; preds = %91
  %105 = load double, double* %11, align 8, !dbg !425
  %106 = load double, double* %5, align 8, !dbg !427
  %107 = fsub double %106, 1.000000e+00, !dbg !428
  call void @fSubHandler(double %106, double 1.000000e+00, double %107, i64 94737336934568, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336935008, i32 147, i32 35), !dbg !429
  %108 = fdiv double %105, %107, !dbg !429
  call void @fDivHandler(double %105, double %107, double %108, i64 94737336934248, i64 94737336935008, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336935392, i32 147, i32 31), !dbg !430
  %109 = load double, double* %11, align 8, !dbg !430
  %110 = load double, double* %5, align 8, !dbg !431
  %111 = fsub double %110, 2.000000e+00, !dbg !432
  call void @fSubHandler(double %110, double 2.000000e+00, double %111, i64 94737336936168, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336936608, i32 147, i32 51), !dbg !433
  %112 = fdiv double %109, %111, !dbg !433
  call void @fDivHandler(double %109, double %111, double %112, i64 94737336935784, i64 94737336936608, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336936992, i32 147, i32 47), !dbg !434
  %113 = fmul double %108, %112, !dbg !434
  call void @fMulHandler(double %108, double %112, double %113, i64 94737336935392, i64 94737336936992, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336937408, i32 147, i32 42), !dbg !435
  %114 = load double, double* %12, align 8, !dbg !435
  %115 = fadd double %114, %113, !dbg !435
  call void @fAddHandler(double %114, double %113, double %115, i64 94737336937800, i64 94737336937408, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336938208, i32 147, i32 24), !dbg !435
  store double %115, double* %12, align 8, !dbg !435
  br label %116, !dbg !436

; <label>:116:                                    ; preds = %104, %91
  %117 = load double, double* %9, align 8, !dbg !437
  %118 = load double, double* %12, align 8, !dbg !438
  %119 = call double @log(double %118) #5, !dbg !439
  call void @callOneArgHandler(i32 12, double %118, double %119, i64 94737336940696, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336941168, i32 148, i32 33), !dbg !440
  %120 = fadd double %117, %119, !dbg !440
  call void @fAddHandler(double %117, double %119, double %120, i64 94737336940376, i64 94737336941168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336941648, i32 148, i32 31), !dbg !441
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !441
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !442
  store double %120, double* %122, align 8, !dbg !443
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !444
  %124 = load double, double* %123, align 8, !dbg !444
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !445
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !446
  store double %124, double* %126, align 8, !dbg !447
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !448
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 0, !dbg !449
  %129 = load double, double* %128, align 8, !dbg !449
  %130 = call double @fabs(double %129) #1, !dbg !450
  %131 = fmul double 0x3CC0000000000000, %130, !dbg !451
  call void @fMulHandler(double 0x3CC0000000000000, double %130, double %131, i64 0, i64 94737336949200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336949680, i32 150, i32 44), !dbg !452
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !452
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 1, !dbg !453
  %134 = load double, double* %133, align 8, !dbg !454
  %135 = fadd double %134, %131, !dbg !454
  call void @fAddHandler(double %134, double %131, double %135, i64 94737336950904, i64 94737336949680, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336951312, i32 150, i32 19), !dbg !454
  store double %135, double* %133, align 8, !dbg !454
  store i32 0, i32* %4, align 4, !dbg !455
  br label %179, !dbg !455

; <label>:136:                                    ; preds = %76
  br label %137, !dbg !456

; <label>:137:                                    ; preds = %136, %72, %68
  br label %138

; <label>:138:                                    ; preds = %137
  br label %139

; <label>:139:                                    ; preds = %138, %30
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct* %13, metadata !457, metadata !61), !dbg !459
  call void @llvm.dbg.declare(metadata i32* %14, metadata !460, metadata !61), !dbg !461
  %140 = load double, double* %5, align 8, !dbg !462
  %141 = load double, double* %6, align 8, !dbg !463
  %142 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double %140, double %141, %struct.gsl_sf_result_e10_struct* %13), !dbg !464
  store i32 %142, i32* %14, align 4, !dbg !461
  %143 = load double, double* %6, align 8, !dbg !465
  %144 = fsub double -0.000000e+00, %143, !dbg !466
  call void @fSubHandler(double -0.000000e+00, double %143, double %144, i64 0, i64 94737336962904, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336963280, i32 164, i32 20), !dbg !467
  %145 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %13, i32 0, i32 0, !dbg !467
  %146 = load double, double* %145, align 8, !dbg !467
  %147 = call double @fabs(double %146) #1, !dbg !468
  %148 = call double @log(double %147) #5, !dbg !469
  call void @callOneArgHandler(i32 12, double %147, double %148, i64 94737336965856, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336966400, i32 164, i32 25), !dbg !471
  %149 = fadd double %144, %148, !dbg !471
  call void @fAddHandler(double %144, double %148, double %149, i64 94737336963280, i64 94737336966400, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336966880, i32 164, i32 23), !dbg !472
  %150 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %13, i32 0, i32 2, !dbg !472
  %151 = load i32, i32* %150, align 8, !dbg !472
  %152 = sitofp i32 %151 to double, !dbg !473
  %153 = fmul double %152, 0x40026BB1BBB55516, !dbg !474
  call void @fMulHandler(double %152, double 0x40026BB1BBB55516, double %153, i64 94737336969368, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336969776, i32 164, i32 64), !dbg !475
  %154 = fadd double %149, %153, !dbg !475
  call void @fAddHandler(double %149, double %153, double %154, i64 94737336966880, i64 94737336969776, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336970192, i32 164, i32 49), !dbg !476
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !476
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 0, !dbg !477
  store double %154, double* %156, align 8, !dbg !478
  %157 = load double, double* %6, align 8, !dbg !479
  %158 = call double @fabs(double %157) #1, !dbg !480
  %159 = fmul double 0x3CB0000000000000, %158, !dbg !481
  call void @fMulHandler(double 0x3CB0000000000000, double %158, double %159, i64 0, i64 94737336972304, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336972784, i32 165, i32 36), !dbg !482
  %160 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %13, i32 0, i32 1, !dbg !482
  %161 = load double, double* %160, align 8, !dbg !482
  %162 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %13, i32 0, i32 0, !dbg !483
  %163 = load double, double* %162, align 8, !dbg !483
  %164 = fdiv double %161, %163, !dbg !484
  call void @fDivHandler(double %161, double %163, double %164, i64 94737336973624, i64 94737336975720, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336977392, i32 165, i32 65), !dbg !485
  %165 = call double @fabs(double %164) #1, !dbg !485
  %166 = fadd double %159, %165, !dbg !486
  call void @fAddHandler(double %159, double %165, double %166, i64 94737336972784, i64 94737336977872, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336978352, i32 165, i32 46), !dbg !487
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !487
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 1, !dbg !488
  store double %166, double* %168, align 8, !dbg !489
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !490
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 0, !dbg !491
  %171 = load double, double* %170, align 8, !dbg !491
  %172 = call double @fabs(double %171) #1, !dbg !492
  %173 = fmul double 0x3CB0000000000000, %172, !dbg !493
  call void @fMulHandler(double 0x3CB0000000000000, double %172, double %173, i64 0, i64 94737336982560, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336983040, i32 166, i32 36), !dbg !494
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !494
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 1, !dbg !495
  %176 = load double, double* %175, align 8, !dbg !496
  %177 = fadd double %176, %173, !dbg !496
  call void @fAddHandler(double %176, double %173, double %177, i64 94737336984264, i64 94737336983040, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94737336984672, i32 166, i32 17), !dbg !496
  store double %177, double* %175, align 8, !dbg !496
  %178 = load i32, i32* %14, align 4, !dbg !497
  store i32 %178, i32* %4, align 4, !dbg !498
  br label %179, !dbg !498

; <label>:179:                                    ; preds = %139, %116, %35, %28
  %180 = load i32, i32* %4, align 4, !dbg !499
  ret i32 %180, !dbg !499
}

declare i32 @gsl_sf_bessel_K0_scaled_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Knu_scaled(double, double) #0 !dbg !500 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !503, metadata !61), !dbg !504
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !505, metadata !61), !dbg !506
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !507, metadata !61), !dbg !508
  call void @llvm.dbg.declare(metadata i32* %7, metadata !509, metadata !61), !dbg !508
  %8 = load double, double* %4, align 8, !dbg !508
  %9 = load double, double* %5, align 8, !dbg !508
  %10 = call i32 @gsl_sf_bessel_Knu_scaled_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !508
  store i32 %10, i32* %7, align 4, !dbg !508
  %11 = load i32, i32* %7, align 4, !dbg !510
  %12 = icmp ne i32 %11, 0, !dbg !510
  %13 = sext i32 %11 to i64, !dbg !508
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94737336997520, i32 178, i32 3), !dbg !508
  br i1 %14, label %15, label %21, !dbg !508

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !512, !llvm.loop !515

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !517
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 178, i32 %17), !dbg !517
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !517
  %19 = load double, double* %18, align 8, !dbg !517
  store double %19, double* %3, align 8, !dbg !517
  br label %24, !dbg !517
                                                  ; No predecessors!
  br label %21, !dbg !520

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !522
  %23 = load double, double* %22, align 8, !dbg !522
  store double %23, double* %3, align 8, !dbg !522
  br label %24, !dbg !522

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !524
  ret double %25, !dbg !524
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Knu(double, double) #0 !dbg !525 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !526, metadata !61), !dbg !527
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !528, metadata !61), !dbg !529
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !530, metadata !61), !dbg !531
  call void @llvm.dbg.declare(metadata i32* %7, metadata !532, metadata !61), !dbg !531
  %8 = load double, double* %4, align 8, !dbg !531
  %9 = load double, double* %5, align 8, !dbg !531
  %10 = call i32 @gsl_sf_bessel_Knu_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !531
  store i32 %10, i32* %7, align 4, !dbg !531
  %11 = load i32, i32* %7, align 4, !dbg !533
  %12 = icmp ne i32 %11, 0, !dbg !533
  %13 = sext i32 %11 to i64, !dbg !531
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94737337016336, i32 183, i32 3), !dbg !531
  br i1 %14, label %15, label %21, !dbg !531

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !535, !llvm.loop !538

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !540
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 183, i32 %17), !dbg !540
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !540
  %19 = load double, double* %18, align 8, !dbg !540
  store double %19, double* %3, align 8, !dbg !540
  br label %24, !dbg !540
                                                  ; No predecessors!
  br label %21, !dbg !543

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !545
  %23 = load double, double* %22, align 8, !dbg !545
  store double %23, double* %3, align 8, !dbg !545
  br label %24, !dbg !545

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !547
  ret double %25, !dbg !547
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_lnKnu(double, double) #0 !dbg !548 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !549, metadata !61), !dbg !550
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !551, metadata !61), !dbg !552
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !553, metadata !61), !dbg !554
  call void @llvm.dbg.declare(metadata i32* %7, metadata !555, metadata !61), !dbg !554
  %8 = load double, double* %4, align 8, !dbg !554
  %9 = load double, double* %5, align 8, !dbg !554
  %10 = call i32 @gsl_sf_bessel_lnKnu_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !554
  store i32 %10, i32* %7, align 4, !dbg !554
  %11 = load i32, i32* %7, align 4, !dbg !556
  %12 = icmp ne i32 %11, 0, !dbg !556
  %13 = sext i32 %11 to i64, !dbg !554
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94737337039312, i32 188, i32 3), !dbg !554
  br i1 %14, label %15, label %21, !dbg !554

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !558, !llvm.loop !561

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !563
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 188, i32 %17), !dbg !563
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !563
  %19 = load double, double* %18, align 8, !dbg !563
  store double %19, double* %3, align 8, !dbg !563
  br label %24, !dbg !563
                                                  ; No predecessors!
  br label %21, !dbg !566

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !568
  %23 = load double, double* %22, align 8, !dbg !568
  store double %23, double* %3, align 8, !dbg !568
  br label %24, !dbg !568

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !570
  ret double %25, !dbg !570
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
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_Knu.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_e", scope: !1, file: !1, line: 37, type: !48, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!48 = !DISubroutineType(types: !49)
!49 = !{!42, !50, !50, !52}
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !54, line: 41, baseType: !55)
!54 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !54, line: 37, size: 128, align: 64, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !54, line: 38, baseType: !51, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !55, file: !54, line: 39, baseType: !51, size: 64, align: 64, offset: 64)
!59 = !{}
!60 = !DILocalVariable(name: "nu", arg: 1, scope: !47, file: !1, line: 37, type: !50)
!61 = !DIExpression()
!62 = !DILocation(line: 37, column: 41, scope: !47)
!63 = !DILocalVariable(name: "x", arg: 2, scope: !47, file: !1, line: 37, type: !50)
!64 = !DILocation(line: 37, column: 58, scope: !47)
!65 = !DILocalVariable(name: "result", arg: 3, scope: !47, file: !1, line: 37, type: !52)
!66 = !DILocation(line: 37, column: 77, scope: !47)
!67 = !DILocation(line: 41, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !47, file: !1, line: 41, column: 6)
!69 = !DILocation(line: 41, column: 8, scope: !68)
!70 = !DILocation(line: 41, column: 15, scope: !68)
!71 = !DILocation(line: 41, column: 18, scope: !72)
!72 = !DILexicalBlockFile(scope: !68, file: !1, discriminator: 1)
!73 = !DILocation(line: 41, column: 21, scope: !72)
!74 = !DILocation(line: 41, column: 6, scope: !72)
!75 = !DILocation(line: 42, column: 5, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !1, line: 41, column: 28)
!77 = distinct !{!77, !75}
!78 = !DILocation(line: 42, column: 5, scope: !79)
!79 = !DILexicalBlockFile(scope: !80, file: !1, discriminator: 1)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 42, column: 5)
!81 = distinct !{!81, !82}
!82 = !DILocation(line: 42, column: 5, scope: !80)
!83 = !DILocation(line: 42, column: 5, scope: !84)
!84 = !DILexicalBlockFile(scope: !85, file: !1, discriminator: 2)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 42, column: 5)
!86 = !DILocation(line: 42, column: 5, scope: !87)
!87 = !DILexicalBlockFile(scope: !80, file: !1, discriminator: 3)
!88 = !DILocation(line: 43, column: 3, scope: !76)
!89 = !DILocalVariable(name: "result_e10", scope: !90, file: !1, line: 45, type: !91)
!90 = distinct !DILexicalBlock(scope: !68, file: !1, line: 44, column: 8)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !54, line: 51, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !54, line: 46, size: 192, align: 64, elements: !93)
!93 = !{!94, !95, !96}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !54, line: 47, baseType: !51, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !92, file: !54, line: 48, baseType: !51, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !92, file: !54, line: 49, baseType: !42, size: 32, align: 32, offset: 128)
!97 = !DILocation(line: 45, column: 23, scope: !90)
!98 = !DILocalVariable(name: "status", scope: !90, file: !1, line: 46, type: !42)
!99 = !DILocation(line: 46, column: 9, scope: !90)
!100 = !DILocation(line: 46, column: 49, scope: !90)
!101 = !DILocation(line: 46, column: 53, scope: !90)
!102 = !DILocation(line: 46, column: 18, scope: !90)
!103 = !DILocalVariable(name: "status2", scope: !90, file: !1, line: 47, type: !42)
!104 = !DILocation(line: 47, column: 9, scope: !90)
!105 = !DILocation(line: 47, column: 54, scope: !90)
!106 = !DILocation(line: 47, column: 19, scope: !90)
!107 = !DILocation(line: 48, column: 12, scope: !90)
!108 = !DILocation(line: 48, column: 12, scope: !109)
!109 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 1)
!110 = !DILocation(line: 48, column: 12, scope: !111)
!111 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 2)
!112 = !DILocation(line: 48, column: 12, scope: !113)
!113 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 3)
!114 = !DILocation(line: 48, column: 12, scope: !115)
!115 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 4)
!116 = !DILocation(line: 48, column: 12, scope: !117)
!117 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 5)
!118 = !DILocation(line: 48, column: 12, scope: !119)
!119 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 6)
!120 = !DILocation(line: 48, column: 5, scope: !119)
!121 = !DILocation(line: 50, column: 1, scope: !47)
!122 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_e10_e", scope: !1, file: !1, line: 53, type: !123, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!123 = !DISubroutineType(types: !124)
!124 = !{!42, !50, !50, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!126 = !DILocalVariable(name: "nu", arg: 1, scope: !122, file: !1, line: 53, type: !50)
!127 = !DILocation(line: 53, column: 45, scope: !122)
!128 = !DILocalVariable(name: "x", arg: 2, scope: !122, file: !1, line: 53, type: !50)
!129 = !DILocation(line: 53, column: 62, scope: !122)
!130 = !DILocalVariable(name: "result", arg: 3, scope: !122, file: !1, line: 53, type: !125)
!131 = !DILocation(line: 53, column: 85, scope: !122)
!132 = !DILocation(line: 57, column: 6, scope: !133)
!133 = distinct !DILexicalBlock(scope: !122, file: !1, line: 57, column: 6)
!134 = !DILocation(line: 57, column: 8, scope: !133)
!135 = !DILocation(line: 57, column: 15, scope: !133)
!136 = !DILocation(line: 57, column: 18, scope: !137)
!137 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 1)
!138 = !DILocation(line: 57, column: 21, scope: !137)
!139 = !DILocation(line: 57, column: 6, scope: !137)
!140 = !DILocation(line: 58, column: 5, scope: !141)
!141 = distinct !DILexicalBlock(scope: !133, file: !1, line: 57, column: 28)
!142 = distinct !{!142, !140}
!143 = !DILocation(line: 58, column: 5, scope: !144)
!144 = !DILexicalBlockFile(scope: !145, file: !1, discriminator: 1)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 58, column: 5)
!146 = distinct !{!146, !147}
!147 = !DILocation(line: 58, column: 5, scope: !145)
!148 = !DILocation(line: 58, column: 5, scope: !149)
!149 = !DILexicalBlockFile(scope: !150, file: !1, discriminator: 2)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 58, column: 5)
!151 = !DILocation(line: 58, column: 5, scope: !152)
!152 = !DILexicalBlockFile(scope: !145, file: !1, discriminator: 3)
!153 = !DILocation(line: 59, column: 3, scope: !141)
!154 = !DILocalVariable(name: "N", scope: !155, file: !1, line: 61, type: !42)
!155 = distinct !DILexicalBlock(scope: !133, file: !1, line: 60, column: 8)
!156 = !DILocation(line: 61, column: 9, scope: !155)
!157 = !DILocation(line: 61, column: 19, scope: !155)
!158 = !DILocation(line: 61, column: 22, scope: !155)
!159 = !DILocation(line: 61, column: 13, scope: !155)
!160 = !DILocalVariable(name: "mu", scope: !155, file: !1, line: 62, type: !51)
!161 = !DILocation(line: 62, column: 12, scope: !155)
!162 = !DILocation(line: 62, column: 17, scope: !155)
!163 = !DILocation(line: 62, column: 22, scope: !155)
!164 = !DILocation(line: 62, column: 20, scope: !155)
!165 = !DILocalVariable(name: "K_mu", scope: !155, file: !1, line: 63, type: !51)
!166 = !DILocation(line: 63, column: 12, scope: !155)
!167 = !DILocalVariable(name: "K_mup1", scope: !155, file: !1, line: 63, type: !51)
!168 = !DILocation(line: 63, column: 18, scope: !155)
!169 = !DILocalVariable(name: "Kp_mu", scope: !155, file: !1, line: 63, type: !51)
!170 = !DILocation(line: 63, column: 26, scope: !155)
!171 = !DILocalVariable(name: "K_nu", scope: !155, file: !1, line: 64, type: !51)
!172 = !DILocation(line: 64, column: 12, scope: !155)
!173 = !DILocalVariable(name: "K_nup1", scope: !155, file: !1, line: 64, type: !51)
!174 = !DILocation(line: 64, column: 18, scope: !155)
!175 = !DILocalVariable(name: "K_num1", scope: !155, file: !1, line: 64, type: !51)
!176 = !DILocation(line: 64, column: 26, scope: !155)
!177 = !DILocalVariable(name: "n", scope: !155, file: !1, line: 65, type: !42)
!178 = !DILocation(line: 65, column: 9, scope: !155)
!179 = !DILocalVariable(name: "e10", scope: !155, file: !1, line: 65, type: !42)
!180 = !DILocation(line: 65, column: 12, scope: !155)
!181 = !DILocation(line: 67, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !155, file: !1, line: 67, column: 8)
!183 = !DILocation(line: 67, column: 10, scope: !182)
!184 = !DILocation(line: 67, column: 8, scope: !155)
!185 = !DILocation(line: 68, column: 36, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 67, column: 17)
!187 = !DILocation(line: 68, column: 40, scope: !186)
!188 = !DILocation(line: 68, column: 7, scope: !186)
!189 = !DILocation(line: 69, column: 5, scope: !186)
!190 = !DILocation(line: 71, column: 46, scope: !191)
!191 = distinct !DILexicalBlock(scope: !182, file: !1, line: 70, column: 10)
!192 = !DILocation(line: 71, column: 50, scope: !191)
!193 = !DILocation(line: 71, column: 7, scope: !191)
!194 = !DILocation(line: 75, column: 14, scope: !155)
!195 = !DILocation(line: 75, column: 12, scope: !155)
!196 = !DILocation(line: 76, column: 14, scope: !155)
!197 = !DILocation(line: 76, column: 12, scope: !155)
!198 = !DILocation(line: 78, column: 10, scope: !199)
!199 = distinct !DILexicalBlock(scope: !155, file: !1, line: 78, column: 5)
!200 = !DILocation(line: 78, column: 9, scope: !199)
!201 = !DILocation(line: 78, column: 14, scope: !202)
!202 = !DILexicalBlockFile(scope: !203, file: !1, discriminator: 1)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 78, column: 5)
!204 = !DILocation(line: 78, column: 16, scope: !202)
!205 = !DILocation(line: 78, column: 15, scope: !202)
!206 = !DILocation(line: 78, column: 5, scope: !202)
!207 = !DILocation(line: 79, column: 16, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 78, column: 24)
!209 = !DILocation(line: 79, column: 14, scope: !208)
!210 = !DILocation(line: 80, column: 16, scope: !208)
!211 = !DILocation(line: 80, column: 14, scope: !208)
!212 = !DILocation(line: 82, column: 16, scope: !213)
!213 = distinct !DILexicalBlock(scope: !208, file: !1, line: 82, column: 11)
!214 = !DILocation(line: 82, column: 11, scope: !213)
!215 = !DILocation(line: 82, column: 22, scope: !213)
!216 = !DILocation(line: 82, column: 11, scope: !208)
!217 = !DILocalVariable(name: "p", scope: !218, file: !1, line: 83, type: !51)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 82, column: 42)
!219 = !DILocation(line: 83, column: 16, scope: !218)
!220 = !DILocation(line: 83, column: 35, scope: !218)
!221 = !DILocation(line: 83, column: 30, scope: !218)
!222 = !DILocation(line: 83, column: 26, scope: !223)
!223 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 1)
!224 = !DILocation(line: 83, column: 41, scope: !218)
!225 = !DILocation(line: 83, column: 20, scope: !226)
!226 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 2)
!227 = !DILocalVariable(name: "factor", scope: !218, file: !1, line: 84, type: !51)
!228 = !DILocation(line: 84, column: 16, scope: !218)
!229 = !DILocation(line: 84, column: 35, scope: !218)
!230 = !DILocation(line: 84, column: 25, scope: !218)
!231 = !DILocation(line: 85, column: 19, scope: !218)
!232 = !DILocation(line: 85, column: 16, scope: !218)
!233 = !DILocation(line: 86, column: 17, scope: !218)
!234 = !DILocation(line: 86, column: 14, scope: !218)
!235 = !DILocation(line: 87, column: 16, scope: !218)
!236 = !DILocation(line: 87, column: 13, scope: !218)
!237 = !DILocation(line: 88, column: 7, scope: !218)
!238 = !DILocation(line: 89, column: 21, scope: !208)
!239 = !DILocation(line: 89, column: 24, scope: !208)
!240 = !DILocation(line: 89, column: 23, scope: !208)
!241 = !DILocation(line: 89, column: 25, scope: !208)
!242 = !DILocation(line: 89, column: 19, scope: !208)
!243 = !DILocation(line: 89, column: 29, scope: !208)
!244 = !DILocation(line: 89, column: 28, scope: !208)
!245 = !DILocation(line: 89, column: 33, scope: !208)
!246 = !DILocation(line: 89, column: 31, scope: !208)
!247 = !DILocation(line: 89, column: 40, scope: !208)
!248 = !DILocation(line: 89, column: 38, scope: !208)
!249 = !DILocation(line: 89, column: 14, scope: !208)
!250 = !DILocation(line: 90, column: 5, scope: !208)
!251 = !DILocation(line: 78, column: 20, scope: !252)
!252 = !DILexicalBlockFile(scope: !203, file: !1, discriminator: 2)
!253 = !DILocation(line: 78, column: 5, scope: !252)
!254 = distinct !{!254, !255}
!255 = !DILocation(line: 78, column: 5, scope: !155)
!256 = !DILocation(line: 92, column: 19, scope: !155)
!257 = !DILocation(line: 92, column: 5, scope: !155)
!258 = !DILocation(line: 92, column: 13, scope: !155)
!259 = !DILocation(line: 92, column: 17, scope: !155)
!260 = !DILocation(line: 93, column: 44, scope: !155)
!261 = !DILocation(line: 93, column: 46, scope: !155)
!262 = !DILocation(line: 93, column: 41, scope: !155)
!263 = !DILocation(line: 93, column: 60, scope: !155)
!264 = !DILocation(line: 93, column: 68, scope: !155)
!265 = !DILocation(line: 93, column: 55, scope: !155)
!266 = !DILocation(line: 93, column: 53, scope: !155)
!267 = !DILocation(line: 93, column: 5, scope: !155)
!268 = !DILocation(line: 93, column: 13, scope: !155)
!269 = !DILocation(line: 93, column: 17, scope: !155)
!270 = !DILocation(line: 94, column: 19, scope: !155)
!271 = !DILocation(line: 94, column: 5, scope: !155)
!272 = !DILocation(line: 94, column: 13, scope: !155)
!273 = !DILocation(line: 94, column: 17, scope: !155)
!274 = !DILocation(line: 95, column: 5, scope: !155)
!275 = !DILocation(line: 97, column: 1, scope: !122)
!276 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_e", scope: !1, file: !1, line: 101, type: !48, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!277 = !DILocalVariable(name: "nu", arg: 1, scope: !276, file: !1, line: 101, type: !50)
!278 = !DILocation(line: 101, column: 34, scope: !276)
!279 = !DILocalVariable(name: "x", arg: 2, scope: !276, file: !1, line: 101, type: !50)
!280 = !DILocation(line: 101, column: 51, scope: !276)
!281 = !DILocalVariable(name: "result", arg: 3, scope: !276, file: !1, line: 101, type: !52)
!282 = !DILocation(line: 101, column: 70, scope: !276)
!283 = !DILocalVariable(name: "b", scope: !276, file: !1, line: 103, type: !53)
!284 = !DILocation(line: 103, column: 17, scope: !276)
!285 = !DILocalVariable(name: "stat_K", scope: !276, file: !1, line: 104, type: !42)
!286 = !DILocation(line: 104, column: 7, scope: !276)
!287 = !DILocation(line: 104, column: 43, scope: !276)
!288 = !DILocation(line: 104, column: 47, scope: !276)
!289 = !DILocation(line: 104, column: 16, scope: !276)
!290 = !DILocalVariable(name: "stat_e", scope: !276, file: !1, line: 105, type: !42)
!291 = !DILocation(line: 105, column: 7, scope: !276)
!292 = !DILocation(line: 105, column: 39, scope: !276)
!293 = !DILocation(line: 105, column: 38, scope: !276)
!294 = !DILocation(line: 105, column: 49, scope: !276)
!295 = !DILocation(line: 105, column: 56, scope: !276)
!296 = !DILocation(line: 105, column: 61, scope: !276)
!297 = !DILocation(line: 105, column: 16, scope: !276)
!298 = !DILocation(line: 106, column: 10, scope: !276)
!299 = !DILocation(line: 106, column: 10, scope: !300)
!300 = !DILexicalBlockFile(scope: !276, file: !1, discriminator: 1)
!301 = !DILocation(line: 106, column: 10, scope: !302)
!302 = !DILexicalBlockFile(scope: !276, file: !1, discriminator: 2)
!303 = !DILocation(line: 106, column: 10, scope: !304)
!304 = !DILexicalBlockFile(scope: !276, file: !1, discriminator: 3)
!305 = !DILocation(line: 106, column: 10, scope: !306)
!306 = !DILexicalBlockFile(scope: !276, file: !1, discriminator: 4)
!307 = !DILocation(line: 106, column: 10, scope: !308)
!308 = !DILexicalBlockFile(scope: !276, file: !1, discriminator: 5)
!309 = !DILocation(line: 106, column: 10, scope: !310)
!310 = !DILexicalBlockFile(scope: !276, file: !1, discriminator: 6)
!311 = !DILocation(line: 106, column: 3, scope: !310)
!312 = distinct !DISubprogram(name: "gsl_sf_bessel_lnKnu_e", scope: !1, file: !1, line: 111, type: !48, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!313 = !DILocalVariable(name: "nu", arg: 1, scope: !312, file: !1, line: 111, type: !50)
!314 = !DILocation(line: 111, column: 36, scope: !312)
!315 = !DILocalVariable(name: "x", arg: 2, scope: !312, file: !1, line: 111, type: !50)
!316 = !DILocation(line: 111, column: 53, scope: !312)
!317 = !DILocalVariable(name: "result", arg: 3, scope: !312, file: !1, line: 111, type: !52)
!318 = !DILocation(line: 111, column: 72, scope: !312)
!319 = !DILocation(line: 115, column: 6, scope: !320)
!320 = distinct !DILexicalBlock(scope: !312, file: !1, line: 115, column: 6)
!321 = !DILocation(line: 115, column: 8, scope: !320)
!322 = !DILocation(line: 115, column: 15, scope: !320)
!323 = !DILocation(line: 115, column: 18, scope: !324)
!324 = !DILexicalBlockFile(scope: !320, file: !1, discriminator: 1)
!325 = !DILocation(line: 115, column: 21, scope: !324)
!326 = !DILocation(line: 115, column: 6, scope: !324)
!327 = !DILocation(line: 116, column: 5, scope: !328)
!328 = distinct !DILexicalBlock(scope: !320, file: !1, line: 115, column: 28)
!329 = distinct !{!329, !327}
!330 = !DILocation(line: 116, column: 5, scope: !331)
!331 = !DILexicalBlockFile(scope: !332, file: !1, discriminator: 1)
!332 = distinct !DILexicalBlock(scope: !328, file: !1, line: 116, column: 5)
!333 = distinct !{!333, !334}
!334 = !DILocation(line: 116, column: 5, scope: !332)
!335 = !DILocation(line: 116, column: 5, scope: !336)
!336 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 2)
!337 = distinct !DILexicalBlock(scope: !332, file: !1, line: 116, column: 5)
!338 = !DILocation(line: 116, column: 5, scope: !339)
!339 = !DILexicalBlockFile(scope: !332, file: !1, discriminator: 3)
!340 = !DILocation(line: 117, column: 3, scope: !328)
!341 = !DILocation(line: 118, column: 11, scope: !342)
!342 = distinct !DILexicalBlock(scope: !320, file: !1, line: 118, column: 11)
!343 = !DILocation(line: 118, column: 14, scope: !342)
!344 = !DILocation(line: 118, column: 11, scope: !320)
!345 = !DILocalVariable(name: "K_scaled", scope: !346, file: !1, line: 119, type: !53)
!346 = distinct !DILexicalBlock(scope: !342, file: !1, line: 118, column: 22)
!347 = !DILocation(line: 119, column: 19, scope: !346)
!348 = !DILocation(line: 124, column: 31, scope: !346)
!349 = !DILocation(line: 124, column: 5, scope: !346)
!350 = !DILocation(line: 125, column: 21, scope: !346)
!351 = !DILocation(line: 125, column: 20, scope: !346)
!352 = !DILocation(line: 125, column: 43, scope: !346)
!353 = !DILocation(line: 125, column: 29, scope: !346)
!354 = !DILocation(line: 125, column: 25, scope: !355)
!355 = !DILexicalBlockFile(scope: !346, file: !1, discriminator: 1)
!356 = !DILocation(line: 125, column: 23, scope: !346)
!357 = !DILocation(line: 125, column: 5, scope: !346)
!358 = !DILocation(line: 125, column: 13, scope: !346)
!359 = !DILocation(line: 125, column: 18, scope: !346)
!360 = !DILocation(line: 126, column: 43, scope: !346)
!361 = !DILocation(line: 126, column: 38, scope: !346)
!362 = !DILocation(line: 126, column: 36, scope: !346)
!363 = !DILocation(line: 126, column: 62, scope: !346)
!364 = !DILocation(line: 126, column: 75, scope: !346)
!365 = !DILocation(line: 126, column: 65, scope: !346)
!366 = !DILocation(line: 126, column: 48, scope: !355)
!367 = !DILocation(line: 126, column: 46, scope: !346)
!368 = !DILocation(line: 126, column: 5, scope: !346)
!369 = !DILocation(line: 126, column: 13, scope: !346)
!370 = !DILocation(line: 126, column: 18, scope: !346)
!371 = !DILocation(line: 127, column: 43, scope: !346)
!372 = !DILocation(line: 127, column: 51, scope: !346)
!373 = !DILocation(line: 127, column: 38, scope: !346)
!374 = !DILocation(line: 127, column: 36, scope: !346)
!375 = !DILocation(line: 127, column: 5, scope: !346)
!376 = !DILocation(line: 127, column: 13, scope: !346)
!377 = !DILocation(line: 127, column: 17, scope: !346)
!378 = !DILocation(line: 128, column: 5, scope: !346)
!379 = !DILocation(line: 130, column: 11, scope: !380)
!380 = distinct !DILexicalBlock(scope: !342, file: !1, line: 130, column: 11)
!381 = !DILocation(line: 130, column: 13, scope: !380)
!382 = !DILocation(line: 130, column: 19, scope: !380)
!383 = !DILocation(line: 130, column: 22, scope: !384)
!384 = !DILexicalBlockFile(scope: !380, file: !1, discriminator: 1)
!385 = !DILocation(line: 130, column: 25, scope: !384)
!386 = !DILocation(line: 130, column: 11, scope: !384)
!387 = !DILocalVariable(name: "ln_bound", scope: !388, file: !1, line: 138, type: !51)
!388 = distinct !DILexicalBlock(scope: !380, file: !1, line: 130, column: 32)
!389 = !DILocation(line: 138, column: 12, scope: !388)
!390 = !DILocalVariable(name: "lg_nu", scope: !388, file: !1, line: 139, type: !53)
!391 = !DILocation(line: 139, column: 19, scope: !388)
!392 = !DILocation(line: 140, column: 22, scope: !388)
!393 = !DILocation(line: 140, column: 5, scope: !388)
!394 = !DILocation(line: 141, column: 25, scope: !388)
!395 = !DILocation(line: 141, column: 36, scope: !388)
!396 = !DILocation(line: 141, column: 35, scope: !388)
!397 = !DILocation(line: 141, column: 28, scope: !388)
!398 = !DILocation(line: 141, column: 27, scope: !388)
!399 = !DILocation(line: 141, column: 23, scope: !388)
!400 = !DILocation(line: 141, column: 47, scope: !388)
!401 = !DILocation(line: 141, column: 39, scope: !388)
!402 = !DILocation(line: 141, column: 14, scope: !388)
!403 = !DILocation(line: 142, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !388, file: !1, line: 142, column: 8)
!405 = !DILocation(line: 142, column: 17, scope: !404)
!406 = !DILocation(line: 142, column: 8, scope: !388)
!407 = !DILocalVariable(name: "xi", scope: !408, file: !1, line: 145, type: !51)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 142, column: 43)
!409 = !DILocation(line: 145, column: 14, scope: !408)
!410 = !DILocation(line: 145, column: 25, scope: !408)
!411 = !DILocation(line: 145, column: 24, scope: !408)
!412 = !DILocation(line: 145, column: 27, scope: !408)
!413 = !DILocation(line: 145, column: 26, scope: !408)
!414 = !DILocalVariable(name: "sum", scope: !408, file: !1, line: 146, type: !51)
!415 = !DILocation(line: 146, column: 14, scope: !408)
!416 = !DILocation(line: 146, column: 26, scope: !408)
!417 = !DILocation(line: 146, column: 30, scope: !408)
!418 = !DILocation(line: 146, column: 32, scope: !408)
!419 = !DILocation(line: 146, column: 28, scope: !408)
!420 = !DILocation(line: 146, column: 24, scope: !408)
!421 = !DILocation(line: 147, column: 10, scope: !422)
!422 = distinct !DILexicalBlock(scope: !408, file: !1, line: 147, column: 10)
!423 = !DILocation(line: 147, column: 13, scope: !422)
!424 = !DILocation(line: 147, column: 10, scope: !408)
!425 = !DILocation(line: 147, column: 29, scope: !426)
!426 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 1)
!427 = !DILocation(line: 147, column: 33, scope: !426)
!428 = !DILocation(line: 147, column: 35, scope: !426)
!429 = !DILocation(line: 147, column: 31, scope: !426)
!430 = !DILocation(line: 147, column: 45, scope: !426)
!431 = !DILocation(line: 147, column: 49, scope: !426)
!432 = !DILocation(line: 147, column: 51, scope: !426)
!433 = !DILocation(line: 147, column: 47, scope: !426)
!434 = !DILocation(line: 147, column: 42, scope: !426)
!435 = !DILocation(line: 147, column: 24, scope: !426)
!436 = !DILocation(line: 147, column: 20, scope: !426)
!437 = !DILocation(line: 148, column: 22, scope: !408)
!438 = !DILocation(line: 148, column: 37, scope: !408)
!439 = !DILocation(line: 148, column: 33, scope: !408)
!440 = !DILocation(line: 148, column: 31, scope: !408)
!441 = !DILocation(line: 148, column: 7, scope: !408)
!442 = !DILocation(line: 148, column: 15, scope: !408)
!443 = !DILocation(line: 148, column: 20, scope: !408)
!444 = !DILocation(line: 149, column: 28, scope: !408)
!445 = !DILocation(line: 149, column: 7, scope: !408)
!446 = !DILocation(line: 149, column: 15, scope: !408)
!447 = !DILocation(line: 149, column: 20, scope: !408)
!448 = !DILocation(line: 150, column: 51, scope: !408)
!449 = !DILocation(line: 150, column: 59, scope: !408)
!450 = !DILocation(line: 150, column: 46, scope: !408)
!451 = !DILocation(line: 150, column: 44, scope: !408)
!452 = !DILocation(line: 150, column: 7, scope: !408)
!453 = !DILocation(line: 150, column: 15, scope: !408)
!454 = !DILocation(line: 150, column: 19, scope: !408)
!455 = !DILocation(line: 151, column: 7, scope: !408)
!456 = !DILocation(line: 154, column: 3, scope: !388)
!457 = !DILocalVariable(name: "K_scaled", scope: !458, file: !1, line: 162, type: !91)
!458 = distinct !DILexicalBlock(scope: !312, file: !1, line: 157, column: 3)
!459 = !DILocation(line: 162, column: 23, scope: !458)
!460 = !DILocalVariable(name: "status", scope: !458, file: !1, line: 163, type: !42)
!461 = !DILocation(line: 163, column: 9, scope: !458)
!462 = !DILocation(line: 163, column: 49, scope: !458)
!463 = !DILocation(line: 163, column: 53, scope: !458)
!464 = !DILocation(line: 163, column: 18, scope: !458)
!465 = !DILocation(line: 164, column: 21, scope: !458)
!466 = !DILocation(line: 164, column: 20, scope: !458)
!467 = !DILocation(line: 164, column: 43, scope: !458)
!468 = !DILocation(line: 164, column: 29, scope: !458)
!469 = !DILocation(line: 164, column: 25, scope: !470)
!470 = !DILexicalBlockFile(scope: !458, file: !1, discriminator: 1)
!471 = !DILocation(line: 164, column: 23, scope: !458)
!472 = !DILocation(line: 164, column: 60, scope: !458)
!473 = !DILocation(line: 164, column: 51, scope: !458)
!474 = !DILocation(line: 164, column: 64, scope: !458)
!475 = !DILocation(line: 164, column: 49, scope: !458)
!476 = !DILocation(line: 164, column: 5, scope: !458)
!477 = !DILocation(line: 164, column: 13, scope: !458)
!478 = !DILocation(line: 164, column: 18, scope: !458)
!479 = !DILocation(line: 165, column: 43, scope: !458)
!480 = !DILocation(line: 165, column: 38, scope: !458)
!481 = !DILocation(line: 165, column: 36, scope: !458)
!482 = !DILocation(line: 165, column: 62, scope: !458)
!483 = !DILocation(line: 165, column: 75, scope: !458)
!484 = !DILocation(line: 165, column: 65, scope: !458)
!485 = !DILocation(line: 165, column: 48, scope: !470)
!486 = !DILocation(line: 165, column: 46, scope: !458)
!487 = !DILocation(line: 165, column: 5, scope: !458)
!488 = !DILocation(line: 165, column: 13, scope: !458)
!489 = !DILocation(line: 165, column: 18, scope: !458)
!490 = !DILocation(line: 166, column: 43, scope: !458)
!491 = !DILocation(line: 166, column: 51, scope: !458)
!492 = !DILocation(line: 166, column: 38, scope: !458)
!493 = !DILocation(line: 166, column: 36, scope: !458)
!494 = !DILocation(line: 166, column: 5, scope: !458)
!495 = !DILocation(line: 166, column: 13, scope: !458)
!496 = !DILocation(line: 166, column: 17, scope: !458)
!497 = !DILocation(line: 167, column: 12, scope: !458)
!498 = !DILocation(line: 167, column: 5, scope: !458)
!499 = !DILocation(line: 169, column: 1, scope: !312)
!500 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled", scope: !1, file: !1, line: 176, type: !501, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!501 = !DISubroutineType(types: !502)
!502 = !{!51, !50, !50}
!503 = !DILocalVariable(name: "nu", arg: 1, scope: !500, file: !1, line: 176, type: !50)
!504 = !DILocation(line: 176, column: 46, scope: !500)
!505 = !DILocalVariable(name: "x", arg: 2, scope: !500, file: !1, line: 176, type: !50)
!506 = !DILocation(line: 176, column: 63, scope: !500)
!507 = !DILocalVariable(name: "result", scope: !500, file: !1, line: 178, type: !53)
!508 = !DILocation(line: 178, column: 3, scope: !500)
!509 = !DILocalVariable(name: "status", scope: !500, file: !1, line: 178, type: !42)
!510 = !DILocation(line: 178, column: 3, scope: !511)
!511 = distinct !DILexicalBlock(scope: !500, file: !1, line: 178, column: 3)
!512 = !DILocation(line: 178, column: 3, scope: !513)
!513 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 1)
!514 = distinct !DILexicalBlock(scope: !511, file: !1, line: 178, column: 3)
!515 = distinct !{!515, !516}
!516 = !DILocation(line: 178, column: 3, scope: !514)
!517 = !DILocation(line: 178, column: 3, scope: !518)
!518 = !DILexicalBlockFile(scope: !519, file: !1, discriminator: 2)
!519 = distinct !DILexicalBlock(scope: !514, file: !1, line: 178, column: 3)
!520 = !DILocation(line: 178, column: 3, scope: !521)
!521 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 3)
!522 = !DILocation(line: 178, column: 3, scope: !523)
!523 = !DILexicalBlockFile(scope: !500, file: !1, discriminator: 4)
!524 = !DILocation(line: 179, column: 1, scope: !500)
!525 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu", scope: !1, file: !1, line: 181, type: !501, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!526 = !DILocalVariable(name: "nu", arg: 1, scope: !525, file: !1, line: 181, type: !50)
!527 = !DILocation(line: 181, column: 39, scope: !525)
!528 = !DILocalVariable(name: "x", arg: 2, scope: !525, file: !1, line: 181, type: !50)
!529 = !DILocation(line: 181, column: 56, scope: !525)
!530 = !DILocalVariable(name: "result", scope: !525, file: !1, line: 183, type: !53)
!531 = !DILocation(line: 183, column: 3, scope: !525)
!532 = !DILocalVariable(name: "status", scope: !525, file: !1, line: 183, type: !42)
!533 = !DILocation(line: 183, column: 3, scope: !534)
!534 = distinct !DILexicalBlock(scope: !525, file: !1, line: 183, column: 3)
!535 = !DILocation(line: 183, column: 3, scope: !536)
!536 = !DILexicalBlockFile(scope: !537, file: !1, discriminator: 1)
!537 = distinct !DILexicalBlock(scope: !534, file: !1, line: 183, column: 3)
!538 = distinct !{!538, !539}
!539 = !DILocation(line: 183, column: 3, scope: !537)
!540 = !DILocation(line: 183, column: 3, scope: !541)
!541 = !DILexicalBlockFile(scope: !542, file: !1, discriminator: 2)
!542 = distinct !DILexicalBlock(scope: !537, file: !1, line: 183, column: 3)
!543 = !DILocation(line: 183, column: 3, scope: !544)
!544 = !DILexicalBlockFile(scope: !537, file: !1, discriminator: 3)
!545 = !DILocation(line: 183, column: 3, scope: !546)
!546 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 4)
!547 = !DILocation(line: 184, column: 1, scope: !525)
!548 = distinct !DISubprogram(name: "gsl_sf_bessel_lnKnu", scope: !1, file: !1, line: 186, type: !501, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!549 = !DILocalVariable(name: "nu", arg: 1, scope: !548, file: !1, line: 186, type: !50)
!550 = !DILocation(line: 186, column: 41, scope: !548)
!551 = !DILocalVariable(name: "x", arg: 2, scope: !548, file: !1, line: 186, type: !50)
!552 = !DILocation(line: 186, column: 58, scope: !548)
!553 = !DILocalVariable(name: "result", scope: !548, file: !1, line: 188, type: !53)
!554 = !DILocation(line: 188, column: 3, scope: !548)
!555 = !DILocalVariable(name: "status", scope: !548, file: !1, line: 188, type: !42)
!556 = !DILocation(line: 188, column: 3, scope: !557)
!557 = distinct !DILexicalBlock(scope: !548, file: !1, line: 188, column: 3)
!558 = !DILocation(line: 188, column: 3, scope: !559)
!559 = !DILexicalBlockFile(scope: !560, file: !1, discriminator: 1)
!560 = distinct !DILexicalBlock(scope: !557, file: !1, line: 188, column: 3)
!561 = distinct !{!561, !562}
!562 = !DILocation(line: 188, column: 3, scope: !560)
!563 = !DILocation(line: 188, column: 3, scope: !564)
!564 = !DILexicalBlockFile(scope: !565, file: !1, discriminator: 2)
!565 = distinct !DILexicalBlock(scope: !560, file: !1, line: 188, column: 3)
!566 = !DILocation(line: 188, column: 3, scope: !567)
!567 = !DILexicalBlockFile(scope: !560, file: !1, discriminator: 3)
!568 = !DILocation(line: 188, column: 3, scope: !569)
!569 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 4)
!570 = !DILocation(line: 189, column: 1, scope: !548)
