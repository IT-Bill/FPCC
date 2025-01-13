; ModuleID = 'coulomb.ll'
source_filename = "coulomb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"coulomb.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@0 = private unnamed_addr constant [20 x i8] c"gsl_sf_coulomb_CL_e\00"
@1 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@2 = private unnamed_addr constant [5 x i8] c"C0sq\00"
@3 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@4 = private unnamed_addr constant [6 x i8] c"CLeta\00"
@5 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@6 = private unnamed_addr constant [24 x i8] c"gsl_sf_coulomb_CL_array\00"
@7 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@8 = private unnamed_addr constant [25 x i8] c"gsl_sf_coulomb_wave_FG_e\00"
@9 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@10 = private unnamed_addr constant [12 x i8] c"coulomb_CF1\00"
@11 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@12 = private unnamed_addr constant [16 x i8] c"coulomb_F_recur\00"
@13 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@14 = private unnamed_addr constant [23 x i8] c"coulomb_FGmhalf_series\00"
@15 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@16 = private unnamed_addr constant [19 x i8] c"coulomb_FG0_series\00"
@17 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@18 = private unnamed_addr constant [18 x i8] c"coulomb_FG_series\00"
@19 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@20 = private unnamed_addr constant [16 x i8] c"coulomb_G_recur\00"
@21 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@22 = private unnamed_addr constant [13 x i8] c"coulomb_jwkb\00"
@23 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@24 = private unnamed_addr constant [12 x i8] c"coulomb_CF2\00"
@25 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@26 = private unnamed_addr constant [28 x i8] c"gsl_sf_coulomb_wave_F_array\00"
@27 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@28 = private unnamed_addr constant [29 x i8] c"gsl_sf_coulomb_wave_FG_array\00"
@29 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@30 = private unnamed_addr constant [30 x i8] c"gsl_sf_coulomb_wave_FGp_array\00"
@31 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@32 = private unnamed_addr constant [31 x i8] c"gsl_sf_coulomb_wave_sphF_array\00"
@33 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"
@34 = private unnamed_addr constant [19 x i8] c"coulomb_connection\00"
@35 = private unnamed_addr constant [11 x i8] c"coulomb.ll\00"

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
  %10 = call i1 @fCmpInstHandler(double %8, double -1.000000e+00, i1 %9, i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 93937688546112, i32 109, i32 10), !dbg !69
  br i1 %10, label %11, label %20, !dbg !69

; <label>:11:                                     ; preds = %3
  br label %12, !dbg !70, !llvm.loop !72

; <label>:12:                                     ; preds = %11
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !73
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !73
  store double 0x7FF8000000000000, double* %14, align 8, !dbg !73
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !73
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !73
  store double 0x7FF8000000000000, double* %16, align 8, !dbg !73
  br label %17, !dbg !73, !llvm.loop !76

; <label>:17:                                     ; preds = %12
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 1), !dbg !78
  store i32 1, i32* %4, align 4, !dbg !78
  br label %42, !dbg !78
                                                  ; No predecessors!
  br label %19, !dbg !81

; <label>:19:                                     ; preds = %18
  br label %42, !dbg !83

; <label>:20:                                     ; preds = %3
  %21 = load double, double* %5, align 8, !dbg !84
  %22 = call double @fabs(double %21) #1, !dbg !86
  %23 = fcmp olt double %22, 0x3CB0000000000000, !dbg !87
  %24 = call i1 @fCmpInstHandler(double %22, double 0x3CB0000000000000, i1 %23, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 93937688560816, i32 112, i32 21), !dbg !88
  br i1 %24, label %25, label %37, !dbg !88

; <label>:25:                                     ; preds = %20
  %26 = load double, double* %6, align 8, !dbg !89
  %27 = call double @C0sq(double %26), !dbg !91
  %28 = call double @sqrt(double %27) #6, !dbg !92
  call void @callOneArgHandler(i32 14, double %27, double %28, i64 93937688562624, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 93937688563520, i32 114, i32 19), !dbg !94
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !94
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !95
  store double %28, double* %30, align 8, !dbg !96
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !97
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !98
  %33 = load double, double* %32, align 8, !dbg !98
  %34 = fmul double 0x3CC0000000000000, %33, !dbg !99
  call void @fMulHandler(double 0x3CC0000000000000, double %33, double %34, i64 0, i64 93937688566088, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 93937688567824, i32 115, i32 41), !dbg !100
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !100
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !101
  store double %34, double* %36, align 8, !dbg !102
  store i32 0, i32* %4, align 4, !dbg !103
  br label %42, !dbg !103

; <label>:37:                                     ; preds = %20
  %38 = load double, double* %5, align 8, !dbg !104
  %39 = load double, double* %6, align 8, !dbg !106
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !107
  %41 = call i32 @CLeta(double %38, double %39, %struct.gsl_sf_result_struct* %40), !dbg !108
  store i32 %41, i32* %4, align 4, !dbg !109
  br label %42, !dbg !109

; <label>:42:                                     ; preds = %37, %25, %19, %17
  %43 = load i32, i32* %4, align 4, !dbg !110
  ret i32 %43, !dbg !110
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
  call void @fMulHandler(double 0x401921FB54442D18, double %6, double %7, i64 0, i64 93937688562504, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 93937688582928, i32 52, i32 29), !dbg !117
  store double %7, double* %4, align 8, !dbg !117
  %8 = load double, double* %3, align 8, !dbg !120
  %9 = call double @fabs(double %8) #1, !dbg !122
  %10 = fcmp olt double %9, 0x3CB0000000000000, !dbg !123
  %11 = call i1 @fCmpInstHandler(double %9, double 0x3CB0000000000000, i1 %10, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 93937688585920, i32 54, i32 16), !dbg !124
  br i1 %11, label %12, label %13, !dbg !124

; <label>:12:                                     ; preds = %1
  store double 1.000000e+00, double* %2, align 8, !dbg !125
  br label %25, !dbg !125

; <label>:13:                                     ; preds = %1
  %14 = load double, double* %4, align 8, !dbg !127
  %15 = fcmp ogt double %14, 0x40862E42FEFA39EF, !dbg !129
  %16 = call i1 @fCmpInstHandler(double %14, double 0x40862E42FEFA39EF, i1 %15, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 93937688589456, i32 57, i32 20), !dbg !130
  br i1 %16, label %17, label %18, !dbg !130

; <label>:17:                                     ; preds = %13
  store double 0.000000e+00, double* %2, align 8, !dbg !131
  br label %25, !dbg !131

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %5, metadata !133, metadata !60), !dbg !135
  %19 = load double, double* %4, align 8, !dbg !136
  %20 = call i32 @gsl_sf_expm1_e(double %19, %struct.gsl_sf_result_struct* %5), !dbg !137
  %21 = load double, double* %4, align 8, !dbg !138
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %5, i32 0, i32 0, !dbg !139
  %23 = load double, double* %22, align 8, !dbg !139
  %24 = fdiv double %21, %23, !dbg !140
  call void @fDivHandler(double %21, double %23, double %24, i64 93937688595048, i64 93937688595848, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 93937688597520, i32 63, i32 20), !dbg !141
  store double %24, double* %2, align 8, !dbg !141
  br label %25, !dbg !141

; <label>:25:                                     ; preds = %18, %17, %12
  %26 = load double, double* %2, align 8, !dbg !142
  ret double %26, !dbg !142
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
  call void @fAddHandler(double %14, double 1.000000e+00, double %15, i64 93937688614920, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688615360, i32 86, i32 17), !dbg !164
  %16 = fdiv double %13, %15, !dbg !164
  call void @fDivHandler(double %13, double %15, double %16, i64 93937688573432, i64 93937688615360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688615744, i32 86, i32 14), !dbg !165
  %17 = call double @fabs(double %16) #1, !dbg !165
  %18 = fcmp olt double %17, 0x3CB0000000000000, !dbg !166
  %19 = call i1 @fCmpInstHandler(double %17, double 0x3CB0000000000000, i1 %18, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688616560, i32 86, i32 24), !dbg !167
  br i1 %19, label %20, label %24, !dbg !167

; <label>:20:                                     ; preds = %3
  %21 = load double, double* %4, align 8, !dbg !168
  %22 = fadd double %21, 1.000000e+00, !dbg !170
  call void @fAddHandler(double %21, double 1.000000e+00, double %22, i64 93937688617672, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688618048, i32 87, i32 23), !dbg !171
  %23 = call i32 @gsl_sf_lngamma_e(double %22, %struct.gsl_sf_result_struct* %7), !dbg !171
  br label %29, !dbg !172

; <label>:24:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !173, metadata !60), !dbg !175
  %25 = load double, double* %4, align 8, !dbg !176
  %26 = fadd double %25, 1.000000e+00, !dbg !177
  call void @fAddHandler(double %25, double 1.000000e+00, double %26, i64 93937688620920, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688621328, i32 91, i32 31), !dbg !178
  %27 = load double, double* %5, align 8, !dbg !178
  %28 = call i32 @gsl_sf_lngamma_complex_e(double %26, double %27, %struct.gsl_sf_result_struct* %7, %struct.gsl_sf_result_struct* %12), !dbg !179
  br label %29

; <label>:29:                                     ; preds = %24, %20
  %30 = load double, double* %4, align 8, !dbg !180
  %31 = fadd double %30, 1.000000e+00, !dbg !181
  call void @fAddHandler(double %30, double 1.000000e+00, double %31, i64 93937688623160, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688623504, i32 94, i32 26), !dbg !182
  %32 = fmul double 2.000000e+00, %31, !dbg !182
  call void @fMulHandler(double 2.000000e+00, double %31, double %32, i64 0, i64 93937688623504, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688623984, i32 94, i32 23), !dbg !183
  %33 = call i32 @gsl_sf_lngamma_e(double %32, %struct.gsl_sf_result_struct* %8), !dbg !183
  %34 = load double, double* %4, align 8, !dbg !184
  %35 = fcmp olt double %34, -1.000000e+00, !dbg !186
  %36 = call i1 @fCmpInstHandler(double %34, double -1.000000e+00, i1 %35, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688625312, i32 95, i32 8), !dbg !187
  br i1 %36, label %37, label %40, !dbg !187

; <label>:37:                                     ; preds = %29
  %38 = load double, double* %9, align 8, !dbg !188
  %39 = fsub double -0.000000e+00, %38, !dbg !190
  call void @fSubHandler(double -0.000000e+00, double %38, double %39, i64 0, i64 93937688626392, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688626800, i32 95, i32 22), !dbg !191
  store double %39, double* %9, align 8, !dbg !191
  br label %40, !dbg !192

; <label>:40:                                     ; preds = %37, %29
  %41 = load double, double* %4, align 8, !dbg !193
  %42 = fmul double %41, 0x3FE62E42FEFA39EF, !dbg !194
  call void @fMulHandler(double %41, double 0x3FE62E42FEFA39EF, double %42, i64 93937688627992, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688628400, i32 97, i32 15), !dbg !195
  %43 = load double, double* %5, align 8, !dbg !195
  %44 = fmul double 5.000000e-01, %43, !dbg !196
  call void @fMulHandler(double 5.000000e-01, double %43, double %44, i64 0, i64 93937688628792, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688629296, i32 97, i32 27), !dbg !197
  %45 = fmul double %44, 0x400921FB54442D18, !dbg !197
  call void @fMulHandler(double %44, double 0x400921FB54442D18, double %45, i64 93937688629296, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688629744, i32 97, i32 31), !dbg !198
  %46 = fsub double %42, %45, !dbg !198
  call void @fSubHandler(double %42, double %45, double %46, i64 93937688628400, i64 93937688629744, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688630160, i32 97, i32 22), !dbg !199
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !199
  %48 = load double, double* %47, align 8, !dbg !199
  %49 = fadd double %46, %48, !dbg !200
  call void @fAddHandler(double %46, double %48, double %49, i64 93937688630160, i64 93937688631000, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688632672, i32 97, i32 37), !dbg !201
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !201
  %51 = load double, double* %50, align 8, !dbg !201
  %52 = fsub double %49, %51, !dbg !202
  call void @fSubHandler(double %49, double %51, double %52, i64 93937688632672, i64 93937688633512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688635184, i32 97, i32 47), !dbg !203
  store double %52, double* %10, align 8, !dbg !203
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !204
  %54 = load double, double* %53, align 8, !dbg !204
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !205
  %56 = load double, double* %55, align 8, !dbg !205
  %57 = fadd double %54, %56, !dbg !206
  call void @fAddHandler(double %54, double %56, double %57, i64 93937688636440, i64 93937688638536, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688640208, i32 98, i32 22), !dbg !207
  store double %57, double* %11, align 8, !dbg !207
  %58 = load double, double* %4, align 8, !dbg !208
  %59 = fmul double %58, 0x3FE62E42FEFA39EF, !dbg !209
  call void @fMulHandler(double %58, double 0x3FE62E42FEFA39EF, double %59, i64 93937688641016, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688641424, i32 99, i32 39), !dbg !210
  %60 = call double @fabs(double %59) #1, !dbg !210
  %61 = load double, double* %5, align 8, !dbg !211
  %62 = fmul double 5.000000e-01, %61, !dbg !212
  call void @fMulHandler(double 5.000000e-01, double %61, double %62, i64 0, i64 93937688642360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688642800, i32 99, i32 57), !dbg !213
  %63 = fmul double %62, 0x400921FB54442D18, !dbg !213
  call void @fMulHandler(double %62, double 0x400921FB54442D18, double %63, i64 93937688642800, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688643184, i32 99, i32 61), !dbg !214
  %64 = call double @fabs(double %63) #1, !dbg !214
  %65 = fadd double %60, %64, !dbg !216
  call void @fAddHandler(double %60, double %64, double %65, i64 93937688641904, i64 93937688643664, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688644144, i32 99, i32 47), !dbg !217
  %66 = fmul double 0x3CB0000000000000, %65, !dbg !217
  call void @fMulHandler(double 0x3CB0000000000000, double %65, double %66, i64 0, i64 93937688644144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688644560, i32 99, i32 30), !dbg !218
  %67 = load double, double* %11, align 8, !dbg !218
  %68 = fadd double %67, %66, !dbg !218
  call void @fAddHandler(double %67, double %66, double %68, i64 93937688645992, i64 93937688644560, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 93937688646400, i32 99, i32 11), !dbg !218
  store double %68, double* %11, align 8, !dbg !218
  %69 = load double, double* %10, align 8, !dbg !219
  %70 = load double, double* %11, align 8, !dbg !220
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !221
  %72 = call i32 @gsl_sf_exp_err_e(double %69, double %70, %struct.gsl_sf_result_struct* %71), !dbg !222
  ret i32 %72, !dbg !223
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

; <label>:19:                                     ; preds = %51, %4
  %20 = load i32, i32* %9, align 4, !dbg !249
  %21 = load i32, i32* %6, align 4, !dbg !252
  %22 = icmp sle i32 %20, %21, !dbg !253
  %23 = sext i32 %20 to i64, !dbg !254
  %24 = sext i32 %21 to i64, !dbg !254
  %25 = call i1 @iCmpInstHandler(i64 %23, i64 %24, i1 %22, i32 41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @7, i32 0, i32 0), i64 93937688667216, i32 134, i32 13), !dbg !254
  br i1 %25, label %26, label %54, !dbg !254

; <label>:26:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata double* %11, metadata !255, metadata !60), !dbg !257
  %27 = load double, double* %5, align 8, !dbg !258
  %28 = load i32, i32* %9, align 4, !dbg !259
  %29 = sitofp i32 %28 to double, !dbg !259
  %30 = fadd double %27, %29, !dbg !260
  call void @fAddHandler(double %27, double %29, double %30, i64 93937688669384, i64 93937688670120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @7, i32 0, i32 0), i64 93937688671792, i32 135, i32 24), !dbg !257
  store double %30, double* %11, align 8, !dbg !257
  %31 = load i32, i32* %9, align 4, !dbg !261
  %32 = sub nsw i32 %31, 1, !dbg !262
  %33 = sext i32 %32 to i64, !dbg !263
  %34 = load double*, double** %8, align 8, !dbg !263
  %35 = getelementptr inbounds double, double* %34, i64 %33, !dbg !263
  %36 = load double, double* %35, align 8, !dbg !263
  %37 = load double, double* %11, align 8, !dbg !264
  %38 = load double, double* %7, align 8, !dbg !265
  %39 = call double @hypot(double %37, double %38) #6, !dbg !266
  %40 = fmul double %36, %39, !dbg !267
  call void @fMulHandler(double %36, double %39, double %40, i64 93937688676840, i64 93937688678120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @7, i32 0, i32 0), i64 93937688678592, i32 136, i32 21), !dbg !268
  %41 = load double, double* %11, align 8, !dbg !268
  %42 = load double, double* %11, align 8, !dbg !269
  %43 = fmul double 2.000000e+00, %42, !dbg !270
  call void @fMulHandler(double 2.000000e+00, double %42, double %43, i64 0, i64 93937688679368, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @7, i32 0, i32 0), i64 93937688679808, i32 136, i32 44), !dbg !271
  %44 = fadd double %43, 1.000000e+00, !dbg !271
  call void @fAddHandler(double %43, double 1.000000e+00, double %44, i64 93937688679808, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @7, i32 0, i32 0), i64 93937688680224, i32 136, i32 46), !dbg !272
  %45 = fmul double %41, %44, !dbg !272
  call void @fMulHandler(double %41, double %44, double %45, i64 93937688678984, i64 93937688680224, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @7, i32 0, i32 0), i64 93937688680608, i32 136, i32 39), !dbg !273
  %46 = fdiv double %40, %45, !dbg !273
  call void @fDivHandler(double %40, double %45, double %46, i64 93937688678592, i64 93937688680608, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @7, i32 0, i32 0), i64 93937688681024, i32 136, i32 36), !dbg !274
  %47 = load i32, i32* %9, align 4, !dbg !274
  %48 = sext i32 %47 to i64, !dbg !275
  %49 = load double*, double** %8, align 8, !dbg !275
  %50 = getelementptr inbounds double, double* %49, i64 %48, !dbg !275
  store double %46, double* %50, align 8, !dbg !276
  br label %51, !dbg !277

; <label>:51:                                     ; preds = %26
  %52 = load i32, i32* %9, align 4, !dbg !278
  %53 = add nsw i32 %52, 1, !dbg !278
  store i32 %53, i32* %9, align 4, !dbg !278
  br label %19, !dbg !280, !llvm.loop !281

; <label>:54:                                     ; preds = %19
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
  call void @fSubHandler(double %99, double %101, double %102, i64 93937688677976, i64 93937688716488, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688718160, i32 903, i32 30), !dbg !310
  store double %102, double* %22, align 8, !dbg !310
  %103 = load double, double* %13, align 8, !dbg !314
  %104 = fcmp olt double %103, 0.000000e+00, !dbg !316
  %105 = call i1 @fCmpInstHandler(double %103, double 0.000000e+00, i1 %104, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688720640, i32 905, i32 8), !dbg !317
  br i1 %105, label %114, label %106, !dbg !317

; <label>:106:                                    ; preds = %10
  %107 = load double, double* %14, align 8, !dbg !318
  %108 = fcmp ole double %107, -5.000000e-01, !dbg !320
  %109 = call i1 @fCmpInstHandler(double %107, double -5.000000e-01, i1 %108, i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688722192, i32 905, i32 23), !dbg !321
  br i1 %109, label %114, label %110, !dbg !321

; <label>:110:                                    ; preds = %106
  %111 = load double, double* %22, align 8, !dbg !322
  %112 = fcmp ole double %111, -5.000000e-01, !dbg !324
  %113 = call i1 @fCmpInstHandler(double %111, double -5.000000e-01, i1 %112, i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688723504, i32 905, i32 40), !dbg !325
  br i1 %113, label %114, label %143, !dbg !325

; <label>:114:                                    ; preds = %110, %106, %10
  br label %115, !dbg !326, !llvm.loop !328

; <label>:115:                                    ; preds = %114
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !329
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !329
  store double 0.000000e+00, double* %117, align 8, !dbg !329
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !329
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !329
  store double 0.000000e+00, double* %119, align 8, !dbg !329
  br label %120, !dbg !329

; <label>:120:                                    ; preds = %115
  br label %121, !dbg !332, !llvm.loop !333

; <label>:121:                                    ; preds = %120
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !334
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !334
  store double 0.000000e+00, double* %123, align 8, !dbg !334
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !334
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 1, !dbg !334
  store double 0.000000e+00, double* %125, align 8, !dbg !334
  br label %126, !dbg !334

; <label>:126:                                    ; preds = %121
  br label %127, !dbg !337, !llvm.loop !338

; <label>:127:                                    ; preds = %126
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !339
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !339
  store double 0.000000e+00, double* %129, align 8, !dbg !339
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !339
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !339
  store double 0.000000e+00, double* %131, align 8, !dbg !339
  br label %132, !dbg !339

; <label>:132:                                    ; preds = %127
  br label %133, !dbg !342, !llvm.loop !343

; <label>:133:                                    ; preds = %132
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !344
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 0, !dbg !344
  store double 0.000000e+00, double* %135, align 8, !dbg !344
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !344
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 1, !dbg !344
  store double 0.000000e+00, double* %137, align 8, !dbg !344
  br label %138, !dbg !344

; <label>:138:                                    ; preds = %133
  %139 = load double*, double** %20, align 8, !dbg !347
  store double 0.000000e+00, double* %139, align 8, !dbg !348
  %140 = load double*, double** %21, align 8, !dbg !349
  store double 0.000000e+00, double* %140, align 8, !dbg !350
  br label %141, !dbg !351, !llvm.loop !352

; <label>:141:                                    ; preds = %138
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 912, i32 1), !dbg !353
  store i32 1, i32* %11, align 4, !dbg !353
  br label %950, !dbg !353
                                                  ; No predecessors!
  br label %950, !dbg !356

; <label>:143:                                    ; preds = %110
  %144 = load double, double* %13, align 8, !dbg !357
  %145 = fcmp oeq double %144, 0.000000e+00, !dbg !359
  %146 = call i1 @fCmpInstHandler(double %144, double 0.000000e+00, i1 %145, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688746304, i32 914, i32 13), !dbg !360
  br i1 %146, label %147, label %217, !dbg !360

; <label>:147:                                    ; preds = %143
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !361, metadata !60), !dbg !363
  %148 = load double, double* %12, align 8, !dbg !364
  %149 = call i32 @CLeta(double 0.000000e+00, double %148, %struct.gsl_sf_result_struct* %23), !dbg !365
  br label %150, !dbg !366, !llvm.loop !367

; <label>:150:                                    ; preds = %147
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !368
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 0, !dbg !368
  store double 0.000000e+00, double* %152, align 8, !dbg !368
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !368
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 1, !dbg !368
  store double 0.000000e+00, double* %154, align 8, !dbg !368
  br label %155, !dbg !368

; <label>:155:                                    ; preds = %150
  br label %156, !dbg !371, !llvm.loop !372

; <label>:156:                                    ; preds = %155
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !373
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 0, !dbg !373
  store double 0.000000e+00, double* %158, align 8, !dbg !373
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !373
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 1, !dbg !373
  store double 0.000000e+00, double* %160, align 8, !dbg !373
  br label %161, !dbg !373

; <label>:161:                                    ; preds = %156
  br label %162, !dbg !376, !llvm.loop !377

; <label>:162:                                    ; preds = %161
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !378
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 0, !dbg !378
  store double 0.000000e+00, double* %164, align 8, !dbg !378
  %165 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !378
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %165, i32 0, i32 1, !dbg !378
  store double 0.000000e+00, double* %166, align 8, !dbg !378
  br label %167, !dbg !378

; <label>:167:                                    ; preds = %162
  br label %168, !dbg !381, !llvm.loop !382

; <label>:168:                                    ; preds = %167
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !383
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 0, !dbg !383
  store double 0.000000e+00, double* %170, align 8, !dbg !383
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !383
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !383
  store double 0.000000e+00, double* %172, align 8, !dbg !383
  br label %173, !dbg !383

; <label>:173:                                    ; preds = %168
  %174 = load double*, double** %20, align 8, !dbg !386
  store double 0.000000e+00, double* %174, align 8, !dbg !387
  %175 = load double*, double** %21, align 8, !dbg !388
  store double 0.000000e+00, double* %175, align 8, !dbg !389
  %176 = load double, double* %14, align 8, !dbg !390
  %177 = fcmp oeq double %176, 0.000000e+00, !dbg !392
  %178 = call i1 @fCmpInstHandler(double %176, double 0.000000e+00, i1 %177, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688765536, i32 923, i32 14), !dbg !393
  br i1 %178, label %179, label %190, !dbg !393

; <label>:179:                                    ; preds = %173
  br label %180, !dbg !394, !llvm.loop !396

; <label>:180:                                    ; preds = %179
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !397
  %182 = load double, double* %181, align 8, !dbg !397
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !397
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %183, i32 0, i32 0, !dbg !397
  store double %182, double* %184, align 8, !dbg !397
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !397
  %186 = load double, double* %185, align 8, !dbg !397
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !397
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !397
  store double %186, double* %188, align 8, !dbg !397
  br label %189, !dbg !397

; <label>:189:                                    ; preds = %180
  br label %190, !dbg !400

; <label>:190:                                    ; preds = %189, %173
  %191 = load double, double* %22, align 8, !dbg !401
  %192 = fcmp oeq double %191, 0.000000e+00, !dbg !403
  %193 = call i1 @fCmpInstHandler(double %191, double 0.000000e+00, i1 %192, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688771360, i32 926, i32 14), !dbg !404
  br i1 %193, label %194, label %214, !dbg !404

; <label>:194:                                    ; preds = %190
  br label %195, !dbg !405, !llvm.loop !407

; <label>:195:                                    ; preds = %194
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !408
  %197 = load double, double* %196, align 8, !dbg !408
  %198 = fdiv double 1.000000e+00, %197, !dbg !408
  call void @fDivHandler(double 1.000000e+00, double %197, double %198, i64 0, i64 93937688773608, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688775312, i32 927, i32 7), !dbg !408
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !408
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 0, !dbg !408
  store double %198, double* %200, align 8, !dbg !408
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !408
  %202 = load double, double* %201, align 8, !dbg !408
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !408
  %204 = load double, double* %203, align 8, !dbg !408
  %205 = fdiv double %202, %204, !dbg !408
  call void @fDivHandler(double %202, double %204, double %205, i64 93937688775960, i64 93937688776216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688776336, i32 927, i32 7), !dbg !408
  %206 = call double @fabs(double %205) #1, !dbg !408
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !408
  %208 = load double, double* %207, align 8, !dbg !408
  %209 = call double @fabs(double %208) #1, !dbg !411
  %210 = fdiv double %206, %209, !dbg !408
  call void @fDivHandler(double %206, double %209, double %210, i64 93937688776496, i64 93937688777008, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688777488, i32 927, i32 7), !dbg !408
  %211 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !408
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %211, i32 0, i32 1, !dbg !408
  store double %210, double* %212, align 8, !dbg !408
  br label %213, !dbg !408

; <label>:213:                                    ; preds = %195
  br label %214, !dbg !413

; <label>:214:                                    ; preds = %213, %190
  br label %215, !dbg !414, !llvm.loop !415

; <label>:215:                                    ; preds = %214
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 929, i32 1), !dbg !416
  store i32 1, i32* %11, align 4, !dbg !416
  br label %950, !dbg !416
                                                  ; No predecessors!
  br label %949, !dbg !419

; <label>:217:                                    ; preds = %143
  %218 = load double, double* %13, align 8, !dbg !420
  %219 = fcmp olt double %218, 1.200000e+00, !dbg !422
  %220 = call i1 @fCmpInstHandler(double %218, double 1.200000e+00, i1 %219, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688782688, i32 932, i32 13), !dbg !423
  br i1 %220, label %221, label %560, !dbg !423

; <label>:221:                                    ; preds = %217
  %222 = load double, double* %12, align 8, !dbg !424
  %223 = fmul double 0x401921FB54442D18, %222, !dbg !426
  call void @fMulHandler(double 0x401921FB54442D18, double %222, double %223, i64 0, i64 93937688783768, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688784112, i32 932, i32 30), !dbg !427
  %224 = fcmp olt double %223, 0x4083EC744754DD24, !dbg !427
  %225 = call i1 @fCmpInstHandler(double %223, double 0x4083EC744754DD24, i1 %224, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688784592, i32 932, i32 35), !dbg !428
  br i1 %225, label %226, label %560, !dbg !428

; <label>:226:                                    ; preds = %221
  %227 = load double, double* %12, align 8, !dbg !429
  %228 = load double, double* %13, align 8, !dbg !431
  %229 = fmul double %227, %228, !dbg !432
  call void @fMulHandler(double %227, double %228, double %229, i64 93937688785560, i64 93937688785880, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688786288, i32 932, i32 71), !dbg !433
  %230 = call double @fabs(double %229) #1, !dbg !433
  %231 = fcmp olt double %230, 1.000000e+01, !dbg !434
  %232 = call i1 @fCmpInstHandler(double %230, double 1.000000e+01, i1 %231, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688787344, i32 932, i32 75), !dbg !435
  br i1 %232, label %233, label %560, !dbg !435

; <label>:233:                                    ; preds = %226
  call void @llvm.dbg.declare(metadata double* %24, metadata !436, metadata !60), !dbg !438
  store double 0x3E50000000000000, double* %24, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata i32* %25, metadata !439, metadata !60), !dbg !440
  %234 = load double, double* %14, align 8, !dbg !441
  %235 = fadd double %234, 5.000000e-01, !dbg !442
  call void @fAddHandler(double %234, double 5.000000e-01, double %235, i64 93937688792168, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688792576, i32 941, i32 34), !dbg !443
  %236 = fptosi double %235 to i32, !dbg !443
  store i32 %236, i32* %25, align 4, !dbg !440
  call void @llvm.dbg.declare(metadata i32* %26, metadata !444, metadata !60), !dbg !445
  %237 = load i32, i32* %15, align 4, !dbg !446
  %238 = load i32, i32* %25, align 4, !dbg !446
  %239 = icmp sgt i32 %237, %238, !dbg !446
  %240 = sext i32 %237 to i64, !dbg !446
  %241 = sext i32 %238 to i64, !dbg !446
  %242 = call i1 @iCmpInstHandler(i64 %240, i64 %241, i1 %239, i32 38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688798144, i32 942, i32 22), !dbg !446
  br i1 %242, label %243, label %245, !dbg !446

; <label>:243:                                    ; preds = %233
  %244 = load i32, i32* %15, align 4, !dbg !447
  br label %247, !dbg !447

; <label>:245:                                    ; preds = %233
  %246 = load i32, i32* %25, align 4, !dbg !449
  br label %247, !dbg !449

; <label>:247:                                    ; preds = %245, %243
  %248 = phi i32 [ %244, %243 ], [ %246, %245 ], !dbg !451
  store i32 %248, i32* %26, align 4, !dbg !453
  call void @llvm.dbg.declare(metadata double* %27, metadata !454, metadata !60), !dbg !455
  %249 = load double, double* %14, align 8, !dbg !456
  %250 = load i32, i32* %25, align 4, !dbg !457
  %251 = sitofp i32 %250 to double, !dbg !457
  %252 = fsub double %249, %251, !dbg !458
  call void @fSubHandler(double %249, double %251, double %252, i64 93937688804696, i64 93937688805432, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688807104, i32 943, i32 34), !dbg !455
  store double %252, double* %27, align 8, !dbg !455
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
  %253 = load double, double* %14, align 8, !dbg !499
  %254 = load double, double* %12, align 8, !dbg !500
  %255 = load double, double* %13, align 8, !dbg !501
  %256 = call i32 @coulomb_CF1(double %253, double %254, double %255, double* %35, double* %34, i32* %46), !dbg !502
  store i32 %256, i32* %47, align 4, !dbg !498
  call void @llvm.dbg.declare(metadata i32* %48, metadata !503, metadata !60), !dbg !504
  call void @llvm.dbg.declare(metadata i32* %49, metadata !505, metadata !60), !dbg !506
  call void @llvm.dbg.declare(metadata i32* %50, metadata !507, metadata !60), !dbg !508
  store double 0x3E50000000000000, double* %28, align 8, !dbg !509
  %257 = load double, double* %34, align 8, !dbg !510
  %258 = load double, double* %28, align 8, !dbg !511
  %259 = fmul double %257, %258, !dbg !512
  call void @fMulHandler(double %257, double %258, double %259, i64 93937688842552, i64 93937688842936, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688843344, i32 968, i32 32), !dbg !513
  store double %259, double* %29, align 8, !dbg !513
  %260 = load i32, i32* %26, align 4, !dbg !514
  %261 = icmp ne i32 %260, 0, !dbg !516
  %262 = sext i32 %260 to i64, !dbg !517
  %263 = call i1 @iCmpInstHandler(i64 %262, i64 0, i1 %261, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688844560, i32 969, i32 13), !dbg !517
  br i1 %263, label %264, label %272, !dbg !517

; <label>:264:                                    ; preds = %247
  %265 = load double, double* %27, align 8, !dbg !518
  %266 = load i32, i32* %26, align 4, !dbg !520
  %267 = load double, double* %12, align 8, !dbg !521
  %268 = load double, double* %13, align 8, !dbg !522
  %269 = load double, double* %28, align 8, !dbg !523
  %270 = load double, double* %29, align 8, !dbg !524
  %271 = call i32 @coulomb_F_recur(double %265, i32 %266, double %267, double %268, double %269, double %270, double* %36, double* %37), !dbg !525
  store i32 %271, i32* %49, align 4, !dbg !526
  br label %275, !dbg !527

; <label>:272:                                    ; preds = %247
  %273 = load double, double* %28, align 8, !dbg !528
  store double %273, double* %36, align 8, !dbg !530
  %274 = load double, double* %29, align 8, !dbg !531
  store double %274, double* %37, align 8, !dbg !532
  store i32 0, i32* %49, align 4, !dbg !533
  br label %275

; <label>:275:                                    ; preds = %272, %264
  %276 = load double, double* %27, align 8, !dbg !534
  %277 = fcmp oeq double %276, -5.000000e-01, !dbg !536
  %278 = call i1 @fCmpInstHandler(double %276, double -5.000000e-01, i1 %277, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688854288, i32 982, i32 16), !dbg !537
  br i1 %278, label %279, label %283, !dbg !537

; <label>:279:                                    ; preds = %275
  %280 = load double, double* %12, align 8, !dbg !538
  %281 = load double, double* %13, align 8, !dbg !540
  %282 = call i32 @coulomb_FGmhalf_series(double %280, double %281, %struct.gsl_sf_result_struct* %39, %struct.gsl_sf_result_struct* %40), !dbg !541
  store i32 %282, i32* %48, align 4, !dbg !542
  br label %347, !dbg !543

; <label>:283:                                    ; preds = %275
  %284 = load double, double* %27, align 8, !dbg !544
  %285 = fcmp oeq double %284, 0.000000e+00, !dbg !546
  %286 = call i1 @fCmpInstHandler(double %284, double 0.000000e+00, i1 %285, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688858384, i32 985, i32 21), !dbg !547
  br i1 %286, label %287, label %291, !dbg !547

; <label>:287:                                    ; preds = %283
  %288 = load double, double* %12, align 8, !dbg !548
  %289 = load double, double* %13, align 8, !dbg !550
  %290 = call i32 @coulomb_FG0_series(double %288, double %289, %struct.gsl_sf_result_struct* %39, %struct.gsl_sf_result_struct* %40), !dbg !551
  store i32 %290, i32* %48, align 4, !dbg !552
  br label %346, !dbg !553

; <label>:291:                                    ; preds = %283
  %292 = load double, double* %27, align 8, !dbg !554
  %293 = fcmp oeq double %292, 5.000000e-01, !dbg !556
  %294 = call i1 @fCmpInstHandler(double %292, double 5.000000e-01, i1 %293, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688862496, i32 988, i32 21), !dbg !557
  br i1 %294, label %295, label %340, !dbg !557

; <label>:295:                                    ; preds = %291
  %296 = load double, double* %28, align 8, !dbg !558
  %297 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !560
  %298 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %297, i32 0, i32 0, !dbg !561
  store double %296, double* %298, align 8, !dbg !562
  %299 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !563
  %300 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %299, i32 0, i32 0, !dbg !564
  %301 = load double, double* %300, align 8, !dbg !564
  %302 = call double @fabs(double %301) #1, !dbg !565
  %303 = fmul double 0x3CC0000000000000, %302, !dbg !566
  call void @fMulHandler(double 0x3CC0000000000000, double %302, double %303, i64 0, i64 93937688867712, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688868192, i32 991, i32 39), !dbg !567
  %304 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !567
  %305 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %304, i32 0, i32 1, !dbg !568
  store double %303, double* %305, align 8, !dbg !569
  %306 = load double, double* %29, align 8, !dbg !570
  %307 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !571
  %308 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %307, i32 0, i32 0, !dbg !572
  store double %306, double* %308, align 8, !dbg !573
  %309 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !574
  %310 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %309, i32 0, i32 0, !dbg !575
  %311 = load double, double* %310, align 8, !dbg !575
  %312 = call double @fabs(double %311) #1, !dbg !576
  %313 = fmul double 0x3CC0000000000000, %312, !dbg !577
  call void @fMulHandler(double 0x3CC0000000000000, double %312, double %313, i64 0, i64 93937688874032, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688874512, i32 993, i32 39), !dbg !578
  %314 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !578
  %315 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %314, i32 0, i32 1, !dbg !579
  store double %313, double* %315, align 8, !dbg !580
  %316 = load double, double* %30, align 8, !dbg !581
  %317 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !582
  %318 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %317, i32 0, i32 0, !dbg !583
  store double %316, double* %318, align 8, !dbg !584
  %319 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !585
  %320 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %319, i32 0, i32 0, !dbg !586
  %321 = load double, double* %320, align 8, !dbg !586
  %322 = call double @fabs(double %321) #1, !dbg !587
  %323 = fmul double 0x3CC0000000000000, %322, !dbg !588
  call void @fMulHandler(double 0x3CC0000000000000, double %322, double %323, i64 0, i64 93937688880352, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688880832, i32 995, i32 39), !dbg !589
  %324 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !589
  %325 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %324, i32 0, i32 1, !dbg !590
  store double %323, double* %325, align 8, !dbg !591
  %326 = load double, double* %31, align 8, !dbg !592
  %327 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !593
  %328 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %327, i32 0, i32 0, !dbg !594
  store double %326, double* %328, align 8, !dbg !595
  %329 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !596
  %330 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %329, i32 0, i32 0, !dbg !597
  %331 = load double, double* %330, align 8, !dbg !597
  %332 = call double @fabs(double %331) #1, !dbg !598
  %333 = fmul double 0x3CC0000000000000, %332, !dbg !599
  call void @fMulHandler(double 0x3CC0000000000000, double %332, double %333, i64 0, i64 93937688886672, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688887152, i32 997, i32 39), !dbg !600
  %334 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !600
  %335 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %334, i32 0, i32 1, !dbg !601
  store double %333, double* %335, align 8, !dbg !602
  %336 = load double*, double** %20, align 8, !dbg !603
  store double 0.000000e+00, double* %336, align 8, !dbg !604
  %337 = load double*, double** %21, align 8, !dbg !605
  store double 0.000000e+00, double* %337, align 8, !dbg !606
  br label %338, !dbg !607, !llvm.loop !608

; <label>:338:                                    ; preds = %295
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1000, i32 7), !dbg !609
  store i32 7, i32* %11, align 4, !dbg !609
  br label %950, !dbg !609
                                                  ; No predecessors!
  br label %345, !dbg !612

; <label>:340:                                    ; preds = %291
  %341 = load double, double* %27, align 8, !dbg !613
  %342 = load double, double* %12, align 8, !dbg !615
  %343 = load double, double* %13, align 8, !dbg !616
  %344 = call i32 @coulomb_FG_series(double %341, double %342, double %343, %struct.gsl_sf_result_struct* %39, %struct.gsl_sf_result_struct* %40), !dbg !617
  store i32 %344, i32* %48, align 4, !dbg !618
  br label %345

; <label>:345:                                    ; preds = %340, %339
  br label %346

; <label>:346:                                    ; preds = %345, %287
  br label %347

; <label>:347:                                    ; preds = %346, %279
  %348 = load double, double* %37, align 8, !dbg !619
  %349 = load double, double* %36, align 8, !dbg !620
  %350 = fdiv double %348, %349, !dbg !621
  call void @fDivHandler(double %348, double %349, double %350, i64 93937688897160, i64 93937688897416, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688897760, i32 1007, i32 43), !dbg !622
  store double %350, double* %38, align 8, !dbg !622
  %351 = load double, double* %38, align 8, !dbg !623
  %352 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !624
  %353 = load double, double* %352, align 8, !dbg !624
  %354 = fmul double %351, %353, !dbg !625
  call void @fMulHandler(double %351, double %353, double %354, i64 93937688898568, i64 93937688899400, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688901072, i32 1008, i32 40), !dbg !626
  %355 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !626
  %356 = load double, double* %355, align 8, !dbg !626
  %357 = fdiv double 1.000000e+00, %356, !dbg !627
  call void @fDivHandler(double 1.000000e+00, double %356, double %357, i64 0, i64 93937688901912, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688903616, i32 1008, i32 60), !dbg !628
  %358 = fsub double %354, %357, !dbg !628
  call void @fSubHandler(double %354, double %357, double %358, i64 93937688901072, i64 93937688903616, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688904000, i32 1008, i32 55), !dbg !629
  %359 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !629
  store double %358, double* %359, align 8, !dbg !630
  %360 = load double, double* %38, align 8, !dbg !631
  %361 = call double @fabs(double %360) #1, !dbg !632
  %362 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !633
  %363 = load double, double* %362, align 8, !dbg !633
  %364 = fmul double %361, %363, !dbg !634
  call void @fMulHandler(double %361, double %363, double %364, i64 93937688905728, i64 93937688906632, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688908304, i32 1009, i32 46), !dbg !635
  %365 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !635
  store double %364, double* %365, align 8, !dbg !636
  %366 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !637
  %367 = load double, double* %366, align 8, !dbg !637
  %368 = fdiv double 1.000000e+00, %367, !dbg !638
  call void @fDivHandler(double 1.000000e+00, double %367, double %368, i64 0, i64 93937688910008, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688911712, i32 1010, i32 31), !dbg !639
  %369 = call double @fabs(double %368) #1, !dbg !639
  %370 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !640
  %371 = load double, double* %370, align 8, !dbg !640
  %372 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !641
  %373 = load double, double* %372, align 8, !dbg !641
  %374 = fdiv double %371, %373, !dbg !642
  call void @fDivHandler(double %371, double %373, double %374, i64 93937688913064, i64 93937688915160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688916832, i32 1010, i32 67), !dbg !643
  %375 = call double @fabs(double %374) #1, !dbg !643
  %376 = fmul double %369, %375, !dbg !644
  call void @fMulHandler(double %369, double %375, double %376, i64 93937688912160, i64 93937688917312, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688917792, i32 1010, i32 47), !dbg !645
  %377 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !645
  %378 = load double, double* %377, align 8, !dbg !646
  %379 = fadd double %378, %376, !dbg !646
  call void @fAddHandler(double %378, double %376, double %379, i64 93937688918632, i64 93937688917792, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688919040, i32 1010, i32 20), !dbg !646
  store double %379, double* %377, align 8, !dbg !646
  %380 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !647
  %381 = load double, double* %380, align 8, !dbg !647
  %382 = load double, double* %36, align 8, !dbg !648
  %383 = fdiv double %381, %382, !dbg !649
  call void @fDivHandler(double %381, double %382, double %383, i64 93937688921272, i64 93937688922920, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688923328, i32 1011, i32 33), !dbg !650
  store double %383, double* %42, align 8, !dbg !650
  %384 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !651
  %385 = load double, double* %384, align 8, !dbg !651
  %386 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !652
  %387 = load double, double* %386, align 8, !dbg !652
  %388 = fdiv double %385, %387, !dbg !653
  call void @fDivHandler(double %385, double %387, double %388, i64 93937688924584, i64 93937688926680, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688928352, i32 1014, i32 43), !dbg !654
  %389 = call double @fabs(double %388) #1, !dbg !654
  store double %389, double* %44, align 8, !dbg !655
  %390 = load i32, i32* %46, align 4, !dbg !656
  %391 = load i32, i32* %26, align 4, !dbg !657
  %392 = add nsw i32 %390, %391, !dbg !658
  %393 = add nsw i32 %392, 1, !dbg !659
  %394 = sitofp i32 %393 to double, !dbg !660
  %395 = fmul double 0x3CC0000000000000, %394, !dbg !661
  call void @fMulHandler(double 0x3CC0000000000000, double %394, double %395, i64 0, i64 93937688931304, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688931712, i32 1015, i32 44), !dbg !662
  store double %395, double* %45, align 8, !dbg !662
  %396 = load double, double* %42, align 8, !dbg !663
  %397 = load double, double* %28, align 8, !dbg !664
  %398 = fmul double %397, %396, !dbg !664
  call void @fMulHandler(double %397, double %396, double %398, i64 93937688932904, i64 93937688932520, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688933312, i32 1016, i32 17), !dbg !664
  store double %398, double* %28, align 8, !dbg !664
  %399 = load double, double* %28, align 8, !dbg !665
  %400 = call double @fabs(double %399) #1, !dbg !666
  %401 = load double, double* %45, align 8, !dbg !667
  %402 = load double, double* %44, align 8, !dbg !668
  %403 = fadd double %401, %402, !dbg !669
  call void @fAddHandler(double %401, double %402, double %403, i64 93937688936024, i64 93937688936408, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688936816, i32 1017, i32 55), !dbg !670
  %404 = fmul double %400, %403, !dbg !670
  call void @fMulHandler(double %400, double %403, double %404, i64 93937688935568, i64 93937688936816, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688937232, i32 1017, i32 34), !dbg !671
  store double %404, double* %32, align 8, !dbg !671
  %405 = load double, double* %42, align 8, !dbg !672
  %406 = load double, double* %29, align 8, !dbg !673
  %407 = fmul double %406, %405, !dbg !673
  call void @fMulHandler(double %406, double %405, double %407, i64 93937688938424, i64 93937688938040, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688938832, i32 1018, i32 17), !dbg !673
  store double %407, double* %29, align 8, !dbg !673
  %408 = load double, double* %29, align 8, !dbg !674
  %409 = call double @fabs(double %408) #1, !dbg !675
  %410 = load double, double* %45, align 8, !dbg !676
  %411 = load double, double* %44, align 8, !dbg !677
  %412 = fadd double %410, %411, !dbg !678
  call void @fAddHandler(double %410, double %411, double %412, i64 93937688941544, i64 93937688941928, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688942336, i32 1019, i32 56), !dbg !679
  %413 = fmul double %409, %412, !dbg !679
  call void @fMulHandler(double %409, double %412, double %413, i64 93937688941088, i64 93937688942336, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688942752, i32 1019, i32 35), !dbg !680
  store double %413, double* %33, align 8, !dbg !680
  %414 = load double, double* %27, align 8, !dbg !681
  %415 = load i32, i32* %25, align 4, !dbg !682
  %416 = load i32, i32* %15, align 4, !dbg !682
  %417 = sub nsw i32 %415, %416, !dbg !682
  %418 = icmp sgt i32 %417, 0, !dbg !682
  %419 = sext i32 %417 to i64, !dbg !682
  %420 = call i1 @iCmpInstHandler(i64 %419, i64 0, i1 %418, i32 38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688946128, i32 1022, i32 40), !dbg !682
  br i1 %420, label %421, label %425, !dbg !682

; <label>:421:                                    ; preds = %347
  %422 = load i32, i32* %25, align 4, !dbg !683
  %423 = load i32, i32* %15, align 4, !dbg !683
  %424 = sub nsw i32 %422, %423, !dbg !683
  br label %426, !dbg !683

; <label>:425:                                    ; preds = %347
  br label %426, !dbg !684

; <label>:426:                                    ; preds = %425, %421
  %427 = phi i32 [ %424, %421 ], [ 0, %425 ], !dbg !685
  %428 = load double, double* %12, align 8, !dbg !686
  %429 = load double, double* %13, align 8, !dbg !687
  %430 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !688
  %431 = load double, double* %430, align 8, !dbg !688
  %432 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !689
  %433 = load double, double* %432, align 8, !dbg !689
  %434 = call i32 @coulomb_G_recur(double %414, i32 %427, double %428, double %429, double %431, double %433, double* %30, double* %31), !dbg !690
  store i32 %434, i32* %50, align 4, !dbg !691
  %435 = load double, double* %28, align 8, !dbg !692
  %436 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !693
  %437 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %436, i32 0, i32 0, !dbg !694
  store double %435, double* %437, align 8, !dbg !695
  %438 = load double, double* %32, align 8, !dbg !696
  %439 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !697
  %440 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %439, i32 0, i32 1, !dbg !698
  store double %438, double* %440, align 8, !dbg !699
  %441 = load double, double* %28, align 8, !dbg !700
  %442 = call double @fabs(double %441) #1, !dbg !701
  %443 = fmul double 0x3CC0000000000000, %442, !dbg !702
  call void @fMulHandler(double 0x3CC0000000000000, double %442, double %443, i64 0, i64 93937688960624, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688961104, i32 1029, i32 37), !dbg !703
  %444 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !703
  %445 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %444, i32 0, i32 1, !dbg !704
  %446 = load double, double* %445, align 8, !dbg !705
  %447 = fadd double %446, %443, !dbg !705
  call void @fAddHandler(double %446, double %443, double %447, i64 93937688962328, i64 93937688961104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688962736, i32 1029, i32 12), !dbg !705
  store double %447, double* %445, align 8, !dbg !705
  %448 = load double, double* %29, align 8, !dbg !706
  %449 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !707
  %450 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %449, i32 0, i32 0, !dbg !708
  store double %448, double* %450, align 8, !dbg !709
  %451 = load double, double* %33, align 8, !dbg !710
  %452 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !711
  %453 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %452, i32 0, i32 1, !dbg !712
  store double %451, double* %453, align 8, !dbg !713
  %454 = load double, double* %29, align 8, !dbg !714
  %455 = call double @fabs(double %454) #1, !dbg !715
  %456 = fmul double 0x3CC0000000000000, %455, !dbg !716
  call void @fMulHandler(double 0x3CC0000000000000, double %455, double %456, i64 0, i64 93937688968256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688968736, i32 1033, i32 38), !dbg !717
  %457 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !717
  %458 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %457, i32 0, i32 1, !dbg !718
  %459 = load double, double* %458, align 8, !dbg !719
  %460 = fadd double %459, %456, !dbg !719
  call void @fAddHandler(double %459, double %456, double %460, i64 93937688969960, i64 93937688968736, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688970368, i32 1033, i32 13), !dbg !719
  store double %460, double* %458, align 8, !dbg !719
  %461 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !720
  %462 = load double, double* %461, align 8, !dbg !720
  %463 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !721
  %464 = load double, double* %463, align 8, !dbg !721
  %465 = fdiv double %462, %464, !dbg !722
  call void @fDivHandler(double %462, double %464, double %465, i64 93937688972600, i64 93937688974696, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688976368, i32 1035, i32 35), !dbg !723
  %466 = call double @fabs(double %465) #1, !dbg !723
  %467 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !724
  %468 = load double, double* %467, align 8, !dbg !724
  %469 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !725
  %470 = load double, double* %469, align 8, !dbg !725
  %471 = fdiv double %468, %470, !dbg !726
  call void @fDivHandler(double %468, double %470, double %471, i64 93937688977752, i64 93937688979848, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688981520, i32 1035, i32 72), !dbg !727
  %472 = call double @fabs(double %471) #1, !dbg !727
  %473 = fadd double %466, %472, !dbg !728
  call void @fAddHandler(double %466, double %472, double %473, i64 93937688976848, i64 93937688982000, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688982480, i32 1035, i32 51), !dbg !729
  store double %473, double* %43, align 8, !dbg !729
  %474 = load double, double* %30, align 8, !dbg !730
  %475 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !731
  %476 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %475, i32 0, i32 0, !dbg !732
  store double %474, double* %476, align 8, !dbg !733
  %477 = load double, double* %43, align 8, !dbg !734
  %478 = load double, double* %30, align 8, !dbg !735
  %479 = call double @fabs(double %478) #1, !dbg !736
  %480 = fmul double %477, %479, !dbg !737
  call void @fMulHandler(double %477, double %479, double %480, i64 93937688984920, i64 93937688985776, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688986256, i32 1038, i32 25), !dbg !738
  %481 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !738
  %482 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %481, i32 0, i32 1, !dbg !739
  store double %480, double* %482, align 8, !dbg !740
  %483 = load i32, i32* %46, align 4, !dbg !741
  %484 = add nsw i32 %483, 1, !dbg !742
  %485 = sitofp i32 %484 to double, !dbg !743
  %486 = fmul double 2.000000e+00, %485, !dbg !744
  call void @fMulHandler(double 2.000000e+00, double %485, double %486, i64 0, i64 93937688988696, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688989136, i32 1039, i32 19), !dbg !745
  %487 = fmul double %486, 0x3CB0000000000000, !dbg !745
  call void @fMulHandler(double %486, double 0x3CB0000000000000, double %487, i64 93937688989136, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688989520, i32 1039, i32 35), !dbg !746
  %488 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !746
  %489 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %488, i32 0, i32 0, !dbg !747
  %490 = load double, double* %489, align 8, !dbg !747
  %491 = call double @fabs(double %490) #1, !dbg !748
  %492 = fmul double %487, %491, !dbg !749
  call void @fMulHandler(double %487, double %491, double %492, i64 93937688989520, i64 93937688992480, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688992960, i32 1039, i32 53), !dbg !750
  %493 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !750
  %494 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %493, i32 0, i32 1, !dbg !751
  %495 = load double, double* %494, align 8, !dbg !752
  %496 = fadd double %495, %492, !dbg !752
  call void @fAddHandler(double %495, double %492, double %496, i64 93937688994184, i64 93937688992960, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688994592, i32 1039, i32 12), !dbg !752
  store double %496, double* %494, align 8, !dbg !752
  %497 = load double, double* %31, align 8, !dbg !753
  %498 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !754
  %499 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %498, i32 0, i32 0, !dbg !755
  store double %497, double* %499, align 8, !dbg !756
  %500 = load double, double* %43, align 8, !dbg !757
  %501 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !758
  %502 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %501, i32 0, i32 0, !dbg !759
  %503 = load double, double* %502, align 8, !dbg !759
  %504 = call double @fabs(double %503) #1, !dbg !760
  %505 = fmul double %500, %504, !dbg !761
  call void @fMulHandler(double %500, double %504, double %505, i64 93937688998008, i64 93937689000960, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689001440, i32 1042, i32 26), !dbg !762
  %506 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !762
  %507 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %506, i32 0, i32 1, !dbg !763
  store double %505, double* %507, align 8, !dbg !764
  %508 = load i32, i32* %46, align 4, !dbg !765
  %509 = add nsw i32 %508, 1, !dbg !766
  %510 = sitofp i32 %509 to double, !dbg !767
  %511 = fmul double 2.000000e+00, %510, !dbg !768
  call void @fMulHandler(double 2.000000e+00, double %510, double %511, i64 0, i64 93937689003880, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689004320, i32 1043, i32 20), !dbg !769
  %512 = fmul double %511, 0x3CB0000000000000, !dbg !769
  call void @fMulHandler(double %511, double 0x3CB0000000000000, double %512, i64 93937689004320, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689004704, i32 1043, i32 36), !dbg !770
  %513 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !770
  %514 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %513, i32 0, i32 0, !dbg !771
  %515 = load double, double* %514, align 8, !dbg !771
  %516 = call double @fabs(double %515) #1, !dbg !772
  %517 = fmul double %512, %516, !dbg !773
  call void @fMulHandler(double %512, double %516, double %517, i64 93937689004704, i64 93937689007664, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689008144, i32 1043, i32 54), !dbg !774
  %518 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !774
  %519 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %518, i32 0, i32 1, !dbg !775
  %520 = load double, double* %519, align 8, !dbg !776
  %521 = fadd double %520, %517, !dbg !776
  call void @fAddHandler(double %520, double %517, double %521, i64 93937689009368, i64 93937689008144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689009776, i32 1043, i32 13), !dbg !776
  store double %521, double* %519, align 8, !dbg !776
  %522 = load double*, double** %20, align 8, !dbg !777
  store double 0.000000e+00, double* %522, align 8, !dbg !778
  %523 = load double*, double** %21, align 8, !dbg !779
  store double 0.000000e+00, double* %523, align 8, !dbg !780
  %524 = load i32, i32* %48, align 4, !dbg !781
  %525 = icmp ne i32 %524, 0, !dbg !781
  %526 = sext i32 %524 to i64, !dbg !781
  %527 = call i1 @iCmpInstHandler(i64 %526, i64 0, i1 %525, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689013568, i32 1048, i32 12), !dbg !781
  br i1 %527, label %528, label %530, !dbg !781

; <label>:528:                                    ; preds = %426
  %529 = load i32, i32* %48, align 4, !dbg !782
  br label %558, !dbg !782

; <label>:530:                                    ; preds = %426
  %531 = load i32, i32* %47, align 4, !dbg !783
  %532 = icmp ne i32 %531, 0, !dbg !783
  %533 = sext i32 %531 to i64, !dbg !783
  %534 = call i1 @iCmpInstHandler(i64 %533, i64 0, i1 %532, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689018112, i32 1048, i32 12), !dbg !783
  br i1 %534, label %535, label %537, !dbg !783

; <label>:535:                                    ; preds = %530
  %536 = load i32, i32* %47, align 4, !dbg !784
  br label %556, !dbg !784

; <label>:537:                                    ; preds = %530
  %538 = load i32, i32* %49, align 4, !dbg !785
  %539 = icmp ne i32 %538, 0, !dbg !785
  %540 = sext i32 %538 to i64, !dbg !785
  %541 = call i1 @iCmpInstHandler(i64 %540, i64 0, i1 %539, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937688850368, i32 1048, i32 12), !dbg !785
  br i1 %541, label %542, label %544, !dbg !785

; <label>:542:                                    ; preds = %537
  %543 = load i32, i32* %49, align 4, !dbg !787
  br label %554, !dbg !787

; <label>:544:                                    ; preds = %537
  %545 = load i32, i32* %50, align 4, !dbg !789
  %546 = icmp ne i32 %545, 0, !dbg !789
  %547 = sext i32 %545 to i64, !dbg !789
  %548 = call i1 @iCmpInstHandler(i64 %547, i64 0, i1 %546, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689031296, i32 1048, i32 12), !dbg !789
  br i1 %548, label %549, label %551, !dbg !789

; <label>:549:                                    ; preds = %544
  %550 = load i32, i32* %50, align 4, !dbg !791
  br label %552, !dbg !791

; <label>:551:                                    ; preds = %544
  br label %552, !dbg !793

; <label>:552:                                    ; preds = %551, %549
  %553 = phi i32 [ %550, %549 ], [ 0, %551 ], !dbg !795
  br label %554, !dbg !795

; <label>:554:                                    ; preds = %552, %542
  %555 = phi i32 [ %543, %542 ], [ %553, %552 ], !dbg !797
  br label %556, !dbg !797

; <label>:556:                                    ; preds = %554, %535
  %557 = phi i32 [ %536, %535 ], [ %555, %554 ], !dbg !799
  br label %558, !dbg !799

; <label>:558:                                    ; preds = %556, %528
  %559 = phi i32 [ %529, %528 ], [ %557, %556 ], !dbg !801
  store i32 %559, i32* %11, align 4, !dbg !803
  br label %950, !dbg !803

; <label>:560:                                    ; preds = %226, %221, %217
  %561 = load double, double* %13, align 8, !dbg !804
  %562 = load double, double* %12, align 8, !dbg !806
  %563 = fmul double 2.000000e+00, %562, !dbg !807
  call void @fMulHandler(double 2.000000e+00, double %562, double %563, i64 0, i64 93937689044744, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689045184, i32 1050, i32 18), !dbg !808
  %564 = fcmp olt double %561, %563, !dbg !808
  %565 = call i1 @fCmpInstHandler(double %561, double %563, i1 %564, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689045568, i32 1050, i32 13), !dbg !809
  br i1 %565, label %566, label %712, !dbg !809

; <label>:566:                                    ; preds = %560
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
  %567 = load double, double* %14, align 8, !dbg !841
  %568 = load double, double* %12, align 8, !dbg !842
  %569 = load double, double* %13, align 8, !dbg !843
  %570 = call i32 @coulomb_jwkb(double %567, double %568, double %569, %struct.gsl_sf_result_struct* %51, %struct.gsl_sf_result_struct* %52, double* %55), !dbg !844
  store i32 %570, i32* %57, align 4, !dbg !845
  %571 = load i32, i32* %15, align 4, !dbg !846
  %572 = icmp eq i32 %571, 0, !dbg !848
  %573 = sext i32 %571 to i64, !dbg !849
  %574 = call i1 @iCmpInstHandler(i64 %573, i64 0, i1 %572, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689065904, i32 1069, i32 16), !dbg !849
  br i1 %574, label %575, label %582, !dbg !849

; <label>:575:                                    ; preds = %566
  %576 = load i32, i32* %57, align 4, !dbg !850
  store i32 %576, i32* %58, align 4, !dbg !852
  %577 = bitcast %struct.gsl_sf_result_struct* %53 to i8*, !dbg !853
  %578 = bitcast %struct.gsl_sf_result_struct* %51 to i8*, !dbg !853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %577, i8* %578, i64 16, i32 8, i1 false), !dbg !853
  %579 = bitcast %struct.gsl_sf_result_struct* %54 to i8*, !dbg !854
  %580 = bitcast %struct.gsl_sf_result_struct* %52 to i8*, !dbg !854
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %579, i8* %580, i64 16, i32 8, i1 false), !dbg !854
  %581 = load double, double* %55, align 8, !dbg !855
  store double %581, double* %56, align 8, !dbg !856
  br label %587, !dbg !857

; <label>:582:                                    ; preds = %566
  %583 = load double, double* %22, align 8, !dbg !858
  %584 = load double, double* %12, align 8, !dbg !860
  %585 = load double, double* %13, align 8, !dbg !861
  %586 = call i32 @coulomb_jwkb(double %583, double %584, double %585, %struct.gsl_sf_result_struct* %53, %struct.gsl_sf_result_struct* %54, double* %56), !dbg !862
  store i32 %586, i32* %58, align 4, !dbg !863
  br label %587

; <label>:587:                                    ; preds = %582, %575
  %588 = load double, double* %14, align 8, !dbg !864
  %589 = load double, double* %12, align 8, !dbg !865
  %590 = load double, double* %13, align 8, !dbg !866
  %591 = call i32 @coulomb_CF1(double %588, double %589, double %590, double* %64, double* %62, i32* %61), !dbg !867
  store i32 %591, i32* %59, align 4, !dbg !868
  %592 = load i32, i32* %15, align 4, !dbg !869
  %593 = icmp eq i32 %592, 0, !dbg !871
  %594 = sext i32 %592 to i64, !dbg !872
  %595 = call i1 @iCmpInstHandler(i64 %594, i64 0, i1 %593, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689079824, i32 1080, i32 16), !dbg !872
  br i1 %595, label %596, label %600, !dbg !872

; <label>:596:                                    ; preds = %587
  %597 = load i32, i32* %59, align 4, !dbg !873
  store i32 %597, i32* %60, align 4, !dbg !875
  %598 = load double, double* %64, align 8, !dbg !876
  store double %598, double* %65, align 8, !dbg !877
  %599 = load double, double* %62, align 8, !dbg !878
  store double %599, double* %63, align 8, !dbg !879
  br label %605, !dbg !880

; <label>:600:                                    ; preds = %587
  %601 = load double, double* %22, align 8, !dbg !881
  %602 = load double, double* %12, align 8, !dbg !883
  %603 = load double, double* %13, align 8, !dbg !884
  %604 = call i32 @coulomb_CF1(double %601, double %602, double %603, double* %65, double* %63, i32* %61), !dbg !885
  store i32 %604, i32* %60, align 4, !dbg !886
  br label %605

; <label>:605:                                    ; preds = %600, %596
  %606 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !887
  %607 = load double, double* %606, align 8, !dbg !887
  %608 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !888
  %609 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %608, i32 0, i32 0, !dbg !889
  store double %607, double* %609, align 8, !dbg !890
  %610 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !891
  %611 = load double, double* %610, align 8, !dbg !891
  %612 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !892
  %613 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %612, i32 0, i32 1, !dbg !893
  store double %611, double* %613, align 8, !dbg !894
  %614 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !895
  %615 = load double, double* %614, align 8, !dbg !895
  %616 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !896
  %617 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %616, i32 0, i32 0, !dbg !897
  store double %615, double* %617, align 8, !dbg !898
  %618 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !899
  %619 = load double, double* %618, align 8, !dbg !899
  %620 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !900
  %621 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %620, i32 0, i32 1, !dbg !901
  store double %619, double* %621, align 8, !dbg !902
  %622 = load double, double* %62, align 8, !dbg !903
  %623 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !904
  %624 = load double, double* %623, align 8, !dbg !904
  %625 = fmul double %622, %624, !dbg !905
  call void @fMulHandler(double %622, double %624, double %625, i64 93937689099336, i64 93937689100168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689101840, i32 1095, i32 32), !dbg !906
  %626 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !906
  %627 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %626, i32 0, i32 0, !dbg !907
  store double %625, double* %627, align 8, !dbg !908
  %628 = load double, double* %62, align 8, !dbg !909
  %629 = call double @fabs(double %628) #1, !dbg !910
  %630 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !911
  %631 = load double, double* %630, align 8, !dbg !911
  %632 = fmul double %629, %631, !dbg !912
  call void @fMulHandler(double %629, double %631, double %632, i64 93937689103952, i64 93937689104856, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689106528, i32 1096, i32 38), !dbg !913
  %633 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !913
  %634 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %633, i32 0, i32 1, !dbg !914
  store double %632, double* %634, align 8, !dbg !915
  %635 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !916
  %636 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %635, i32 0, i32 0, !dbg !917
  %637 = load double, double* %636, align 8, !dbg !917
  %638 = call double @fabs(double %637) #1, !dbg !918
  %639 = fmul double 0x3CC0000000000000, %638, !dbg !919
  call void @fMulHandler(double 0x3CC0000000000000, double %638, double %639, i64 0, i64 93937689110736, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689111216, i32 1097, i32 35), !dbg !920
  %640 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !920
  %641 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %640, i32 0, i32 1, !dbg !921
  %642 = load double, double* %641, align 8, !dbg !922
  %643 = fadd double %642, %639, !dbg !922
  call void @fAddHandler(double %642, double %639, double %643, i64 93937689112440, i64 93937689111216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689112848, i32 1097, i32 13), !dbg !922
  store double %643, double* %641, align 8, !dbg !922
  %644 = load double, double* %63, align 8, !dbg !923
  %645 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !924
  %646 = load double, double* %645, align 8, !dbg !924
  %647 = fmul double %644, %646, !dbg !925
  call void @fMulHandler(double %644, double %646, double %647, i64 93937689114632, i64 93937689115464, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689117136, i32 1099, i32 32), !dbg !926
  %648 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !926
  %649 = load double, double* %648, align 8, !dbg !926
  %650 = fdiv double 1.000000e+00, %649, !dbg !927
  call void @fDivHandler(double 1.000000e+00, double %649, double %650, i64 0, i64 93937689117976, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689119680, i32 1099, i32 51), !dbg !928
  %651 = fsub double %647, %650, !dbg !928
  call void @fSubHandler(double %647, double %650, double %651, i64 93937689117136, i64 93937689119680, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689120064, i32 1099, i32 46), !dbg !929
  %652 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !929
  %653 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %652, i32 0, i32 0, !dbg !930
  store double %651, double* %653, align 8, !dbg !931
  %654 = load double, double* %63, align 8, !dbg !932
  %655 = call double @fabs(double %654) #1, !dbg !933
  %656 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !934
  %657 = load double, double* %656, align 8, !dbg !934
  %658 = fmul double %655, %657, !dbg !935
  call void @fMulHandler(double %655, double %657, double %658, i64 93937689122176, i64 93937689123080, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689124752, i32 1100, i32 38), !dbg !936
  %659 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !936
  %660 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %659, i32 0, i32 1, !dbg !937
  store double %658, double* %660, align 8, !dbg !938
  %661 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !939
  %662 = load double, double* %661, align 8, !dbg !939
  %663 = fdiv double 1.000000e+00, %662, !dbg !940
  call void @fDivHandler(double 1.000000e+00, double %662, double %663, i64 0, i64 93937689126840, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689128544, i32 1101, i32 24), !dbg !941
  %664 = call double @fabs(double %663) #1, !dbg !941
  %665 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !942
  %666 = load double, double* %665, align 8, !dbg !942
  %667 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !943
  %668 = load double, double* %667, align 8, !dbg !943
  %669 = fdiv double %666, %668, !dbg !944
  call void @fDivHandler(double %666, double %668, double %669, i64 93937689129896, i64 93937689131992, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689133664, i32 1101, i32 56), !dbg !945
  %670 = call double @fabs(double %669) #1, !dbg !945
  %671 = fmul double %664, %670, !dbg !947
  call void @fMulHandler(double %664, double %670, double %671, i64 93937689128992, i64 93937689134144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689134624, i32 1101, i32 38), !dbg !948
  %672 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !948
  %673 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %672, i32 0, i32 1, !dbg !949
  %674 = load double, double* %673, align 8, !dbg !950
  %675 = fadd double %674, %671, !dbg !950
  call void @fAddHandler(double %674, double %671, double %675, i64 93937689135848, i64 93937689134624, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689136256, i32 1101, i32 13), !dbg !950
  store double %675, double* %673, align 8, !dbg !950
  %676 = load double, double* %55, align 8, !dbg !951
  %677 = load double*, double** %20, align 8, !dbg !952
  store double %676, double* %677, align 8, !dbg !953
  %678 = load double, double* %56, align 8, !dbg !954
  %679 = load double*, double** %21, align 8, !dbg !955
  store double %678, double* %679, align 8, !dbg !956
  %680 = load i32, i32* %57, align 4, !dbg !957
  %681 = icmp eq i32 %680, 16, !dbg !959
  %682 = sext i32 %680 to i64, !dbg !960
  %683 = call i1 @iCmpInstHandler(i64 %682, i64 16, i1 %681, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689140880, i32 1106, i32 19), !dbg !960
  br i1 %683, label %689, label %684, !dbg !960

; <label>:684:                                    ; preds = %605
  %685 = load i32, i32* %58, align 4, !dbg !961
  %686 = icmp eq i32 %685, 16, !dbg !963
  %687 = sext i32 %685 to i64, !dbg !964
  %688 = call i1 @iCmpInstHandler(i64 %687, i64 16, i1 %686, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689142336, i32 1106, i32 48), !dbg !964
  br i1 %688, label %689, label %692, !dbg !964

; <label>:689:                                    ; preds = %684, %605
  br label %690, !dbg !965, !llvm.loop !967

; <label>:690:                                    ; preds = %689
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1107, i32 16), !dbg !968
  store i32 16, i32* %11, align 4, !dbg !968
  br label %950, !dbg !968
                                                  ; No predecessors!
  br label %711, !dbg !971

; <label>:692:                                    ; preds = %684
  %693 = load i32, i32* %57, align 4, !dbg !972
  %694 = icmp ne i32 %693, 0, !dbg !972
  %695 = sext i32 %693 to i64, !dbg !972
  %696 = call i1 @iCmpInstHandler(i64 %695, i64 0, i1 %694, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689147488, i32 1110, i32 14), !dbg !972
  br i1 %696, label %697, label %699, !dbg !972

; <label>:697:                                    ; preds = %692
  %698 = load i32, i32* %57, align 4, !dbg !974
  br label %709, !dbg !974

; <label>:699:                                    ; preds = %692
  %700 = load i32, i32* %58, align 4, !dbg !976
  %701 = icmp ne i32 %700, 0, !dbg !976
  %702 = sext i32 %700 to i64, !dbg !976
  %703 = call i1 @iCmpInstHandler(i64 %702, i64 0, i1 %701, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689152032, i32 1110, i32 14), !dbg !976
  br i1 %703, label %704, label %706, !dbg !976

; <label>:704:                                    ; preds = %699
  %705 = load i32, i32* %58, align 4, !dbg !978
  br label %707, !dbg !978

; <label>:706:                                    ; preds = %699
  br label %707, !dbg !980

; <label>:707:                                    ; preds = %706, %704
  %708 = phi i32 [ %705, %704 ], [ 0, %706 ], !dbg !982
  br label %709, !dbg !982

; <label>:709:                                    ; preds = %707, %697
  %710 = phi i32 [ %698, %697 ], [ %708, %707 ], !dbg !984
  store i32 %710, i32* %11, align 4, !dbg !986
  br label %950, !dbg !986

; <label>:711:                                    ; preds = %691
  br label %947, !dbg !987

; <label>:712:                                    ; preds = %560
  call void @llvm.dbg.declare(metadata double* %66, metadata !988, metadata !60), !dbg !990
  store double 0x3E50000000000000, double* %66, align 8, !dbg !990
  call void @llvm.dbg.declare(metadata double* %67, metadata !991, metadata !60), !dbg !992
  %713 = load double, double* %13, align 8, !dbg !993
  %714 = fmul double 4.000000e+00, %713, !dbg !994
  call void @fMulHandler(double 4.000000e+00, double %713, double %714, i64 0, i64 93937689165352, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689165824, i32 1124, i32 36), !dbg !995
  %715 = load double, double* %13, align 8, !dbg !995
  %716 = load double, double* %12, align 8, !dbg !996
  %717 = fmul double 2.000000e+00, %716, !dbg !997
  call void @fMulHandler(double 2.000000e+00, double %716, double %717, i64 0, i64 93937689166568, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689167008, i32 1124, i32 45), !dbg !998
  %718 = fsub double %715, %717, !dbg !998
  call void @fSubHandler(double %715, double %717, double %718, i64 93937689166184, i64 93937689167008, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689167392, i32 1124, i32 41), !dbg !999
  %719 = fmul double %714, %718, !dbg !999
  call void @fMulHandler(double %714, double %718, double %719, i64 93937689165824, i64 93937689167392, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689167808, i32 1124, i32 38), !dbg !1000
  %720 = fadd double 1.000000e+00, %719, !dbg !1000
  call void @fAddHandler(double 1.000000e+00, double %719, double %720, i64 0, i64 93937689167808, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689168256, i32 1124, i32 31), !dbg !1001
  %721 = call double @sqrt(double %720) #6, !dbg !1001
  call void @callOneArgHandler(i32 14, double %720, double %721, i64 93937689168256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689168704, i32 1124, i32 22), !dbg !992
  store double %721, double* %67, align 8, !dbg !992
  call void @llvm.dbg.declare(metadata i32* %68, metadata !1002, metadata !60), !dbg !1003
  %722 = load double, double* %14, align 8, !dbg !1004
  %723 = load double, double* %67, align 8, !dbg !1005
  %724 = fsub double %722, %723, !dbg !1006
  call void @fSubHandler(double %722, double %723, double %724, i64 93937689171960, i64 93937689172312, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689172720, i32 1125, i32 30), !dbg !1007
  %725 = fadd double %724, 5.000000e-01, !dbg !1007
  call void @fAddHandler(double %724, double 5.000000e-01, double %725, i64 93937689172720, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689173168, i32 1125, i32 34), !dbg !1008
  %726 = call double @ceil(double %725) #1, !dbg !1008
  %727 = fptosi double %726 to i32, !dbg !1008
  store i32 %727, i32* %68, align 4, !dbg !1003
  call void @llvm.dbg.declare(metadata double* %69, metadata !1009, metadata !60), !dbg !1010
  %728 = load double, double* %14, align 8, !dbg !1011
  %729 = load i32, i32* %68, align 4, !dbg !1012
  %730 = icmp sgt i32 %729, 0, !dbg !1012
  %731 = sext i32 %729 to i64, !dbg !1012
  %732 = call i1 @iCmpInstHandler(i64 %731, i64 0, i1 %730, i32 38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689179632, i32 1126, i32 36), !dbg !1012
  br i1 %732, label %733, label %735, !dbg !1012

; <label>:733:                                    ; preds = %712
  %734 = load i32, i32* %68, align 4, !dbg !1013
  br label %736, !dbg !1013

; <label>:735:                                    ; preds = %712
  br label %736, !dbg !1015

; <label>:736:                                    ; preds = %735, %733
  %737 = phi i32 [ %734, %733 ], [ 0, %735 ], !dbg !1017
  %738 = sitofp i32 %737 to double, !dbg !1017
  %739 = fsub double %728, %738, !dbg !1019
  call void @fSubHandler(double %728, double %738, double %739, i64 93937689178872, i64 93937689184552, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689186224, i32 1126, i32 34), !dbg !1020
  store double %739, double* %69, align 8, !dbg !1020
  call void @llvm.dbg.declare(metadata double* %70, metadata !1021, metadata !60), !dbg !1022
  %740 = load double, double* %69, align 8, !dbg !1023
  %741 = load double, double* %22, align 8, !dbg !1023
  %742 = fcmp olt double %740, %741, !dbg !1023
  %743 = call i1 @fCmpInstHandler(double %740, double %741, i1 %742, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689190176, i32 1127, i32 28), !dbg !1023
  br i1 %743, label %744, label %746, !dbg !1023

; <label>:744:                                    ; preds = %736
  %745 = load double, double* %69, align 8, !dbg !1024
  br label %748, !dbg !1024

; <label>:746:                                    ; preds = %736
  %747 = load double, double* %22, align 8, !dbg !1025
  br label %748, !dbg !1025

; <label>:748:                                    ; preds = %746, %744
  %749 = phi double [ %745, %744 ], [ %747, %746 ], !dbg !1026
  store double %749, double* %70, align 8, !dbg !1027
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
  %750 = load double, double* %14, align 8, !dbg !1072
  %751 = load double, double* %12, align 8, !dbg !1073
  %752 = load double, double* %13, align 8, !dbg !1074
  %753 = call i32 @coulomb_CF1(double %750, double %751, double %752, double* %83, double* %81, i32* %90), !dbg !1075
  store i32 %753, i32* %92, align 4, !dbg !1071
  call void @llvm.dbg.declare(metadata i32* %93, metadata !1076, metadata !60), !dbg !1077
  call void @llvm.dbg.declare(metadata i32* %94, metadata !1078, metadata !60), !dbg !1079
  call void @llvm.dbg.declare(metadata i32* %95, metadata !1080, metadata !60), !dbg !1081
  call void @llvm.dbg.declare(metadata i32* %96, metadata !1082, metadata !60), !dbg !1083
  call void @llvm.dbg.declare(metadata i32* %97, metadata !1084, metadata !60), !dbg !1085
  call void @llvm.dbg.declare(metadata double* %98, metadata !1086, metadata !60), !dbg !1087
  %754 = load double, double* %83, align 8, !dbg !1088
  %755 = fmul double %754, 0x3E50000000000000, !dbg !1089
  call void @fMulHandler(double %754, double 0x3E50000000000000, double %755, i64 93937689235736, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689236112, i32 1153, i32 29), !dbg !1090
  store double %755, double* %71, align 8, !dbg !1090
  %756 = load double, double* %81, align 8, !dbg !1091
  %757 = load double, double* %71, align 8, !dbg !1092
  %758 = fmul double %756, %757, !dbg !1093
  call void @fMulHandler(double %756, double %757, double %758, i64 93937689236920, i64 93937689237304, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689237712, i32 1154, i32 32), !dbg !1094
  store double %758, double* %72, align 8, !dbg !1094
  %759 = load i32, i32* %15, align 4, !dbg !1095
  %760 = load i32, i32* %68, align 4, !dbg !1095
  %761 = icmp sgt i32 %759, %760, !dbg !1095
  %762 = sext i32 %759 to i64, !dbg !1095
  %763 = sext i32 %760 to i64, !dbg !1095
  %764 = call i1 @iCmpInstHandler(i64 %762, i64 %763, i1 %761, i32 38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689240576, i32 1157, i32 21), !dbg !1095
  br i1 %764, label %765, label %767, !dbg !1095

; <label>:765:                                    ; preds = %748
  %766 = load i32, i32* %15, align 4, !dbg !1096
  br label %769, !dbg !1096

; <label>:767:                                    ; preds = %748
  %768 = load i32, i32* %68, align 4, !dbg !1097
  br label %769, !dbg !1097

; <label>:769:                                    ; preds = %767, %765
  %770 = phi i32 [ %766, %765 ], [ %768, %767 ], !dbg !1098
  store i32 %770, i32* %96, align 4, !dbg !1099
  %771 = load double, double* %70, align 8, !dbg !1100
  %772 = load i32, i32* %96, align 4, !dbg !1101
  %773 = load double, double* %12, align 8, !dbg !1102
  %774 = load double, double* %13, align 8, !dbg !1103
  %775 = load double, double* %71, align 8, !dbg !1104
  %776 = load double, double* %72, align 8, !dbg !1105
  %777 = call i32 @coulomb_F_recur(double %771, i32 %772, double %773, double %774, double %775, double %776, double* %75, double* %76), !dbg !1106
  store i32 %777, i32* %94, align 4, !dbg !1107
  %778 = load double, double* %76, align 8, !dbg !1108
  %779 = load double, double* %75, align 8, !dbg !1109
  %780 = fdiv double %778, %779, !dbg !1110
  call void @fDivHandler(double %778, double %779, double %780, i64 93937689249400, i64 93937689249784, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689250192, i32 1162, i32 43), !dbg !1111
  store double %780, double* %82, align 8, !dbg !1111
  %781 = load double, double* %70, align 8, !dbg !1112
  %782 = load double, double* %12, align 8, !dbg !1113
  %783 = load double, double* %13, align 8, !dbg !1114
  %784 = call i32 @coulomb_CF2(double %781, double %782, double %783, double* %85, double* %86, i32* %91), !dbg !1115
  store i32 %784, i32* %93, align 4, !dbg !1116
  %785 = load double, double* %82, align 8, !dbg !1117
  %786 = load double, double* %85, align 8, !dbg !1118
  %787 = fsub double %785, %786, !dbg !1119
  call void @fSubHandler(double %785, double %786, double %787, i64 93937689253464, i64 93937689253848, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689254256, i32 1166, i32 31), !dbg !1120
  store double %787, double* %87, align 8, !dbg !1120
  %788 = load double, double* %87, align 8, !dbg !1121
  %789 = load double, double* %86, align 8, !dbg !1122
  %790 = fdiv double %788, %789, !dbg !1123
  call void @fDivHandler(double %788, double %789, double %790, i64 93937689255064, i64 93937689255448, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689255856, i32 1167, i32 18), !dbg !1124
  store double %790, double* %88, align 8, !dbg !1124
  %791 = load double, double* %75, align 8, !dbg !1125
  %792 = fcmp oge double %791, 0.000000e+00, !dbg !1125
  %793 = call i1 @fCmpInstHandler(double %791, double 0.000000e+00, i1 %792, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689257072, i32 1169, i32 22), !dbg !1125
  %794 = select i1 %793, i32 1, i32 -1, !dbg !1125
  %795 = sitofp i32 %794 to double, !dbg !1125
  store double %795, double* %84, align 8, !dbg !1126
  %796 = load double, double* %84, align 8, !dbg !1127
  %797 = load double, double* %87, align 8, !dbg !1128
  %798 = load double, double* %87, align 8, !dbg !1129
  %799 = fmul double %797, %798, !dbg !1130
  call void @fMulHandler(double %797, double %798, double %799, i64 93937689259832, i64 93937689260216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689260624, i32 1171, i32 45), !dbg !1131
  %800 = load double, double* %86, align 8, !dbg !1131
  %801 = fdiv double %799, %800, !dbg !1132
  call void @fDivHandler(double %799, double %800, double %801, i64 93937689260624, i64 93937689261016, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689261424, i32 1171, i32 51), !dbg !1133
  %802 = load double, double* %86, align 8, !dbg !1133
  %803 = fadd double %801, %802, !dbg !1134
  call void @fAddHandler(double %801, double %802, double %803, i64 93937689261424, i64 93937689261816, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689262224, i32 1171, i32 62), !dbg !1135
  %804 = call double @sqrt(double %803) #6, !dbg !1135
  call void @callOneArgHandler(i32 14, double %803, double %804, i64 93937689262224, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689262704, i32 1171, i32 35), !dbg !1136
  %805 = fdiv double %796, %804, !dbg !1136
  call void @fDivHandler(double %796, double %804, double %805, i64 93937689259448, i64 93937689262704, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689263184, i32 1171, i32 33), !dbg !1137
  store double %805, double* %77, align 8, !dbg !1137
  %806 = load double, double* %82, align 8, !dbg !1138
  %807 = load double, double* %77, align 8, !dbg !1139
  %808 = fmul double %806, %807, !dbg !1140
  call void @fMulHandler(double %806, double %807, double %808, i64 93937689263992, i64 93937689264376, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689264784, i32 1172, i32 36), !dbg !1141
  store double %808, double* %78, align 8, !dbg !1141
  %809 = load double, double* %88, align 8, !dbg !1142
  %810 = load double, double* %77, align 8, !dbg !1143
  %811 = fmul double %809, %810, !dbg !1144
  call void @fMulHandler(double %809, double %810, double %811, i64 93937689265592, i64 93937689265976, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689266384, i32 1173, i32 24), !dbg !1145
  store double %811, double* %79, align 8, !dbg !1145
  %812 = load double, double* %85, align 8, !dbg !1146
  %813 = load double, double* %88, align 8, !dbg !1147
  %814 = fmul double %812, %813, !dbg !1148
  call void @fMulHandler(double %812, double %813, double %814, i64 93937689267192, i64 93937689267576, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689267984, i32 1174, i32 29), !dbg !1149
  %815 = load double, double* %86, align 8, !dbg !1149
  %816 = fsub double %814, %815, !dbg !1150
  call void @fSubHandler(double %814, double %815, double %816, i64 93937689267984, i64 93937689268376, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689268784, i32 1174, i32 37), !dbg !1151
  %817 = load double, double* %77, align 8, !dbg !1151
  %818 = fmul double %816, %817, !dbg !1152
  call void @fMulHandler(double %816, double %817, double %818, i64 93937689268784, i64 93937689269176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689269584, i32 1174, i32 50), !dbg !1153
  store double %818, double* %80, align 8, !dbg !1153
  %819 = load double, double* %77, align 8, !dbg !1154
  %820 = load double, double* %75, align 8, !dbg !1155
  %821 = fdiv double %819, %820, !dbg !1156
  call void @fDivHandler(double %819, double %820, double %821, i64 93937689270392, i64 93937689270776, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689271184, i32 1177, i32 25), !dbg !1157
  store double %821, double* %89, align 8, !dbg !1157
  %822 = load double, double* %89, align 8, !dbg !1158
  %823 = load double, double* %71, align 8, !dbg !1159
  %824 = fmul double %823, %822, !dbg !1159
  call void @fMulHandler(double %823, double %822, double %824, i64 93937689272376, i64 93937689271992, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689272784, i32 1178, i32 14), !dbg !1159
  store double %824, double* %71, align 8, !dbg !1159
  %825 = load double, double* %89, align 8, !dbg !1160
  %826 = load double, double* %72, align 8, !dbg !1161
  %827 = fmul double %826, %825, !dbg !1161
  call void @fMulHandler(double %826, double %825, double %827, i64 93937689274952, i64 93937689274568, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689275360, i32 1179, i32 14), !dbg !1161
  store double %827, double* %72, align 8, !dbg !1161
  %828 = load i32, i32* %68, align 4, !dbg !1162
  %829 = load i32, i32* %15, align 4, !dbg !1162
  %830 = sub nsw i32 %828, %829, !dbg !1162
  %831 = icmp sgt i32 %830, 0, !dbg !1162
  %832 = sext i32 %830 to i64, !dbg !1162
  %833 = call i1 @iCmpInstHandler(i64 %832, i64 0, i1 %831, i32 38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689279328, i32 1182, i32 21), !dbg !1162
  br i1 %833, label %834, label %838, !dbg !1162

; <label>:834:                                    ; preds = %769
  %835 = load i32, i32* %68, align 4, !dbg !1163
  %836 = load i32, i32* %15, align 4, !dbg !1163
  %837 = sub nsw i32 %835, %836, !dbg !1163
  br label %839, !dbg !1163

; <label>:838:                                    ; preds = %769
  br label %839, !dbg !1164

; <label>:839:                                    ; preds = %838, %834
  %840 = phi i32 [ %837, %834 ], [ 0, %838 ], !dbg !1165
  store i32 %840, i32* %97, align 4, !dbg !1166
  %841 = load double, double* %70, align 8, !dbg !1167
  %842 = load i32, i32* %97, align 4, !dbg !1168
  %843 = load double, double* %12, align 8, !dbg !1169
  %844 = load double, double* %13, align 8, !dbg !1170
  %845 = load double, double* %79, align 8, !dbg !1171
  %846 = load double, double* %80, align 8, !dbg !1172
  %847 = call i32 @coulomb_G_recur(double %841, i32 %842, double %843, double %844, double %845, double %846, double* %73, double* %74), !dbg !1173
  store i32 %847, i32* %95, align 4, !dbg !1174
  %848 = load i32, i32* %90, align 4, !dbg !1175
  %849 = load i32, i32* %91, align 4, !dbg !1176
  %850 = add nsw i32 %848, %849, !dbg !1177
  %851 = load i32, i32* %96, align 4, !dbg !1178
  %852 = add nsw i32 %850, %851, !dbg !1179
  %853 = load i32, i32* %97, align 4, !dbg !1180
  %854 = add nsw i32 %852, %853, !dbg !1181
  %855 = add nsw i32 %854, 1, !dbg !1182
  %856 = sitofp i32 %855 to double, !dbg !1175
  store double %856, double* %98, align 8, !dbg !1183
  %857 = load double, double* %71, align 8, !dbg !1184
  %858 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !1185
  %859 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %858, i32 0, i32 0, !dbg !1186
  store double %857, double* %859, align 8, !dbg !1187
  %860 = load double, double* %98, align 8, !dbg !1188
  %861 = fmul double 8.000000e+00, %860, !dbg !1189
  call void @fMulHandler(double 8.000000e+00, double %860, double %861, i64 0, i64 93937689293672, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689294176, i32 1191, i32 18), !dbg !1190
  %862 = fmul double %861, 0x3CB0000000000000, !dbg !1190
  call void @fMulHandler(double %861, double 0x3CB0000000000000, double %862, i64 93937689294176, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689294560, i32 1191, i32 30), !dbg !1191
  %863 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !1191
  %864 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %863, i32 0, i32 0, !dbg !1192
  %865 = load double, double* %864, align 8, !dbg !1192
  %866 = call double @fabs(double %865) #1, !dbg !1193
  %867 = fmul double %862, %866, !dbg !1194
  call void @fMulHandler(double %862, double %866, double %867, i64 93937689294560, i64 93937689297520, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689298000, i32 1191, i32 47), !dbg !1195
  %868 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %16, align 8, !dbg !1195
  %869 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %868, i32 0, i32 1, !dbg !1196
  store double %867, double* %869, align 8, !dbg !1197
  %870 = load double, double* %72, align 8, !dbg !1198
  %871 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !1199
  %872 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %871, i32 0, i32 0, !dbg !1200
  store double %870, double* %872, align 8, !dbg !1201
  %873 = load double, double* %98, align 8, !dbg !1202
  %874 = fmul double 8.000000e+00, %873, !dbg !1203
  call void @fMulHandler(double 8.000000e+00, double %873, double %874, i64 0, i64 93937689301272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689301712, i32 1194, i32 18), !dbg !1204
  %875 = fmul double %874, 0x3CB0000000000000, !dbg !1204
  call void @fMulHandler(double %874, double 0x3CB0000000000000, double %875, i64 93937689301712, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689302096, i32 1194, i32 30), !dbg !1205
  %876 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !1205
  %877 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %876, i32 0, i32 0, !dbg !1206
  %878 = load double, double* %877, align 8, !dbg !1206
  %879 = call double @fabs(double %878) #1, !dbg !1207
  %880 = fmul double %875, %879, !dbg !1208
  call void @fMulHandler(double %875, double %879, double %880, i64 93937689302096, i64 93937689305056, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689305536, i32 1194, i32 47), !dbg !1209
  %881 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %17, align 8, !dbg !1209
  %882 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %881, i32 0, i32 1, !dbg !1210
  store double %880, double* %882, align 8, !dbg !1211
  %883 = load double, double* %73, align 8, !dbg !1212
  %884 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !1213
  %885 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %884, i32 0, i32 0, !dbg !1214
  store double %883, double* %885, align 8, !dbg !1215
  %886 = load double, double* %98, align 8, !dbg !1216
  %887 = fmul double 8.000000e+00, %886, !dbg !1217
  call void @fMulHandler(double 8.000000e+00, double %886, double %887, i64 0, i64 93937689308808, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689309248, i32 1197, i32 18), !dbg !1218
  %888 = fmul double %887, 0x3CB0000000000000, !dbg !1218
  call void @fMulHandler(double %887, double 0x3CB0000000000000, double %888, i64 93937689309248, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689309632, i32 1197, i32 30), !dbg !1219
  %889 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !1219
  %890 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %889, i32 0, i32 0, !dbg !1220
  %891 = load double, double* %890, align 8, !dbg !1220
  %892 = call double @fabs(double %891) #1, !dbg !1221
  %893 = fmul double %888, %892, !dbg !1222
  call void @fMulHandler(double %888, double %892, double %893, i64 93937689309632, i64 93937689312592, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689313072, i32 1197, i32 47), !dbg !1223
  %894 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %18, align 8, !dbg !1223
  %895 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %894, i32 0, i32 1, !dbg !1224
  store double %893, double* %895, align 8, !dbg !1225
  %896 = load double, double* %74, align 8, !dbg !1226
  %897 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !1227
  %898 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %897, i32 0, i32 0, !dbg !1228
  store double %896, double* %898, align 8, !dbg !1229
  %899 = load double, double* %98, align 8, !dbg !1230
  %900 = fmul double 8.000000e+00, %899, !dbg !1231
  call void @fMulHandler(double 8.000000e+00, double %899, double %900, i64 0, i64 93937689316344, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689316784, i32 1200, i32 18), !dbg !1232
  %901 = fmul double %900, 0x3CB0000000000000, !dbg !1232
  call void @fMulHandler(double %900, double 0x3CB0000000000000, double %901, i64 93937689316784, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689317168, i32 1200, i32 30), !dbg !1233
  %902 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !1233
  %903 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %902, i32 0, i32 0, !dbg !1234
  %904 = load double, double* %903, align 8, !dbg !1234
  %905 = call double @fabs(double %904) #1, !dbg !1235
  %906 = fmul double %901, %905, !dbg !1236
  call void @fMulHandler(double %901, double %905, double %906, i64 93937689317168, i64 93937689320128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689320608, i32 1200, i32 47), !dbg !1237
  %907 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %19, align 8, !dbg !1237
  %908 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %907, i32 0, i32 1, !dbg !1238
  store double %906, double* %908, align 8, !dbg !1239
  %909 = load double*, double** %20, align 8, !dbg !1240
  store double 0.000000e+00, double* %909, align 8, !dbg !1241
  %910 = load double*, double** %21, align 8, !dbg !1242
  store double 0.000000e+00, double* %910, align 8, !dbg !1243
  %911 = load i32, i32* %92, align 4, !dbg !1244
  %912 = icmp ne i32 %911, 0, !dbg !1244
  %913 = sext i32 %911 to i64, !dbg !1244
  %914 = call i1 @iCmpInstHandler(i64 %913, i64 0, i1 %912, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689324256, i32 1205, i32 12), !dbg !1244
  br i1 %914, label %915, label %917, !dbg !1244

; <label>:915:                                    ; preds = %839
  %916 = load i32, i32* %92, align 4, !dbg !1245
  br label %945, !dbg !1245

; <label>:917:                                    ; preds = %839
  %918 = load i32, i32* %93, align 4, !dbg !1246
  %919 = icmp ne i32 %918, 0, !dbg !1246
  %920 = sext i32 %918 to i64, !dbg !1246
  %921 = call i1 @iCmpInstHandler(i64 %920, i64 0, i1 %919, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689328800, i32 1205, i32 12), !dbg !1246
  br i1 %921, label %922, label %924, !dbg !1246

; <label>:922:                                    ; preds = %917
  %923 = load i32, i32* %93, align 4, !dbg !1247
  br label %943, !dbg !1247

; <label>:924:                                    ; preds = %917
  %925 = load i32, i32* %94, align 4, !dbg !1248
  %926 = icmp ne i32 %925, 0, !dbg !1248
  %927 = sext i32 %925 to i64, !dbg !1248
  %928 = call i1 @iCmpInstHandler(i64 %927, i64 0, i1 %926, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689333344, i32 1205, i32 12), !dbg !1248
  br i1 %928, label %929, label %931, !dbg !1248

; <label>:929:                                    ; preds = %924
  %930 = load i32, i32* %94, align 4, !dbg !1250
  br label %941, !dbg !1250

; <label>:931:                                    ; preds = %924
  %932 = load i32, i32* %95, align 4, !dbg !1252
  %933 = icmp ne i32 %932, 0, !dbg !1252
  %934 = sext i32 %932 to i64, !dbg !1252
  %935 = call i1 @iCmpInstHandler(i64 %934, i64 0, i1 %933, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i64 93937689337888, i32 1205, i32 12), !dbg !1252
  br i1 %935, label %936, label %938, !dbg !1252

; <label>:936:                                    ; preds = %931
  %937 = load i32, i32* %95, align 4, !dbg !1254
  br label %939, !dbg !1254

; <label>:938:                                    ; preds = %931
  br label %939, !dbg !1256

; <label>:939:                                    ; preds = %938, %936
  %940 = phi i32 [ %937, %936 ], [ 0, %938 ], !dbg !1258
  br label %941, !dbg !1258

; <label>:941:                                    ; preds = %939, %929
  %942 = phi i32 [ %930, %929 ], [ %940, %939 ], !dbg !1260
  br label %943, !dbg !1260

; <label>:943:                                    ; preds = %941, %922
  %944 = phi i32 [ %923, %922 ], [ %942, %941 ], !dbg !1262
  br label %945, !dbg !1262

; <label>:945:                                    ; preds = %943, %915
  %946 = phi i32 [ %916, %915 ], [ %944, %943 ], !dbg !1264
  store i32 %946, i32* %11, align 4, !dbg !1266
  br label %950, !dbg !1266

; <label>:947:                                    ; preds = %711
  br label %948

; <label>:948:                                    ; preds = %947
  br label %949

; <label>:949:                                    ; preds = %948, %216
  br label %950

; <label>:950:                                    ; preds = %949, %945, %709, %690, %558, %338, %215, %142, %141
  %951 = load i32, i32* %11, align 4, !dbg !1267
  ret i32 %951, !dbg !1267
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
  call void @fDivHandler(double 1.000000e+00, double %28, double %29, i64 0, i64 93937688836520, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689365440, i32 605, i32 31), !dbg !1291
  store double %29, double* %17, align 8, !dbg !1291
  call void @llvm.dbg.declare(metadata double* %18, metadata !1294, metadata !60), !dbg !1295
  %30 = load double, double* %8, align 8, !dbg !1296
  %31 = fadd double %30, 1.000000e+00, !dbg !1297
  call void @fAddHandler(double %30, double 1.000000e+00, double %31, i64 93937689368600, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689369008, i32 606, i32 35), !dbg !1298
  %32 = fadd double %31, 1.000000e+05, !dbg !1298
  call void @fAddHandler(double %31, double 1.000000e+05, double %32, i64 93937689369008, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689369424, i32 606, i32 41), !dbg !1295
  store double %32, double* %18, align 8, !dbg !1295
  call void @llvm.dbg.declare(metadata double* %19, metadata !1299, metadata !60), !dbg !1300
  %33 = load double, double* %8, align 8, !dbg !1301
  %34 = fadd double %33, 1.000000e+00, !dbg !1302
  call void @fAddHandler(double %33, double 1.000000e+00, double %34, i64 93937689372584, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689372992, i32 608, i32 22), !dbg !1300
  store double %34, double* %19, align 8, !dbg !1300
  call void @llvm.dbg.declare(metadata double* %20, metadata !1303, metadata !60), !dbg !1304
  %35 = load double, double* %9, align 8, !dbg !1305
  %36 = load double, double* %19, align 8, !dbg !1306
  %37 = fdiv double %35, %36, !dbg !1307
  call void @fDivHandler(double %35, double %36, double %37, i64 93937689376152, i64 93937689376504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689376912, i32 609, i32 18), !dbg !1308
  %38 = load double, double* %19, align 8, !dbg !1308
  %39 = load double, double* %17, align 8, !dbg !1309
  %40 = fmul double %38, %39, !dbg !1310
  call void @fMulHandler(double %38, double %39, double %40, i64 93937689377304, i64 93937689377688, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689378096, i32 609, i32 26), !dbg !1311
  %41 = fadd double %37, %40, !dbg !1311
  call void @fAddHandler(double %37, double %40, double %41, i64 93937689376912, i64 93937689378096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689378512, i32 609, i32 22), !dbg !1304
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
  %47 = call i1 @fCmpInstHandler(double %45, double 1.000000e-30, i1 %46, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689386432, i32 616, i32 14), !dbg !1326
  br i1 %47, label %48, label %49, !dbg !1326

; <label>:48:                                     ; preds = %6
  store double 1.000000e-30, double* %20, align 8, !dbg !1327
  br label %49, !dbg !1329

; <label>:49:                                     ; preds = %48, %6
  store double 0.000000e+00, double* %21, align 8, !dbg !1330
  %50 = load double, double* %20, align 8, !dbg !1331
  store double %50, double* %22, align 8, !dbg !1332
  br label %51, !dbg !1333, !llvm.loop !1334

; <label>:51:                                     ; preds = %123, %49
  call void @llvm.dbg.declare(metadata double* %24, metadata !1335, metadata !60), !dbg !1337
  %52 = load double, double* %19, align 8, !dbg !1338
  %53 = fadd double %52, 1.000000e+00, !dbg !1339
  call void @fAddHandler(double %52, double 1.000000e+00, double %53, i64 93937689391272, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689391680, i32 621, i32 21), !dbg !1337
  store double %53, double* %24, align 8, !dbg !1337
  call void @llvm.dbg.declare(metadata double* %25, metadata !1340, metadata !60), !dbg !1341
  %54 = load double, double* %9, align 8, !dbg !1342
  %55 = load double, double* %19, align 8, !dbg !1343
  %56 = fdiv double %54, %55, !dbg !1344
  call void @fDivHandler(double %54, double %55, double %56, i64 93937689394840, i64 93937689395192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689395600, i32 622, i32 22), !dbg !1341
  store double %56, double* %25, align 8, !dbg !1341
  call void @llvm.dbg.declare(metadata double* %26, metadata !1345, metadata !60), !dbg !1346
  %57 = load double, double* %25, align 8, !dbg !1347
  %58 = load double, double* %25, align 8, !dbg !1348
  %59 = fmul double %57, %58, !dbg !1349
  call void @fMulHandler(double %57, double %58, double %59, i64 93937689398792, i64 93937689399144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689399552, i32 623, i32 26), !dbg !1350
  %60 = fadd double 1.000000e+00, %59, !dbg !1350
  call void @fAddHandler(double 1.000000e+00, double %59, double %60, i64 0, i64 93937689399552, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689400000, i32 623, i32 22), !dbg !1346
  store double %60, double* %26, align 8, !dbg !1346
  call void @llvm.dbg.declare(metadata double* %27, metadata !1351, metadata !60), !dbg !1352
  %61 = load double, double* %19, align 8, !dbg !1353
  %62 = load double, double* %24, align 8, !dbg !1354
  %63 = fadd double %61, %62, !dbg !1355
  call void @fAddHandler(double %61, double %62, double %63, i64 93937689403160, i64 93937689403512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689403920, i32 624, i32 22), !dbg !1356
  %64 = load double, double* %17, align 8, !dbg !1356
  %65 = load double, double* %25, align 8, !dbg !1357
  %66 = load double, double* %24, align 8, !dbg !1358
  %67 = fdiv double %65, %66, !dbg !1359
  call void @fDivHandler(double %65, double %66, double %67, i64 93937689404696, i64 93937689405080, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689405488, i32 624, i32 40), !dbg !1360
  %68 = fadd double %64, %67, !dbg !1360
  call void @fAddHandler(double %64, double %67, double %68, i64 93937689404312, i64 93937689405488, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689405904, i32 624, i32 36), !dbg !1361
  %69 = fmul double %63, %68, !dbg !1361
  call void @fMulHandler(double %63, double %68, double %69, i64 93937689403920, i64 93937689405904, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689406320, i32 624, i32 28), !dbg !1352
  store double %69, double* %27, align 8, !dbg !1352
  %70 = load double, double* %27, align 8, !dbg !1362
  %71 = load double, double* %26, align 8, !dbg !1363
  %72 = load double, double* %21, align 8, !dbg !1364
  %73 = fmul double %71, %72, !dbg !1365
  call void @fMulHandler(double %71, double %72, double %73, i64 93937689408776, i64 93937689409160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689409568, i32 625, i32 21), !dbg !1366
  %74 = fsub double %70, %73, !dbg !1366
  call void @fSubHandler(double %70, double %73, double %74, i64 93937689408392, i64 93937689409568, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689409984, i32 625, i32 15), !dbg !1367
  store double %74, double* %21, align 8, !dbg !1367
  %75 = load double, double* %27, align 8, !dbg !1368
  %76 = load double, double* %26, align 8, !dbg !1369
  %77 = load double, double* %22, align 8, !dbg !1370
  %78 = fdiv double %76, %77, !dbg !1371
  call void @fDivHandler(double %76, double %77, double %78, i64 93937689411176, i64 93937689411560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689411968, i32 626, i32 21), !dbg !1372
  %79 = fsub double %75, %78, !dbg !1372
  call void @fSubHandler(double %75, double %78, double %79, i64 93937689410792, i64 93937689411968, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689412384, i32 626, i32 15), !dbg !1373
  store double %79, double* %22, align 8, !dbg !1373
  %80 = load double, double* %22, align 8, !dbg !1374
  %81 = call double @fabs(double %80) #1, !dbg !1376
  %82 = fcmp olt double %81, 1.000000e-30, !dbg !1377
  %83 = call i1 @fCmpInstHandler(double %81, double 1.000000e-30, i1 %82, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689414176, i32 627, i32 16), !dbg !1378
  br i1 %83, label %84, label %85, !dbg !1378

; <label>:84:                                     ; preds = %51
  store double 1.000000e-30, double* %22, align 8, !dbg !1379
  br label %85, !dbg !1381

; <label>:85:                                     ; preds = %84, %51
  %86 = load double, double* %21, align 8, !dbg !1382
  %87 = call double @fabs(double %86) #1, !dbg !1384
  %88 = fcmp olt double %87, 1.000000e-30, !dbg !1385
  %89 = call i1 @fCmpInstHandler(double %87, double 1.000000e-30, i1 %88, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689416912, i32 628, i32 16), !dbg !1386
  br i1 %89, label %90, label %91, !dbg !1386

; <label>:90:                                     ; preds = %85
  store double 1.000000e-30, double* %21, align 8, !dbg !1387
  br label %91, !dbg !1389

; <label>:91:                                     ; preds = %90, %85
  %92 = load double, double* %21, align 8, !dbg !1390
  %93 = fdiv double 1.000000e+00, %92, !dbg !1391
  call void @fDivHandler(double 1.000000e+00, double %92, double %93, i64 0, i64 93937689418728, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689419104, i32 629, i32 12), !dbg !1392
  store double %93, double* %21, align 8, !dbg !1392
  %94 = load double, double* %21, align 8, !dbg !1393
  %95 = load double, double* %22, align 8, !dbg !1394
  %96 = fmul double %94, %95, !dbg !1395
  call void @fMulHandler(double %94, double %95, double %96, i64 93937689419880, i64 93937689420264, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689420672, i32 630, i32 12), !dbg !1396
  store double %96, double* %23, align 8, !dbg !1396
  %97 = load double, double* %20, align 8, !dbg !1397
  %98 = load double, double* %23, align 8, !dbg !1398
  %99 = fmul double %97, %98, !dbg !1399
  call void @fMulHandler(double %97, double %98, double %99, i64 93937689421480, i64 93937689421864, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689422272, i32 631, i32 12), !dbg !1400
  store double %99, double* %20, align 8, !dbg !1400
  %100 = load double, double* %21, align 8, !dbg !1401
  %101 = fcmp olt double %100, 0.000000e+00, !dbg !1403
  %102 = call i1 @fCmpInstHandler(double %100, double 0.000000e+00, i1 %101, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689423488, i32 632, i32 10), !dbg !1404
  br i1 %102, label %103, label %108, !dbg !1404

; <label>:103:                                    ; preds = %91
  %104 = load double*, double** %11, align 8, !dbg !1405
  %105 = load double, double* %104, align 8, !dbg !1407
  %106 = fsub double -0.000000e+00, %105, !dbg !1408
  call void @fSubHandler(double -0.000000e+00, double %105, double %106, i64 0, i64 93937689424920, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689425328, i32 634, i32 19), !dbg !1409
  %107 = load double*, double** %11, align 8, !dbg !1409
  store double %106, double* %107, align 8, !dbg !1410
  br label %108, !dbg !1411

; <label>:108:                                    ; preds = %103, %91
  %109 = load double, double* %24, align 8, !dbg !1412
  store double %109, double* %19, align 8, !dbg !1413
  %110 = load double, double* %19, align 8, !dbg !1414
  %111 = load double, double* %18, align 8, !dbg !1416
  %112 = fcmp ogt double %110, %111, !dbg !1417
  %113 = call i1 @fCmpInstHandler(double %110, double %111, i1 %112, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689428432, i32 637, i32 12), !dbg !1418
  br i1 %113, label %114, label %119, !dbg !1418

; <label>:114:                                    ; preds = %108
  %115 = load double, double* %20, align 8, !dbg !1419
  %116 = load double*, double** %12, align 8, !dbg !1421
  store double %115, double* %116, align 8, !dbg !1422
  br label %117, !dbg !1423, !llvm.loop !1424

; <label>:117:                                    ; preds = %114
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 639, i32 10), !dbg !1425
  store i32 10, i32* %7, align 4, !dbg !1425
  br label %132, !dbg !1425
                                                  ; No predecessors!
  br label %119, !dbg !1428

; <label>:119:                                    ; preds = %118, %108
  %120 = load i32*, i32** %13, align 8, !dbg !1429
  %121 = load i32, i32* %120, align 4, !dbg !1430
  %122 = add nsw i32 %121, 1, !dbg !1430
  store i32 %122, i32* %120, align 4, !dbg !1430
  br label %123, !dbg !1431

; <label>:123:                                    ; preds = %119
  %124 = load double, double* %23, align 8, !dbg !1432
  %125 = fsub double %124, 1.000000e+00, !dbg !1433
  call void @fSubHandler(double %124, double 1.000000e+00, double %125, i64 93937689437544, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689437920, i32 643, i32 16), !dbg !1434
  %126 = call double @fabs(double %125) #1, !dbg !1434
  %127 = fcmp ogt double %126, 0x3CC0000000000000, !dbg !1435
  %128 = call i1 @fCmpInstHandler(double %126, double 0x3CC0000000000000, i1 %127, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @11, i32 0, i32 0), i64 93937689438848, i32 643, i32 22), !dbg !1436
  br i1 %128, label %51, label %129, !dbg !1436, !llvm.loop !1334

; <label>:129:                                    ; preds = %123
  %130 = load double, double* %20, align 8, !dbg !1438
  %131 = load double*, double** %12, align 8, !dbg !1439
  store double %130, double* %131, align 8, !dbg !1440
  store i32 0, i32* %7, align 4, !dbg !1441
  br label %132, !dbg !1441

; <label>:132:                                    ; preds = %129, %117
  %133 = load i32, i32* %7, align 4, !dbg !1442
  ret i32 %133, !dbg !1442
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
  call void @fDivHandler(double 1.000000e+00, double %27, double %28, i64 0, i64 93937688735000, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689460688, i32 526, i32 21), !dbg !1463
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
  call void @fAddHandler(double %31, double %33, double %34, i64 93937689470152, i64 93937689470888, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689472560, i32 529, i32 28), !dbg !1473
  store double %34, double* %20, align 8, !dbg !1473
  call void @llvm.dbg.declare(metadata double* %21, metadata !1477, metadata !60), !dbg !1478
  %35 = load double, double* %20, align 8, !dbg !1479
  store double %35, double* %21, align 8, !dbg !1478
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1480, metadata !60), !dbg !1481
  %36 = load i32, i32* %10, align 4, !dbg !1482
  %37 = sub nsw i32 %36, 1, !dbg !1484
  store i32 %37, i32* %22, align 4, !dbg !1485
  br label %38, !dbg !1486

; <label>:38:                                     ; preds = %71, %8
  %39 = load i32, i32* %22, align 4, !dbg !1487
  %40 = icmp sge i32 %39, 0, !dbg !1490
  %41 = sext i32 %39 to i64, !dbg !1491
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 0, i1 %40, i32 39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689480960, i32 533, i32 18), !dbg !1491
  br i1 %42, label %43, label %74, !dbg !1491

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %23, metadata !1492, metadata !60), !dbg !1494
  %44 = load double, double* %11, align 8, !dbg !1495
  %45 = load double, double* %21, align 8, !dbg !1496
  %46 = fdiv double %44, %45, !dbg !1497
  call void @fDivHandler(double %44, double %45, double %46, i64 93937689483128, i64 93937689483480, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689483888, i32 534, i32 20), !dbg !1494
  store double %46, double* %23, align 8, !dbg !1494
  call void @llvm.dbg.declare(metadata double* %24, metadata !1498, metadata !60), !dbg !1499
  %47 = load double, double* %23, align 8, !dbg !1500
  %48 = call double @hypot(double 1.000000e+00, double %47) #6, !dbg !1501
  store double %48, double* %24, align 8, !dbg !1499
  call void @llvm.dbg.declare(metadata double* %25, metadata !1502, metadata !60), !dbg !1503
  %49 = load double, double* %23, align 8, !dbg !1504
  %50 = load double, double* %21, align 8, !dbg !1505
  %51 = load double, double* %17, align 8, !dbg !1506
  %52 = fmul double %50, %51, !dbg !1507
  call void @fMulHandler(double %50, double %51, double %52, i64 93937689491144, i64 93937689491528, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689491936, i32 536, i32 26), !dbg !1508
  %53 = fadd double %49, %52, !dbg !1508
  call void @fAddHandler(double %49, double %52, double %53, i64 93937689490792, i64 93937689491936, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689492352, i32 536, i32 21), !dbg !1503
  store double %53, double* %25, align 8, !dbg !1503
  call void @llvm.dbg.declare(metadata double* %26, metadata !1509, metadata !60), !dbg !1510
  %54 = load double, double* %18, align 8, !dbg !1511
  %55 = load double, double* %25, align 8, !dbg !1512
  %56 = fmul double %54, %55, !dbg !1513
  call void @fMulHandler(double %54, double %55, double %56, i64 93937689495544, i64 93937689495896, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689496304, i32 538, i32 18), !dbg !1514
  %57 = load double, double* %19, align 8, !dbg !1514
  %58 = fadd double %56, %57, !dbg !1515
  call void @fAddHandler(double %56, double %57, double %58, i64 93937689496304, i64 93937689496696, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689497104, i32 538, i32 22), !dbg !1516
  %59 = load double, double* %24, align 8, !dbg !1516
  %60 = fdiv double %58, %59, !dbg !1517
  call void @fDivHandler(double %58, double %59, double %60, i64 93937689497104, i64 93937689497496, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689497904, i32 538, i32 28), !dbg !1518
  store double %60, double* %26, align 8, !dbg !1518
  %61 = load double, double* %26, align 8, !dbg !1519
  %62 = load double, double* %25, align 8, !dbg !1520
  %63 = fmul double %61, %62, !dbg !1521
  call void @fMulHandler(double %61, double %62, double %63, i64 93937689498712, i64 93937689499096, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689499504, i32 539, i32 21), !dbg !1522
  %64 = load double, double* %18, align 8, !dbg !1522
  %65 = load double, double* %24, align 8, !dbg !1523
  %66 = fmul double %64, %65, !dbg !1524
  call void @fMulHandler(double %64, double %65, double %66, i64 93937689499896, i64 93937689500280, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689500688, i32 539, i32 30), !dbg !1525
  %67 = fsub double %63, %66, !dbg !1525
  call void @fSubHandler(double %63, double %66, double %67, i64 93937689499504, i64 93937689500688, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689501104, i32 539, i32 25), !dbg !1526
  store double %67, double* %19, align 8, !dbg !1526
  %68 = load double, double* %26, align 8, !dbg !1527
  store double %68, double* %18, align 8, !dbg !1528
  %69 = load double, double* %21, align 8, !dbg !1529
  %70 = fsub double %69, 1.000000e+00, !dbg !1529
  call void @fSubHandler(double %69, double 1.000000e+00, double %70, i64 93937689502712, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @13, i32 0, i32 0), i64 93937689503152, i32 541, i32 9), !dbg !1529
  store double %70, double* %21, align 8, !dbg !1529
  br label %71, !dbg !1530

; <label>:71:                                     ; preds = %43
  %72 = load i32, i32* %22, align 4, !dbg !1531
  %73 = add nsw i32 %72, -1, !dbg !1531
  store i32 %73, i32* %22, align 4, !dbg !1531
  br label %38, !dbg !1533, !llvm.loop !1534

; <label>:74:                                     ; preds = %38
  %75 = load double, double* %18, align 8, !dbg !1536
  %76 = load double*, double** %15, align 8, !dbg !1537
  store double %75, double* %76, align 8, !dbg !1538
  %77 = load double, double* %19, align 8, !dbg !1539
  %78 = load double*, double** %16, align 8, !dbg !1540
  store double %77, double* %78, align 8, !dbg !1541
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
  call void @callOneArgHandler(i32 14, double %29, double %30, i64 93937688856456, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689523472, i32 455, i32 22), !dbg !1557
  store double %30, double* %11, align 8, !dbg !1557
  call void @llvm.dbg.declare(metadata double* %12, metadata !1560, metadata !60), !dbg !1561
  %31 = load double, double* %7, align 8, !dbg !1562
  %32 = load double, double* %7, align 8, !dbg !1563
  %33 = fmul double %31, %32, !dbg !1564
  call void @fMulHandler(double %31, double %32, double %33, i64 93937689526728, i64 93937689527080, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689527488, i32 456, i32 23), !dbg !1561
  store double %33, double* %12, align 8, !dbg !1561
  call void @llvm.dbg.declare(metadata double* %13, metadata !1565, metadata !60), !dbg !1566
  %34 = load double, double* %6, align 8, !dbg !1567
  %35 = fmul double 2.000000e+00, %34, !dbg !1568
  call void @fMulHandler(double 2.000000e+00, double %34, double %35, i64 0, i64 93937689530680, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689531088, i32 457, i32 25), !dbg !1569
  %36 = load double, double* %7, align 8, !dbg !1569
  %37 = fmul double %35, %36, !dbg !1570
  call void @fMulHandler(double %35, double %36, double %37, i64 93937689531088, i64 93937689531448, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689531856, i32 457, i32 29), !dbg !1566
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
  call void @fMulHandler(double %40, double %41, double %42, i64 93937689542616, i64 93937689542968, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689543376, i32 461, i32 22), !dbg !1580
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
  call void @fMulHandler(double 2.000000e+00, double %45, double %46, i64 0, i64 93937689559336, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689559776, i32 471, i32 24), !dbg !1608
  %47 = call i32 @gsl_sf_psi_1piy_e(double %46, %struct.gsl_sf_result_struct* %26), !dbg !1608
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1609
  %49 = load double, double* %48, align 8, !dbg !1609
  %50 = fsub double 0x3FDD85ADF3CA6486, %49, !dbg !1610
  call void @fSubHandler(double 0x3FDD85ADF3CA6486, double %49, double %50, i64 0, i64 93937689561112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689562848, i32 473, i32 31), !dbg !1611
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !1611
  %52 = load double, double* %51, align 8, !dbg !1611
  %53 = fmul double 2.000000e+00, %52, !dbg !1612
  call void @fMulHandler(double 2.000000e+00, double %52, double %53, i64 0, i64 93937689563688, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689565392, i32 473, i32 51), !dbg !1613
  %54 = fadd double %50, %53, !dbg !1613
  call void @fAddHandler(double %50, double %53, double %54, i64 93937689562848, i64 93937689565392, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689565776, i32 473, i32 46), !dbg !1614
  store double %54, double* %19, align 8, !dbg !1614
  %55 = load double, double* %13, align 8, !dbg !1615
  %56 = load double, double* %19, align 8, !dbg !1616
  %57 = load double, double* %16, align 8, !dbg !1617
  %58 = fmul double 2.000000e+00, %57, !dbg !1618
  call void @fMulHandler(double 2.000000e+00, double %57, double %58, i64 0, i64 93937689567352, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689567792, i32 474, i32 27), !dbg !1619
  %59 = fsub double %56, %58, !dbg !1619
  call void @fSubHandler(double %56, double %58, double %59, i64 93937689566968, i64 93937689567792, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689568176, i32 474, i32 22), !dbg !1620
  %60 = fmul double %55, %59, !dbg !1620
  call void @fMulHandler(double %55, double %59, double %60, i64 93937689566584, i64 93937689568176, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689568592, i32 474, i32 14), !dbg !1621
  store double %60, double* %20, align 8, !dbg !1621
  %61 = load double, double* %16, align 8, !dbg !1622
  %62 = load double, double* %17, align 8, !dbg !1623
  %63 = fadd double %61, %62, !dbg !1624
  call void @fAddHandler(double %61, double %62, double %63, i64 93937689569400, i64 93937689569784, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689570192, i32 476, i32 17), !dbg !1625
  store double %63, double* %22, align 8, !dbg !1625
  %64 = load double, double* %19, align 8, !dbg !1626
  %65 = load double, double* %20, align 8, !dbg !1627
  %66 = fadd double %64, %65, !dbg !1628
  call void @fAddHandler(double %64, double %65, double %66, i64 93937689571000, i64 93937689571384, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689571792, i32 477, i32 17), !dbg !1629
  store double %66, double* %23, align 8, !dbg !1629
  br label %67, !dbg !1630

; <label>:67:                                     ; preds = %127, %4
  %68 = load i32, i32* %27, align 4, !dbg !1631
  %69 = icmp slt i32 %68, 800, !dbg !1633
  %70 = sext i32 %68 to i64, !dbg !1634
  %71 = call i1 @iCmpInstHandler(i64 %70, i64 800, i1 %69, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689573472, i32 479, i32 11), !dbg !1634
  br i1 %71, label %72, label %134, !dbg !1634

; <label>:72:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata double* %28, metadata !1635, metadata !60), !dbg !1637
  %73 = load i32, i32* %27, align 4, !dbg !1638
  %74 = load i32, i32* %27, align 4, !dbg !1639
  %75 = mul nsw i32 %73, %74, !dbg !1640
  %76 = sitofp i32 %75 to double, !dbg !1638
  store double %76, double* %28, align 8, !dbg !1637
  %77 = load double, double* %13, align 8, !dbg !1641
  %78 = load double, double* %17, align 8, !dbg !1642
  %79 = fmul double %77, %78, !dbg !1643
  call void @fMulHandler(double %77, double %78, double %79, i64 93937689580168, i64 93937689580552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689580960, i32 481, i32 15), !dbg !1644
  %80 = load double, double* %12, align 8, !dbg !1644
  %81 = load double, double* %16, align 8, !dbg !1645
  %82 = fmul double %80, %81, !dbg !1646
  call void @fMulHandler(double %80, double %81, double %82, i64 93937689581352, i64 93937689581736, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689582144, i32 481, i32 26), !dbg !1647
  %83 = fsub double %79, %82, !dbg !1647
  call void @fSubHandler(double %79, double %82, double %83, i64 93937689580960, i64 93937689582144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689582560, i32 481, i32 22), !dbg !1648
  %84 = load double, double* %28, align 8, !dbg !1648
  %85 = fdiv double %83, %84, !dbg !1649
  call void @fDivHandler(double %83, double %84, double %85, i64 93937689582560, i64 93937689582952, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689583360, i32 481, i32 33), !dbg !1650
  store double %85, double* %18, align 8, !dbg !1650
  %86 = load double, double* %13, align 8, !dbg !1651
  %87 = load double, double* %20, align 8, !dbg !1652
  %88 = fmul double %86, %87, !dbg !1653
  call void @fMulHandler(double %86, double %87, double %88, i64 93937689584168, i64 93937689584552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689584960, i32 482, i32 15), !dbg !1654
  %89 = load double, double* %12, align 8, !dbg !1654
  %90 = load double, double* %19, align 8, !dbg !1655
  %91 = fmul double %89, %90, !dbg !1656
  call void @fMulHandler(double %89, double %90, double %91, i64 93937689585352, i64 93937689585736, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689586144, i32 482, i32 26), !dbg !1657
  %92 = fsub double %88, %91, !dbg !1657
  call void @fSubHandler(double %88, double %91, double %92, i64 93937689584960, i64 93937689586144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689586560, i32 482, i32 22), !dbg !1658
  %93 = load i32, i32* %27, align 4, !dbg !1658
  %94 = sitofp i32 %93 to double, !dbg !1658
  %95 = fmul double 2.000000e+00, %94, !dbg !1659
  call void @fMulHandler(double 2.000000e+00, double %94, double %95, i64 0, i64 93937689587336, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689589040, i32 482, i32 38), !dbg !1660
  %96 = load double, double* %18, align 8, !dbg !1660
  %97 = fmul double %95, %96, !dbg !1661
  call void @fMulHandler(double %95, double %96, double %97, i64 93937689589040, i64 93937689589400, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689589808, i32 482, i32 40), !dbg !1662
  %98 = fsub double %92, %97, !dbg !1662
  call void @fSubHandler(double %92, double %97, double %98, i64 93937689586560, i64 93937689589808, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689590224, i32 482, i32 33), !dbg !1663
  %99 = load double, double* %28, align 8, !dbg !1663
  %100 = fdiv double %98, %99, !dbg !1664
  call void @fDivHandler(double %98, double %99, double %100, i64 93937689590224, i64 93937689590616, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689591024, i32 482, i32 45), !dbg !1665
  store double %100, double* %21, align 8, !dbg !1665
  %101 = load double, double* %18, align 8, !dbg !1666
  %102 = load double, double* %22, align 8, !dbg !1667
  %103 = fadd double %102, %101, !dbg !1667
  call void @fAddHandler(double %102, double %101, double %103, i64 93937689592216, i64 93937689591832, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689592624, i32 483, i32 11), !dbg !1667
  store double %103, double* %22, align 8, !dbg !1667
  %104 = load double, double* %21, align 8, !dbg !1668
  %105 = load double, double* %23, align 8, !dbg !1669
  %106 = fadd double %105, %104, !dbg !1669
  call void @fAddHandler(double %105, double %104, double %106, i64 93937689594792, i64 93937689594408, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689595200, i32 484, i32 11), !dbg !1669
  store double %106, double* %23, align 8, !dbg !1669
  %107 = load double, double* %22, align 8, !dbg !1670
  %108 = fcmp une double %107, 0.000000e+00, !dbg !1672
  %109 = call i1 @fCmpInstHandler(double %107, double 0.000000e+00, i1 %108, i32 14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689597392, i32 485, i32 17), !dbg !1673
  br i1 %109, label %110, label %127, !dbg !1673

; <label>:110:                                    ; preds = %72
  %111 = load double, double* %23, align 8, !dbg !1674
  %112 = fcmp une double %111, 0.000000e+00, !dbg !1676
  %113 = call i1 @fCmpInstHandler(double %111, double 0.000000e+00, i1 %112, i32 14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689598848, i32 486, i32 17), !dbg !1677
  br i1 %113, label %114, label %127, !dbg !1677

; <label>:114:                                    ; preds = %110
  %115 = load double, double* %18, align 8, !dbg !1678
  %116 = load double, double* %22, align 8, !dbg !1679
  %117 = fdiv double %115, %116, !dbg !1680
  call void @fDivHandler(double %115, double %116, double %117, i64 93937689599816, i64 93937689600136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689600544, i32 487, i32 20), !dbg !1681
  %118 = call double @fabs(double %117) #1, !dbg !1681
  %119 = load double, double* %21, align 8, !dbg !1682
  %120 = load double, double* %23, align 8, !dbg !1683
  %121 = fdiv double %119, %120, !dbg !1684
  call void @fDivHandler(double %119, double %120, double %121, i64 93937689601480, i64 93937689601864, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689602272, i32 487, i32 38), !dbg !1685
  %122 = call double @fabs(double %121) #1, !dbg !1685
  %123 = fadd double %118, %122, !dbg !1687
  call void @fAddHandler(double %118, double %122, double %123, i64 93937689601024, i64 93937689602752, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689603232, i32 487, i32 28), !dbg !1688
  %124 = fcmp olt double %123, 0x3CE4000000000000, !dbg !1688
  %125 = call i1 @fCmpInstHandler(double %123, double 0x3CE4000000000000, i1 %124, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689603712, i32 487, i32 46), !dbg !1689
  br i1 %125, label %126, label %127, !dbg !1689

; <label>:126:                                    ; preds = %114
  br label %134, !dbg !1691

; <label>:127:                                    ; preds = %114, %110, %72
  %128 = load double, double* %17, align 8, !dbg !1693
  store double %128, double* %16, align 8, !dbg !1694
  %129 = load double, double* %18, align 8, !dbg !1695
  store double %129, double* %17, align 8, !dbg !1696
  %130 = load double, double* %20, align 8, !dbg !1697
  store double %130, double* %19, align 8, !dbg !1698
  %131 = load double, double* %21, align 8, !dbg !1699
  store double %131, double* %20, align 8, !dbg !1700
  %132 = load i32, i32* %27, align 4, !dbg !1701
  %133 = add nsw i32 %132, 1, !dbg !1701
  store i32 %133, i32* %27, align 4, !dbg !1701
  br label %67, !dbg !1702, !llvm.loop !1704

; <label>:134:                                    ; preds = %126, %67
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1705
  %136 = load double, double* %135, align 8, !dbg !1705
  %137 = load double, double* %11, align 8, !dbg !1706
  %138 = fmul double %136, %137, !dbg !1707
  call void @fMulHandler(double %136, double %137, double %138, i64 93937689613448, i64 93937689615096, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689615504, i32 495, i32 23), !dbg !1708
  %139 = load double, double* %22, align 8, !dbg !1708
  %140 = fmul double %138, %139, !dbg !1709
  call void @fMulHandler(double %138, double %139, double %140, i64 93937689615504, i64 93937689615896, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689616304, i32 495, i32 28), !dbg !1710
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1710
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 0, !dbg !1711
  store double %140, double* %142, align 8, !dbg !1712
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1713
  %144 = load double, double* %143, align 8, !dbg !1713
  %145 = load double, double* %11, align 8, !dbg !1714
  %146 = load double, double* %22, align 8, !dbg !1715
  %147 = fmul double %145, %146, !dbg !1716
  call void @fMulHandler(double %145, double %146, double %147, i64 93937689620040, i64 93937689620424, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689620832, i32 496, i32 33), !dbg !1717
  %148 = call double @fabs(double %147) #1, !dbg !1717
  %149 = fmul double %144, %148, !dbg !1718
  call void @fMulHandler(double %144, double %148, double %149, i64 93937689618392, i64 93937689621312, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689621792, i32 496, i32 23), !dbg !1719
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1719
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !1720
  %152 = load double, double* %151, align 8, !dbg !1720
  %153 = call double @fabs(double %152) #1, !dbg !1721
  %154 = fmul double 0x3CC0000000000000, %153, !dbg !1722
  call void @fMulHandler(double 0x3CC0000000000000, double %153, double %154, i64 0, i64 93937689624752, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689625232, i32 496, i32 63), !dbg !1723
  %155 = fadd double %149, %154, !dbg !1723
  call void @fAddHandler(double %149, double %154, double %155, i64 93937689621792, i64 93937689625232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689625648, i32 496, i32 42), !dbg !1724
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1724
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 1, !dbg !1725
  store double %155, double* %157, align 8, !dbg !1726
  %158 = load double, double* %22, align 8, !dbg !1727
  %159 = load double, double* %7, align 8, !dbg !1728
  %160 = call double @log(double %159) #6, !dbg !1729
  call void @callOneArgHandler(i32 12, double %159, double %160, i64 93937689627672, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689628416, i32 498, i32 16), !dbg !1730
  %161 = fmul double %158, %160, !dbg !1730
  call void @fMulHandler(double %158, double %160, double %161, i64 93937689627288, i64 93937689628416, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689628928, i32 498, i32 15), !dbg !1731
  store double %161, double* %24, align 8, !dbg !1731
  %162 = load double, double* %11, align 8, !dbg !1732
  %163 = fsub double -0.000000e+00, %162, !dbg !1733
  call void @fSubHandler(double -0.000000e+00, double %162, double %163, i64 0, i64 93937689629736, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689630144, i32 499, i32 12), !dbg !1734
  %164 = load double, double* %24, align 8, !dbg !1734
  %165 = load double, double* %23, align 8, !dbg !1735
  %166 = fadd double %164, %165, !dbg !1736
  call void @fAddHandler(double %164, double %165, double %166, i64 93937689630536, i64 93937689630920, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689631328, i32 499, i32 22), !dbg !1737
  %167 = fmul double %163, %166, !dbg !1737
  call void @fMulHandler(double %163, double %166, double %167, i64 93937689630144, i64 93937689631328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689631744, i32 499, i32 15), !dbg !1738
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1738
  %169 = load double, double* %168, align 8, !dbg !1738
  %170 = fdiv double %167, %169, !dbg !1739
  call void @fDivHandler(double %167, double %169, double %170, i64 93937689631744, i64 93937689632584, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689634256, i32 499, i32 30), !dbg !1740
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1740
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 0, !dbg !1741
  store double %170, double* %172, align 8, !dbg !1742
  %173 = load double, double* %11, align 8, !dbg !1743
  %174 = call double @fabs(double %173) #1, !dbg !1744
  %175 = load double, double* %24, align 8, !dbg !1745
  %176 = call double @fabs(double %175) #1, !dbg !1746
  %177 = load double, double* %23, align 8, !dbg !1747
  %178 = call double @fabs(double %177) #1, !dbg !1748
  %179 = fadd double %176, %178, !dbg !1749
  call void @fAddHandler(double %176, double %178, double %179, i64 93937689637296, i64 93937689638224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689638704, i32 500, i32 33), !dbg !1750
  %180 = fmul double %174, %179, !dbg !1750
  call void @fMulHandler(double %174, double %179, double %180, i64 93937689636368, i64 93937689638704, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689639120, i32 500, i32 20), !dbg !1751
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1751
  %182 = load double, double* %181, align 8, !dbg !1751
  %183 = call double @fabs(double %182) #1, !dbg !1752
  %184 = fdiv double %180, %183, !dbg !1754
  call void @fDivHandler(double %180, double %183, double %184, i64 93937689639120, i64 93937689641696, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689642176, i32 500, i32 47), !dbg !1755
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1755
  %186 = load double, double* %185, align 8, !dbg !1755
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1756
  %188 = load double, double* %187, align 8, !dbg !1756
  %189 = fdiv double %186, %188, !dbg !1757
  call void @fDivHandler(double %186, double %188, double %189, i64 93937689643016, i64 93937689645112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689646784, i32 500, i32 82), !dbg !1758
  %190 = call double @fabs(double %189) #1, !dbg !1758
  %191 = fmul double %184, %190, !dbg !1760
  call void @fMulHandler(double %184, double %190, double %191, i64 93937689642176, i64 93937689647264, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689647744, i32 500, i32 65), !dbg !1761
  %192 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1761
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %192, i32 0, i32 1, !dbg !1762
  store double %191, double* %193, align 8, !dbg !1763
  %194 = load i32, i32* %27, align 4, !dbg !1764
  %195 = icmp eq i32 %194, 800, !dbg !1766
  %196 = sext i32 %194 to i64, !dbg !1767
  %197 = call i1 @iCmpInstHandler(i64 %196, i64 800, i1 %195, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @15, i32 0, i32 0), i64 93937689649792, i32 502, i32 8), !dbg !1767
  br i1 %197, label %198, label %201, !dbg !1767

; <label>:198:                                    ; preds = %134
  br label %199, !dbg !1768, !llvm.loop !1769

; <label>:199:                                    ; preds = %198
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 503, i32 11), !dbg !1770
  store i32 11, i32* %5, align 4, !dbg !1770
  br label %203, !dbg !1770
                                                  ; No predecessors!
  br label %203, !dbg !1773

; <label>:201:                                    ; preds = %134
  %202 = load i32, i32* %15, align 4, !dbg !1775
  store i32 %202, i32* %5, align 4, !dbg !1776
  br label %203, !dbg !1776

; <label>:203:                                    ; preds = %201, %200, %199
  %204 = load i32, i32* %5, align 4, !dbg !1777
  ret i32 %204, !dbg !1777
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
  call void @fMulHandler(double %38, double %39, double %40, i64 93937688860536, i64 93937689670424, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689670832, i32 372, i32 23), !dbg !1790
  store double %40, double* %11, align 8, !dbg !1790
  call void @llvm.dbg.declare(metadata double* %12, metadata !1794, metadata !60), !dbg !1795
  %41 = load double, double* %6, align 8, !dbg !1796
  %42 = fmul double 2.000000e+00, %41, !dbg !1797
  call void @fMulHandler(double 2.000000e+00, double %41, double %42, i64 0, i64 93937689674024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689674432, i32 373, i32 25), !dbg !1798
  %43 = load double, double* %7, align 8, !dbg !1798
  %44 = fmul double %42, %43, !dbg !1799
  call void @fMulHandler(double %42, double %43, double %44, i64 93937689674432, i64 93937689674792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689675200, i32 373, i32 29), !dbg !1795
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
  call void @fAddHandler(double 0x3FC3C467E37DB0C8, double %52, double %53, i64 0, i64 93937689698536, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689700272, i32 382, i32 38), !dbg !1826
  %54 = fmul double %50, %53, !dbg !1826
  call void @fMulHandler(double %50, double %53, double %54, i64 93937689697736, i64 93937689700272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689700688, i32 382, i32 21), !dbg !1822
  store double %54, double* %21, align 8, !dbg !1822
  call void @llvm.dbg.declare(metadata double* %22, metadata !1827, metadata !60), !dbg !1828
  call void @llvm.dbg.declare(metadata double* %23, metadata !1829, metadata !60), !dbg !1830
  %55 = load double, double* %17, align 8, !dbg !1831
  %56 = load double, double* %18, align 8, !dbg !1832
  %57 = fadd double %55, %56, !dbg !1833
  call void @fAddHandler(double %55, double %56, double %57, i64 93937689704968, i64 93937689705320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689705728, i32 384, i32 24), !dbg !1830
  store double %57, double* %23, align 8, !dbg !1830
  call void @llvm.dbg.declare(metadata double* %24, metadata !1834, metadata !60), !dbg !1835
  %58 = load double, double* %20, align 8, !dbg !1836
  %59 = load double, double* %21, align 8, !dbg !1837
  %60 = fadd double %58, %59, !dbg !1838
  call void @fAddHandler(double %58, double %59, double %60, i64 93937689708920, i64 93937689709272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689709680, i32 385, i32 24), !dbg !1835
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
  call void @fMulHandler(double 0x3CC0000000000000, double %66, double %67, i64 0, i64 93937689215200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689215680, i32 389, i32 44), !dbg !1850
  store double %67, double* %28, align 8, !dbg !1850
  call void @llvm.dbg.declare(metadata double* %29, metadata !1854, metadata !60), !dbg !1855
  %68 = load double, double* %24, align 8, !dbg !1856
  %69 = call double @fabs(double %68) #1, !dbg !1857
  %70 = fmul double 0x3CC0000000000000, %69, !dbg !1858
  call void @fMulHandler(double 0x3CC0000000000000, double %69, double %70, i64 0, i64 93937689219312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689219792, i32 390, i32 44), !dbg !1855
  store double %70, double* %29, align 8, !dbg !1855
  call void @llvm.dbg.declare(metadata double* %30, metadata !1859, metadata !60), !dbg !1860
  %71 = load double, double* %7, align 8, !dbg !1861
  %72 = fmul double 2.000000e+00, %71, !dbg !1862
  call void @fMulHandler(double 2.000000e+00, double %71, double %72, i64 0, i64 93937689222984, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689743968, i32 391, i32 24), !dbg !1863
  %73 = call double @log(double %72) #6, !dbg !1863
  call void @callOneArgHandler(i32 12, double %72, double %73, i64 93937689743968, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689744448, i32 391, i32 17), !dbg !1860
  store double %73, double* %30, align 8, !dbg !1860
  br label %74, !dbg !1864

; <label>:74:                                     ; preds = %178, %4
  %75 = load i32, i32* %27, align 4, !dbg !1865
  %76 = icmp slt i32 %75, 800, !dbg !1867
  %77 = sext i32 %75 to i64, !dbg !1868
  %78 = call i1 @iCmpInstHandler(i64 %77, i64 800, i1 %76, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689747456, i32 393, i32 11), !dbg !1868
  br i1 %78, label %79, label %187, !dbg !1868

; <label>:79:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata double* %31, metadata !1869, metadata !60), !dbg !1871
  call void @llvm.dbg.declare(metadata double* %32, metadata !1872, metadata !60), !dbg !1873
  call void @llvm.dbg.declare(metadata double* %33, metadata !1874, metadata !60), !dbg !1875
  %80 = load i32, i32* %27, align 4, !dbg !1876
  %81 = sitofp i32 %80 to double, !dbg !1876
  %82 = load i32, i32* %27, align 4, !dbg !1877
  %83 = sitofp i32 %82 to double, !dbg !1877
  %84 = fsub double %83, 1.000000e+00, !dbg !1878
  call void @fSubHandler(double %83, double 1.000000e+00, double %84, i64 93937689754136, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689755840, i32 396, i32 24), !dbg !1879
  %85 = fmul double %81, %84, !dbg !1879
  call void @fMulHandler(double %81, double %84, double %85, i64 93937689752104, i64 93937689755840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689756224, i32 396, i32 21), !dbg !1875
  store double %85, double* %33, align 8, !dbg !1875
  %86 = load double, double* %12, align 8, !dbg !1880
  %87 = load double, double* %18, align 8, !dbg !1881
  %88 = fmul double %86, %87, !dbg !1882
  call void @fMulHandler(double %86, double %87, double %88, i64 93937689758296, i64 93937689758680, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689759088, i32 397, i32 15), !dbg !1883
  %89 = load double, double* %11, align 8, !dbg !1883
  %90 = load double, double* %17, align 8, !dbg !1884
  %91 = fmul double %89, %90, !dbg !1885
  call void @fMulHandler(double %89, double %90, double %91, i64 93937689759480, i64 93937689759864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689760272, i32 397, i32 26), !dbg !1886
  %92 = fsub double %88, %91, !dbg !1886
  call void @fSubHandler(double %88, double %91, double %92, i64 93937689759088, i64 93937689760272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689760688, i32 397, i32 22), !dbg !1887
  %93 = load double, double* %33, align 8, !dbg !1887
  %94 = fdiv double %92, %93, !dbg !1888
  call void @fDivHandler(double %92, double %93, double %94, i64 93937689760688, i64 93937689761080, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689761488, i32 397, i32 33), !dbg !1889
  store double %94, double* %19, align 8, !dbg !1889
  %95 = load double, double* %12, align 8, !dbg !1890
  %96 = load double, double* %21, align 8, !dbg !1891
  %97 = fmul double %95, %96, !dbg !1892
  call void @fMulHandler(double %95, double %96, double %97, i64 93937689762296, i64 93937689762680, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689763088, i32 398, i32 15), !dbg !1893
  %98 = load double, double* %11, align 8, !dbg !1893
  %99 = load double, double* %20, align 8, !dbg !1894
  %100 = fmul double %98, %99, !dbg !1895
  call void @fMulHandler(double %98, double %99, double %100, i64 93937689763480, i64 93937689763864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689764272, i32 398, i32 26), !dbg !1896
  %101 = fsub double %97, %100, !dbg !1896
  call void @fSubHandler(double %97, double %100, double %101, i64 93937689763088, i64 93937689764272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689764688, i32 398, i32 22), !dbg !1897
  %102 = load double, double* %6, align 8, !dbg !1897
  %103 = fmul double 2.000000e+00, %102, !dbg !1898
  call void @fMulHandler(double 2.000000e+00, double %102, double %103, i64 0, i64 93937689765080, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689765520, i32 398, i32 38), !dbg !1899
  %104 = load i32, i32* %27, align 4, !dbg !1899
  %105 = mul nsw i32 2, %104, !dbg !1900
  %106 = sub nsw i32 %105, 1, !dbg !1901
  %107 = sitofp i32 %106 to double, !dbg !1902
  %108 = fmul double %103, %107, !dbg !1903
  call void @fMulHandler(double %103, double %107, double %108, i64 93937689765520, i64 93937689767096, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689767504, i32 398, i32 42), !dbg !1904
  %109 = load double, double* %19, align 8, !dbg !1904
  %110 = fmul double %108, %109, !dbg !1905
  call void @fMulHandler(double %108, double %109, double %110, i64 93937689767504, i64 93937689767896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689768304, i32 398, i32 50), !dbg !1906
  %111 = fsub double %101, %110, !dbg !1906
  call void @fSubHandler(double %101, double %110, double %111, i64 93937689764688, i64 93937689768304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689768720, i32 398, i32 33), !dbg !1907
  %112 = load double, double* %33, align 8, !dbg !1907
  %113 = fdiv double %111, %112, !dbg !1908
  call void @fDivHandler(double %111, double %112, double %113, i64 93937689768720, i64 93937689769112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689769520, i32 398, i32 55), !dbg !1909
  store double %113, double* %22, align 8, !dbg !1909
  %114 = load double, double* %19, align 8, !dbg !1910
  %115 = load double, double* %23, align 8, !dbg !1911
  %116 = fadd double %115, %114, !dbg !1911
  call void @fAddHandler(double %115, double %114, double %116, i64 93937689770712, i64 93937689770328, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689771120, i32 399, i32 11), !dbg !1911
  store double %116, double* %23, align 8, !dbg !1911
  %117 = load double, double* %22, align 8, !dbg !1912
  %118 = load double, double* %24, align 8, !dbg !1913
  %119 = fadd double %118, %117, !dbg !1913
  call void @fAddHandler(double %118, double %117, double %119, i64 93937689773288, i64 93937689772904, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689773696, i32 400, i32 11), !dbg !1913
  store double %119, double* %24, align 8, !dbg !1913
  %120 = load double, double* %19, align 8, !dbg !1914
  %121 = call double @fabs(double %120) #1, !dbg !1915
  store double %121, double* %31, align 8, !dbg !1916
  %122 = load double, double* %22, align 8, !dbg !1917
  %123 = call double @fabs(double %122) #1, !dbg !1918
  store double %123, double* %32, align 8, !dbg !1919
  %124 = load double, double* %31, align 8, !dbg !1920
  %125 = fmul double 0x3CC0000000000000, %124, !dbg !1921
  call void @fMulHandler(double 0x3CC0000000000000, double %124, double %125, i64 0, i64 93937689778168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689778576, i32 403, i32 40), !dbg !1922
  %126 = load double, double* %28, align 8, !dbg !1922
  %127 = fadd double %126, %125, !dbg !1922
  call void @fAddHandler(double %126, double %125, double %127, i64 93937689778968, i64 93937689778576, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689779376, i32 403, i32 15), !dbg !1922
  store double %127, double* %28, align 8, !dbg !1922
  %128 = load double, double* %32, align 8, !dbg !1923
  %129 = fmul double 0x3CC0000000000000, %128, !dbg !1924
  call void @fMulHandler(double 0x3CC0000000000000, double %128, double %129, i64 0, i64 93937689781160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689781568, i32 404, i32 40), !dbg !1925
  %130 = load double, double* %29, align 8, !dbg !1925
  %131 = fadd double %130, %129, !dbg !1925
  call void @fAddHandler(double %130, double %129, double %131, i64 93937689781960, i64 93937689781568, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689784432, i32 404, i32 15), !dbg !1925
  store double %131, double* %29, align 8, !dbg !1925
  %132 = load i32, i32* %27, align 4, !dbg !1926
  %133 = icmp sgt i32 %132, 15, !dbg !1928
  %134 = sext i32 %132 to i64, !dbg !1929
  %135 = call i1 @iCmpInstHandler(i64 %134, i64 15, i1 %133, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689786688, i32 405, i32 10), !dbg !1929
  br i1 %135, label %136, label %178, !dbg !1929

; <label>:136:                                    ; preds = %79
  call void @llvm.dbg.declare(metadata double* %34, metadata !1930, metadata !60), !dbg !1932
  %137 = load double, double* %31, align 8, !dbg !1933
  %138 = load double, double* %25, align 8, !dbg !1933
  %139 = fcmp ogt double %137, %138, !dbg !1933
  %140 = call i1 @fCmpInstHandler(double %137, double %138, i1 %139, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689790880, i32 412, i32 27), !dbg !1933
  br i1 %140, label %141, label %143, !dbg !1933

; <label>:141:                                    ; preds = %136
  %142 = load double, double* %31, align 8, !dbg !1934
  br label %145, !dbg !1934

; <label>:143:                                    ; preds = %136
  %144 = load double, double* %25, align 8, !dbg !1936
  br label %145, !dbg !1936

; <label>:145:                                    ; preds = %143, %141
  %146 = phi double [ %142, %141 ], [ %144, %143 ], !dbg !1938
  store double %146, double* %34, align 8, !dbg !1940
  call void @llvm.dbg.declare(metadata double* %35, metadata !1941, metadata !60), !dbg !1942
  %147 = load double, double* %32, align 8, !dbg !1943
  %148 = load double, double* %26, align 8, !dbg !1943
  %149 = fcmp ogt double %147, %148, !dbg !1943
  %150 = call i1 @fCmpInstHandler(double %147, double %148, i1 %149, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689799456, i32 413, i32 27), !dbg !1943
  br i1 %150, label %151, label %153, !dbg !1943

; <label>:151:                                    ; preds = %145
  %152 = load double, double* %32, align 8, !dbg !1944
  br label %155, !dbg !1944

; <label>:153:                                    ; preds = %145
  %154 = load double, double* %26, align 8, !dbg !1945
  br label %155, !dbg !1945

; <label>:155:                                    ; preds = %153, %151
  %156 = phi double [ %152, %151 ], [ %154, %153 ], !dbg !1946
  store double %156, double* %35, align 8, !dbg !1947
  call void @llvm.dbg.declare(metadata double* %36, metadata !1948, metadata !60), !dbg !1949
  %157 = load double, double* %23, align 8, !dbg !1950
  %158 = call double @fabs(double %157) #1, !dbg !1951
  store double %158, double* %36, align 8, !dbg !1949
  call void @llvm.dbg.declare(metadata double* %37, metadata !1952, metadata !60), !dbg !1953
  %159 = load double, double* %24, align 8, !dbg !1954
  %160 = call double @fabs(double %159) #1, !dbg !1955
  store double %160, double* %37, align 8, !dbg !1953
  %161 = load double, double* %34, align 8, !dbg !1956
  %162 = load double, double* %34, align 8, !dbg !1958
  %163 = load double, double* %36, align 8, !dbg !1959
  %164 = fadd double %162, %163, !dbg !1960
  call void @fAddHandler(double %162, double %163, double %164, i64 93937689812664, i64 93937689813048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689813456, i32 416, i32 36), !dbg !1961
  %165 = fdiv double %161, %164, !dbg !1961
  call void @fDivHandler(double %161, double %164, double %165, i64 93937689812280, i64 93937689813456, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689813872, i32 416, i32 23), !dbg !1962
  %166 = fcmp olt double %165, 0x3D04000000000000, !dbg !1962
  %167 = call i1 @fCmpInstHandler(double %165, double 0x3D04000000000000, i1 %166, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689814352, i32 416, i32 45), !dbg !1963
  br i1 %167, label %168, label %177, !dbg !1963

; <label>:168:                                    ; preds = %155
  %169 = load double, double* %35, align 8, !dbg !1964
  %170 = load double, double* %35, align 8, !dbg !1966
  %171 = load double, double* %37, align 8, !dbg !1967
  %172 = fadd double %170, %171, !dbg !1968
  call void @fAddHandler(double %170, double %171, double %172, i64 93937689815784, i64 93937689816168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689816576, i32 417, i32 36), !dbg !1969
  %173 = fdiv double %169, %172, !dbg !1969
  call void @fDivHandler(double %169, double %172, double %173, i64 93937689815464, i64 93937689816576, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689816992, i32 417, i32 23), !dbg !1970
  %174 = fcmp olt double %173, 0x3D04000000000000, !dbg !1970
  %175 = call i1 @fCmpInstHandler(double %173, double 0x3D04000000000000, i1 %174, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689817408, i32 417, i32 45), !dbg !1971
  br i1 %175, label %176, label %177, !dbg !1971

; <label>:176:                                    ; preds = %168
  br label %187, !dbg !1972

; <label>:177:                                    ; preds = %168, %155
  br label %178, !dbg !1973

; <label>:178:                                    ; preds = %177, %79
  %179 = load double, double* %31, align 8, !dbg !1974
  store double %179, double* %25, align 8, !dbg !1975
  %180 = load double, double* %32, align 8, !dbg !1976
  store double %180, double* %26, align 8, !dbg !1977
  %181 = load double, double* %18, align 8, !dbg !1978
  store double %181, double* %17, align 8, !dbg !1979
  %182 = load double, double* %19, align 8, !dbg !1980
  store double %182, double* %18, align 8, !dbg !1981
  %183 = load double, double* %21, align 8, !dbg !1982
  store double %183, double* %20, align 8, !dbg !1983
  %184 = load double, double* %22, align 8, !dbg !1984
  store double %184, double* %21, align 8, !dbg !1985
  %185 = load i32, i32* %27, align 4, !dbg !1986
  %186 = add nsw i32 %185, 1, !dbg !1986
  store i32 %186, i32* %27, align 4, !dbg !1986
  br label %74, !dbg !1987, !llvm.loop !1989

; <label>:187:                                    ; preds = %176, %74
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1990
  %189 = load double, double* %188, align 8, !dbg !1990
  %190 = load double, double* %23, align 8, !dbg !1991
  %191 = fmul double %189, %190, !dbg !1992
  call void @fMulHandler(double %189, double %190, double %191, i64 93937689827000, i64 93937689828648, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689829056, i32 429, i32 20), !dbg !1993
  %192 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1993
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %192, i32 0, i32 0, !dbg !1994
  store double %191, double* %193, align 8, !dbg !1995
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1996
  %195 = load double, double* %194, align 8, !dbg !1996
  %196 = load double, double* %23, align 8, !dbg !1997
  %197 = call double @fabs(double %196) #1, !dbg !1998
  %198 = fmul double %195, %197, !dbg !1999
  call void @fMulHandler(double %195, double %197, double %198, i64 93937689831144, i64 93937689833264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689833744, i32 430, i32 20), !dbg !2000
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2000
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 1, !dbg !2001
  store double %198, double* %200, align 8, !dbg !2002
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2003
  %202 = load double, double* %201, align 8, !dbg !2003
  %203 = call double @fabs(double %202) #1, !dbg !2004
  %204 = load double, double* %28, align 8, !dbg !2005
  %205 = fmul double %203, %204, !dbg !2006
  call void @fMulHandler(double %203, double %204, double %205, i64 93937689837568, i64 93937689838024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689838432, i32 431, i32 26), !dbg !2007
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2007
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %206, i32 0, i32 1, !dbg !2008
  %208 = load double, double* %207, align 8, !dbg !2009
  %209 = fadd double %208, %205, !dbg !2009
  call void @fAddHandler(double %208, double %205, double %209, i64 93937689839656, i64 93937689838432, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689840064, i32 431, i32 10), !dbg !2009
  store double %209, double* %207, align 8, !dbg !2009
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2010
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 0, !dbg !2011
  %212 = load double, double* %211, align 8, !dbg !2011
  %213 = call double @fabs(double %212) #1, !dbg !2012
  %214 = fmul double 0x3CC0000000000000, %213, !dbg !2013
  call void @fMulHandler(double 0x3CC0000000000000, double %213, double %214, i64 0, i64 93937689844416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689844896, i32 432, i32 35), !dbg !2014
  %215 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2014
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %215, i32 0, i32 1, !dbg !2015
  %217 = load double, double* %216, align 8, !dbg !2016
  %218 = fadd double %217, %214, !dbg !2016
  call void @fAddHandler(double %217, double %214, double %218, i64 93937689846120, i64 93937689844896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689846528, i32 432, i32 10), !dbg !2016
  store double %218, double* %216, align 8, !dbg !2016
  %219 = load double, double* %24, align 8, !dbg !2017
  %220 = load double, double* %6, align 8, !dbg !2018
  %221 = fmul double 2.000000e+00, %220, !dbg !2019
  call void @fMulHandler(double 2.000000e+00, double %220, double %221, i64 0, i64 93937689848696, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689849136, i32 434, i32 25), !dbg !2020
  %222 = load double, double* %23, align 8, !dbg !2020
  %223 = fmul double %221, %222, !dbg !2021
  call void @fMulHandler(double %221, double %222, double %223, i64 93937689849136, i64 93937689849496, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689849904, i32 434, i32 29), !dbg !2022
  %224 = load double, double* %30, align 8, !dbg !2022
  %225 = fmul double %223, %224, !dbg !2023
  call void @fMulHandler(double %223, double %224, double %225, i64 93937689849904, i64 93937689850296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689850704, i32 434, i32 36), !dbg !2024
  %226 = fadd double %219, %225, !dbg !2024
  call void @fAddHandler(double %219, double %225, double %226, i64 93937689848312, i64 93937689850704, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689851120, i32 434, i32 20), !dbg !2025
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2025
  %228 = load double, double* %227, align 8, !dbg !2025
  %229 = fdiv double %226, %228, !dbg !2026
  call void @fDivHandler(double %226, double %228, double %229, i64 93937689851120, i64 93937689851960, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689853632, i32 434, i32 44), !dbg !2027
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2027
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 0, !dbg !2028
  store double %229, double* %231, align 8, !dbg !2029
  %232 = load double, double* %24, align 8, !dbg !2030
  %233 = call double @fabs(double %232) #1, !dbg !2031
  %234 = load double, double* %6, align 8, !dbg !2032
  %235 = fmul double 2.000000e+00, %234, !dbg !2033
  call void @fMulHandler(double 2.000000e+00, double %234, double %235, i64 0, i64 93937689856200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689856640, i32 435, i32 36), !dbg !2034
  %236 = load double, double* %23, align 8, !dbg !2034
  %237 = fmul double %235, %236, !dbg !2035
  call void @fMulHandler(double %235, double %236, double %237, i64 93937689856640, i64 93937689857000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689857408, i32 435, i32 40), !dbg !2036
  %238 = load double, double* %30, align 8, !dbg !2036
  %239 = fmul double %237, %238, !dbg !2037
  call void @fMulHandler(double %237, double %238, double %239, i64 93937689857408, i64 93937689857800, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689858208, i32 435, i32 47), !dbg !2038
  %240 = call double @fabs(double %239) #1, !dbg !2038
  %241 = fadd double %233, %240, !dbg !2039
  call void @fAddHandler(double %233, double %240, double %241, i64 93937689855744, i64 93937689858688, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689859168, i32 435, i32 26), !dbg !2040
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2040
  %243 = load double, double* %242, align 8, !dbg !2040
  %244 = call double @fabs(double %243) #1, !dbg !2041
  %245 = fdiv double %241, %244, !dbg !2042
  call void @fDivHandler(double %241, double %244, double %245, i64 93937689859168, i64 93937689861744, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689862224, i32 435, i32 56), !dbg !2043
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !2043
  %247 = load double, double* %246, align 8, !dbg !2043
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2044
  %249 = load double, double* %248, align 8, !dbg !2044
  %250 = fdiv double %247, %249, !dbg !2045
  call void @fDivHandler(double %247, double %249, double %250, i64 93937689863064, i64 93937689865160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689866832, i32 435, i32 84), !dbg !2046
  %251 = call double @fabs(double %250) #1, !dbg !2046
  %252 = fmul double %245, %251, !dbg !2048
  call void @fMulHandler(double %245, double %251, double %252, i64 93937689862224, i64 93937689867312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689867792, i32 435, i32 71), !dbg !2049
  %253 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2049
  %254 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %253, i32 0, i32 1, !dbg !2050
  store double %252, double* %254, align 8, !dbg !2051
  %255 = load double, double* %29, align 8, !dbg !2052
  %256 = load double, double* %6, align 8, !dbg !2053
  %257 = fmul double 2.000000e+00, %256, !dbg !2054
  call void @fMulHandler(double 2.000000e+00, double %256, double %257, i64 0, i64 93937689869816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689870256, i32 436, i32 34), !dbg !2055
  %258 = load double, double* %28, align 8, !dbg !2055
  %259 = fmul double %257, %258, !dbg !2056
  call void @fMulHandler(double %257, double %258, double %259, i64 93937689870256, i64 93937689870616, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689871024, i32 436, i32 38), !dbg !2057
  %260 = load double, double* %30, align 8, !dbg !2057
  %261 = fmul double %259, %260, !dbg !2058
  call void @fMulHandler(double %259, double %260, double %261, i64 93937689871024, i64 93937689871416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689871824, i32 436, i32 48), !dbg !2059
  %262 = call double @fabs(double %261) #1, !dbg !2059
  %263 = fadd double %255, %262, !dbg !2060
  call void @fAddHandler(double %255, double %262, double %263, i64 93937689869432, i64 93937689872304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689872784, i32 436, i32 24), !dbg !2061
  %264 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2061
  %265 = load double, double* %264, align 8, !dbg !2061
  %266 = call double @fabs(double %265) #1, !dbg !2062
  %267 = fdiv double %263, %266, !dbg !2063
  call void @fDivHandler(double %263, double %266, double %267, i64 93937689872784, i64 93937689784080, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689877888, i32 436, i32 56), !dbg !2064
  %268 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2064
  %269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %268, i32 0, i32 1, !dbg !2065
  %270 = load double, double* %269, align 8, !dbg !2066
  %271 = fadd double %270, %267, !dbg !2066
  call void @fAddHandler(double %270, double %267, double %271, i64 93937689879112, i64 93937689877888, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689879520, i32 436, i32 10), !dbg !2066
  store double %271, double* %269, align 8, !dbg !2066
  %272 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2067
  %273 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %272, i32 0, i32 0, !dbg !2068
  %274 = load double, double* %273, align 8, !dbg !2068
  %275 = call double @fabs(double %274) #1, !dbg !2069
  %276 = fmul double 0x3CC0000000000000, %275, !dbg !2070
  call void @fMulHandler(double 0x3CC0000000000000, double %275, double %276, i64 0, i64 93937689883872, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689884352, i32 437, i32 35), !dbg !2071
  %277 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2071
  %278 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %277, i32 0, i32 1, !dbg !2072
  %279 = load double, double* %278, align 8, !dbg !2073
  %280 = fadd double %279, %276, !dbg !2073
  call void @fAddHandler(double %279, double %276, double %280, i64 93937689885576, i64 93937689884352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689885984, i32 437, i32 10), !dbg !2073
  store double %280, double* %278, align 8, !dbg !2073
  %281 = load i32, i32* %27, align 4, !dbg !2074
  %282 = icmp eq i32 %281, 800, !dbg !2076
  %283 = sext i32 %281 to i64, !dbg !2077
  %284 = call i1 @iCmpInstHandler(i64 %283, i64 800, i1 %282, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689888176, i32 439, i32 8), !dbg !2077
  br i1 %284, label %285, label %288, !dbg !2077

; <label>:285:                                    ; preds = %187
  br label %286, !dbg !2078, !llvm.loop !2079

; <label>:286:                                    ; preds = %285
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 440, i32 11), !dbg !2080
  store i32 11, i32* %5, align 4, !dbg !2080
  br label %307, !dbg !2080
                                                  ; No predecessors!
  br label %307, !dbg !2083

; <label>:288:                                    ; preds = %187
  %289 = load i32, i32* %16, align 4, !dbg !2085
  %290 = icmp ne i32 %289, 0, !dbg !2085
  %291 = sext i32 %289 to i64, !dbg !2085
  %292 = call i1 @iCmpInstHandler(i64 %291, i64 0, i1 %290, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689893344, i32 442, i32 12), !dbg !2085
  br i1 %292, label %293, label %295, !dbg !2085

; <label>:293:                                    ; preds = %288
  %294 = load i32, i32* %16, align 4, !dbg !2086
  br label %305, !dbg !2086

; <label>:295:                                    ; preds = %288
  %296 = load i32, i32* %14, align 4, !dbg !2088
  %297 = icmp ne i32 %296, 0, !dbg !2088
  %298 = sext i32 %296 to i64, !dbg !2088
  %299 = call i1 @iCmpInstHandler(i64 %298, i64 0, i1 %297, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @17, i32 0, i32 0), i64 93937689897888, i32 442, i32 12), !dbg !2088
  br i1 %299, label %300, label %302, !dbg !2088

; <label>:300:                                    ; preds = %295
  %301 = load i32, i32* %14, align 4, !dbg !2090
  br label %303, !dbg !2090

; <label>:302:                                    ; preds = %295
  br label %303, !dbg !2092

; <label>:303:                                    ; preds = %302, %300
  %304 = phi i32 [ %301, %300 ], [ 0, %302 ], !dbg !2094
  br label %305, !dbg !2094

; <label>:305:                                    ; preds = %303, %293
  %306 = phi i32 [ %294, %293 ], [ %304, %303 ], !dbg !2096
  store i32 %306, i32* %5, align 4, !dbg !2098
  br label %307, !dbg !2098

; <label>:307:                                    ; preds = %305, %287, %286
  %308 = load i32, i32* %5, align 4, !dbg !2099
  ret i32 %308, !dbg !2099
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
  call void @fSubHandler(double -0.000000e+00, double %44, double %45, i64 0, i64 93937689925624, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689926000, i32 284, i32 22), !dbg !2128
  %46 = fsub double %45, 1.000000e+00, !dbg !2128
  call void @fSubHandler(double %45, double 1.000000e+00, double %46, i64 93937689926000, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689926448, i32 284, i32 26), !dbg !2129
  %47 = load double, double* %8, align 8, !dbg !2129
  %48 = call i32 @CLeta(double %46, double %47, %struct.gsl_sf_result_struct* %14), !dbg !2130
  store i32 %48, i32* %16, align 4, !dbg !2125
  call void @llvm.dbg.declare(metadata double* %17, metadata !2131, metadata !60), !dbg !2132
  %49 = load double, double* %7, align 8, !dbg !2133
  %50 = fmul double 2.000000e+00, %49, !dbg !2134
  call void @fMulHandler(double 2.000000e+00, double %49, double %50, i64 0, i64 93937689930552, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689930960, i32 285, i32 26), !dbg !2135
  %51 = fadd double %50, 1.000000e+00, !dbg !2135
  call void @fAddHandler(double %50, double 1.000000e+00, double %51, i64 93937689930960, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689931376, i32 285, i32 31), !dbg !2132
  store double %51, double* %17, align 8, !dbg !2132
  call void @llvm.dbg.declare(metadata double* %18, metadata !2136, metadata !60), !dbg !2137
  %52 = load double, double* %9, align 8, !dbg !2138
  %53 = load double, double* %7, align 8, !dbg !2139
  %54 = call double @pow(double %52, double %53) #6, !dbg !2140
  call void @callTwoArgsHandler(i32 15, double %52, double %53, double %54, i64 93937689934536, i64 93937689934888, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689935688, i32 286, i32 24), !dbg !2137
  store double %54, double* %18, align 8, !dbg !2137
  call void @llvm.dbg.declare(metadata double* %19, metadata !2141, metadata !60), !dbg !2142
  call void @llvm.dbg.declare(metadata double* %20, metadata !2143, metadata !60), !dbg !2144
  call void @llvm.dbg.declare(metadata double* %21, metadata !2145, metadata !60), !dbg !2146
  store double 1.000000e+00, double* %21, align 8, !dbg !2146
  call void @llvm.dbg.declare(metadata double* %22, metadata !2147, metadata !60), !dbg !2148
  %55 = load double, double* %9, align 8, !dbg !2149
  %56 = load double, double* %8, align 8, !dbg !2150
  %57 = fmul double %55, %56, !dbg !2151
  call void @fMulHandler(double %55, double %56, double %57, i64 93937689943928, i64 93937689944280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689944688, i32 291, i32 20), !dbg !2152
  %58 = load double, double* %7, align 8, !dbg !2152
  %59 = fadd double %58, 1.000000e+00, !dbg !2153
  call void @fAddHandler(double %58, double 1.000000e+00, double %59, i64 93937689945080, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689945520, i32 291, i32 29), !dbg !2154
  %60 = fdiv double %57, %59, !dbg !2154
  call void @fDivHandler(double %57, double %59, double %60, i64 93937689944688, i64 93937689945520, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689945904, i32 291, i32 24), !dbg !2148
  store double %60, double* %22, align 8, !dbg !2148
  call void @llvm.dbg.declare(metadata double* %23, metadata !2155, metadata !60), !dbg !2156
  call void @llvm.dbg.declare(metadata double* %24, metadata !2157, metadata !60), !dbg !2158
  store double 1.000000e+00, double* %24, align 8, !dbg !2158
  call void @llvm.dbg.declare(metadata double* %25, metadata !2159, metadata !60), !dbg !2160
  %61 = load double, double* %9, align 8, !dbg !2161
  %62 = fsub double -0.000000e+00, %61, !dbg !2162
  call void @fSubHandler(double -0.000000e+00, double %61, double %62, i64 0, i64 93937689952952, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689953328, i32 294, i32 19), !dbg !2163
  %63 = load double, double* %8, align 8, !dbg !2163
  %64 = fmul double %62, %63, !dbg !2164
  call void @fMulHandler(double %62, double %63, double %64, i64 93937689953328, i64 93937689953720, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689954128, i32 294, i32 21), !dbg !2165
  %65 = load double, double* %7, align 8, !dbg !2165
  %66 = fdiv double %64, %65, !dbg !2166
  call void @fDivHandler(double %64, double %65, double %66, i64 93937689954128, i64 93937689954520, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689954928, i32 294, i32 25), !dbg !2160
  store double %66, double* %25, align 8, !dbg !2160
  call void @llvm.dbg.declare(metadata double* %26, metadata !2167, metadata !60), !dbg !2168
  call void @llvm.dbg.declare(metadata double* %27, metadata !2169, metadata !60), !dbg !2170
  %67 = load double, double* %21, align 8, !dbg !2171
  %68 = load double, double* %22, align 8, !dbg !2172
  %69 = fadd double %67, %68, !dbg !2173
  call void @fAddHandler(double %67, double %68, double %69, i64 93937689959208, i64 93937689959560, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689959968, i32 296, i32 25), !dbg !2170
  store double %69, double* %27, align 8, !dbg !2170
  call void @llvm.dbg.declare(metadata double* %28, metadata !2174, metadata !60), !dbg !2175
  %70 = load double, double* %24, align 8, !dbg !2176
  %71 = load double, double* %25, align 8, !dbg !2177
  %72 = fadd double %70, %71, !dbg !2178
  call void @fAddHandler(double %70, double %71, double %72, i64 93937689963160, i64 93937689963512, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689963920, i32 297, i32 25), !dbg !2175
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
  %82 = sext i32 %80 to i64, !dbg !2201
  %83 = call i1 @iCmpInstHandler(i64 %82, i64 15, i1 %81, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689983200, i32 305, i32 16), !dbg !2201
  br i1 %83, label %84, label %97, !dbg !2201

; <label>:84:                                     ; preds = %5
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2202
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !2204
  store double 0.000000e+00, double* %86, align 8, !dbg !2205
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2206
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !2207
  store double 0.000000e+00, double* %88, align 8, !dbg !2208
  br label %89, !dbg !2209, !llvm.loop !2210

; <label>:89:                                     ; preds = %84
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2211
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !2211
  store double 0x7FF0000000000000, double* %91, align 8, !dbg !2211
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2211
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !2211
  store double 0x7FF0000000000000, double* %93, align 8, !dbg !2211
  br label %94, !dbg !2211, !llvm.loop !2214

; <label>:94:                                     ; preds = %89
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 308, i32 16), !dbg !2216
  store i32 16, i32* %6, align 4, !dbg !2216
  br label %308, !dbg !2216
                                                  ; No predecessors!
  br label %96, !dbg !2219

; <label>:96:                                     ; preds = %95
  br label %97, !dbg !2221

; <label>:97:                                     ; preds = %96, %5
  br label %98, !dbg !2222

; <label>:98:                                     ; preds = %196, %97
  %99 = load i32, i32* %33, align 4, !dbg !2223
  %100 = icmp slt i32 %99, 800, !dbg !2225
  %101 = sext i32 %99 to i64, !dbg !2226
  %102 = call i1 @iCmpInstHandler(i64 %101, i64 800, i1 %100, i32 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689994928, i32 311, i32 11), !dbg !2226
  br i1 %102, label %103, label %205, !dbg !2226

; <label>:103:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata double* %35, metadata !2227, metadata !60), !dbg !2229
  call void @llvm.dbg.declare(metadata double* %36, metadata !2230, metadata !60), !dbg !2231
  %104 = load double, double* %9, align 8, !dbg !2232
  %105 = load double, double* %8, align 8, !dbg !2233
  %106 = fmul double 2.000000e+00, %105, !dbg !2234
  call void @fMulHandler(double 2.000000e+00, double %105, double %106, i64 0, i64 93937689998584, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689999024, i32 314, i32 18), !dbg !2235
  %107 = load double, double* %22, align 8, !dbg !2235
  %108 = fmul double %106, %107, !dbg !2236
  call void @fMulHandler(double %106, double %107, double %108, i64 93937689999024, i64 93937689999384, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937689999792, i32 314, i32 22), !dbg !2237
  %109 = load double, double* %9, align 8, !dbg !2237
  %110 = load double, double* %21, align 8, !dbg !2238
  %111 = fmul double %109, %110, !dbg !2239
  call void @fMulHandler(double %109, double %110, double %111, i64 93937690000184, i64 93937690000568, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690000976, i32 314, i32 33), !dbg !2240
  %112 = fsub double %108, %111, !dbg !2240
  call void @fSubHandler(double %108, double %111, double %112, i64 93937689999792, i64 93937690000976, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690001392, i32 314, i32 30), !dbg !2241
  %113 = fmul double %104, %112, !dbg !2241
  call void @fMulHandler(double %104, double %112, double %113, i64 93937689998232, i64 93937690001392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690001808, i32 314, i32 13), !dbg !2242
  %114 = load i32, i32* %33, align 4, !dbg !2242
  %115 = sitofp i32 %114 to double, !dbg !2242
  %116 = load i32, i32* %33, align 4, !dbg !2243
  %117 = sitofp i32 %116 to double, !dbg !2243
  %118 = load double, double* %17, align 8, !dbg !2244
  %119 = fadd double %117, %118, !dbg !2245
  call void @fAddHandler(double %117, double %118, double %119, i64 93937690004616, i64 93937690006264, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690006672, i32 314, i32 47), !dbg !2246
  %120 = fmul double %115, %119, !dbg !2246
  call void @fMulHandler(double %115, double %119, double %120, i64 93937690002584, i64 93937690006672, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690007088, i32 314, i32 44), !dbg !2247
  %121 = fdiv double %113, %120, !dbg !2247
  call void @fDivHandler(double %113, double %120, double %121, i64 93937690001808, i64 93937690007088, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690007504, i32 314, i32 41), !dbg !2248
  store double %121, double* %23, align 8, !dbg !2248
  %122 = load double, double* %9, align 8, !dbg !2249
  %123 = load double, double* %8, align 8, !dbg !2250
  %124 = fmul double 2.000000e+00, %123, !dbg !2251
  call void @fMulHandler(double 2.000000e+00, double %123, double %124, i64 0, i64 93937690008696, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690009136, i32 315, i32 18), !dbg !2252
  %125 = load double, double* %25, align 8, !dbg !2252
  %126 = fmul double %124, %125, !dbg !2253
  call void @fMulHandler(double %124, double %125, double %126, i64 93937690009136, i64 93937690009496, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690009904, i32 315, i32 22), !dbg !2254
  %127 = load double, double* %9, align 8, !dbg !2254
  %128 = load double, double* %24, align 8, !dbg !2255
  %129 = fmul double %127, %128, !dbg !2256
  call void @fMulHandler(double %127, double %128, double %129, i64 93937690010296, i64 93937690010680, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690011088, i32 315, i32 33), !dbg !2257
  %130 = fsub double %126, %129, !dbg !2257
  call void @fSubHandler(double %126, double %129, double %130, i64 93937690009904, i64 93937690011088, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690011504, i32 315, i32 30), !dbg !2258
  %131 = fmul double %122, %130, !dbg !2258
  call void @fMulHandler(double %122, double %130, double %131, i64 93937690008312, i64 93937690011504, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690011920, i32 315, i32 13), !dbg !2259
  %132 = load i32, i32* %33, align 4, !dbg !2259
  %133 = sitofp i32 %132 to double, !dbg !2259
  %134 = load i32, i32* %33, align 4, !dbg !2260
  %135 = sitofp i32 %134 to double, !dbg !2260
  %136 = load double, double* %17, align 8, !dbg !2261
  %137 = fsub double %135, %136, !dbg !2262
  call void @fSubHandler(double %135, double %136, double %137, i64 93937690016792, i64 93937690018440, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690018848, i32 315, i32 47), !dbg !2263
  %138 = fmul double %133, %137, !dbg !2263
  call void @fMulHandler(double %133, double %137, double %138, i64 93937690014760, i64 93937690018848, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690019264, i32 315, i32 44), !dbg !2264
  %139 = fdiv double %131, %138, !dbg !2264
  call void @fDivHandler(double %131, double %138, double %139, i64 93937690011920, i64 93937690019264, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690019680, i32 315, i32 41), !dbg !2265
  store double %139, double* %26, align 8, !dbg !2265
  %140 = load double, double* %23, align 8, !dbg !2266
  %141 = load double, double* %27, align 8, !dbg !2267
  %142 = fadd double %141, %140, !dbg !2267
  call void @fAddHandler(double %141, double %140, double %142, i64 93937690020872, i64 93937690020488, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690021280, i32 316, i32 11), !dbg !2267
  store double %142, double* %27, align 8, !dbg !2267
  %143 = load double, double* %26, align 8, !dbg !2268
  %144 = load double, double* %28, align 8, !dbg !2269
  %145 = fadd double %144, %143, !dbg !2269
  call void @fAddHandler(double %144, double %143, double %145, i64 93937690023448, i64 93937690023064, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690023856, i32 317, i32 11), !dbg !2269
  store double %145, double* %28, align 8, !dbg !2269
  %146 = load double, double* %23, align 8, !dbg !2270
  %147 = call double @fabs(double %146) #1, !dbg !2271
  store double %147, double* %35, align 8, !dbg !2272
  %148 = load double, double* %26, align 8, !dbg !2273
  %149 = call double @fabs(double %148) #1, !dbg !2274
  store double %149, double* %36, align 8, !dbg !2275
  %150 = load i32, i32* %33, align 4, !dbg !2276
  %151 = icmp sgt i32 %150, 15, !dbg !2278
  %152 = sext i32 %150 to i64, !dbg !2279
  %153 = call i1 @iCmpInstHandler(i64 %152, i64 15, i1 %151, i32 38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690028736, i32 320, i32 10), !dbg !2279
  br i1 %153, label %154, label %196, !dbg !2279

; <label>:154:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata double* %37, metadata !2280, metadata !60), !dbg !2282
  %155 = load double, double* %35, align 8, !dbg !2283
  %156 = load double, double* %29, align 8, !dbg !2283
  %157 = fcmp ogt double %155, %156, !dbg !2283
  %158 = call i1 @fCmpInstHandler(double %155, double %156, i1 %157, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690032928, i32 327, i32 27), !dbg !2283
  br i1 %158, label %159, label %161, !dbg !2283

; <label>:159:                                    ; preds = %154
  %160 = load double, double* %35, align 8, !dbg !2284
  br label %163, !dbg !2284

; <label>:161:                                    ; preds = %154
  %162 = load double, double* %29, align 8, !dbg !2286
  br label %163, !dbg !2286

; <label>:163:                                    ; preds = %161, %159
  %164 = phi double [ %160, %159 ], [ %162, %161 ], !dbg !2288
  store double %164, double* %37, align 8, !dbg !2290
  call void @llvm.dbg.declare(metadata double* %38, metadata !2291, metadata !60), !dbg !2292
  %165 = load double, double* %36, align 8, !dbg !2293
  %166 = load double, double* %30, align 8, !dbg !2293
  %167 = fcmp ogt double %165, %166, !dbg !2293
  %168 = call i1 @fCmpInstHandler(double %165, double %166, i1 %167, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690041504, i32 328, i32 27), !dbg !2293
  br i1 %168, label %169, label %171, !dbg !2293

; <label>:169:                                    ; preds = %163
  %170 = load double, double* %36, align 8, !dbg !2294
  br label %173, !dbg !2294

; <label>:171:                                    ; preds = %163
  %172 = load double, double* %30, align 8, !dbg !2295
  br label %173, !dbg !2295

; <label>:173:                                    ; preds = %171, %169
  %174 = phi double [ %170, %169 ], [ %172, %171 ], !dbg !2296
  store double %174, double* %38, align 8, !dbg !2297
  call void @llvm.dbg.declare(metadata double* %39, metadata !2298, metadata !60), !dbg !2299
  %175 = load double, double* %27, align 8, !dbg !2300
  %176 = call double @fabs(double %175) #1, !dbg !2301
  store double %176, double* %39, align 8, !dbg !2299
  call void @llvm.dbg.declare(metadata double* %40, metadata !2302, metadata !60), !dbg !2303
  %177 = load double, double* %28, align 8, !dbg !2304
  %178 = call double @fabs(double %177) #1, !dbg !2305
  store double %178, double* %40, align 8, !dbg !2303
  %179 = load double, double* %37, align 8, !dbg !2306
  %180 = load double, double* %37, align 8, !dbg !2308
  %181 = load double, double* %39, align 8, !dbg !2309
  %182 = fadd double %180, %181, !dbg !2310
  call void @fAddHandler(double %180, double %181, double %182, i64 93937690054712, i64 93937690055096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690055504, i32 331, i32 36), !dbg !2311
  %183 = fdiv double %179, %182, !dbg !2311
  call void @fDivHandler(double %179, double %182, double %183, i64 93937690054328, i64 93937690055504, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690055920, i32 331, i32 23), !dbg !2312
  %184 = fcmp olt double %183, 0x3CD0000000000000, !dbg !2312
  %185 = call i1 @fCmpInstHandler(double %183, double 0x3CD0000000000000, i1 %184, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690056400, i32 331, i32 45), !dbg !2313
  br i1 %185, label %186, label %195, !dbg !2313

; <label>:186:                                    ; preds = %173
  %187 = load double, double* %38, align 8, !dbg !2314
  %188 = load double, double* %38, align 8, !dbg !2316
  %189 = load double, double* %40, align 8, !dbg !2317
  %190 = fadd double %188, %189, !dbg !2318
  call void @fAddHandler(double %188, double %189, double %190, i64 93937690057832, i64 93937690058216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690058624, i32 332, i32 36), !dbg !2319
  %191 = fdiv double %187, %190, !dbg !2319
  call void @fDivHandler(double %187, double %190, double %191, i64 93937690057512, i64 93937690058624, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690059040, i32 332, i32 23), !dbg !2320
  %192 = fcmp olt double %191, 0x3CD0000000000000, !dbg !2320
  %193 = call i1 @fCmpInstHandler(double %191, double 0x3CD0000000000000, i1 %192, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690059456, i32 332, i32 45), !dbg !2321
  br i1 %193, label %194, label %195, !dbg !2321

; <label>:194:                                    ; preds = %186
  br label %205, !dbg !2322

; <label>:195:                                    ; preds = %186, %173
  br label %196, !dbg !2323

; <label>:196:                                    ; preds = %195, %103
  %197 = load double, double* %35, align 8, !dbg !2324
  store double %197, double* %29, align 8, !dbg !2325
  %198 = load double, double* %36, align 8, !dbg !2326
  store double %198, double* %30, align 8, !dbg !2327
  %199 = load double, double* %22, align 8, !dbg !2328
  store double %199, double* %21, align 8, !dbg !2329
  %200 = load double, double* %23, align 8, !dbg !2330
  store double %200, double* %22, align 8, !dbg !2331
  %201 = load double, double* %25, align 8, !dbg !2332
  store double %201, double* %24, align 8, !dbg !2333
  %202 = load double, double* %26, align 8, !dbg !2334
  store double %202, double* %25, align 8, !dbg !2335
  %203 = load i32, i32* %33, align 4, !dbg !2336
  %204 = add nsw i32 %203, 1, !dbg !2336
  store i32 %204, i32* %33, align 4, !dbg !2336
  br label %98, !dbg !2337, !llvm.loop !2339

; <label>:205:                                    ; preds = %194, %98
  %206 = load double, double* %27, align 8, !dbg !2340
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2341
  %208 = load double, double* %207, align 8, !dbg !2341
  %209 = fmul double %206, %208, !dbg !2342
  call void @fMulHandler(double %206, double %208, double %209, i64 93937690068664, i64 93937690069432, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690071104, i32 344, i32 18), !dbg !2343
  %210 = load double, double* %18, align 8, !dbg !2343
  %211 = fmul double %209, %210, !dbg !2344
  call void @fMulHandler(double %209, double %210, double %211, i64 93937690071104, i64 93937690071496, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690071904, i32 344, i32 30), !dbg !2345
  %212 = load double, double* %9, align 8, !dbg !2345
  %213 = fmul double %211, %212, !dbg !2346
  call void @fMulHandler(double %211, double %212, double %213, i64 93937690071904, i64 93937690072296, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690072704, i32 344, i32 38), !dbg !2347
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2347
  store double %213, double* %214, align 8, !dbg !2348
  %215 = load double, double* %27, align 8, !dbg !2349
  %216 = call double @fabs(double %215) #1, !dbg !2350
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !2351
  %218 = load double, double* %217, align 8, !dbg !2351
  %219 = fmul double %216, %218, !dbg !2352
  call void @fMulHandler(double %216, double %218, double %219, i64 93937690074432, i64 93937690075336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690077008, i32 345, i32 24), !dbg !2353
  %220 = load double, double* %18, align 8, !dbg !2353
  %221 = fmul double %219, %220, !dbg !2354
  call void @fMulHandler(double %219, double %220, double %221, i64 93937690077008, i64 93937690077400, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690077808, i32 345, i32 36), !dbg !2355
  %222 = load double, double* %9, align 8, !dbg !2355
  %223 = fmul double %221, %222, !dbg !2356
  call void @fMulHandler(double %221, double %222, double %223, i64 93937690077808, i64 93937690078200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690078608, i32 345, i32 44), !dbg !2357
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2357
  %225 = load double, double* %224, align 8, !dbg !2357
  %226 = call double @fabs(double %225) #1, !dbg !2358
  %227 = fmul double 0x3CC0000000000000, %226, !dbg !2359
  call void @fMulHandler(double 0x3CC0000000000000, double %226, double %227, i64 0, i64 93937690081184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690081664, i32 345, i32 69), !dbg !2360
  %228 = fadd double %223, %227, !dbg !2360
  call void @fAddHandler(double %223, double %227, double %228, i64 93937690078608, i64 93937690081664, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690082080, i32 345, i32 48), !dbg !2361
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !2361
  store double %228, double* %229, align 8, !dbg !2362
  %230 = load double, double* %28, align 8, !dbg !2363
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !2364
  %232 = load double, double* %231, align 8, !dbg !2364
  %233 = fmul double %230, %232, !dbg !2365
  call void @fMulHandler(double %230, double %232, double %233, i64 93937690083336, i64 93937690084168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690085840, i32 346, i32 18), !dbg !2366
  %234 = load double, double* %18, align 8, !dbg !2366
  %235 = fdiv double %233, %234, !dbg !2367
  call void @fDivHandler(double %233, double %234, double %235, i64 93937690085840, i64 93937690086232, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690086640, i32 346, i32 30), !dbg !2368
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !2368
  store double %235, double* %236, align 8, !dbg !2369
  %237 = load double, double* %28, align 8, !dbg !2370
  %238 = call double @fabs(double %237) #1, !dbg !2371
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !2372
  %240 = load double, double* %239, align 8, !dbg !2372
  %241 = fmul double %238, %240, !dbg !2373
  call void @fMulHandler(double %238, double %240, double %241, i64 93937690088368, i64 93937690089272, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690090944, i32 347, i32 24), !dbg !2374
  %242 = load double, double* %18, align 8, !dbg !2374
  %243 = fdiv double %241, %242, !dbg !2375
  call void @fDivHandler(double %241, double %242, double %243, i64 93937690090944, i64 93937690091336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690091744, i32 347, i32 36), !dbg !2376
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !2376
  %245 = load double, double* %244, align 8, !dbg !2376
  %246 = call double @fabs(double %245) #1, !dbg !2377
  %247 = fmul double 0x3CC0000000000000, %246, !dbg !2378
  call void @fMulHandler(double 0x3CC0000000000000, double %246, double %247, i64 0, i64 93937690094320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690094800, i32 347, i32 65), !dbg !2379
  %248 = fadd double %243, %247, !dbg !2379
  call void @fAddHandler(double %243, double %247, double %248, i64 93937690091744, i64 93937690094800, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690095216, i32 347, i32 44), !dbg !2380
  %249 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !2380
  store double %248, double* %249, align 8, !dbg !2381
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2382
  %251 = load double, double* %250, align 8, !dbg !2382
  %252 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2383
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %252, i32 0, i32 0, !dbg !2384
  store double %251, double* %253, align 8, !dbg !2385
  %254 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !2386
  %255 = load double, double* %254, align 8, !dbg !2386
  %256 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2387
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %256, i32 0, i32 1, !dbg !2388
  store double %255, double* %257, align 8, !dbg !2389
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2390
  %259 = load double, double* %258, align 8, !dbg !2390
  %260 = load double, double* %19, align 8, !dbg !2391
  %261 = fmul double %259, %260, !dbg !2392
  call void @fMulHandler(double %259, double %260, double %261, i64 93937690103608, i64 93937690105256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690105664, i32 352, i32 20), !dbg !2393
  %262 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !2393
  %263 = load double, double* %262, align 8, !dbg !2393
  %264 = fsub double %261, %263, !dbg !2394
  call void @fSubHandler(double %261, double %263, double %264, i64 93937690105664, i64 93937690106504, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690108176, i32 352, i32 34), !dbg !2395
  %265 = load double, double* %20, align 8, !dbg !2395
  %266 = fdiv double %264, %265, !dbg !2396
  call void @fDivHandler(double %264, double %265, double %266, i64 93937690108176, i64 93937690108568, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690108976, i32 352, i32 43), !dbg !2397
  %267 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2397
  %268 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %267, i32 0, i32 0, !dbg !2398
  store double %266, double* %268, align 8, !dbg !2399
  %269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !2400
  %270 = load double, double* %269, align 8, !dbg !2400
  %271 = load double, double* %19, align 8, !dbg !2401
  %272 = call double @fabs(double %271) #1, !dbg !2402
  %273 = fmul double %270, %272, !dbg !2403
  call void @fMulHandler(double %270, double %272, double %273, i64 93937690014392, i64 93937690115248, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690115728, i32 353, i32 20), !dbg !2404
  %274 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !2404
  %275 = load double, double* %274, align 8, !dbg !2404
  %276 = fadd double %273, %275, !dbg !2405
  call void @fAddHandler(double %273, double %275, double %276, i64 93937690115728, i64 93937690116568, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690118240, i32 353, i32 40), !dbg !2406
  %277 = load double, double* %20, align 8, !dbg !2406
  %278 = call double @fabs(double %277) #1, !dbg !2407
  %279 = fdiv double %276, %278, !dbg !2408
  call void @fDivHandler(double %276, double %278, double %279, i64 93937690118240, i64 93937690119104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690119584, i32 353, i32 49), !dbg !2409
  %280 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2409
  %281 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %280, i32 0, i32 1, !dbg !2410
  store double %279, double* %281, align 8, !dbg !2411
  %282 = load i32, i32* %33, align 4, !dbg !2412
  %283 = icmp sge i32 %282, 800, !dbg !2414
  %284 = sext i32 %282 to i64, !dbg !2415
  %285 = call i1 @iCmpInstHandler(i64 %284, i64 800, i1 %283, i32 39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690121632, i32 355, i32 8), !dbg !2415
  br i1 %285, label %286, label %289, !dbg !2415

; <label>:286:                                    ; preds = %205
  br label %287, !dbg !2416, !llvm.loop !2417

; <label>:287:                                    ; preds = %286
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 356, i32 11), !dbg !2418
  store i32 11, i32* %6, align 4, !dbg !2418
  br label %308, !dbg !2418
                                                  ; No predecessors!
  br label %308, !dbg !2421

; <label>:289:                                    ; preds = %205
  %290 = load i32, i32* %15, align 4, !dbg !2423
  %291 = icmp ne i32 %290, 0, !dbg !2423
  %292 = sext i32 %290 to i64, !dbg !2423
  %293 = call i1 @iCmpInstHandler(i64 %292, i64 0, i1 %291, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690126656, i32 358, i32 12), !dbg !2423
  br i1 %293, label %294, label %296, !dbg !2423

; <label>:294:                                    ; preds = %289
  %295 = load i32, i32* %15, align 4, !dbg !2424
  br label %306, !dbg !2424

; <label>:296:                                    ; preds = %289
  %297 = load i32, i32* %16, align 4, !dbg !2426
  %298 = icmp ne i32 %297, 0, !dbg !2426
  %299 = sext i32 %297 to i64, !dbg !2426
  %300 = call i1 @iCmpInstHandler(i64 %299, i64 0, i1 %298, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @19, i32 0, i32 0), i64 93937690131200, i32 358, i32 12), !dbg !2426
  br i1 %300, label %301, label %303, !dbg !2426

; <label>:301:                                    ; preds = %296
  %302 = load i32, i32* %16, align 4, !dbg !2428
  br label %304, !dbg !2428

; <label>:303:                                    ; preds = %296
  br label %304, !dbg !2430

; <label>:304:                                    ; preds = %303, %301
  %305 = phi i32 [ %302, %301 ], [ 0, %303 ], !dbg !2432
  br label %306, !dbg !2432

; <label>:306:                                    ; preds = %304, %294
  %307 = phi i32 [ %295, %294 ], [ %305, %304 ], !dbg !2434
  store i32 %307, i32* %6, align 4, !dbg !2436
  br label %308, !dbg !2436

; <label>:308:                                    ; preds = %306, %288, %287, %94
  %309 = load i32, i32* %6, align 4, !dbg !2437
  ret i32 %309, !dbg !2437
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
  call void @fDivHandler(double 1.000000e+00, double %26, double %27, i64 0, i64 93937688955848, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690152144, i32 565, i32 21), !dbg !2458
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
  call void @fAddHandler(double %30, double 1.000000e+00, double %31, i64 93937690161608, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690162016, i32 568, i32 24), !dbg !2468
  store double %31, double* %20, align 8, !dbg !2468
  call void @llvm.dbg.declare(metadata i32* %21, metadata !2471, metadata !60), !dbg !2472
  store i32 1, i32* %21, align 4, !dbg !2473
  br label %32, !dbg !2475

; <label>:32:                                     ; preds = %67, %8
  %33 = load i32, i32* %21, align 4, !dbg !2476
  %34 = load i32, i32* %10, align 4, !dbg !2479
  %35 = icmp sle i32 %33, %34, !dbg !2480
  %36 = sext i32 %33 to i64, !dbg !2481
  %37 = sext i32 %34 to i64, !dbg !2481
  %38 = call i1 @iCmpInstHandler(i64 %36, i64 %37, i1 %35, i32 41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690166816, i32 571, i32 13), !dbg !2481
  br i1 %38, label %39, label %70, !dbg !2481

; <label>:39:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata double* %22, metadata !2482, metadata !60), !dbg !2484
  %40 = load double, double* %11, align 8, !dbg !2485
  %41 = load double, double* %20, align 8, !dbg !2486
  %42 = fdiv double %40, %41, !dbg !2487
  call void @fDivHandler(double %40, double %41, double %42, i64 93937690168984, i64 93937690169336, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690169744, i32 572, i32 20), !dbg !2484
  store double %42, double* %22, align 8, !dbg !2484
  call void @llvm.dbg.declare(metadata double* %23, metadata !2488, metadata !60), !dbg !2489
  %43 = load double, double* %22, align 8, !dbg !2490
  %44 = call double @hypot(double 1.000000e+00, double %43) #6, !dbg !2491
  store double %44, double* %23, align 8, !dbg !2489
  call void @llvm.dbg.declare(metadata double* %24, metadata !2492, metadata !60), !dbg !2493
  %45 = load double, double* %22, align 8, !dbg !2494
  %46 = load double, double* %20, align 8, !dbg !2495
  %47 = load double, double* %17, align 8, !dbg !2496
  %48 = fmul double %46, %47, !dbg !2497
  call void @fMulHandler(double %46, double %47, double %48, i64 93937690177000, i64 93937690177384, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690177792, i32 574, i32 25), !dbg !2498
  %49 = fadd double %45, %48, !dbg !2498
  call void @fAddHandler(double %45, double %48, double %49, i64 93937690176648, i64 93937690177792, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690178208, i32 574, i32 20), !dbg !2493
  store double %49, double* %24, align 8, !dbg !2493
  call void @llvm.dbg.declare(metadata double* %25, metadata !2499, metadata !60), !dbg !2500
  %50 = load double, double* %24, align 8, !dbg !2501
  %51 = load double, double* %18, align 8, !dbg !2502
  %52 = fmul double %50, %51, !dbg !2503
  call void @fMulHandler(double %50, double %51, double %52, i64 93937690181400, i64 93937690181752, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690182160, i32 575, i32 22), !dbg !2504
  %53 = load double, double* %19, align 8, !dbg !2504
  %54 = fsub double %52, %53, !dbg !2505
  call void @fSubHandler(double %52, double %53, double %54, i64 93937690182160, i64 93937690182552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690182960, i32 575, i32 27), !dbg !2506
  %55 = load double, double* %23, align 8, !dbg !2506
  %56 = fdiv double %54, %55, !dbg !2507
  call void @fDivHandler(double %54, double %55, double %56, i64 93937690182960, i64 93937690183352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690183760, i32 575, i32 33), !dbg !2500
  store double %56, double* %25, align 8, !dbg !2500
  %57 = load double, double* %23, align 8, !dbg !2508
  %58 = load double, double* %18, align 8, !dbg !2509
  %59 = fmul double %57, %58, !dbg !2510
  call void @fMulHandler(double %57, double %58, double %59, i64 93937690185832, i64 93937690186216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690186624, i32 576, i32 15), !dbg !2511
  %60 = load double, double* %24, align 8, !dbg !2511
  %61 = load double, double* %25, align 8, !dbg !2512
  %62 = fmul double %60, %61, !dbg !2513
  call void @fMulHandler(double %60, double %61, double %62, i64 93937690187016, i64 93937690187400, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690187808, i32 576, i32 24), !dbg !2514
  %63 = fsub double %59, %62, !dbg !2514
  call void @fSubHandler(double %59, double %62, double %63, i64 93937690186624, i64 93937690187808, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690188224, i32 576, i32 20), !dbg !2515
  store double %63, double* %19, align 8, !dbg !2515
  %64 = load double, double* %25, align 8, !dbg !2516
  store double %64, double* %18, align 8, !dbg !2517
  %65 = load double, double* %20, align 8, !dbg !2518
  %66 = fadd double %65, 1.000000e+00, !dbg !2518
  call void @fAddHandler(double %65, double 1.000000e+00, double %66, i64 93937690189832, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @21, i32 0, i32 0), i64 93937690190272, i32 578, i32 9), !dbg !2518
  store double %66, double* %20, align 8, !dbg !2518
  br label %67, !dbg !2519

; <label>:67:                                     ; preds = %39
  %68 = load i32, i32* %21, align 4, !dbg !2520
  %69 = add nsw i32 %68, 1, !dbg !2520
  store i32 %69, i32* %21, align 4, !dbg !2520
  br label %32, !dbg !2522, !llvm.loop !2523

; <label>:70:                                     ; preds = %32
  %71 = load double, double* %18, align 8, !dbg !2525
  %72 = load double*, double** %15, align 8, !dbg !2526
  store double %71, double* %72, align 8, !dbg !2527
  %73 = load double, double* %19, align 8, !dbg !2528
  %74 = load double*, double** %16, align 8, !dbg !2529
  store double %73, double* %74, align 8, !dbg !2530
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
  call void @fAddHandler(double %30, double 1.000000e+00, double %31, i64 93937690210040, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690210480, i32 826, i32 36), !dbg !2552
  %32 = fmul double %29, %31, !dbg !2552
  call void @fMulHandler(double %29, double %31, double %32, i64 93937689064504, i64 93937690210480, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690210864, i32 826, i32 31), !dbg !2553
  %33 = fadd double %32, 0x3FC5F15F15F15F16, !dbg !2553
  call void @fAddHandler(double %32, double 0x3FC5F15F15F15F16, double %33, i64 93937690210864, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690211344, i32 826, i32 42), !dbg !2548
  store double %33, double* %14, align 8, !dbg !2548
  call void @llvm.dbg.declare(metadata double* %15, metadata !2554, metadata !60), !dbg !2555
  %34 = load double, double* %14, align 8, !dbg !2556
  %35 = fcmp ogt double %34, 0.000000e+00, !dbg !2556
  %36 = call i1 @fCmpInstHandler(double %34, double 0.000000e+00, i1 %35, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690214912, i32 827, i32 28), !dbg !2556
  br i1 %36, label %37, label %39, !dbg !2556

; <label>:37:                                     ; preds = %6
  %38 = load double, double* %14, align 8, !dbg !2557
  br label %40, !dbg !2557

; <label>:39:                                     ; preds = %6
  br label %40, !dbg !2559

; <label>:40:                                     ; preds = %39, %37
  %41 = phi double [ %38, %37 ], [ 0.000000e+00, %39 ], !dbg !2561
  store double %41, double* %15, align 8, !dbg !2563
  call void @llvm.dbg.declare(metadata double* %16, metadata !2564, metadata !60), !dbg !2565
  %42 = load double, double* %10, align 8, !dbg !2566
  %43 = load double, double* %9, align 8, !dbg !2567
  %44 = fmul double 2.000000e+00, %43, !dbg !2568
  call void @fMulHandler(double 2.000000e+00, double %43, double %44, i64 0, i64 93937690221720, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690222160, i32 828, i32 39), !dbg !2569
  %45 = load double, double* %10, align 8, !dbg !2569
  %46 = fsub double %44, %45, !dbg !2570
  call void @fSubHandler(double %44, double %45, double %46, i64 93937690222160, i64 93937690222520, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690222928, i32 828, i32 44), !dbg !2571
  %47 = fmul double %42, %46, !dbg !2571
  call void @fMulHandler(double %42, double %46, double %47, i64 93937690221368, i64 93937690222928, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690223344, i32 828, i32 34), !dbg !2572
  %48 = load double, double* %15, align 8, !dbg !2572
  %49 = fadd double %47, %48, !dbg !2573
  call void @fAddHandler(double %47, double %48, double %49, i64 93937690223344, i64 93937690223736, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690224144, i32 828, i32 49), !dbg !2574
  %50 = call double @sqrt(double %49) #6, !dbg !2574
  call void @callOneArgHandler(i32 14, double %49, double %50, i64 93937690224144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690224624, i32 828, i32 28), !dbg !2565
  store double %50, double* %16, align 8, !dbg !2565
  call void @llvm.dbg.declare(metadata double* %17, metadata !2575, metadata !60), !dbg !2576
  %51 = load double, double* %15, align 8, !dbg !2577
  %52 = load double, double* %9, align 8, !dbg !2578
  %53 = load double, double* %9, align 8, !dbg !2579
  %54 = fmul double %52, %53, !dbg !2580
  call void @fMulHandler(double %52, double %53, double %54, i64 93937690228232, i64 93937690228616, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690229024, i32 829, i32 46), !dbg !2581
  %55 = load double, double* %15, align 8, !dbg !2581
  %56 = fadd double %54, %55, !dbg !2582
  call void @fAddHandler(double %54, double %55, double %56, i64 93937690229024, i64 93937690229416, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690229824, i32 829, i32 50), !dbg !2583
  %57 = fdiv double %51, %56, !dbg !2583
  call void @fDivHandler(double %51, double %56, double %57, i64 93937690227880, i64 93937690229824, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690230240, i32 829, i32 41), !dbg !2584
  %58 = call double @sqrt(double %57) #6, !dbg !2584
  call void @callOneArgHandler(i32 14, double %57, double %58, i64 93937690230240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690230720, i32 829, i32 28), !dbg !2585
  %59 = load double, double* %16, align 8, !dbg !2585
  %60 = fmul double %58, %59, !dbg !2586
  call void @fMulHandler(double %58, double %59, double %60, i64 93937690230720, i64 93937690231176, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690231584, i32 829, i32 62), !dbg !2587
  %61 = load double, double* %10, align 8, !dbg !2587
  %62 = fdiv double %60, %61, !dbg !2588
  call void @fDivHandler(double %60, double %61, double %62, i64 93937690231584, i64 93937690231976, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690232384, i32 829, i32 74), !dbg !2576
  store double %62, double* %17, align 8, !dbg !2576
  call void @llvm.dbg.declare(metadata double* %18, metadata !2589, metadata !60), !dbg !2590
  %63 = load double, double* %17, align 8, !dbg !2591
  %64 = load double, double* %17, align 8, !dbg !2592
  %65 = call double @hypot(double 1.000000e+00, double %64) #6, !dbg !2593
  %66 = fadd double %63, %65, !dbg !2594
  call void @fAddHandler(double %63, double %65, double %66, i64 93937690235576, i64 93937690236456, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690236928, i32 830, i32 41), !dbg !2595
  %67 = call double @log(double %66) #6, !dbg !2595
  call void @callOneArgHandler(i32 12, double %66, double %67, i64 93937690236928, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690237376, i32 830, i32 28), !dbg !2590
  store double %67, double* %18, align 8, !dbg !2590
  call void @llvm.dbg.declare(metadata double* %19, metadata !2596, metadata !60), !dbg !2597
  %68 = load double, double* %16, align 8, !dbg !2598
  %69 = load double, double* %9, align 8, !dbg !2599
  %70 = load double, double* %16, align 8, !dbg !2600
  %71 = load double, double* %10, align 8, !dbg !2601
  %72 = load double, double* %9, align 8, !dbg !2602
  %73 = fsub double %71, %72, !dbg !2603
  call void @fSubHandler(double %71, double %72, double %73, i64 93937690241752, i64 93937690242136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690242544, i32 832, i32 60), !dbg !2604
  %74 = call double @atan2(double %70, double %73) #6, !dbg !2604
  call void @callTwoArgsHandler(i32 7, double %70, double %73, double %74, i64 93937690241368, i64 93937690242544, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690243352, i32 832, i32 43), !dbg !2605
  %75 = fmul double %69, %74, !dbg !2605
  call void @fMulHandler(double %69, double %74, double %75, i64 93937690240984, i64 93937690243352, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690243824, i32 832, i32 42), !dbg !2606
  %76 = fsub double %68, %75, !dbg !2606
  call void @fSubHandler(double %68, double %75, double %76, i64 93937690240632, i64 93937690243824, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690244240, i32 832, i32 37), !dbg !2607
  %77 = load double, double* %15, align 8, !dbg !2607
  %78 = call double @sqrt(double %77) #6, !dbg !2608
  call void @callOneArgHandler(i32 14, double %77, double %78, i64 93937690244632, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690245104, i32 832, i32 68), !dbg !2609
  %79 = load double, double* %18, align 8, !dbg !2609
  %80 = fmul double %78, %79, !dbg !2610
  call void @fMulHandler(double %78, double %79, double %80, i64 93937690245104, i64 93937690245560, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690245968, i32 832, i32 83), !dbg !2611
  %81 = fsub double %76, %80, !dbg !2611
  call void @fSubHandler(double %76, double %80, double %81, i64 93937690244240, i64 93937690245968, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690246384, i32 832, i32 66), !dbg !2612
  %82 = call double @fabs(double %81) #1, !dbg !2612
  store double %82, double* %19, align 8, !dbg !2597
  call void @llvm.dbg.declare(metadata double* %20, metadata !2613, metadata !60), !dbg !2614
  %83 = load double, double* %19, align 8, !dbg !2615
  %84 = fmul double 3.000000e+00, %83, !dbg !2616
  call void @fMulHandler(double 3.000000e+00, double %83, double %84, i64 0, i64 93937690250168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690250640, i32 834, i32 35), !dbg !2617
  %85 = fdiv double %84, 2.000000e+00, !dbg !2617
  call void @fDivHandler(double %84, double 2.000000e+00, double %85, i64 93937690250640, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690251056, i32 834, i32 39), !dbg !2618
  %86 = call double @pow(double %85, double 0x3FD5555555555555) #6, !dbg !2618
  call void @callTwoArgsHandler(i32 15, double %85, double 0x3FD5555555555555, double %86, i64 93937690251056, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690251624, i32 834, i32 28), !dbg !2614
  store double %86, double* %20, align 8, !dbg !2614
  call void @llvm.dbg.declare(metadata double* %21, metadata !2619, metadata !60), !dbg !2620
  %87 = load double, double* %19, align 8, !dbg !2621
  %88 = fmul double 0x400921FB54442D18, %87, !dbg !2622
  call void @fMulHandler(double 0x400921FB54442D18, double %87, double %88, i64 0, i64 93937690254840, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690255216, i32 835, i32 37), !dbg !2623
  %89 = load double, double* %10, align 8, !dbg !2623
  %90 = fmul double %88, %89, !dbg !2624
  call void @fMulHandler(double %88, double %89, double %90, i64 93937690255216, i64 93937690255608, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690256016, i32 835, i32 41), !dbg !2625
  %91 = load double, double* %16, align 8, !dbg !2625
  %92 = fmul double 6.000000e+00, %91, !dbg !2626
  call void @fMulHandler(double 6.000000e+00, double %91, double %92, i64 0, i64 93937690256408, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690256912, i32 835, i32 49), !dbg !2627
  %93 = fdiv double %90, %92, !dbg !2627
  call void @fDivHandler(double %90, double %92, double %93, i64 93937690256016, i64 93937690256912, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690257296, i32 835, i32 43), !dbg !2628
  %94 = call double @sqrt(double %93) #6, !dbg !2628
  call void @callOneArgHandler(i32 14, double %93, double %94, i64 93937690257296, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690257776, i32 835, i32 28), !dbg !2620
  store double %94, double* %21, align 8, !dbg !2620
  call void @llvm.dbg.declare(metadata double* %22, metadata !2629, metadata !60), !dbg !2630
  %95 = load double, double* %21, align 8, !dbg !2631
  %96 = fmul double %95, 3.000000e+00, !dbg !2632
  call void @fMulHandler(double %95, double 3.000000e+00, double %96, i64 93937690261032, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690261440, i32 837, i32 24), !dbg !2633
  %97 = load double, double* %20, align 8, !dbg !2633
  %98 = fdiv double %96, %97, !dbg !2634
  call void @fDivHandler(double %96, double %97, double %98, i64 93937690261440, i64 93937690261800, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690262208, i32 837, i32 29), !dbg !2630
  store double %98, double* %22, align 8, !dbg !2630
  call void @llvm.dbg.declare(metadata double* %23, metadata !2635, metadata !60), !dbg !2636
  %99 = load double, double* %21, align 8, !dbg !2637
  %100 = fmul double %99, 3.000000e+00, !dbg !2638
  call void @fMulHandler(double %99, double 3.000000e+00, double %100, i64 93937690265400, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690265808, i32 838, i32 24), !dbg !2639
  %101 = load double, double* %20, align 8, !dbg !2639
  %102 = fdiv double %100, %101, !dbg !2640
  call void @fDivHandler(double %100, double %101, double %102, i64 93937690265808, i64 93937690266168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690266576, i32 838, i32 29), !dbg !2636
  store double %102, double* %23, align 8, !dbg !2636
  call void @llvm.dbg.declare(metadata double* %24, metadata !2641, metadata !60), !dbg !2642
  call void @llvm.dbg.declare(metadata double* %25, metadata !2643, metadata !60), !dbg !2644
  call void @llvm.dbg.declare(metadata double* %26, metadata !2645, metadata !60), !dbg !2646
  %103 = load double, double* %19, align 8, !dbg !2647
  store double %103, double* %26, align 8, !dbg !2646
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !2648, metadata !60), !dbg !2649
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !2650, metadata !60), !dbg !2651
  %104 = load double, double* %20, align 8, !dbg !2652
  %105 = load double, double* %20, align 8, !dbg !2653
  %106 = fmul double %104, %105, !dbg !2654
  call void @fMulHandler(double %104, double %105, double %106, i64 93937690276184, i64 93937690276536, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690276944, i32 845, i32 36), !dbg !2655
  %107 = call i32 @gsl_sf_airy_Ai_scaled_e(double %106, i32 0, %struct.gsl_sf_result_struct* %27), !dbg !2655
  %108 = load double, double* %20, align 8, !dbg !2656
  %109 = load double, double* %20, align 8, !dbg !2657
  %110 = fmul double %108, %109, !dbg !2658
  call void @fMulHandler(double %108, double %109, double %110, i64 93937690278248, i64 93937690278632, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690279040, i32 846, i32 36), !dbg !2659
  %111 = call i32 @gsl_sf_airy_Bi_scaled_e(double %110, i32 0, %struct.gsl_sf_result_struct* %28), !dbg !2659
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !2660
  %113 = load double, double* %112, align 8, !dbg !2660
  %114 = load double, double* %22, align 8, !dbg !2661
  %115 = fmul double %114, %113, !dbg !2661
  call void @fMulHandler(double %114, double %113, double %115, i64 93937690282488, i64 93937690280840, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690282896, i32 847, i32 5), !dbg !2661
  store double %115, double* %22, align 8, !dbg !2661
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !2662
  %117 = load double, double* %116, align 8, !dbg !2662
  %118 = load double, double* %23, align 8, !dbg !2663
  %119 = fmul double %118, %117, !dbg !2663
  call void @fMulHandler(double %118, double %117, double %119, i64 93937690286776, i64 93937690285128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690287184, i32 848, i32 5), !dbg !2663
  store double %119, double* %23, align 8, !dbg !2663
  %120 = load double, double* %22, align 8, !dbg !2664
  %121 = call double @log(double %120) #6, !dbg !2665
  call void @callOneArgHandler(i32 12, double %120, double %121, i64 93937690288968, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690289440, i32 849, i32 11), !dbg !2666
  %122 = load double, double* %26, align 8, !dbg !2666
  %123 = fsub double %121, %122, !dbg !2667
  call void @fSubHandler(double %121, double %122, double %123, i64 93937690289440, i64 93937690289896, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690290304, i32 849, i32 18), !dbg !2668
  store double %123, double* %24, align 8, !dbg !2668
  %124 = load double, double* %23, align 8, !dbg !2669
  %125 = call double @log(double %124) #6, !dbg !2670
  call void @callOneArgHandler(i32 12, double %124, double %125, i64 93937690291112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690291584, i32 850, i32 11), !dbg !2671
  %126 = load double, double* %26, align 8, !dbg !2671
  %127 = fadd double %125, %126, !dbg !2672
  call void @fAddHandler(double %125, double %126, double %127, i64 93937690291584, i64 93937690292040, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690292448, i32 850, i32 18), !dbg !2673
  store double %127, double* %25, align 8, !dbg !2673
  %128 = load double, double* %25, align 8, !dbg !2674
  %129 = fcmp oge double %128, 0x40862E42FEFA39EF, !dbg !2676
  %130 = call i1 @fCmpInstHandler(double %128, double 0x40862E42FEFA39EF, i1 %129, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690293664, i32 852, i32 12), !dbg !2677
  br i1 %130, label %131, label %152, !dbg !2677

; <label>:131:                                    ; preds = %40
  %132 = load double, double* %22, align 8, !dbg !2678
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2680
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 0, !dbg !2681
  store double %132, double* %134, align 8, !dbg !2682
  %135 = load double, double* %23, align 8, !dbg !2683
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !2684
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 0, !dbg !2685
  store double %135, double* %137, align 8, !dbg !2686
  %138 = load double, double* %22, align 8, !dbg !2687
  %139 = call double @fabs(double %138) #1, !dbg !2688
  %140 = fmul double 1.000000e-03, %139, !dbg !2689
  call void @fMulHandler(double 1.000000e-03, double %139, double %140, i64 0, i64 93937690300512, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690301088, i32 855, i32 25), !dbg !2690
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2690
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 1, !dbg !2691
  store double %140, double* %142, align 8, !dbg !2692
  %143 = load double, double* %23, align 8, !dbg !2693
  %144 = call double @fabs(double %143) #1, !dbg !2694
  %145 = fmul double 1.000000e-03, %144, !dbg !2695
  call void @fMulHandler(double 1.000000e-03, double %144, double %145, i64 0, i64 93937690303168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690303680, i32 856, i32 25), !dbg !2696
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !2696
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 1, !dbg !2697
  store double %145, double* %147, align 8, !dbg !2698
  %148 = load double, double* %26, align 8, !dbg !2699
  %149 = load double*, double** %13, align 8, !dbg !2700
  store double %148, double* %149, align 8, !dbg !2701
  br label %150, !dbg !2702, !llvm.loop !2703

; <label>:150:                                    ; preds = %131
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 858, i32 16), !dbg !2704
  store i32 16, i32* %7, align 4, !dbg !2704
  br label %176, !dbg !2704
                                                  ; No predecessors!
  br label %176, !dbg !2707

; <label>:152:                                    ; preds = %40
  %153 = load double, double* %24, align 8, !dbg !2708
  %154 = call double @exp(double %153) #6, !dbg !2710
  call void @callOneArgHandler(i32 11, double %153, double %154, i64 93937690310248, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690310928, i32 861, i32 18), !dbg !2711
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2711
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 0, !dbg !2712
  store double %154, double* %156, align 8, !dbg !2713
  %157 = load double, double* %25, align 8, !dbg !2714
  %158 = call double @exp(double %157) #6, !dbg !2715
  call void @callOneArgHandler(i32 11, double %157, double %158, i64 93937690312664, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690313136, i32 862, i32 18), !dbg !2716
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !2716
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !2717
  store double %158, double* %160, align 8, !dbg !2718
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2719
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !2720
  %163 = load double, double* %162, align 8, !dbg !2720
  %164 = call double @fabs(double %163) #1, !dbg !2721
  %165 = fmul double 1.000000e-03, %164, !dbg !2722
  call void @fMulHandler(double 1.000000e-03, double %164, double %165, i64 0, i64 93937690317408, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690317920, i32 863, i32 25), !dbg !2723
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2723
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 1, !dbg !2724
  store double %165, double* %167, align 8, !dbg !2725
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !2726
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 0, !dbg !2727
  %170 = load double, double* %169, align 8, !dbg !2727
  %171 = call double @fabs(double %170) #1, !dbg !2728
  %172 = fmul double 1.000000e-03, %171, !dbg !2729
  call void @fMulHandler(double 1.000000e-03, double %171, double %172, i64 0, i64 93937690322096, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0), i64 93937690322608, i32 864, i32 25), !dbg !2730
  %173 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !2730
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %173, i32 0, i32 1, !dbg !2731
  store double %172, double* %174, align 8, !dbg !2732
  %175 = load double*, double** %13, align 8, !dbg !2733
  store double 0.000000e+00, double* %175, align 8, !dbg !2734
  store i32 0, i32* %7, align 4, !dbg !2735
  br label %176, !dbg !2735

; <label>:176:                                    ; preds = %152, %151, %150
  %177 = load i32, i32* %7, align 4, !dbg !2736
  ret i32 %177, !dbg !2736
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
  call void @fMulHandler(double 2.000000e+00, double %34, double %35, i64 0, i64 93937689252472, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690348704, i32 744, i32 27), !dbg !2759
  store double %35, double* %16, align 8, !dbg !2759
  call void @llvm.dbg.declare(metadata double* %17, metadata !2762, metadata !60), !dbg !2763
  %36 = load double, double* %9, align 8, !dbg !2764
  %37 = fdiv double 1.000000e+00, %36, !dbg !2765
  call void @fDivHandler(double 1.000000e+00, double %36, double %37, i64 0, i64 93937689173768, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690352176, i32 745, i32 27), !dbg !2763
  store double %37, double* %17, align 8, !dbg !2763
  call void @llvm.dbg.declare(metadata double* %18, metadata !2766, metadata !60), !dbg !2767
  %38 = load double, double* %8, align 8, !dbg !2768
  %39 = load double, double* %8, align 8, !dbg !2769
  %40 = fmul double %38, %39, !dbg !2770
  call void @fMulHandler(double %38, double %39, double %40, i64 93937689070952, i64 93937690355592, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690356000, i32 746, i32 27), !dbg !2771
  %41 = load double, double* %7, align 8, !dbg !2771
  %42 = load double, double* %7, align 8, !dbg !2772
  %43 = fadd double %42, 1.000000e+00, !dbg !2773
  call void @fAddHandler(double %42, double 1.000000e+00, double %43, i64 93937690356776, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690357216, i32 746, i32 49), !dbg !2774
  %44 = fmul double %41, %43, !dbg !2774
  call void @fMulHandler(double %41, double %43, double %44, i64 93937690356392, i64 93937690357216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690357600, i32 746, i32 40), !dbg !2775
  %45 = fadd double %40, %44, !dbg !2775
  call void @fAddHandler(double %40, double %44, double %45, i64 93937690356000, i64 93937690357600, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690358016, i32 746, i32 32), !dbg !2767
  store double %45, double* %18, align 8, !dbg !2767
  call void @llvm.dbg.declare(metadata double* %19, metadata !2776, metadata !60), !dbg !2777
  %46 = load double, double* %18, align 8, !dbg !2778
  %47 = fsub double -0.000000e+00, %46, !dbg !2779
  call void @fSubHandler(double -0.000000e+00, double %46, double %47, i64 0, i64 93937690361208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690361584, i32 748, i32 15), !dbg !2777
  store double %47, double* %19, align 8, !dbg !2777
  call void @llvm.dbg.declare(metadata double* %20, metadata !2780, metadata !60), !dbg !2781
  %48 = load double, double* %8, align 8, !dbg !2782
  store double %48, double* %20, align 8, !dbg !2781
  call void @llvm.dbg.declare(metadata double* %21, metadata !2783, metadata !60), !dbg !2784
  %49 = load double, double* %9, align 8, !dbg !2785
  %50 = load double, double* %8, align 8, !dbg !2786
  %51 = fsub double %49, %50, !dbg !2787
  call void @fSubHandler(double %49, double %50, double %51, i64 93937690367928, i64 93937690368280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690368688, i32 751, i32 23), !dbg !2788
  %52 = fmul double 2.000000e+00, %51, !dbg !2788
  call void @fMulHandler(double 2.000000e+00, double %51, double %52, i64 0, i64 93937690368688, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690369136, i32 751, i32 19), !dbg !2784
  store double %52, double* %21, align 8, !dbg !2784
  call void @llvm.dbg.declare(metadata double* %22, metadata !2789, metadata !60), !dbg !2790
  store double 2.000000e+00, double* %22, align 8, !dbg !2790
  call void @llvm.dbg.declare(metadata double* %23, metadata !2791, metadata !60), !dbg !2792
  %53 = load double, double* %21, align 8, !dbg !2793
  %54 = load double, double* %21, align 8, !dbg !2794
  %55 = load double, double* %21, align 8, !dbg !2795
  %56 = fmul double %54, %55, !dbg !2796
  call void @fMulHandler(double %54, double %55, double %56, i64 93937690375416, i64 93937690375800, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690376208, i32 754, i32 22), !dbg !2797
  %57 = load double, double* %22, align 8, !dbg !2797
  %58 = load double, double* %22, align 8, !dbg !2798
  %59 = fmul double %57, %58, !dbg !2799
  call void @fMulHandler(double %57, double %58, double %59, i64 93937690376600, i64 93937690376984, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690377392, i32 754, i32 30), !dbg !2800
  %60 = fadd double %56, %59, !dbg !2800
  call void @fAddHandler(double %56, double %59, double %60, i64 93937690376208, i64 93937690377392, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690377808, i32 754, i32 26), !dbg !2801
  %61 = fdiv double %53, %60, !dbg !2801
  call void @fDivHandler(double %53, double %60, double %61, i64 93937690375064, i64 93937690377808, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690378224, i32 754, i32 18), !dbg !2792
  store double %61, double* %23, align 8, !dbg !2792
  call void @llvm.dbg.declare(metadata double* %24, metadata !2802, metadata !60), !dbg !2803
  %62 = load double, double* %22, align 8, !dbg !2804
  %63 = fsub double -0.000000e+00, %62, !dbg !2805
  call void @fSubHandler(double -0.000000e+00, double %62, double %63, i64 0, i64 93937690381416, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690381792, i32 755, i32 15), !dbg !2806
  %64 = load double, double* %21, align 8, !dbg !2806
  %65 = load double, double* %21, align 8, !dbg !2807
  %66 = fmul double %64, %65, !dbg !2808
  call void @fMulHandler(double %64, double %65, double %66, i64 93937690382184, i64 93937690382568, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690382976, i32 755, i32 22), !dbg !2809
  %67 = load double, double* %22, align 8, !dbg !2809
  %68 = load double, double* %22, align 8, !dbg !2810
  %69 = fmul double %67, %68, !dbg !2811
  call void @fMulHandler(double %67, double %68, double %69, i64 93937690383368, i64 93937690383752, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690384160, i32 755, i32 30), !dbg !2812
  %70 = fadd double %66, %69, !dbg !2812
  call void @fAddHandler(double %66, double %69, double %70, i64 93937690382976, i64 93937690384160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690384576, i32 755, i32 26), !dbg !2813
  %71 = fdiv double %63, %70, !dbg !2813
  call void @fDivHandler(double %63, double %70, double %71, i64 93937690381792, i64 93937690384576, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690384992, i32 755, i32 18), !dbg !2803
  store double %71, double* %24, align 8, !dbg !2803
  call void @llvm.dbg.declare(metadata double* %25, metadata !2814, metadata !60), !dbg !2815
  %72 = load double, double* %17, align 8, !dbg !2816
  %73 = fsub double -0.000000e+00, %72, !dbg !2817
  call void @fSubHandler(double -0.000000e+00, double %72, double %73, i64 0, i64 93937690388184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690388560, i32 757, i32 15), !dbg !2818
  %74 = load double, double* %19, align 8, !dbg !2818
  %75 = load double, double* %24, align 8, !dbg !2819
  %76 = fmul double %74, %75, !dbg !2820
  call void @fMulHandler(double %74, double %75, double %76, i64 93937690388952, i64 93937690389336, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690389744, i32 757, i32 25), !dbg !2821
  %77 = load double, double* %20, align 8, !dbg !2821
  %78 = load double, double* %23, align 8, !dbg !2822
  %79 = fmul double %77, %78, !dbg !2823
  call void @fMulHandler(double %77, double %78, double %79, i64 93937690390136, i64 93937690390520, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690390928, i32 757, i32 33), !dbg !2824
  %80 = fadd double %76, %79, !dbg !2824
  call void @fAddHandler(double %76, double %79, double %80, i64 93937690389744, i64 93937690390928, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690391344, i32 757, i32 29), !dbg !2825
  %81 = fmul double %73, %80, !dbg !2825
  call void @fMulHandler(double %73, double %80, double %81, i64 93937690388560, i64 93937690391344, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690391760, i32 757, i32 21), !dbg !2815
  store double %81, double* %25, align 8, !dbg !2815
  call void @llvm.dbg.declare(metadata double* %26, metadata !2826, metadata !60), !dbg !2827
  %82 = load double, double* %17, align 8, !dbg !2828
  %83 = load double, double* %19, align 8, !dbg !2829
  %84 = load double, double* %23, align 8, !dbg !2830
  %85 = fmul double %83, %84, !dbg !2831
  call void @fMulHandler(double %83, double %84, double %85, i64 93937690395304, i64 93937690395688, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690396096, i32 758, i32 25), !dbg !2832
  %86 = load double, double* %20, align 8, !dbg !2832
  %87 = load double, double* %24, align 8, !dbg !2833
  %88 = fmul double %86, %87, !dbg !2834
  call void @fMulHandler(double %86, double %87, double %88, i64 93937690396488, i64 93937690396872, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690397280, i32 758, i32 33), !dbg !2835
  %89 = fsub double %85, %88, !dbg !2835
  call void @fSubHandler(double %85, double %88, double %89, i64 93937690396096, i64 93937690397280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690397696, i32 758, i32 29), !dbg !2836
  %90 = fmul double %82, %89, !dbg !2836
  call void @fMulHandler(double %82, double %89, double %90, i64 93937690394952, i64 93937690397696, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690398112, i32 758, i32 21), !dbg !2827
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
  call void @fMulHandler(double %91, double %92, double %93, i64 93937690411192, i64 93937690411544, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690411952, i32 764, i32 25), !dbg !2854
  %94 = fsub double 1.000000e+00, %93, !dbg !2854
  call void @fSubHandler(double 1.000000e+00, double %93, double %94, i64 0, i64 93937690411952, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690412400, i32 764, i32 20), !dbg !2850
  store double %94, double* %33, align 8, !dbg !2850
  %95 = load i32*, i32** %12, align 8, !dbg !2855
  store i32 0, i32* %95, align 4, !dbg !2856
  br label %96, !dbg !2857, !llvm.loop !2858

; <label>:96:                                     ; preds = %184, %6
  %97 = load double, double* %25, align 8, !dbg !2859
  %98 = load double, double* %32, align 8, !dbg !2861
  %99 = fadd double %98, %97, !dbg !2861
  call void @fAddHandler(double %98, double %97, double %99, i64 93937690416376, i64 93937690416056, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690416784, i32 769, i32 7), !dbg !2861
  store double %99, double* %32, align 8, !dbg !2861
  %100 = load double, double* %26, align 8, !dbg !2862
  %101 = load double, double* %33, align 8, !dbg !2863
  %102 = fadd double %101, %100, !dbg !2863
  call void @fAddHandler(double %101, double %100, double %102, i64 93937690418952, i64 93937690418568, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690419360, i32 770, i32 7), !dbg !2863
  store double %102, double* %33, align 8, !dbg !2863
  %103 = load double, double* %31, align 8, !dbg !2864
  %104 = fadd double %103, 2.000000e+00, !dbg !2864
  call void @fAddHandler(double %103, double 2.000000e+00, double %104, i64 93937690421144, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690421584, i32 771, i32 8), !dbg !2864
  store double %104, double* %31, align 8, !dbg !2864
  %105 = load double, double* %31, align 8, !dbg !2865
  %106 = load double, double* %19, align 8, !dbg !2866
  %107 = fadd double %106, %105, !dbg !2866
  call void @fAddHandler(double %106, double %105, double %107, i64 93937690423720, i64 93937690423368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690424128, i32 772, i32 8), !dbg !2866
  store double %107, double* %19, align 8, !dbg !2866
  %108 = load double, double* %16, align 8, !dbg !2867
  %109 = load double, double* %20, align 8, !dbg !2868
  %110 = fadd double %109, %108, !dbg !2868
  call void @fAddHandler(double %109, double %108, double %110, i64 93937690426296, i64 93937690425912, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690426704, i32 773, i32 8), !dbg !2868
  store double %110, double* %20, align 8, !dbg !2868
  %111 = load double, double* %22, align 8, !dbg !2869
  %112 = fadd double %111, 2.000000e+00, !dbg !2869
  call void @fAddHandler(double %111, double 2.000000e+00, double %112, i64 93937690428488, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690428928, i32 774, i32 8), !dbg !2869
  store double %112, double* %22, align 8, !dbg !2869
  %113 = load double, double* %19, align 8, !dbg !2870
  %114 = load double, double* %23, align 8, !dbg !2871
  %115 = fmul double %113, %114, !dbg !2872
  call void @fMulHandler(double %113, double %114, double %115, i64 93937690430712, i64 93937690431064, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690431472, i32 775, i32 12), !dbg !2873
  %116 = load double, double* %20, align 8, !dbg !2873
  %117 = load double, double* %24, align 8, !dbg !2874
  %118 = fmul double %116, %117, !dbg !2875
  call void @fMulHandler(double %116, double %117, double %118, i64 93937690431864, i64 93937690432248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690432656, i32 775, i32 20), !dbg !2876
  %119 = fsub double %115, %118, !dbg !2876
  call void @fSubHandler(double %115, double %118, double %119, i64 93937690431472, i64 93937690432656, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690433072, i32 775, i32 16), !dbg !2877
  %120 = load double, double* %21, align 8, !dbg !2877
  %121 = fadd double %119, %120, !dbg !2878
  call void @fAddHandler(double %119, double %120, double %121, i64 93937690433072, i64 93937690433464, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690433872, i32 775, i32 24), !dbg !2879
  store double %121, double* %30, align 8, !dbg !2879
  %122 = load double, double* %20, align 8, !dbg !2880
  %123 = load double, double* %23, align 8, !dbg !2881
  %124 = fmul double %122, %123, !dbg !2882
  call void @fMulHandler(double %122, double %123, double %124, i64 93937690434680, i64 93937690435064, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690435472, i32 776, i32 12), !dbg !2883
  %125 = load double, double* %19, align 8, !dbg !2883
  %126 = load double, double* %24, align 8, !dbg !2884
  %127 = fmul double %125, %126, !dbg !2885
  call void @fMulHandler(double %125, double %126, double %127, i64 93937690435864, i64 93937690436248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690436656, i32 776, i32 20), !dbg !2886
  %128 = fadd double %124, %127, !dbg !2886
  call void @fAddHandler(double %124, double %127, double %128, i64 93937690435472, i64 93937690436656, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690437072, i32 776, i32 16), !dbg !2887
  %129 = load double, double* %22, align 8, !dbg !2887
  %130 = fadd double %128, %129, !dbg !2888
  call void @fAddHandler(double %128, double %129, double %130, i64 93937690437072, i64 93937690439528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690439936, i32 776, i32 24), !dbg !2889
  store double %130, double* %24, align 8, !dbg !2889
  %131 = load double, double* %30, align 8, !dbg !2890
  %132 = load double, double* %30, align 8, !dbg !2891
  %133 = fmul double %131, %132, !dbg !2892
  call void @fMulHandler(double %131, double %132, double %133, i64 93937690440744, i64 93937690441128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690441536, i32 777, i32 16), !dbg !2893
  %134 = load double, double* %24, align 8, !dbg !2893
  %135 = load double, double* %24, align 8, !dbg !2894
  %136 = fmul double %134, %135, !dbg !2895
  call void @fMulHandler(double %134, double %135, double %136, i64 93937690441928, i64 93937690442312, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690442720, i32 777, i32 23), !dbg !2896
  %137 = fadd double %133, %136, !dbg !2896
  call void @fAddHandler(double %133, double %136, double %137, i64 93937690441536, i64 93937690442720, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690443136, i32 777, i32 19), !dbg !2897
  %138 = fdiv double 1.000000e+00, %137, !dbg !2897
  call void @fDivHandler(double 1.000000e+00, double %137, double %138, i64 0, i64 93937690443136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690443584, i32 777, i32 13), !dbg !2898
  store double %138, double* %29, align 8, !dbg !2898
  %139 = load double, double* %29, align 8, !dbg !2899
  %140 = load double, double* %30, align 8, !dbg !2900
  %141 = fmul double %139, %140, !dbg !2901
  call void @fMulHandler(double %139, double %140, double %141, i64 93937690444360, i64 93937690444744, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690445152, i32 778, i32 12), !dbg !2902
  store double %141, double* %23, align 8, !dbg !2902
  %142 = load double, double* %29, align 8, !dbg !2903
  %143 = fsub double -0.000000e+00, %142, !dbg !2904
  call void @fSubHandler(double -0.000000e+00, double %142, double %143, i64 0, i64 93937690445960, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690446368, i32 779, i32 10), !dbg !2905
  %144 = load double, double* %24, align 8, !dbg !2905
  %145 = fmul double %143, %144, !dbg !2906
  call void @fMulHandler(double %143, double %144, double %145, i64 93937690446368, i64 93937690446760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690447168, i32 779, i32 12), !dbg !2907
  store double %145, double* %24, align 8, !dbg !2907
  %146 = load double, double* %21, align 8, !dbg !2908
  %147 = load double, double* %23, align 8, !dbg !2909
  %148 = fmul double %146, %147, !dbg !2910
  call void @fMulHandler(double %146, double %147, double %148, i64 93937690447976, i64 93937690448360, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690448768, i32 780, i32 12), !dbg !2911
  %149 = load double, double* %22, align 8, !dbg !2911
  %150 = load double, double* %24, align 8, !dbg !2912
  %151 = fmul double %149, %150, !dbg !2913
  call void @fMulHandler(double %149, double %150, double %151, i64 93937690449160, i64 93937690449544, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690449952, i32 780, i32 20), !dbg !2914
  %152 = fsub double %148, %151, !dbg !2914
  call void @fSubHandler(double %148, double %151, double %152, i64 93937690448768, i64 93937690449952, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690450368, i32 780, i32 16), !dbg !2915
  %153 = fsub double %152, 1.000000e+00, !dbg !2915
  call void @fSubHandler(double %152, double 1.000000e+00, double %153, i64 93937690450368, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690450816, i32 780, i32 24), !dbg !2916
  store double %153, double* %27, align 8, !dbg !2916
  %154 = load double, double* %22, align 8, !dbg !2917
  %155 = load double, double* %23, align 8, !dbg !2918
  %156 = fmul double %154, %155, !dbg !2919
  call void @fMulHandler(double %154, double %155, double %156, i64 93937690451592, i64 93937690451976, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690452384, i32 781, i32 12), !dbg !2920
  %157 = load double, double* %21, align 8, !dbg !2920
  %158 = load double, double* %24, align 8, !dbg !2921
  %159 = fmul double %157, %158, !dbg !2922
  call void @fMulHandler(double %157, double %158, double %159, i64 93937690452776, i64 93937690453160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690453568, i32 781, i32 20), !dbg !2923
  %160 = fadd double %156, %159, !dbg !2923
  call void @fAddHandler(double %156, double %159, double %160, i64 93937690452384, i64 93937690453568, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690453984, i32 781, i32 16), !dbg !2924
  store double %160, double* %28, align 8, !dbg !2924
  %161 = load double, double* %25, align 8, !dbg !2925
  %162 = load double, double* %27, align 8, !dbg !2926
  %163 = fmul double %161, %162, !dbg !2927
  call void @fMulHandler(double %161, double %162, double %163, i64 93937690454792, i64 93937690455176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690455584, i32 782, i32 12), !dbg !2928
  %164 = load double, double* %26, align 8, !dbg !2928
  %165 = load double, double* %28, align 8, !dbg !2929
  %166 = fmul double %164, %165, !dbg !2930
  call void @fMulHandler(double %164, double %165, double %166, i64 93937690455976, i64 93937690456360, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690456768, i32 782, i32 20), !dbg !2931
  %167 = fsub double %163, %166, !dbg !2931
  call void @fSubHandler(double %163, double %166, double %167, i64 93937690455584, i64 93937690456768, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690457184, i32 782, i32 16), !dbg !2932
  store double %167, double* %29, align 8, !dbg !2932
  %168 = load double, double* %25, align 8, !dbg !2933
  %169 = load double, double* %28, align 8, !dbg !2934
  %170 = fmul double %168, %169, !dbg !2935
  call void @fMulHandler(double %168, double %169, double %170, i64 93937690457992, i64 93937690458376, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690458784, i32 783, i32 12), !dbg !2936
  %171 = load double, double* %26, align 8, !dbg !2936
  %172 = load double, double* %27, align 8, !dbg !2937
  %173 = fmul double %171, %172, !dbg !2938
  call void @fMulHandler(double %171, double %172, double %173, i64 93937690459176, i64 93937690459560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690459968, i32 783, i32 20), !dbg !2939
  %174 = fadd double %170, %173, !dbg !2939
  call void @fAddHandler(double %170, double %173, double %174, i64 93937690458784, i64 93937690459968, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690460384, i32 783, i32 16), !dbg !2940
  store double %174, double* %26, align 8, !dbg !2940
  %175 = load double, double* %29, align 8, !dbg !2941
  store double %175, double* %25, align 8, !dbg !2942
  %176 = load double, double* %31, align 8, !dbg !2943
  %177 = fcmp ogt double %176, 2.000000e+05, !dbg !2945
  %178 = call i1 @fCmpInstHandler(double %176, double 2.000000e+05, i1 %177, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690462432, i32 785, i32 11), !dbg !2946
  br i1 %178, label %179, label %180, !dbg !2946

; <label>:179:                                    ; preds = %96
  store i32 10, i32* %13, align 4, !dbg !2947
  br label %198, !dbg !2949

; <label>:180:                                    ; preds = %96
  %181 = load i32*, i32** %12, align 8, !dbg !2950
  %182 = load i32, i32* %181, align 4, !dbg !2951
  %183 = add nsw i32 %182, 1, !dbg !2951
  store i32 %183, i32* %181, align 4, !dbg !2951
  br label %184, !dbg !2952

; <label>:184:                                    ; preds = %180
  %185 = load double, double* %25, align 8, !dbg !2953
  %186 = call double @fabs(double %185) #1, !dbg !2954
  %187 = load double, double* %26, align 8, !dbg !2955
  %188 = call double @fabs(double %187) #1, !dbg !2956
  %189 = fadd double %186, %188, !dbg !2958
  call void @fAddHandler(double %186, double %188, double %189, i64 93937690467840, i64 93937690468768, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690469248, i32 791, i32 17), !dbg !2959
  %190 = load double, double* %32, align 8, !dbg !2959
  %191 = call double @fabs(double %190) #1, !dbg !2960
  %192 = load double, double* %33, align 8, !dbg !2962
  %193 = call double @fabs(double %192) #1, !dbg !2963
  %194 = fadd double %191, %193, !dbg !2965
  call void @fAddHandler(double %191, double %193, double %194, i64 93937690470112, i64 93937690471040, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690471520, i32 791, i32 37), !dbg !2966
  %195 = fmul double %194, 0x3CD0000000000000, !dbg !2966
  call void @fMulHandler(double %194, double 0x3CD0000000000000, double %195, i64 93937690471520, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690471936, i32 791, i32 46), !dbg !2967
  %196 = fcmp ogt double %189, %195, !dbg !2967
  %197 = call i1 @fCmpInstHandler(double %189, double %195, i1 %196, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690472352, i32 791, i32 27), !dbg !2968
  br i1 %197, label %96, label %198, !dbg !2968, !llvm.loop !2858

; <label>:198:                                    ; preds = %184, %179
  %199 = load double, double* %33, align 8, !dbg !2970
  %200 = load double, double* %32, align 8, !dbg !2972
  %201 = call double @fabs(double %200) #1, !dbg !2973
  %202 = fmul double 0x3DC86A0000000000, %201, !dbg !2974
  call void @fMulHandler(double 0x3DC86A0000000000, double %201, double %202, i64 0, i64 93937690475520, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690476064, i32 793, i32 35), !dbg !2975
  %203 = fcmp olt double %199, %202, !dbg !2975
  %204 = call i1 @fCmpInstHandler(double %199, double %202, i1 %203, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @25, i32 0, i32 0), i64 93937690476480, i32 793, i32 8), !dbg !2976
  br i1 %204, label %205, label %206, !dbg !2976

; <label>:205:                                    ; preds = %198
  store i32 17, i32* %13, align 4, !dbg !2977
  br label %206, !dbg !2979

; <label>:206:                                    ; preds = %205, %198
  %207 = load double, double* %32, align 8, !dbg !2980
  %208 = load double*, double** %10, align 8, !dbg !2981
  store double %207, double* %208, align 8, !dbg !2982
  %209 = load double, double* %33, align 8, !dbg !2983
  %210 = load double*, double** %11, align 8, !dbg !2984
  store double %209, double* %210, align 8, !dbg !2985
  %211 = load i32, i32* %13, align 4, !dbg !2986
  ret i32 %211, !dbg !2987
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
  %34 = call i1 @fCmpInstHandler(double %32, double 0.000000e+00, i1 %33, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690491056, i32 1216, i32 8), !dbg !3006
  br i1 %34, label %35, label %64, !dbg !3006

; <label>:35:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3007, metadata !60), !dbg !3009
  %36 = load double*, double** %13, align 8, !dbg !3010
  store double 0.000000e+00, double* %36, align 8, !dbg !3011
  store i32 0, i32* %14, align 4, !dbg !3012
  br label %37, !dbg !3014

; <label>:37:                                     ; preds = %49, %35
  %38 = load i32, i32* %14, align 4, !dbg !3015
  %39 = load i32, i32* %9, align 4, !dbg !3018
  %40 = icmp sle i32 %38, %39, !dbg !3019
  %41 = sext i32 %38 to i64, !dbg !3020
  %42 = sext i32 %39 to i64, !dbg !3020
  %43 = call i1 @iCmpInstHandler(i64 %41, i64 %42, i1 %40, i32 41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690495664, i32 1219, i32 15), !dbg !3020
  br i1 %43, label %44, label %52, !dbg !3020

; <label>:44:                                     ; preds = %37
  %45 = load i32, i32* %14, align 4, !dbg !3021
  %46 = sext i32 %45 to i64, !dbg !3023
  %47 = load double*, double** %12, align 8, !dbg !3023
  %48 = getelementptr inbounds double, double* %47, i64 %46, !dbg !3023
  store double 0.000000e+00, double* %48, align 8, !dbg !3024
  br label %49, !dbg !3025

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %14, align 4, !dbg !3026
  %51 = add nsw i32 %50, 1, !dbg !3026
  store i32 %51, i32* %14, align 4, !dbg !3026
  br label %37, !dbg !3028, !llvm.loop !3029

; <label>:52:                                     ; preds = %37
  %53 = load double, double* %8, align 8, !dbg !3031
  %54 = fcmp oeq double %53, 0.000000e+00, !dbg !3033
  %55 = call i1 @fCmpInstHandler(double %53, double 0.000000e+00, i1 %54, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690503360, i32 1222, i32 16), !dbg !3034
  br i1 %55, label %56, label %63, !dbg !3034

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !3035, metadata !60), !dbg !3037
  %57 = load double, double* %10, align 8, !dbg !3038
  %58 = call i32 @CLeta(double 0.000000e+00, double %57, %struct.gsl_sf_result_struct* %15), !dbg !3039
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !3040
  %60 = load double, double* %59, align 8, !dbg !3040
  %61 = load double*, double** %12, align 8, !dbg !3041
  %62 = getelementptr inbounds double, double* %61, i64 0, !dbg !3041
  store double %60, double* %62, align 8, !dbg !3042
  br label %63, !dbg !3043

; <label>:63:                                     ; preds = %56, %52
  store i32 0, i32* %7, align 4, !dbg !3044
  br label %132, !dbg !3044

; <label>:64:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata double* %16, metadata !3045, metadata !60), !dbg !3047
  %65 = load double, double* %11, align 8, !dbg !3048
  %66 = fdiv double 1.000000e+00, %65, !dbg !3049
  call void @fDivHandler(double 1.000000e+00, double %65, double %66, i64 0, i64 93937690514616, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690515024, i32 1230, i32 29), !dbg !3047
  store double %66, double* %16, align 8, !dbg !3047
  call void @llvm.dbg.declare(metadata double* %17, metadata !3050, metadata !60), !dbg !3051
  %67 = load double, double* %8, align 8, !dbg !3052
  %68 = load i32, i32* %9, align 4, !dbg !3053
  %69 = sitofp i32 %68 to double, !dbg !3053
  %70 = fadd double %67, %69, !dbg !3054
  call void @fAddHandler(double %67, double %69, double %70, i64 93937690518184, i64 93937690518920, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690520592, i32 1231, i32 36), !dbg !3051
  store double %70, double* %17, align 8, !dbg !3051
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !3055, metadata !60), !dbg !3056
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !3057, metadata !60), !dbg !3058
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !3059, metadata !60), !dbg !3060
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !3061, metadata !60), !dbg !3062
  call void @llvm.dbg.declare(metadata double* %22, metadata !3063, metadata !60), !dbg !3064
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3065, metadata !60), !dbg !3066
  %71 = load double, double* %10, align 8, !dbg !3067
  %72 = load double, double* %11, align 8, !dbg !3068
  %73 = load double, double* %17, align 8, !dbg !3069
  %74 = load double*, double** %13, align 8, !dbg !3070
  %75 = call i32 @gsl_sf_coulomb_wave_FG_e(double %71, double %72, double %73, i32 0, %struct.gsl_sf_result_struct* %18, %struct.gsl_sf_result_struct* %19, %struct.gsl_sf_result_struct* %20, %struct.gsl_sf_result_struct* %21, double* %74, double* %22), !dbg !3071
  store i32 %75, i32* %23, align 4, !dbg !3066
  call void @llvm.dbg.declare(metadata double* %24, metadata !3072, metadata !60), !dbg !3073
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !3074
  %77 = load double, double* %76, align 8, !dbg !3074
  store double %77, double* %24, align 8, !dbg !3073
  call void @llvm.dbg.declare(metadata double* %25, metadata !3075, metadata !60), !dbg !3076
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !3077
  %79 = load double, double* %78, align 8, !dbg !3077
  store double %79, double* %25, align 8, !dbg !3076
  call void @llvm.dbg.declare(metadata double* %26, metadata !3078, metadata !60), !dbg !3079
  %80 = load double, double* %17, align 8, !dbg !3080
  store double %80, double* %26, align 8, !dbg !3079
  call void @llvm.dbg.declare(metadata i32* %27, metadata !3081, metadata !60), !dbg !3082
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !3083
  %82 = load double, double* %81, align 8, !dbg !3083
  %83 = load i32, i32* %9, align 4, !dbg !3084
  %84 = sext i32 %83 to i64, !dbg !3085
  %85 = load double*, double** %12, align 8, !dbg !3085
  %86 = getelementptr inbounds double, double* %85, i64 %84, !dbg !3085
  store double %82, double* %86, align 8, !dbg !3086
  %87 = load i32, i32* %9, align 4, !dbg !3087
  %88 = sub nsw i32 %87, 1, !dbg !3089
  store i32 %88, i32* %27, align 4, !dbg !3090
  br label %89, !dbg !3091

; <label>:89:                                     ; preds = %127, %64
  %90 = load i32, i32* %27, align 4, !dbg !3092
  %91 = icmp sge i32 %90, 0, !dbg !3095
  %92 = sext i32 %90 to i64, !dbg !3096
  %93 = call i1 @iCmpInstHandler(i64 %92, i64 0, i1 %91, i32 39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690554256, i32 1246, i32 20), !dbg !3096
  br i1 %93, label %94, label %130, !dbg !3096

; <label>:94:                                     ; preds = %89
  call void @llvm.dbg.declare(metadata double* %28, metadata !3097, metadata !60), !dbg !3099
  %95 = load double, double* %10, align 8, !dbg !3100
  %96 = load double, double* %26, align 8, !dbg !3101
  %97 = fdiv double %95, %96, !dbg !3102
  call void @fDivHandler(double %95, double %96, double %97, i64 93937690556424, i64 93937690556776, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690557184, i32 1247, i32 22), !dbg !3099
  store double %97, double* %28, align 8, !dbg !3099
  call void @llvm.dbg.declare(metadata double* %29, metadata !3103, metadata !60), !dbg !3104
  %98 = load double, double* %28, align 8, !dbg !3105
  %99 = call double @hypot(double 1.000000e+00, double %98) #6, !dbg !3106
  store double %99, double* %29, align 8, !dbg !3104
  call void @llvm.dbg.declare(metadata double* %30, metadata !3107, metadata !60), !dbg !3108
  %100 = load double, double* %28, align 8, !dbg !3109
  %101 = load double, double* %26, align 8, !dbg !3110
  %102 = load double, double* %16, align 8, !dbg !3111
  %103 = fmul double %101, %102, !dbg !3112
  call void @fMulHandler(double %101, double %102, double %103, i64 93937690564440, i64 93937690564824, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690565232, i32 1249, i32 28), !dbg !3113
  %104 = fadd double %100, %103, !dbg !3113
  call void @fAddHandler(double %100, double %103, double %104, i64 93937690564088, i64 93937690565232, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690565648, i32 1249, i32 23), !dbg !3108
  store double %104, double* %30, align 8, !dbg !3108
  call void @llvm.dbg.declare(metadata double* %31, metadata !3114, metadata !60), !dbg !3115
  %105 = load double, double* %24, align 8, !dbg !3116
  %106 = load double, double* %30, align 8, !dbg !3117
  %107 = fmul double %105, %106, !dbg !3118
  call void @fMulHandler(double %105, double %106, double %107, i64 93937690568840, i64 93937690569192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690569600, i32 1250, i32 27), !dbg !3119
  %108 = load double, double* %25, align 8, !dbg !3119
  %109 = fadd double %107, %108, !dbg !3120
  call void @fAddHandler(double %107, double %108, double %109, i64 93937690569600, i64 93937690569992, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690570400, i32 1250, i32 31), !dbg !3121
  %110 = load double, double* %29, align 8, !dbg !3121
  %111 = fdiv double %109, %110, !dbg !3122
  call void @fDivHandler(double %109, double %110, double %111, i64 93937690570400, i64 93937690570792, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690571200, i32 1250, i32 37), !dbg !3115
  store double %111, double* %31, align 8, !dbg !3115
  %112 = load double, double* %31, align 8, !dbg !3123
  %113 = load i32, i32* %27, align 4, !dbg !3124
  %114 = sext i32 %113 to i64, !dbg !3125
  %115 = load double*, double** %12, align 8, !dbg !3125
  %116 = getelementptr inbounds double, double* %115, i64 %114, !dbg !3125
  store double %112, double* %116, align 8, !dbg !3126
  %117 = load double, double* %31, align 8, !dbg !3127
  %118 = load double, double* %30, align 8, !dbg !3128
  %119 = fmul double %117, %118, !dbg !3129
  call void @fMulHandler(double %117, double %118, double %119, i64 93937690576632, i64 93937690577016, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690577424, i32 1252, i32 30), !dbg !3130
  %120 = load double, double* %24, align 8, !dbg !3130
  %121 = load double, double* %29, align 8, !dbg !3131
  %122 = fmul double %120, %121, !dbg !3132
  call void @fMulHandler(double %120, double %121, double %122, i64 93937690577816, i64 93937690578200, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690578608, i32 1252, i32 39), !dbg !3133
  %123 = fsub double %119, %122, !dbg !3133
  call void @fSubHandler(double %119, double %122, double %123, i64 93937690577424, i64 93937690578608, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690579024, i32 1252, i32 34), !dbg !3134
  store double %123, double* %25, align 8, !dbg !3134
  %124 = load double, double* %31, align 8, !dbg !3135
  store double %124, double* %24, align 8, !dbg !3136
  %125 = load double, double* %26, align 8, !dbg !3137
  %126 = fsub double %125, 1.000000e+00, !dbg !3137
  call void @fSubHandler(double %125, double 1.000000e+00, double %126, i64 93937690580632, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @27, i32 0, i32 0), i64 93937690581072, i32 1254, i32 11), !dbg !3137
  store double %126, double* %26, align 8, !dbg !3137
  br label %127, !dbg !3138

; <label>:127:                                    ; preds = %94
  %128 = load i32, i32* %27, align 4, !dbg !3139
  %129 = add nsw i32 %128, -1, !dbg !3139
  store i32 %129, i32* %27, align 4, !dbg !3139
  br label %89, !dbg !3141, !llvm.loop !3142

; <label>:130:                                    ; preds = %89
  %131 = load i32, i32* %23, align 4, !dbg !3144
  store i32 %131, i32* %7, align 4, !dbg !3145
  br label %132, !dbg !3145

; <label>:132:                                    ; preds = %130, %63
  %133 = load i32, i32* %7, align 4, !dbg !3146
  ret i32 %133, !dbg !3146
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
  call void @fDivHandler(double 1.000000e+00, double %38, double %39, i64 0, i64 93937690605880, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690606288, i32 1268, i32 27), !dbg !3167
  store double %39, double* %17, align 8, !dbg !3167
  call void @llvm.dbg.declare(metadata double* %18, metadata !3170, metadata !60), !dbg !3171
  %40 = load double, double* %9, align 8, !dbg !3172
  %41 = load i32, i32* %10, align 4, !dbg !3173
  %42 = sitofp i32 %41 to double, !dbg !3173
  %43 = fadd double %40, %42, !dbg !3174
  call void @fAddHandler(double %40, double %42, double %43, i64 93937690609448, i64 93937690610184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690611856, i32 1269, i32 34), !dbg !3171
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

; <label>:64:                                     ; preds = %102, %8
  %65 = load i32, i32* %27, align 4, !dbg !3216
  %66 = icmp sge i32 %65, 0, !dbg !3219
  %67 = sext i32 %65 to i64, !dbg !3220
  %68 = call i1 @iCmpInstHandler(i64 %67, i64 0, i1 %66, i32 39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690647376, i32 1285, i32 18), !dbg !3220
  br i1 %68, label %69, label %105, !dbg !3220

; <label>:69:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata double* %30, metadata !3221, metadata !60), !dbg !3223
  %70 = load double, double* %11, align 8, !dbg !3224
  %71 = load double, double* %26, align 8, !dbg !3225
  %72 = fdiv double %70, %71, !dbg !3226
  call void @fDivHandler(double %70, double %71, double %72, i64 93937690649544, i64 93937690649896, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690650304, i32 1286, i32 20), !dbg !3223
  store double %72, double* %30, align 8, !dbg !3223
  call void @llvm.dbg.declare(metadata double* %31, metadata !3227, metadata !60), !dbg !3228
  %73 = load double, double* %30, align 8, !dbg !3229
  %74 = call double @hypot(double 1.000000e+00, double %73) #6, !dbg !3230
  store double %74, double* %31, align 8, !dbg !3228
  call void @llvm.dbg.declare(metadata double* %32, metadata !3231, metadata !60), !dbg !3232
  %75 = load double, double* %30, align 8, !dbg !3233
  %76 = load double, double* %26, align 8, !dbg !3234
  %77 = load double, double* %17, align 8, !dbg !3235
  %78 = fmul double %76, %77, !dbg !3236
  call void @fMulHandler(double %76, double %77, double %78, i64 93937690657560, i64 93937690657944, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690658352, i32 1288, i32 26), !dbg !3237
  %79 = fadd double %75, %78, !dbg !3237
  call void @fAddHandler(double %75, double %78, double %79, i64 93937690657208, i64 93937690658352, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690658768, i32 1288, i32 21), !dbg !3232
  store double %79, double* %32, align 8, !dbg !3232
  call void @llvm.dbg.declare(metadata double* %33, metadata !3238, metadata !60), !dbg !3239
  %80 = load double, double* %24, align 8, !dbg !3240
  %81 = load double, double* %32, align 8, !dbg !3241
  %82 = fmul double %80, %81, !dbg !3242
  call void @fMulHandler(double %80, double %81, double %82, i64 93937690661960, i64 93937690662312, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690662720, i32 1290, i32 18), !dbg !3243
  %83 = load double, double* %25, align 8, !dbg !3243
  %84 = fadd double %82, %83, !dbg !3244
  call void @fAddHandler(double %82, double %83, double %84, i64 93937690662720, i64 93937690663112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690663520, i32 1290, i32 22), !dbg !3245
  %85 = load double, double* %31, align 8, !dbg !3245
  %86 = fdiv double %84, %85, !dbg !3246
  call void @fDivHandler(double %84, double %85, double %86, i64 93937690663520, i64 93937690663912, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690664320, i32 1290, i32 28), !dbg !3247
  store double %86, double* %33, align 8, !dbg !3247
  %87 = load double, double* %33, align 8, !dbg !3248
  %88 = load i32, i32* %27, align 4, !dbg !3249
  %89 = sext i32 %88 to i64, !dbg !3250
  %90 = load double*, double** %13, align 8, !dbg !3250
  %91 = getelementptr inbounds double, double* %90, i64 %89, !dbg !3250
  store double %87, double* %91, align 8, !dbg !3251
  %92 = load double, double* %33, align 8, !dbg !3252
  %93 = load double, double* %32, align 8, !dbg !3253
  %94 = fmul double %92, %93, !dbg !3254
  call void @fMulHandler(double %92, double %93, double %94, i64 93937690668488, i64 93937690668872, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690669280, i32 1292, i32 26), !dbg !3255
  %95 = load double, double* %24, align 8, !dbg !3255
  %96 = load double, double* %31, align 8, !dbg !3256
  %97 = fmul double %95, %96, !dbg !3257
  call void @fMulHandler(double %95, double %96, double %97, i64 93937690669672, i64 93937690670056, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690670464, i32 1292, i32 35), !dbg !3258
  %98 = fsub double %94, %97, !dbg !3258
  call void @fSubHandler(double %94, double %97, double %98, i64 93937690669280, i64 93937690670464, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690670880, i32 1292, i32 30), !dbg !3259
  store double %98, double* %25, align 8, !dbg !3259
  %99 = load double, double* %33, align 8, !dbg !3260
  store double %99, double* %24, align 8, !dbg !3261
  %100 = load double, double* %26, align 8, !dbg !3262
  %101 = fsub double %100, 1.000000e+00, !dbg !3262
  call void @fSubHandler(double %100, double 1.000000e+00, double %101, i64 93937690672488, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690672928, i32 1294, i32 9), !dbg !3262
  store double %101, double* %26, align 8, !dbg !3262
  br label %102, !dbg !3263

; <label>:102:                                    ; preds = %69
  %103 = load i32, i32* %27, align 4, !dbg !3264
  %104 = add nsw i32 %103, -1, !dbg !3264
  store i32 %104, i32* %27, align 4, !dbg !3264
  br label %64, !dbg !3266, !llvm.loop !3267

; <label>:105:                                    ; preds = %64
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !3269
  %107 = load double, double* %106, align 8, !dbg !3269
  store double %107, double* %28, align 8, !dbg !3270
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !3271
  %109 = load double, double* %108, align 8, !dbg !3271
  store double %109, double* %29, align 8, !dbg !3272
  %110 = load double, double* %9, align 8, !dbg !3273
  %111 = fadd double %110, 1.000000e+00, !dbg !3274
  call void @fAddHandler(double %110, double 1.000000e+00, double %111, i64 93937690682968, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690683408, i32 1299, i32 17), !dbg !3275
  store double %111, double* %26, align 8, !dbg !3275
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !3276
  %113 = load double, double* %112, align 8, !dbg !3276
  %114 = load double*, double** %14, align 8, !dbg !3277
  %115 = getelementptr inbounds double, double* %114, i64 0, !dbg !3277
  store double %113, double* %115, align 8, !dbg !3278
  store i32 1, i32* %27, align 4, !dbg !3279
  br label %116, !dbg !3281

; <label>:116:                                    ; preds = %156, %105
  %117 = load i32, i32* %27, align 4, !dbg !3282
  %118 = load i32, i32* %10, align 4, !dbg !3285
  %119 = icmp sle i32 %117, %118, !dbg !3286
  %120 = sext i32 %117 to i64, !dbg !3287
  %121 = sext i32 %118 to i64, !dbg !3287
  %122 = call i1 @iCmpInstHandler(i64 %120, i64 %121, i1 %119, i32 41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690690448, i32 1303, i32 13), !dbg !3287
  br i1 %122, label %123, label %159, !dbg !3287

; <label>:123:                                    ; preds = %116
  call void @llvm.dbg.declare(metadata double* %34, metadata !3288, metadata !60), !dbg !3290
  %124 = load double, double* %11, align 8, !dbg !3291
  %125 = load double, double* %26, align 8, !dbg !3292
  %126 = fdiv double %124, %125, !dbg !3293
  call void @fDivHandler(double %124, double %125, double %126, i64 93937690692616, i64 93937690692968, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690693376, i32 1304, i32 20), !dbg !3290
  store double %126, double* %34, align 8, !dbg !3290
  call void @llvm.dbg.declare(metadata double* %35, metadata !3294, metadata !60), !dbg !3295
  %127 = load double, double* %34, align 8, !dbg !3296
  %128 = call double @hypot(double 1.000000e+00, double %127) #6, !dbg !3297
  store double %128, double* %35, align 8, !dbg !3295
  call void @llvm.dbg.declare(metadata double* %36, metadata !3298, metadata !60), !dbg !3299
  %129 = load double, double* %34, align 8, !dbg !3300
  %130 = load double, double* %26, align 8, !dbg !3301
  %131 = load double, double* %17, align 8, !dbg !3302
  %132 = fmul double %130, %131, !dbg !3303
  call void @fMulHandler(double %130, double %131, double %132, i64 93937690700632, i64 93937690701016, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690701424, i32 1306, i32 25), !dbg !3304
  %133 = fadd double %129, %132, !dbg !3304
  call void @fAddHandler(double %129, double %132, double %133, i64 93937690700280, i64 93937690701424, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690701840, i32 1306, i32 20), !dbg !3299
  store double %133, double* %36, align 8, !dbg !3299
  call void @llvm.dbg.declare(metadata double* %37, metadata !3305, metadata !60), !dbg !3306
  %134 = load double, double* %36, align 8, !dbg !3307
  %135 = load double, double* %28, align 8, !dbg !3308
  %136 = fmul double %134, %135, !dbg !3309
  call void @fMulHandler(double %134, double %135, double %136, i64 93937690707096, i64 93937690707448, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690707856, i32 1307, i32 22), !dbg !3310
  %137 = load double, double* %29, align 8, !dbg !3310
  %138 = fsub double %136, %137, !dbg !3311
  call void @fSubHandler(double %136, double %137, double %138, i64 93937690707856, i64 93937690708248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690708656, i32 1307, i32 27), !dbg !3312
  %139 = load double, double* %35, align 8, !dbg !3312
  %140 = fdiv double %138, %139, !dbg !3313
  call void @fDivHandler(double %138, double %139, double %140, i64 93937690708656, i64 93937690709048, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690709456, i32 1307, i32 33), !dbg !3306
  store double %140, double* %37, align 8, !dbg !3306
  %141 = load double, double* %37, align 8, !dbg !3314
  %142 = load i32, i32* %27, align 4, !dbg !3315
  %143 = sext i32 %142 to i64, !dbg !3316
  %144 = load double*, double** %14, align 8, !dbg !3316
  %145 = getelementptr inbounds double, double* %144, i64 %143, !dbg !3316
  store double %141, double* %145, align 8, !dbg !3317
  %146 = load double, double* %35, align 8, !dbg !3318
  %147 = load double, double* %28, align 8, !dbg !3319
  %148 = fmul double %146, %147, !dbg !3320
  call void @fMulHandler(double %146, double %147, double %148, i64 93937690714888, i64 93937690715272, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690715680, i32 1309, i32 21), !dbg !3321
  %149 = load double, double* %36, align 8, !dbg !3321
  %150 = load double, double* %37, align 8, !dbg !3322
  %151 = fmul double %149, %150, !dbg !3323
  call void @fMulHandler(double %149, double %150, double %151, i64 93937690716072, i64 93937690716456, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690716864, i32 1309, i32 30), !dbg !3324
  %152 = fsub double %148, %151, !dbg !3324
  call void @fSubHandler(double %148, double %151, double %152, i64 93937690715680, i64 93937690716864, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690717280, i32 1309, i32 26), !dbg !3325
  store double %152, double* %29, align 8, !dbg !3325
  %153 = load double, double* %37, align 8, !dbg !3326
  store double %153, double* %28, align 8, !dbg !3327
  %154 = load double, double* %26, align 8, !dbg !3328
  %155 = fadd double %154, 1.000000e+00, !dbg !3328
  call void @fAddHandler(double %154, double 1.000000e+00, double %155, i64 93937690718888, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @29, i32 0, i32 0), i64 93937690719328, i32 1311, i32 9), !dbg !3328
  store double %155, double* %26, align 8, !dbg !3328
  br label %156, !dbg !3329

; <label>:156:                                    ; preds = %123
  %157 = load i32, i32* %27, align 4, !dbg !3330
  %158 = add nsw i32 %157, 1, !dbg !3330
  store i32 %158, i32* %27, align 4, !dbg !3330
  br label %116, !dbg !3332, !llvm.loop !3333

; <label>:159:                                    ; preds = %116
  %160 = load i32, i32* %23, align 4, !dbg !3335
  ret i32 %160, !dbg !3336
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
  call void @fDivHandler(double 1.000000e+00, double %42, double %43, i64 0, i64 93937690741208, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690741616, i32 1326, i32 27), !dbg !3361
  store double %43, double* %21, align 8, !dbg !3361
  call void @llvm.dbg.declare(metadata double* %22, metadata !3364, metadata !60), !dbg !3365
  %44 = load double, double* %11, align 8, !dbg !3366
  %45 = load i32, i32* %12, align 4, !dbg !3367
  %46 = sitofp i32 %45 to double, !dbg !3367
  %47 = fadd double %44, %46, !dbg !3368
  call void @fAddHandler(double %44, double %46, double %47, i64 93937690744776, i64 93937690745512, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690747184, i32 1327, i32 34), !dbg !3365
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

; <label>:74:                                     ; preds = %117, %10
  %75 = load i32, i32* %31, align 4, !dbg !3414
  %76 = icmp sge i32 %75, 0, !dbg !3417
  %77 = sext i32 %75 to i64, !dbg !3418
  %78 = call i1 @iCmpInstHandler(i64 %77, i64 0, i1 %76, i32 39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690787776, i32 1344, i32 18), !dbg !3418
  br i1 %78, label %79, label %120, !dbg !3418

; <label>:79:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata double* %34, metadata !3419, metadata !60), !dbg !3421
  %80 = load double, double* %13, align 8, !dbg !3422
  %81 = load double, double* %30, align 8, !dbg !3423
  %82 = fdiv double %80, %81, !dbg !3424
  call void @fDivHandler(double %80, double %81, double %82, i64 93937690789944, i64 93937690790296, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690790704, i32 1345, i32 20), !dbg !3421
  store double %82, double* %34, align 8, !dbg !3421
  call void @llvm.dbg.declare(metadata double* %35, metadata !3425, metadata !60), !dbg !3426
  %83 = load double, double* %34, align 8, !dbg !3427
  %84 = call double @hypot(double 1.000000e+00, double %83) #6, !dbg !3428
  store double %84, double* %35, align 8, !dbg !3426
  call void @llvm.dbg.declare(metadata double* %36, metadata !3429, metadata !60), !dbg !3430
  %85 = load double, double* %34, align 8, !dbg !3431
  %86 = load double, double* %30, align 8, !dbg !3432
  %87 = load double, double* %21, align 8, !dbg !3433
  %88 = fmul double %86, %87, !dbg !3434
  call void @fMulHandler(double %86, double %87, double %88, i64 93937690797960, i64 93937690798344, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690798752, i32 1347, i32 26), !dbg !3435
  %89 = fadd double %85, %88, !dbg !3435
  call void @fAddHandler(double %85, double %88, double %89, i64 93937690797608, i64 93937690798752, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690799168, i32 1347, i32 21), !dbg !3430
  store double %89, double* %36, align 8, !dbg !3430
  call void @llvm.dbg.declare(metadata double* %37, metadata !3436, metadata !60), !dbg !3437
  %90 = load double, double* %28, align 8, !dbg !3438
  %91 = load double, double* %36, align 8, !dbg !3439
  %92 = fmul double %90, %91, !dbg !3440
  call void @fMulHandler(double %90, double %91, double %92, i64 93937690802360, i64 93937690802712, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690803120, i32 1349, i32 18), !dbg !3441
  %93 = load double, double* %29, align 8, !dbg !3441
  %94 = fadd double %92, %93, !dbg !3442
  call void @fAddHandler(double %92, double %93, double %94, i64 93937690803120, i64 93937690803512, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690803920, i32 1349, i32 22), !dbg !3443
  %95 = load double, double* %35, align 8, !dbg !3443
  %96 = fdiv double %94, %95, !dbg !3444
  call void @fDivHandler(double %94, double %95, double %96, i64 93937690803920, i64 93937690804312, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690804720, i32 1349, i32 28), !dbg !3445
  store double %96, double* %37, align 8, !dbg !3445
  %97 = load double, double* %37, align 8, !dbg !3446
  %98 = load i32, i32* %31, align 4, !dbg !3447
  %99 = sext i32 %98 to i64, !dbg !3448
  %100 = load double*, double** %15, align 8, !dbg !3448
  %101 = getelementptr inbounds double, double* %100, i64 %99, !dbg !3448
  store double %97, double* %101, align 8, !dbg !3449
  %102 = load double, double* %37, align 8, !dbg !3450
  %103 = load double, double* %36, align 8, !dbg !3451
  %104 = fmul double %102, %103, !dbg !3452
  call void @fMulHandler(double %102, double %103, double %104, i64 93937690808888, i64 93937690809272, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690809680, i32 1351, i32 26), !dbg !3453
  %105 = load double, double* %28, align 8, !dbg !3453
  %106 = load double, double* %35, align 8, !dbg !3454
  %107 = fmul double %105, %106, !dbg !3455
  call void @fMulHandler(double %105, double %106, double %107, i64 93937690810072, i64 93937690810456, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690810864, i32 1351, i32 35), !dbg !3456
  %108 = fsub double %104, %107, !dbg !3456
  call void @fSubHandler(double %104, double %107, double %108, i64 93937690809680, i64 93937690810864, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690811280, i32 1351, i32 30), !dbg !3457
  store double %108, double* %29, align 8, !dbg !3457
  %109 = load double, double* %29, align 8, !dbg !3458
  %110 = load i32, i32* %31, align 4, !dbg !3459
  %111 = sext i32 %110 to i64, !dbg !3460
  %112 = load double*, double** %16, align 8, !dbg !3460
  %113 = getelementptr inbounds double, double* %112, i64 %111, !dbg !3460
  store double %109, double* %113, align 8, !dbg !3461
  %114 = load double, double* %37, align 8, !dbg !3462
  store double %114, double* %28, align 8, !dbg !3463
  %115 = load double, double* %30, align 8, !dbg !3464
  %116 = fsub double %115, 1.000000e+00, !dbg !3464
  call void @fSubHandler(double %115, double 1.000000e+00, double %116, i64 93937690816248, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690816688, i32 1354, i32 9), !dbg !3464
  store double %116, double* %30, align 8, !dbg !3464
  br label %117, !dbg !3465

; <label>:117:                                    ; preds = %79
  %118 = load i32, i32* %31, align 4, !dbg !3466
  %119 = add nsw i32 %118, -1, !dbg !3466
  store i32 %119, i32* %31, align 4, !dbg !3466
  br label %74, !dbg !3468, !llvm.loop !3469

; <label>:120:                                    ; preds = %74
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !3471
  %122 = load double, double* %121, align 8, !dbg !3471
  store double %122, double* %32, align 8, !dbg !3472
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !3473
  %124 = load double, double* %123, align 8, !dbg !3473
  store double %124, double* %33, align 8, !dbg !3474
  %125 = load double, double* %11, align 8, !dbg !3475
  %126 = fadd double %125, 1.000000e+00, !dbg !3476
  call void @fAddHandler(double %125, double 1.000000e+00, double %126, i64 93937690826728, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690827168, i32 1359, i32 17), !dbg !3477
  store double %126, double* %30, align 8, !dbg !3477
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !3478
  %128 = load double, double* %127, align 8, !dbg !3478
  %129 = load double*, double** %17, align 8, !dbg !3479
  %130 = getelementptr inbounds double, double* %129, i64 0, !dbg !3479
  store double %128, double* %130, align 8, !dbg !3480
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !3481
  %132 = load double, double* %131, align 8, !dbg !3481
  %133 = load double*, double** %18, align 8, !dbg !3482
  %134 = getelementptr inbounds double, double* %133, i64 0, !dbg !3482
  store double %132, double* %134, align 8, !dbg !3483
  store i32 1, i32* %31, align 4, !dbg !3484
  br label %135, !dbg !3486

; <label>:135:                                    ; preds = %180, %120
  %136 = load i32, i32* %31, align 4, !dbg !3487
  %137 = load i32, i32* %12, align 4, !dbg !3490
  %138 = icmp sle i32 %136, %137, !dbg !3491
  %139 = sext i32 %136 to i64, !dbg !3492
  %140 = sext i32 %137 to i64, !dbg !3492
  %141 = call i1 @iCmpInstHandler(i64 %139, i64 %140, i1 %138, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690840864, i32 1364, i32 13), !dbg !3492
  br i1 %141, label %142, label %183, !dbg !3492

; <label>:142:                                    ; preds = %135
  call void @llvm.dbg.declare(metadata double* %38, metadata !3493, metadata !60), !dbg !3495
  %143 = load double, double* %13, align 8, !dbg !3496
  %144 = load double, double* %30, align 8, !dbg !3497
  %145 = fdiv double %143, %144, !dbg !3498
  call void @fDivHandler(double %143, double %144, double %145, i64 93937690843032, i64 93937690843384, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937690843792, i32 1365, i32 20), !dbg !3495
  store double %145, double* %38, align 8, !dbg !3495
  call void @llvm.dbg.declare(metadata double* %39, metadata !3499, metadata !60), !dbg !3500
  %146 = load double, double* %38, align 8, !dbg !3501
  %147 = call double @hypot(double 1.000000e+00, double %146) #6, !dbg !3502
  store double %147, double* %39, align 8, !dbg !3500
  call void @llvm.dbg.declare(metadata double* %40, metadata !3503, metadata !60), !dbg !3504
  %148 = load double, double* %38, align 8, !dbg !3505
  %149 = load double, double* %30, align 8, !dbg !3506
  %150 = load double, double* %21, align 8, !dbg !3507
  %151 = fmul double %149, %150, !dbg !3508
  call void @fMulHandler(double %149, double %150, double %151, i64 93937689720584, i64 93937689720968, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937689721376, i32 1367, i32 25), !dbg !3509
  %152 = fadd double %148, %151, !dbg !3509
  call void @fAddHandler(double %148, double %151, double %152, i64 93937689720232, i64 93937689721376, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937689721792, i32 1367, i32 20), !dbg !3504
  store double %152, double* %40, align 8, !dbg !3504
  call void @llvm.dbg.declare(metadata double* %41, metadata !3510, metadata !60), !dbg !3511
  %153 = load double, double* %40, align 8, !dbg !3512
  %154 = load double, double* %32, align 8, !dbg !3513
  %155 = fmul double %153, %154, !dbg !3514
  call void @fMulHandler(double %153, double %154, double %155, i64 93937689724984, i64 93937689725336, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937689725744, i32 1368, i32 22), !dbg !3515
  %156 = load double, double* %33, align 8, !dbg !3515
  %157 = fsub double %155, %156, !dbg !3516
  call void @fSubHandler(double %155, double %156, double %157, i64 93937689725744, i64 93937689726136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937689726544, i32 1368, i32 27), !dbg !3517
  %158 = load double, double* %39, align 8, !dbg !3517
  %159 = fdiv double %157, %158, !dbg !3518
  call void @fDivHandler(double %157, double %158, double %159, i64 93937689726544, i64 93937689726936, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937689727344, i32 1368, i32 33), !dbg !3511
  store double %159, double* %41, align 8, !dbg !3511
  %160 = load double, double* %41, align 8, !dbg !3519
  %161 = load i32, i32* %31, align 4, !dbg !3520
  %162 = sext i32 %161 to i64, !dbg !3521
  %163 = load double*, double** %17, align 8, !dbg !3521
  %164 = getelementptr inbounds double, double* %163, i64 %162, !dbg !3521
  store double %160, double* %164, align 8, !dbg !3522
  %165 = load double, double* %39, align 8, !dbg !3523
  %166 = load double, double* %32, align 8, !dbg !3524
  %167 = fmul double %165, %166, !dbg !3525
  call void @fMulHandler(double %165, double %166, double %167, i64 93937689732776, i64 93937689733160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937689733568, i32 1370, i32 22), !dbg !3526
  %168 = load double, double* %40, align 8, !dbg !3526
  %169 = load double, double* %41, align 8, !dbg !3527
  %170 = fmul double %168, %169, !dbg !3528
  call void @fMulHandler(double %168, double %169, double %170, i64 93937689733960, i64 93937689734344, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937689734752, i32 1370, i32 31), !dbg !3529
  %171 = fsub double %167, %170, !dbg !3529
  call void @fSubHandler(double %167, double %170, double %171, i64 93937689733568, i64 93937689734752, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937689735168, i32 1370, i32 27), !dbg !3530
  store double %171, double* %33, align 8, !dbg !3530
  %172 = load double, double* %33, align 8, !dbg !3531
  %173 = load i32, i32* %31, align 4, !dbg !3532
  %174 = sext i32 %173 to i64, !dbg !3533
  %175 = load double*, double** %18, align 8, !dbg !3533
  %176 = getelementptr inbounds double, double* %175, i64 %174, !dbg !3533
  store double %172, double* %176, align 8, !dbg !3534
  %177 = load double, double* %41, align 8, !dbg !3535
  store double %177, double* %32, align 8, !dbg !3536
  %178 = load double, double* %30, align 8, !dbg !3537
  %179 = fadd double %178, 1.000000e+00, !dbg !3537
  call void @fAddHandler(double %178, double 1.000000e+00, double %179, i64 93937689740136, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @31, i32 0, i32 0), i64 93937689740576, i32 1373, i32 9), !dbg !3537
  store double %179, double* %30, align 8, !dbg !3537
  br label %180, !dbg !3538

; <label>:180:                                    ; preds = %142
  %181 = load i32, i32* %31, align 4, !dbg !3539
  %182 = add nsw i32 %181, 1, !dbg !3539
  store i32 %182, i32* %31, align 4, !dbg !3539
  br label %135, !dbg !3541, !llvm.loop !3542

; <label>:183:                                    ; preds = %135
  %184 = load i32, i32* %27, align 4, !dbg !3544
  ret i32 %184, !dbg !3545
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
  %19 = call i1 @fCmpInstHandler(double %17, double 0.000000e+00, i1 %18, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @33, i32 0, i32 0), i64 93937690909312, i32 1386, i32 8), !dbg !3562
  br i1 %19, label %24, label %20, !dbg !3562

; <label>:20:                                     ; preds = %6
  %21 = load double, double* %8, align 8, !dbg !3563
  %22 = fcmp olt double %21, -5.000000e-01, !dbg !3565
  %23 = call i1 @fCmpInstHandler(double %21, double -5.000000e-01, i1 %22, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @33, i32 0, i32 0), i64 93937690910800, i32 1386, i32 25), !dbg !3566
  br i1 %23, label %24, label %27, !dbg !3566

; <label>:24:                                     ; preds = %20, %6
  br label %25, !dbg !3567, !llvm.loop !3569

; <label>:25:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1387, i32 1), !dbg !3570
  store i32 1, i32* %7, align 4, !dbg !3570
  br label %100, !dbg !3570
                                                  ; No predecessors!
  br label %100, !dbg !3573

; <label>:27:                                     ; preds = %20
  %28 = load double, double* %11, align 8, !dbg !3574
  %29 = fcmp olt double %28, 0x24000000000001, !dbg !3576
  %30 = call i1 @fCmpInstHandler(double %28, double 0x24000000000001, i1 %29, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @33, i32 0, i32 0), i64 93937690915856, i32 1389, i32 13), !dbg !3577
  br i1 %30, label %31, label %67, !dbg !3577

; <label>:31:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3578, metadata !60), !dbg !3580
  store i32 0, i32* %14, align 4, !dbg !3581
  br label %32, !dbg !3583

; <label>:32:                                     ; preds = %44, %31
  %33 = load i32, i32* %14, align 4, !dbg !3584
  %34 = load i32, i32* %9, align 4, !dbg !3587
  %35 = icmp sle i32 %33, %34, !dbg !3588
  %36 = sext i32 %33 to i64, !dbg !3589
  %37 = sext i32 %34 to i64, !dbg !3589
  %38 = call i1 @iCmpInstHandler(i64 %36, i64 %37, i1 %35, i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @33, i32 0, i32 0), i64 93937690919664, i32 1391, i32 15), !dbg !3589
  br i1 %38, label %39, label %47, !dbg !3589

; <label>:39:                                     ; preds = %32
  %40 = load i32, i32* %14, align 4, !dbg !3590
  %41 = sext i32 %40 to i64, !dbg !3592
  %42 = load double*, double** %12, align 8, !dbg !3592
  %43 = getelementptr inbounds double, double* %42, i64 %41, !dbg !3592
  store double 0.000000e+00, double* %43, align 8, !dbg !3593
  br label %44, !dbg !3594

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %14, align 4, !dbg !3595
  %46 = add nsw i32 %45, 1, !dbg !3595
  store i32 %46, i32* %14, align 4, !dbg !3595
  br label %32, !dbg !3597, !llvm.loop !3598

; <label>:47:                                     ; preds = %32
  %48 = load double, double* %8, align 8, !dbg !3600
  %49 = fcmp oeq double %48, 0.000000e+00, !dbg !3602
  %50 = call i1 @fCmpInstHandler(double %48, double 0.000000e+00, i1 %49, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @33, i32 0, i32 0), i64 93937690927360, i32 1394, i32 16), !dbg !3603
  br i1 %50, label %51, label %57, !dbg !3603

; <label>:51:                                     ; preds = %47
  %52 = load double, double* %10, align 8, !dbg !3604
  %53 = call double @C0sq(double %52), !dbg !3606
  %54 = call double @sqrt(double %53) #6, !dbg !3607
  call void @callOneArgHandler(i32 14, double %53, double %54, i64 93937690928848, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @33, i32 0, i32 0), i64 93937690929392, i32 1395, i32 21), !dbg !3609
  %55 = load double*, double** %12, align 8, !dbg !3609
  %56 = getelementptr inbounds double, double* %55, i64 0, !dbg !3609
  store double %54, double* %56, align 8, !dbg !3610
  br label %57, !dbg !3611

; <label>:57:                                     ; preds = %51, %47
  %58 = load double*, double** %13, align 8, !dbg !3612
  store double 0.000000e+00, double* %58, align 8, !dbg !3613
  %59 = load double, double* %11, align 8, !dbg !3614
  %60 = fcmp oeq double %59, 0.000000e+00, !dbg !3616
  %61 = call i1 @fCmpInstHandler(double %59, double 0.000000e+00, i1 %60, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @33, i32 0, i32 0), i64 93937690933872, i32 1398, i32 10), !dbg !3617
  br i1 %61, label %62, label %63, !dbg !3617

; <label>:62:                                     ; preds = %57
  store i32 0, i32* %7, align 4, !dbg !3618
  br label %100, !dbg !3618

; <label>:63:                                     ; preds = %57
  br label %64, !dbg !3619, !llvm.loop !3620

; <label>:64:                                     ; preds = %63
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1401, i32 15), !dbg !3621
  store i32 15, i32* %7, align 4, !dbg !3621
  br label %100, !dbg !3621
                                                  ; No predecessors!
  br label %66

; <label>:66:                                     ; preds = %65
  br label %99, !dbg !3624

; <label>:67:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3625, metadata !60), !dbg !3627
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3628, metadata !60), !dbg !3629
  %68 = load double, double* %8, align 8, !dbg !3630
  %69 = load i32, i32* %9, align 4, !dbg !3631
  %70 = load double, double* %10, align 8, !dbg !3632
  %71 = load double, double* %11, align 8, !dbg !3633
  %72 = load double*, double** %12, align 8, !dbg !3634
  %73 = load double*, double** %13, align 8, !dbg !3635
  %74 = call i32 @gsl_sf_coulomb_wave_F_array(double %68, i32 %69, double %70, double %71, double* %72, double* %73), !dbg !3636
  store i32 %74, i32* %16, align 4, !dbg !3629
  store i32 0, i32* %15, align 4, !dbg !3637
  br label %75, !dbg !3639

; <label>:75:                                     ; preds = %94, %67
  %76 = load i32, i32* %15, align 4, !dbg !3640
  %77 = load i32, i32* %9, align 4, !dbg !3643
  %78 = icmp sle i32 %76, %77, !dbg !3644
  %79 = sext i32 %76 to i64, !dbg !3645
  %80 = sext i32 %77 to i64, !dbg !3645
  %81 = call i1 @iCmpInstHandler(i64 %79, i64 %80, i1 %78, i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @33, i32 0, i32 0), i64 93937690949392, i32 1410, i32 15), !dbg !3645
  br i1 %81, label %82, label %97, !dbg !3645

; <label>:82:                                     ; preds = %75
  %83 = load i32, i32* %15, align 4, !dbg !3646
  %84 = sext i32 %83 to i64, !dbg !3648
  %85 = load double*, double** %12, align 8, !dbg !3648
  %86 = getelementptr inbounds double, double* %85, i64 %84, !dbg !3648
  %87 = load double, double* %86, align 8, !dbg !3648
  %88 = load double, double* %11, align 8, !dbg !3649
  %89 = fdiv double %87, %88, !dbg !3650
  call void @fDivHandler(double %87, double %88, double %89, i64 93937690953000, i64 93937690953096, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @33, i32 0, i32 0), i64 93937690953504, i32 1411, i32 33), !dbg !3651
  %90 = load i32, i32* %15, align 4, !dbg !3651
  %91 = sext i32 %90 to i64, !dbg !3652
  %92 = load double*, double** %12, align 8, !dbg !3652
  %93 = getelementptr inbounds double, double* %92, i64 %91, !dbg !3652
  store double %89, double* %93, align 8, !dbg !3653
  br label %94, !dbg !3654

; <label>:94:                                     ; preds = %82
  %95 = load i32, i32* %15, align 4, !dbg !3655
  %96 = add nsw i32 %95, 1, !dbg !3655
  store i32 %96, i32* %15, align 4, !dbg !3655
  br label %75, !dbg !3657, !llvm.loop !3658

; <label>:97:                                     ; preds = %75
  %98 = load i32, i32* %16, align 4, !dbg !3660
  store i32 %98, i32* %7, align 4, !dbg !3661
  br label %100, !dbg !3661

; <label>:99:                                     ; preds = %66
  br label %100

; <label>:100:                                    ; preds = %99, %97, %64, %62, %26, %25
  %101 = load i32, i32* %7, align 4, !dbg !3662
  ret i32 %101, !dbg !3662
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
  %17 = call i1 @fCmpInstHandler(double %15, double 0x40915EFC686FD866, i1 %16, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690973456, i32 239, i32 10), !dbg !3677
  br i1 %17, label %18, label %23, !dbg !3677

; <label>:18:                                     ; preds = %4
  %19 = load double*, double** %8, align 8, !dbg !3678
  store double 1.000000e+00, double* %19, align 8, !dbg !3680
  %20 = load double*, double** %9, align 8, !dbg !3681
  store double 0.000000e+00, double* %20, align 8, !dbg !3682
  br label %21, !dbg !3683, !llvm.loop !3684

; <label>:21:                                     ; preds = %18
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 242, i32 15), !dbg !3685
  store i32 15, i32* %5, align 4, !dbg !3685
  br label %73, !dbg !3685
                                                  ; No predecessors!
  br label %73, !dbg !3688

; <label>:23:                                     ; preds = %4
  %24 = load double, double* %7, align 8, !dbg !3689
  %25 = fcmp ogt double %24, 0x4006F233C496DA5E, !dbg !3691
  %26 = call i1 @fCmpInstHandler(double %24, double 0x4006F233C496DA5E, i1 %25, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690979488, i32 244, i32 15), !dbg !3692
  br i1 %26, label %27, label %52, !dbg !3692

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata double* %10, metadata !3693, metadata !60), !dbg !3695
  %28 = load double, double* %7, align 8, !dbg !3696
  %29 = fmul double 0xC01921FB54442D18, %28, !dbg !3697
  call void @fMulHandler(double 0xC01921FB54442D18, double %28, double %29, i64 0, i64 93937690981656, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690982096, i32 245, i32 43), !dbg !3698
  %30 = call double @exp(double %29) #6, !dbg !3698
  call void @callOneArgHandler(i32 11, double %29, double %30, i64 93937690982096, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690982576, i32 245, i32 30), !dbg !3699
  %31 = fmul double 2.000000e+00, %30, !dbg !3699
  call void @fMulHandler(double 2.000000e+00, double %30, double %31, i64 0, i64 93937690982576, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690983088, i32 245, i32 28), !dbg !3695
  store double %31, double* %10, align 8, !dbg !3695
  call void @llvm.dbg.declare(metadata double* %11, metadata !3700, metadata !60), !dbg !3701
  %32 = load double, double* %6, align 8, !dbg !3702
  %33 = fmul double 0x400921FB54442D18, %32, !dbg !3703
  call void @fMulHandler(double 0x400921FB54442D18, double %32, double %33, i64 0, i64 93937690986248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690986624, i32 246, i32 33), !dbg !3704
  %34 = call double @tan(double %33) #6, !dbg !3704
  call void @callOneArgHandler(i32 3, double %33, double %34, i64 93937690986624, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690987376, i32 246, i32 24), !dbg !3701
  store double %34, double* %11, align 8, !dbg !3701
  call void @llvm.dbg.declare(metadata double* %12, metadata !3705, metadata !60), !dbg !3706
  %35 = load double, double* %10, align 8, !dbg !3707
  %36 = load double, double* %11, align 8, !dbg !3708
  %37 = fmul double %35, %36, !dbg !3709
  call void @fMulHandler(double %35, double %36, double %37, i64 93937690990712, i64 93937690991064, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690991472, i32 247, i32 28), !dbg !3710
  %38 = load double, double* %11, align 8, !dbg !3710
  %39 = load double, double* %11, align 8, !dbg !3711
  %40 = fmul double %38, %39, !dbg !3712
  call void @fMulHandler(double %38, double %39, double %40, i64 93937690991864, i64 93937690992248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690992656, i32 247, i32 40), !dbg !3713
  %41 = fadd double %40, 1.000000e+00, !dbg !3713
  call void @fAddHandler(double %40, double 1.000000e+00, double %41, i64 93937690992656, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690993104, i32 247, i32 45), !dbg !3714
  %42 = fdiv double %37, %41, !dbg !3714
  call void @fDivHandler(double %37, double %41, double %42, i64 93937690991472, i64 93937690993104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690993488, i32 247, i32 34), !dbg !3706
  store double %42, double* %12, align 8, !dbg !3706
  %43 = load double, double* %12, align 8, !dbg !3715
  %44 = fmul double 5.000000e-01, %43, !dbg !3716
  call void @fMulHandler(double 5.000000e-01, double %43, double %44, i64 0, i64 93937690995560, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690996000, i32 248, i32 27), !dbg !3717
  %45 = load double, double* %12, align 8, !dbg !3717
  %46 = fmul double %44, %45, !dbg !3718
  call void @fMulHandler(double %44, double %45, double %46, i64 93937690996000, i64 93937690996360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690996768, i32 248, i32 32), !dbg !3719
  %47 = fadd double -1.000000e+00, %46, !dbg !3719
  call void @fAddHandler(double -1.000000e+00, double %46, double %47, i64 0, i64 93937690996768, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690997216, i32 248, i32 21), !dbg !3720
  %48 = load double*, double** %8, align 8, !dbg !3720
  store double %47, double* %48, align 8, !dbg !3721
  %49 = load double, double* %12, align 8, !dbg !3722
  %50 = fsub double -0.000000e+00, %49, !dbg !3723
  call void @fSubHandler(double -0.000000e+00, double %49, double %50, i64 0, i64 93937690998376, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937690998784, i32 249, i32 16), !dbg !3724
  %51 = load double*, double** %9, align 8, !dbg !3724
  store double %50, double* %51, align 8, !dbg !3725
  store i32 0, i32* %5, align 4, !dbg !3726
  br label %73, !dbg !3726

; <label>:52:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata double* %13, metadata !3727, metadata !60), !dbg !3729
  %53 = load double, double* %7, align 8, !dbg !3730
  %54 = fmul double 0x400921FB54442D18, %53, !dbg !3731
  call void @fMulHandler(double 0x400921FB54442D18, double %53, double %54, i64 0, i64 93937691003096, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691003472, i32 253, i32 28), !dbg !3732
  %55 = call double @tanh(double %54) #6, !dbg !3732
  call void @callOneArgHandler(i32 10, double %54, double %55, i64 93937691003472, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691004224, i32 253, i32 18), !dbg !3733
  %56 = load double, double* %6, align 8, !dbg !3733
  %57 = fmul double 0x400921FB54442D18, %56, !dbg !3734
  call void @fMulHandler(double 0x400921FB54442D18, double %56, double %57, i64 0, i64 93937691004712, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691005120, i32 253, i32 46), !dbg !3735
  %58 = call double @tan(double %57) #6, !dbg !3735
  call void @callOneArgHandler(i32 3, double %57, double %58, i64 93937691005120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691005600, i32 253, i32 37), !dbg !3737
  %59 = fdiv double %55, %58, !dbg !3737
  call void @fDivHandler(double %55, double %58, double %59, i64 93937691004224, i64 93937691005600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691006080, i32 253, i32 35), !dbg !3729
  store double %59, double* %13, align 8, !dbg !3729
  call void @llvm.dbg.declare(metadata double* %14, metadata !3738, metadata !60), !dbg !3739
  %60 = load double, double* %13, align 8, !dbg !3740
  %61 = call double @atan(double %60) #6, !dbg !3741
  call void @callOneArgHandler(i32 6, double %60, double %61, i64 93937691009320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691010032, i32 254, i32 19), !dbg !3742
  %62 = fsub double -0.000000e+00, %61, !dbg !3742
  call void @fSubHandler(double -0.000000e+00, double %61, double %62, i64 0, i64 93937691010032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691010544, i32 254, i32 18), !dbg !3743
  %63 = load double, double* %6, align 8, !dbg !3743
  %64 = fadd double %63, 5.000000e-01, !dbg !3744
  call void @fAddHandler(double %63, double 5.000000e-01, double %64, i64 93937691010936, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691011376, i32 254, i32 34), !dbg !3745
  %65 = fmul double %64, 0x400921FB54442D18, !dbg !3745
  call void @fMulHandler(double %64, double 0x400921FB54442D18, double %65, i64 93937691011376, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691011760, i32 254, i32 41), !dbg !3746
  %66 = fsub double %62, %65, !dbg !3746
  call void @fSubHandler(double %62, double %65, double %66, i64 93937691010544, i64 93937691011760, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691012176, i32 254, i32 27), !dbg !3739
  store double %66, double* %14, align 8, !dbg !3739
  %67 = load double, double* %14, align 8, !dbg !3747
  %68 = call double @cos(double %67) #6, !dbg !3748
  call void @callOneArgHandler(i32 2, double %67, double %68, i64 93937691014248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691014992, i32 255, i32 16), !dbg !3749
  %69 = load double*, double** %8, align 8, !dbg !3749
  store double %68, double* %69, align 8, !dbg !3750
  %70 = load double, double* %14, align 8, !dbg !3751
  %71 = call double @sin(double %70) #6, !dbg !3752
  call void @callOneArgHandler(i32 1, double %70, double %71, i64 93937691016280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @35, i32 0, i32 0), i64 93937691017072, i32 256, i32 16), !dbg !3753
  %72 = load double*, double** %9, align 8, !dbg !3753
  store double %71, double* %72, align 8, !dbg !3754
  store i32 0, i32* %5, align 4, !dbg !3755
  br label %73, !dbg !3755

; <label>:73:                                     ; preds = %52, %27, %22, %21
  %74 = load i32, i32* %5, align 4, !dbg !3756
  ret i32 %74, !dbg !3756
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
