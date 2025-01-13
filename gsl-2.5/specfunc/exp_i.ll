; ModuleID = 'exp.ll'
source_filename = "exp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_result_e10_struct = type { double, double, i32 }

@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"exp.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_exp_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"gsl_sf_exp_mult_e(x, y, &result)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"gsl_sf_expm1_e(x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_exprel_e(x, &result)\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"gsl_sf_exprel_2_e(x, &result)\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"gsl_sf_exprel_n_e(n, x, &result)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@0 = private unnamed_addr constant [13 x i8] c"gsl_sf_exp_e\00"
@1 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@2 = private unnamed_addr constant [17 x i8] c"gsl_sf_exp_e10_e\00"
@3 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@4 = private unnamed_addr constant [18 x i8] c"gsl_sf_exp_mult_e\00"
@5 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@6 = private unnamed_addr constant [22 x i8] c"gsl_sf_exp_mult_e10_e\00"
@7 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@8 = private unnamed_addr constant [22 x i8] c"gsl_sf_exp_mult_err_e\00"
@9 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@10 = private unnamed_addr constant [26 x i8] c"gsl_sf_exp_mult_err_e10_e\00"
@11 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@12 = private unnamed_addr constant [15 x i8] c"gsl_sf_expm1_e\00"
@13 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@14 = private unnamed_addr constant [16 x i8] c"gsl_sf_exprel_e\00"
@15 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@16 = private unnamed_addr constant [18 x i8] c"gsl_sf_exprel_2_e\00"
@17 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@18 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_n_CF_e\00"
@19 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@20 = private unnamed_addr constant [12 x i8] c"exprel_n_CF\00"
@21 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@22 = private unnamed_addr constant [18 x i8] c"gsl_sf_exprel_n_e\00"
@23 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@24 = private unnamed_addr constant [17 x i8] c"gsl_sf_exp_err_e\00"
@25 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@26 = private unnamed_addr constant [21 x i8] c"gsl_sf_exp_err_e10_e\00"
@27 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@28 = private unnamed_addr constant [11 x i8] c"gsl_sf_exp\00"
@29 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@30 = private unnamed_addr constant [16 x i8] c"gsl_sf_exp_mult\00"
@31 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@32 = private unnamed_addr constant [13 x i8] c"gsl_sf_expm1\00"
@33 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@34 = private unnamed_addr constant [14 x i8] c"gsl_sf_exprel\00"
@35 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@36 = private unnamed_addr constant [16 x i8] c"gsl_sf_exprel_2\00"
@37 = private unnamed_addr constant [7 x i8] c"exp.ll\00"
@38 = private unnamed_addr constant [16 x i8] c"gsl_sf_exprel_n\00"
@39 = private unnamed_addr constant [7 x i8] c"exp.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exp_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !60, metadata !61), !dbg !62
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !63, metadata !61), !dbg !64
  %6 = load double, double* %4, align 8, !dbg !65
  %7 = fcmp ogt double %6, 0x40862E42FEFA39EF, !dbg !67
  %8 = call i1 @fCmpInstHandler(double %6, double 0x40862E42FEFA39EF, i1 %7, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94397845118624, i32 109, i32 8), !dbg !68
  br i1 %8, label %9, label %18, !dbg !68

; <label>:9:                                      ; preds = %2
  br label %10, !dbg !69, !llvm.loop !71

; <label>:10:                                     ; preds = %9
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !72
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !72
  store double 0x7FF0000000000000, double* %12, align 8, !dbg !72
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !72
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !72
  store double 0x7FF0000000000000, double* %14, align 8, !dbg !72
  br label %15, !dbg !72, !llvm.loop !75

; <label>:15:                                     ; preds = %10
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 16), !dbg !77
  store i32 16, i32* %3, align 4, !dbg !77
  br label %44, !dbg !77
                                                  ; No predecessors!
  br label %17, !dbg !80

; <label>:17:                                     ; preds = %16
  br label %44, !dbg !82

; <label>:18:                                     ; preds = %2
  %19 = load double, double* %4, align 8, !dbg !83
  %20 = fcmp olt double %19, 0xC086232BDD7ABCD2, !dbg !85
  %21 = call i1 @fCmpInstHandler(double %19, double 0xC086232BDD7ABCD2, i1 %20, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94397845132816, i32 112, i32 13), !dbg !86
  br i1 %21, label %22, label %31, !dbg !86

; <label>:22:                                     ; preds = %18
  br label %23, !dbg !87, !llvm.loop !89

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !90
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !90
  store double 0.000000e+00, double* %25, align 8, !dbg !90
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !90
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !90
  store double 0x10000000000000, double* %27, align 8, !dbg !90
  br label %28, !dbg !90, !llvm.loop !93

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 113, i32 15), !dbg !95
  store i32 15, i32* %3, align 4, !dbg !95
  br label %44, !dbg !95
                                                  ; No predecessors!
  br label %30, !dbg !98

; <label>:30:                                     ; preds = %29
  br label %43, !dbg !100

; <label>:31:                                     ; preds = %18
  %32 = load double, double* %4, align 8, !dbg !101
  %33 = call double @exp(double %32) #5, !dbg !103
  call void @callOneArgHandler(i32 11, double %32, double %33, i64 94397845141400, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94397845142080, i32 116, i32 19), !dbg !104
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !104
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !105
  store double %33, double* %35, align 8, !dbg !106
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !107
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !108
  %38 = load double, double* %37, align 8, !dbg !108
  %39 = call double @fabs(double %38) #1, !dbg !109
  %40 = fmul double 0x3CC0000000000000, %39, !dbg !110
  call void @fMulHandler(double 0x3CC0000000000000, double %39, double %40, i64 0, i64 94397845147232, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94397845147808, i32 117, i32 41), !dbg !111
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !111
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !112
  store double %40, double* %42, align 8, !dbg !113
  store i32 0, i32* %3, align 4, !dbg !114
  br label %44, !dbg !114

; <label>:43:                                     ; preds = %30
  br label %44

; <label>:44:                                     ; preds = %43, %31, %28, %17, %15
  %45 = load i32, i32* %3, align 4, !dbg !115
  ret i32 %45, !dbg !115
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exp_e10_e(double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !116 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %6 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !126, metadata !61), !dbg !127
  store %struct.gsl_sf_result_e10_struct* %1, %struct.gsl_sf_result_e10_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %5, metadata !128, metadata !61), !dbg !129
  %7 = load double, double* %4, align 8, !dbg !130
  %8 = fcmp ogt double %7, 0x41DFFFFFFF800000, !dbg !132
  %9 = call i1 @fCmpInstHandler(double %7, double 0x41DFFFFFFF800000, i1 %8, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845158816, i32 124, i32 8), !dbg !133
  br i1 %9, label %10, label %21, !dbg !133

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !134, !llvm.loop !136

; <label>:11:                                     ; preds = %10
  %12 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %5, align 8, !dbg !137
  %13 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %12, i32 0, i32 0, !dbg !137
  store double 0x7FF0000000000000, double* %13, align 8, !dbg !137
  %14 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %5, align 8, !dbg !137
  %15 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %14, i32 0, i32 1, !dbg !137
  store double 0x7FF0000000000000, double* %15, align 8, !dbg !137
  %16 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %5, align 8, !dbg !137
  %17 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %16, i32 0, i32 2, !dbg !137
  store i32 0, i32* %17, align 8, !dbg !137
  br label %18, !dbg !137, !llvm.loop !140

; <label>:18:                                     ; preds = %11
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 125, i32 16), !dbg !142
  store i32 16, i32* %3, align 4, !dbg !142
  br label %76, !dbg !142
                                                  ; No predecessors!
  br label %20, !dbg !145

; <label>:20:                                     ; preds = %19
  br label %76, !dbg !147

; <label>:21:                                     ; preds = %2
  %22 = load double, double* %4, align 8, !dbg !148
  %23 = fcmp olt double %22, 0xC1DFFFFFFFC00000, !dbg !150
  %24 = call i1 @fCmpInstHandler(double %22, double 0xC1DFFFFFFFC00000, i1 %23, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845167808, i32 127, i32 13), !dbg !151
  br i1 %24, label %25, label %36, !dbg !151

; <label>:25:                                     ; preds = %21
  br label %26, !dbg !152, !llvm.loop !154

; <label>:26:                                     ; preds = %25
  %27 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %5, align 8, !dbg !155
  %28 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %27, i32 0, i32 0, !dbg !155
  store double 0.000000e+00, double* %28, align 8, !dbg !155
  %29 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %5, align 8, !dbg !155
  %30 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %29, i32 0, i32 1, !dbg !155
  store double 0x10000000000000, double* %30, align 8, !dbg !155
  %31 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %5, align 8, !dbg !155
  %32 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %31, i32 0, i32 2, !dbg !155
  store i32 0, i32* %32, align 8, !dbg !155
  br label %33, !dbg !155, !llvm.loop !158

; <label>:33:                                     ; preds = %26
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 128, i32 15), !dbg !160
  store i32 15, i32* %3, align 4, !dbg !160
  br label %76, !dbg !160
                                                  ; No predecessors!
  br label %35, !dbg !163

; <label>:35:                                     ; preds = %34
  br label %75, !dbg !165

; <label>:36:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i32* %6, metadata !166, metadata !61), !dbg !169
  %37 = load double, double* %4, align 8, !dbg !170
  %38 = fcmp ogt double %37, 0x40862E42FEFA39EF, !dbg !171
  %39 = call i1 @fCmpInstHandler(double %37, double 0x40862E42FEFA39EF, i1 %38, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845177840, i32 131, i32 22), !dbg !172
  br i1 %39, label %44, label %40, !dbg !172

; <label>:40:                                     ; preds = %36
  %41 = load double, double* %4, align 8, !dbg !173
  %42 = fcmp olt double %41, 0xC086232BDD7ABCD2, !dbg !175
  %43 = call i1 @fCmpInstHandler(double %41, double 0xC086232BDD7ABCD2, i1 %42, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845179296, i32 131, i32 45), !dbg !176
  br i1 %43, label %44, label %49, !dbg !176

; <label>:44:                                     ; preds = %40, %36
  %45 = load double, double* %4, align 8, !dbg !177
  %46 = fdiv double %45, 0x40026BB1BBB55516, !dbg !179
  call void @fDivHandler(double %45, double 0x40026BB1BBB55516, double %46, i64 94397845180264, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845180672, i32 131, i32 79), !dbg !180
  %47 = call double @floor(double %46) #1, !dbg !180
  %48 = fptosi double %47 to i32, !dbg !181
  br label %50, !dbg !182

; <label>:49:                                     ; preds = %40
  br label %50, !dbg !183

; <label>:50:                                     ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ 0, %49 ], !dbg !185
  store i32 %51, i32* %6, align 4, !dbg !187
  %52 = load double, double* %4, align 8, !dbg !188
  %53 = load i32, i32* %6, align 4, !dbg !189
  %54 = sitofp i32 %53 to double, !dbg !189
  %55 = fmul double %54, 0x40026BB1BBB55516, !dbg !190
  call void @fMulHandler(double %54, double 0x40026BB1BBB55516, double %55, i64 94397845184728, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845186400, i32 132, i32 26), !dbg !191
  %56 = fsub double %52, %55, !dbg !191
  call void @fSubHandler(double %52, double %55, double %56, i64 94397845183960, i64 94397845186400, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845186816, i32 132, i32 24), !dbg !192
  %57 = call double @exp(double %56) #5, !dbg !192
  call void @callOneArgHandler(i32 11, double %56, double %57, i64 94397845186816, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845187296, i32 132, i32 19), !dbg !193
  %58 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %5, align 8, !dbg !193
  %59 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %58, i32 0, i32 0, !dbg !194
  store double %57, double* %59, align 8, !dbg !195
  %60 = load double, double* %4, align 8, !dbg !196
  %61 = call double @fabs(double %60) #1, !dbg !197
  %62 = fadd double %61, 1.000000e+00, !dbg !198
  call void @fAddHandler(double %61, double 1.000000e+00, double %62, i64 94397845189472, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845190048, i32 133, i32 33), !dbg !199
  %63 = fmul double 2.000000e+00, %62, !dbg !199
  call void @fMulHandler(double 2.000000e+00, double %62, double %63, i64 0, i64 94397845190048, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845190528, i32 133, i32 23), !dbg !200
  %64 = fmul double %63, 0x3CB0000000000000, !dbg !200
  call void @fMulHandler(double %63, double 0x3CB0000000000000, double %64, i64 94397845190528, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845190976, i32 133, i32 39), !dbg !201
  %65 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %5, align 8, !dbg !201
  %66 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %65, i32 0, i32 0, !dbg !202
  %67 = load double, double* %66, align 8, !dbg !202
  %68 = call double @fabs(double %67) #1, !dbg !203
  %69 = fmul double %64, %68, !dbg !204
  call void @fMulHandler(double %64, double %68, double %69, i64 94397845190976, i64 94397845193936, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0), i64 94397845195456, i32 133, i32 57), !dbg !205
  %70 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %5, align 8, !dbg !205
  %71 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %70, i32 0, i32 1, !dbg !206
  store double %69, double* %71, align 8, !dbg !207
  %72 = load i32, i32* %6, align 4, !dbg !208
  %73 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %5, align 8, !dbg !209
  %74 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %73, i32 0, i32 2, !dbg !210
  store i32 %72, i32* %74, align 8, !dbg !211
  store i32 0, i32* %3, align 4, !dbg !212
  br label %76, !dbg !212

; <label>:75:                                     ; preds = %35
  br label %76

; <label>:76:                                     ; preds = %75, %50, %33, %20, %18
  %77 = load i32, i32* %3, align 4, !dbg !213
  ret i32 %77, !dbg !213
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exp_mult_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !214 {
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
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !217, metadata !61), !dbg !218
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !219, metadata !61), !dbg !220
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !221, metadata !61), !dbg !222
  call void @llvm.dbg.declare(metadata double* %8, metadata !223, metadata !61), !dbg !224
  %18 = load double, double* %6, align 8, !dbg !225
  %19 = call double @fabs(double %18) #1, !dbg !226
  store double %19, double* %8, align 8, !dbg !224
  %20 = load double, double* %6, align 8, !dbg !227
  %21 = fcmp oeq double %20, 0.000000e+00, !dbg !229
  %22 = call i1 @fCmpInstHandler(double %20, double 0.000000e+00, i1 %21, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845213184, i32 144, i32 8), !dbg !230
  br i1 %22, label %23, label %28, !dbg !230

; <label>:23:                                     ; preds = %3
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !231
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !233
  store double 0.000000e+00, double* %25, align 8, !dbg !234
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !235
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !236
  store double 0.000000e+00, double* %27, align 8, !dbg !237
  store i32 0, i32* %4, align 4, !dbg !238
  br label %154, !dbg !238

; <label>:28:                                     ; preds = %3
  %29 = load double, double* %5, align 8, !dbg !239
  %30 = fcmp olt double %29, 0x40762E42FEFA39EF, !dbg !241
  %31 = call i1 @fCmpInstHandler(double %29, double 0x40762E42FEFA39EF, i1 %30, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845219344, i32 149, i32 18), !dbg !242
  br i1 %31, label %32, label %63, !dbg !242

; <label>:32:                                     ; preds = %28
  %33 = load double, double* %5, align 8, !dbg !243
  %34 = fcmp ogt double %33, 0xC076232BDD7ABCD2, !dbg !245
  %35 = call i1 @fCmpInstHandler(double %33, double 0xC076232BDD7ABCD2, i1 %34, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845220864, i32 149, i32 49), !dbg !246
  br i1 %35, label %36, label %63, !dbg !246

; <label>:36:                                     ; preds = %32
  %37 = load double, double* %8, align 8, !dbg !247
  %38 = fcmp olt double %37, 0x5FE9999999999999, !dbg !248
  %39 = call i1 @fCmpInstHandler(double %37, double 0x5FE9999999999999, i1 %38, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845222240, i32 150, i32 18), !dbg !249
  br i1 %39, label %40, label %63, !dbg !249

; <label>:40:                                     ; preds = %36
  %41 = load double, double* %8, align 8, !dbg !250
  %42 = fcmp ogt double %41, 0x2003333333333333, !dbg !252
  %43 = call i1 @fCmpInstHandler(double %41, double 0x2003333333333333, i1 %42, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845223616, i32 150, i32 49), !dbg !253
  br i1 %43, label %44, label %63, !dbg !253

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata double* %9, metadata !255, metadata !61), !dbg !257
  %45 = load double, double* %5, align 8, !dbg !258
  %46 = call double @exp(double %45) #5, !dbg !259
  call void @callOneArgHandler(i32 11, double %45, double %46, i64 94397845225640, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845226080, i32 152, i32 23), !dbg !257
  store double %46, double* %9, align 8, !dbg !257
  %47 = load double, double* %6, align 8, !dbg !260
  %48 = load double, double* %9, align 8, !dbg !261
  %49 = fmul double %47, %48, !dbg !262
  call void @fMulHandler(double %47, double %48, double %49, i64 94397845228216, i64 94397845228600, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845229008, i32 153, i32 21), !dbg !263
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !263
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !264
  store double %49, double* %51, align 8, !dbg !265
  %52 = load double, double* %5, align 8, !dbg !266
  %53 = call double @fabs(double %52) #1, !dbg !267
  %54 = fadd double 2.000000e+00, %53, !dbg !268
  call void @fAddHandler(double 2.000000e+00, double %53, double %54, i64 0, i64 94397845231120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845231632, i32 154, i32 24), !dbg !269
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !269
  call void @fMulHandler(double %54, double 0x3CB0000000000000, double %55, i64 94397845231632, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845232016, i32 154, i32 35), !dbg !270
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !270
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !271
  %58 = load double, double* %57, align 8, !dbg !271
  %59 = call double @fabs(double %58) #1, !dbg !272
  %60 = fmul double %55, %59, !dbg !274
  call void @fMulHandler(double %55, double %59, double %60, i64 94397845232016, i64 94397845234976, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845235456, i32 154, i32 53), !dbg !275
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !275
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !276
  store double %60, double* %62, align 8, !dbg !277
  store i32 0, i32* %4, align 4, !dbg !278
  br label %154, !dbg !278

; <label>:63:                                     ; preds = %40, %36, %32, %28
  call void @llvm.dbg.declare(metadata double* %10, metadata !279, metadata !61), !dbg !281
  %64 = load double, double* %8, align 8, !dbg !282
  %65 = call double @log(double %64) #5, !dbg !283
  call void @callOneArgHandler(i32 12, double %64, double %65, i64 94397845240216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845240928, i32 158, i32 24), !dbg !281
  store double %65, double* %10, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata double* %11, metadata !284, metadata !61), !dbg !285
  %66 = load double, double* %5, align 8, !dbg !286
  %67 = load double, double* %10, align 8, !dbg !287
  %68 = fadd double %66, %67, !dbg !288
  call void @fAddHandler(double %66, double %67, double %68, i64 94397845244264, i64 94397845244616, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845245024, i32 159, i32 26), !dbg !285
  store double %68, double* %11, align 8, !dbg !285
  %69 = load double, double* %11, align 8, !dbg !289
  %70 = fcmp ogt double %69, 0x40862E2E8418F241, !dbg !291
  %71 = call i1 @fCmpInstHandler(double %69, double 0x40862E2E8418F241, i1 %70, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845247568, i32 161, i32 12), !dbg !292
  br i1 %71, label %72, label %81, !dbg !292

; <label>:72:                                     ; preds = %63
  br label %73, !dbg !293, !llvm.loop !295

; <label>:73:                                     ; preds = %72
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !296
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !296
  store double 0x7FF0000000000000, double* %75, align 8, !dbg !296
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !296
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !296
  store double 0x7FF0000000000000, double* %77, align 8, !dbg !296
  br label %78, !dbg !296, !llvm.loop !299

; <label>:78:                                     ; preds = %73
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 162, i32 16), !dbg !301
  store i32 16, i32* %4, align 4, !dbg !301
  br label %154, !dbg !301
                                                  ; No predecessors!
  br label %80, !dbg !304

; <label>:80:                                     ; preds = %79
  br label %152, !dbg !306

; <label>:81:                                     ; preds = %63
  %82 = load double, double* %11, align 8, !dbg !307
  %83 = fcmp olt double %82, 0xC086231762997524, !dbg !309
  %84 = call i1 @fCmpInstHandler(double %82, double 0xC086231762997524, i1 %83, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845256336, i32 164, i32 17), !dbg !310
  br i1 %84, label %85, label %94, !dbg !310

; <label>:85:                                     ; preds = %81
  br label %86, !dbg !311, !llvm.loop !313

; <label>:86:                                     ; preds = %85
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !314
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !314
  store double 0.000000e+00, double* %88, align 8, !dbg !314
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !314
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !314
  store double 0x10000000000000, double* %90, align 8, !dbg !314
  br label %91, !dbg !314, !llvm.loop !317

; <label>:91:                                     ; preds = %86
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 165, i32 15), !dbg !319
  store i32 15, i32* %4, align 4, !dbg !319
  br label %154, !dbg !319
                                                  ; No predecessors!
  br label %93, !dbg !322

; <label>:93:                                     ; preds = %92
  br label %151, !dbg !324

; <label>:94:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata double* %12, metadata !325, metadata !61), !dbg !327
  %95 = load double, double* %6, align 8, !dbg !328
  %96 = fcmp oge double %95, 0.000000e+00, !dbg !328
  %97 = call i1 @fCmpInstHandler(double %95, double 0.000000e+00, i1 %96, i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845266128, i32 168, i32 27), !dbg !328
  %98 = select i1 %97, i32 1, i32 -1, !dbg !328
  %99 = sitofp i32 %98 to double, !dbg !328
  store double %99, double* %12, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata double* %13, metadata !329, metadata !61), !dbg !330
  %100 = load double, double* %5, align 8, !dbg !331
  %101 = call double @floor(double %100) #1, !dbg !332
  store double %101, double* %13, align 8, !dbg !330
  call void @llvm.dbg.declare(metadata double* %14, metadata !333, metadata !61), !dbg !334
  %102 = load double, double* %10, align 8, !dbg !335
  %103 = call double @floor(double %102) #1, !dbg !336
  store double %103, double* %14, align 8, !dbg !334
  call void @llvm.dbg.declare(metadata double* %15, metadata !337, metadata !61), !dbg !338
  %104 = load double, double* %5, align 8, !dbg !339
  %105 = load double, double* %13, align 8, !dbg !340
  %106 = fsub double %104, %105, !dbg !341
  call void @fSubHandler(double %104, double %105, double %106, i64 94397845278280, i64 94397845278632, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845279040, i32 171, i32 30), !dbg !338
  store double %106, double* %15, align 8, !dbg !338
  call void @llvm.dbg.declare(metadata double* %16, metadata !342, metadata !61), !dbg !343
  %107 = load double, double* %10, align 8, !dbg !344
  %108 = load double, double* %14, align 8, !dbg !345
  %109 = fsub double %107, %108, !dbg !346
  call void @fSubHandler(double %107, double %108, double %109, i64 94397845282232, i64 94397845282584, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845282992, i32 172, i32 30), !dbg !343
  store double %109, double* %16, align 8, !dbg !343
  call void @llvm.dbg.declare(metadata double* %17, metadata !347, metadata !61), !dbg !348
  %110 = load double, double* %10, align 8, !dbg !349
  %111 = call double @fabs(double %110) #1, !dbg !350
  %112 = load double, double* %14, align 8, !dbg !351
  %113 = call double @fabs(double %112) #1, !dbg !352
  %114 = fadd double %111, %113, !dbg !354
  call void @fAddHandler(double %111, double %113, double %114, i64 94397845286624, i64 94397845287552, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845288032, i32 173, i32 61), !dbg !355
  %115 = fmul double 0x3CC0000000000000, %114, !dbg !355
  call void @fMulHandler(double 0x3CC0000000000000, double %114, double %115, i64 0, i64 94397845288032, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845288448, i32 173, i32 49), !dbg !348
  store double %115, double* %17, align 8, !dbg !348
  %116 = load double, double* %12, align 8, !dbg !356
  %117 = load double, double* %13, align 8, !dbg !357
  %118 = load double, double* %14, align 8, !dbg !358
  %119 = fadd double %117, %118, !dbg !359
  call void @fAddHandler(double %117, double %118, double %119, i64 94397845290904, i64 94397845291288, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845291696, i32 174, i32 32), !dbg !360
  %120 = call double @exp(double %119) #5, !dbg !360
  call void @callOneArgHandler(i32 11, double %119, double %120, i64 94397845291696, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845292176, i32 174, i32 27), !dbg !361
  %121 = fmul double %116, %120, !dbg !361
  call void @fMulHandler(double %116, double %120, double %121, i64 94397845290520, i64 94397845292176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845292656, i32 174, i32 25), !dbg !362
  %122 = load double, double* %15, align 8, !dbg !362
  %123 = load double, double* %16, align 8, !dbg !363
  %124 = fadd double %122, %123, !dbg !364
  call void @fAddHandler(double %122, double %123, double %124, i64 94397845293048, i64 94397845293432, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845293840, i32 174, i32 43), !dbg !365
  %125 = call double @exp(double %124) #5, !dbg !365
  call void @callOneArgHandler(i32 11, double %124, double %125, i64 94397845293840, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845294320, i32 174, i32 38), !dbg !366
  %126 = fmul double %121, %125, !dbg !366
  call void @fMulHandler(double %121, double %125, double %126, i64 94397845292656, i64 94397845294320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845294800, i32 174, i32 36), !dbg !367
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !367
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 0, !dbg !368
  store double %126, double* %128, align 8, !dbg !369
  %129 = load double, double* %17, align 8, !dbg !370
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !371
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 0, !dbg !372
  %132 = load double, double* %131, align 8, !dbg !372
  %133 = call double @fabs(double %132) #1, !dbg !373
  %134 = fmul double %129, %133, !dbg !374
  call void @fMulHandler(double %129, double %133, double %134, i64 94397845296440, i64 94397845299392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845299872, i32 175, i32 27), !dbg !375
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !375
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 1, !dbg !376
  store double %134, double* %136, align 8, !dbg !377
  %137 = load double, double* %13, align 8, !dbg !378
  %138 = load double, double* %14, align 8, !dbg !379
  %139 = fadd double %137, %138, !dbg !380
  call void @fAddHandler(double %137, double %138, double %139, i64 94397845303576, i64 94397845303960, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845304368, i32 176, i32 49), !dbg !381
  %140 = fadd double %139, 1.000000e+00, !dbg !381
  call void @fAddHandler(double %139, double 1.000000e+00, double %140, i64 94397845304368, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845304816, i32 176, i32 53), !dbg !382
  %141 = fmul double 0x3CC0000000000000, %140, !dbg !382
  call void @fMulHandler(double 0x3CC0000000000000, double %140, double %141, i64 0, i64 94397845304816, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845305200, i32 176, i32 44), !dbg !383
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !383
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 0, !dbg !384
  %144 = load double, double* %143, align 8, !dbg !384
  %145 = call double @fabs(double %144) #1, !dbg !385
  %146 = fmul double %141, %145, !dbg !386
  call void @fMulHandler(double %141, double %145, double %146, i64 94397845305200, i64 94397845308160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845308640, i32 176, i32 60), !dbg !387
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !387
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 1, !dbg !388
  %149 = load double, double* %148, align 8, !dbg !389
  %150 = fadd double %149, %146, !dbg !389
  call void @fAddHandler(double %149, double %146, double %150, i64 94397845309864, i64 94397845308640, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94397845310272, i32 176, i32 19), !dbg !389
  store double %150, double* %148, align 8, !dbg !389
  store i32 0, i32* %4, align 4, !dbg !390
  br label %154, !dbg !390

; <label>:151:                                    ; preds = %93
  br label %152

; <label>:152:                                    ; preds = %151, %80
  br label %153

; <label>:153:                                    ; preds = %152
  br label %154

; <label>:154:                                    ; preds = %153, %94, %91, %78, %44, %23
  %155 = load i32, i32* %4, align 4, !dbg !391
  ret i32 %155, !dbg !391
}

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exp_mult_e10_e(double, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !392 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !395, metadata !61), !dbg !396
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !397, metadata !61), !dbg !398
  store %struct.gsl_sf_result_e10_struct* %2, %struct.gsl_sf_result_e10_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %7, metadata !399, metadata !61), !dbg !400
  call void @llvm.dbg.declare(metadata double* %8, metadata !401, metadata !61), !dbg !402
  %16 = load double, double* %6, align 8, !dbg !403
  %17 = call double @fabs(double %16) #1, !dbg !404
  store double %17, double* %8, align 8, !dbg !402
  %18 = load double, double* %6, align 8, !dbg !405
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !407
  %20 = call i1 @fCmpInstHandler(double %18, double 0.000000e+00, i1 %19, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845324384, i32 187, i32 8), !dbg !408
  br i1 %20, label %21, label %28, !dbg !408

; <label>:21:                                     ; preds = %3
  %22 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !409
  %23 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %22, i32 0, i32 0, !dbg !411
  store double 0.000000e+00, double* %23, align 8, !dbg !412
  %24 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !413
  %25 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %24, i32 0, i32 1, !dbg !414
  store double 0.000000e+00, double* %25, align 8, !dbg !415
  %26 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !416
  %27 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %26, i32 0, i32 2, !dbg !417
  store i32 0, i32* %27, align 8, !dbg !418
  store i32 0, i32* %4, align 4, !dbg !419
  br label %155, !dbg !419

; <label>:28:                                     ; preds = %3
  %29 = load double, double* %5, align 8, !dbg !420
  %30 = fcmp olt double %29, 0x40762E42FEFA39EF, !dbg !422
  %31 = call i1 @fCmpInstHandler(double %29, double 0x40762E42FEFA39EF, i1 %30, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845331728, i32 193, i32 18), !dbg !423
  br i1 %31, label %32, label %65, !dbg !423

; <label>:32:                                     ; preds = %28
  %33 = load double, double* %5, align 8, !dbg !424
  %34 = fcmp ogt double %33, 0xC076232BDD7ABCD2, !dbg !426
  %35 = call i1 @fCmpInstHandler(double %33, double 0xC076232BDD7ABCD2, i1 %34, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845333184, i32 193, i32 49), !dbg !427
  br i1 %35, label %36, label %65, !dbg !427

; <label>:36:                                     ; preds = %32
  %37 = load double, double* %8, align 8, !dbg !428
  %38 = fcmp olt double %37, 0x5FE9999999999999, !dbg !429
  %39 = call i1 @fCmpInstHandler(double %37, double 0x5FE9999999999999, i1 %38, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845334496, i32 194, i32 18), !dbg !430
  br i1 %39, label %40, label %65, !dbg !430

; <label>:40:                                     ; preds = %36
  %41 = load double, double* %8, align 8, !dbg !431
  %42 = fcmp ogt double %41, 0x2003333333333333, !dbg !433
  %43 = call i1 @fCmpInstHandler(double %41, double 0x2003333333333333, i1 %42, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845335808, i32 194, i32 49), !dbg !434
  br i1 %43, label %44, label %65, !dbg !434

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata double* %9, metadata !436, metadata !61), !dbg !438
  %45 = load double, double* %5, align 8, !dbg !439
  %46 = call double @exp(double %45) #5, !dbg !440
  call void @callOneArgHandler(i32 11, double %45, double %46, i64 94397845337832, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845338272, i32 196, i32 23), !dbg !438
  store double %46, double* %9, align 8, !dbg !438
  %47 = load double, double* %6, align 8, !dbg !441
  %48 = load double, double* %9, align 8, !dbg !442
  %49 = fmul double %47, %48, !dbg !443
  call void @fMulHandler(double %47, double %48, double %49, i64 94397845340408, i64 94397845340792, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845341200, i32 197, i32 21), !dbg !444
  %50 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !444
  %51 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %50, i32 0, i32 0, !dbg !445
  store double %49, double* %51, align 8, !dbg !446
  %52 = load double, double* %5, align 8, !dbg !447
  %53 = call double @fabs(double %52) #1, !dbg !448
  %54 = fadd double 2.000000e+00, %53, !dbg !449
  call void @fAddHandler(double 2.000000e+00, double %53, double %54, i64 0, i64 94397845343312, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845343824, i32 198, i32 24), !dbg !450
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !450
  call void @fMulHandler(double %54, double 0x3CB0000000000000, double %55, i64 94397845343824, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845344208, i32 198, i32 35), !dbg !451
  %56 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !451
  %57 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %56, i32 0, i32 0, !dbg !452
  %58 = load double, double* %57, align 8, !dbg !452
  %59 = call double @fabs(double %58) #1, !dbg !453
  %60 = fmul double %55, %59, !dbg !455
  call void @fMulHandler(double %55, double %59, double %60, i64 94397845344208, i64 94397845347168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845347648, i32 198, i32 53), !dbg !456
  %61 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !456
  %62 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %61, i32 0, i32 1, !dbg !457
  store double %60, double* %62, align 8, !dbg !458
  %63 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !459
  %64 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %63, i32 0, i32 2, !dbg !460
  store i32 0, i32* %64, align 8, !dbg !461
  store i32 0, i32* %4, align 4, !dbg !462
  br label %155, !dbg !462

; <label>:65:                                     ; preds = %40, %36, %32, %28
  call void @llvm.dbg.declare(metadata double* %10, metadata !463, metadata !61), !dbg !465
  %66 = load double, double* %8, align 8, !dbg !466
  %67 = call double @log(double %66) #5, !dbg !467
  call void @callOneArgHandler(i32 12, double %66, double %67, i64 94397845355720, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845356160, i32 203, i32 24), !dbg !465
  store double %67, double* %10, align 8, !dbg !465
  call void @llvm.dbg.declare(metadata double* %11, metadata !468, metadata !61), !dbg !469
  %68 = load double, double* %5, align 8, !dbg !470
  %69 = load double, double* %10, align 8, !dbg !471
  %70 = fadd double %68, %69, !dbg !472
  call void @fAddHandler(double %68, double %69, double %70, i64 94397845359416, i64 94397845359768, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845360176, i32 204, i32 31), !dbg !473
  %71 = fdiv double %70, 0x40026BB1BBB55516, !dbg !473
  call void @fDivHandler(double %70, double 0x40026BB1BBB55516, double %71, i64 94397845360176, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845360592, i32 204, i32 36), !dbg !469
  store double %71, double* %11, align 8, !dbg !469
  %72 = load double, double* %11, align 8, !dbg !474
  %73 = fcmp ogt double %72, 0x41DFFFFFFF800000, !dbg !476
  %74 = call i1 @fCmpInstHandler(double %72, double 0x41DFFFFFFF800000, i1 %73, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845363072, i32 206, i32 16), !dbg !477
  br i1 %74, label %75, label %86, !dbg !477

; <label>:75:                                     ; preds = %65
  br label %76, !dbg !478, !llvm.loop !480

; <label>:76:                                     ; preds = %75
  %77 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !481
  %78 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %77, i32 0, i32 0, !dbg !481
  store double 0x7FF0000000000000, double* %78, align 8, !dbg !481
  %79 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !481
  %80 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %79, i32 0, i32 1, !dbg !481
  store double 0x7FF0000000000000, double* %80, align 8, !dbg !481
  %81 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !481
  %82 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %81, i32 0, i32 2, !dbg !481
  store i32 0, i32* %82, align 8, !dbg !481
  br label %83, !dbg !481, !llvm.loop !484

; <label>:83:                                     ; preds = %76
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 207, i32 16), !dbg !486
  store i32 16, i32* %4, align 4, !dbg !486
  br label %155, !dbg !486
                                                  ; No predecessors!
  br label %85, !dbg !489

; <label>:85:                                     ; preds = %84
  br label %153, !dbg !491

; <label>:86:                                     ; preds = %65
  %87 = load double, double* %11, align 8, !dbg !492
  %88 = fcmp olt double %87, 0xC1DFFFFFFFC00000, !dbg !494
  %89 = call i1 @fCmpInstHandler(double %87, double 0xC1DFFFFFFFC00000, i1 %88, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845372160, i32 209, i32 21), !dbg !495
  br i1 %89, label %90, label %101, !dbg !495

; <label>:90:                                     ; preds = %86
  br label %91, !dbg !496, !llvm.loop !498

; <label>:91:                                     ; preds = %90
  %92 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !499
  %93 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %92, i32 0, i32 0, !dbg !499
  store double 0.000000e+00, double* %93, align 8, !dbg !499
  %94 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !499
  %95 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %94, i32 0, i32 1, !dbg !499
  store double 0x10000000000000, double* %95, align 8, !dbg !499
  %96 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !499
  %97 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %96, i32 0, i32 2, !dbg !499
  store i32 0, i32* %97, align 8, !dbg !499
  br label %98, !dbg !499, !llvm.loop !502

; <label>:98:                                     ; preds = %91
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 210, i32 15), !dbg !504
  store i32 15, i32* %4, align 4, !dbg !504
  br label %155, !dbg !504
                                                  ; No predecessors!
  br label %100, !dbg !507

; <label>:100:                                    ; preds = %99
  br label %152, !dbg !509

; <label>:101:                                    ; preds = %86
  call void @llvm.dbg.declare(metadata double* %12, metadata !510, metadata !61), !dbg !512
  %102 = load double, double* %6, align 8, !dbg !513
  %103 = fcmp oge double %102, 0.000000e+00, !dbg !513
  %104 = call i1 @fCmpInstHandler(double %102, double 0.000000e+00, i1 %103, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845382336, i32 213, i32 26), !dbg !513
  %105 = select i1 %104, i32 1, i32 -1, !dbg !513
  %106 = sitofp i32 %105 to double, !dbg !513
  store double %106, double* %12, align 8, !dbg !512
  call void @llvm.dbg.declare(metadata i32* %13, metadata !514, metadata !61), !dbg !515
  %107 = load double, double* %11, align 8, !dbg !516
  %108 = call double @floor(double %107) #1, !dbg !517
  %109 = fptosi double %108 to i32, !dbg !518
  store i32 %109, i32* %13, align 4, !dbg !515
  call void @llvm.dbg.declare(metadata double* %14, metadata !519, metadata !61), !dbg !520
  %110 = load double, double* %11, align 8, !dbg !521
  %111 = load i32, i32* %13, align 4, !dbg !522
  %112 = sitofp i32 %111 to double, !dbg !522
  %113 = fsub double %110, %112, !dbg !523
  call void @fSubHandler(double %110, double %112, double %113, i64 94397845391112, i64 94397845391848, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845393520, i32 215, i32 39), !dbg !524
  %114 = fmul double %113, 0x40026BB1BBB55516, !dbg !524
  call void @fMulHandler(double %113, double 0x40026BB1BBB55516, double %114, i64 94397845393520, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845393936, i32 215, i32 44), !dbg !520
  store double %114, double* %14, align 8, !dbg !520
  call void @llvm.dbg.declare(metadata double* %15, metadata !525, metadata !61), !dbg !526
  %115 = load double, double* %5, align 8, !dbg !527
  %116 = call double @fabs(double %115) #1, !dbg !528
  %117 = load double, double* %10, align 8, !dbg !529
  %118 = call double @fabs(double %117) #1, !dbg !530
  %119 = fadd double %116, %118, !dbg !532
  call void @fAddHandler(double %116, double %118, double %119, i64 94397845397568, i64 94397845398496, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845398976, i32 216, i32 63), !dbg !533
  %120 = load i32, i32* %13, align 4, !dbg !533
  %121 = sitofp i32 %120 to double, !dbg !533
  %122 = call double @fabs(double %121) #1, !dbg !534
  %123 = fmul double 0x40026BB1BBB55516, %122, !dbg !536
  call void @fMulHandler(double 0x40026BB1BBB55516, double %122, double %123, i64 0, i64 94397845401488, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845401968, i32 216, i32 82), !dbg !537
  %124 = fadd double %119, %123, !dbg !537
  call void @fAddHandler(double %119, double %123, double %124, i64 94397845398976, i64 94397845401968, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845402384, i32 216, i32 74), !dbg !538
  %125 = fmul double 0x3CC0000000000000, %124, !dbg !538
  call void @fMulHandler(double 0x3CC0000000000000, double %124, double %125, i64 0, i64 94397845402384, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845402800, i32 216, i32 52), !dbg !526
  store double %125, double* %15, align 8, !dbg !526
  %126 = load double, double* %12, align 8, !dbg !539
  %127 = load double, double* %14, align 8, !dbg !540
  %128 = call double @exp(double %127) #5, !dbg !541
  call void @callOneArgHandler(i32 11, double %127, double %128, i64 94397845405256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845405728, i32 218, i32 27), !dbg !542
  %129 = fmul double %126, %128, !dbg !542
  call void @fMulHandler(double %126, double %128, double %129, i64 94397845404872, i64 94397845405728, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845406208, i32 218, i32 25), !dbg !543
  %130 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !543
  %131 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %130, i32 0, i32 0, !dbg !544
  store double %129, double* %131, align 8, !dbg !545
  %132 = load double, double* %15, align 8, !dbg !546
  %133 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !547
  %134 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %133, i32 0, i32 0, !dbg !548
  %135 = load double, double* %134, align 8, !dbg !548
  %136 = call double @fabs(double %135) #1, !dbg !549
  %137 = fmul double %132, %136, !dbg !550
  call void @fMulHandler(double %132, double %136, double %137, i64 94397845407848, i64 94397845410800, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845413344, i32 219, i32 30), !dbg !551
  %138 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !551
  %139 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %138, i32 0, i32 1, !dbg !552
  store double %137, double* %139, align 8, !dbg !553
  %140 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !554
  %141 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %140, i32 0, i32 0, !dbg !555
  %142 = load double, double* %141, align 8, !dbg !555
  %143 = call double @fabs(double %142) #1, !dbg !556
  %144 = fmul double 0x3CC0000000000000, %143, !dbg !557
  call void @fMulHandler(double 0x3CC0000000000000, double %143, double %144, i64 0, i64 94397845417552, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845418032, i32 220, i32 44), !dbg !558
  %145 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !558
  %146 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %145, i32 0, i32 1, !dbg !559
  %147 = load double, double* %146, align 8, !dbg !560
  %148 = fadd double %147, %144, !dbg !560
  call void @fAddHandler(double %147, double %144, double %148, i64 94397845419256, i64 94397845418032, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94397845419664, i32 220, i32 19), !dbg !560
  store double %148, double* %146, align 8, !dbg !560
  %149 = load i32, i32* %13, align 4, !dbg !561
  %150 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !562
  %151 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %150, i32 0, i32 2, !dbg !563
  store i32 %149, i32* %151, align 8, !dbg !564
  store i32 0, i32* %4, align 4, !dbg !565
  br label %155, !dbg !565

; <label>:152:                                    ; preds = %100
  br label %153

; <label>:153:                                    ; preds = %152, %85
  br label %154

; <label>:154:                                    ; preds = %153
  br label %155

; <label>:155:                                    ; preds = %154, %101, %98, %83, %44, %21
  %156 = load i32, i32* %4, align 4, !dbg !566
  ret i32 %156, !dbg !566
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !567 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
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
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !570, metadata !61), !dbg !571
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !572, metadata !61), !dbg !573
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !574, metadata !61), !dbg !575
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !576, metadata !61), !dbg !577
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !578, metadata !61), !dbg !579
  call void @llvm.dbg.declare(metadata double* %12, metadata !580, metadata !61), !dbg !581
  %23 = load double, double* %9, align 8, !dbg !582
  %24 = call double @fabs(double %23) #1, !dbg !583
  store double %24, double* %12, align 8, !dbg !581
  %25 = load double, double* %9, align 8, !dbg !584
  %26 = fcmp oeq double %25, 0.000000e+00, !dbg !586
  %27 = call i1 @fCmpInstHandler(double %25, double 0.000000e+00, i1 %26, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845438448, i32 235, i32 8), !dbg !587
  br i1 %27, label %28, label %38, !dbg !587

; <label>:28:                                     ; preds = %5
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !588
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !590
  store double 0.000000e+00, double* %30, align 8, !dbg !591
  %31 = load double, double* %10, align 8, !dbg !592
  %32 = load double, double* %7, align 8, !dbg !593
  %33 = call double @exp(double %32) #5, !dbg !594
  call void @callOneArgHandler(i32 11, double %32, double %33, i64 94397845441128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845441600, i32 237, i32 29), !dbg !595
  %34 = fmul double %31, %33, !dbg !595
  call void @fMulHandler(double %31, double %33, double %34, i64 94397845440744, i64 94397845441600, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845442080, i32 237, i32 27), !dbg !596
  %35 = call double @fabs(double %34) #1, !dbg !596
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !598
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !599
  store double %35, double* %37, align 8, !dbg !600
  store i32 0, i32* %6, align 4, !dbg !601
  br label %176, !dbg !601

; <label>:38:                                     ; preds = %5
  %39 = load double, double* %7, align 8, !dbg !602
  %40 = fcmp olt double %39, 0x40762E42FEFA39EF, !dbg !604
  %41 = call i1 @fCmpInstHandler(double %39, double 0x40762E42FEFA39EF, i1 %40, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845446816, i32 240, i32 18), !dbg !605
  br i1 %41, label %42, label %82, !dbg !605

; <label>:42:                                     ; preds = %38
  %43 = load double, double* %7, align 8, !dbg !606
  %44 = fcmp ogt double %43, 0xC076232BDD7ABCD2, !dbg !608
  %45 = call i1 @fCmpInstHandler(double %43, double 0xC076232BDD7ABCD2, i1 %44, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845448272, i32 240, i32 49), !dbg !609
  br i1 %45, label %46, label %82, !dbg !609

; <label>:46:                                     ; preds = %42
  %47 = load double, double* %12, align 8, !dbg !610
  %48 = fcmp olt double %47, 0x5FE9999999999999, !dbg !611
  %49 = call i1 @fCmpInstHandler(double %47, double 0x5FE9999999999999, i1 %48, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845449584, i32 241, i32 18), !dbg !612
  br i1 %49, label %50, label %82, !dbg !612

; <label>:50:                                     ; preds = %46
  %51 = load double, double* %12, align 8, !dbg !613
  %52 = fcmp ogt double %51, 0x2003333333333333, !dbg !615
  %53 = call i1 @fCmpInstHandler(double %51, double 0x2003333333333333, i1 %52, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845450896, i32 241, i32 49), !dbg !616
  br i1 %53, label %54, label %82, !dbg !616

; <label>:54:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata double* %13, metadata !618, metadata !61), !dbg !620
  %55 = load double, double* %7, align 8, !dbg !621
  %56 = call double @exp(double %55) #5, !dbg !622
  call void @callOneArgHandler(i32 11, double %55, double %56, i64 94397845452920, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845453360, i32 243, i32 17), !dbg !620
  store double %56, double* %13, align 8, !dbg !620
  %57 = load double, double* %9, align 8, !dbg !623
  %58 = load double, double* %13, align 8, !dbg !624
  %59 = fmul double %57, %58, !dbg !625
  call void @fMulHandler(double %57, double %58, double %59, i64 94397845455496, i64 94397845455880, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845456288, i32 244, i32 22), !dbg !626
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !626
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !627
  store double %59, double* %61, align 8, !dbg !628
  %62 = load double, double* %13, align 8, !dbg !629
  %63 = load double, double* %10, align 8, !dbg !630
  %64 = call double @fabs(double %63) #1, !dbg !631
  %65 = load double, double* %9, align 8, !dbg !632
  %66 = load double, double* %8, align 8, !dbg !633
  %67 = fmul double %65, %66, !dbg !634
  call void @fMulHandler(double %65, double %66, double %67, i64 94397845459240, i64 94397845459624, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845460032, i32 245, i32 43), !dbg !635
  %68 = call double @fabs(double %67) #1, !dbg !635
  %69 = fadd double %64, %68, !dbg !637
  call void @fAddHandler(double %64, double %68, double %69, i64 94397845458784, i64 94397845460512, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845460992, i32 245, i32 35), !dbg !638
  %70 = fmul double %62, %69, !dbg !638
  call void @fMulHandler(double %62, double %69, double %70, i64 94397845457928, i64 94397845460992, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845461408, i32 245, i32 23), !dbg !639
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !639
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !640
  store double %70, double* %72, align 8, !dbg !641
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !642
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !643
  %75 = load double, double* %74, align 8, !dbg !643
  %76 = call double @fabs(double %75) #1, !dbg !644
  %77 = fmul double 0x3CC0000000000000, %76, !dbg !645
  call void @fMulHandler(double 0x3CC0000000000000, double %76, double %77, i64 0, i64 94397845465616, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845466096, i32 246, i32 42), !dbg !646
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !646
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !647
  %80 = load double, double* %79, align 8, !dbg !648
  %81 = fadd double %80, %77, !dbg !648
  call void @fAddHandler(double %80, double %77, double %81, i64 94397845467320, i64 94397845466096, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845467728, i32 246, i32 17), !dbg !648
  store double %81, double* %79, align 8, !dbg !648
  store i32 0, i32* %6, align 4, !dbg !649
  br label %176, !dbg !649

; <label>:82:                                     ; preds = %50, %46, %42, %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !650, metadata !61), !dbg !652
  %83 = load double, double* %12, align 8, !dbg !653
  %84 = call double @log(double %83) #5, !dbg !654
  call void @callOneArgHandler(i32 12, double %83, double %84, i64 94397845472632, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845473072, i32 250, i32 24), !dbg !652
  store double %84, double* %14, align 8, !dbg !652
  call void @llvm.dbg.declare(metadata double* %15, metadata !655, metadata !61), !dbg !656
  %85 = load double, double* %7, align 8, !dbg !657
  %86 = load double, double* %14, align 8, !dbg !658
  %87 = fadd double %85, %86, !dbg !659
  call void @fAddHandler(double %85, double %86, double %87, i64 94397845476328, i64 94397845476680, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845477088, i32 251, i32 26), !dbg !656
  store double %87, double* %15, align 8, !dbg !656
  %88 = load double, double* %15, align 8, !dbg !660
  %89 = fcmp ogt double %88, 0x40862E2E8418F241, !dbg !662
  %90 = call i1 @fCmpInstHandler(double %88, double 0x40862E2E8418F241, i1 %89, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845479568, i32 253, i32 12), !dbg !663
  br i1 %90, label %91, label %100, !dbg !663

; <label>:91:                                     ; preds = %82
  br label %92, !dbg !664, !llvm.loop !666

; <label>:92:                                     ; preds = %91
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !667
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !667
  store double 0x7FF0000000000000, double* %94, align 8, !dbg !667
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !667
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !667
  store double 0x7FF0000000000000, double* %96, align 8, !dbg !667
  br label %97, !dbg !667, !llvm.loop !670

; <label>:97:                                     ; preds = %92
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 254, i32 16), !dbg !672
  store i32 16, i32* %6, align 4, !dbg !672
  br label %176, !dbg !672
                                                  ; No predecessors!
  br label %99, !dbg !675

; <label>:99:                                     ; preds = %98
  br label %174, !dbg !677

; <label>:100:                                    ; preds = %82
  %101 = load double, double* %15, align 8, !dbg !678
  %102 = fcmp olt double %101, 0xC086231762997524, !dbg !680
  %103 = call i1 @fCmpInstHandler(double %101, double 0xC086231762997524, i1 %102, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845488272, i32 256, i32 17), !dbg !681
  br i1 %103, label %104, label %113, !dbg !681

; <label>:104:                                    ; preds = %100
  br label %105, !dbg !682, !llvm.loop !684

; <label>:105:                                    ; preds = %104
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !685
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !685
  store double 0.000000e+00, double* %107, align 8, !dbg !685
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !685
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !685
  store double 0x10000000000000, double* %109, align 8, !dbg !685
  br label %110, !dbg !685, !llvm.loop !688

; <label>:110:                                    ; preds = %105
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 257, i32 15), !dbg !690
  store i32 15, i32* %6, align 4, !dbg !690
  br label %176, !dbg !690
                                                  ; No predecessors!
  br label %112, !dbg !693

; <label>:112:                                    ; preds = %111
  br label %173, !dbg !695

; <label>:113:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata double* %16, metadata !696, metadata !61), !dbg !698
  %114 = load double, double* %9, align 8, !dbg !699
  %115 = fcmp oge double %114, 0.000000e+00, !dbg !699
  %116 = call i1 @fCmpInstHandler(double %114, double 0.000000e+00, i1 %115, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845498064, i32 260, i32 26), !dbg !699
  %117 = select i1 %116, i32 1, i32 -1, !dbg !699
  %118 = sitofp i32 %117 to double, !dbg !699
  store double %118, double* %16, align 8, !dbg !698
  call void @llvm.dbg.declare(metadata double* %17, metadata !700, metadata !61), !dbg !701
  %119 = load double, double* %7, align 8, !dbg !702
  %120 = call double @floor(double %119) #1, !dbg !703
  store double %120, double* %17, align 8, !dbg !701
  call void @llvm.dbg.declare(metadata double* %18, metadata !704, metadata !61), !dbg !705
  %121 = load double, double* %14, align 8, !dbg !706
  %122 = call double @floor(double %121) #1, !dbg !707
  store double %122, double* %18, align 8, !dbg !705
  call void @llvm.dbg.declare(metadata double* %19, metadata !708, metadata !61), !dbg !709
  %123 = load double, double* %7, align 8, !dbg !710
  %124 = load double, double* %17, align 8, !dbg !711
  %125 = fsub double %123, %124, !dbg !712
  call void @fSubHandler(double %123, double %124, double %125, i64 94397845510152, i64 94397845510504, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845510912, i32 263, i32 29), !dbg !709
  store double %125, double* %19, align 8, !dbg !709
  call void @llvm.dbg.declare(metadata double* %20, metadata !713, metadata !61), !dbg !714
  %126 = load double, double* %14, align 8, !dbg !715
  %127 = load double, double* %18, align 8, !dbg !716
  %128 = fsub double %126, %127, !dbg !717
  call void @fSubHandler(double %126, double %127, double %128, i64 94397845514104, i64 94397845514456, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845514864, i32 264, i32 29), !dbg !714
  store double %128, double* %20, align 8, !dbg !714
  call void @llvm.dbg.declare(metadata double* %21, metadata !718, metadata !61), !dbg !719
  %129 = load double, double* %17, align 8, !dbg !720
  %130 = load double, double* %18, align 8, !dbg !721
  %131 = fadd double %129, %130, !dbg !722
  call void @fAddHandler(double %129, double %130, double %131, i64 94397845518056, i64 94397845518408, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845518816, i32 265, i32 31), !dbg !723
  %132 = call double @exp(double %131) #5, !dbg !723
  call void @callOneArgHandler(i32 11, double %131, double %132, i64 94397845518816, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845519296, i32 265, i32 26), !dbg !719
  store double %132, double* %21, align 8, !dbg !719
  call void @llvm.dbg.declare(metadata double* %22, metadata !724, metadata !61), !dbg !725
  %133 = load double, double* %19, align 8, !dbg !726
  %134 = load double, double* %20, align 8, !dbg !727
  %135 = fadd double %133, %134, !dbg !728
  call void @fAddHandler(double %133, double %134, double %135, i64 94397845522552, i64 94397845522904, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845523312, i32 266, i32 31), !dbg !729
  %136 = call double @exp(double %135) #5, !dbg !729
  call void @callOneArgHandler(i32 11, double %135, double %136, i64 94397845523312, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845523792, i32 266, i32 26), !dbg !725
  store double %136, double* %22, align 8, !dbg !725
  %137 = load double, double* %16, align 8, !dbg !730
  %138 = load double, double* %21, align 8, !dbg !731
  %139 = fmul double %137, %138, !dbg !732
  call void @fMulHandler(double %137, double %138, double %139, i64 94397845527992, i64 94397845528376, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845528784, i32 267, i32 25), !dbg !733
  %140 = load double, double* %22, align 8, !dbg !733
  %141 = fmul double %139, %140, !dbg !734
  call void @fMulHandler(double %139, double %140, double %141, i64 94397845528784, i64 94397845529176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845529584, i32 267, i32 31), !dbg !735
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !735
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 0, !dbg !736
  store double %141, double* %143, align 8, !dbg !737
  %144 = load double, double* %21, align 8, !dbg !738
  %145 = load double, double* %22, align 8, !dbg !739
  %146 = fmul double %144, %145, !dbg !740
  call void @fMulHandler(double %144, double %145, double %146, i64 94397845531224, i64 94397845531608, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845532016, i32 268, i32 26), !dbg !741
  %147 = fmul double %146, 2.000000e+00, !dbg !741
  call void @fMulHandler(double %146, double 2.000000e+00, double %147, i64 94397845532016, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845532464, i32 268, i32 32), !dbg !742
  %148 = fmul double %147, 0x3CB0000000000000, !dbg !742
  call void @fMulHandler(double %147, double 0x3CB0000000000000, double %148, i64 94397845532464, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845532848, i32 268, i32 37), !dbg !743
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !743
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 1, !dbg !744
  store double %148, double* %150, align 8, !dbg !745
  %151 = load double, double* %21, align 8, !dbg !746
  %152 = load double, double* %22, align 8, !dbg !747
  %153 = fmul double %151, %152, !dbg !748
  call void @fMulHandler(double %151, double %152, double %153, i64 94397845534488, i64 94397845534872, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845535280, i32 269, i32 26), !dbg !749
  %154 = load double, double* %10, align 8, !dbg !749
  %155 = load double, double* %9, align 8, !dbg !750
  %156 = fdiv double %154, %155, !dbg !751
  call void @fDivHandler(double %154, double %155, double %156, i64 94397845535672, i64 94397845536056, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845536464, i32 269, i32 41), !dbg !752
  %157 = call double @fabs(double %156) #1, !dbg !752
  %158 = fmul double %153, %157, !dbg !753
  call void @fMulHandler(double %153, double %157, double %158, i64 94397845535280, i64 94397845536944, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845537424, i32 269, i32 32), !dbg !754
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !754
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 1, !dbg !755
  %161 = load double, double* %160, align 8, !dbg !756
  %162 = fadd double %161, %158, !dbg !756
  call void @fAddHandler(double %161, double %158, double %162, i64 94397845538648, i64 94397845537424, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845539056, i32 269, i32 19), !dbg !756
  store double %162, double* %160, align 8, !dbg !756
  %163 = load double, double* %21, align 8, !dbg !757
  %164 = load double, double* %22, align 8, !dbg !758
  %165 = fmul double %163, %164, !dbg !759
  call void @fMulHandler(double %163, double %164, double %165, i64 94397845540840, i64 94397845541224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845541632, i32 270, i32 26), !dbg !760
  %166 = load double, double* %8, align 8, !dbg !760
  %167 = call double @fabs(double %166) #1, !dbg !761
  %168 = fmul double %165, %167, !dbg !762
  call void @fMulHandler(double %165, double %167, double %168, i64 94397845541632, i64 94397845542496, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845542976, i32 270, i32 32), !dbg !763
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !763
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 1, !dbg !764
  %171 = load double, double* %170, align 8, !dbg !765
  %172 = fadd double %171, %168, !dbg !765
  call void @fAddHandler(double %171, double %168, double %172, i64 94397845544200, i64 94397845542976, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94397845544608, i32 270, i32 19), !dbg !765
  store double %172, double* %170, align 8, !dbg !765
  store i32 0, i32* %6, align 4, !dbg !766
  br label %176, !dbg !766

; <label>:173:                                    ; preds = %112
  br label %174

; <label>:174:                                    ; preds = %173, %99
  br label %175

; <label>:175:                                    ; preds = %174
  br label %176

; <label>:176:                                    ; preds = %175, %113, %110, %97, %54, %28
  %177 = load i32, i32* %6, align 4, !dbg !767
  ret i32 %177, !dbg !767
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exp_mult_err_e10_e(double, double, double, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !768 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !771, metadata !61), !dbg !772
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !773, metadata !61), !dbg !774
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !775, metadata !61), !dbg !776
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !777, metadata !61), !dbg !778
  store %struct.gsl_sf_result_e10_struct* %4, %struct.gsl_sf_result_e10_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %11, metadata !779, metadata !61), !dbg !780
  call void @llvm.dbg.declare(metadata double* %12, metadata !781, metadata !61), !dbg !782
  %20 = load double, double* %9, align 8, !dbg !783
  %21 = call double @fabs(double %20) #1, !dbg !784
  store double %21, double* %12, align 8, !dbg !782
  %22 = load double, double* %9, align 8, !dbg !785
  %23 = fcmp oeq double %22, 0.000000e+00, !dbg !787
  %24 = call i1 @fCmpInstHandler(double %22, double 0.000000e+00, i1 %23, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845565568, i32 283, i32 8), !dbg !788
  br i1 %24, label %25, label %37, !dbg !788

; <label>:25:                                     ; preds = %5
  %26 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !789
  %27 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %26, i32 0, i32 0, !dbg !791
  store double 0.000000e+00, double* %27, align 8, !dbg !792
  %28 = load double, double* %10, align 8, !dbg !793
  %29 = load double, double* %7, align 8, !dbg !794
  %30 = call double @exp(double %29) #5, !dbg !795
  call void @callOneArgHandler(i32 11, double %29, double %30, i64 94397845568248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845568720, i32 285, i32 29), !dbg !796
  %31 = fmul double %28, %30, !dbg !796
  call void @fMulHandler(double %28, double %30, double %31, i64 94397845567864, i64 94397845568720, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845569200, i32 285, i32 27), !dbg !797
  %32 = call double @fabs(double %31) #1, !dbg !797
  %33 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !799
  %34 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %33, i32 0, i32 1, !dbg !800
  store double %32, double* %34, align 8, !dbg !801
  %35 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !802
  %36 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %35, i32 0, i32 2, !dbg !803
  store i32 0, i32* %36, align 8, !dbg !804
  store i32 0, i32* %6, align 4, !dbg !805
  br label %172, !dbg !805

; <label>:37:                                     ; preds = %5
  %38 = load double, double* %7, align 8, !dbg !806
  %39 = fcmp olt double %38, 0x40762E42FEFA39EF, !dbg !808
  %40 = call i1 @fCmpInstHandler(double %38, double 0x40762E42FEFA39EF, i1 %39, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845575184, i32 289, i32 18), !dbg !809
  br i1 %40, label %41, label %83, !dbg !809

; <label>:41:                                     ; preds = %37
  %42 = load double, double* %7, align 8, !dbg !810
  %43 = fcmp ogt double %42, 0xC076232BDD7ABCD2, !dbg !812
  %44 = call i1 @fCmpInstHandler(double %42, double 0xC076232BDD7ABCD2, i1 %43, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845576640, i32 289, i32 49), !dbg !813
  br i1 %44, label %45, label %83, !dbg !813

; <label>:45:                                     ; preds = %41
  %46 = load double, double* %12, align 8, !dbg !814
  %47 = fcmp olt double %46, 0x5FE9999999999999, !dbg !815
  %48 = call i1 @fCmpInstHandler(double %46, double 0x5FE9999999999999, i1 %47, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845577952, i32 290, i32 18), !dbg !816
  br i1 %48, label %49, label %83, !dbg !816

; <label>:49:                                     ; preds = %45
  %50 = load double, double* %12, align 8, !dbg !817
  %51 = fcmp ogt double %50, 0x2003333333333333, !dbg !819
  %52 = call i1 @fCmpInstHandler(double %50, double 0x2003333333333333, i1 %51, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845579264, i32 290, i32 49), !dbg !820
  br i1 %52, label %53, label %83, !dbg !820

; <label>:53:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata double* %13, metadata !822, metadata !61), !dbg !824
  %54 = load double, double* %7, align 8, !dbg !825
  %55 = call double @exp(double %54) #5, !dbg !826
  call void @callOneArgHandler(i32 11, double %54, double %55, i64 94397845581288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845581728, i32 292, i32 23), !dbg !824
  store double %55, double* %13, align 8, !dbg !824
  %56 = load double, double* %9, align 8, !dbg !827
  %57 = load double, double* %13, align 8, !dbg !828
  %58 = fmul double %56, %57, !dbg !829
  call void @fMulHandler(double %56, double %57, double %58, i64 94397845583864, i64 94397845584248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845584656, i32 293, i32 22), !dbg !830
  %59 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !830
  %60 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %59, i32 0, i32 0, !dbg !831
  store double %58, double* %60, align 8, !dbg !832
  %61 = load double, double* %13, align 8, !dbg !833
  %62 = load double, double* %10, align 8, !dbg !834
  %63 = call double @fabs(double %62) #1, !dbg !835
  %64 = load double, double* %9, align 8, !dbg !836
  %65 = load double, double* %8, align 8, !dbg !837
  %66 = fmul double %64, %65, !dbg !838
  call void @fMulHandler(double %64, double %65, double %66, i64 94397845587608, i64 94397845587992, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845588400, i32 294, i32 43), !dbg !839
  %67 = call double @fabs(double %66) #1, !dbg !839
  %68 = fadd double %63, %67, !dbg !841
  call void @fAddHandler(double %63, double %67, double %68, i64 94397845587152, i64 94397845588880, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845589360, i32 294, i32 35), !dbg !842
  %69 = fmul double %61, %68, !dbg !842
  call void @fMulHandler(double %61, double %68, double %69, i64 94397845586296, i64 94397845589360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845589776, i32 294, i32 23), !dbg !843
  %70 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !843
  %71 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %70, i32 0, i32 1, !dbg !844
  store double %69, double* %71, align 8, !dbg !845
  %72 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !846
  %73 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %72, i32 0, i32 0, !dbg !847
  %74 = load double, double* %73, align 8, !dbg !847
  %75 = call double @fabs(double %74) #1, !dbg !848
  %76 = fmul double 0x3CC0000000000000, %75, !dbg !849
  call void @fMulHandler(double 0x3CC0000000000000, double %75, double %76, i64 0, i64 94397845593984, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845594464, i32 295, i32 42), !dbg !850
  %77 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !850
  %78 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %77, i32 0, i32 1, !dbg !851
  %79 = load double, double* %78, align 8, !dbg !852
  %80 = fadd double %79, %76, !dbg !852
  call void @fAddHandler(double %79, double %76, double %80, i64 94397845595688, i64 94397845594464, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845596096, i32 295, i32 17), !dbg !852
  store double %80, double* %78, align 8, !dbg !852
  %81 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !853
  %82 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %81, i32 0, i32 2, !dbg !854
  store i32 0, i32* %82, align 8, !dbg !855
  store i32 0, i32* %6, align 4, !dbg !856
  br label %172, !dbg !856

; <label>:83:                                     ; preds = %49, %45, %41, %37
  call void @llvm.dbg.declare(metadata double* %14, metadata !857, metadata !61), !dbg !859
  %84 = load double, double* %12, align 8, !dbg !860
  %85 = call double @log(double %84) #5, !dbg !861
  call void @callOneArgHandler(i32 12, double %84, double %85, i64 94397845602248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845602688, i32 300, i32 24), !dbg !859
  store double %85, double* %14, align 8, !dbg !859
  call void @llvm.dbg.declare(metadata double* %15, metadata !862, metadata !61), !dbg !863
  %86 = load double, double* %7, align 8, !dbg !864
  %87 = load double, double* %14, align 8, !dbg !865
  %88 = fadd double %86, %87, !dbg !866
  call void @fAddHandler(double %86, double %87, double %88, i64 94397845605944, i64 94397845606296, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845606704, i32 301, i32 31), !dbg !867
  %89 = fdiv double %88, 0x40026BB1BBB55516, !dbg !867
  call void @fDivHandler(double %88, double 0x40026BB1BBB55516, double %89, i64 94397845606704, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845607120, i32 301, i32 36), !dbg !863
  store double %89, double* %15, align 8, !dbg !863
  %90 = load double, double* %15, align 8, !dbg !868
  %91 = fcmp ogt double %90, 0x41DFFFFFFF800000, !dbg !870
  %92 = call i1 @fCmpInstHandler(double %90, double 0x41DFFFFFFF800000, i1 %91, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845609600, i32 303, i32 16), !dbg !871
  br i1 %92, label %93, label %104, !dbg !871

; <label>:93:                                     ; preds = %83
  br label %94, !dbg !872, !llvm.loop !874

; <label>:94:                                     ; preds = %93
  %95 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !875
  %96 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %95, i32 0, i32 0, !dbg !875
  store double 0x7FF0000000000000, double* %96, align 8, !dbg !875
  %97 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !875
  %98 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %97, i32 0, i32 1, !dbg !875
  store double 0x7FF0000000000000, double* %98, align 8, !dbg !875
  %99 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !875
  %100 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %99, i32 0, i32 2, !dbg !875
  store i32 0, i32* %100, align 8, !dbg !875
  br label %101, !dbg !875, !llvm.loop !878

; <label>:101:                                    ; preds = %94
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 304, i32 16), !dbg !880
  store i32 16, i32* %6, align 4, !dbg !880
  br label %172, !dbg !880
                                                  ; No predecessors!
  br label %103, !dbg !883

; <label>:103:                                    ; preds = %102
  br label %170, !dbg !885

; <label>:104:                                    ; preds = %83
  %105 = load double, double* %15, align 8, !dbg !886
  %106 = fcmp olt double %105, 0xC1DFFFFFFFC00000, !dbg !888
  %107 = call i1 @fCmpInstHandler(double %105, double 0xC1DFFFFFFFC00000, i1 %106, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845618688, i32 306, i32 21), !dbg !889
  br i1 %107, label %108, label %119, !dbg !889

; <label>:108:                                    ; preds = %104
  br label %109, !dbg !890, !llvm.loop !892

; <label>:109:                                    ; preds = %108
  %110 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !893
  %111 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %110, i32 0, i32 0, !dbg !893
  store double 0.000000e+00, double* %111, align 8, !dbg !893
  %112 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !893
  %113 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %112, i32 0, i32 1, !dbg !893
  store double 0x10000000000000, double* %113, align 8, !dbg !893
  %114 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !893
  %115 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %114, i32 0, i32 2, !dbg !893
  store i32 0, i32* %115, align 8, !dbg !893
  br label %116, !dbg !893, !llvm.loop !896

; <label>:116:                                    ; preds = %109
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 307, i32 15), !dbg !898
  store i32 15, i32* %6, align 4, !dbg !898
  br label %172, !dbg !898
                                                  ; No predecessors!
  br label %118, !dbg !901

; <label>:118:                                    ; preds = %117
  br label %169, !dbg !903

; <label>:119:                                    ; preds = %104
  call void @llvm.dbg.declare(metadata double* %16, metadata !904, metadata !61), !dbg !906
  %120 = load double, double* %9, align 8, !dbg !907
  %121 = fcmp oge double %120, 0.000000e+00, !dbg !907
  %122 = call i1 @fCmpInstHandler(double %120, double 0.000000e+00, i1 %121, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845628864, i32 310, i32 26), !dbg !907
  %123 = select i1 %122, i32 1, i32 -1, !dbg !907
  %124 = sitofp i32 %123 to double, !dbg !907
  store double %124, double* %16, align 8, !dbg !906
  call void @llvm.dbg.declare(metadata i32* %17, metadata !908, metadata !61), !dbg !909
  %125 = load double, double* %15, align 8, !dbg !910
  %126 = call double @floor(double %125) #1, !dbg !911
  %127 = fptosi double %126 to i32, !dbg !912
  store i32 %127, i32* %17, align 4, !dbg !909
  call void @llvm.dbg.declare(metadata double* %18, metadata !913, metadata !61), !dbg !914
  %128 = load double, double* %15, align 8, !dbg !915
  %129 = load i32, i32* %17, align 4, !dbg !916
  %130 = sitofp i32 %129 to double, !dbg !916
  %131 = fsub double %128, %130, !dbg !917
  call void @fSubHandler(double %128, double %130, double %131, i64 94397845637640, i64 94397845638376, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845640048, i32 312, i32 39), !dbg !918
  %132 = fmul double %131, 0x40026BB1BBB55516, !dbg !918
  call void @fMulHandler(double %131, double 0x40026BB1BBB55516, double %132, i64 94397845640048, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845640464, i32 312, i32 44), !dbg !914
  store double %132, double* %18, align 8, !dbg !914
  call void @llvm.dbg.declare(metadata double* %19, metadata !919, metadata !61), !dbg !920
  %133 = load double, double* %10, align 8, !dbg !921
  %134 = load double, double* %9, align 8, !dbg !922
  %135 = call double @fabs(double %134) #1, !dbg !923
  %136 = fdiv double %133, %135, !dbg !924
  call void @fDivHandler(double %133, double %135, double %136, i64 94397845643656, i64 94397845644480, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845644960, i32 313, i32 32), !dbg !925
  %137 = load double, double* %8, align 8, !dbg !925
  %138 = fadd double %136, %137, !dbg !926
  call void @fAddHandler(double %136, double %137, double %138, i64 94397845644960, i64 94397845647416, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845647824, i32 313, i32 41), !dbg !927
  %139 = load double, double* %18, align 8, !dbg !927
  %140 = call double @fabs(double %139) #1, !dbg !928
  %141 = fmul double 0x3CC0000000000000, %140, !dbg !930
  call void @fMulHandler(double 0x3CC0000000000000, double %140, double %141, i64 0, i64 94397845648688, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845649168, i32 313, i32 67), !dbg !931
  %142 = fadd double %138, %141, !dbg !931
  call void @fAddHandler(double %138, double %141, double %142, i64 94397845647824, i64 94397845649168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845649584, i32 313, i32 46), !dbg !920
  store double %142, double* %19, align 8, !dbg !920
  %143 = load double, double* %16, align 8, !dbg !932
  %144 = load double, double* %18, align 8, !dbg !933
  %145 = call double @exp(double %144) #5, !dbg !934
  call void @callOneArgHandler(i32 11, double %144, double %145, i64 94397845652040, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845652512, i32 315, i32 27), !dbg !935
  %146 = fmul double %143, %145, !dbg !935
  call void @fMulHandler(double %143, double %145, double %146, i64 94397845651656, i64 94397845652512, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845652992, i32 315, i32 25), !dbg !936
  %147 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !936
  %148 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %147, i32 0, i32 0, !dbg !937
  store double %146, double* %148, align 8, !dbg !938
  %149 = load double, double* %19, align 8, !dbg !939
  %150 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !940
  %151 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %150, i32 0, i32 0, !dbg !941
  %152 = load double, double* %151, align 8, !dbg !941
  %153 = call double @fabs(double %152) #1, !dbg !942
  %154 = fmul double %149, %153, !dbg !943
  call void @fMulHandler(double %149, double %153, double %154, i64 94397845654632, i64 94397845657584, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845658064, i32 316, i32 30), !dbg !944
  %155 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !944
  %156 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %155, i32 0, i32 1, !dbg !945
  store double %154, double* %156, align 8, !dbg !946
  %157 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !947
  %158 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %157, i32 0, i32 0, !dbg !948
  %159 = load double, double* %158, align 8, !dbg !948
  %160 = call double @fabs(double %159) #1, !dbg !949
  %161 = fmul double 0x3CC0000000000000, %160, !dbg !950
  call void @fMulHandler(double 0x3CC0000000000000, double %160, double %161, i64 0, i64 94397845662272, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845662752, i32 317, i32 44), !dbg !951
  %162 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !951
  %163 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %162, i32 0, i32 1, !dbg !952
  %164 = load double, double* %163, align 8, !dbg !953
  %165 = fadd double %164, %161, !dbg !953
  call void @fAddHandler(double %164, double %161, double %165, i64 94397845663976, i64 94397845662752, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94397845664384, i32 317, i32 19), !dbg !953
  store double %165, double* %163, align 8, !dbg !953
  %166 = load i32, i32* %17, align 4, !dbg !954
  %167 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %11, align 8, !dbg !955
  %168 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %167, i32 0, i32 2, !dbg !956
  store i32 %166, i32* %168, align 8, !dbg !957
  store i32 0, i32* %6, align 4, !dbg !958
  br label %172, !dbg !958

; <label>:169:                                    ; preds = %118
  br label %170

; <label>:170:                                    ; preds = %169, %103
  br label %171

; <label>:171:                                    ; preds = %170
  br label %172

; <label>:172:                                    ; preds = %171, %119, %116, %101, %53, %25
  %173 = load i32, i32* %6, align 4, !dbg !959
  ret i32 %173, !dbg !959
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expm1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !960 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !961, metadata !61), !dbg !962
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !963, metadata !61), !dbg !964
  call void @llvm.dbg.declare(metadata double* %6, metadata !965, metadata !61), !dbg !966
  store double 2.000000e-03, double* %6, align 8, !dbg !966
  %7 = load double, double* %4, align 8, !dbg !967
  %8 = fcmp olt double %7, 0xC086232BDD7ABCD2, !dbg !969
  %9 = call i1 @fCmpInstHandler(double %7, double 0xC086232BDD7ABCD2, i1 %8, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845677088, i32 330, i32 8), !dbg !970
  br i1 %9, label %10, label %15, !dbg !970

; <label>:10:                                     ; preds = %2
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !971
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !973
  store double -1.000000e+00, double* %12, align 8, !dbg !974
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !975
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !976
  store double 0x3CB0000000000000, double* %14, align 8, !dbg !977
  store i32 0, i32* %3, align 4, !dbg !978
  br label %92, !dbg !978

; <label>:15:                                     ; preds = %2
  %16 = load double, double* %4, align 8, !dbg !979
  %17 = fcmp olt double %16, -2.000000e-03, !dbg !981
  %18 = call i1 @fCmpInstHandler(double %16, double -2.000000e-03, i1 %17, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845683408, i32 335, i32 13), !dbg !982
  br i1 %18, label %19, label %32, !dbg !982

; <label>:19:                                     ; preds = %15
  %20 = load double, double* %4, align 8, !dbg !983
  %21 = call double @exp(double %20) #5, !dbg !985
  call void @callOneArgHandler(i32 11, double %20, double %21, i64 94397845684344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845684752, i32 336, i32 19), !dbg !986
  %22 = fsub double %21, 1.000000e+00, !dbg !986
  call void @fSubHandler(double %21, double 1.000000e+00, double %22, i64 94397845684752, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845685264, i32 336, i32 26), !dbg !987
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !987
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !988
  store double %22, double* %24, align 8, !dbg !989
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !990
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !991
  %27 = load double, double* %26, align 8, !dbg !991
  %28 = call double @fabs(double %27) #1, !dbg !992
  %29 = fmul double 0x3CC0000000000000, %28, !dbg !993
  call void @fMulHandler(double 0x3CC0000000000000, double %28, double %29, i64 0, i64 94397845689440, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845689920, i32 337, i32 41), !dbg !994
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !994
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !995
  store double %29, double* %31, align 8, !dbg !996
  store i32 0, i32* %3, align 4, !dbg !997
  br label %92, !dbg !997

; <label>:32:                                     ; preds = %15
  %33 = load double, double* %4, align 8, !dbg !998
  %34 = fcmp olt double %33, 2.000000e-03, !dbg !1000
  %35 = call i1 @fCmpInstHandler(double %33, double 2.000000e-03, i1 %34, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845694000, i32 340, i32 13), !dbg !1001
  br i1 %35, label %36, label %63, !dbg !1001

; <label>:36:                                     ; preds = %32
  %37 = load double, double* %4, align 8, !dbg !1002
  %38 = load double, double* %4, align 8, !dbg !1004
  %39 = fmul double 5.000000e-01, %38, !dbg !1005
  call void @fMulHandler(double 5.000000e-01, double %38, double %39, i64 0, i64 94397845695400, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845695904, i32 341, i32 33), !dbg !1006
  %40 = load double, double* %4, align 8, !dbg !1006
  %41 = fdiv double %40, 3.000000e+00, !dbg !1007
  call void @fDivHandler(double %40, double 3.000000e+00, double %41, i64 94397845696264, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845696768, i32 341, i32 44), !dbg !1008
  %42 = load double, double* %4, align 8, !dbg !1008
  %43 = fmul double 2.500000e-01, %42, !dbg !1009
  call void @fMulHandler(double 2.500000e-01, double %42, double %43, i64 0, i64 94397845697128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845697632, i32 341, i32 60), !dbg !1010
  %44 = load double, double* %4, align 8, !dbg !1010
  %45 = fmul double 2.000000e-01, %44, !dbg !1011
  call void @fMulHandler(double 2.000000e-01, double %44, double %45, i64 0, i64 94397845697992, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845698496, i32 341, i32 73), !dbg !1012
  %46 = fadd double 1.000000e+00, %45, !dbg !1012
  call void @fAddHandler(double 1.000000e+00, double %45, double %46, i64 0, i64 94397845698496, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845698912, i32 341, i32 68), !dbg !1013
  %47 = fmul double %43, %46, !dbg !1013
  call void @fMulHandler(double %43, double %46, double %47, i64 94397845697632, i64 94397845698912, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845699296, i32 341, i32 62), !dbg !1014
  %48 = fadd double 1.000000e+00, %47, !dbg !1014
  call void @fAddHandler(double 1.000000e+00, double %47, double %48, i64 0, i64 94397845699296, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845699744, i32 341, i32 54), !dbg !1015
  %49 = fmul double %41, %48, !dbg !1015
  call void @fMulHandler(double %41, double %48, double %49, i64 94397845696768, i64 94397845699744, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845700128, i32 341, i32 48), !dbg !1016
  %50 = fadd double 1.000000e+00, %49, !dbg !1016
  call void @fAddHandler(double 1.000000e+00, double %49, double %50, i64 0, i64 94397845700128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845700576, i32 341, i32 41), !dbg !1017
  %51 = fmul double %39, %50, !dbg !1017
  call void @fMulHandler(double %39, double %50, double %51, i64 94397845695904, i64 94397845700576, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845700960, i32 341, i32 35), !dbg !1018
  %52 = fadd double 1.000000e+00, %51, !dbg !1018
  call void @fAddHandler(double 1.000000e+00, double %51, double %52, i64 0, i64 94397845700960, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845701408, i32 341, i32 28), !dbg !1019
  %53 = fmul double %37, %52, !dbg !1019
  call void @fMulHandler(double %37, double %52, double %53, i64 94397845695080, i64 94397845701408, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845701792, i32 341, i32 21), !dbg !1020
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1020
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !1021
  store double %53, double* %55, align 8, !dbg !1022
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1023
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !1024
  %58 = load double, double* %57, align 8, !dbg !1024
  %59 = call double @fabs(double %58) #1, !dbg !1025
  %60 = fmul double 0x3CC0000000000000, %59, !dbg !1026
  call void @fMulHandler(double 0x3CC0000000000000, double %59, double %60, i64 0, i64 94397845706000, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845706480, i32 342, i32 41), !dbg !1027
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1027
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !1028
  store double %60, double* %62, align 8, !dbg !1029
  store i32 0, i32* %3, align 4, !dbg !1030
  br label %92, !dbg !1030

; <label>:63:                                     ; preds = %32
  %64 = load double, double* %4, align 8, !dbg !1031
  %65 = fcmp olt double %64, 0x40862E42FEFA39EF, !dbg !1033
  %66 = call i1 @fCmpInstHandler(double %64, double 0x40862E42FEFA39EF, i1 %65, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845710528, i32 345, i32 13), !dbg !1034
  br i1 %66, label %67, label %80, !dbg !1034

; <label>:67:                                     ; preds = %63
  %68 = load double, double* %4, align 8, !dbg !1035
  %69 = call double @exp(double %68) #5, !dbg !1037
  call void @callOneArgHandler(i32 11, double %68, double %69, i64 94397845711640, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845712048, i32 346, i32 19), !dbg !1038
  %70 = fsub double %69, 1.000000e+00, !dbg !1038
  call void @fSubHandler(double %69, double 1.000000e+00, double %70, i64 94397845712048, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845712560, i32 346, i32 26), !dbg !1039
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1039
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !1040
  store double %70, double* %72, align 8, !dbg !1041
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1042
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !1043
  %75 = load double, double* %74, align 8, !dbg !1043
  %76 = call double @fabs(double %75) #1, !dbg !1044
  %77 = fmul double 0x3CC0000000000000, %76, !dbg !1045
  call void @fMulHandler(double 0x3CC0000000000000, double %76, double %77, i64 0, i64 94397845716736, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94397845717216, i32 347, i32 41), !dbg !1046
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1046
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !1047
  store double %77, double* %79, align 8, !dbg !1048
  store i32 0, i32* %3, align 4, !dbg !1049
  br label %92, !dbg !1049

; <label>:80:                                     ; preds = %63
  br label %81, !dbg !1050, !llvm.loop !1052

; <label>:81:                                     ; preds = %80
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1053
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !1053
  store double 0x7FF0000000000000, double* %83, align 8, !dbg !1053
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1053
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !1053
  store double 0x7FF0000000000000, double* %85, align 8, !dbg !1053
  br label %86, !dbg !1053, !llvm.loop !1056

; <label>:86:                                     ; preds = %81
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 351, i32 16), !dbg !1058
  store i32 16, i32* %3, align 4, !dbg !1058
  br label %92, !dbg !1058
                                                  ; No predecessors!
  br label %88, !dbg !1061

; <label>:88:                                     ; preds = %87
  br label %89

; <label>:89:                                     ; preds = %88
  br label %90

; <label>:90:                                     ; preds = %89
  br label %91

; <label>:91:                                     ; preds = %90
  br label %92

; <label>:92:                                     ; preds = %91, %86, %67, %36, %19, %10
  %93 = load i32, i32* %3, align 4, !dbg !1063
  ret i32 %93, !dbg !1063
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exprel_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1064 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1065, metadata !61), !dbg !1066
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1067, metadata !61), !dbg !1068
  call void @llvm.dbg.declare(metadata double* %6, metadata !1069, metadata !61), !dbg !1070
  store double 2.000000e-03, double* %6, align 8, !dbg !1070
  %7 = load double, double* %4, align 8, !dbg !1071
  %8 = fcmp olt double %7, 0xC086232BDD7ABCD2, !dbg !1073
  %9 = call i1 @fCmpInstHandler(double %7, double 0xC086232BDD7ABCD2, i1 %8, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845738048, i32 360, i32 8), !dbg !1074
  br i1 %9, label %10, label %22, !dbg !1074

; <label>:10:                                     ; preds = %2
  %11 = load double, double* %4, align 8, !dbg !1075
  %12 = fdiv double -1.000000e+00, %11, !dbg !1077
  call void @fDivHandler(double -1.000000e+00, double %11, double %12, i64 0, i64 94397845739224, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845739600, i32 361, i32 23), !dbg !1078
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1078
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1079
  store double %12, double* %14, align 8, !dbg !1080
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1081
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1082
  %17 = load double, double* %16, align 8, !dbg !1082
  %18 = call double @fabs(double %17) #1, !dbg !1083
  %19 = fmul double 0x3CB0000000000000, %18, !dbg !1084
  call void @fMulHandler(double 0x3CB0000000000000, double %18, double %19, i64 0, i64 94397845738464, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845744112, i32 362, i32 35), !dbg !1085
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1085
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1086
  store double %19, double* %21, align 8, !dbg !1087
  store i32 0, i32* %3, align 4, !dbg !1088
  br label %101, !dbg !1088

; <label>:22:                                     ; preds = %2
  %23 = load double, double* %4, align 8, !dbg !1089
  %24 = fcmp olt double %23, -2.000000e-03, !dbg !1091
  %25 = call i1 @fCmpInstHandler(double %23, double -2.000000e-03, i1 %24, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845748336, i32 365, i32 13), !dbg !1092
  br i1 %25, label %26, label %41, !dbg !1092

; <label>:26:                                     ; preds = %22
  %27 = load double, double* %4, align 8, !dbg !1093
  %28 = call double @exp(double %27) #5, !dbg !1095
  call void @callOneArgHandler(i32 11, double %27, double %28, i64 94397845749416, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845749824, i32 366, i32 20), !dbg !1096
  %29 = fsub double %28, 1.000000e+00, !dbg !1096
  call void @fSubHandler(double %28, double 1.000000e+00, double %29, i64 94397845749824, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845750336, i32 366, i32 27), !dbg !1097
  %30 = load double, double* %4, align 8, !dbg !1097
  %31 = fdiv double %29, %30, !dbg !1098
  call void @fDivHandler(double %29, double %30, double %31, i64 94397845750336, i64 94397845750696, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845751104, i32 366, i32 33), !dbg !1099
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1099
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !1100
  store double %31, double* %33, align 8, !dbg !1101
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1102
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !1103
  %36 = load double, double* %35, align 8, !dbg !1103
  %37 = call double @fabs(double %36) #1, !dbg !1104
  %38 = fmul double 0x3CC0000000000000, %37, !dbg !1105
  call void @fMulHandler(double 0x3CC0000000000000, double %37, double %38, i64 0, i64 94397845755312, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845755792, i32 367, i32 41), !dbg !1106
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1106
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !1107
  store double %38, double* %40, align 8, !dbg !1108
  store i32 0, i32* %3, align 4, !dbg !1109
  br label %101, !dbg !1109

; <label>:41:                                     ; preds = %22
  %42 = load double, double* %4, align 8, !dbg !1110
  %43 = fcmp olt double %42, 2.000000e-03, !dbg !1112
  %44 = call i1 @fCmpInstHandler(double %42, double 2.000000e-03, i1 %43, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845759872, i32 370, i32 13), !dbg !1113
  br i1 %44, label %45, label %70, !dbg !1113

; <label>:45:                                     ; preds = %41
  %46 = load double, double* %4, align 8, !dbg !1114
  %47 = fmul double 5.000000e-01, %46, !dbg !1116
  call void @fMulHandler(double 5.000000e-01, double %46, double %47, i64 0, i64 94397845760952, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845761328, i32 371, i32 29), !dbg !1117
  %48 = load double, double* %4, align 8, !dbg !1117
  %49 = fdiv double %48, 3.000000e+00, !dbg !1118
  call void @fDivHandler(double %48, double 3.000000e+00, double %49, i64 94397845761688, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845762128, i32 371, i32 40), !dbg !1119
  %50 = load double, double* %4, align 8, !dbg !1119
  %51 = fmul double 2.500000e-01, %50, !dbg !1120
  call void @fMulHandler(double 2.500000e-01, double %50, double %51, i64 0, i64 94397845762488, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845762928, i32 371, i32 56), !dbg !1121
  %52 = load double, double* %4, align 8, !dbg !1121
  %53 = fmul double 2.000000e-01, %52, !dbg !1122
  call void @fMulHandler(double 2.000000e-01, double %52, double %53, i64 0, i64 94397845763288, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845763728, i32 371, i32 69), !dbg !1123
  %54 = fadd double 1.000000e+00, %53, !dbg !1123
  call void @fAddHandler(double 1.000000e+00, double %53, double %54, i64 0, i64 94397845763728, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845764144, i32 371, i32 64), !dbg !1124
  %55 = fmul double %51, %54, !dbg !1124
  call void @fMulHandler(double %51, double %54, double %55, i64 94397845762928, i64 94397845764144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845764528, i32 371, i32 58), !dbg !1125
  %56 = fadd double 1.000000e+00, %55, !dbg !1125
  call void @fAddHandler(double 1.000000e+00, double %55, double %56, i64 0, i64 94397845764528, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845764976, i32 371, i32 50), !dbg !1126
  %57 = fmul double %49, %56, !dbg !1126
  call void @fMulHandler(double %49, double %56, double %57, i64 94397845762128, i64 94397845764976, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845765360, i32 371, i32 44), !dbg !1127
  %58 = fadd double 1.000000e+00, %57, !dbg !1127
  call void @fAddHandler(double 1.000000e+00, double %57, double %58, i64 0, i64 94397845765360, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845765808, i32 371, i32 37), !dbg !1128
  %59 = fmul double %47, %58, !dbg !1128
  call void @fMulHandler(double %47, double %58, double %59, i64 94397845761328, i64 94397845765808, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845766192, i32 371, i32 31), !dbg !1129
  %60 = fadd double 1.000000e+00, %59, !dbg !1129
  call void @fAddHandler(double 1.000000e+00, double %59, double %60, i64 0, i64 94397845766192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845766640, i32 371, i32 24), !dbg !1130
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1130
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !1131
  store double %60, double* %62, align 8, !dbg !1132
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1133
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !1134
  %65 = load double, double* %64, align 8, !dbg !1134
  %66 = call double @fabs(double %65) #1, !dbg !1135
  %67 = fmul double 0x3CC0000000000000, %66, !dbg !1136
  call void @fMulHandler(double 0x3CC0000000000000, double %66, double %67, i64 0, i64 94397845770816, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845771296, i32 372, i32 41), !dbg !1137
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1137
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 1, !dbg !1138
  store double %67, double* %69, align 8, !dbg !1139
  store i32 0, i32* %3, align 4, !dbg !1140
  br label %101, !dbg !1140

; <label>:70:                                     ; preds = %41
  %71 = load double, double* %4, align 8, !dbg !1141
  %72 = fcmp olt double %71, 0x40862E42FEFA39EF, !dbg !1143
  %73 = call i1 @fCmpInstHandler(double %71, double 0x40862E42FEFA39EF, i1 %72, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845775344, i32 375, i32 13), !dbg !1144
  br i1 %73, label %74, label %89, !dbg !1144

; <label>:74:                                     ; preds = %70
  %75 = load double, double* %4, align 8, !dbg !1145
  %76 = call double @exp(double %75) #5, !dbg !1147
  call void @callOneArgHandler(i32 11, double %75, double %76, i64 94397845776456, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845776864, i32 376, i32 20), !dbg !1148
  %77 = fsub double %76, 1.000000e+00, !dbg !1148
  call void @fSubHandler(double %76, double 1.000000e+00, double %77, i64 94397845776864, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845777376, i32 376, i32 27), !dbg !1149
  %78 = load double, double* %4, align 8, !dbg !1149
  %79 = fdiv double %77, %78, !dbg !1150
  call void @fDivHandler(double %77, double %78, double %79, i64 94397845777376, i64 94397845777736, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845778144, i32 376, i32 33), !dbg !1151
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1151
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !1152
  store double %79, double* %81, align 8, !dbg !1153
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1154
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !1155
  %84 = load double, double* %83, align 8, !dbg !1155
  %85 = call double @fabs(double %84) #1, !dbg !1156
  %86 = fmul double 0x3CC0000000000000, %85, !dbg !1157
  call void @fMulHandler(double 0x3CC0000000000000, double %85, double %86, i64 0, i64 94397845782352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94397845782832, i32 377, i32 41), !dbg !1158
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1158
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !1159
  store double %86, double* %88, align 8, !dbg !1160
  store i32 0, i32* %3, align 4, !dbg !1161
  br label %101, !dbg !1161

; <label>:89:                                     ; preds = %70
  br label %90, !dbg !1162, !llvm.loop !1164

; <label>:90:                                     ; preds = %89
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1165
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !1165
  store double 0x7FF0000000000000, double* %92, align 8, !dbg !1165
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1165
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 1, !dbg !1165
  store double 0x7FF0000000000000, double* %94, align 8, !dbg !1165
  br label %95, !dbg !1165, !llvm.loop !1168

; <label>:95:                                     ; preds = %90
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 381, i32 16), !dbg !1170
  store i32 16, i32* %3, align 4, !dbg !1170
  br label %101, !dbg !1170
                                                  ; No predecessors!
  br label %97, !dbg !1173

; <label>:97:                                     ; preds = %96
  br label %98

; <label>:98:                                     ; preds = %97
  br label %99

; <label>:99:                                     ; preds = %98
  br label %100

; <label>:100:                                    ; preds = %99
  br label %101

; <label>:101:                                    ; preds = %100, %95, %74, %45, %26, %10
  %102 = load i32, i32* %3, align 4, !dbg !1175
  ret i32 %102, !dbg !1175
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exprel_2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1176 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1179, metadata !61), !dbg !1180
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1181, metadata !61), !dbg !1182
  call void @llvm.dbg.declare(metadata double* %6, metadata !1183, metadata !61), !dbg !1184
  store double 2.000000e-03, double* %6, align 8, !dbg !1184
  %7 = load double, double* %4, align 8, !dbg !1185
  %8 = fcmp olt double %7, 0xC086232BDD7ABCD2, !dbg !1187
  %9 = call i1 @fCmpInstHandler(double %7, double 0xC086232BDD7ABCD2, i1 %8, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845802864, i32 390, i32 8), !dbg !1188
  br i1 %9, label %10, label %26, !dbg !1188

; <label>:10:                                     ; preds = %2
  %11 = load double, double* %4, align 8, !dbg !1189
  %12 = fdiv double -2.000000e+00, %11, !dbg !1191
  call void @fDivHandler(double -2.000000e+00, double %11, double %12, i64 0, i64 94397845804040, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845804480, i32 391, i32 23), !dbg !1192
  %13 = load double, double* %4, align 8, !dbg !1192
  %14 = fdiv double 1.000000e+00, %13, !dbg !1193
  call void @fDivHandler(double 1.000000e+00, double %13, double %14, i64 0, i64 94397845804840, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845805280, i32 391, i32 36), !dbg !1194
  %15 = fadd double 1.000000e+00, %14, !dbg !1194
  call void @fAddHandler(double 1.000000e+00, double %14, double %15, i64 0, i64 94397845805280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845805696, i32 391, i32 31), !dbg !1195
  %16 = fmul double %12, %15, !dbg !1195
  call void @fMulHandler(double %12, double %15, double %16, i64 94397845804480, i64 94397845805696, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845806080, i32 391, i32 25), !dbg !1196
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1196
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1197
  store double %16, double* %18, align 8, !dbg !1198
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1199
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1200
  %21 = load double, double* %20, align 8, !dbg !1200
  %22 = call double @fabs(double %21) #1, !dbg !1201
  %23 = fmul double 0x3CC0000000000000, %22, !dbg !1202
  call void @fMulHandler(double 0x3CC0000000000000, double %22, double %23, i64 0, i64 94397845803280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845810624, i32 392, i32 41), !dbg !1203
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1203
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !1204
  store double %23, double* %25, align 8, !dbg !1205
  store i32 0, i32* %3, align 4, !dbg !1206
  br label %115, !dbg !1206

; <label>:26:                                     ; preds = %2
  %27 = load double, double* %4, align 8, !dbg !1207
  %28 = fcmp olt double %27, -2.000000e-03, !dbg !1209
  %29 = call i1 @fCmpInstHandler(double %27, double -2.000000e-03, i1 %28, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845814848, i32 395, i32 13), !dbg !1210
  br i1 %29, label %30, label %50, !dbg !1210

; <label>:30:                                     ; preds = %26
  %31 = load double, double* %4, align 8, !dbg !1211
  %32 = call double @exp(double %31) #5, !dbg !1213
  call void @callOneArgHandler(i32 11, double %31, double %32, i64 94397845815928, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845816336, i32 396, i32 24), !dbg !1214
  %33 = fsub double %32, 1.000000e+00, !dbg !1214
  call void @fSubHandler(double %32, double 1.000000e+00, double %33, i64 94397845816336, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845816848, i32 396, i32 31), !dbg !1215
  %34 = load double, double* %4, align 8, !dbg !1215
  %35 = fsub double %33, %34, !dbg !1216
  call void @fSubHandler(double %33, double %34, double %35, i64 94397845816848, i64 94397845817208, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845817616, i32 396, i32 37), !dbg !1217
  %36 = fmul double 2.000000e+00, %35, !dbg !1217
  call void @fMulHandler(double 2.000000e+00, double %35, double %36, i64 0, i64 94397845817616, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845818064, i32 396, i32 22), !dbg !1218
  %37 = load double, double* %4, align 8, !dbg !1218
  %38 = load double, double* %4, align 8, !dbg !1219
  %39 = fmul double %37, %38, !dbg !1220
  call void @fMulHandler(double %37, double %38, double %39, i64 94397845818424, i64 94397845818808, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845819216, i32 396, i32 44), !dbg !1221
  %40 = fdiv double %36, %39, !dbg !1221
  call void @fDivHandler(double %36, double %39, double %40, i64 94397845818064, i64 94397845819216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845819632, i32 396, i32 41), !dbg !1222
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1222
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !1223
  store double %40, double* %42, align 8, !dbg !1224
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1225
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !1226
  %45 = load double, double* %44, align 8, !dbg !1226
  %46 = call double @fabs(double %45) #1, !dbg !1227
  %47 = fmul double 0x3CC0000000000000, %46, !dbg !1228
  call void @fMulHandler(double 0x3CC0000000000000, double %46, double %47, i64 0, i64 94397845823840, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845824320, i32 397, i32 41), !dbg !1229
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1229
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !1230
  store double %47, double* %49, align 8, !dbg !1231
  store i32 0, i32* %3, align 4, !dbg !1232
  br label %115, !dbg !1232

; <label>:50:                                     ; preds = %26
  %51 = load double, double* %4, align 8, !dbg !1233
  %52 = fcmp olt double %51, 2.000000e-03, !dbg !1235
  %53 = call i1 @fCmpInstHandler(double %51, double 2.000000e-03, i1 %52, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845828400, i32 400, i32 13), !dbg !1236
  br i1 %53, label %54, label %79, !dbg !1236

; <label>:54:                                     ; preds = %50
  %55 = load double, double* %4, align 8, !dbg !1237
  %56 = fmul double 0x3FD5555555555555, %55, !dbg !1239
  call void @fMulHandler(double 0x3FD5555555555555, double %55, double %56, i64 0, i64 94397845829480, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845829888, i32 401, i32 33), !dbg !1240
  %57 = load double, double* %4, align 8, !dbg !1240
  %58 = fmul double 2.500000e-01, %57, !dbg !1241
  call void @fMulHandler(double 2.500000e-01, double %57, double %58, i64 0, i64 94397845830280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845830720, i32 401, i32 47), !dbg !1242
  %59 = load double, double* %4, align 8, !dbg !1242
  %60 = fmul double 2.000000e-01, %59, !dbg !1243
  call void @fMulHandler(double 2.000000e-01, double %59, double %60, i64 0, i64 94397845831080, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845831520, i32 401, i32 60), !dbg !1244
  %61 = load double, double* %4, align 8, !dbg !1244
  %62 = fmul double 0x3FC5555555555555, %61, !dbg !1245
  call void @fMulHandler(double 0x3FC5555555555555, double %61, double %62, i64 0, i64 94397845831880, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845832352, i32 401, i32 77), !dbg !1246
  %63 = fadd double 1.000000e+00, %62, !dbg !1246
  call void @fAddHandler(double 1.000000e+00, double %62, double %63, i64 0, i64 94397845832352, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845832800, i32 401, i32 68), !dbg !1247
  %64 = fmul double %60, %63, !dbg !1247
  call void @fMulHandler(double %60, double %63, double %64, i64 94397845831520, i64 94397845832800, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845833184, i32 401, i32 62), !dbg !1248
  %65 = fadd double 1.000000e+00, %64, !dbg !1248
  call void @fAddHandler(double 1.000000e+00, double %64, double %65, i64 0, i64 94397845833184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845833632, i32 401, i32 55), !dbg !1249
  %66 = fmul double %58, %65, !dbg !1249
  call void @fMulHandler(double %58, double %65, double %66, i64 94397845830720, i64 94397845833632, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845834016, i32 401, i32 49), !dbg !1250
  %67 = fadd double 1.000000e+00, %66, !dbg !1250
  call void @fAddHandler(double 1.000000e+00, double %66, double %67, i64 0, i64 94397845834016, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845834464, i32 401, i32 41), !dbg !1251
  %68 = fmul double %56, %67, !dbg !1251
  call void @fMulHandler(double %56, double %67, double %68, i64 94397845829888, i64 94397845834464, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845834848, i32 401, i32 35), !dbg !1252
  %69 = fadd double 1.000000e+00, %68, !dbg !1252
  call void @fAddHandler(double 1.000000e+00, double %68, double %69, i64 0, i64 94397845834848, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845835296, i32 401, i32 24), !dbg !1253
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1253
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !1254
  store double %69, double* %71, align 8, !dbg !1255
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1256
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !1257
  %74 = load double, double* %73, align 8, !dbg !1257
  %75 = call double @fabs(double %74) #1, !dbg !1258
  %76 = fmul double 0x3CC0000000000000, %75, !dbg !1259
  call void @fMulHandler(double 0x3CC0000000000000, double %75, double %76, i64 0, i64 94397845839472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845839952, i32 402, i32 41), !dbg !1260
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1260
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !1261
  store double %76, double* %78, align 8, !dbg !1262
  store i32 0, i32* %3, align 4, !dbg !1263
  br label %115, !dbg !1263

; <label>:79:                                     ; preds = %50
  %80 = load double, double* %4, align 8, !dbg !1264
  %81 = fcmp olt double %80, 0x40862E42FEFA39EF, !dbg !1266
  %82 = call i1 @fCmpInstHandler(double %80, double 0x40862E42FEFA39EF, i1 %81, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845844000, i32 405, i32 13), !dbg !1267
  br i1 %82, label %83, label %103, !dbg !1267

; <label>:83:                                     ; preds = %79
  %84 = load double, double* %4, align 8, !dbg !1268
  %85 = call double @exp(double %84) #5, !dbg !1270
  call void @callOneArgHandler(i32 11, double %84, double %85, i64 94397845845112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845845520, i32 406, i32 24), !dbg !1271
  %86 = fsub double %85, 1.000000e+00, !dbg !1271
  call void @fSubHandler(double %85, double 1.000000e+00, double %86, i64 94397845845520, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845846032, i32 406, i32 31), !dbg !1272
  %87 = load double, double* %4, align 8, !dbg !1272
  %88 = fsub double %86, %87, !dbg !1273
  call void @fSubHandler(double %86, double %87, double %88, i64 94397845846032, i64 94397845846392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845846800, i32 406, i32 37), !dbg !1274
  %89 = fmul double 2.000000e+00, %88, !dbg !1274
  call void @fMulHandler(double 2.000000e+00, double %88, double %89, i64 0, i64 94397845846800, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845847248, i32 406, i32 22), !dbg !1275
  %90 = load double, double* %4, align 8, !dbg !1275
  %91 = load double, double* %4, align 8, !dbg !1276
  %92 = fmul double %90, %91, !dbg !1277
  call void @fMulHandler(double %90, double %91, double %92, i64 94397845847608, i64 94397845847992, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845848400, i32 406, i32 44), !dbg !1278
  %93 = fdiv double %89, %92, !dbg !1278
  call void @fDivHandler(double %89, double %92, double %93, i64 94397845847248, i64 94397845848400, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845848816, i32 406, i32 41), !dbg !1279
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1279
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 0, !dbg !1280
  store double %93, double* %95, align 8, !dbg !1281
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1282
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !1283
  %98 = load double, double* %97, align 8, !dbg !1283
  %99 = call double @fabs(double %98) #1, !dbg !1284
  %100 = fmul double 0x3CC0000000000000, %99, !dbg !1285
  call void @fMulHandler(double 0x3CC0000000000000, double %99, double %100, i64 0, i64 94397845853024, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94397845853504, i32 407, i32 41), !dbg !1286
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1286
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !1287
  store double %100, double* %102, align 8, !dbg !1288
  store i32 0, i32* %3, align 4, !dbg !1289
  br label %115, !dbg !1289

; <label>:103:                                    ; preds = %79
  br label %104, !dbg !1290, !llvm.loop !1292

; <label>:104:                                    ; preds = %103
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1293
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !1293
  store double 0x7FF0000000000000, double* %106, align 8, !dbg !1293
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1293
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !1293
  store double 0x7FF0000000000000, double* %108, align 8, !dbg !1293
  br label %109, !dbg !1293, !llvm.loop !1296

; <label>:109:                                    ; preds = %104
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 411, i32 16), !dbg !1298
  store i32 16, i32* %3, align 4, !dbg !1298
  br label %115, !dbg !1298
                                                  ; No predecessors!
  br label %111, !dbg !1301

; <label>:111:                                    ; preds = %110
  br label %112

; <label>:112:                                    ; preds = %111
  br label %113

; <label>:113:                                    ; preds = %112
  br label %114

; <label>:114:                                    ; preds = %113
  br label %115

; <label>:115:                                    ; preds = %114, %109, %83, %54, %30, %10
  %116 = load i32, i32* %3, align 4, !dbg !1303
  ret i32 %116, !dbg !1303
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exprel_n_CF_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1304 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1305, metadata !61), !dbg !1306
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1307, metadata !61), !dbg !1308
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1309, metadata !61), !dbg !1310
  %7 = load double, double* %4, align 8, !dbg !1311
  %8 = load double, double* %5, align 8, !dbg !1312
  %9 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1313
  %10 = call i32 @exprel_n_CF(double %7, double %8, %struct.gsl_sf_result_struct* %9), !dbg !1314
  ret i32 %10, !dbg !1315
}

; Function Attrs: nounwind uwtable
define internal i32 @exprel_n_CF(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1316 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1317, metadata !61), !dbg !1318
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1319, metadata !61), !dbg !1320
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1321, metadata !61), !dbg !1322
  call void @llvm.dbg.declare(metadata double* %8, metadata !1323, metadata !61), !dbg !1324
  store double 0x5FEFFFFFFFFFFFFF, double* %8, align 8, !dbg !1324
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1325, metadata !61), !dbg !1326
  store i32 5000, i32* %9, align 4, !dbg !1326
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1327, metadata !61), !dbg !1328
  store i32 1, i32* %10, align 4, !dbg !1328
  call void @llvm.dbg.declare(metadata double* %11, metadata !1329, metadata !61), !dbg !1330
  store double 1.000000e+00, double* %11, align 8, !dbg !1330
  call void @llvm.dbg.declare(metadata double* %12, metadata !1331, metadata !61), !dbg !1332
  store double 0.000000e+00, double* %12, align 8, !dbg !1332
  call void @llvm.dbg.declare(metadata double* %13, metadata !1333, metadata !61), !dbg !1334
  store double 0.000000e+00, double* %13, align 8, !dbg !1334
  call void @llvm.dbg.declare(metadata double* %14, metadata !1335, metadata !61), !dbg !1336
  store double 1.000000e+00, double* %14, align 8, !dbg !1336
  call void @llvm.dbg.declare(metadata double* %15, metadata !1337, metadata !61), !dbg !1338
  store double 1.000000e+00, double* %15, align 8, !dbg !1338
  call void @llvm.dbg.declare(metadata double* %16, metadata !1339, metadata !61), !dbg !1340
  store double 1.000000e+00, double* %16, align 8, !dbg !1340
  call void @llvm.dbg.declare(metadata double* %17, metadata !1341, metadata !61), !dbg !1342
  %26 = load double, double* %6, align 8, !dbg !1343
  %27 = fsub double -0.000000e+00, %26, !dbg !1344
  call void @fSubHandler(double -0.000000e+00, double %26, double %27, i64 0, i64 94397845873064, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845907200, i32 46, i32 15), !dbg !1342
  store double %27, double* %17, align 8, !dbg !1342
  call void @llvm.dbg.declare(metadata double* %18, metadata !1345, metadata !61), !dbg !1346
  %28 = load double, double* %5, align 8, !dbg !1347
  %29 = fadd double %28, 1.000000e+00, !dbg !1348
  call void @fAddHandler(double %28, double 1.000000e+00, double %29, i64 94397845910392, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845910800, i32 47, i32 16), !dbg !1346
  store double %29, double* %18, align 8, !dbg !1346
  call void @llvm.dbg.declare(metadata double* %19, metadata !1349, metadata !61), !dbg !1350
  call void @llvm.dbg.declare(metadata double* %20, metadata !1351, metadata !61), !dbg !1352
  call void @llvm.dbg.declare(metadata double* %21, metadata !1353, metadata !61), !dbg !1354
  call void @llvm.dbg.declare(metadata double* %22, metadata !1355, metadata !61), !dbg !1356
  %30 = load double, double* %16, align 8, !dbg !1357
  %31 = load double, double* %13, align 8, !dbg !1358
  %32 = fmul double %30, %31, !dbg !1359
  call void @fMulHandler(double %30, double %31, double %32, i64 94397845917224, i64 94397845917576, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845917984, i32 52, i32 17), !dbg !1360
  %33 = load double, double* %15, align 8, !dbg !1360
  %34 = load double, double* %11, align 8, !dbg !1361
  %35 = fmul double %33, %34, !dbg !1362
  call void @fMulHandler(double %33, double %34, double %35, i64 94397845918376, i64 94397845918760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845919168, i32 52, i32 27), !dbg !1363
  %36 = fadd double %32, %35, !dbg !1363
  call void @fAddHandler(double %32, double %35, double %36, i64 94397845917984, i64 94397845919168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845919584, i32 52, i32 23), !dbg !1356
  store double %36, double* %22, align 8, !dbg !1356
  call void @llvm.dbg.declare(metadata double* %23, metadata !1364, metadata !61), !dbg !1365
  %37 = load double, double* %16, align 8, !dbg !1366
  %38 = load double, double* %14, align 8, !dbg !1367
  %39 = fmul double %37, %38, !dbg !1368
  call void @fMulHandler(double %37, double %38, double %39, i64 94397845922776, i64 94397845923128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845923536, i32 53, i32 17), !dbg !1369
  %40 = load double, double* %15, align 8, !dbg !1369
  %41 = load double, double* %12, align 8, !dbg !1370
  %42 = fmul double %40, %41, !dbg !1371
  call void @fMulHandler(double %40, double %41, double %42, i64 94397845923928, i64 94397845924312, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845924720, i32 53, i32 27), !dbg !1372
  %43 = fadd double %39, %42, !dbg !1372
  call void @fAddHandler(double %39, double %42, double %43, i64 94397845923536, i64 94397845924720, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845925136, i32 53, i32 23), !dbg !1365
  store double %43, double* %23, align 8, !dbg !1365
  %44 = load i32, i32* %10, align 4, !dbg !1373
  %45 = add nsw i32 %44, 1, !dbg !1373
  store i32 %45, i32* %10, align 4, !dbg !1373
  %46 = load double, double* %13, align 8, !dbg !1374
  store double %46, double* %11, align 8, !dbg !1375
  %47 = load double, double* %14, align 8, !dbg !1376
  store double %47, double* %12, align 8, !dbg !1377
  %48 = load double, double* %22, align 8, !dbg !1378
  store double %48, double* %13, align 8, !dbg !1379
  %49 = load double, double* %23, align 8, !dbg !1380
  store double %49, double* %14, align 8, !dbg !1381
  %50 = load double, double* %18, align 8, !dbg !1382
  %51 = load double, double* %13, align 8, !dbg !1383
  %52 = fmul double %50, %51, !dbg !1384
  call void @fMulHandler(double %50, double %51, double %52, i64 94397845932600, i64 94397845932984, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845933392, i32 61, i32 10), !dbg !1385
  %53 = load double, double* %17, align 8, !dbg !1385
  %54 = load double, double* %11, align 8, !dbg !1386
  %55 = fmul double %53, %54, !dbg !1387
  call void @fMulHandler(double %53, double %54, double %55, i64 94397845933784, i64 94397845934168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845934576, i32 61, i32 20), !dbg !1388
  %56 = fadd double %52, %55, !dbg !1388
  call void @fAddHandler(double %52, double %55, double %56, i64 94397845933392, i64 94397845934576, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845934992, i32 61, i32 16), !dbg !1389
  store double %56, double* %22, align 8, !dbg !1389
  %57 = load double, double* %18, align 8, !dbg !1390
  %58 = load double, double* %14, align 8, !dbg !1391
  %59 = fmul double %57, %58, !dbg !1392
  call void @fMulHandler(double %57, double %58, double %59, i64 94397845935800, i64 94397845936184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845936592, i32 62, i32 10), !dbg !1393
  %60 = load double, double* %17, align 8, !dbg !1393
  %61 = load double, double* %12, align 8, !dbg !1394
  %62 = fmul double %60, %61, !dbg !1395
  call void @fMulHandler(double %60, double %61, double %62, i64 94397845936984, i64 94397845937368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845937776, i32 62, i32 20), !dbg !1396
  %63 = fadd double %59, %62, !dbg !1396
  call void @fAddHandler(double %59, double %62, double %63, i64 94397845936592, i64 94397845937776, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845938192, i32 62, i32 16), !dbg !1397
  store double %63, double* %23, align 8, !dbg !1397
  %64 = load double, double* %22, align 8, !dbg !1398
  %65 = load double, double* %23, align 8, !dbg !1399
  %66 = fdiv double %64, %65, !dbg !1400
  call void @fDivHandler(double %64, double %65, double %66, i64 94397845939000, i64 94397845939384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845939792, i32 64, i32 10), !dbg !1401
  store double %66, double* %21, align 8, !dbg !1401
  br label %67, !dbg !1402

; <label>:67:                                     ; preds = %158, %3
  %68 = load i32, i32* %10, align 4, !dbg !1403
  %69 = icmp slt i32 %68, 5000, !dbg !1405
  %70 = sext i32 %68 to i64, !dbg !1406
  %71 = call i1 @iCmpInstHandler(i64 %70, i64 5000, i1 %69, i32 40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845941472, i32 66, i32 11), !dbg !1406
  br i1 %71, label %72, label %159, !dbg !1406

; <label>:72:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata double* %24, metadata !1407, metadata !61), !dbg !1409
  call void @llvm.dbg.declare(metadata double* %25, metadata !1410, metadata !61), !dbg !1411
  %73 = load i32, i32* %10, align 4, !dbg !1412
  %74 = add nsw i32 %73, 1, !dbg !1412
  store i32 %74, i32* %10, align 4, !dbg !1412
  %75 = load double, double* %13, align 8, !dbg !1413
  store double %75, double* %11, align 8, !dbg !1414
  %76 = load double, double* %14, align 8, !dbg !1415
  store double %76, double* %12, align 8, !dbg !1416
  %77 = load double, double* %22, align 8, !dbg !1417
  store double %77, double* %13, align 8, !dbg !1418
  %78 = load double, double* %23, align 8, !dbg !1419
  store double %78, double* %14, align 8, !dbg !1420
  %79 = load i32, i32* %10, align 4, !dbg !1421
  %80 = and i32 %79, 1, !dbg !1421
  %81 = icmp ne i32 %80, 0, !dbg !1421
  %82 = sext i32 %80 to i64, !dbg !1421
  %83 = call i1 @iCmpInstHandler(i64 %82, i64 0, i1 %81, i32 33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845952176, i32 74, i32 12), !dbg !1421
  br i1 %83, label %84, label %91, !dbg !1421

; <label>:84:                                     ; preds = %72
  %85 = load i32, i32* %10, align 4, !dbg !1422
  %86 = sub nsw i32 %85, 1, !dbg !1424
  %87 = sdiv i32 %86, 2, !dbg !1425
  %88 = sitofp i32 %87 to double, !dbg !1426
  %89 = load double, double* %6, align 8, !dbg !1427
  %90 = fmul double %88, %89, !dbg !1428
  call void @fMulHandler(double %88, double %89, double %90, i64 94397845953864, i64 94397845954248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845954656, i32 74, i32 37), !dbg !1429
  br label %101, !dbg !1429

; <label>:91:                                     ; preds = %72
  %92 = load double, double* %5, align 8, !dbg !1430
  %93 = load i32, i32* %10, align 4, !dbg !1432
  %94 = sdiv i32 %93, 2, !dbg !1433
  %95 = sitofp i32 %94 to double, !dbg !1434
  %96 = fadd double %92, %95, !dbg !1435
  call void @fAddHandler(double %92, double %95, double %96, i64 94397845955576, i64 94397845956696, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845957104, i32 74, i32 45), !dbg !1436
  %97 = fsub double %96, 1.000000e+00, !dbg !1436
  call void @fSubHandler(double %96, double 1.000000e+00, double %97, i64 94397845957104, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845957552, i32 74, i32 51), !dbg !1437
  %98 = fsub double -0.000000e+00, %97, !dbg !1437
  call void @fSubHandler(double -0.000000e+00, double %97, double %98, i64 0, i64 94397845957552, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845957936, i32 74, i32 42), !dbg !1438
  %99 = load double, double* %6, align 8, !dbg !1438
  %100 = fmul double %98, %99, !dbg !1439
  call void @fMulHandler(double %98, double %99, double %100, i64 94397845957936, i64 94397845958328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845958736, i32 74, i32 54), !dbg !1440
  br label %101, !dbg !1440

; <label>:101:                                    ; preds = %91, %84
  %102 = phi double [ %90, %84 ], [ %100, %91 ], !dbg !1441
  store double %102, double* %19, align 8, !dbg !1443
  %103 = load double, double* %5, align 8, !dbg !1444
  %104 = load i32, i32* %10, align 4, !dbg !1445
  %105 = sitofp i32 %104 to double, !dbg !1445
  %106 = fadd double %103, %105, !dbg !1446
  call void @fAddHandler(double %103, double %105, double %106, i64 94397845960328, i64 94397845961096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845962768, i32 75, i32 12), !dbg !1447
  %107 = fsub double %106, 1.000000e+00, !dbg !1447
  call void @fSubHandler(double %106, double 1.000000e+00, double %107, i64 94397845962768, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845963216, i32 75, i32 16), !dbg !1448
  store double %107, double* %20, align 8, !dbg !1448
  %108 = load double, double* %20, align 8, !dbg !1449
  %109 = load double, double* %13, align 8, !dbg !1450
  %110 = fmul double %108, %109, !dbg !1451
  call void @fMulHandler(double %108, double %109, double %110, i64 94397845963992, i64 94397845964376, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845964784, i32 76, i32 12), !dbg !1452
  %111 = load double, double* %19, align 8, !dbg !1452
  %112 = load double, double* %11, align 8, !dbg !1453
  %113 = fmul double %111, %112, !dbg !1454
  call void @fMulHandler(double %111, double %112, double %113, i64 94397845965176, i64 94397845965560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845965968, i32 76, i32 22), !dbg !1455
  %114 = fadd double %110, %113, !dbg !1455
  call void @fAddHandler(double %110, double %113, double %114, i64 94397845964784, i64 94397845965968, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845966384, i32 76, i32 18), !dbg !1456
  store double %114, double* %22, align 8, !dbg !1456
  %115 = load double, double* %20, align 8, !dbg !1457
  %116 = load double, double* %14, align 8, !dbg !1458
  %117 = fmul double %115, %116, !dbg !1459
  call void @fMulHandler(double %115, double %116, double %117, i64 94397845967192, i64 94397845967576, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845967984, i32 77, i32 12), !dbg !1460
  %118 = load double, double* %19, align 8, !dbg !1460
  %119 = load double, double* %12, align 8, !dbg !1461
  %120 = fmul double %118, %119, !dbg !1462
  call void @fMulHandler(double %118, double %119, double %120, i64 94397845968376, i64 94397845968760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845969168, i32 77, i32 22), !dbg !1463
  %121 = fadd double %117, %120, !dbg !1463
  call void @fAddHandler(double %117, double %120, double %121, i64 94397845967984, i64 94397845969168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845969584, i32 77, i32 18), !dbg !1464
  store double %121, double* %23, align 8, !dbg !1464
  %122 = load double, double* %22, align 8, !dbg !1465
  %123 = call double @fabs(double %122) #1, !dbg !1467
  %124 = fcmp ogt double %123, 0x5FEFFFFFFFFFFFFF, !dbg !1468
  %125 = call i1 @fCmpInstHandler(double %123, double 0x5FEFFFFFFFFFFFFF, i1 %124, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845971344, i32 79, i32 17), !dbg !1469
  br i1 %125, label %131, label %126, !dbg !1469

; <label>:126:                                    ; preds = %101
  %127 = load double, double* %23, align 8, !dbg !1470
  %128 = call double @fabs(double %127) #1, !dbg !1472
  %129 = fcmp ogt double %128, 0x5FEFFFFFFFFFFFFF, !dbg !1473
  %130 = call i1 @fCmpInstHandler(double %128, double 0x5FEFFFFFFFFFFFFF, i1 %129, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845973344, i32 79, i32 41), !dbg !1474
  br i1 %130, label %131, label %144, !dbg !1474

; <label>:131:                                    ; preds = %126, %101
  %132 = load double, double* %22, align 8, !dbg !1475
  %133 = fdiv double %132, 0x5FEFFFFFFFFFFFFF, !dbg !1475
  call void @fDivHandler(double %132, double 0x5FEFFFFFFFFFFFFF, double %133, i64 94397845974312, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845974656, i32 80, i32 10), !dbg !1475
  store double %133, double* %22, align 8, !dbg !1475
  %134 = load double, double* %23, align 8, !dbg !1477
  %135 = fdiv double %134, 0x5FEFFFFFFFFFFFFF, !dbg !1477
  call void @fDivHandler(double %134, double 0x5FEFFFFFFFFFFFFF, double %135, i64 94397845976440, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845978912, i32 81, i32 10), !dbg !1477
  store double %135, double* %23, align 8, !dbg !1477
  %136 = load double, double* %13, align 8, !dbg !1478
  %137 = fdiv double %136, 0x5FEFFFFFFFFFFFFF, !dbg !1478
  call void @fDivHandler(double %136, double 0x5FEFFFFFFFFFFFFF, double %137, i64 94397845980696, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845981104, i32 82, i32 12), !dbg !1478
  store double %137, double* %13, align 8, !dbg !1478
  %138 = load double, double* %14, align 8, !dbg !1479
  %139 = fdiv double %138, 0x5FEFFFFFFFFFFFFF, !dbg !1479
  call void @fDivHandler(double %138, double 0x5FEFFFFFFFFFFFFF, double %139, i64 94397845982888, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845983296, i32 83, i32 12), !dbg !1479
  store double %139, double* %14, align 8, !dbg !1479
  %140 = load double, double* %11, align 8, !dbg !1480
  %141 = fdiv double %140, 0x5FEFFFFFFFFFFFFF, !dbg !1480
  call void @fDivHandler(double %140, double 0x5FEFFFFFFFFFFFFF, double %141, i64 94397845985080, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845985488, i32 84, i32 12), !dbg !1480
  store double %141, double* %11, align 8, !dbg !1480
  %142 = load double, double* %12, align 8, !dbg !1481
  %143 = fdiv double %142, 0x5FEFFFFFFFFFFFFF, !dbg !1481
  call void @fDivHandler(double %142, double 0x5FEFFFFFFFFFFFFF, double %143, i64 94397845987272, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845987680, i32 85, i32 12), !dbg !1481
  store double %143, double* %12, align 8, !dbg !1481
  br label %144, !dbg !1482

; <label>:144:                                    ; preds = %131, %126
  %145 = load double, double* %21, align 8, !dbg !1483
  store double %145, double* %24, align 8, !dbg !1484
  %146 = load double, double* %22, align 8, !dbg !1485
  %147 = load double, double* %23, align 8, !dbg !1486
  %148 = fdiv double %146, %147, !dbg !1487
  call void @fDivHandler(double %146, double %147, double %148, i64 94397845990584, i64 94397845990968, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845991376, i32 89, i32 12), !dbg !1488
  store double %148, double* %21, align 8, !dbg !1488
  %149 = load double, double* %24, align 8, !dbg !1489
  %150 = load double, double* %21, align 8, !dbg !1490
  %151 = fdiv double %149, %150, !dbg !1491
  call void @fDivHandler(double %149, double %150, double %151, i64 94397845992184, i64 94397845992568, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845992976, i32 90, i32 17), !dbg !1492
  store double %151, double* %25, align 8, !dbg !1492
  %152 = load double, double* %25, align 8, !dbg !1493
  %153 = fsub double %152, 1.000000e+00, !dbg !1495
  call void @fSubHandler(double %152, double 1.000000e+00, double %153, i64 94397845993784, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845994224, i32 92, i32 17), !dbg !1496
  %154 = call double @fabs(double %153) #1, !dbg !1496
  %155 = fcmp olt double %154, 0x3CC0000000000000, !dbg !1497
  %156 = call i1 @fCmpInstHandler(double %154, double 0x3CC0000000000000, i1 %155, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397845995152, i32 92, i32 24), !dbg !1498
  br i1 %156, label %157, label %158, !dbg !1498

; <label>:157:                                    ; preds = %144
  br label %159, !dbg !1499

; <label>:158:                                    ; preds = %144
  br label %67, !dbg !1501, !llvm.loop !1503

; <label>:159:                                    ; preds = %157, %67
  %160 = load double, double* %21, align 8, !dbg !1504
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1505
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !1506
  store double %160, double* %162, align 8, !dbg !1507
  %163 = load i32, i32* %10, align 4, !dbg !1508
  %164 = sitofp i32 %163 to double, !dbg !1508
  %165 = fadd double %164, 1.000000e+00, !dbg !1509
  call void @fAddHandler(double %164, double 1.000000e+00, double %165, i64 94397845999144, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397846000848, i32 96, i32 23), !dbg !1510
  %166 = fmul double 4.000000e+00, %165, !dbg !1510
  call void @fMulHandler(double 4.000000e+00, double %165, double %166, i64 0, i64 94397846000848, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397846001328, i32 96, i32 20), !dbg !1511
  %167 = fmul double %166, 0x3CB0000000000000, !dbg !1511
  call void @fMulHandler(double %166, double 0x3CB0000000000000, double %167, i64 94397846001328, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397846001712, i32 96, i32 28), !dbg !1512
  %168 = load double, double* %21, align 8, !dbg !1512
  %169 = call double @fabs(double %168) #1, !dbg !1513
  %170 = fmul double %167, %169, !dbg !1514
  call void @fMulHandler(double %167, double %169, double %170, i64 94397846001712, i64 94397846002576, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397846003056, i32 96, i32 44), !dbg !1515
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1515
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !1516
  store double %170, double* %172, align 8, !dbg !1517
  %173 = load i32, i32* %10, align 4, !dbg !1518
  %174 = icmp eq i32 %173, 5000, !dbg !1520
  %175 = sext i32 %173 to i64, !dbg !1521
  %176 = call i1 @iCmpInstHandler(i64 %175, i64 5000, i1 %174, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94397846005104, i32 98, i32 8), !dbg !1521
  br i1 %176, label %177, label %180, !dbg !1521

; <label>:177:                                    ; preds = %159
  br label %178, !dbg !1522, !llvm.loop !1523

; <label>:178:                                    ; preds = %177
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 99, i32 11), !dbg !1524
  store i32 11, i32* %4, align 4, !dbg !1524
  br label %181, !dbg !1524
                                                  ; No predecessors!
  br label %181, !dbg !1527

; <label>:180:                                    ; preds = %159
  store i32 0, i32* %4, align 4, !dbg !1529
  br label %181, !dbg !1529

; <label>:181:                                    ; preds = %180, %179, %178
  %182 = load i32, i32* %4, align 4, !dbg !1530
  ret i32 %182, !dbg !1530
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exprel_n_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !1531 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1534, metadata !61), !dbg !1535
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1536, metadata !61), !dbg !1537
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1538, metadata !61), !dbg !1539
  %28 = load i32, i32* %5, align 4, !dbg !1540
  %29 = icmp slt i32 %28, 0, !dbg !1542
  %30 = sext i32 %28 to i64, !dbg !1543
  %31 = call i1 @iCmpInstHandler(i64 %30, i64 0, i1 %29, i32 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846019712, i32 425, i32 8), !dbg !1543
  br i1 %31, label %32, label %41, !dbg !1543

; <label>:32:                                     ; preds = %3
  br label %33, !dbg !1544, !llvm.loop !1546

; <label>:33:                                     ; preds = %32
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1547
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !1547
  store double 0x7FF8000000000000, double* %35, align 8, !dbg !1547
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1547
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !1547
  store double 0x7FF8000000000000, double* %37, align 8, !dbg !1547
  br label %38, !dbg !1547, !llvm.loop !1550

; <label>:38:                                     ; preds = %33
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 426, i32 1), !dbg !1552
  store i32 1, i32* %4, align 4, !dbg !1552
  br label %360, !dbg !1552
                                                  ; No predecessors!
  br label %40, !dbg !1555

; <label>:40:                                     ; preds = %39
  br label %360, !dbg !1557

; <label>:41:                                     ; preds = %3
  %42 = load double, double* %6, align 8, !dbg !1558
  %43 = fcmp oeq double %42, 0.000000e+00, !dbg !1560
  %44 = call i1 @fCmpInstHandler(double %42, double 0.000000e+00, i1 %43, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846028608, i32 428, i32 13), !dbg !1561
  br i1 %44, label %45, label %50, !dbg !1561

; <label>:45:                                     ; preds = %41
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1562
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !1564
  store double 1.000000e+00, double* %47, align 8, !dbg !1565
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1566
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !1567
  store double 0.000000e+00, double* %49, align 8, !dbg !1568
  store i32 0, i32* %4, align 4, !dbg !1569
  br label %360, !dbg !1569

; <label>:50:                                     ; preds = %41
  %51 = load double, double* %6, align 8, !dbg !1570
  %52 = call double @fabs(double %51) #1, !dbg !1572
  %53 = load i32, i32* %5, align 4, !dbg !1573
  %54 = sitofp i32 %53 to double, !dbg !1573
  %55 = fmul double 0x3ED965FEA53D6E41, %54, !dbg !1574
  call void @fMulHandler(double 0x3ED965FEA53D6E41, double %54, double %55, i64 0, i64 94397846035464, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846037200, i32 433, i32 43), !dbg !1575
  %56 = fcmp olt double %52, %55, !dbg !1575
  %57 = call i1 @fCmpInstHandler(double %52, double %55, i1 %56, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846037616, i32 433, i32 19), !dbg !1576
  br i1 %57, label %58, label %76, !dbg !1576

; <label>:58:                                     ; preds = %50
  %59 = load double, double* %6, align 8, !dbg !1577
  %60 = load i32, i32* %5, align 4, !dbg !1579
  %61 = add nsw i32 %60, 1, !dbg !1580
  %62 = sitofp i32 %61 to double, !dbg !1581
  %63 = fdiv double %59, %62, !dbg !1582
  call void @fDivHandler(double %59, double %62, double %63, i64 94397846038728, i64 94397846039848, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846040256, i32 434, i32 26), !dbg !1583
  %64 = load double, double* %6, align 8, !dbg !1583
  %65 = load i32, i32* %5, align 4, !dbg !1584
  %66 = add nsw i32 %65, 2, !dbg !1585
  %67 = sitofp i32 %66 to double, !dbg !1586
  %68 = fdiv double %64, %67, !dbg !1587
  call void @fDivHandler(double %64, double %67, double %68, i64 94397846040648, i64 94397846041832, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846042240, i32 434, i32 43), !dbg !1588
  %69 = fadd double 1.000000e+00, %68, !dbg !1588
  call void @fAddHandler(double 1.000000e+00, double %68, double %69, i64 0, i64 94397846042240, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846042688, i32 434, i32 40), !dbg !1589
  %70 = fmul double %63, %69, !dbg !1589
  call void @fMulHandler(double %63, double %69, double %70, i64 94397846040256, i64 94397846042688, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846043072, i32 434, i32 33), !dbg !1590
  %71 = fadd double 1.000000e+00, %70, !dbg !1590
  call void @fAddHandler(double 1.000000e+00, double %70, double %71, i64 0, i64 94397846043072, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846043520, i32 434, i32 23), !dbg !1591
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1591
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !1592
  store double %71, double* %73, align 8, !dbg !1593
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1594
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !1595
  store double 0x3CC0000000000000, double* %75, align 8, !dbg !1596
  store i32 0, i32* %4, align 4, !dbg !1597
  br label %360, !dbg !1597

; <label>:76:                                     ; preds = %50
  %77 = load i32, i32* %5, align 4, !dbg !1598
  %78 = icmp eq i32 %77, 0, !dbg !1600
  %79 = sext i32 %77 to i64, !dbg !1601
  %80 = call i1 @iCmpInstHandler(i64 %79, i64 0, i1 %78, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846048784, i32 438, i32 13), !dbg !1601
  br i1 %80, label %81, label %85, !dbg !1601

; <label>:81:                                     ; preds = %76
  %82 = load double, double* %6, align 8, !dbg !1602
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1604
  %84 = call i32 @gsl_sf_exp_e(double %82, %struct.gsl_sf_result_struct* %83), !dbg !1605
  store i32 %84, i32* %4, align 4, !dbg !1606
  br label %360, !dbg !1606

; <label>:85:                                     ; preds = %76
  %86 = load i32, i32* %5, align 4, !dbg !1607
  %87 = icmp eq i32 %86, 1, !dbg !1609
  %88 = sext i32 %86 to i64, !dbg !1610
  %89 = call i1 @iCmpInstHandler(i64 %88, i64 1, i1 %87, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846053536, i32 441, i32 13), !dbg !1610
  br i1 %89, label %90, label %94, !dbg !1610

; <label>:90:                                     ; preds = %85
  %91 = load double, double* %6, align 8, !dbg !1611
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1613
  %93 = call i32 @gsl_sf_exprel_e(double %91, %struct.gsl_sf_result_struct* %92), !dbg !1614
  store i32 %93, i32* %4, align 4, !dbg !1615
  br label %360, !dbg !1615

; <label>:94:                                     ; preds = %85
  %95 = load i32, i32* %5, align 4, !dbg !1616
  %96 = icmp eq i32 %95, 2, !dbg !1618
  %97 = sext i32 %95 to i64, !dbg !1619
  %98 = call i1 @iCmpInstHandler(i64 %97, i64 2, i1 %96, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846058288, i32 444, i32 13), !dbg !1619
  br i1 %98, label %99, label %103, !dbg !1619

; <label>:99:                                     ; preds = %94
  %100 = load double, double* %6, align 8, !dbg !1620
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1622
  %102 = call i32 @gsl_sf_exprel_2_e(double %100, %struct.gsl_sf_result_struct* %101), !dbg !1623
  store i32 %102, i32* %4, align 4, !dbg !1624
  br label %360, !dbg !1624

; <label>:103:                                    ; preds = %94
  %104 = load double, double* %6, align 8, !dbg !1625
  %105 = load i32, i32* %5, align 4, !dbg !1628
  %106 = sitofp i32 %105 to double, !dbg !1628
  %107 = fcmp ogt double %104, %106, !dbg !1629
  %108 = call i1 @fCmpInstHandler(double %104, double %106, i1 %107, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846065072, i32 448, i32 10), !dbg !1630
  br i1 %108, label %109, label %156, !dbg !1630

; <label>:109:                                    ; preds = %103
  %110 = load double, double* %6, align 8, !dbg !1631
  %111 = fsub double -0.000000e+00, %110, !dbg !1633
  call void @fSubHandler(double -0.000000e+00, double %110, double %111, i64 0, i64 94397846066184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846066528, i32 448, i32 18), !dbg !1634
  %112 = load i32, i32* %5, align 4, !dbg !1634
  %113 = sitofp i32 %112 to double, !dbg !1634
  %114 = load double, double* %6, align 8, !dbg !1635
  %115 = load i32, i32* %5, align 4, !dbg !1636
  %116 = sitofp i32 %115 to double, !dbg !1636
  %117 = fdiv double %114, %116, !dbg !1637
  call void @fDivHandler(double %114, double %116, double %117, i64 94397846068952, i64 94397846069720, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846071392, i32 448, i32 37), !dbg !1638
  %118 = call double @log(double %117) #5, !dbg !1638
  call void @callOneArgHandler(i32 12, double %117, double %118, i64 94397846071392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846071872, i32 448, i32 32), !dbg !1639
  %119 = fadd double 1.000000e+00, %118, !dbg !1639
  call void @fAddHandler(double 1.000000e+00, double %118, double %119, i64 0, i64 94397846071872, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846072384, i32 448, i32 30), !dbg !1640
  %120 = fmul double %113, %119, !dbg !1640
  call void @fMulHandler(double %113, double %119, double %120, i64 94397846067304, i64 94397846072384, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846072768, i32 448, i32 24), !dbg !1641
  %121 = fadd double %111, %120, !dbg !1641
  call void @fAddHandler(double %111, double %120, double %121, i64 94397846066528, i64 94397846072768, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846073184, i32 448, i32 21), !dbg !1642
  %122 = fcmp olt double %121, 0xC04205966F2B4F12, !dbg !1642
  %123 = call i1 @fCmpInstHandler(double %121, double 0xC04205966F2B4F12, i1 %122, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846073664, i32 448, i32 42), !dbg !1643
  br i1 %123, label %124, label %156, !dbg !1643

; <label>:124:                                    ; preds = %109
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1644, metadata !61), !dbg !1646
  call void @llvm.dbg.declare(metadata double* %9, metadata !1647, metadata !61), !dbg !1648
  call void @llvm.dbg.declare(metadata double* %10, metadata !1649, metadata !61), !dbg !1650
  call void @llvm.dbg.declare(metadata double* %11, metadata !1651, metadata !61), !dbg !1652
  %125 = load i32, i32* %5, align 4, !dbg !1653
  %126 = call i32 @gsl_sf_lnfact_e(i32 %125, %struct.gsl_sf_result_struct* %8), !dbg !1654
  %127 = load i32, i32* %5, align 4, !dbg !1655
  %128 = sitofp i32 %127 to double, !dbg !1655
  %129 = load double, double* %6, align 8, !dbg !1656
  %130 = call double @log(double %129) #5, !dbg !1657
  call void @callOneArgHandler(i32 12, double %129, double %130, i64 94397845558920, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397845559392, i32 458, i32 18), !dbg !1658
  %131 = fmul double %128, %130, !dbg !1658
  call void @fMulHandler(double %128, double %130, double %131, i64 94397845558824, i64 94397845559392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397845559872, i32 458, i32 17), !dbg !1659
  store double %131, double* %11, align 8, !dbg !1659
  %132 = load double, double* %6, align 8, !dbg !1660
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1661
  %134 = load double, double* %133, align 8, !dbg !1661
  %135 = fadd double %132, %134, !dbg !1662
  call void @fAddHandler(double %132, double %134, double %135, i64 94397846090072, i64 94397846090904, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846092576, i32 459, i32 20), !dbg !1663
  %136 = load double, double* %11, align 8, !dbg !1663
  %137 = fsub double %135, %136, !dbg !1664
  call void @fSubHandler(double %135, double %136, double %137, i64 94397846092576, i64 94397846092968, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846093376, i32 459, i32 32), !dbg !1665
  store double %137, double* %9, align 8, !dbg !1665
  %138 = load double, double* %6, align 8, !dbg !1666
  %139 = call double @fabs(double %138) #1, !dbg !1667
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1668
  %141 = load double, double* %140, align 8, !dbg !1668
  %142 = call double @fabs(double %141) #1, !dbg !1669
  %143 = fadd double %139, %142, !dbg !1671
  call void @fAddHandler(double %139, double %142, double %143, i64 94397846094656, i64 94397846099360, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846099840, i32 460, i32 45), !dbg !1672
  %144 = load double, double* %11, align 8, !dbg !1672
  %145 = call double @fabs(double %144) #1, !dbg !1673
  %146 = fadd double %143, %145, !dbg !1675
  call void @fAddHandler(double %143, double %145, double %146, i64 94397846099840, i64 94397846100704, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846101184, i32 460, i32 63), !dbg !1676
  %147 = fmul double 0x3CB0000000000000, %146, !dbg !1676
  call void @fMulHandler(double 0x3CB0000000000000, double %146, double %147, i64 0, i64 94397846101184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846101600, i32 460, i32 34), !dbg !1677
  store double %147, double* %10, align 8, !dbg !1677
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1678
  %149 = load double, double* %148, align 8, !dbg !1678
  %150 = load double, double* %10, align 8, !dbg !1679
  %151 = fadd double %150, %149, !dbg !1679
  call void @fAddHandler(double %150, double %149, double %151, i64 94397846104504, i64 94397846102856, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846104912, i32 461, i32 15), !dbg !1679
  store double %151, double* %10, align 8, !dbg !1679
  %152 = load double, double* %9, align 8, !dbg !1680
  %153 = load double, double* %10, align 8, !dbg !1681
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1682
  %155 = call i32 @gsl_sf_exp_err_e(double %152, double %153, %struct.gsl_sf_result_struct* %154), !dbg !1683
  store i32 %155, i32* %4, align 4, !dbg !1684
  br label %360, !dbg !1684

; <label>:156:                                    ; preds = %109, %103
  %157 = load double, double* %6, align 8, !dbg !1685
  %158 = load i32, i32* %5, align 4, !dbg !1687
  %159 = sitofp i32 %158 to double, !dbg !1687
  %160 = fcmp ogt double %157, %159, !dbg !1688
  %161 = call i1 @fCmpInstHandler(double %157, double %159, i1 %160, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846113296, i32 464, i32 15), !dbg !1689
  br i1 %161, label %162, label %300, !dbg !1689

; <label>:162:                                    ; preds = %156
  call void @llvm.dbg.declare(metadata double* %12, metadata !1690, metadata !61), !dbg !1692
  %163 = load double, double* %6, align 8, !dbg !1693
  %164 = call double @log(double %163) #5, !dbg !1694
  call void @callOneArgHandler(i32 12, double %163, double %164, i64 94397846115512, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846115952, i32 470, i32 21), !dbg !1692
  store double %164, double* %12, align 8, !dbg !1692
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1695, metadata !61), !dbg !1696
  call void @llvm.dbg.declare(metadata double* %14, metadata !1697, metadata !61), !dbg !1698
  call void @llvm.dbg.declare(metadata double* %15, metadata !1699, metadata !61), !dbg !1700
  call void @llvm.dbg.declare(metadata double* %16, metadata !1701, metadata !61), !dbg !1702
  %165 = load i32, i32* %5, align 4, !dbg !1703
  %166 = call i32 @gsl_sf_lnfact_e(i32 %165, %struct.gsl_sf_result_struct* %13), !dbg !1704
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1705
  %168 = load double, double* %167, align 8, !dbg !1705
  %169 = load i32, i32* %5, align 4, !dbg !1706
  %170 = sitofp i32 %169 to double, !dbg !1706
  %171 = call double @log(double %170) #5, !dbg !1707
  call void @callOneArgHandler(i32 12, double %170, double %171, i64 94397846125832, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846127568, i32 476, i32 27), !dbg !1708
  %172 = fsub double %168, %171, !dbg !1708
  call void @fSubHandler(double %168, double %171, double %172, i64 94397846123800, i64 94397846127568, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846128048, i32 476, i32 25), !dbg !1709
  store double %172, double* %14, align 8, !dbg !1709
  %173 = load double, double* %6, align 8, !dbg !1710
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1711
  %175 = load double, double* %174, align 8, !dbg !1711
  %176 = fadd double %173, %175, !dbg !1712
  call void @fAddHandler(double %173, double %175, double %176, i64 94397846128856, i64 94397846129688, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846131360, i32 477, i32 22), !dbg !1713
  %177 = load i32, i32* %5, align 4, !dbg !1713
  %178 = sitofp i32 %177 to double, !dbg !1713
  %179 = load double, double* %12, align 8, !dbg !1714
  %180 = fmul double %178, %179, !dbg !1715
  call void @fMulHandler(double %178, double %179, double %180, i64 94397846132136, i64 94397846133784, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846134192, i32 477, i32 37), !dbg !1716
  %181 = fsub double %176, %180, !dbg !1716
  call void @fSubHandler(double %176, double %180, double %181, i64 94397846131360, i64 94397846134192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846134608, i32 477, i32 34), !dbg !1717
  store double %181, double* %15, align 8, !dbg !1717
  %182 = load double, double* %6, align 8, !dbg !1718
  %183 = call double @fabs(double %182) #1, !dbg !1719
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1720
  %185 = load double, double* %184, align 8, !dbg !1720
  %186 = call double @fabs(double %185) #1, !dbg !1721
  %187 = fadd double %183, %186, !dbg !1723
  call void @fAddHandler(double %183, double %186, double %187, i64 94397846135888, i64 94397846138528, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846139008, i32 478, i32 47), !dbg !1724
  %188 = load i32, i32* %5, align 4, !dbg !1724
  %189 = sitofp i32 %188 to double, !dbg !1724
  %190 = load double, double* %12, align 8, !dbg !1725
  %191 = fmul double %189, %190, !dbg !1726
  call void @fMulHandler(double %189, double %190, double %191, i64 94397846139784, i64 94397846141432, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846141840, i32 478, i32 73), !dbg !1727
  %192 = call double @fabs(double %191) #1, !dbg !1727
  %193 = fadd double %187, %192, !dbg !1729
  call void @fAddHandler(double %187, double %192, double %193, i64 94397846139008, i64 94397846142320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846142800, i32 478, i32 65), !dbg !1730
  %194 = fmul double 0x3CB0000000000000, %193, !dbg !1730
  call void @fMulHandler(double 0x3CB0000000000000, double %193, double %194, i64 0, i64 94397846142800, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846143216, i32 478, i32 36), !dbg !1731
  store double %194, double* %16, align 8, !dbg !1731
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1732
  %196 = load double, double* %195, align 8, !dbg !1732
  %197 = load double, double* %16, align 8, !dbg !1733
  %198 = fadd double %197, %196, !dbg !1733
  call void @fAddHandler(double %197, double %196, double %198, i64 94397846146120, i64 94397846144472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846146528, i32 479, i32 17), !dbg !1733
  store double %198, double* %16, align 8, !dbg !1733
  %199 = load double, double* %15, align 8, !dbg !1734
  %200 = fcmp olt double %199, 0x40860642FEFA39EF, !dbg !1736
  %201 = call i1 @fCmpInstHandler(double %199, double 0x40860642FEFA39EF, i1 %200, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846148784, i32 480, i32 20), !dbg !1737
  br i1 %201, label %202, label %290, !dbg !1737

; <label>:202:                                    ; preds = %162
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1738, metadata !61), !dbg !1740
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1741, metadata !61), !dbg !1742
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !1743, metadata !61), !dbg !1744
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1745, metadata !61), !dbg !1746
  %203 = load double, double* %15, align 8, !dbg !1747
  %204 = load double, double* %16, align 8, !dbg !1748
  %205 = call i32 @gsl_sf_exp_err_e(double %203, double %204, %struct.gsl_sf_result_struct* %19), !dbg !1749
  store i32 %205, i32* %20, align 4, !dbg !1746
  call void @llvm.dbg.declare(metadata double* %21, metadata !1750, metadata !61), !dbg !1751
  %206 = load double, double* %6, align 8, !dbg !1752
  %207 = fsub double -0.000000e+00, %206, !dbg !1753
  call void @fSubHandler(double -0.000000e+00, double %206, double %207, i64 0, i64 94397846158312, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846158688, i32 485, i32 36), !dbg !1754
  %208 = load i32, i32* %5, align 4, !dbg !1754
  %209 = sub nsw i32 %208, 1, !dbg !1755
  %210 = sitofp i32 %209 to double, !dbg !1756
  %211 = load double, double* %12, align 8, !dbg !1757
  %212 = fmul double %210, %211, !dbg !1758
  call void @fMulHandler(double %210, double %211, double %212, i64 94397846159880, i64 94397846160264, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846160672, i32 485, i32 46), !dbg !1759
  %213 = fadd double %207, %212, !dbg !1759
  call void @fAddHandler(double %207, double %212, double %213, i64 94397846158688, i64 94397846160672, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846161088, i32 485, i32 39), !dbg !1760
  %214 = load double, double* %14, align 8, !dbg !1760
  %215 = fsub double %213, %214, !dbg !1761
  call void @fSubHandler(double %213, double %214, double %215, i64 94397846161088, i64 94397846161480, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846161888, i32 485, i32 52), !dbg !1751
  store double %215, double* %21, align 8, !dbg !1751
  call void @llvm.dbg.declare(metadata double* %22, metadata !1762, metadata !61), !dbg !1763
  store double 1.000000e+00, double* %22, align 8, !dbg !1763
  call void @llvm.dbg.declare(metadata double* %23, metadata !1764, metadata !61), !dbg !1765
  store double 1.000000e+00, double* %23, align 8, !dbg !1765
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1766, metadata !61), !dbg !1767
  store i32 1, i32* %24, align 4, !dbg !1768
  br label %216, !dbg !1770

; <label>:216:                                    ; preds = %235, %202
  %217 = load i32, i32* %24, align 4, !dbg !1771
  %218 = load i32, i32* %5, align 4, !dbg !1774
  %219 = icmp slt i32 %217, %218, !dbg !1775
  %220 = sext i32 %217 to i64, !dbg !1776
  %221 = sext i32 %218 to i64, !dbg !1776
  %222 = call i1 @iCmpInstHandler(i64 %220, i64 %221, i1 %219, i32 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846172256, i32 489, i32 19), !dbg !1776
  br i1 %222, label %223, label %238, !dbg !1776

; <label>:223:                                    ; preds = %216
  %224 = load i32, i32* %5, align 4, !dbg !1777
  %225 = load i32, i32* %24, align 4, !dbg !1779
  %226 = sub nsw i32 %224, %225, !dbg !1780
  %227 = sitofp i32 %226 to double, !dbg !1781
  %228 = load double, double* %6, align 8, !dbg !1782
  %229 = fdiv double %227, %228, !dbg !1783
  call void @fDivHandler(double %227, double %228, double %229, i64 94397846174488, i64 94397846174872, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846175280, i32 490, i32 24), !dbg !1784
  %230 = load double, double* %23, align 8, !dbg !1784
  %231 = fmul double %230, %229, !dbg !1784
  call void @fMulHandler(double %230, double %229, double %231, i64 94397846175672, i64 94397846175280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846176080, i32 490, i32 16), !dbg !1784
  store double %231, double* %23, align 8, !dbg !1784
  %232 = load double, double* %23, align 8, !dbg !1785
  %233 = load double, double* %22, align 8, !dbg !1786
  %234 = fadd double %233, %232, !dbg !1786
  call void @fAddHandler(double %233, double %232, double %234, i64 94397846178248, i64 94397846177864, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846178656, i32 491, i32 19), !dbg !1786
  store double %234, double* %22, align 8, !dbg !1786
  br label %235, !dbg !1787

; <label>:235:                                    ; preds = %223
  %236 = load i32, i32* %24, align 4, !dbg !1788
  %237 = add nsw i32 %236, 1, !dbg !1788
  store i32 %237, i32* %24, align 4, !dbg !1788
  br label %216, !dbg !1790, !llvm.loop !1791

; <label>:238:                                    ; preds = %216
  %239 = load double, double* %21, align 8, !dbg !1793
  %240 = load double, double* %22, align 8, !dbg !1794
  %241 = call i32 @gsl_sf_exp_mult_e(double %239, double %240, %struct.gsl_sf_result_struct* %18), !dbg !1795
  store i32 %241, i32* %17, align 4, !dbg !1796
  %242 = load i32, i32* %17, align 4, !dbg !1797
  %243 = icmp eq i32 %242, 0, !dbg !1799
  %244 = sext i32 %242 to i64, !dbg !1800
  %245 = call i1 @iCmpInstHandler(i64 %244, i64 0, i1 %243, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846185856, i32 494, i32 20), !dbg !1800
  br i1 %245, label %246, label %284, !dbg !1800

; <label>:246:                                    ; preds = %238
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1801
  %248 = load double, double* %247, align 8, !dbg !1801
  %249 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1803
  %250 = load double, double* %249, align 8, !dbg !1803
  %251 = fsub double 1.000000e+00, %250, !dbg !1804
  call void @fSubHandler(double 1.000000e+00, double %250, double %251, i64 0, i64 94397846189448, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846191152, i32 495, i32 41), !dbg !1805
  %252 = fmul double %248, %251, !dbg !1805
  call void @fMulHandler(double %248, double %251, double %252, i64 94397846187352, i64 94397846191152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846191536, i32 495, i32 34), !dbg !1806
  %253 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1806
  %254 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %253, i32 0, i32 0, !dbg !1807
  store double %252, double* %254, align 8, !dbg !1808
  %255 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1809
  %256 = load double, double* %255, align 8, !dbg !1809
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1810
  %258 = load double, double* %257, align 8, !dbg !1810
  %259 = fadd double 0x3CC0000000000000, %258, !dbg !1811
  call void @fAddHandler(double 0x3CC0000000000000, double %258, double %259, i64 0, i64 94397846195720, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846197392, i32 496, i32 57), !dbg !1812
  %260 = fmul double %256, %259, !dbg !1812
  call void @fMulHandler(double %256, double %259, double %260, i64 94397846193624, i64 94397846197392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846197808, i32 496, i32 34), !dbg !1813
  %261 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1813
  %262 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %261, i32 0, i32 1, !dbg !1814
  store double %260, double* %262, align 8, !dbg !1815
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1816
  %264 = load double, double* %263, align 8, !dbg !1816
  %265 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1817
  %266 = load double, double* %265, align 8, !dbg !1817
  %267 = fsub double 1.000000e+00, %266, !dbg !1818
  call void @fSubHandler(double 1.000000e+00, double %266, double %267, i64 0, i64 94397846201992, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846203696, i32 497, i32 45), !dbg !1819
  %268 = call double @fabs(double %267) #1, !dbg !1819
  %269 = fmul double %264, %268, !dbg !1820
  call void @fMulHandler(double %264, double %268, double %269, i64 94397846199896, i64 94397846204144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846204624, i32 497, i32 34), !dbg !1821
  %270 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1821
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %270, i32 0, i32 1, !dbg !1822
  %272 = load double, double* %271, align 8, !dbg !1823
  %273 = fadd double %272, %269, !dbg !1823
  call void @fAddHandler(double %272, double %269, double %273, i64 94397846205848, i64 94397846204624, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846206256, i32 497, i32 23), !dbg !1823
  store double %273, double* %271, align 8, !dbg !1823
  %274 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1824
  %275 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %274, i32 0, i32 0, !dbg !1825
  %276 = load double, double* %275, align 8, !dbg !1825
  %277 = call double @fabs(double %276) #1, !dbg !1826
  %278 = fmul double 0x3CC0000000000000, %277, !dbg !1827
  call void @fMulHandler(double 0x3CC0000000000000, double %277, double %278, i64 0, i64 94397846097296, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846213136, i32 498, i32 48), !dbg !1828
  %279 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1828
  %280 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %279, i32 0, i32 1, !dbg !1829
  %281 = load double, double* %280, align 8, !dbg !1830
  %282 = fadd double %281, %278, !dbg !1830
  call void @fAddHandler(double %281, double %278, double %282, i64 94397846214360, i64 94397846213136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846214768, i32 498, i32 23), !dbg !1830
  store double %282, double* %280, align 8, !dbg !1830
  %283 = load i32, i32* %20, align 4, !dbg !1831
  store i32 %283, i32* %4, align 4, !dbg !1832
  br label %360, !dbg !1832

; <label>:284:                                    ; preds = %238
  %285 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1833
  %286 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %285, i32 0, i32 0, !dbg !1835
  store double 0.000000e+00, double* %286, align 8, !dbg !1836
  %287 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1837
  %288 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %287, i32 0, i32 1, !dbg !1838
  store double 0.000000e+00, double* %288, align 8, !dbg !1839
  %289 = load i32, i32* %17, align 4, !dbg !1840
  store i32 %289, i32* %4, align 4, !dbg !1841
  br label %360, !dbg !1841

; <label>:290:                                    ; preds = %162
  br label %291, !dbg !1842, !llvm.loop !1844

; <label>:291:                                    ; preds = %290
  %292 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1845
  %293 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %292, i32 0, i32 0, !dbg !1845
  store double 0x7FF0000000000000, double* %293, align 8, !dbg !1845
  %294 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1845
  %295 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %294, i32 0, i32 1, !dbg !1845
  store double 0x7FF0000000000000, double* %295, align 8, !dbg !1845
  br label %296, !dbg !1845, !llvm.loop !1848

; <label>:296:                                    ; preds = %291
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 508, i32 16), !dbg !1850
  store i32 16, i32* %4, align 4, !dbg !1850
  br label %360, !dbg !1850
                                                  ; No predecessors!
  br label %298, !dbg !1853

; <label>:298:                                    ; preds = %297
  br label %299

; <label>:299:                                    ; preds = %298
  br label %353, !dbg !1855

; <label>:300:                                    ; preds = %156
  %301 = load double, double* %6, align 8, !dbg !1856
  %302 = load i32, i32* %5, align 4, !dbg !1858
  %303 = sitofp i32 %302 to double, !dbg !1858
  %304 = fmul double -1.000000e+01, %303, !dbg !1859
  call void @fMulHandler(double -1.000000e+01, double %303, double %304, i64 0, i64 94397846232008, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846233776, i32 511, i32 22), !dbg !1860
  %305 = fcmp ogt double %301, %304, !dbg !1860
  %306 = call i1 @fCmpInstHandler(double %301, double %304, i1 %305, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846234160, i32 511, i32 15), !dbg !1861
  br i1 %306, label %307, label %313, !dbg !1861

; <label>:307:                                    ; preds = %300
  %308 = load i32, i32* %5, align 4, !dbg !1862
  %309 = sitofp i32 %308 to double, !dbg !1862
  %310 = load double, double* %6, align 8, !dbg !1864
  %311 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1865
  %312 = call i32 @exprel_n_CF(double %309, double %310, %struct.gsl_sf_result_struct* %311), !dbg !1866
  store i32 %312, i32* %4, align 4, !dbg !1867
  br label %360, !dbg !1867

; <label>:313:                                    ; preds = %300
  call void @llvm.dbg.declare(metadata double* %25, metadata !1868, metadata !61), !dbg !1870
  store double 1.000000e+00, double* %25, align 8, !dbg !1870
  call void @llvm.dbg.declare(metadata double* %26, metadata !1871, metadata !61), !dbg !1872
  store double 1.000000e+00, double* %26, align 8, !dbg !1872
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1873, metadata !61), !dbg !1874
  store i32 1, i32* %27, align 4, !dbg !1875
  br label %314, !dbg !1877

; <label>:314:                                    ; preds = %333, %313
  %315 = load i32, i32* %27, align 4, !dbg !1878
  %316 = load i32, i32* %5, align 4, !dbg !1881
  %317 = icmp slt i32 %315, %316, !dbg !1882
  %318 = sext i32 %315 to i64, !dbg !1883
  %319 = sext i32 %316 to i64, !dbg !1883
  %320 = call i1 @iCmpInstHandler(i64 %318, i64 %319, i1 %317, i32 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846248864, i32 522, i32 17), !dbg !1883
  br i1 %320, label %321, label %336, !dbg !1883

; <label>:321:                                    ; preds = %314
  %322 = load i32, i32* %5, align 4, !dbg !1884
  %323 = load i32, i32* %27, align 4, !dbg !1886
  %324 = sub nsw i32 %322, %323, !dbg !1887
  %325 = sitofp i32 %324 to double, !dbg !1888
  %326 = load double, double* %6, align 8, !dbg !1889
  %327 = fdiv double %325, %326, !dbg !1890
  call void @fDivHandler(double %325, double %326, double %327, i64 94397846251096, i64 94397846251480, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846251888, i32 523, i32 22), !dbg !1891
  %328 = load double, double* %26, align 8, !dbg !1891
  %329 = fmul double %328, %327, !dbg !1891
  call void @fMulHandler(double %328, double %327, double %329, i64 94397846252280, i64 94397846251888, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846252688, i32 523, i32 14), !dbg !1891
  store double %329, double* %26, align 8, !dbg !1891
  %330 = load double, double* %26, align 8, !dbg !1892
  %331 = load double, double* %25, align 8, !dbg !1893
  %332 = fadd double %331, %330, !dbg !1893
  call void @fAddHandler(double %331, double %330, double %332, i64 94397846254856, i64 94397846254472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846255264, i32 524, i32 14), !dbg !1893
  store double %332, double* %25, align 8, !dbg !1893
  br label %333, !dbg !1894

; <label>:333:                                    ; preds = %321
  %334 = load i32, i32* %27, align 4, !dbg !1895
  %335 = add nsw i32 %334, 1, !dbg !1895
  store i32 %335, i32* %27, align 4, !dbg !1895
  br label %314, !dbg !1897, !llvm.loop !1898

; <label>:336:                                    ; preds = %314
  %337 = load i32, i32* %5, align 4, !dbg !1900
  %338 = sub nsw i32 0, %337, !dbg !1901
  %339 = sitofp i32 %338 to double, !dbg !1901
  %340 = load double, double* %6, align 8, !dbg !1902
  %341 = fdiv double %339, %340, !dbg !1903
  call void @fDivHandler(double %339, double %340, double %341, i64 94397846261112, i64 94397846262760, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846263168, i32 526, i32 23), !dbg !1904
  %342 = load double, double* %25, align 8, !dbg !1904
  %343 = fmul double %341, %342, !dbg !1905
  call void @fMulHandler(double %341, double %342, double %343, i64 94397846263168, i64 94397846263560, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846263968, i32 526, i32 26), !dbg !1906
  %344 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1906
  %345 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %344, i32 0, i32 0, !dbg !1907
  store double %343, double* %345, align 8, !dbg !1908
  %346 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1909
  %347 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %346, i32 0, i32 0, !dbg !1910
  %348 = load double, double* %347, align 8, !dbg !1910
  %349 = call double @fabs(double %348) #1, !dbg !1911
  %350 = fmul double 0x3CC0000000000000, %349, !dbg !1912
  call void @fMulHandler(double 0x3CC0000000000000, double %349, double %350, i64 0, i64 94397846268176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94397846268656, i32 527, i32 43), !dbg !1913
  %351 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1913
  %352 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %351, i32 0, i32 1, !dbg !1914
  store double %350, double* %352, align 8, !dbg !1915
  store i32 0, i32* %4, align 4, !dbg !1916
  br label %360, !dbg !1916

; <label>:353:                                    ; preds = %299
  br label %354

; <label>:354:                                    ; preds = %353
  br label %355

; <label>:355:                                    ; preds = %354
  br label %356

; <label>:356:                                    ; preds = %355
  br label %357

; <label>:357:                                    ; preds = %356
  br label %358

; <label>:358:                                    ; preds = %357
  br label %359

; <label>:359:                                    ; preds = %358
  br label %360

; <label>:360:                                    ; preds = %359, %336, %307, %296, %284, %246, %124, %99, %90, %81, %58, %45, %40, %38
  %361 = load i32, i32* %4, align 4, !dbg !1917
  ret i32 %361, !dbg !1917
}

declare i32 @gsl_sf_lnfact_e(i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1918 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1919, metadata !61), !dbg !1920
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1921, metadata !61), !dbg !1922
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1923, metadata !61), !dbg !1924
  call void @llvm.dbg.declare(metadata double* %8, metadata !1925, metadata !61), !dbg !1926
  %11 = load double, double* %6, align 8, !dbg !1927
  %12 = call double @fabs(double %11) #1, !dbg !1928
  store double %12, double* %8, align 8, !dbg !1926
  %13 = load double, double* %5, align 8, !dbg !1929
  %14 = load double, double* %8, align 8, !dbg !1931
  %15 = fadd double %13, %14, !dbg !1932
  call void @fAddHandler(double %13, double %14, double %15, i64 94397845557880, i64 94397846280648, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846281056, i32 541, i32 8), !dbg !1933
  %16 = fcmp ogt double %15, 0x40862E42FEFA39EF, !dbg !1933
  %17 = call i1 @fCmpInstHandler(double %15, double 0x40862E42FEFA39EF, i1 %16, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846281472, i32 541, i32 14), !dbg !1934
  br i1 %17, label %18, label %27, !dbg !1934

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !1935, !llvm.loop !1937

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1938
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1938
  store double 0x7FF0000000000000, double* %21, align 8, !dbg !1938
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1938
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !1938
  store double 0x7FF0000000000000, double* %23, align 8, !dbg !1938
  br label %24, !dbg !1938, !llvm.loop !1941

; <label>:24:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 542, i32 16), !dbg !1943
  store i32 16, i32* %4, align 4, !dbg !1943
  br label %69, !dbg !1943
                                                  ; No predecessors!
  br label %26, !dbg !1946

; <label>:26:                                     ; preds = %25
  br label %69, !dbg !1948

; <label>:27:                                     ; preds = %3
  %28 = load double, double* %5, align 8, !dbg !1949
  %29 = load double, double* %8, align 8, !dbg !1951
  %30 = fsub double %28, %29, !dbg !1952
  call void @fSubHandler(double %28, double %29, double %30, i64 94397846289688, i64 94397846290008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846290416, i32 544, i32 13), !dbg !1953
  %31 = fcmp olt double %30, 0xC086232BDD7ABCD2, !dbg !1953
  %32 = call i1 @fCmpInstHandler(double %30, double 0xC086232BDD7ABCD2, i1 %31, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846290832, i32 544, i32 19), !dbg !1954
  br i1 %32, label %33, label %42, !dbg !1954

; <label>:33:                                     ; preds = %27
  br label %34, !dbg !1955, !llvm.loop !1957

; <label>:34:                                     ; preds = %33
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1958
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1958
  store double 0.000000e+00, double* %36, align 8, !dbg !1958
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1958
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !1958
  store double 0x10000000000000, double* %38, align 8, !dbg !1958
  br label %39, !dbg !1958, !llvm.loop !1961

; <label>:39:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 545, i32 15), !dbg !1963
  store i32 15, i32* %4, align 4, !dbg !1963
  br label %69, !dbg !1963
                                                  ; No predecessors!
  br label %41, !dbg !1966

; <label>:41:                                     ; preds = %40
  br label %68, !dbg !1968

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata double* %9, metadata !1969, metadata !61), !dbg !1971
  %43 = load double, double* %5, align 8, !dbg !1972
  %44 = call double @exp(double %43) #5, !dbg !1973
  call void @callOneArgHandler(i32 11, double %43, double %44, i64 94397846300248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846300688, i32 548, i32 24), !dbg !1971
  store double %44, double* %9, align 8, !dbg !1971
  call void @llvm.dbg.declare(metadata double* %10, metadata !1974, metadata !61), !dbg !1975
  %45 = load double, double* %8, align 8, !dbg !1976
  %46 = call double @exp(double %45) #5, !dbg !1977
  call void @callOneArgHandler(i32 11, double %45, double %46, i64 94397846303944, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846304384, i32 549, i32 24), !dbg !1975
  store double %46, double* %10, align 8, !dbg !1975
  %47 = load double, double* %9, align 8, !dbg !1978
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1979
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !1980
  store double %47, double* %49, align 8, !dbg !1981
  %50 = load double, double* %9, align 8, !dbg !1982
  %51 = load double, double* %10, align 8, !dbg !1983
  %52 = load double, double* %10, align 8, !dbg !1984
  %53 = fdiv double 1.000000e+00, %52, !dbg !1985
  call void @fDivHandler(double 1.000000e+00, double %52, double %53, i64 0, i64 94397846308920, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846309360, i32 551, i32 63), !dbg !1986
  %54 = fsub double %51, %53, !dbg !1986
  call void @fSubHandler(double %51, double %53, double %54, i64 94397846308536, i64 94397846309360, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846309744, i32 551, i32 58), !dbg !1987
  %55 = call double @GSL_MAX_DBL(double 0x3CB0000000000000, double %54), !dbg !1987
  %56 = fmul double %50, %55, !dbg !1988
  call void @fMulHandler(double %50, double %55, double %56, i64 94397846308152, i64 94397846310520, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846310992, i32 551, i32 23), !dbg !1989
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1989
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !1990
  store double %56, double* %58, align 8, !dbg !1991
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1992
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 0, !dbg !1993
  %61 = load double, double* %60, align 8, !dbg !1993
  %62 = call double @fabs(double %61) #1, !dbg !1994
  %63 = fmul double 0x3CC0000000000000, %62, !dbg !1995
  call void @fMulHandler(double 0x3CC0000000000000, double %62, double %63, i64 0, i64 94397846315168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846315648, i32 552, i32 42), !dbg !1996
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1996
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !1997
  %66 = load double, double* %65, align 8, !dbg !1998
  %67 = fadd double %66, %63, !dbg !1998
  call void @fAddHandler(double %66, double %63, double %67, i64 94397846316872, i64 94397846315648, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94397846317280, i32 552, i32 17), !dbg !1998
  store double %67, double* %65, align 8, !dbg !1998
  store i32 0, i32* %4, align 4, !dbg !1999
  br label %69, !dbg !1999

; <label>:68:                                     ; preds = %41
  br label %69

; <label>:69:                                     ; preds = %68, %42, %39, %26, %24
  %70 = load i32, i32* %4, align 4, !dbg !2000
  ret i32 %70, !dbg !2000
}

declare double @GSL_MAX_DBL(double, double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_exp_err_e10_e(double, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !2001 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2002, metadata !61), !dbg !2003
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2004, metadata !61), !dbg !2005
  store %struct.gsl_sf_result_e10_struct* %2, %struct.gsl_sf_result_e10_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %7, metadata !2006, metadata !61), !dbg !2007
  call void @llvm.dbg.declare(metadata double* %8, metadata !2008, metadata !61), !dbg !2009
  %11 = load double, double* %6, align 8, !dbg !2010
  %12 = call double @fabs(double %11) #1, !dbg !2011
  store double %12, double* %8, align 8, !dbg !2009
  %13 = load double, double* %5, align 8, !dbg !2012
  %14 = load double, double* %8, align 8, !dbg !2014
  %15 = fadd double %13, %14, !dbg !2015
  call void @fAddHandler(double %13, double %14, double %15, i64 94397846332584, i64 94397846332968, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846333376, i32 565, i32 8), !dbg !2016
  %16 = fcmp ogt double %15, 0x41DFFFFFFF800000, !dbg !2016
  %17 = call i1 @fCmpInstHandler(double %15, double 0x41DFFFFFFF800000, i1 %16, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846333792, i32 565, i32 14), !dbg !2017
  br i1 %17, label %18, label %29, !dbg !2017

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !2018, !llvm.loop !2020

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !2021
  %21 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %20, i32 0, i32 0, !dbg !2021
  store double 0x7FF0000000000000, double* %21, align 8, !dbg !2021
  %22 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !2021
  %23 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %22, i32 0, i32 1, !dbg !2021
  store double 0x7FF0000000000000, double* %23, align 8, !dbg !2021
  %24 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !2021
  %25 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %24, i32 0, i32 2, !dbg !2021
  store i32 0, i32* %25, align 8, !dbg !2021
  br label %26, !dbg !2021, !llvm.loop !2024

; <label>:26:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 566, i32 16), !dbg !2026
  store i32 16, i32* %4, align 4, !dbg !2026
  br label %74, !dbg !2026
                                                  ; No predecessors!
  br label %28, !dbg !2029

; <label>:28:                                     ; preds = %27
  br label %74, !dbg !2031

; <label>:29:                                     ; preds = %3
  %30 = load double, double* %5, align 8, !dbg !2032
  %31 = load double, double* %8, align 8, !dbg !2034
  %32 = fsub double %30, %31, !dbg !2035
  call void @fSubHandler(double %30, double %31, double %32, i64 94397846342392, i64 94397846342712, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846343120, i32 568, i32 13), !dbg !2036
  %33 = fcmp olt double %32, 0xC1DFFFFFFFC00000, !dbg !2036
  %34 = call i1 @fCmpInstHandler(double %32, double 0xC1DFFFFFFFC00000, i1 %33, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846343536, i32 568, i32 19), !dbg !2037
  br i1 %34, label %35, label %46, !dbg !2037

; <label>:35:                                     ; preds = %29
  br label %36, !dbg !2038, !llvm.loop !2040

; <label>:36:                                     ; preds = %35
  %37 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !2041
  %38 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %37, i32 0, i32 0, !dbg !2041
  store double 0.000000e+00, double* %38, align 8, !dbg !2041
  %39 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !2041
  %40 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %39, i32 0, i32 1, !dbg !2041
  store double 0x10000000000000, double* %40, align 8, !dbg !2041
  %41 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !2041
  %42 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %41, i32 0, i32 2, !dbg !2041
  store i32 0, i32* %42, align 8, !dbg !2041
  br label %43, !dbg !2041, !llvm.loop !2044

; <label>:43:                                     ; preds = %36
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 569, i32 15), !dbg !2046
  store i32 15, i32* %4, align 4, !dbg !2046
  br label %74, !dbg !2046
                                                  ; No predecessors!
  br label %45, !dbg !2049

; <label>:45:                                     ; preds = %44
  br label %73, !dbg !2051

; <label>:46:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2052, metadata !61), !dbg !2054
  %47 = load double, double* %5, align 8, !dbg !2055
  %48 = fdiv double %47, 0x40026BB1BBB55516, !dbg !2056
  call void @fDivHandler(double %47, double 0x40026BB1BBB55516, double %48, i64 94397846353336, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846353712, i32 572, i32 35), !dbg !2057
  %49 = call double @floor(double %48) #1, !dbg !2057
  %50 = fptosi double %49 to i32, !dbg !2058
  store i32 %50, i32* %9, align 4, !dbg !2054
  call void @llvm.dbg.declare(metadata double* %10, metadata !2059, metadata !61), !dbg !2060
  %51 = load double, double* %5, align 8, !dbg !2061
  %52 = load i32, i32* %9, align 4, !dbg !2062
  %53 = sitofp i32 %52 to double, !dbg !2062
  %54 = fmul double %53, 0x40026BB1BBB55516, !dbg !2063
  call void @fMulHandler(double %53, double 0x40026BB1BBB55516, double %54, i64 94397846358568, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846360240, i32 573, i32 30), !dbg !2064
  %55 = fsub double %51, %54, !dbg !2064
  call void @fSubHandler(double %51, double %54, double %55, i64 94397846357832, i64 94397846360240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846360656, i32 573, i32 28), !dbg !2065
  %56 = call double @exp(double %55) #5, !dbg !2065
  call void @callOneArgHandler(i32 11, double %55, double %56, i64 94397846360656, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846361136, i32 573, i32 23), !dbg !2060
  store double %56, double* %10, align 8, !dbg !2060
  %57 = load double, double* %10, align 8, !dbg !2066
  %58 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !2067
  %59 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %58, i32 0, i32 0, !dbg !2068
  store double %57, double* %59, align 8, !dbg !2069
  %60 = load double, double* %10, align 8, !dbg !2070
  %61 = load double, double* %5, align 8, !dbg !2071
  %62 = call double @fabs(double %61) #1, !dbg !2072
  %63 = fadd double %62, 1.000000e+00, !dbg !2073
  call void @fAddHandler(double %62, double 1.000000e+00, double %63, i64 94397846365760, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846366272, i32 575, i32 58), !dbg !2074
  %64 = fmul double 0x3CC0000000000000, %63, !dbg !2074
  call void @fMulHandler(double 0x3CC0000000000000, double %63, double %64, i64 0, i64 94397846366272, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846366656, i32 575, i32 47), !dbg !2075
  %65 = load double, double* %8, align 8, !dbg !2075
  %66 = fadd double %64, %65, !dbg !2076
  call void @fAddHandler(double %64, double %65, double %66, i64 94397846366656, i64 94397846367048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846367456, i32 575, i32 65), !dbg !2077
  %67 = fmul double %60, %66, !dbg !2077
  call void @fMulHandler(double %60, double %66, double %67, i64 94397846364904, i64 94397846367456, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94397846367872, i32 575, i32 22), !dbg !2078
  %68 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !2078
  %69 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %68, i32 0, i32 1, !dbg !2079
  store double %67, double* %69, align 8, !dbg !2080
  %70 = load i32, i32* %9, align 4, !dbg !2081
  %71 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %7, align 8, !dbg !2082
  %72 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %71, i32 0, i32 2, !dbg !2083
  store i32 %70, i32* %72, align 8, !dbg !2084
  store i32 0, i32* %4, align 4, !dbg !2085
  br label %74, !dbg !2085

; <label>:73:                                     ; preds = %45
  br label %74

; <label>:74:                                     ; preds = %73, %46, %43, %28, %26
  %75 = load i32, i32* %4, align 4, !dbg !2086
  ret i32 %75, !dbg !2086
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_exp(double) #0 !dbg !2087 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2090, metadata !61), !dbg !2091
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2092, metadata !61), !dbg !2093
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2094, metadata !61), !dbg !2093
  %6 = load double, double* %3, align 8, !dbg !2093
  %7 = call i32 @gsl_sf_exp_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2093
  store i32 %7, i32* %5, align 4, !dbg !2093
  %8 = load i32, i32* %5, align 4, !dbg !2095
  %9 = icmp ne i32 %8, 0, !dbg !2095
  %10 = sext i32 %8 to i64, !dbg !2093
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @29, i32 0, i32 0), i64 94397846382256, i32 588, i32 3), !dbg !2093
  br i1 %11, label %12, label %18, !dbg !2093

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !2097, !llvm.loop !2100

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !2102
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 588, i32 %14), !dbg !2102
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2102
  %16 = load double, double* %15, align 8, !dbg !2102
  store double %16, double* %2, align 8, !dbg !2102
  br label %21, !dbg !2102
                                                  ; No predecessors!
  br label %18, !dbg !2105

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2107
  %20 = load double, double* %19, align 8, !dbg !2107
  store double %20, double* %2, align 8, !dbg !2107
  br label %21, !dbg !2107

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !2109
  ret double %22, !dbg !2109
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_exp_mult(double, double) #0 !dbg !2110 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2113, metadata !61), !dbg !2114
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2115, metadata !61), !dbg !2116
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2117, metadata !61), !dbg !2118
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2119, metadata !61), !dbg !2118
  %8 = load double, double* %4, align 8, !dbg !2118
  %9 = load double, double* %5, align 8, !dbg !2118
  %10 = call i32 @gsl_sf_exp_mult_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !2118
  store i32 %10, i32* %7, align 4, !dbg !2118
  %11 = load i32, i32* %7, align 4, !dbg !2120
  %12 = icmp ne i32 %11, 0, !dbg !2120
  %13 = sext i32 %11 to i64, !dbg !2118
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @31, i32 0, i32 0), i64 94397846400992, i32 593, i32 3), !dbg !2118
  br i1 %14, label %15, label %21, !dbg !2118

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !2122, !llvm.loop !2125

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !2127
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 593, i32 %17), !dbg !2127
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2127
  %19 = load double, double* %18, align 8, !dbg !2127
  store double %19, double* %3, align 8, !dbg !2127
  br label %24, !dbg !2127
                                                  ; No predecessors!
  br label %21, !dbg !2130

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2132
  %23 = load double, double* %22, align 8, !dbg !2132
  store double %23, double* %3, align 8, !dbg !2132
  br label %24, !dbg !2132

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !2134
  ret double %25, !dbg !2134
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_expm1(double) #0 !dbg !2135 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2136, metadata !61), !dbg !2137
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2138, metadata !61), !dbg !2139
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2140, metadata !61), !dbg !2139
  %6 = load double, double* %3, align 8, !dbg !2139
  %7 = call i32 @gsl_sf_expm1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2139
  store i32 %7, i32* %5, align 4, !dbg !2139
  %8 = load i32, i32* %5, align 4, !dbg !2141
  %9 = icmp ne i32 %8, 0, !dbg !2141
  %10 = sext i32 %8 to i64, !dbg !2139
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @33, i32 0, i32 0), i64 94397846422464, i32 598, i32 3), !dbg !2139
  br i1 %11, label %12, label %18, !dbg !2139

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !2143, !llvm.loop !2146

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !2148
  call void @gsl_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 598, i32 %14), !dbg !2148
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2148
  %16 = load double, double* %15, align 8, !dbg !2148
  store double %16, double* %2, align 8, !dbg !2148
  br label %21, !dbg !2148
                                                  ; No predecessors!
  br label %18, !dbg !2151

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2153
  %20 = load double, double* %19, align 8, !dbg !2153
  store double %20, double* %2, align 8, !dbg !2153
  br label %21, !dbg !2153

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !2155
  ret double %22, !dbg !2155
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_exprel(double) #0 !dbg !2156 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2157, metadata !61), !dbg !2158
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2159, metadata !61), !dbg !2160
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2161, metadata !61), !dbg !2160
  %6 = load double, double* %3, align 8, !dbg !2160
  %7 = call i32 @gsl_sf_exprel_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2160
  store i32 %7, i32* %5, align 4, !dbg !2160
  %8 = load i32, i32* %5, align 4, !dbg !2162
  %9 = icmp ne i32 %8, 0, !dbg !2162
  %10 = sext i32 %8 to i64, !dbg !2160
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @35, i32 0, i32 0), i64 94397846439760, i32 603, i32 3), !dbg !2160
  br i1 %11, label %12, label %18, !dbg !2160

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !2164, !llvm.loop !2167

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !2169
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 603, i32 %14), !dbg !2169
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2169
  %16 = load double, double* %15, align 8, !dbg !2169
  store double %16, double* %2, align 8, !dbg !2169
  br label %21, !dbg !2169
                                                  ; No predecessors!
  br label %18, !dbg !2172

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2174
  %20 = load double, double* %19, align 8, !dbg !2174
  store double %20, double* %2, align 8, !dbg !2174
  br label %21, !dbg !2174

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !2176
  ret double %22, !dbg !2176
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_exprel_2(double) #0 !dbg !2177 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2178, metadata !61), !dbg !2179
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2180, metadata !61), !dbg !2181
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2182, metadata !61), !dbg !2181
  %6 = load double, double* %3, align 8, !dbg !2181
  %7 = call i32 @gsl_sf_exprel_2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2181
  store i32 %7, i32* %5, align 4, !dbg !2181
  %8 = load i32, i32* %5, align 4, !dbg !2183
  %9 = icmp ne i32 %8, 0, !dbg !2183
  %10 = sext i32 %8 to i64, !dbg !2181
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @37, i32 0, i32 0), i64 94397846457056, i32 608, i32 3), !dbg !2181
  br i1 %11, label %12, label %18, !dbg !2181

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !2185, !llvm.loop !2188

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !2190
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 608, i32 %14), !dbg !2190
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2190
  %16 = load double, double* %15, align 8, !dbg !2190
  store double %16, double* %2, align 8, !dbg !2190
  br label %21, !dbg !2190
                                                  ; No predecessors!
  br label %18, !dbg !2193

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2195
  %20 = load double, double* %19, align 8, !dbg !2195
  store double %20, double* %2, align 8, !dbg !2195
  br label %21, !dbg !2195

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !2197
  ret double %22, !dbg !2197
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_exprel_n(i32, double) #0 !dbg !2198 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2201, metadata !61), !dbg !2202
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2203, metadata !61), !dbg !2204
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2205, metadata !61), !dbg !2206
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2207, metadata !61), !dbg !2206
  %8 = load i32, i32* %4, align 4, !dbg !2206
  %9 = load double, double* %5, align 8, !dbg !2206
  %10 = call i32 @gsl_sf_exprel_n_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !2206
  store i32 %10, i32* %7, align 4, !dbg !2206
  %11 = load i32, i32* %7, align 4, !dbg !2208
  %12 = icmp ne i32 %11, 0, !dbg !2208
  %13 = sext i32 %11 to i64, !dbg !2206
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0), i64 94397846475792, i32 613, i32 3), !dbg !2206
  br i1 %14, label %15, label %21, !dbg !2206

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !2210, !llvm.loop !2213

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !2215
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 613, i32 %17), !dbg !2215
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2215
  %19 = load double, double* %18, align 8, !dbg !2215
  store double %19, double* %3, align 8, !dbg !2215
  br label %24, !dbg !2215
                                                  ; No predecessors!
  br label %21, !dbg !2218

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2220
  %23 = load double, double* %22, align 8, !dbg !2220
  store double %23, double* %3, align 8, !dbg !2220
  br label %24, !dbg !2220

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !2222
  ret double %25, !dbg !2222
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
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "exp.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_exp_e", scope: !1, file: !1, line: 107, type: !48, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!48 = !DISubroutineType(types: !49)
!49 = !{!42, !50, !52}
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
!60 = !DILocalVariable(name: "x", arg: 1, scope: !47, file: !1, line: 107, type: !50)
!61 = !DIExpression()
!62 = !DILocation(line: 107, column: 31, scope: !47)
!63 = !DILocalVariable(name: "result", arg: 2, scope: !47, file: !1, line: 107, type: !52)
!64 = !DILocation(line: 107, column: 50, scope: !47)
!65 = !DILocation(line: 109, column: 6, scope: !66)
!66 = distinct !DILexicalBlock(scope: !47, file: !1, line: 109, column: 6)
!67 = !DILocation(line: 109, column: 8, scope: !66)
!68 = !DILocation(line: 109, column: 6, scope: !47)
!69 = !DILocation(line: 110, column: 5, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 109, column: 27)
!71 = distinct !{!71, !69}
!72 = !DILocation(line: 110, column: 5, scope: !73)
!73 = !DILexicalBlockFile(scope: !74, file: !1, discriminator: 1)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 110, column: 5)
!75 = distinct !{!75, !76}
!76 = !DILocation(line: 110, column: 5, scope: !74)
!77 = !DILocation(line: 110, column: 5, scope: !78)
!78 = !DILexicalBlockFile(scope: !79, file: !1, discriminator: 2)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 110, column: 5)
!80 = !DILocation(line: 110, column: 5, scope: !81)
!81 = !DILexicalBlockFile(scope: !74, file: !1, discriminator: 3)
!82 = !DILocation(line: 111, column: 3, scope: !70)
!83 = !DILocation(line: 112, column: 11, scope: !84)
!84 = distinct !DILexicalBlock(scope: !66, file: !1, line: 112, column: 11)
!85 = !DILocation(line: 112, column: 13, scope: !84)
!86 = !DILocation(line: 112, column: 11, scope: !66)
!87 = !DILocation(line: 113, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 112, column: 32)
!89 = distinct !{!89, !87}
!90 = !DILocation(line: 113, column: 5, scope: !91)
!91 = !DILexicalBlockFile(scope: !92, file: !1, discriminator: 1)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 113, column: 5)
!93 = distinct !{!93, !94}
!94 = !DILocation(line: 113, column: 5, scope: !92)
!95 = !DILocation(line: 113, column: 5, scope: !96)
!96 = !DILexicalBlockFile(scope: !97, file: !1, discriminator: 2)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 113, column: 5)
!98 = !DILocation(line: 113, column: 5, scope: !99)
!99 = !DILexicalBlockFile(scope: !92, file: !1, discriminator: 3)
!100 = !DILocation(line: 114, column: 3, scope: !88)
!101 = !DILocation(line: 116, column: 23, scope: !102)
!102 = distinct !DILexicalBlock(scope: !84, file: !1, line: 115, column: 8)
!103 = !DILocation(line: 116, column: 19, scope: !102)
!104 = !DILocation(line: 116, column: 5, scope: !102)
!105 = !DILocation(line: 116, column: 13, scope: !102)
!106 = !DILocation(line: 116, column: 17, scope: !102)
!107 = !DILocation(line: 117, column: 48, scope: !102)
!108 = !DILocation(line: 117, column: 56, scope: !102)
!109 = !DILocation(line: 117, column: 43, scope: !102)
!110 = !DILocation(line: 117, column: 41, scope: !102)
!111 = !DILocation(line: 117, column: 5, scope: !102)
!112 = !DILocation(line: 117, column: 13, scope: !102)
!113 = !DILocation(line: 117, column: 17, scope: !102)
!114 = !DILocation(line: 118, column: 5, scope: !102)
!115 = !DILocation(line: 120, column: 1, scope: !47)
!116 = distinct !DISubprogram(name: "gsl_sf_exp_e10_e", scope: !1, file: !1, line: 122, type: !117, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!117 = !DISubroutineType(types: !118)
!118 = !{!42, !50, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !54, line: 51, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !54, line: 46, size: 192, align: 64, elements: !122)
!122 = !{!123, !124, !125}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !121, file: !54, line: 47, baseType: !51, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !121, file: !54, line: 48, baseType: !51, size: 64, align: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !121, file: !54, line: 49, baseType: !42, size: 32, align: 32, offset: 128)
!126 = !DILocalVariable(name: "x", arg: 1, scope: !116, file: !1, line: 122, type: !50)
!127 = !DILocation(line: 122, column: 35, scope: !116)
!128 = !DILocalVariable(name: "result", arg: 2, scope: !116, file: !1, line: 122, type: !119)
!129 = !DILocation(line: 122, column: 58, scope: !116)
!130 = !DILocation(line: 124, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !116, file: !1, line: 124, column: 6)
!132 = !DILocation(line: 124, column: 8, scope: !131)
!133 = !DILocation(line: 124, column: 6, scope: !116)
!134 = !DILocation(line: 125, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !1, line: 124, column: 21)
!136 = distinct !{!136, !134}
!137 = !DILocation(line: 125, column: 5, scope: !138)
!138 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 1)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 125, column: 5)
!140 = distinct !{!140, !141}
!141 = !DILocation(line: 125, column: 5, scope: !139)
!142 = !DILocation(line: 125, column: 5, scope: !143)
!143 = !DILexicalBlockFile(scope: !144, file: !1, discriminator: 2)
!144 = distinct !DILexicalBlock(scope: !139, file: !1, line: 125, column: 5)
!145 = !DILocation(line: 125, column: 5, scope: !146)
!146 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 3)
!147 = !DILocation(line: 126, column: 3, scope: !135)
!148 = !DILocation(line: 127, column: 11, scope: !149)
!149 = distinct !DILexicalBlock(scope: !131, file: !1, line: 127, column: 11)
!150 = !DILocation(line: 127, column: 13, scope: !149)
!151 = !DILocation(line: 127, column: 11, scope: !131)
!152 = !DILocation(line: 128, column: 5, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 127, column: 26)
!154 = distinct !{!154, !152}
!155 = !DILocation(line: 128, column: 5, scope: !156)
!156 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 1)
!157 = distinct !DILexicalBlock(scope: !153, file: !1, line: 128, column: 5)
!158 = distinct !{!158, !159}
!159 = !DILocation(line: 128, column: 5, scope: !157)
!160 = !DILocation(line: 128, column: 5, scope: !161)
!161 = !DILexicalBlockFile(scope: !162, file: !1, discriminator: 2)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 128, column: 5)
!163 = !DILocation(line: 128, column: 5, scope: !164)
!164 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 3)
!165 = !DILocation(line: 129, column: 3, scope: !153)
!166 = !DILocalVariable(name: "N", scope: !167, file: !1, line: 131, type: !168)
!167 = distinct !DILexicalBlock(scope: !149, file: !1, line: 130, column: 8)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!169 = !DILocation(line: 131, column: 15, scope: !167)
!170 = !DILocation(line: 131, column: 20, scope: !167)
!171 = !DILocation(line: 131, column: 22, scope: !167)
!172 = !DILocation(line: 131, column: 40, scope: !167)
!173 = !DILocation(line: 131, column: 43, scope: !174)
!174 = !DILexicalBlockFile(scope: !167, file: !1, discriminator: 1)
!175 = !DILocation(line: 131, column: 45, scope: !174)
!176 = !DILocation(line: 131, column: 19, scope: !174)
!177 = !DILocation(line: 131, column: 78, scope: !178)
!178 = !DILexicalBlockFile(scope: !167, file: !1, discriminator: 2)
!179 = !DILocation(line: 131, column: 79, scope: !178)
!180 = !DILocation(line: 131, column: 72, scope: !178)
!181 = !DILocation(line: 131, column: 66, scope: !178)
!182 = !DILocation(line: 131, column: 19, scope: !178)
!183 = !DILocation(line: 131, column: 19, scope: !184)
!184 = !DILexicalBlockFile(scope: !167, file: !1, discriminator: 3)
!185 = !DILocation(line: 131, column: 19, scope: !186)
!186 = !DILexicalBlockFile(scope: !167, file: !1, discriminator: 4)
!187 = !DILocation(line: 131, column: 15, scope: !186)
!188 = !DILocation(line: 132, column: 23, scope: !167)
!189 = !DILocation(line: 132, column: 25, scope: !167)
!190 = !DILocation(line: 132, column: 26, scope: !167)
!191 = !DILocation(line: 132, column: 24, scope: !167)
!192 = !DILocation(line: 132, column: 19, scope: !167)
!193 = !DILocation(line: 132, column: 5, scope: !167)
!194 = !DILocation(line: 132, column: 13, scope: !167)
!195 = !DILocation(line: 132, column: 17, scope: !167)
!196 = !DILocation(line: 133, column: 31, scope: !167)
!197 = !DILocation(line: 133, column: 26, scope: !167)
!198 = !DILocation(line: 133, column: 33, scope: !167)
!199 = !DILocation(line: 133, column: 23, scope: !167)
!200 = !DILocation(line: 133, column: 39, scope: !167)
!201 = !DILocation(line: 133, column: 64, scope: !167)
!202 = !DILocation(line: 133, column: 72, scope: !167)
!203 = !DILocation(line: 133, column: 59, scope: !174)
!204 = !DILocation(line: 133, column: 57, scope: !167)
!205 = !DILocation(line: 133, column: 5, scope: !167)
!206 = !DILocation(line: 133, column: 13, scope: !167)
!207 = !DILocation(line: 133, column: 17, scope: !167)
!208 = !DILocation(line: 134, column: 19, scope: !167)
!209 = !DILocation(line: 134, column: 5, scope: !167)
!210 = !DILocation(line: 134, column: 13, scope: !167)
!211 = !DILocation(line: 134, column: 17, scope: !167)
!212 = !DILocation(line: 135, column: 5, scope: !167)
!213 = !DILocation(line: 137, column: 1, scope: !116)
!214 = distinct !DISubprogram(name: "gsl_sf_exp_mult_e", scope: !1, file: !1, line: 140, type: !215, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!215 = !DISubroutineType(types: !216)
!216 = !{!42, !50, !50, !52}
!217 = !DILocalVariable(name: "x", arg: 1, scope: !214, file: !1, line: 140, type: !50)
!218 = !DILocation(line: 140, column: 36, scope: !214)
!219 = !DILocalVariable(name: "y", arg: 2, scope: !214, file: !1, line: 140, type: !50)
!220 = !DILocation(line: 140, column: 52, scope: !214)
!221 = !DILocalVariable(name: "result", arg: 3, scope: !214, file: !1, line: 140, type: !52)
!222 = !DILocation(line: 140, column: 71, scope: !214)
!223 = !DILocalVariable(name: "ay", scope: !214, file: !1, line: 142, type: !50)
!224 = !DILocation(line: 142, column: 16, scope: !214)
!225 = !DILocation(line: 142, column: 27, scope: !214)
!226 = !DILocation(line: 142, column: 22, scope: !214)
!227 = !DILocation(line: 144, column: 6, scope: !228)
!228 = distinct !DILexicalBlock(scope: !214, file: !1, line: 144, column: 6)
!229 = !DILocation(line: 144, column: 8, scope: !228)
!230 = !DILocation(line: 144, column: 6, scope: !214)
!231 = !DILocation(line: 145, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !1, line: 144, column: 16)
!233 = !DILocation(line: 145, column: 13, scope: !232)
!234 = !DILocation(line: 145, column: 17, scope: !232)
!235 = !DILocation(line: 146, column: 5, scope: !232)
!236 = !DILocation(line: 146, column: 13, scope: !232)
!237 = !DILocation(line: 146, column: 17, scope: !232)
!238 = !DILocation(line: 147, column: 5, scope: !232)
!239 = !DILocation(line: 149, column: 16, scope: !240)
!240 = distinct !DILexicalBlock(scope: !228, file: !1, line: 149, column: 14)
!241 = !DILocation(line: 149, column: 18, scope: !240)
!242 = !DILocation(line: 149, column: 42, scope: !240)
!243 = !DILocation(line: 149, column: 47, scope: !244)
!244 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 1)
!245 = !DILocation(line: 149, column: 49, scope: !244)
!246 = !DILocation(line: 150, column: 11, scope: !240)
!247 = !DILocation(line: 150, column: 15, scope: !244)
!248 = !DILocation(line: 150, column: 18, scope: !244)
!249 = !DILocation(line: 150, column: 42, scope: !244)
!250 = !DILocation(line: 150, column: 46, scope: !251)
!251 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 2)
!252 = !DILocation(line: 150, column: 49, scope: !251)
!253 = !DILocation(line: 149, column: 14, scope: !254)
!254 = !DILexicalBlockFile(scope: !228, file: !1, discriminator: 2)
!255 = !DILocalVariable(name: "ex", scope: !256, file: !1, line: 152, type: !50)
!256 = distinct !DILexicalBlock(scope: !240, file: !1, line: 151, column: 7)
!257 = !DILocation(line: 152, column: 18, scope: !256)
!258 = !DILocation(line: 152, column: 27, scope: !256)
!259 = !DILocation(line: 152, column: 23, scope: !256)
!260 = !DILocation(line: 153, column: 19, scope: !256)
!261 = !DILocation(line: 153, column: 23, scope: !256)
!262 = !DILocation(line: 153, column: 21, scope: !256)
!263 = !DILocation(line: 153, column: 5, scope: !256)
!264 = !DILocation(line: 153, column: 13, scope: !256)
!265 = !DILocation(line: 153, column: 17, scope: !256)
!266 = !DILocation(line: 154, column: 31, scope: !256)
!267 = !DILocation(line: 154, column: 26, scope: !256)
!268 = !DILocation(line: 154, column: 24, scope: !256)
!269 = !DILocation(line: 154, column: 35, scope: !256)
!270 = !DILocation(line: 154, column: 60, scope: !256)
!271 = !DILocation(line: 154, column: 68, scope: !256)
!272 = !DILocation(line: 154, column: 55, scope: !273)
!273 = !DILexicalBlockFile(scope: !256, file: !1, discriminator: 1)
!274 = !DILocation(line: 154, column: 53, scope: !256)
!275 = !DILocation(line: 154, column: 5, scope: !256)
!276 = !DILocation(line: 154, column: 13, scope: !256)
!277 = !DILocation(line: 154, column: 17, scope: !256)
!278 = !DILocation(line: 155, column: 5, scope: !256)
!279 = !DILocalVariable(name: "ly", scope: !280, file: !1, line: 158, type: !50)
!280 = distinct !DILexicalBlock(scope: !240, file: !1, line: 157, column: 8)
!281 = !DILocation(line: 158, column: 18, scope: !280)
!282 = !DILocation(line: 158, column: 28, scope: !280)
!283 = !DILocation(line: 158, column: 24, scope: !280)
!284 = !DILocalVariable(name: "lnr", scope: !280, file: !1, line: 159, type: !50)
!285 = !DILocation(line: 159, column: 18, scope: !280)
!286 = !DILocation(line: 159, column: 24, scope: !280)
!287 = !DILocation(line: 159, column: 28, scope: !280)
!288 = !DILocation(line: 159, column: 26, scope: !280)
!289 = !DILocation(line: 161, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !280, file: !1, line: 161, column: 8)
!291 = !DILocation(line: 161, column: 12, scope: !290)
!292 = !DILocation(line: 161, column: 8, scope: !280)
!293 = !DILocation(line: 162, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !1, line: 161, column: 38)
!295 = distinct !{!295, !293}
!296 = !DILocation(line: 162, column: 7, scope: !297)
!297 = !DILexicalBlockFile(scope: !298, file: !1, discriminator: 1)
!298 = distinct !DILexicalBlock(scope: !294, file: !1, line: 162, column: 7)
!299 = distinct !{!299, !300}
!300 = !DILocation(line: 162, column: 7, scope: !298)
!301 = !DILocation(line: 162, column: 7, scope: !302)
!302 = !DILexicalBlockFile(scope: !303, file: !1, discriminator: 2)
!303 = distinct !DILexicalBlock(scope: !298, file: !1, line: 162, column: 7)
!304 = !DILocation(line: 162, column: 7, scope: !305)
!305 = !DILexicalBlockFile(scope: !298, file: !1, discriminator: 3)
!306 = !DILocation(line: 163, column: 5, scope: !294)
!307 = !DILocation(line: 164, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !290, file: !1, line: 164, column: 13)
!309 = !DILocation(line: 164, column: 17, scope: !308)
!310 = !DILocation(line: 164, column: 13, scope: !290)
!311 = !DILocation(line: 165, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !1, line: 164, column: 43)
!313 = distinct !{!313, !311}
!314 = !DILocation(line: 165, column: 7, scope: !315)
!315 = !DILexicalBlockFile(scope: !316, file: !1, discriminator: 1)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 165, column: 7)
!317 = distinct !{!317, !318}
!318 = !DILocation(line: 165, column: 7, scope: !316)
!319 = !DILocation(line: 165, column: 7, scope: !320)
!320 = !DILexicalBlockFile(scope: !321, file: !1, discriminator: 2)
!321 = distinct !DILexicalBlock(scope: !316, file: !1, line: 165, column: 7)
!322 = !DILocation(line: 165, column: 7, scope: !323)
!323 = !DILexicalBlockFile(scope: !316, file: !1, discriminator: 3)
!324 = !DILocation(line: 166, column: 5, scope: !312)
!325 = !DILocalVariable(name: "sy", scope: !326, file: !1, line: 168, type: !50)
!326 = distinct !DILexicalBlock(scope: !308, file: !1, line: 167, column: 10)
!327 = !DILocation(line: 168, column: 20, scope: !326)
!328 = !DILocation(line: 168, column: 27, scope: !326)
!329 = !DILocalVariable(name: "M", scope: !326, file: !1, line: 169, type: !50)
!330 = !DILocation(line: 169, column: 20, scope: !326)
!331 = !DILocation(line: 169, column: 33, scope: !326)
!332 = !DILocation(line: 169, column: 27, scope: !326)
!333 = !DILocalVariable(name: "N", scope: !326, file: !1, line: 170, type: !50)
!334 = !DILocation(line: 170, column: 20, scope: !326)
!335 = !DILocation(line: 170, column: 33, scope: !326)
!336 = !DILocation(line: 170, column: 27, scope: !326)
!337 = !DILocalVariable(name: "a", scope: !326, file: !1, line: 171, type: !50)
!338 = !DILocation(line: 171, column: 20, scope: !326)
!339 = !DILocation(line: 171, column: 27, scope: !326)
!340 = !DILocation(line: 171, column: 32, scope: !326)
!341 = !DILocation(line: 171, column: 30, scope: !326)
!342 = !DILocalVariable(name: "b", scope: !326, file: !1, line: 172, type: !50)
!343 = !DILocation(line: 172, column: 20, scope: !326)
!344 = !DILocation(line: 172, column: 27, scope: !326)
!345 = !DILocation(line: 172, column: 32, scope: !326)
!346 = !DILocation(line: 172, column: 30, scope: !326)
!347 = !DILocalVariable(name: "berr", scope: !326, file: !1, line: 173, type: !50)
!348 = !DILocation(line: 173, column: 20, scope: !326)
!349 = !DILocation(line: 173, column: 57, scope: !326)
!350 = !DILocation(line: 173, column: 52, scope: !326)
!351 = !DILocation(line: 173, column: 68, scope: !326)
!352 = !DILocation(line: 173, column: 63, scope: !353)
!353 = !DILexicalBlockFile(scope: !326, file: !1, discriminator: 1)
!354 = !DILocation(line: 173, column: 61, scope: !326)
!355 = !DILocation(line: 173, column: 49, scope: !326)
!356 = !DILocation(line: 174, column: 22, scope: !326)
!357 = !DILocation(line: 174, column: 31, scope: !326)
!358 = !DILocation(line: 174, column: 33, scope: !326)
!359 = !DILocation(line: 174, column: 32, scope: !326)
!360 = !DILocation(line: 174, column: 27, scope: !326)
!361 = !DILocation(line: 174, column: 25, scope: !326)
!362 = !DILocation(line: 174, column: 42, scope: !326)
!363 = !DILocation(line: 174, column: 44, scope: !326)
!364 = !DILocation(line: 174, column: 43, scope: !326)
!365 = !DILocation(line: 174, column: 38, scope: !353)
!366 = !DILocation(line: 174, column: 36, scope: !326)
!367 = !DILocation(line: 174, column: 7, scope: !326)
!368 = !DILocation(line: 174, column: 15, scope: !326)
!369 = !DILocation(line: 174, column: 20, scope: !326)
!370 = !DILocation(line: 175, column: 22, scope: !326)
!371 = !DILocation(line: 175, column: 34, scope: !326)
!372 = !DILocation(line: 175, column: 42, scope: !326)
!373 = !DILocation(line: 175, column: 29, scope: !326)
!374 = !DILocation(line: 175, column: 27, scope: !326)
!375 = !DILocation(line: 175, column: 7, scope: !326)
!376 = !DILocation(line: 175, column: 15, scope: !326)
!377 = !DILocation(line: 175, column: 20, scope: !326)
!378 = !DILocation(line: 176, column: 47, scope: !326)
!379 = !DILocation(line: 176, column: 51, scope: !326)
!380 = !DILocation(line: 176, column: 49, scope: !326)
!381 = !DILocation(line: 176, column: 53, scope: !326)
!382 = !DILocation(line: 176, column: 44, scope: !326)
!383 = !DILocation(line: 176, column: 67, scope: !326)
!384 = !DILocation(line: 176, column: 75, scope: !326)
!385 = !DILocation(line: 176, column: 62, scope: !326)
!386 = !DILocation(line: 176, column: 60, scope: !326)
!387 = !DILocation(line: 176, column: 7, scope: !326)
!388 = !DILocation(line: 176, column: 15, scope: !326)
!389 = !DILocation(line: 176, column: 19, scope: !326)
!390 = !DILocation(line: 177, column: 7, scope: !326)
!391 = !DILocation(line: 180, column: 1, scope: !214)
!392 = distinct !DISubprogram(name: "gsl_sf_exp_mult_e10_e", scope: !1, file: !1, line: 183, type: !393, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!393 = !DISubroutineType(types: !394)
!394 = !{!42, !50, !50, !119}
!395 = !DILocalVariable(name: "x", arg: 1, scope: !392, file: !1, line: 183, type: !50)
!396 = !DILocation(line: 183, column: 40, scope: !392)
!397 = !DILocalVariable(name: "y", arg: 2, scope: !392, file: !1, line: 183, type: !50)
!398 = !DILocation(line: 183, column: 56, scope: !392)
!399 = !DILocalVariable(name: "result", arg: 3, scope: !392, file: !1, line: 183, type: !119)
!400 = !DILocation(line: 183, column: 79, scope: !392)
!401 = !DILocalVariable(name: "ay", scope: !392, file: !1, line: 185, type: !50)
!402 = !DILocation(line: 185, column: 16, scope: !392)
!403 = !DILocation(line: 185, column: 27, scope: !392)
!404 = !DILocation(line: 185, column: 22, scope: !392)
!405 = !DILocation(line: 187, column: 6, scope: !406)
!406 = distinct !DILexicalBlock(scope: !392, file: !1, line: 187, column: 6)
!407 = !DILocation(line: 187, column: 8, scope: !406)
!408 = !DILocation(line: 187, column: 6, scope: !392)
!409 = !DILocation(line: 188, column: 5, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !1, line: 187, column: 16)
!411 = !DILocation(line: 188, column: 13, scope: !410)
!412 = !DILocation(line: 188, column: 17, scope: !410)
!413 = !DILocation(line: 189, column: 5, scope: !410)
!414 = !DILocation(line: 189, column: 13, scope: !410)
!415 = !DILocation(line: 189, column: 17, scope: !410)
!416 = !DILocation(line: 190, column: 5, scope: !410)
!417 = !DILocation(line: 190, column: 13, scope: !410)
!418 = !DILocation(line: 190, column: 17, scope: !410)
!419 = !DILocation(line: 191, column: 5, scope: !410)
!420 = !DILocation(line: 193, column: 16, scope: !421)
!421 = distinct !DILexicalBlock(scope: !406, file: !1, line: 193, column: 14)
!422 = !DILocation(line: 193, column: 18, scope: !421)
!423 = !DILocation(line: 193, column: 42, scope: !421)
!424 = !DILocation(line: 193, column: 47, scope: !425)
!425 = !DILexicalBlockFile(scope: !421, file: !1, discriminator: 1)
!426 = !DILocation(line: 193, column: 49, scope: !425)
!427 = !DILocation(line: 194, column: 11, scope: !421)
!428 = !DILocation(line: 194, column: 15, scope: !425)
!429 = !DILocation(line: 194, column: 18, scope: !425)
!430 = !DILocation(line: 194, column: 42, scope: !425)
!431 = !DILocation(line: 194, column: 46, scope: !432)
!432 = !DILexicalBlockFile(scope: !421, file: !1, discriminator: 2)
!433 = !DILocation(line: 194, column: 49, scope: !432)
!434 = !DILocation(line: 193, column: 14, scope: !435)
!435 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 2)
!436 = !DILocalVariable(name: "ex", scope: !437, file: !1, line: 196, type: !50)
!437 = distinct !DILexicalBlock(scope: !421, file: !1, line: 195, column: 7)
!438 = !DILocation(line: 196, column: 18, scope: !437)
!439 = !DILocation(line: 196, column: 27, scope: !437)
!440 = !DILocation(line: 196, column: 23, scope: !437)
!441 = !DILocation(line: 197, column: 19, scope: !437)
!442 = !DILocation(line: 197, column: 23, scope: !437)
!443 = !DILocation(line: 197, column: 21, scope: !437)
!444 = !DILocation(line: 197, column: 5, scope: !437)
!445 = !DILocation(line: 197, column: 13, scope: !437)
!446 = !DILocation(line: 197, column: 17, scope: !437)
!447 = !DILocation(line: 198, column: 31, scope: !437)
!448 = !DILocation(line: 198, column: 26, scope: !437)
!449 = !DILocation(line: 198, column: 24, scope: !437)
!450 = !DILocation(line: 198, column: 35, scope: !437)
!451 = !DILocation(line: 198, column: 60, scope: !437)
!452 = !DILocation(line: 198, column: 68, scope: !437)
!453 = !DILocation(line: 198, column: 55, scope: !454)
!454 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 1)
!455 = !DILocation(line: 198, column: 53, scope: !437)
!456 = !DILocation(line: 198, column: 5, scope: !437)
!457 = !DILocation(line: 198, column: 13, scope: !437)
!458 = !DILocation(line: 198, column: 17, scope: !437)
!459 = !DILocation(line: 199, column: 5, scope: !437)
!460 = !DILocation(line: 199, column: 13, scope: !437)
!461 = !DILocation(line: 199, column: 17, scope: !437)
!462 = !DILocation(line: 200, column: 5, scope: !437)
!463 = !DILocalVariable(name: "ly", scope: !464, file: !1, line: 203, type: !50)
!464 = distinct !DILexicalBlock(scope: !421, file: !1, line: 202, column: 8)
!465 = !DILocation(line: 203, column: 18, scope: !464)
!466 = !DILocation(line: 203, column: 28, scope: !464)
!467 = !DILocation(line: 203, column: 24, scope: !464)
!468 = !DILocalVariable(name: "l10_val", scope: !464, file: !1, line: 204, type: !50)
!469 = !DILocation(line: 204, column: 18, scope: !464)
!470 = !DILocation(line: 204, column: 29, scope: !464)
!471 = !DILocation(line: 204, column: 33, scope: !464)
!472 = !DILocation(line: 204, column: 31, scope: !464)
!473 = !DILocation(line: 204, column: 36, scope: !464)
!474 = !DILocation(line: 206, column: 8, scope: !475)
!475 = distinct !DILexicalBlock(scope: !464, file: !1, line: 206, column: 8)
!476 = !DILocation(line: 206, column: 16, scope: !475)
!477 = !DILocation(line: 206, column: 8, scope: !464)
!478 = !DILocation(line: 207, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !1, line: 206, column: 29)
!480 = distinct !{!480, !478}
!481 = !DILocation(line: 207, column: 7, scope: !482)
!482 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 1)
!483 = distinct !DILexicalBlock(scope: !479, file: !1, line: 207, column: 7)
!484 = distinct !{!484, !485}
!485 = !DILocation(line: 207, column: 7, scope: !483)
!486 = !DILocation(line: 207, column: 7, scope: !487)
!487 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 2)
!488 = distinct !DILexicalBlock(scope: !483, file: !1, line: 207, column: 7)
!489 = !DILocation(line: 207, column: 7, scope: !490)
!490 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 3)
!491 = !DILocation(line: 208, column: 5, scope: !479)
!492 = !DILocation(line: 209, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !475, file: !1, line: 209, column: 13)
!494 = !DILocation(line: 209, column: 21, scope: !493)
!495 = !DILocation(line: 209, column: 13, scope: !475)
!496 = !DILocation(line: 210, column: 7, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !1, line: 209, column: 34)
!498 = distinct !{!498, !496}
!499 = !DILocation(line: 210, column: 7, scope: !500)
!500 = !DILexicalBlockFile(scope: !501, file: !1, discriminator: 1)
!501 = distinct !DILexicalBlock(scope: !497, file: !1, line: 210, column: 7)
!502 = distinct !{!502, !503}
!503 = !DILocation(line: 210, column: 7, scope: !501)
!504 = !DILocation(line: 210, column: 7, scope: !505)
!505 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 2)
!506 = distinct !DILexicalBlock(scope: !501, file: !1, line: 210, column: 7)
!507 = !DILocation(line: 210, column: 7, scope: !508)
!508 = !DILexicalBlockFile(scope: !501, file: !1, discriminator: 3)
!509 = !DILocation(line: 211, column: 5, scope: !497)
!510 = !DILocalVariable(name: "sy", scope: !511, file: !1, line: 213, type: !50)
!511 = distinct !DILexicalBlock(scope: !493, file: !1, line: 212, column: 10)
!512 = !DILocation(line: 213, column: 20, scope: !511)
!513 = !DILocation(line: 213, column: 26, scope: !511)
!514 = !DILocalVariable(name: "N", scope: !511, file: !1, line: 214, type: !168)
!515 = !DILocation(line: 214, column: 20, scope: !511)
!516 = !DILocation(line: 214, column: 38, scope: !511)
!517 = !DILocation(line: 214, column: 32, scope: !511)
!518 = !DILocation(line: 214, column: 26, scope: !511)
!519 = !DILocalVariable(name: "arg_val", scope: !511, file: !1, line: 215, type: !50)
!520 = !DILocation(line: 215, column: 20, scope: !511)
!521 = !DILocation(line: 215, column: 31, scope: !511)
!522 = !DILocation(line: 215, column: 41, scope: !511)
!523 = !DILocation(line: 215, column: 39, scope: !511)
!524 = !DILocation(line: 215, column: 44, scope: !511)
!525 = !DILocalVariable(name: "arg_err", scope: !511, file: !1, line: 216, type: !50)
!526 = !DILocation(line: 216, column: 20, scope: !511)
!527 = !DILocation(line: 216, column: 60, scope: !511)
!528 = !DILocation(line: 216, column: 55, scope: !511)
!529 = !DILocation(line: 216, column: 70, scope: !511)
!530 = !DILocation(line: 216, column: 65, scope: !531)
!531 = !DILexicalBlockFile(scope: !511, file: !1, discriminator: 1)
!532 = !DILocation(line: 216, column: 63, scope: !511)
!533 = !DILocation(line: 216, column: 88, scope: !511)
!534 = !DILocation(line: 216, column: 83, scope: !535)
!535 = !DILexicalBlockFile(scope: !511, file: !1, discriminator: 2)
!536 = !DILocation(line: 216, column: 82, scope: !511)
!537 = !DILocation(line: 216, column: 74, scope: !511)
!538 = !DILocation(line: 216, column: 52, scope: !511)
!539 = !DILocation(line: 218, column: 22, scope: !511)
!540 = !DILocation(line: 218, column: 31, scope: !511)
!541 = !DILocation(line: 218, column: 27, scope: !511)
!542 = !DILocation(line: 218, column: 25, scope: !511)
!543 = !DILocation(line: 218, column: 7, scope: !511)
!544 = !DILocation(line: 218, column: 15, scope: !511)
!545 = !DILocation(line: 218, column: 20, scope: !511)
!546 = !DILocation(line: 219, column: 22, scope: !511)
!547 = !DILocation(line: 219, column: 37, scope: !511)
!548 = !DILocation(line: 219, column: 45, scope: !511)
!549 = !DILocation(line: 219, column: 32, scope: !511)
!550 = !DILocation(line: 219, column: 30, scope: !511)
!551 = !DILocation(line: 219, column: 7, scope: !511)
!552 = !DILocation(line: 219, column: 15, scope: !511)
!553 = !DILocation(line: 219, column: 20, scope: !511)
!554 = !DILocation(line: 220, column: 51, scope: !511)
!555 = !DILocation(line: 220, column: 59, scope: !511)
!556 = !DILocation(line: 220, column: 46, scope: !511)
!557 = !DILocation(line: 220, column: 44, scope: !511)
!558 = !DILocation(line: 220, column: 7, scope: !511)
!559 = !DILocation(line: 220, column: 15, scope: !511)
!560 = !DILocation(line: 220, column: 19, scope: !511)
!561 = !DILocation(line: 221, column: 21, scope: !511)
!562 = !DILocation(line: 221, column: 7, scope: !511)
!563 = !DILocation(line: 221, column: 15, scope: !511)
!564 = !DILocation(line: 221, column: 19, scope: !511)
!565 = !DILocation(line: 223, column: 7, scope: !511)
!566 = !DILocation(line: 226, column: 1, scope: !392)
!567 = distinct !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !1, file: !1, line: 229, type: !568, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!568 = !DISubroutineType(types: !569)
!569 = !{!42, !50, !50, !50, !50, !52}
!570 = !DILocalVariable(name: "x", arg: 1, scope: !567, file: !1, line: 229, type: !50)
!571 = !DILocation(line: 229, column: 40, scope: !567)
!572 = !DILocalVariable(name: "dx", arg: 2, scope: !567, file: !1, line: 229, type: !50)
!573 = !DILocation(line: 229, column: 56, scope: !567)
!574 = !DILocalVariable(name: "y", arg: 3, scope: !567, file: !1, line: 230, type: !50)
!575 = !DILocation(line: 230, column: 43, scope: !567)
!576 = !DILocalVariable(name: "dy", arg: 4, scope: !567, file: !1, line: 230, type: !50)
!577 = !DILocation(line: 230, column: 59, scope: !567)
!578 = !DILocalVariable(name: "result", arg: 5, scope: !567, file: !1, line: 231, type: !52)
!579 = !DILocation(line: 231, column: 46, scope: !567)
!580 = !DILocalVariable(name: "ay", scope: !567, file: !1, line: 233, type: !50)
!581 = !DILocation(line: 233, column: 16, scope: !567)
!582 = !DILocation(line: 233, column: 27, scope: !567)
!583 = !DILocation(line: 233, column: 22, scope: !567)
!584 = !DILocation(line: 235, column: 6, scope: !585)
!585 = distinct !DILexicalBlock(scope: !567, file: !1, line: 235, column: 6)
!586 = !DILocation(line: 235, column: 8, scope: !585)
!587 = !DILocation(line: 235, column: 6, scope: !567)
!588 = !DILocation(line: 236, column: 5, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !1, line: 235, column: 16)
!590 = !DILocation(line: 236, column: 13, scope: !589)
!591 = !DILocation(line: 236, column: 17, scope: !589)
!592 = !DILocation(line: 237, column: 24, scope: !589)
!593 = !DILocation(line: 237, column: 33, scope: !589)
!594 = !DILocation(line: 237, column: 29, scope: !589)
!595 = !DILocation(line: 237, column: 27, scope: !589)
!596 = !DILocation(line: 237, column: 19, scope: !597)
!597 = !DILexicalBlockFile(scope: !589, file: !1, discriminator: 1)
!598 = !DILocation(line: 237, column: 5, scope: !589)
!599 = !DILocation(line: 237, column: 13, scope: !589)
!600 = !DILocation(line: 237, column: 17, scope: !589)
!601 = !DILocation(line: 238, column: 5, scope: !589)
!602 = !DILocation(line: 240, column: 16, scope: !603)
!603 = distinct !DILexicalBlock(scope: !585, file: !1, line: 240, column: 14)
!604 = !DILocation(line: 240, column: 18, scope: !603)
!605 = !DILocation(line: 240, column: 42, scope: !603)
!606 = !DILocation(line: 240, column: 47, scope: !607)
!607 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 1)
!608 = !DILocation(line: 240, column: 49, scope: !607)
!609 = !DILocation(line: 241, column: 11, scope: !603)
!610 = !DILocation(line: 241, column: 15, scope: !607)
!611 = !DILocation(line: 241, column: 18, scope: !607)
!612 = !DILocation(line: 241, column: 42, scope: !607)
!613 = !DILocation(line: 241, column: 46, scope: !614)
!614 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 2)
!615 = !DILocation(line: 241, column: 49, scope: !614)
!616 = !DILocation(line: 240, column: 14, scope: !617)
!617 = !DILexicalBlockFile(scope: !585, file: !1, discriminator: 2)
!618 = !DILocalVariable(name: "ex", scope: !619, file: !1, line: 243, type: !51)
!619 = distinct !DILexicalBlock(scope: !603, file: !1, line: 242, column: 7)
!620 = !DILocation(line: 243, column: 12, scope: !619)
!621 = !DILocation(line: 243, column: 21, scope: !619)
!622 = !DILocation(line: 243, column: 17, scope: !619)
!623 = !DILocation(line: 244, column: 20, scope: !619)
!624 = !DILocation(line: 244, column: 24, scope: !619)
!625 = !DILocation(line: 244, column: 22, scope: !619)
!626 = !DILocation(line: 244, column: 5, scope: !619)
!627 = !DILocation(line: 244, column: 13, scope: !619)
!628 = !DILocation(line: 244, column: 18, scope: !619)
!629 = !DILocation(line: 245, column: 20, scope: !619)
!630 = !DILocation(line: 245, column: 31, scope: !619)
!631 = !DILocation(line: 245, column: 26, scope: !619)
!632 = !DILocation(line: 245, column: 42, scope: !619)
!633 = !DILocation(line: 245, column: 44, scope: !619)
!634 = !DILocation(line: 245, column: 43, scope: !619)
!635 = !DILocation(line: 245, column: 37, scope: !636)
!636 = !DILexicalBlockFile(scope: !619, file: !1, discriminator: 1)
!637 = !DILocation(line: 245, column: 35, scope: !619)
!638 = !DILocation(line: 245, column: 23, scope: !619)
!639 = !DILocation(line: 245, column: 5, scope: !619)
!640 = !DILocation(line: 245, column: 13, scope: !619)
!641 = !DILocation(line: 245, column: 18, scope: !619)
!642 = !DILocation(line: 246, column: 49, scope: !619)
!643 = !DILocation(line: 246, column: 57, scope: !619)
!644 = !DILocation(line: 246, column: 44, scope: !619)
!645 = !DILocation(line: 246, column: 42, scope: !619)
!646 = !DILocation(line: 246, column: 5, scope: !619)
!647 = !DILocation(line: 246, column: 13, scope: !619)
!648 = !DILocation(line: 246, column: 17, scope: !619)
!649 = !DILocation(line: 247, column: 5, scope: !619)
!650 = !DILocalVariable(name: "ly", scope: !651, file: !1, line: 250, type: !50)
!651 = distinct !DILexicalBlock(scope: !603, file: !1, line: 249, column: 8)
!652 = !DILocation(line: 250, column: 18, scope: !651)
!653 = !DILocation(line: 250, column: 28, scope: !651)
!654 = !DILocation(line: 250, column: 24, scope: !651)
!655 = !DILocalVariable(name: "lnr", scope: !651, file: !1, line: 251, type: !50)
!656 = !DILocation(line: 251, column: 18, scope: !651)
!657 = !DILocation(line: 251, column: 24, scope: !651)
!658 = !DILocation(line: 251, column: 28, scope: !651)
!659 = !DILocation(line: 251, column: 26, scope: !651)
!660 = !DILocation(line: 253, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !651, file: !1, line: 253, column: 8)
!662 = !DILocation(line: 253, column: 12, scope: !661)
!663 = !DILocation(line: 253, column: 8, scope: !651)
!664 = !DILocation(line: 254, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !1, line: 253, column: 38)
!666 = distinct !{!666, !664}
!667 = !DILocation(line: 254, column: 7, scope: !668)
!668 = !DILexicalBlockFile(scope: !669, file: !1, discriminator: 1)
!669 = distinct !DILexicalBlock(scope: !665, file: !1, line: 254, column: 7)
!670 = distinct !{!670, !671}
!671 = !DILocation(line: 254, column: 7, scope: !669)
!672 = !DILocation(line: 254, column: 7, scope: !673)
!673 = !DILexicalBlockFile(scope: !674, file: !1, discriminator: 2)
!674 = distinct !DILexicalBlock(scope: !669, file: !1, line: 254, column: 7)
!675 = !DILocation(line: 254, column: 7, scope: !676)
!676 = !DILexicalBlockFile(scope: !669, file: !1, discriminator: 3)
!677 = !DILocation(line: 255, column: 5, scope: !665)
!678 = !DILocation(line: 256, column: 13, scope: !679)
!679 = distinct !DILexicalBlock(scope: !661, file: !1, line: 256, column: 13)
!680 = !DILocation(line: 256, column: 17, scope: !679)
!681 = !DILocation(line: 256, column: 13, scope: !661)
!682 = !DILocation(line: 257, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !1, line: 256, column: 43)
!684 = distinct !{!684, !682}
!685 = !DILocation(line: 257, column: 7, scope: !686)
!686 = !DILexicalBlockFile(scope: !687, file: !1, discriminator: 1)
!687 = distinct !DILexicalBlock(scope: !683, file: !1, line: 257, column: 7)
!688 = distinct !{!688, !689}
!689 = !DILocation(line: 257, column: 7, scope: !687)
!690 = !DILocation(line: 257, column: 7, scope: !691)
!691 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 2)
!692 = distinct !DILexicalBlock(scope: !687, file: !1, line: 257, column: 7)
!693 = !DILocation(line: 257, column: 7, scope: !694)
!694 = !DILexicalBlockFile(scope: !687, file: !1, discriminator: 3)
!695 = !DILocation(line: 258, column: 5, scope: !683)
!696 = !DILocalVariable(name: "sy", scope: !697, file: !1, line: 260, type: !50)
!697 = distinct !DILexicalBlock(scope: !679, file: !1, line: 259, column: 10)
!698 = !DILocation(line: 260, column: 20, scope: !697)
!699 = !DILocation(line: 260, column: 26, scope: !697)
!700 = !DILocalVariable(name: "M", scope: !697, file: !1, line: 261, type: !50)
!701 = !DILocation(line: 261, column: 20, scope: !697)
!702 = !DILocation(line: 261, column: 32, scope: !697)
!703 = !DILocation(line: 261, column: 26, scope: !697)
!704 = !DILocalVariable(name: "N", scope: !697, file: !1, line: 262, type: !50)
!705 = !DILocation(line: 262, column: 20, scope: !697)
!706 = !DILocation(line: 262, column: 32, scope: !697)
!707 = !DILocation(line: 262, column: 26, scope: !697)
!708 = !DILocalVariable(name: "a", scope: !697, file: !1, line: 263, type: !50)
!709 = !DILocation(line: 263, column: 20, scope: !697)
!710 = !DILocation(line: 263, column: 26, scope: !697)
!711 = !DILocation(line: 263, column: 31, scope: !697)
!712 = !DILocation(line: 263, column: 29, scope: !697)
!713 = !DILocalVariable(name: "b", scope: !697, file: !1, line: 264, type: !50)
!714 = !DILocation(line: 264, column: 20, scope: !697)
!715 = !DILocation(line: 264, column: 26, scope: !697)
!716 = !DILocation(line: 264, column: 31, scope: !697)
!717 = !DILocation(line: 264, column: 29, scope: !697)
!718 = !DILocalVariable(name: "eMN", scope: !697, file: !1, line: 265, type: !50)
!719 = !DILocation(line: 265, column: 20, scope: !697)
!720 = !DILocation(line: 265, column: 30, scope: !697)
!721 = !DILocation(line: 265, column: 32, scope: !697)
!722 = !DILocation(line: 265, column: 31, scope: !697)
!723 = !DILocation(line: 265, column: 26, scope: !697)
!724 = !DILocalVariable(name: "eab", scope: !697, file: !1, line: 266, type: !50)
!725 = !DILocation(line: 266, column: 20, scope: !697)
!726 = !DILocation(line: 266, column: 30, scope: !697)
!727 = !DILocation(line: 266, column: 32, scope: !697)
!728 = !DILocation(line: 266, column: 31, scope: !697)
!729 = !DILocation(line: 266, column: 26, scope: !697)
!730 = !DILocation(line: 267, column: 22, scope: !697)
!731 = !DILocation(line: 267, column: 27, scope: !697)
!732 = !DILocation(line: 267, column: 25, scope: !697)
!733 = !DILocation(line: 267, column: 33, scope: !697)
!734 = !DILocation(line: 267, column: 31, scope: !697)
!735 = !DILocation(line: 267, column: 7, scope: !697)
!736 = !DILocation(line: 267, column: 15, scope: !697)
!737 = !DILocation(line: 267, column: 20, scope: !697)
!738 = !DILocation(line: 268, column: 22, scope: !697)
!739 = !DILocation(line: 268, column: 28, scope: !697)
!740 = !DILocation(line: 268, column: 26, scope: !697)
!741 = !DILocation(line: 268, column: 32, scope: !697)
!742 = !DILocation(line: 268, column: 37, scope: !697)
!743 = !DILocation(line: 268, column: 7, scope: !697)
!744 = !DILocation(line: 268, column: 15, scope: !697)
!745 = !DILocation(line: 268, column: 20, scope: !697)
!746 = !DILocation(line: 269, column: 22, scope: !697)
!747 = !DILocation(line: 269, column: 28, scope: !697)
!748 = !DILocation(line: 269, column: 26, scope: !697)
!749 = !DILocation(line: 269, column: 39, scope: !697)
!750 = !DILocation(line: 269, column: 42, scope: !697)
!751 = !DILocation(line: 269, column: 41, scope: !697)
!752 = !DILocation(line: 269, column: 34, scope: !697)
!753 = !DILocation(line: 269, column: 32, scope: !697)
!754 = !DILocation(line: 269, column: 7, scope: !697)
!755 = !DILocation(line: 269, column: 15, scope: !697)
!756 = !DILocation(line: 269, column: 19, scope: !697)
!757 = !DILocation(line: 270, column: 22, scope: !697)
!758 = !DILocation(line: 270, column: 28, scope: !697)
!759 = !DILocation(line: 270, column: 26, scope: !697)
!760 = !DILocation(line: 270, column: 39, scope: !697)
!761 = !DILocation(line: 270, column: 34, scope: !697)
!762 = !DILocation(line: 270, column: 32, scope: !697)
!763 = !DILocation(line: 270, column: 7, scope: !697)
!764 = !DILocation(line: 270, column: 15, scope: !697)
!765 = !DILocation(line: 270, column: 19, scope: !697)
!766 = !DILocation(line: 271, column: 7, scope: !697)
!767 = !DILocation(line: 274, column: 1, scope: !567)
!768 = distinct !DISubprogram(name: "gsl_sf_exp_mult_err_e10_e", scope: !1, file: !1, line: 277, type: !769, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!769 = !DISubroutineType(types: !770)
!770 = !{!42, !50, !50, !50, !50, !119}
!771 = !DILocalVariable(name: "x", arg: 1, scope: !768, file: !1, line: 277, type: !50)
!772 = !DILocation(line: 277, column: 44, scope: !768)
!773 = !DILocalVariable(name: "dx", arg: 2, scope: !768, file: !1, line: 277, type: !50)
!774 = !DILocation(line: 277, column: 60, scope: !768)
!775 = !DILocalVariable(name: "y", arg: 3, scope: !768, file: !1, line: 278, type: !50)
!776 = !DILocation(line: 278, column: 43, scope: !768)
!777 = !DILocalVariable(name: "dy", arg: 4, scope: !768, file: !1, line: 278, type: !50)
!778 = !DILocation(line: 278, column: 59, scope: !768)
!779 = !DILocalVariable(name: "result", arg: 5, scope: !768, file: !1, line: 279, type: !119)
!780 = !DILocation(line: 279, column: 50, scope: !768)
!781 = !DILocalVariable(name: "ay", scope: !768, file: !1, line: 281, type: !50)
!782 = !DILocation(line: 281, column: 16, scope: !768)
!783 = !DILocation(line: 281, column: 27, scope: !768)
!784 = !DILocation(line: 281, column: 22, scope: !768)
!785 = !DILocation(line: 283, column: 6, scope: !786)
!786 = distinct !DILexicalBlock(scope: !768, file: !1, line: 283, column: 6)
!787 = !DILocation(line: 283, column: 8, scope: !786)
!788 = !DILocation(line: 283, column: 6, scope: !768)
!789 = !DILocation(line: 284, column: 5, scope: !790)
!790 = distinct !DILexicalBlock(scope: !786, file: !1, line: 283, column: 16)
!791 = !DILocation(line: 284, column: 13, scope: !790)
!792 = !DILocation(line: 284, column: 17, scope: !790)
!793 = !DILocation(line: 285, column: 24, scope: !790)
!794 = !DILocation(line: 285, column: 33, scope: !790)
!795 = !DILocation(line: 285, column: 29, scope: !790)
!796 = !DILocation(line: 285, column: 27, scope: !790)
!797 = !DILocation(line: 285, column: 19, scope: !798)
!798 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 1)
!799 = !DILocation(line: 285, column: 5, scope: !790)
!800 = !DILocation(line: 285, column: 13, scope: !790)
!801 = !DILocation(line: 285, column: 17, scope: !790)
!802 = !DILocation(line: 286, column: 5, scope: !790)
!803 = !DILocation(line: 286, column: 13, scope: !790)
!804 = !DILocation(line: 286, column: 17, scope: !790)
!805 = !DILocation(line: 287, column: 5, scope: !790)
!806 = !DILocation(line: 289, column: 16, scope: !807)
!807 = distinct !DILexicalBlock(scope: !786, file: !1, line: 289, column: 14)
!808 = !DILocation(line: 289, column: 18, scope: !807)
!809 = !DILocation(line: 289, column: 42, scope: !807)
!810 = !DILocation(line: 289, column: 47, scope: !811)
!811 = !DILexicalBlockFile(scope: !807, file: !1, discriminator: 1)
!812 = !DILocation(line: 289, column: 49, scope: !811)
!813 = !DILocation(line: 290, column: 11, scope: !807)
!814 = !DILocation(line: 290, column: 15, scope: !811)
!815 = !DILocation(line: 290, column: 18, scope: !811)
!816 = !DILocation(line: 290, column: 42, scope: !811)
!817 = !DILocation(line: 290, column: 46, scope: !818)
!818 = !DILexicalBlockFile(scope: !807, file: !1, discriminator: 2)
!819 = !DILocation(line: 290, column: 49, scope: !818)
!820 = !DILocation(line: 289, column: 14, scope: !821)
!821 = !DILexicalBlockFile(scope: !786, file: !1, discriminator: 2)
!822 = !DILocalVariable(name: "ex", scope: !823, file: !1, line: 292, type: !50)
!823 = distinct !DILexicalBlock(scope: !807, file: !1, line: 291, column: 7)
!824 = !DILocation(line: 292, column: 18, scope: !823)
!825 = !DILocation(line: 292, column: 27, scope: !823)
!826 = !DILocation(line: 292, column: 23, scope: !823)
!827 = !DILocation(line: 293, column: 20, scope: !823)
!828 = !DILocation(line: 293, column: 24, scope: !823)
!829 = !DILocation(line: 293, column: 22, scope: !823)
!830 = !DILocation(line: 293, column: 5, scope: !823)
!831 = !DILocation(line: 293, column: 13, scope: !823)
!832 = !DILocation(line: 293, column: 18, scope: !823)
!833 = !DILocation(line: 294, column: 20, scope: !823)
!834 = !DILocation(line: 294, column: 31, scope: !823)
!835 = !DILocation(line: 294, column: 26, scope: !823)
!836 = !DILocation(line: 294, column: 42, scope: !823)
!837 = !DILocation(line: 294, column: 44, scope: !823)
!838 = !DILocation(line: 294, column: 43, scope: !823)
!839 = !DILocation(line: 294, column: 37, scope: !840)
!840 = !DILexicalBlockFile(scope: !823, file: !1, discriminator: 1)
!841 = !DILocation(line: 294, column: 35, scope: !823)
!842 = !DILocation(line: 294, column: 23, scope: !823)
!843 = !DILocation(line: 294, column: 5, scope: !823)
!844 = !DILocation(line: 294, column: 13, scope: !823)
!845 = !DILocation(line: 294, column: 18, scope: !823)
!846 = !DILocation(line: 295, column: 49, scope: !823)
!847 = !DILocation(line: 295, column: 57, scope: !823)
!848 = !DILocation(line: 295, column: 44, scope: !823)
!849 = !DILocation(line: 295, column: 42, scope: !823)
!850 = !DILocation(line: 295, column: 5, scope: !823)
!851 = !DILocation(line: 295, column: 13, scope: !823)
!852 = !DILocation(line: 295, column: 17, scope: !823)
!853 = !DILocation(line: 296, column: 5, scope: !823)
!854 = !DILocation(line: 296, column: 13, scope: !823)
!855 = !DILocation(line: 296, column: 17, scope: !823)
!856 = !DILocation(line: 297, column: 5, scope: !823)
!857 = !DILocalVariable(name: "ly", scope: !858, file: !1, line: 300, type: !50)
!858 = distinct !DILexicalBlock(scope: !807, file: !1, line: 299, column: 8)
!859 = !DILocation(line: 300, column: 18, scope: !858)
!860 = !DILocation(line: 300, column: 28, scope: !858)
!861 = !DILocation(line: 300, column: 24, scope: !858)
!862 = !DILocalVariable(name: "l10_val", scope: !858, file: !1, line: 301, type: !50)
!863 = !DILocation(line: 301, column: 18, scope: !858)
!864 = !DILocation(line: 301, column: 29, scope: !858)
!865 = !DILocation(line: 301, column: 33, scope: !858)
!866 = !DILocation(line: 301, column: 31, scope: !858)
!867 = !DILocation(line: 301, column: 36, scope: !858)
!868 = !DILocation(line: 303, column: 8, scope: !869)
!869 = distinct !DILexicalBlock(scope: !858, file: !1, line: 303, column: 8)
!870 = !DILocation(line: 303, column: 16, scope: !869)
!871 = !DILocation(line: 303, column: 8, scope: !858)
!872 = !DILocation(line: 304, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !1, line: 303, column: 29)
!874 = distinct !{!874, !872}
!875 = !DILocation(line: 304, column: 7, scope: !876)
!876 = !DILexicalBlockFile(scope: !877, file: !1, discriminator: 1)
!877 = distinct !DILexicalBlock(scope: !873, file: !1, line: 304, column: 7)
!878 = distinct !{!878, !879}
!879 = !DILocation(line: 304, column: 7, scope: !877)
!880 = !DILocation(line: 304, column: 7, scope: !881)
!881 = !DILexicalBlockFile(scope: !882, file: !1, discriminator: 2)
!882 = distinct !DILexicalBlock(scope: !877, file: !1, line: 304, column: 7)
!883 = !DILocation(line: 304, column: 7, scope: !884)
!884 = !DILexicalBlockFile(scope: !877, file: !1, discriminator: 3)
!885 = !DILocation(line: 305, column: 5, scope: !873)
!886 = !DILocation(line: 306, column: 13, scope: !887)
!887 = distinct !DILexicalBlock(scope: !869, file: !1, line: 306, column: 13)
!888 = !DILocation(line: 306, column: 21, scope: !887)
!889 = !DILocation(line: 306, column: 13, scope: !869)
!890 = !DILocation(line: 307, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !1, line: 306, column: 34)
!892 = distinct !{!892, !890}
!893 = !DILocation(line: 307, column: 7, scope: !894)
!894 = !DILexicalBlockFile(scope: !895, file: !1, discriminator: 1)
!895 = distinct !DILexicalBlock(scope: !891, file: !1, line: 307, column: 7)
!896 = distinct !{!896, !897}
!897 = !DILocation(line: 307, column: 7, scope: !895)
!898 = !DILocation(line: 307, column: 7, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !1, discriminator: 2)
!900 = distinct !DILexicalBlock(scope: !895, file: !1, line: 307, column: 7)
!901 = !DILocation(line: 307, column: 7, scope: !902)
!902 = !DILexicalBlockFile(scope: !895, file: !1, discriminator: 3)
!903 = !DILocation(line: 308, column: 5, scope: !891)
!904 = !DILocalVariable(name: "sy", scope: !905, file: !1, line: 310, type: !50)
!905 = distinct !DILexicalBlock(scope: !887, file: !1, line: 309, column: 10)
!906 = !DILocation(line: 310, column: 20, scope: !905)
!907 = !DILocation(line: 310, column: 26, scope: !905)
!908 = !DILocalVariable(name: "N", scope: !905, file: !1, line: 311, type: !168)
!909 = !DILocation(line: 311, column: 20, scope: !905)
!910 = !DILocation(line: 311, column: 38, scope: !905)
!911 = !DILocation(line: 311, column: 32, scope: !905)
!912 = !DILocation(line: 311, column: 26, scope: !905)
!913 = !DILocalVariable(name: "arg_val", scope: !905, file: !1, line: 312, type: !50)
!914 = !DILocation(line: 312, column: 20, scope: !905)
!915 = !DILocation(line: 312, column: 31, scope: !905)
!916 = !DILocation(line: 312, column: 41, scope: !905)
!917 = !DILocation(line: 312, column: 39, scope: !905)
!918 = !DILocation(line: 312, column: 44, scope: !905)
!919 = !DILocalVariable(name: "arg_err", scope: !905, file: !1, line: 313, type: !50)
!920 = !DILocation(line: 313, column: 20, scope: !905)
!921 = !DILocation(line: 313, column: 30, scope: !905)
!922 = !DILocation(line: 313, column: 38, scope: !905)
!923 = !DILocation(line: 313, column: 33, scope: !905)
!924 = !DILocation(line: 313, column: 32, scope: !905)
!925 = !DILocation(line: 313, column: 43, scope: !905)
!926 = !DILocation(line: 313, column: 41, scope: !905)
!927 = !DILocation(line: 313, column: 73, scope: !905)
!928 = !DILocation(line: 313, column: 68, scope: !929)
!929 = !DILexicalBlockFile(scope: !905, file: !1, discriminator: 1)
!930 = !DILocation(line: 313, column: 67, scope: !905)
!931 = !DILocation(line: 313, column: 46, scope: !905)
!932 = !DILocation(line: 315, column: 22, scope: !905)
!933 = !DILocation(line: 315, column: 31, scope: !905)
!934 = !DILocation(line: 315, column: 27, scope: !905)
!935 = !DILocation(line: 315, column: 25, scope: !905)
!936 = !DILocation(line: 315, column: 7, scope: !905)
!937 = !DILocation(line: 315, column: 15, scope: !905)
!938 = !DILocation(line: 315, column: 20, scope: !905)
!939 = !DILocation(line: 316, column: 22, scope: !905)
!940 = !DILocation(line: 316, column: 37, scope: !905)
!941 = !DILocation(line: 316, column: 45, scope: !905)
!942 = !DILocation(line: 316, column: 32, scope: !905)
!943 = !DILocation(line: 316, column: 30, scope: !905)
!944 = !DILocation(line: 316, column: 7, scope: !905)
!945 = !DILocation(line: 316, column: 15, scope: !905)
!946 = !DILocation(line: 316, column: 20, scope: !905)
!947 = !DILocation(line: 317, column: 51, scope: !905)
!948 = !DILocation(line: 317, column: 59, scope: !905)
!949 = !DILocation(line: 317, column: 46, scope: !905)
!950 = !DILocation(line: 317, column: 44, scope: !905)
!951 = !DILocation(line: 317, column: 7, scope: !905)
!952 = !DILocation(line: 317, column: 15, scope: !905)
!953 = !DILocation(line: 317, column: 19, scope: !905)
!954 = !DILocation(line: 318, column: 21, scope: !905)
!955 = !DILocation(line: 318, column: 7, scope: !905)
!956 = !DILocation(line: 318, column: 15, scope: !905)
!957 = !DILocation(line: 318, column: 19, scope: !905)
!958 = !DILocation(line: 320, column: 7, scope: !905)
!959 = !DILocation(line: 323, column: 1, scope: !768)
!960 = distinct !DISubprogram(name: "gsl_sf_expm1_e", scope: !1, file: !1, line: 326, type: !48, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!961 = !DILocalVariable(name: "x", arg: 1, scope: !960, file: !1, line: 326, type: !50)
!962 = !DILocation(line: 326, column: 33, scope: !960)
!963 = !DILocalVariable(name: "result", arg: 2, scope: !960, file: !1, line: 326, type: !52)
!964 = !DILocation(line: 326, column: 52, scope: !960)
!965 = !DILocalVariable(name: "cut", scope: !960, file: !1, line: 328, type: !50)
!966 = !DILocation(line: 328, column: 16, scope: !960)
!967 = !DILocation(line: 330, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !960, file: !1, line: 330, column: 6)
!969 = !DILocation(line: 330, column: 8, scope: !968)
!970 = !DILocation(line: 330, column: 6, scope: !960)
!971 = !DILocation(line: 331, column: 5, scope: !972)
!972 = distinct !DILexicalBlock(scope: !968, file: !1, line: 330, column: 27)
!973 = !DILocation(line: 331, column: 13, scope: !972)
!974 = !DILocation(line: 331, column: 17, scope: !972)
!975 = !DILocation(line: 332, column: 5, scope: !972)
!976 = !DILocation(line: 332, column: 13, scope: !972)
!977 = !DILocation(line: 332, column: 17, scope: !972)
!978 = !DILocation(line: 333, column: 5, scope: !972)
!979 = !DILocation(line: 335, column: 11, scope: !980)
!980 = distinct !DILexicalBlock(scope: !968, file: !1, line: 335, column: 11)
!981 = !DILocation(line: 335, column: 13, scope: !980)
!982 = !DILocation(line: 335, column: 11, scope: !968)
!983 = !DILocation(line: 336, column: 23, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !1, line: 335, column: 21)
!985 = !DILocation(line: 336, column: 19, scope: !984)
!986 = !DILocation(line: 336, column: 26, scope: !984)
!987 = !DILocation(line: 336, column: 5, scope: !984)
!988 = !DILocation(line: 336, column: 13, scope: !984)
!989 = !DILocation(line: 336, column: 17, scope: !984)
!990 = !DILocation(line: 337, column: 48, scope: !984)
!991 = !DILocation(line: 337, column: 56, scope: !984)
!992 = !DILocation(line: 337, column: 43, scope: !984)
!993 = !DILocation(line: 337, column: 41, scope: !984)
!994 = !DILocation(line: 337, column: 5, scope: !984)
!995 = !DILocation(line: 337, column: 13, scope: !984)
!996 = !DILocation(line: 337, column: 17, scope: !984)
!997 = !DILocation(line: 338, column: 5, scope: !984)
!998 = !DILocation(line: 340, column: 11, scope: !999)
!999 = distinct !DILexicalBlock(scope: !980, file: !1, line: 340, column: 11)
!1000 = !DILocation(line: 340, column: 13, scope: !999)
!1001 = !DILocation(line: 340, column: 11, scope: !980)
!1002 = !DILocation(line: 341, column: 19, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !1, line: 340, column: 20)
!1004 = !DILocation(line: 341, column: 34, scope: !1003)
!1005 = !DILocation(line: 341, column: 33, scope: !1003)
!1006 = !DILocation(line: 341, column: 43, scope: !1003)
!1007 = !DILocation(line: 341, column: 44, scope: !1003)
!1008 = !DILocation(line: 341, column: 61, scope: !1003)
!1009 = !DILocation(line: 341, column: 60, scope: !1003)
!1010 = !DILocation(line: 341, column: 74, scope: !1003)
!1011 = !DILocation(line: 341, column: 73, scope: !1003)
!1012 = !DILocation(line: 341, column: 68, scope: !1003)
!1013 = !DILocation(line: 341, column: 62, scope: !1003)
!1014 = !DILocation(line: 341, column: 54, scope: !1003)
!1015 = !DILocation(line: 341, column: 48, scope: !1003)
!1016 = !DILocation(line: 341, column: 41, scope: !1003)
!1017 = !DILocation(line: 341, column: 35, scope: !1003)
!1018 = !DILocation(line: 341, column: 28, scope: !1003)
!1019 = !DILocation(line: 341, column: 21, scope: !1003)
!1020 = !DILocation(line: 341, column: 5, scope: !1003)
!1021 = !DILocation(line: 341, column: 13, scope: !1003)
!1022 = !DILocation(line: 341, column: 17, scope: !1003)
!1023 = !DILocation(line: 342, column: 48, scope: !1003)
!1024 = !DILocation(line: 342, column: 56, scope: !1003)
!1025 = !DILocation(line: 342, column: 43, scope: !1003)
!1026 = !DILocation(line: 342, column: 41, scope: !1003)
!1027 = !DILocation(line: 342, column: 5, scope: !1003)
!1028 = !DILocation(line: 342, column: 13, scope: !1003)
!1029 = !DILocation(line: 342, column: 17, scope: !1003)
!1030 = !DILocation(line: 343, column: 5, scope: !1003)
!1031 = !DILocation(line: 345, column: 11, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !999, file: !1, line: 345, column: 11)
!1033 = !DILocation(line: 345, column: 13, scope: !1032)
!1034 = !DILocation(line: 345, column: 11, scope: !999)
!1035 = !DILocation(line: 346, column: 23, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 345, column: 32)
!1037 = !DILocation(line: 346, column: 19, scope: !1036)
!1038 = !DILocation(line: 346, column: 26, scope: !1036)
!1039 = !DILocation(line: 346, column: 5, scope: !1036)
!1040 = !DILocation(line: 346, column: 13, scope: !1036)
!1041 = !DILocation(line: 346, column: 17, scope: !1036)
!1042 = !DILocation(line: 347, column: 48, scope: !1036)
!1043 = !DILocation(line: 347, column: 56, scope: !1036)
!1044 = !DILocation(line: 347, column: 43, scope: !1036)
!1045 = !DILocation(line: 347, column: 41, scope: !1036)
!1046 = !DILocation(line: 347, column: 5, scope: !1036)
!1047 = !DILocation(line: 347, column: 13, scope: !1036)
!1048 = !DILocation(line: 347, column: 17, scope: !1036)
!1049 = !DILocation(line: 348, column: 5, scope: !1036)
!1050 = !DILocation(line: 351, column: 5, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 350, column: 8)
!1052 = distinct !{!1052, !1050}
!1053 = !DILocation(line: 351, column: 5, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1055, file: !1, discriminator: 1)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 351, column: 5)
!1056 = distinct !{!1056, !1057}
!1057 = !DILocation(line: 351, column: 5, scope: !1055)
!1058 = !DILocation(line: 351, column: 5, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1060, file: !1, discriminator: 2)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 351, column: 5)
!1061 = !DILocation(line: 351, column: 5, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1055, file: !1, discriminator: 3)
!1063 = !DILocation(line: 353, column: 1, scope: !960)
!1064 = distinct !DISubprogram(name: "gsl_sf_exprel_e", scope: !1, file: !1, line: 356, type: !48, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1065 = !DILocalVariable(name: "x", arg: 1, scope: !1064, file: !1, line: 356, type: !50)
!1066 = !DILocation(line: 356, column: 34, scope: !1064)
!1067 = !DILocalVariable(name: "result", arg: 2, scope: !1064, file: !1, line: 356, type: !52)
!1068 = !DILocation(line: 356, column: 53, scope: !1064)
!1069 = !DILocalVariable(name: "cut", scope: !1064, file: !1, line: 358, type: !50)
!1070 = !DILocation(line: 358, column: 16, scope: !1064)
!1071 = !DILocation(line: 360, column: 6, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 360, column: 6)
!1073 = !DILocation(line: 360, column: 8, scope: !1072)
!1074 = !DILocation(line: 360, column: 6, scope: !1064)
!1075 = !DILocation(line: 361, column: 24, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 360, column: 27)
!1077 = !DILocation(line: 361, column: 23, scope: !1076)
!1078 = !DILocation(line: 361, column: 5, scope: !1076)
!1079 = !DILocation(line: 361, column: 13, scope: !1076)
!1080 = !DILocation(line: 361, column: 17, scope: !1076)
!1081 = !DILocation(line: 362, column: 42, scope: !1076)
!1082 = !DILocation(line: 362, column: 50, scope: !1076)
!1083 = !DILocation(line: 362, column: 37, scope: !1076)
!1084 = !DILocation(line: 362, column: 35, scope: !1076)
!1085 = !DILocation(line: 362, column: 5, scope: !1076)
!1086 = !DILocation(line: 362, column: 13, scope: !1076)
!1087 = !DILocation(line: 362, column: 17, scope: !1076)
!1088 = !DILocation(line: 363, column: 5, scope: !1076)
!1089 = !DILocation(line: 365, column: 11, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 365, column: 11)
!1091 = !DILocation(line: 365, column: 13, scope: !1090)
!1092 = !DILocation(line: 365, column: 11, scope: !1072)
!1093 = !DILocation(line: 366, column: 24, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 365, column: 21)
!1095 = !DILocation(line: 366, column: 20, scope: !1094)
!1096 = !DILocation(line: 366, column: 27, scope: !1094)
!1097 = !DILocation(line: 366, column: 34, scope: !1094)
!1098 = !DILocation(line: 366, column: 33, scope: !1094)
!1099 = !DILocation(line: 366, column: 5, scope: !1094)
!1100 = !DILocation(line: 366, column: 13, scope: !1094)
!1101 = !DILocation(line: 366, column: 17, scope: !1094)
!1102 = !DILocation(line: 367, column: 48, scope: !1094)
!1103 = !DILocation(line: 367, column: 56, scope: !1094)
!1104 = !DILocation(line: 367, column: 43, scope: !1094)
!1105 = !DILocation(line: 367, column: 41, scope: !1094)
!1106 = !DILocation(line: 367, column: 5, scope: !1094)
!1107 = !DILocation(line: 367, column: 13, scope: !1094)
!1108 = !DILocation(line: 367, column: 17, scope: !1094)
!1109 = !DILocation(line: 368, column: 5, scope: !1094)
!1110 = !DILocation(line: 370, column: 11, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 370, column: 11)
!1112 = !DILocation(line: 370, column: 13, scope: !1111)
!1113 = !DILocation(line: 370, column: 11, scope: !1090)
!1114 = !DILocation(line: 371, column: 30, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 370, column: 20)
!1116 = !DILocation(line: 371, column: 29, scope: !1115)
!1117 = !DILocation(line: 371, column: 39, scope: !1115)
!1118 = !DILocation(line: 371, column: 40, scope: !1115)
!1119 = !DILocation(line: 371, column: 57, scope: !1115)
!1120 = !DILocation(line: 371, column: 56, scope: !1115)
!1121 = !DILocation(line: 371, column: 70, scope: !1115)
!1122 = !DILocation(line: 371, column: 69, scope: !1115)
!1123 = !DILocation(line: 371, column: 64, scope: !1115)
!1124 = !DILocation(line: 371, column: 58, scope: !1115)
!1125 = !DILocation(line: 371, column: 50, scope: !1115)
!1126 = !DILocation(line: 371, column: 44, scope: !1115)
!1127 = !DILocation(line: 371, column: 37, scope: !1115)
!1128 = !DILocation(line: 371, column: 31, scope: !1115)
!1129 = !DILocation(line: 371, column: 24, scope: !1115)
!1130 = !DILocation(line: 371, column: 5, scope: !1115)
!1131 = !DILocation(line: 371, column: 13, scope: !1115)
!1132 = !DILocation(line: 371, column: 17, scope: !1115)
!1133 = !DILocation(line: 372, column: 48, scope: !1115)
!1134 = !DILocation(line: 372, column: 56, scope: !1115)
!1135 = !DILocation(line: 372, column: 43, scope: !1115)
!1136 = !DILocation(line: 372, column: 41, scope: !1115)
!1137 = !DILocation(line: 372, column: 5, scope: !1115)
!1138 = !DILocation(line: 372, column: 13, scope: !1115)
!1139 = !DILocation(line: 372, column: 17, scope: !1115)
!1140 = !DILocation(line: 373, column: 5, scope: !1115)
!1141 = !DILocation(line: 375, column: 11, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 375, column: 11)
!1143 = !DILocation(line: 375, column: 13, scope: !1142)
!1144 = !DILocation(line: 375, column: 11, scope: !1111)
!1145 = !DILocation(line: 376, column: 24, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 375, column: 32)
!1147 = !DILocation(line: 376, column: 20, scope: !1146)
!1148 = !DILocation(line: 376, column: 27, scope: !1146)
!1149 = !DILocation(line: 376, column: 34, scope: !1146)
!1150 = !DILocation(line: 376, column: 33, scope: !1146)
!1151 = !DILocation(line: 376, column: 5, scope: !1146)
!1152 = !DILocation(line: 376, column: 13, scope: !1146)
!1153 = !DILocation(line: 376, column: 17, scope: !1146)
!1154 = !DILocation(line: 377, column: 48, scope: !1146)
!1155 = !DILocation(line: 377, column: 56, scope: !1146)
!1156 = !DILocation(line: 377, column: 43, scope: !1146)
!1157 = !DILocation(line: 377, column: 41, scope: !1146)
!1158 = !DILocation(line: 377, column: 5, scope: !1146)
!1159 = !DILocation(line: 377, column: 13, scope: !1146)
!1160 = !DILocation(line: 377, column: 17, scope: !1146)
!1161 = !DILocation(line: 378, column: 5, scope: !1146)
!1162 = !DILocation(line: 381, column: 5, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 380, column: 8)
!1164 = distinct !{!1164, !1162}
!1165 = !DILocation(line: 381, column: 5, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1167, file: !1, discriminator: 1)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 381, column: 5)
!1168 = distinct !{!1168, !1169}
!1169 = !DILocation(line: 381, column: 5, scope: !1167)
!1170 = !DILocation(line: 381, column: 5, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1172, file: !1, discriminator: 2)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 381, column: 5)
!1173 = !DILocation(line: 381, column: 5, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1167, file: !1, discriminator: 3)
!1175 = !DILocation(line: 383, column: 1, scope: !1064)
!1176 = distinct !DISubprogram(name: "gsl_sf_exprel_2_e", scope: !1, file: !1, line: 386, type: !1177, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!42, !51, !52}
!1179 = !DILocalVariable(name: "x", arg: 1, scope: !1176, file: !1, line: 386, type: !51)
!1180 = !DILocation(line: 386, column: 30, scope: !1176)
!1181 = !DILocalVariable(name: "result", arg: 2, scope: !1176, file: !1, line: 386, type: !52)
!1182 = !DILocation(line: 386, column: 49, scope: !1176)
!1183 = !DILocalVariable(name: "cut", scope: !1176, file: !1, line: 388, type: !50)
!1184 = !DILocation(line: 388, column: 16, scope: !1176)
!1185 = !DILocation(line: 390, column: 6, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 390, column: 6)
!1187 = !DILocation(line: 390, column: 8, scope: !1186)
!1188 = !DILocation(line: 390, column: 6, scope: !1176)
!1189 = !DILocation(line: 391, column: 24, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 390, column: 27)
!1191 = !DILocation(line: 391, column: 23, scope: !1190)
!1192 = !DILocation(line: 391, column: 37, scope: !1190)
!1193 = !DILocation(line: 391, column: 36, scope: !1190)
!1194 = !DILocation(line: 391, column: 31, scope: !1190)
!1195 = !DILocation(line: 391, column: 25, scope: !1190)
!1196 = !DILocation(line: 391, column: 5, scope: !1190)
!1197 = !DILocation(line: 391, column: 13, scope: !1190)
!1198 = !DILocation(line: 391, column: 17, scope: !1190)
!1199 = !DILocation(line: 392, column: 48, scope: !1190)
!1200 = !DILocation(line: 392, column: 56, scope: !1190)
!1201 = !DILocation(line: 392, column: 43, scope: !1190)
!1202 = !DILocation(line: 392, column: 41, scope: !1190)
!1203 = !DILocation(line: 392, column: 5, scope: !1190)
!1204 = !DILocation(line: 392, column: 13, scope: !1190)
!1205 = !DILocation(line: 392, column: 17, scope: !1190)
!1206 = !DILocation(line: 393, column: 5, scope: !1190)
!1207 = !DILocation(line: 395, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 395, column: 11)
!1209 = !DILocation(line: 395, column: 13, scope: !1208)
!1210 = !DILocation(line: 395, column: 11, scope: !1186)
!1211 = !DILocation(line: 396, column: 28, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 395, column: 21)
!1213 = !DILocation(line: 396, column: 24, scope: !1212)
!1214 = !DILocation(line: 396, column: 31, scope: !1212)
!1215 = !DILocation(line: 396, column: 39, scope: !1212)
!1216 = !DILocation(line: 396, column: 37, scope: !1212)
!1217 = !DILocation(line: 396, column: 22, scope: !1212)
!1218 = !DILocation(line: 396, column: 43, scope: !1212)
!1219 = !DILocation(line: 396, column: 45, scope: !1212)
!1220 = !DILocation(line: 396, column: 44, scope: !1212)
!1221 = !DILocation(line: 396, column: 41, scope: !1212)
!1222 = !DILocation(line: 396, column: 5, scope: !1212)
!1223 = !DILocation(line: 396, column: 13, scope: !1212)
!1224 = !DILocation(line: 396, column: 17, scope: !1212)
!1225 = !DILocation(line: 397, column: 48, scope: !1212)
!1226 = !DILocation(line: 397, column: 56, scope: !1212)
!1227 = !DILocation(line: 397, column: 43, scope: !1212)
!1228 = !DILocation(line: 397, column: 41, scope: !1212)
!1229 = !DILocation(line: 397, column: 5, scope: !1212)
!1230 = !DILocation(line: 397, column: 13, scope: !1212)
!1231 = !DILocation(line: 397, column: 17, scope: !1212)
!1232 = !DILocation(line: 398, column: 5, scope: !1212)
!1233 = !DILocation(line: 400, column: 11, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 400, column: 11)
!1235 = !DILocation(line: 400, column: 13, scope: !1234)
!1236 = !DILocation(line: 400, column: 11, scope: !1208)
!1237 = !DILocation(line: 401, column: 34, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 400, column: 20)
!1239 = !DILocation(line: 401, column: 33, scope: !1238)
!1240 = !DILocation(line: 401, column: 48, scope: !1238)
!1241 = !DILocation(line: 401, column: 47, scope: !1238)
!1242 = !DILocation(line: 401, column: 61, scope: !1238)
!1243 = !DILocation(line: 401, column: 60, scope: !1238)
!1244 = !DILocation(line: 401, column: 78, scope: !1238)
!1245 = !DILocation(line: 401, column: 77, scope: !1238)
!1246 = !DILocation(line: 401, column: 68, scope: !1238)
!1247 = !DILocation(line: 401, column: 62, scope: !1238)
!1248 = !DILocation(line: 401, column: 55, scope: !1238)
!1249 = !DILocation(line: 401, column: 49, scope: !1238)
!1250 = !DILocation(line: 401, column: 41, scope: !1238)
!1251 = !DILocation(line: 401, column: 35, scope: !1238)
!1252 = !DILocation(line: 401, column: 24, scope: !1238)
!1253 = !DILocation(line: 401, column: 5, scope: !1238)
!1254 = !DILocation(line: 401, column: 13, scope: !1238)
!1255 = !DILocation(line: 401, column: 17, scope: !1238)
!1256 = !DILocation(line: 402, column: 48, scope: !1238)
!1257 = !DILocation(line: 402, column: 56, scope: !1238)
!1258 = !DILocation(line: 402, column: 43, scope: !1238)
!1259 = !DILocation(line: 402, column: 41, scope: !1238)
!1260 = !DILocation(line: 402, column: 5, scope: !1238)
!1261 = !DILocation(line: 402, column: 13, scope: !1238)
!1262 = !DILocation(line: 402, column: 17, scope: !1238)
!1263 = !DILocation(line: 403, column: 5, scope: !1238)
!1264 = !DILocation(line: 405, column: 11, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 405, column: 11)
!1266 = !DILocation(line: 405, column: 13, scope: !1265)
!1267 = !DILocation(line: 405, column: 11, scope: !1234)
!1268 = !DILocation(line: 406, column: 28, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 405, column: 32)
!1270 = !DILocation(line: 406, column: 24, scope: !1269)
!1271 = !DILocation(line: 406, column: 31, scope: !1269)
!1272 = !DILocation(line: 406, column: 39, scope: !1269)
!1273 = !DILocation(line: 406, column: 37, scope: !1269)
!1274 = !DILocation(line: 406, column: 22, scope: !1269)
!1275 = !DILocation(line: 406, column: 43, scope: !1269)
!1276 = !DILocation(line: 406, column: 45, scope: !1269)
!1277 = !DILocation(line: 406, column: 44, scope: !1269)
!1278 = !DILocation(line: 406, column: 41, scope: !1269)
!1279 = !DILocation(line: 406, column: 5, scope: !1269)
!1280 = !DILocation(line: 406, column: 13, scope: !1269)
!1281 = !DILocation(line: 406, column: 17, scope: !1269)
!1282 = !DILocation(line: 407, column: 48, scope: !1269)
!1283 = !DILocation(line: 407, column: 56, scope: !1269)
!1284 = !DILocation(line: 407, column: 43, scope: !1269)
!1285 = !DILocation(line: 407, column: 41, scope: !1269)
!1286 = !DILocation(line: 407, column: 5, scope: !1269)
!1287 = !DILocation(line: 407, column: 13, scope: !1269)
!1288 = !DILocation(line: 407, column: 17, scope: !1269)
!1289 = !DILocation(line: 408, column: 5, scope: !1269)
!1290 = !DILocation(line: 411, column: 5, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 410, column: 8)
!1292 = distinct !{!1292, !1290}
!1293 = !DILocation(line: 411, column: 5, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1295, file: !1, discriminator: 1)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 411, column: 5)
!1296 = distinct !{!1296, !1297}
!1297 = !DILocation(line: 411, column: 5, scope: !1295)
!1298 = !DILocation(line: 411, column: 5, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1300, file: !1, discriminator: 2)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 411, column: 5)
!1301 = !DILocation(line: 411, column: 5, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1295, file: !1, discriminator: 3)
!1303 = !DILocation(line: 413, column: 1, scope: !1176)
!1304 = distinct !DISubprogram(name: "gsl_sf_exprel_n_CF_e", scope: !1, file: !1, line: 417, type: !215, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1305 = !DILocalVariable(name: "N", arg: 1, scope: !1304, file: !1, line: 417, type: !50)
!1306 = !DILocation(line: 417, column: 35, scope: !1304)
!1307 = !DILocalVariable(name: "x", arg: 2, scope: !1304, file: !1, line: 417, type: !50)
!1308 = !DILocation(line: 417, column: 51, scope: !1304)
!1309 = !DILocalVariable(name: "result", arg: 3, scope: !1304, file: !1, line: 417, type: !52)
!1310 = !DILocation(line: 417, column: 70, scope: !1304)
!1311 = !DILocation(line: 419, column: 22, scope: !1304)
!1312 = !DILocation(line: 419, column: 25, scope: !1304)
!1313 = !DILocation(line: 419, column: 28, scope: !1304)
!1314 = !DILocation(line: 419, column: 10, scope: !1304)
!1315 = !DILocation(line: 419, column: 3, scope: !1304)
!1316 = distinct !DISubprogram(name: "exprel_n_CF", scope: !1, file: !1, line: 35, type: !215, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1317 = !DILocalVariable(name: "N", arg: 1, scope: !1316, file: !1, line: 35, type: !50)
!1318 = !DILocation(line: 35, column: 26, scope: !1316)
!1319 = !DILocalVariable(name: "x", arg: 2, scope: !1316, file: !1, line: 35, type: !50)
!1320 = !DILocation(line: 35, column: 42, scope: !1316)
!1321 = !DILocalVariable(name: "result", arg: 3, scope: !1316, file: !1, line: 35, type: !52)
!1322 = !DILocation(line: 35, column: 61, scope: !1316)
!1323 = !DILocalVariable(name: "RECUR_BIG", scope: !1316, file: !1, line: 37, type: !50)
!1324 = !DILocation(line: 37, column: 16, scope: !1316)
!1325 = !DILocalVariable(name: "maxiter", scope: !1316, file: !1, line: 38, type: !168)
!1326 = !DILocation(line: 38, column: 13, scope: !1316)
!1327 = !DILocalVariable(name: "n", scope: !1316, file: !1, line: 39, type: !42)
!1328 = !DILocation(line: 39, column: 7, scope: !1316)
!1329 = !DILocalVariable(name: "Anm2", scope: !1316, file: !1, line: 40, type: !51)
!1330 = !DILocation(line: 40, column: 10, scope: !1316)
!1331 = !DILocalVariable(name: "Bnm2", scope: !1316, file: !1, line: 41, type: !51)
!1332 = !DILocation(line: 41, column: 10, scope: !1316)
!1333 = !DILocalVariable(name: "Anm1", scope: !1316, file: !1, line: 42, type: !51)
!1334 = !DILocation(line: 42, column: 10, scope: !1316)
!1335 = !DILocalVariable(name: "Bnm1", scope: !1316, file: !1, line: 43, type: !51)
!1336 = !DILocation(line: 43, column: 10, scope: !1316)
!1337 = !DILocalVariable(name: "a1", scope: !1316, file: !1, line: 44, type: !51)
!1338 = !DILocation(line: 44, column: 10, scope: !1316)
!1339 = !DILocalVariable(name: "b1", scope: !1316, file: !1, line: 45, type: !51)
!1340 = !DILocation(line: 45, column: 10, scope: !1316)
!1341 = !DILocalVariable(name: "a2", scope: !1316, file: !1, line: 46, type: !51)
!1342 = !DILocation(line: 46, column: 10, scope: !1316)
!1343 = !DILocation(line: 46, column: 16, scope: !1316)
!1344 = !DILocation(line: 46, column: 15, scope: !1316)
!1345 = !DILocalVariable(name: "b2", scope: !1316, file: !1, line: 47, type: !51)
!1346 = !DILocation(line: 47, column: 10, scope: !1316)
!1347 = !DILocation(line: 47, column: 15, scope: !1316)
!1348 = !DILocation(line: 47, column: 16, scope: !1316)
!1349 = !DILocalVariable(name: "an", scope: !1316, file: !1, line: 48, type: !51)
!1350 = !DILocation(line: 48, column: 10, scope: !1316)
!1351 = !DILocalVariable(name: "bn", scope: !1316, file: !1, line: 48, type: !51)
!1352 = !DILocation(line: 48, column: 14, scope: !1316)
!1353 = !DILocalVariable(name: "fn", scope: !1316, file: !1, line: 50, type: !51)
!1354 = !DILocation(line: 50, column: 10, scope: !1316)
!1355 = !DILocalVariable(name: "An", scope: !1316, file: !1, line: 52, type: !51)
!1356 = !DILocation(line: 52, column: 10, scope: !1316)
!1357 = !DILocation(line: 52, column: 15, scope: !1316)
!1358 = !DILocation(line: 52, column: 18, scope: !1316)
!1359 = !DILocation(line: 52, column: 17, scope: !1316)
!1360 = !DILocation(line: 52, column: 25, scope: !1316)
!1361 = !DILocation(line: 52, column: 28, scope: !1316)
!1362 = !DILocation(line: 52, column: 27, scope: !1316)
!1363 = !DILocation(line: 52, column: 23, scope: !1316)
!1364 = !DILocalVariable(name: "Bn", scope: !1316, file: !1, line: 53, type: !51)
!1365 = !DILocation(line: 53, column: 10, scope: !1316)
!1366 = !DILocation(line: 53, column: 15, scope: !1316)
!1367 = !DILocation(line: 53, column: 18, scope: !1316)
!1368 = !DILocation(line: 53, column: 17, scope: !1316)
!1369 = !DILocation(line: 53, column: 25, scope: !1316)
!1370 = !DILocation(line: 53, column: 28, scope: !1316)
!1371 = !DILocation(line: 53, column: 27, scope: !1316)
!1372 = !DILocation(line: 53, column: 23, scope: !1316)
!1373 = !DILocation(line: 56, column: 4, scope: !1316)
!1374 = !DILocation(line: 57, column: 10, scope: !1316)
!1375 = !DILocation(line: 57, column: 8, scope: !1316)
!1376 = !DILocation(line: 58, column: 10, scope: !1316)
!1377 = !DILocation(line: 58, column: 8, scope: !1316)
!1378 = !DILocation(line: 59, column: 10, scope: !1316)
!1379 = !DILocation(line: 59, column: 8, scope: !1316)
!1380 = !DILocation(line: 60, column: 10, scope: !1316)
!1381 = !DILocation(line: 60, column: 8, scope: !1316)
!1382 = !DILocation(line: 61, column: 8, scope: !1316)
!1383 = !DILocation(line: 61, column: 11, scope: !1316)
!1384 = !DILocation(line: 61, column: 10, scope: !1316)
!1385 = !DILocation(line: 61, column: 18, scope: !1316)
!1386 = !DILocation(line: 61, column: 21, scope: !1316)
!1387 = !DILocation(line: 61, column: 20, scope: !1316)
!1388 = !DILocation(line: 61, column: 16, scope: !1316)
!1389 = !DILocation(line: 61, column: 6, scope: !1316)
!1390 = !DILocation(line: 62, column: 8, scope: !1316)
!1391 = !DILocation(line: 62, column: 11, scope: !1316)
!1392 = !DILocation(line: 62, column: 10, scope: !1316)
!1393 = !DILocation(line: 62, column: 18, scope: !1316)
!1394 = !DILocation(line: 62, column: 21, scope: !1316)
!1395 = !DILocation(line: 62, column: 20, scope: !1316)
!1396 = !DILocation(line: 62, column: 16, scope: !1316)
!1397 = !DILocation(line: 62, column: 6, scope: !1316)
!1398 = !DILocation(line: 64, column: 8, scope: !1316)
!1399 = !DILocation(line: 64, column: 11, scope: !1316)
!1400 = !DILocation(line: 64, column: 10, scope: !1316)
!1401 = !DILocation(line: 64, column: 6, scope: !1316)
!1402 = !DILocation(line: 66, column: 3, scope: !1316)
!1403 = !DILocation(line: 66, column: 9, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1316, file: !1, discriminator: 1)
!1405 = !DILocation(line: 66, column: 11, scope: !1404)
!1406 = !DILocation(line: 66, column: 3, scope: !1404)
!1407 = !DILocalVariable(name: "old_fn", scope: !1408, file: !1, line: 67, type: !51)
!1408 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 66, column: 22)
!1409 = !DILocation(line: 67, column: 12, scope: !1408)
!1410 = !DILocalVariable(name: "del", scope: !1408, file: !1, line: 68, type: !51)
!1411 = !DILocation(line: 68, column: 12, scope: !1408)
!1412 = !DILocation(line: 69, column: 6, scope: !1408)
!1413 = !DILocation(line: 70, column: 12, scope: !1408)
!1414 = !DILocation(line: 70, column: 10, scope: !1408)
!1415 = !DILocation(line: 71, column: 12, scope: !1408)
!1416 = !DILocation(line: 71, column: 10, scope: !1408)
!1417 = !DILocation(line: 72, column: 12, scope: !1408)
!1418 = !DILocation(line: 72, column: 10, scope: !1408)
!1419 = !DILocation(line: 73, column: 12, scope: !1408)
!1420 = !DILocation(line: 73, column: 10, scope: !1408)
!1421 = !DILocation(line: 74, column: 12, scope: !1408)
!1422 = !DILocation(line: 74, column: 30, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1408, file: !1, discriminator: 1)
!1424 = !DILocation(line: 74, column: 31, scope: !1423)
!1425 = !DILocation(line: 74, column: 34, scope: !1423)
!1426 = !DILocation(line: 74, column: 28, scope: !1423)
!1427 = !DILocation(line: 74, column: 38, scope: !1423)
!1428 = !DILocation(line: 74, column: 37, scope: !1423)
!1429 = !DILocation(line: 74, column: 12, scope: !1423)
!1430 = !DILocation(line: 74, column: 44, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1408, file: !1, discriminator: 2)
!1432 = !DILocation(line: 74, column: 47, scope: !1431)
!1433 = !DILocation(line: 74, column: 48, scope: !1431)
!1434 = !DILocation(line: 74, column: 46, scope: !1431)
!1435 = !DILocation(line: 74, column: 45, scope: !1431)
!1436 = !DILocation(line: 74, column: 51, scope: !1431)
!1437 = !DILocation(line: 74, column: 42, scope: !1431)
!1438 = !DILocation(line: 74, column: 55, scope: !1431)
!1439 = !DILocation(line: 74, column: 54, scope: !1431)
!1440 = !DILocation(line: 74, column: 12, scope: !1431)
!1441 = !DILocation(line: 74, column: 12, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1408, file: !1, discriminator: 3)
!1443 = !DILocation(line: 74, column: 8, scope: !1442)
!1444 = !DILocation(line: 75, column: 10, scope: !1408)
!1445 = !DILocation(line: 75, column: 14, scope: !1408)
!1446 = !DILocation(line: 75, column: 12, scope: !1408)
!1447 = !DILocation(line: 75, column: 16, scope: !1408)
!1448 = !DILocation(line: 75, column: 8, scope: !1408)
!1449 = !DILocation(line: 76, column: 10, scope: !1408)
!1450 = !DILocation(line: 76, column: 13, scope: !1408)
!1451 = !DILocation(line: 76, column: 12, scope: !1408)
!1452 = !DILocation(line: 76, column: 20, scope: !1408)
!1453 = !DILocation(line: 76, column: 23, scope: !1408)
!1454 = !DILocation(line: 76, column: 22, scope: !1408)
!1455 = !DILocation(line: 76, column: 18, scope: !1408)
!1456 = !DILocation(line: 76, column: 8, scope: !1408)
!1457 = !DILocation(line: 77, column: 10, scope: !1408)
!1458 = !DILocation(line: 77, column: 13, scope: !1408)
!1459 = !DILocation(line: 77, column: 12, scope: !1408)
!1460 = !DILocation(line: 77, column: 20, scope: !1408)
!1461 = !DILocation(line: 77, column: 23, scope: !1408)
!1462 = !DILocation(line: 77, column: 22, scope: !1408)
!1463 = !DILocation(line: 77, column: 18, scope: !1408)
!1464 = !DILocation(line: 77, column: 8, scope: !1408)
!1465 = !DILocation(line: 79, column: 13, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 79, column: 8)
!1467 = !DILocation(line: 79, column: 8, scope: !1466)
!1468 = !DILocation(line: 79, column: 17, scope: !1466)
!1469 = !DILocation(line: 79, column: 29, scope: !1466)
!1470 = !DILocation(line: 79, column: 37, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1466, file: !1, discriminator: 1)
!1472 = !DILocation(line: 79, column: 32, scope: !1471)
!1473 = !DILocation(line: 79, column: 41, scope: !1471)
!1474 = !DILocation(line: 79, column: 8, scope: !1471)
!1475 = !DILocation(line: 80, column: 10, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 79, column: 54)
!1477 = !DILocation(line: 81, column: 10, scope: !1476)
!1478 = !DILocation(line: 82, column: 12, scope: !1476)
!1479 = !DILocation(line: 83, column: 12, scope: !1476)
!1480 = !DILocation(line: 84, column: 12, scope: !1476)
!1481 = !DILocation(line: 85, column: 12, scope: !1476)
!1482 = !DILocation(line: 86, column: 5, scope: !1476)
!1483 = !DILocation(line: 88, column: 14, scope: !1408)
!1484 = !DILocation(line: 88, column: 12, scope: !1408)
!1485 = !DILocation(line: 89, column: 10, scope: !1408)
!1486 = !DILocation(line: 89, column: 13, scope: !1408)
!1487 = !DILocation(line: 89, column: 12, scope: !1408)
!1488 = !DILocation(line: 89, column: 8, scope: !1408)
!1489 = !DILocation(line: 90, column: 11, scope: !1408)
!1490 = !DILocation(line: 90, column: 18, scope: !1408)
!1491 = !DILocation(line: 90, column: 17, scope: !1408)
!1492 = !DILocation(line: 90, column: 9, scope: !1408)
!1493 = !DILocation(line: 92, column: 13, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 92, column: 8)
!1495 = !DILocation(line: 92, column: 17, scope: !1494)
!1496 = !DILocation(line: 92, column: 8, scope: !1494)
!1497 = !DILocation(line: 92, column: 24, scope: !1494)
!1498 = !DILocation(line: 92, column: 8, scope: !1408)
!1499 = !DILocation(line: 92, column: 47, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1494, file: !1, discriminator: 1)
!1501 = !DILocation(line: 66, column: 3, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1316, file: !1, discriminator: 2)
!1503 = distinct !{!1503, !1402}
!1504 = !DILocation(line: 95, column: 17, scope: !1316)
!1505 = !DILocation(line: 95, column: 3, scope: !1316)
!1506 = !DILocation(line: 95, column: 11, scope: !1316)
!1507 = !DILocation(line: 95, column: 15, scope: !1316)
!1508 = !DILocation(line: 96, column: 22, scope: !1316)
!1509 = !DILocation(line: 96, column: 23, scope: !1316)
!1510 = !DILocation(line: 96, column: 20, scope: !1316)
!1511 = !DILocation(line: 96, column: 28, scope: !1316)
!1512 = !DILocation(line: 96, column: 50, scope: !1316)
!1513 = !DILocation(line: 96, column: 45, scope: !1316)
!1514 = !DILocation(line: 96, column: 44, scope: !1316)
!1515 = !DILocation(line: 96, column: 3, scope: !1316)
!1516 = !DILocation(line: 96, column: 11, scope: !1316)
!1517 = !DILocation(line: 96, column: 15, scope: !1316)
!1518 = !DILocation(line: 98, column: 6, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 98, column: 6)
!1520 = !DILocation(line: 98, column: 8, scope: !1519)
!1521 = !DILocation(line: 98, column: 6, scope: !1316)
!1522 = !DILocation(line: 99, column: 5, scope: !1519)
!1523 = distinct !{!1523, !1522}
!1524 = !DILocation(line: 99, column: 5, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1526, file: !1, discriminator: 1)
!1526 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 99, column: 5)
!1527 = !DILocation(line: 99, column: 5, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1526, file: !1, discriminator: 2)
!1529 = !DILocation(line: 101, column: 5, scope: !1519)
!1530 = !DILocation(line: 102, column: 1, scope: !1316)
!1531 = distinct !DISubprogram(name: "gsl_sf_exprel_n_e", scope: !1, file: !1, line: 423, type: !1532, isLocal: false, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!42, !168, !50, !52}
!1534 = !DILocalVariable(name: "N", arg: 1, scope: !1531, file: !1, line: 423, type: !168)
!1535 = !DILocation(line: 423, column: 29, scope: !1531)
!1536 = !DILocalVariable(name: "x", arg: 2, scope: !1531, file: !1, line: 423, type: !50)
!1537 = !DILocation(line: 423, column: 45, scope: !1531)
!1538 = !DILocalVariable(name: "result", arg: 3, scope: !1531, file: !1, line: 423, type: !52)
!1539 = !DILocation(line: 423, column: 64, scope: !1531)
!1540 = !DILocation(line: 425, column: 6, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1531, file: !1, line: 425, column: 6)
!1542 = !DILocation(line: 425, column: 8, scope: !1541)
!1543 = !DILocation(line: 425, column: 6, scope: !1531)
!1544 = !DILocation(line: 426, column: 5, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 425, column: 13)
!1546 = distinct !{!1546, !1544}
!1547 = !DILocation(line: 426, column: 5, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1549, file: !1, discriminator: 1)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 426, column: 5)
!1550 = distinct !{!1550, !1551}
!1551 = !DILocation(line: 426, column: 5, scope: !1549)
!1552 = !DILocation(line: 426, column: 5, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1554, file: !1, discriminator: 2)
!1554 = distinct !DILexicalBlock(scope: !1549, file: !1, line: 426, column: 5)
!1555 = !DILocation(line: 426, column: 5, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1549, file: !1, discriminator: 3)
!1557 = !DILocation(line: 427, column: 3, scope: !1545)
!1558 = !DILocation(line: 428, column: 11, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 428, column: 11)
!1560 = !DILocation(line: 428, column: 13, scope: !1559)
!1561 = !DILocation(line: 428, column: 11, scope: !1541)
!1562 = !DILocation(line: 429, column: 5, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 428, column: 21)
!1564 = !DILocation(line: 429, column: 13, scope: !1563)
!1565 = !DILocation(line: 429, column: 17, scope: !1563)
!1566 = !DILocation(line: 430, column: 5, scope: !1563)
!1567 = !DILocation(line: 430, column: 13, scope: !1563)
!1568 = !DILocation(line: 430, column: 17, scope: !1563)
!1569 = !DILocation(line: 431, column: 5, scope: !1563)
!1570 = !DILocation(line: 433, column: 16, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 433, column: 11)
!1572 = !DILocation(line: 433, column: 11, scope: !1571)
!1573 = !DILocation(line: 433, column: 45, scope: !1571)
!1574 = !DILocation(line: 433, column: 43, scope: !1571)
!1575 = !DILocation(line: 433, column: 19, scope: !1571)
!1576 = !DILocation(line: 433, column: 11, scope: !1559)
!1577 = !DILocation(line: 434, column: 25, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 433, column: 48)
!1579 = !DILocation(line: 434, column: 28, scope: !1578)
!1580 = !DILocation(line: 434, column: 29, scope: !1578)
!1581 = !DILocation(line: 434, column: 27, scope: !1578)
!1582 = !DILocation(line: 434, column: 26, scope: !1578)
!1583 = !DILocation(line: 434, column: 42, scope: !1578)
!1584 = !DILocation(line: 434, column: 45, scope: !1578)
!1585 = !DILocation(line: 434, column: 46, scope: !1578)
!1586 = !DILocation(line: 434, column: 44, scope: !1578)
!1587 = !DILocation(line: 434, column: 43, scope: !1578)
!1588 = !DILocation(line: 434, column: 40, scope: !1578)
!1589 = !DILocation(line: 434, column: 33, scope: !1578)
!1590 = !DILocation(line: 434, column: 23, scope: !1578)
!1591 = !DILocation(line: 434, column: 5, scope: !1578)
!1592 = !DILocation(line: 434, column: 13, scope: !1578)
!1593 = !DILocation(line: 434, column: 17, scope: !1578)
!1594 = !DILocation(line: 435, column: 5, scope: !1578)
!1595 = !DILocation(line: 435, column: 13, scope: !1578)
!1596 = !DILocation(line: 435, column: 17, scope: !1578)
!1597 = !DILocation(line: 436, column: 5, scope: !1578)
!1598 = !DILocation(line: 438, column: 11, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 438, column: 11)
!1600 = !DILocation(line: 438, column: 13, scope: !1599)
!1601 = !DILocation(line: 438, column: 11, scope: !1571)
!1602 = !DILocation(line: 439, column: 25, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 438, column: 19)
!1604 = !DILocation(line: 439, column: 28, scope: !1603)
!1605 = !DILocation(line: 439, column: 12, scope: !1603)
!1606 = !DILocation(line: 439, column: 5, scope: !1603)
!1607 = !DILocation(line: 441, column: 11, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 441, column: 11)
!1609 = !DILocation(line: 441, column: 13, scope: !1608)
!1610 = !DILocation(line: 441, column: 11, scope: !1599)
!1611 = !DILocation(line: 442, column: 28, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 441, column: 19)
!1613 = !DILocation(line: 442, column: 31, scope: !1612)
!1614 = !DILocation(line: 442, column: 12, scope: !1612)
!1615 = !DILocation(line: 442, column: 5, scope: !1612)
!1616 = !DILocation(line: 444, column: 11, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 444, column: 11)
!1618 = !DILocation(line: 444, column: 13, scope: !1617)
!1619 = !DILocation(line: 444, column: 11, scope: !1608)
!1620 = !DILocation(line: 445, column: 30, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 444, column: 19)
!1622 = !DILocation(line: 445, column: 33, scope: !1621)
!1623 = !DILocation(line: 445, column: 12, scope: !1621)
!1624 = !DILocation(line: 445, column: 5, scope: !1621)
!1625 = !DILocation(line: 448, column: 8, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 448, column: 8)
!1627 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 447, column: 8)
!1628 = !DILocation(line: 448, column: 12, scope: !1626)
!1629 = !DILocation(line: 448, column: 10, scope: !1626)
!1630 = !DILocation(line: 448, column: 14, scope: !1626)
!1631 = !DILocation(line: 448, column: 19, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1626, file: !1, discriminator: 1)
!1633 = !DILocation(line: 448, column: 18, scope: !1632)
!1634 = !DILocation(line: 448, column: 23, scope: !1632)
!1635 = !DILocation(line: 448, column: 36, scope: !1632)
!1636 = !DILocation(line: 448, column: 38, scope: !1632)
!1637 = !DILocation(line: 448, column: 37, scope: !1632)
!1638 = !DILocation(line: 448, column: 32, scope: !1632)
!1639 = !DILocation(line: 448, column: 30, scope: !1632)
!1640 = !DILocation(line: 448, column: 24, scope: !1632)
!1641 = !DILocation(line: 448, column: 21, scope: !1632)
!1642 = !DILocation(line: 448, column: 42, scope: !1632)
!1643 = !DILocation(line: 448, column: 8, scope: !1632)
!1644 = !DILocalVariable(name: "lnf_N", scope: !1645, file: !1, line: 453, type: !53)
!1645 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 448, column: 66)
!1646 = !DILocation(line: 453, column: 21, scope: !1645)
!1647 = !DILocalVariable(name: "lnr_val", scope: !1645, file: !1, line: 454, type: !51)
!1648 = !DILocation(line: 454, column: 14, scope: !1645)
!1649 = !DILocalVariable(name: "lnr_err", scope: !1645, file: !1, line: 455, type: !51)
!1650 = !DILocation(line: 455, column: 14, scope: !1645)
!1651 = !DILocalVariable(name: "lnterm", scope: !1645, file: !1, line: 456, type: !51)
!1652 = !DILocation(line: 456, column: 14, scope: !1645)
!1653 = !DILocation(line: 457, column: 23, scope: !1645)
!1654 = !DILocation(line: 457, column: 7, scope: !1645)
!1655 = !DILocation(line: 458, column: 16, scope: !1645)
!1656 = !DILocation(line: 458, column: 22, scope: !1645)
!1657 = !DILocation(line: 458, column: 18, scope: !1645)
!1658 = !DILocation(line: 458, column: 17, scope: !1645)
!1659 = !DILocation(line: 458, column: 14, scope: !1645)
!1660 = !DILocation(line: 459, column: 18, scope: !1645)
!1661 = !DILocation(line: 459, column: 28, scope: !1645)
!1662 = !DILocation(line: 459, column: 20, scope: !1645)
!1663 = !DILocation(line: 459, column: 34, scope: !1645)
!1664 = !DILocation(line: 459, column: 32, scope: !1645)
!1665 = !DILocation(line: 459, column: 16, scope: !1645)
!1666 = !DILocation(line: 460, column: 42, scope: !1645)
!1667 = !DILocation(line: 460, column: 37, scope: !1645)
!1668 = !DILocation(line: 460, column: 58, scope: !1645)
!1669 = !DILocation(line: 460, column: 47, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1645, file: !1, discriminator: 1)
!1671 = !DILocation(line: 460, column: 45, scope: !1645)
!1672 = !DILocation(line: 460, column: 70, scope: !1645)
!1673 = !DILocation(line: 460, column: 65, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1645, file: !1, discriminator: 2)
!1675 = !DILocation(line: 460, column: 63, scope: !1645)
!1676 = !DILocation(line: 460, column: 34, scope: !1645)
!1677 = !DILocation(line: 460, column: 16, scope: !1645)
!1678 = !DILocation(line: 461, column: 24, scope: !1645)
!1679 = !DILocation(line: 461, column: 15, scope: !1645)
!1680 = !DILocation(line: 462, column: 31, scope: !1645)
!1681 = !DILocation(line: 462, column: 40, scope: !1645)
!1682 = !DILocation(line: 462, column: 49, scope: !1645)
!1683 = !DILocation(line: 462, column: 14, scope: !1645)
!1684 = !DILocation(line: 462, column: 7, scope: !1645)
!1685 = !DILocation(line: 464, column: 13, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 464, column: 13)
!1687 = !DILocation(line: 464, column: 17, scope: !1686)
!1688 = !DILocation(line: 464, column: 15, scope: !1686)
!1689 = !DILocation(line: 464, column: 13, scope: !1626)
!1690 = !DILocalVariable(name: "ln_x", scope: !1691, file: !1, line: 470, type: !51)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 464, column: 20)
!1692 = !DILocation(line: 470, column: 14, scope: !1691)
!1693 = !DILocation(line: 470, column: 25, scope: !1691)
!1694 = !DILocation(line: 470, column: 21, scope: !1691)
!1695 = !DILocalVariable(name: "lnf_N", scope: !1691, file: !1, line: 471, type: !53)
!1696 = !DILocation(line: 471, column: 21, scope: !1691)
!1697 = !DILocalVariable(name: "lg_N", scope: !1691, file: !1, line: 472, type: !51)
!1698 = !DILocation(line: 472, column: 14, scope: !1691)
!1699 = !DILocalVariable(name: "lnpre_val", scope: !1691, file: !1, line: 473, type: !51)
!1700 = !DILocation(line: 473, column: 14, scope: !1691)
!1701 = !DILocalVariable(name: "lnpre_err", scope: !1691, file: !1, line: 474, type: !51)
!1702 = !DILocation(line: 474, column: 14, scope: !1691)
!1703 = !DILocation(line: 475, column: 23, scope: !1691)
!1704 = !DILocation(line: 475, column: 7, scope: !1691)
!1705 = !DILocation(line: 476, column: 21, scope: !1691)
!1706 = !DILocation(line: 476, column: 31, scope: !1691)
!1707 = !DILocation(line: 476, column: 27, scope: !1691)
!1708 = !DILocation(line: 476, column: 25, scope: !1691)
!1709 = !DILocation(line: 476, column: 13, scope: !1691)
!1710 = !DILocation(line: 477, column: 20, scope: !1691)
!1711 = !DILocation(line: 477, column: 30, scope: !1691)
!1712 = !DILocation(line: 477, column: 22, scope: !1691)
!1713 = !DILocation(line: 477, column: 36, scope: !1691)
!1714 = !DILocation(line: 477, column: 38, scope: !1691)
!1715 = !DILocation(line: 477, column: 37, scope: !1691)
!1716 = !DILocation(line: 477, column: 34, scope: !1691)
!1717 = !DILocation(line: 477, column: 18, scope: !1691)
!1718 = !DILocation(line: 478, column: 44, scope: !1691)
!1719 = !DILocation(line: 478, column: 39, scope: !1691)
!1720 = !DILocation(line: 478, column: 60, scope: !1691)
!1721 = !DILocation(line: 478, column: 49, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1691, file: !1, discriminator: 1)
!1723 = !DILocation(line: 478, column: 47, scope: !1691)
!1724 = !DILocation(line: 478, column: 72, scope: !1691)
!1725 = !DILocation(line: 478, column: 74, scope: !1691)
!1726 = !DILocation(line: 478, column: 73, scope: !1691)
!1727 = !DILocation(line: 478, column: 67, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1691, file: !1, discriminator: 2)
!1729 = !DILocation(line: 478, column: 65, scope: !1691)
!1730 = !DILocation(line: 478, column: 36, scope: !1691)
!1731 = !DILocation(line: 478, column: 18, scope: !1691)
!1732 = !DILocation(line: 479, column: 26, scope: !1691)
!1733 = !DILocation(line: 479, column: 17, scope: !1691)
!1734 = !DILocation(line: 480, column: 10, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1691, file: !1, line: 480, column: 10)
!1736 = !DILocation(line: 480, column: 20, scope: !1735)
!1737 = !DILocation(line: 480, column: 10, scope: !1691)
!1738 = !DILocalVariable(name: "stat_eG", scope: !1739, file: !1, line: 481, type: !42)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !1, line: 480, column: 45)
!1740 = !DILocation(line: 481, column: 13, scope: !1739)
!1741 = !DILocalVariable(name: "bigG_ratio", scope: !1739, file: !1, line: 482, type: !53)
!1742 = !DILocation(line: 482, column: 23, scope: !1739)
!1743 = !DILocalVariable(name: "pre", scope: !1739, file: !1, line: 483, type: !53)
!1744 = !DILocation(line: 483, column: 23, scope: !1739)
!1745 = !DILocalVariable(name: "stat_ex", scope: !1739, file: !1, line: 484, type: !42)
!1746 = !DILocation(line: 484, column: 13, scope: !1739)
!1747 = !DILocation(line: 484, column: 40, scope: !1739)
!1748 = !DILocation(line: 484, column: 51, scope: !1739)
!1749 = !DILocation(line: 484, column: 23, scope: !1739)
!1750 = !DILocalVariable(name: "ln_bigG_ratio_pre", scope: !1739, file: !1, line: 485, type: !51)
!1751 = !DILocation(line: 485, column: 16, scope: !1739)
!1752 = !DILocation(line: 485, column: 37, scope: !1739)
!1753 = !DILocation(line: 485, column: 36, scope: !1739)
!1754 = !DILocation(line: 485, column: 42, scope: !1739)
!1755 = !DILocation(line: 485, column: 43, scope: !1739)
!1756 = !DILocation(line: 485, column: 41, scope: !1739)
!1757 = !DILocation(line: 485, column: 47, scope: !1739)
!1758 = !DILocation(line: 485, column: 46, scope: !1739)
!1759 = !DILocation(line: 485, column: 39, scope: !1739)
!1760 = !DILocation(line: 485, column: 54, scope: !1739)
!1761 = !DILocation(line: 485, column: 52, scope: !1739)
!1762 = !DILocalVariable(name: "bigGsum", scope: !1739, file: !1, line: 486, type: !51)
!1763 = !DILocation(line: 486, column: 16, scope: !1739)
!1764 = !DILocalVariable(name: "term", scope: !1739, file: !1, line: 487, type: !51)
!1765 = !DILocation(line: 487, column: 16, scope: !1739)
!1766 = !DILocalVariable(name: "k", scope: !1739, file: !1, line: 488, type: !42)
!1767 = !DILocation(line: 488, column: 13, scope: !1739)
!1768 = !DILocation(line: 489, column: 14, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 489, column: 9)
!1770 = !DILocation(line: 489, column: 13, scope: !1769)
!1771 = !DILocation(line: 489, column: 18, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1773, file: !1, discriminator: 1)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !1, line: 489, column: 9)
!1774 = !DILocation(line: 489, column: 20, scope: !1772)
!1775 = !DILocation(line: 489, column: 19, scope: !1772)
!1776 = !DILocation(line: 489, column: 9, scope: !1772)
!1777 = !DILocation(line: 490, column: 20, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 489, column: 28)
!1779 = !DILocation(line: 490, column: 22, scope: !1778)
!1780 = !DILocation(line: 490, column: 21, scope: !1778)
!1781 = !DILocation(line: 490, column: 19, scope: !1778)
!1782 = !DILocation(line: 490, column: 25, scope: !1778)
!1783 = !DILocation(line: 490, column: 24, scope: !1778)
!1784 = !DILocation(line: 490, column: 16, scope: !1778)
!1785 = !DILocation(line: 491, column: 22, scope: !1778)
!1786 = !DILocation(line: 491, column: 19, scope: !1778)
!1787 = !DILocation(line: 492, column: 9, scope: !1778)
!1788 = !DILocation(line: 489, column: 24, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1773, file: !1, discriminator: 2)
!1790 = !DILocation(line: 489, column: 9, scope: !1789)
!1791 = distinct !{!1791, !1792}
!1792 = !DILocation(line: 489, column: 9, scope: !1739)
!1793 = !DILocation(line: 493, column: 37, scope: !1739)
!1794 = !DILocation(line: 493, column: 56, scope: !1739)
!1795 = !DILocation(line: 493, column: 19, scope: !1739)
!1796 = !DILocation(line: 493, column: 17, scope: !1739)
!1797 = !DILocation(line: 494, column: 12, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 494, column: 12)
!1799 = !DILocation(line: 494, column: 20, scope: !1798)
!1800 = !DILocation(line: 494, column: 12, scope: !1739)
!1801 = !DILocation(line: 495, column: 30, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !1, line: 494, column: 36)
!1803 = !DILocation(line: 495, column: 54, scope: !1802)
!1804 = !DILocation(line: 495, column: 41, scope: !1802)
!1805 = !DILocation(line: 495, column: 34, scope: !1802)
!1806 = !DILocation(line: 495, column: 11, scope: !1802)
!1807 = !DILocation(line: 495, column: 19, scope: !1802)
!1808 = !DILocation(line: 495, column: 24, scope: !1802)
!1809 = !DILocation(line: 496, column: 30, scope: !1802)
!1810 = !DILocation(line: 496, column: 70, scope: !1802)
!1811 = !DILocation(line: 496, column: 57, scope: !1802)
!1812 = !DILocation(line: 496, column: 34, scope: !1802)
!1813 = !DILocation(line: 496, column: 11, scope: !1802)
!1814 = !DILocation(line: 496, column: 19, scope: !1802)
!1815 = !DILocation(line: 496, column: 24, scope: !1802)
!1816 = !DILocation(line: 497, column: 30, scope: !1802)
!1817 = !DILocation(line: 497, column: 58, scope: !1802)
!1818 = !DILocation(line: 497, column: 45, scope: !1802)
!1819 = !DILocation(line: 497, column: 36, scope: !1802)
!1820 = !DILocation(line: 497, column: 34, scope: !1802)
!1821 = !DILocation(line: 497, column: 11, scope: !1802)
!1822 = !DILocation(line: 497, column: 19, scope: !1802)
!1823 = !DILocation(line: 497, column: 23, scope: !1802)
!1824 = !DILocation(line: 498, column: 55, scope: !1802)
!1825 = !DILocation(line: 498, column: 63, scope: !1802)
!1826 = !DILocation(line: 498, column: 50, scope: !1802)
!1827 = !DILocation(line: 498, column: 48, scope: !1802)
!1828 = !DILocation(line: 498, column: 11, scope: !1802)
!1829 = !DILocation(line: 498, column: 19, scope: !1802)
!1830 = !DILocation(line: 498, column: 23, scope: !1802)
!1831 = !DILocation(line: 499, column: 18, scope: !1802)
!1832 = !DILocation(line: 499, column: 11, scope: !1802)
!1833 = !DILocation(line: 502, column: 11, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1798, file: !1, line: 501, column: 14)
!1835 = !DILocation(line: 502, column: 19, scope: !1834)
!1836 = !DILocation(line: 502, column: 23, scope: !1834)
!1837 = !DILocation(line: 503, column: 11, scope: !1834)
!1838 = !DILocation(line: 503, column: 19, scope: !1834)
!1839 = !DILocation(line: 503, column: 23, scope: !1834)
!1840 = !DILocation(line: 504, column: 18, scope: !1834)
!1841 = !DILocation(line: 504, column: 11, scope: !1834)
!1842 = !DILocation(line: 508, column: 9, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1735, file: !1, line: 507, column: 12)
!1844 = distinct !{!1844, !1842}
!1845 = !DILocation(line: 508, column: 9, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1847, file: !1, discriminator: 1)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 508, column: 9)
!1848 = distinct !{!1848, !1849}
!1849 = !DILocation(line: 508, column: 9, scope: !1847)
!1850 = !DILocation(line: 508, column: 9, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1852, file: !1, discriminator: 2)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !1, line: 508, column: 9)
!1853 = !DILocation(line: 508, column: 9, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1847, file: !1, discriminator: 3)
!1855 = !DILocation(line: 510, column: 5, scope: !1691)
!1856 = !DILocation(line: 511, column: 13, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 511, column: 13)
!1858 = !DILocation(line: 511, column: 23, scope: !1857)
!1859 = !DILocation(line: 511, column: 22, scope: !1857)
!1860 = !DILocation(line: 511, column: 15, scope: !1857)
!1861 = !DILocation(line: 511, column: 13, scope: !1686)
!1862 = !DILocation(line: 512, column: 26, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1857, file: !1, line: 511, column: 26)
!1864 = !DILocation(line: 512, column: 29, scope: !1863)
!1865 = !DILocation(line: 512, column: 32, scope: !1863)
!1866 = !DILocation(line: 512, column: 14, scope: !1863)
!1867 = !DILocation(line: 512, column: 7, scope: !1863)
!1868 = !DILocalVariable(name: "sum", scope: !1869, file: !1, line: 519, type: !51)
!1869 = distinct !DILexicalBlock(scope: !1857, file: !1, line: 514, column: 10)
!1870 = !DILocation(line: 519, column: 14, scope: !1869)
!1871 = !DILocalVariable(name: "term", scope: !1869, file: !1, line: 520, type: !51)
!1872 = !DILocation(line: 520, column: 14, scope: !1869)
!1873 = !DILocalVariable(name: "k", scope: !1869, file: !1, line: 521, type: !42)
!1874 = !DILocation(line: 521, column: 11, scope: !1869)
!1875 = !DILocation(line: 522, column: 12, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 522, column: 7)
!1877 = !DILocation(line: 522, column: 11, scope: !1876)
!1878 = !DILocation(line: 522, column: 16, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1880, file: !1, discriminator: 1)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 522, column: 7)
!1881 = !DILocation(line: 522, column: 18, scope: !1879)
!1882 = !DILocation(line: 522, column: 17, scope: !1879)
!1883 = !DILocation(line: 522, column: 7, scope: !1879)
!1884 = !DILocation(line: 523, column: 18, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 522, column: 26)
!1886 = !DILocation(line: 523, column: 20, scope: !1885)
!1887 = !DILocation(line: 523, column: 19, scope: !1885)
!1888 = !DILocation(line: 523, column: 17, scope: !1885)
!1889 = !DILocation(line: 523, column: 23, scope: !1885)
!1890 = !DILocation(line: 523, column: 22, scope: !1885)
!1891 = !DILocation(line: 523, column: 14, scope: !1885)
!1892 = !DILocation(line: 524, column: 17, scope: !1885)
!1893 = !DILocation(line: 524, column: 14, scope: !1885)
!1894 = !DILocation(line: 525, column: 7, scope: !1885)
!1895 = !DILocation(line: 522, column: 22, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1880, file: !1, discriminator: 2)
!1897 = !DILocation(line: 522, column: 7, scope: !1896)
!1898 = distinct !{!1898, !1899}
!1899 = !DILocation(line: 522, column: 7, scope: !1869)
!1900 = !DILocation(line: 526, column: 22, scope: !1869)
!1901 = !DILocation(line: 526, column: 21, scope: !1869)
!1902 = !DILocation(line: 526, column: 24, scope: !1869)
!1903 = !DILocation(line: 526, column: 23, scope: !1869)
!1904 = !DILocation(line: 526, column: 28, scope: !1869)
!1905 = !DILocation(line: 526, column: 26, scope: !1869)
!1906 = !DILocation(line: 526, column: 7, scope: !1869)
!1907 = !DILocation(line: 526, column: 15, scope: !1869)
!1908 = !DILocation(line: 526, column: 19, scope: !1869)
!1909 = !DILocation(line: 527, column: 50, scope: !1869)
!1910 = !DILocation(line: 527, column: 58, scope: !1869)
!1911 = !DILocation(line: 527, column: 45, scope: !1869)
!1912 = !DILocation(line: 527, column: 43, scope: !1869)
!1913 = !DILocation(line: 527, column: 7, scope: !1869)
!1914 = !DILocation(line: 527, column: 15, scope: !1869)
!1915 = !DILocation(line: 527, column: 19, scope: !1869)
!1916 = !DILocation(line: 528, column: 7, scope: !1869)
!1917 = !DILocation(line: 531, column: 1, scope: !1531)
!1918 = distinct !DISubprogram(name: "gsl_sf_exp_err_e", scope: !1, file: !1, line: 535, type: !215, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1919 = !DILocalVariable(name: "x", arg: 1, scope: !1918, file: !1, line: 535, type: !50)
!1920 = !DILocation(line: 535, column: 31, scope: !1918)
!1921 = !DILocalVariable(name: "dx", arg: 2, scope: !1918, file: !1, line: 535, type: !50)
!1922 = !DILocation(line: 535, column: 47, scope: !1918)
!1923 = !DILocalVariable(name: "result", arg: 3, scope: !1918, file: !1, line: 535, type: !52)
!1924 = !DILocation(line: 535, column: 67, scope: !1918)
!1925 = !DILocalVariable(name: "adx", scope: !1918, file: !1, line: 537, type: !50)
!1926 = !DILocation(line: 537, column: 16, scope: !1918)
!1927 = !DILocation(line: 537, column: 27, scope: !1918)
!1928 = !DILocation(line: 537, column: 22, scope: !1918)
!1929 = !DILocation(line: 541, column: 6, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1918, file: !1, line: 541, column: 6)
!1931 = !DILocation(line: 541, column: 10, scope: !1930)
!1932 = !DILocation(line: 541, column: 8, scope: !1930)
!1933 = !DILocation(line: 541, column: 14, scope: !1930)
!1934 = !DILocation(line: 541, column: 6, scope: !1918)
!1935 = !DILocation(line: 542, column: 5, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 541, column: 33)
!1937 = distinct !{!1937, !1935}
!1938 = !DILocation(line: 542, column: 5, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1940, file: !1, discriminator: 1)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !1, line: 542, column: 5)
!1941 = distinct !{!1941, !1942}
!1942 = !DILocation(line: 542, column: 5, scope: !1940)
!1943 = !DILocation(line: 542, column: 5, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1945, file: !1, discriminator: 2)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 542, column: 5)
!1946 = !DILocation(line: 542, column: 5, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1940, file: !1, discriminator: 3)
!1948 = !DILocation(line: 543, column: 3, scope: !1936)
!1949 = !DILocation(line: 544, column: 11, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 544, column: 11)
!1951 = !DILocation(line: 544, column: 15, scope: !1950)
!1952 = !DILocation(line: 544, column: 13, scope: !1950)
!1953 = !DILocation(line: 544, column: 19, scope: !1950)
!1954 = !DILocation(line: 544, column: 11, scope: !1930)
!1955 = !DILocation(line: 545, column: 5, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1950, file: !1, line: 544, column: 38)
!1957 = distinct !{!1957, !1955}
!1958 = !DILocation(line: 545, column: 5, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1960, file: !1, discriminator: 1)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !1, line: 545, column: 5)
!1961 = distinct !{!1961, !1962}
!1962 = !DILocation(line: 545, column: 5, scope: !1960)
!1963 = !DILocation(line: 545, column: 5, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1965, file: !1, discriminator: 2)
!1965 = distinct !DILexicalBlock(scope: !1960, file: !1, line: 545, column: 5)
!1966 = !DILocation(line: 545, column: 5, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1960, file: !1, discriminator: 3)
!1968 = !DILocation(line: 546, column: 3, scope: !1956)
!1969 = !DILocalVariable(name: "ex", scope: !1970, file: !1, line: 548, type: !50)
!1970 = distinct !DILexicalBlock(scope: !1950, file: !1, line: 547, column: 8)
!1971 = !DILocation(line: 548, column: 18, scope: !1970)
!1972 = !DILocation(line: 548, column: 28, scope: !1970)
!1973 = !DILocation(line: 548, column: 24, scope: !1970)
!1974 = !DILocalVariable(name: "edx", scope: !1970, file: !1, line: 549, type: !50)
!1975 = !DILocation(line: 549, column: 18, scope: !1970)
!1976 = !DILocation(line: 549, column: 28, scope: !1970)
!1977 = !DILocation(line: 549, column: 24, scope: !1970)
!1978 = !DILocation(line: 550, column: 20, scope: !1970)
!1979 = !DILocation(line: 550, column: 5, scope: !1970)
!1980 = !DILocation(line: 550, column: 13, scope: !1970)
!1981 = !DILocation(line: 550, column: 18, scope: !1970)
!1982 = !DILocation(line: 551, column: 20, scope: !1970)
!1983 = !DILocation(line: 551, column: 54, scope: !1970)
!1984 = !DILocation(line: 551, column: 64, scope: !1970)
!1985 = !DILocation(line: 551, column: 63, scope: !1970)
!1986 = !DILocation(line: 551, column: 58, scope: !1970)
!1987 = !DILocation(line: 551, column: 25, scope: !1970)
!1988 = !DILocation(line: 551, column: 23, scope: !1970)
!1989 = !DILocation(line: 551, column: 5, scope: !1970)
!1990 = !DILocation(line: 551, column: 13, scope: !1970)
!1991 = !DILocation(line: 551, column: 18, scope: !1970)
!1992 = !DILocation(line: 552, column: 49, scope: !1970)
!1993 = !DILocation(line: 552, column: 57, scope: !1970)
!1994 = !DILocation(line: 552, column: 44, scope: !1970)
!1995 = !DILocation(line: 552, column: 42, scope: !1970)
!1996 = !DILocation(line: 552, column: 5, scope: !1970)
!1997 = !DILocation(line: 552, column: 13, scope: !1970)
!1998 = !DILocation(line: 552, column: 17, scope: !1970)
!1999 = !DILocation(line: 553, column: 5, scope: !1970)
!2000 = !DILocation(line: 555, column: 1, scope: !1918)
!2001 = distinct !DISubprogram(name: "gsl_sf_exp_err_e10_e", scope: !1, file: !1, line: 559, type: !393, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2002 = !DILocalVariable(name: "x", arg: 1, scope: !2001, file: !1, line: 559, type: !50)
!2003 = !DILocation(line: 559, column: 35, scope: !2001)
!2004 = !DILocalVariable(name: "dx", arg: 2, scope: !2001, file: !1, line: 559, type: !50)
!2005 = !DILocation(line: 559, column: 51, scope: !2001)
!2006 = !DILocalVariable(name: "result", arg: 3, scope: !2001, file: !1, line: 559, type: !119)
!2007 = !DILocation(line: 559, column: 75, scope: !2001)
!2008 = !DILocalVariable(name: "adx", scope: !2001, file: !1, line: 561, type: !50)
!2009 = !DILocation(line: 561, column: 16, scope: !2001)
!2010 = !DILocation(line: 561, column: 27, scope: !2001)
!2011 = !DILocation(line: 561, column: 22, scope: !2001)
!2012 = !DILocation(line: 565, column: 6, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2001, file: !1, line: 565, column: 6)
!2014 = !DILocation(line: 565, column: 10, scope: !2013)
!2015 = !DILocation(line: 565, column: 8, scope: !2013)
!2016 = !DILocation(line: 565, column: 14, scope: !2013)
!2017 = !DILocation(line: 565, column: 6, scope: !2001)
!2018 = !DILocation(line: 566, column: 5, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2013, file: !1, line: 565, column: 29)
!2020 = distinct !{!2020, !2018}
!2021 = !DILocation(line: 566, column: 5, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2023, file: !1, discriminator: 1)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !1, line: 566, column: 5)
!2024 = distinct !{!2024, !2025}
!2025 = !DILocation(line: 566, column: 5, scope: !2023)
!2026 = !DILocation(line: 566, column: 5, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2028, file: !1, discriminator: 2)
!2028 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 566, column: 5)
!2029 = !DILocation(line: 566, column: 5, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2023, file: !1, discriminator: 3)
!2031 = !DILocation(line: 567, column: 3, scope: !2019)
!2032 = !DILocation(line: 568, column: 11, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2013, file: !1, line: 568, column: 11)
!2034 = !DILocation(line: 568, column: 15, scope: !2033)
!2035 = !DILocation(line: 568, column: 13, scope: !2033)
!2036 = !DILocation(line: 568, column: 19, scope: !2033)
!2037 = !DILocation(line: 568, column: 11, scope: !2013)
!2038 = !DILocation(line: 569, column: 5, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 568, column: 34)
!2040 = distinct !{!2040, !2038}
!2041 = !DILocation(line: 569, column: 5, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2043, file: !1, discriminator: 1)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 569, column: 5)
!2044 = distinct !{!2044, !2045}
!2045 = !DILocation(line: 569, column: 5, scope: !2043)
!2046 = !DILocation(line: 569, column: 5, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2048, file: !1, discriminator: 2)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 569, column: 5)
!2049 = !DILocation(line: 569, column: 5, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2043, file: !1, discriminator: 3)
!2051 = !DILocation(line: 570, column: 3, scope: !2039)
!2052 = !DILocalVariable(name: "N", scope: !2053, file: !1, line: 572, type: !168)
!2053 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 571, column: 8)
!2054 = !DILocation(line: 572, column: 18, scope: !2053)
!2055 = !DILocation(line: 572, column: 34, scope: !2053)
!2056 = !DILocation(line: 572, column: 35, scope: !2053)
!2057 = !DILocation(line: 572, column: 28, scope: !2053)
!2058 = !DILocation(line: 572, column: 23, scope: !2053)
!2059 = !DILocalVariable(name: "ex", scope: !2053, file: !1, line: 573, type: !50)
!2060 = !DILocation(line: 573, column: 18, scope: !2053)
!2061 = !DILocation(line: 573, column: 27, scope: !2053)
!2062 = !DILocation(line: 573, column: 29, scope: !2053)
!2063 = !DILocation(line: 573, column: 30, scope: !2053)
!2064 = !DILocation(line: 573, column: 28, scope: !2053)
!2065 = !DILocation(line: 573, column: 23, scope: !2053)
!2066 = !DILocation(line: 574, column: 19, scope: !2053)
!2067 = !DILocation(line: 574, column: 5, scope: !2053)
!2068 = !DILocation(line: 574, column: 13, scope: !2053)
!2069 = !DILocation(line: 574, column: 17, scope: !2053)
!2070 = !DILocation(line: 575, column: 19, scope: !2053)
!2071 = !DILocation(line: 575, column: 55, scope: !2053)
!2072 = !DILocation(line: 575, column: 50, scope: !2053)
!2073 = !DILocation(line: 575, column: 58, scope: !2053)
!2074 = !DILocation(line: 575, column: 47, scope: !2053)
!2075 = !DILocation(line: 575, column: 67, scope: !2053)
!2076 = !DILocation(line: 575, column: 65, scope: !2053)
!2077 = !DILocation(line: 575, column: 22, scope: !2053)
!2078 = !DILocation(line: 575, column: 5, scope: !2053)
!2079 = !DILocation(line: 575, column: 13, scope: !2053)
!2080 = !DILocation(line: 575, column: 17, scope: !2053)
!2081 = !DILocation(line: 576, column: 19, scope: !2053)
!2082 = !DILocation(line: 576, column: 5, scope: !2053)
!2083 = !DILocation(line: 576, column: 13, scope: !2053)
!2084 = !DILocation(line: 576, column: 17, scope: !2053)
!2085 = !DILocation(line: 577, column: 5, scope: !2053)
!2086 = !DILocation(line: 579, column: 1, scope: !2001)
!2087 = distinct !DISubprogram(name: "gsl_sf_exp", scope: !1, file: !1, line: 586, type: !2088, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!51, !50}
!2090 = !DILocalVariable(name: "x", arg: 1, scope: !2087, file: !1, line: 586, type: !50)
!2091 = !DILocation(line: 586, column: 32, scope: !2087)
!2092 = !DILocalVariable(name: "result", scope: !2087, file: !1, line: 588, type: !53)
!2093 = !DILocation(line: 588, column: 3, scope: !2087)
!2094 = !DILocalVariable(name: "status", scope: !2087, file: !1, line: 588, type: !42)
!2095 = !DILocation(line: 588, column: 3, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2087, file: !1, line: 588, column: 3)
!2097 = !DILocation(line: 588, column: 3, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2099, file: !1, discriminator: 1)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !1, line: 588, column: 3)
!2100 = distinct !{!2100, !2101}
!2101 = !DILocation(line: 588, column: 3, scope: !2099)
!2102 = !DILocation(line: 588, column: 3, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2104, file: !1, discriminator: 2)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !1, line: 588, column: 3)
!2105 = !DILocation(line: 588, column: 3, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2099, file: !1, discriminator: 3)
!2107 = !DILocation(line: 588, column: 3, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2087, file: !1, discriminator: 4)
!2109 = !DILocation(line: 589, column: 1, scope: !2087)
!2110 = distinct !DISubprogram(name: "gsl_sf_exp_mult", scope: !1, file: !1, line: 591, type: !2111, isLocal: false, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!51, !50, !50}
!2113 = !DILocalVariable(name: "x", arg: 1, scope: !2110, file: !1, line: 591, type: !50)
!2114 = !DILocation(line: 591, column: 37, scope: !2110)
!2115 = !DILocalVariable(name: "y", arg: 2, scope: !2110, file: !1, line: 591, type: !50)
!2116 = !DILocation(line: 591, column: 53, scope: !2110)
!2117 = !DILocalVariable(name: "result", scope: !2110, file: !1, line: 593, type: !53)
!2118 = !DILocation(line: 593, column: 3, scope: !2110)
!2119 = !DILocalVariable(name: "status", scope: !2110, file: !1, line: 593, type: !42)
!2120 = !DILocation(line: 593, column: 3, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2110, file: !1, line: 593, column: 3)
!2122 = !DILocation(line: 593, column: 3, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 1)
!2124 = distinct !DILexicalBlock(scope: !2121, file: !1, line: 593, column: 3)
!2125 = distinct !{!2125, !2126}
!2126 = !DILocation(line: 593, column: 3, scope: !2124)
!2127 = !DILocation(line: 593, column: 3, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2129, file: !1, discriminator: 2)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !1, line: 593, column: 3)
!2130 = !DILocation(line: 593, column: 3, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 3)
!2132 = !DILocation(line: 593, column: 3, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2110, file: !1, discriminator: 4)
!2134 = !DILocation(line: 594, column: 1, scope: !2110)
!2135 = distinct !DISubprogram(name: "gsl_sf_expm1", scope: !1, file: !1, line: 596, type: !2088, isLocal: false, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2136 = !DILocalVariable(name: "x", arg: 1, scope: !2135, file: !1, line: 596, type: !50)
!2137 = !DILocation(line: 596, column: 34, scope: !2135)
!2138 = !DILocalVariable(name: "result", scope: !2135, file: !1, line: 598, type: !53)
!2139 = !DILocation(line: 598, column: 3, scope: !2135)
!2140 = !DILocalVariable(name: "status", scope: !2135, file: !1, line: 598, type: !42)
!2141 = !DILocation(line: 598, column: 3, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2135, file: !1, line: 598, column: 3)
!2143 = !DILocation(line: 598, column: 3, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2145, file: !1, discriminator: 1)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !1, line: 598, column: 3)
!2146 = distinct !{!2146, !2147}
!2147 = !DILocation(line: 598, column: 3, scope: !2145)
!2148 = !DILocation(line: 598, column: 3, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2150, file: !1, discriminator: 2)
!2150 = distinct !DILexicalBlock(scope: !2145, file: !1, line: 598, column: 3)
!2151 = !DILocation(line: 598, column: 3, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2145, file: !1, discriminator: 3)
!2153 = !DILocation(line: 598, column: 3, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2135, file: !1, discriminator: 4)
!2155 = !DILocation(line: 599, column: 1, scope: !2135)
!2156 = distinct !DISubprogram(name: "gsl_sf_exprel", scope: !1, file: !1, line: 601, type: !2088, isLocal: false, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2157 = !DILocalVariable(name: "x", arg: 1, scope: !2156, file: !1, line: 601, type: !50)
!2158 = !DILocation(line: 601, column: 35, scope: !2156)
!2159 = !DILocalVariable(name: "result", scope: !2156, file: !1, line: 603, type: !53)
!2160 = !DILocation(line: 603, column: 3, scope: !2156)
!2161 = !DILocalVariable(name: "status", scope: !2156, file: !1, line: 603, type: !42)
!2162 = !DILocation(line: 603, column: 3, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2156, file: !1, line: 603, column: 3)
!2164 = !DILocation(line: 603, column: 3, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2166, file: !1, discriminator: 1)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !1, line: 603, column: 3)
!2167 = distinct !{!2167, !2168}
!2168 = !DILocation(line: 603, column: 3, scope: !2166)
!2169 = !DILocation(line: 603, column: 3, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2171, file: !1, discriminator: 2)
!2171 = distinct !DILexicalBlock(scope: !2166, file: !1, line: 603, column: 3)
!2172 = !DILocation(line: 603, column: 3, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2166, file: !1, discriminator: 3)
!2174 = !DILocation(line: 603, column: 3, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2156, file: !1, discriminator: 4)
!2176 = !DILocation(line: 604, column: 1, scope: !2156)
!2177 = distinct !DISubprogram(name: "gsl_sf_exprel_2", scope: !1, file: !1, line: 606, type: !2088, isLocal: false, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2178 = !DILocalVariable(name: "x", arg: 1, scope: !2177, file: !1, line: 606, type: !50)
!2179 = !DILocation(line: 606, column: 37, scope: !2177)
!2180 = !DILocalVariable(name: "result", scope: !2177, file: !1, line: 608, type: !53)
!2181 = !DILocation(line: 608, column: 3, scope: !2177)
!2182 = !DILocalVariable(name: "status", scope: !2177, file: !1, line: 608, type: !42)
!2183 = !DILocation(line: 608, column: 3, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 608, column: 3)
!2185 = !DILocation(line: 608, column: 3, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2187, file: !1, discriminator: 1)
!2187 = distinct !DILexicalBlock(scope: !2184, file: !1, line: 608, column: 3)
!2188 = distinct !{!2188, !2189}
!2189 = !DILocation(line: 608, column: 3, scope: !2187)
!2190 = !DILocation(line: 608, column: 3, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !1, discriminator: 2)
!2192 = distinct !DILexicalBlock(scope: !2187, file: !1, line: 608, column: 3)
!2193 = !DILocation(line: 608, column: 3, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2187, file: !1, discriminator: 3)
!2195 = !DILocation(line: 608, column: 3, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2177, file: !1, discriminator: 4)
!2197 = !DILocation(line: 609, column: 1, scope: !2177)
!2198 = distinct !DISubprogram(name: "gsl_sf_exprel_n", scope: !1, file: !1, line: 611, type: !2199, isLocal: false, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!51, !168, !50}
!2201 = !DILocalVariable(name: "n", arg: 1, scope: !2198, file: !1, line: 611, type: !168)
!2202 = !DILocation(line: 611, column: 34, scope: !2198)
!2203 = !DILocalVariable(name: "x", arg: 2, scope: !2198, file: !1, line: 611, type: !50)
!2204 = !DILocation(line: 611, column: 50, scope: !2198)
!2205 = !DILocalVariable(name: "result", scope: !2198, file: !1, line: 613, type: !53)
!2206 = !DILocation(line: 613, column: 3, scope: !2198)
!2207 = !DILocalVariable(name: "status", scope: !2198, file: !1, line: 613, type: !42)
!2208 = !DILocation(line: 613, column: 3, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 613, column: 3)
!2210 = !DILocation(line: 613, column: 3, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2212, file: !1, discriminator: 1)
!2212 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 613, column: 3)
!2213 = distinct !{!2213, !2214}
!2214 = !DILocation(line: 613, column: 3, scope: !2212)
!2215 = !DILocation(line: 613, column: 3, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2217, file: !1, discriminator: 2)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !1, line: 613, column: 3)
!2218 = !DILocation(line: 613, column: 3, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2212, file: !1, discriminator: 3)
!2220 = !DILocation(line: 613, column: 3, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !2198, file: !1, discriminator: 4)
!2222 = !DILocation(line: 614, column: 1, scope: !2198)
