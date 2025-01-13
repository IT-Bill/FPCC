; ModuleID = 'bessel_y.ll'
source_filename = "bessel_y.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_y.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_y0_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_y1_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_y2_e(x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_yl_e(l, x, &result)\00", align 1
@0 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_y0_e\00"
@1 = private unnamed_addr constant [12 x i8] c"bessel_y.ll\00"
@2 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_y1_e\00"
@3 = private unnamed_addr constant [12 x i8] c"bessel_y.ll\00"
@4 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_y2_e\00"
@5 = private unnamed_addr constant [12 x i8] c"bessel_y.ll\00"
@6 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_yl_e\00"
@7 = private unnamed_addr constant [12 x i8] c"bessel_y.ll\00"
@8 = private unnamed_addr constant [18 x i8] c"bessel_yl_small_x\00"
@9 = private unnamed_addr constant [12 x i8] c"bessel_y.ll\00"
@10 = private unnamed_addr constant [23 x i8] c"gsl_sf_bessel_yl_array\00"
@11 = private unnamed_addr constant [12 x i8] c"bessel_y.ll\00"
@12 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_y0\00"
@13 = private unnamed_addr constant [12 x i8] c"bessel_y.ll\00"
@14 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_y1\00"
@15 = private unnamed_addr constant [12 x i8] c"bessel_y.ll\00"
@16 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_y2\00"
@17 = private unnamed_addr constant [12 x i8] c"bessel_y.ll\00"
@18 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_yl\00"
@19 = private unnamed_addr constant [12 x i8] c"bessel_y.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_y0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !59, metadata !60), !dbg !61
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !62, metadata !60), !dbg !63
  %8 = load double, double* %4, align 8, !dbg !64
  %9 = fcmp ole double %8, 0.000000e+00, !dbg !66
  %10 = call i1 @fCmpInstHandler(double %8, double 0.000000e+00, i1 %9, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94430158686800, i32 81, i32 8), !dbg !67
  br i1 %10, label %11, label %20, !dbg !67

; <label>:11:                                     ; preds = %2
  br label %12, !dbg !68, !llvm.loop !70

; <label>:12:                                     ; preds = %11
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !71
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !71
  store double 0x7FF8000000000000, double* %14, align 8, !dbg !71
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !71
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !71
  store double 0x7FF8000000000000, double* %16, align 8, !dbg !71
  br label %17, !dbg !71, !llvm.loop !74

; <label>:17:                                     ; preds = %12
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 82, i32 1), !dbg !76
  store i32 1, i32* %3, align 4, !dbg !76
  br label %61, !dbg !76
                                                  ; No predecessors!
  br label %19, !dbg !79

; <label>:19:                                     ; preds = %18
  br label %61, !dbg !81

; <label>:20:                                     ; preds = %2
  %21 = load double, double* %4, align 8, !dbg !82
  %22 = fcmp olt double %21, 0x4000000000000, !dbg !84
  %23 = call i1 @fCmpInstHandler(double %21, double 0x4000000000000, i1 %22, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94430158700784, i32 84, i32 38), !dbg !85
  br i1 %23, label %24, label %33, !dbg !85

; <label>:24:                                     ; preds = %20
  br label %25, !dbg !86, !llvm.loop !88

; <label>:25:                                     ; preds = %24
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !89
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !89
  store double 0x7FF0000000000000, double* %27, align 8, !dbg !89
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !89
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !89
  store double 0x7FF0000000000000, double* %29, align 8, !dbg !89
  br label %30, !dbg !89, !llvm.loop !92

; <label>:30:                                     ; preds = %25
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 85, i32 16), !dbg !94
  store i32 16, i32* %3, align 4, !dbg !94
  br label %61, !dbg !94
                                                  ; No predecessors!
  br label %32, !dbg !97

; <label>:32:                                     ; preds = %31
  br label %60, !dbg !99

; <label>:33:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !100, metadata !60), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %7, metadata !103, metadata !60), !dbg !105
  %34 = load double, double* %4, align 8, !dbg !106
  %35 = call i32 @gsl_sf_cos_e(double %34, %struct.gsl_sf_result_struct* %6), !dbg !107
  store i32 %35, i32* %7, align 4, !dbg !105
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !108
  %37 = load double, double* %36, align 8, !dbg !108
  %38 = fsub double -0.000000e+00, %37, !dbg !109
  call void @fSubHandler(double -0.000000e+00, double %37, double %38, i64 0, i64 94430158715304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94430158717040, i32 90, i32 20), !dbg !110
  %39 = load double, double* %4, align 8, !dbg !110
  %40 = fdiv double %38, %39, !dbg !111
  call void @fDivHandler(double %38, double %39, double %40, i64 94430158717040, i64 94430158717432, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94430158717840, i32 90, i32 35), !dbg !112
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !112
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !113
  store double %40, double* %42, align 8, !dbg !114
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !115
  %44 = load double, double* %43, align 8, !dbg !115
  %45 = load double, double* %4, align 8, !dbg !116
  %46 = fdiv double %44, %45, !dbg !117
  call void @fDivHandler(double %44, double %45, double %46, i64 94430158719928, i64 94430158721576, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94430158721984, i32 91, i32 39), !dbg !118
  %47 = call double @fabs(double %46) #1, !dbg !118
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !119
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !120
  store double %47, double* %49, align 8, !dbg !121
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !122
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !123
  %52 = load double, double* %51, align 8, !dbg !123
  %53 = call double @fabs(double %52) #1, !dbg !124
  %54 = fmul double 0x3CC0000000000000, %53, !dbg !125
  call void @fMulHandler(double 0x3CC0000000000000, double %53, double %54, i64 0, i64 94430158727504, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94430158728048, i32 92, i32 42), !dbg !126
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !126
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !127
  %57 = load double, double* %56, align 8, !dbg !128
  %58 = fadd double %57, %54, !dbg !128
  call void @fAddHandler(double %57, double %54, double %58, i64 94430158729272, i64 94430158728048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94430158729680, i32 92, i32 17), !dbg !128
  store double %58, double* %56, align 8, !dbg !128
  %59 = load i32, i32* %7, align 4, !dbg !129
  store i32 %59, i32* %3, align 4, !dbg !130
  br label %61, !dbg !130

; <label>:60:                                     ; preds = %32
  br label %61

; <label>:61:                                     ; preds = %60, %33, %30, %19, %17
  %62 = load i32, i32* %3, align 4, !dbg !131
  ret i32 %62, !dbg !131
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

declare i32 @gsl_sf_cos_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_y1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !132 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !133, metadata !60), !dbg !134
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !135, metadata !60), !dbg !136
  %20 = load double, double* %4, align 8, !dbg !137
  %21 = fcmp ole double %20, 0.000000e+00, !dbg !139
  %22 = call i1 @fCmpInstHandler(double %20, double 0.000000e+00, i1 %21, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158742592, i32 102, i32 8), !dbg !140
  br i1 %22, label %23, label %32, !dbg !140

; <label>:23:                                     ; preds = %2
  br label %24, !dbg !141, !llvm.loop !143

; <label>:24:                                     ; preds = %23
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !144
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !144
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !144
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !144
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !144
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !144
  br label %29, !dbg !144, !llvm.loop !147

; <label>:29:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 103, i32 1), !dbg !149
  store i32 1, i32* %3, align 4, !dbg !149
  br label %151, !dbg !149
                                                  ; No predecessors!
  br label %31, !dbg !152

; <label>:31:                                     ; preds = %30
  br label %151, !dbg !154

; <label>:32:                                     ; preds = %2
  %33 = load double, double* %4, align 8, !dbg !155
  %34 = fcmp olt double %33, 0x1FF0000000000001, !dbg !157
  %35 = call i1 @fCmpInstHandler(double %33, double 0x1FF0000000000001, i1 %34, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158751072, i32 105, i32 13), !dbg !158
  br i1 %35, label %36, label %45, !dbg !158

; <label>:36:                                     ; preds = %32
  br label %37, !dbg !159, !llvm.loop !161

; <label>:37:                                     ; preds = %36
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !162
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !162
  store double 0x7FF0000000000000, double* %39, align 8, !dbg !162
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !162
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !162
  store double 0x7FF0000000000000, double* %41, align 8, !dbg !162
  br label %42, !dbg !162, !llvm.loop !165

; <label>:42:                                     ; preds = %37
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 106, i32 16), !dbg !167
  store i32 16, i32* %3, align 4, !dbg !167
  br label %151, !dbg !167
                                                  ; No predecessors!
  br label %44, !dbg !170

; <label>:44:                                     ; preds = %43
  br label %150, !dbg !172

; <label>:45:                                     ; preds = %32
  %46 = load double, double* %4, align 8, !dbg !173
  %47 = fcmp olt double %46, 2.500000e-01, !dbg !175
  %48 = call i1 @fCmpInstHandler(double %46, double 2.500000e-01, i1 %47, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158759872, i32 108, i32 13), !dbg !176
  br i1 %48, label %49, label %84, !dbg !176

; <label>:49:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata double* %6, metadata !177, metadata !60), !dbg !179
  %50 = load double, double* %4, align 8, !dbg !180
  %51 = load double, double* %4, align 8, !dbg !181
  %52 = fmul double %50, %51, !dbg !182
  call void @fMulHandler(double %50, double %51, double %52, i64 94430158762008, i64 94430158762360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158762768, i32 109, i32 23), !dbg !179
  store double %52, double* %6, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata double* %7, metadata !183, metadata !60), !dbg !184
  store double 5.000000e-01, double* %7, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata double* %8, metadata !185, metadata !60), !dbg !186
  store double -1.250000e-01, double* %8, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata double* %9, metadata !187, metadata !60), !dbg !188
  store double 0x3F7C71C71C71C71C, double* %9, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata double* %10, metadata !189, metadata !60), !dbg !190
  store double 0xBF26C16C16C16C17, double* %10, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata double* %11, metadata !191, metadata !60), !dbg !192
  store double 0x3EC4CE19AE67B348, double* %11, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata double* %12, metadata !193, metadata !60), !dbg !194
  store double 0xBE58A86A49F629D1, double* %12, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata double* %13, metadata !195, metadata !60), !dbg !196
  %53 = load double, double* %6, align 8, !dbg !197
  %54 = load double, double* %6, align 8, !dbg !198
  %55 = load double, double* %6, align 8, !dbg !199
  %56 = load double, double* %6, align 8, !dbg !200
  %57 = load double, double* %6, align 8, !dbg !201
  %58 = load double, double* %6, align 8, !dbg !202
  %59 = fmul double %58, 0xBE58A86A49F629D1, !dbg !203
  call void @fMulHandler(double %58, double 0xBE58A86A49F629D1, double %59, i64 94430158784840, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158785248, i32 116, i32 71), !dbg !204
  %60 = fadd double 0x3EC4CE19AE67B348, %59, !dbg !204
  call void @fAddHandler(double 0x3EC4CE19AE67B348, double %59, double %60, i64 0, i64 94430158785248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158785664, i32 116, i32 68), !dbg !205
  %61 = fmul double %57, %60, !dbg !205
  call void @fMulHandler(double %57, double %60, double %61, i64 94430158784456, i64 94430158785664, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158786080, i32 116, i32 63), !dbg !206
  %62 = fadd double 0xBF26C16C16C16C17, %61, !dbg !206
  call void @fAddHandler(double 0xBF26C16C16C16C17, double %61, double %62, i64 0, i64 94430158786080, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158786496, i32 116, i32 60), !dbg !207
  %63 = fmul double %56, %62, !dbg !207
  call void @fMulHandler(double %56, double %62, double %63, i64 94430158784072, i64 94430158786496, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158786912, i32 116, i32 55), !dbg !208
  %64 = fadd double 0x3F7C71C71C71C71C, %63, !dbg !208
  call void @fAddHandler(double 0x3F7C71C71C71C71C, double %63, double %64, i64 0, i64 94430158786912, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158787328, i32 116, i32 52), !dbg !209
  %65 = fmul double %55, %64, !dbg !209
  call void @fMulHandler(double %55, double %64, double %65, i64 94430158783688, i64 94430158787328, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158787744, i32 116, i32 47), !dbg !210
  %66 = fadd double -1.250000e-01, %65, !dbg !210
  call void @fAddHandler(double -1.250000e-01, double %65, double %66, i64 0, i64 94430158787744, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158788192, i32 116, i32 44), !dbg !211
  %67 = fmul double %54, %66, !dbg !211
  call void @fMulHandler(double %54, double %66, double %67, i64 94430158783304, i64 94430158788192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158788576, i32 116, i32 39), !dbg !212
  %68 = fadd double 5.000000e-01, %67, !dbg !212
  call void @fAddHandler(double 5.000000e-01, double %67, double %68, i64 0, i64 94430158788576, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158790064, i32 116, i32 36), !dbg !213
  %69 = fmul double %53, %68, !dbg !213
  call void @fMulHandler(double %53, double %68, double %69, i64 94430158782952, i64 94430158790064, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158790448, i32 116, i32 31), !dbg !214
  %70 = fadd double 1.000000e+00, %69, !dbg !214
  call void @fAddHandler(double 1.000000e+00, double %69, double %70, i64 0, i64 94430158790448, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158790960, i32 116, i32 28), !dbg !196
  store double %70, double* %13, align 8, !dbg !196
  %71 = load double, double* %13, align 8, !dbg !215
  %72 = fsub double -0.000000e+00, %71, !dbg !216
  call void @fSubHandler(double -0.000000e+00, double %71, double %72, i64 0, i64 94430158793000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158793408, i32 117, i32 19), !dbg !217
  %73 = load double, double* %6, align 8, !dbg !217
  %74 = fdiv double %72, %73, !dbg !218
  call void @fDivHandler(double %72, double %73, double %74, i64 94430158793408, i64 94430158793800, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158794208, i32 117, i32 23), !dbg !219
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !219
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !220
  store double %74, double* %76, align 8, !dbg !221
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !222
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !223
  %79 = load double, double* %78, align 8, !dbg !223
  %80 = call double @fabs(double %79) #1, !dbg !224
  %81 = fmul double 0x3CB0000000000000, %80, !dbg !225
  call void @fMulHandler(double 0x3CB0000000000000, double %80, double %81, i64 0, i64 94430158798416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158798960, i32 118, i32 35), !dbg !226
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !226
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !227
  store double %81, double* %83, align 8, !dbg !228
  store i32 0, i32* %3, align 4, !dbg !229
  br label %151, !dbg !229

; <label>:84:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !230, metadata !60), !dbg !232
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !233, metadata !60), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %16, metadata !235, metadata !60), !dbg !236
  %85 = load double, double* %4, align 8, !dbg !237
  %86 = call i32 @gsl_sf_cos_e(double %85, %struct.gsl_sf_result_struct* %14), !dbg !238
  store i32 %86, i32* %16, align 4, !dbg !236
  call void @llvm.dbg.declare(metadata i32* %17, metadata !239, metadata !60), !dbg !240
  %87 = load double, double* %4, align 8, !dbg !241
  %88 = call i32 @gsl_sf_sin_e(double %87, %struct.gsl_sf_result_struct* %15), !dbg !242
  store i32 %88, i32* %17, align 4, !dbg !240
  call void @llvm.dbg.declare(metadata double* %18, metadata !243, metadata !60), !dbg !244
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !245
  %90 = load double, double* %89, align 8, !dbg !245
  store double %90, double* %18, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata double* %19, metadata !246, metadata !60), !dbg !247
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !248
  %92 = load double, double* %91, align 8, !dbg !248
  store double %92, double* %19, align 8, !dbg !247
  %93 = load double, double* %18, align 8, !dbg !249
  %94 = load double, double* %4, align 8, !dbg !250
  %95 = fdiv double %93, %94, !dbg !251
  call void @fDivHandler(double %93, double %94, double %95, i64 94430158822232, i64 94430158822616, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158823024, i32 128, i32 24), !dbg !252
  %96 = load double, double* %19, align 8, !dbg !252
  %97 = fadd double %95, %96, !dbg !253
  call void @fAddHandler(double %95, double %96, double %97, i64 94430158823024, i64 94430158823416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158823824, i32 128, i32 27), !dbg !254
  %98 = fsub double -0.000000e+00, %97, !dbg !254
  call void @fSubHandler(double -0.000000e+00, double %97, double %98, i64 0, i64 94430158823824, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158824240, i32 128, i32 20), !dbg !255
  %99 = load double, double* %4, align 8, !dbg !255
  %100 = fdiv double %98, %99, !dbg !256
  call void @fDivHandler(double %98, double %99, double %100, i64 94430158824240, i64 94430158824632, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158825040, i32 128, i32 32), !dbg !257
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !257
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !258
  store double %100, double* %102, align 8, !dbg !259
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !260
  %104 = load double, double* %103, align 8, !dbg !260
  %105 = load double, double* %4, align 8, !dbg !261
  %106 = fdiv double %104, %105, !dbg !262
  call void @fDivHandler(double %104, double %105, double %106, i64 94430158827128, i64 94430158828776, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158829184, i32 129, i32 40), !dbg !263
  %107 = call double @fabs(double %106) #1, !dbg !263
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !264
  %109 = load double, double* %108, align 8, !dbg !264
  %110 = fadd double %107, %109, !dbg !265
  call void @fAddHandler(double %107, double %109, double %110, i64 94430158829664, i64 94430158830568, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158832240, i32 129, i32 44), !dbg !266
  %111 = load double, double* %4, align 8, !dbg !266
  %112 = call double @fabs(double %111) #1, !dbg !267
  %113 = fdiv double %110, %112, !dbg !269
  call void @fDivHandler(double %110, double %112, double %113, i64 94430158832240, i64 94430158833104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158833584, i32 129, i32 61), !dbg !270
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !270
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !271
  store double %113, double* %115, align 8, !dbg !272
  %116 = load double, double* %19, align 8, !dbg !273
  %117 = load double, double* %4, align 8, !dbg !274
  %118 = fdiv double %116, %117, !dbg !275
  call void @fDivHandler(double %116, double %117, double %118, i64 94430158835224, i64 94430158835608, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158836016, i32 130, i32 46), !dbg !276
  %119 = call double @fabs(double %118) #1, !dbg !276
  %120 = load double, double* %18, align 8, !dbg !277
  %121 = load double, double* %4, align 8, !dbg !278
  %122 = load double, double* %4, align 8, !dbg !279
  %123 = fmul double %121, %122, !dbg !280
  call void @fMulHandler(double %121, double %122, double %123, i64 94430158837336, i64 94430158837720, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158838128, i32 130, i32 62), !dbg !281
  %124 = fdiv double %120, %123, !dbg !281
  call void @fDivHandler(double %120, double %123, double %124, i64 94430158836952, i64 94430158838128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158838544, i32 130, i32 59), !dbg !282
  %125 = call double @fabs(double %124) #1, !dbg !282
  %126 = fadd double %119, %125, !dbg !283
  call void @fAddHandler(double %119, double %125, double %126, i64 94430158836496, i64 94430158839024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158839504, i32 130, i32 50), !dbg !284
  %127 = fmul double 0x3CB0000000000000, %126, !dbg !284
  call void @fMulHandler(double 0x3CB0000000000000, double %126, double %127, i64 0, i64 94430158839504, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158839920, i32 130, i32 36), !dbg !285
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !285
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !286
  %130 = load double, double* %129, align 8, !dbg !287
  %131 = fadd double %130, %127, !dbg !287
  call void @fAddHandler(double %130, double %127, double %131, i64 94430158841144, i64 94430158839920, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158841552, i32 130, i32 17), !dbg !287
  store double %131, double* %129, align 8, !dbg !287
  %132 = load i32, i32* %16, align 4, !dbg !288
  %133 = icmp ne i32 %132, 0, !dbg !288
  %134 = sext i32 %132 to i64, !dbg !288
  %135 = call i1 @iCmpInstHandler(i64 %134, i64 0, i1 %133, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158845808, i32 131, i32 12), !dbg !288
  br i1 %135, label %136, label %138, !dbg !288

; <label>:136:                                    ; preds = %84
  %137 = load i32, i32* %16, align 4, !dbg !289
  br label %148, !dbg !289

; <label>:138:                                    ; preds = %84
  %139 = load i32, i32* %17, align 4, !dbg !290
  %140 = icmp ne i32 %139, 0, !dbg !290
  %141 = sext i32 %139 to i64, !dbg !290
  %142 = call i1 @iCmpInstHandler(i64 %141, i64 0, i1 %140, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94430158850352, i32 131, i32 12), !dbg !290
  br i1 %142, label %143, label %145, !dbg !290

; <label>:143:                                    ; preds = %138
  %144 = load i32, i32* %17, align 4, !dbg !292
  br label %146, !dbg !292

; <label>:145:                                    ; preds = %138
  br label %146, !dbg !294

; <label>:146:                                    ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ], !dbg !296
  br label %148, !dbg !296

; <label>:148:                                    ; preds = %146, %136
  %149 = phi i32 [ %137, %136 ], [ %147, %146 ], !dbg !298
  store i32 %149, i32* %3, align 4, !dbg !300
  br label %151, !dbg !300

; <label>:150:                                    ; preds = %44
  br label %151

; <label>:151:                                    ; preds = %150, %148, %49, %42, %31, %29
  %152 = load i32, i32* %3, align 4, !dbg !301
  ret i32 %152, !dbg !301
}

declare i32 @gsl_sf_sin_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_y2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !302 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !303, metadata !60), !dbg !304
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !305, metadata !60), !dbg !306
  %22 = load double, double* %4, align 8, !dbg !307
  %23 = fcmp ole double %22, 0.000000e+00, !dbg !309
  %24 = call i1 @fCmpInstHandler(double %22, double 0.000000e+00, i1 %23, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158865312, i32 140, i32 8), !dbg !310
  br i1 %24, label %25, label %34, !dbg !310

; <label>:25:                                     ; preds = %2
  br label %26, !dbg !311, !llvm.loop !313

; <label>:26:                                     ; preds = %25
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !314
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !314
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !314
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !314
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !314
  store double 0x7FF8000000000000, double* %30, align 8, !dbg !314
  br label %31, !dbg !314, !llvm.loop !317

; <label>:31:                                     ; preds = %26
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 141, i32 1), !dbg !319
  store i32 1, i32* %3, align 4, !dbg !319
  br label %169, !dbg !319
                                                  ; No predecessors!
  br label %33, !dbg !322

; <label>:33:                                     ; preds = %32
  br label %169, !dbg !324

; <label>:34:                                     ; preds = %2
  %35 = load double, double* %4, align 8, !dbg !325
  %36 = fcmp olt double %35, 0x2A9965FEA53D6E98, !dbg !327
  %37 = call i1 @fCmpInstHandler(double %35, double 0x2A9965FEA53D6E98, i1 %36, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158874080, i32 143, i32 13), !dbg !328
  br i1 %37, label %38, label %47, !dbg !328

; <label>:38:                                     ; preds = %34
  br label %39, !dbg !329, !llvm.loop !331

; <label>:39:                                     ; preds = %38
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !332
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !332
  store double 0x7FF0000000000000, double* %41, align 8, !dbg !332
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !332
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !332
  store double 0x7FF0000000000000, double* %43, align 8, !dbg !332
  br label %44, !dbg !332, !llvm.loop !335

; <label>:44:                                     ; preds = %39
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 144, i32 16), !dbg !337
  store i32 16, i32* %3, align 4, !dbg !337
  br label %169, !dbg !337
                                                  ; No predecessors!
  br label %46, !dbg !340

; <label>:46:                                     ; preds = %45
  br label %168, !dbg !342

; <label>:47:                                     ; preds = %34
  %48 = load double, double* %4, align 8, !dbg !343
  %49 = fcmp olt double %48, 5.000000e-01, !dbg !345
  %50 = call i1 @fCmpInstHandler(double %48, double 5.000000e-01, i1 %49, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158882816, i32 146, i32 13), !dbg !346
  br i1 %50, label %51, label %93, !dbg !346

; <label>:51:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata double* %6, metadata !347, metadata !60), !dbg !349
  %52 = load double, double* %4, align 8, !dbg !350
  %53 = load double, double* %4, align 8, !dbg !351
  %54 = fmul double %52, %53, !dbg !352
  call void @fMulHandler(double %52, double %53, double %54, i64 94430158884952, i64 94430158885304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158885712, i32 147, i32 23), !dbg !349
  store double %54, double* %6, align 8, !dbg !349
  call void @llvm.dbg.declare(metadata double* %7, metadata !353, metadata !60), !dbg !354
  store double 0x3FC5555555555555, double* %7, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata double* %8, metadata !355, metadata !60), !dbg !356
  store double 0x3FA5555555555555, double* %8, align 8, !dbg !356
  call void @llvm.dbg.declare(metadata double* %9, metadata !357, metadata !60), !dbg !358
  store double 0xBF7C71C71C71C71C, double* %9, align 8, !dbg !358
  call void @llvm.dbg.declare(metadata double* %10, metadata !359, metadata !60), !dbg !360
  store double 0x3F32F684BDA12F68, double* %10, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata double* %11, metadata !361, metadata !60), !dbg !362
  store double 0xBED845C8A0CE5129, double* %11, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata double* %12, metadata !363, metadata !60), !dbg !364
  store double 0x3E727E4FB7789F5C, double* %12, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata double* %13, metadata !365, metadata !60), !dbg !366
  store double 0xBE02C9758DAF5CD0, double* %13, align 8, !dbg !366
  call void @llvm.dbg.declare(metadata double* %14, metadata !367, metadata !60), !dbg !368
  %55 = load double, double* %6, align 8, !dbg !369
  %56 = load double, double* %6, align 8, !dbg !370
  %57 = load double, double* %6, align 8, !dbg !371
  %58 = load double, double* %6, align 8, !dbg !372
  %59 = load double, double* %6, align 8, !dbg !373
  %60 = load double, double* %6, align 8, !dbg !374
  %61 = load double, double* %6, align 8, !dbg !375
  %62 = fmul double %61, 0xBE02C9758DAF5CD0, !dbg !376
  call void @fMulHandler(double %61, double 0xBE02C9758DAF5CD0, double %62, i64 94430158913064, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158913472, i32 155, i32 79), !dbg !377
  %63 = fadd double 0x3E727E4FB7789F5C, %62, !dbg !377
  call void @fAddHandler(double 0x3E727E4FB7789F5C, double %62, double %63, i64 0, i64 94430158913472, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158913888, i32 155, i32 76), !dbg !378
  %64 = fmul double %60, %63, !dbg !378
  call void @fMulHandler(double %60, double %63, double %64, i64 94430158912680, i64 94430158913888, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158914304, i32 155, i32 71), !dbg !379
  %65 = fadd double 0xBED845C8A0CE5129, %64, !dbg !379
  call void @fAddHandler(double 0xBED845C8A0CE5129, double %64, double %65, i64 0, i64 94430158914304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158914720, i32 155, i32 68), !dbg !380
  %66 = fmul double %59, %65, !dbg !380
  call void @fMulHandler(double %59, double %65, double %66, i64 94430158912296, i64 94430158914720, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158915136, i32 155, i32 63), !dbg !381
  %67 = fadd double 0x3F32F684BDA12F68, %66, !dbg !381
  call void @fAddHandler(double 0x3F32F684BDA12F68, double %66, double %67, i64 0, i64 94430158915136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158915552, i32 155, i32 60), !dbg !382
  %68 = fmul double %58, %67, !dbg !382
  call void @fMulHandler(double %58, double %67, double %68, i64 94430158911912, i64 94430158915552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158915968, i32 155, i32 55), !dbg !383
  %69 = fadd double 0xBF7C71C71C71C71C, %68, !dbg !383
  call void @fAddHandler(double 0xBF7C71C71C71C71C, double %68, double %69, i64 0, i64 94430158915968, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158916384, i32 155, i32 52), !dbg !384
  %70 = fmul double %57, %69, !dbg !384
  call void @fMulHandler(double %57, double %69, double %70, i64 94430158911528, i64 94430158916384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158916800, i32 155, i32 47), !dbg !385
  %71 = fadd double 0x3FA5555555555555, %70, !dbg !385
  call void @fAddHandler(double 0x3FA5555555555555, double %70, double %71, i64 0, i64 94430158916800, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158917216, i32 155, i32 44), !dbg !386
  %72 = fmul double %56, %71, !dbg !386
  call void @fMulHandler(double %56, double %71, double %72, i64 94430158911144, i64 94430158917216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158917632, i32 155, i32 39), !dbg !387
  %73 = fadd double 0x3FC5555555555555, %72, !dbg !387
  call void @fAddHandler(double 0x3FC5555555555555, double %72, double %73, i64 0, i64 94430158917632, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158918048, i32 155, i32 36), !dbg !388
  %74 = fmul double %55, %73, !dbg !388
  call void @fMulHandler(double %55, double %73, double %74, i64 94430158910792, i64 94430158918048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158918464, i32 155, i32 31), !dbg !389
  %75 = fadd double 1.000000e+00, %74, !dbg !389
  call void @fAddHandler(double 1.000000e+00, double %74, double %75, i64 0, i64 94430158918464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158918912, i32 155, i32 28), !dbg !368
  store double %75, double* %14, align 8, !dbg !368
  %76 = load double, double* %4, align 8, !dbg !390
  %77 = load double, double* %4, align 8, !dbg !391
  %78 = fmul double %76, %77, !dbg !392
  call void @fMulHandler(double %76, double %77, double %78, i64 94430158920952, i64 94430158921336, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158921744, i32 156, i32 26), !dbg !393
  %79 = load double, double* %4, align 8, !dbg !393
  %80 = fmul double %78, %79, !dbg !394
  call void @fMulHandler(double %78, double %79, double %80, i64 94430158921744, i64 94430158922136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158922544, i32 156, i32 28), !dbg !395
  %81 = fdiv double -3.000000e+00, %80, !dbg !395
  call void @fDivHandler(double -3.000000e+00, double %80, double %81, i64 0, i64 94430158922544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158923056, i32 156, i32 23), !dbg !396
  %82 = load double, double* %14, align 8, !dbg !396
  %83 = fmul double %81, %82, !dbg !397
  call void @fMulHandler(double %81, double %82, double %83, i64 94430158923056, i64 94430158923416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158923824, i32 156, i32 32), !dbg !398
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !398
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !399
  store double %83, double* %85, align 8, !dbg !400
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !401
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !402
  %88 = load double, double* %87, align 8, !dbg !402
  %89 = call double @fabs(double %88) #1, !dbg !403
  %90 = fmul double 0x3CB0000000000000, %89, !dbg !404
  call void @fMulHandler(double 0x3CB0000000000000, double %89, double %90, i64 0, i64 94430158928032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158928512, i32 157, i32 35), !dbg !405
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !405
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !406
  store double %90, double* %92, align 8, !dbg !407
  store i32 0, i32* %3, align 4, !dbg !408
  br label %169, !dbg !408

; <label>:93:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !409, metadata !60), !dbg !411
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !412, metadata !60), !dbg !413
  call void @llvm.dbg.declare(metadata i32* %17, metadata !414, metadata !60), !dbg !415
  %94 = load double, double* %4, align 8, !dbg !416
  %95 = call i32 @gsl_sf_cos_e(double %94, %struct.gsl_sf_result_struct* %15), !dbg !417
  store i32 %95, i32* %17, align 4, !dbg !415
  call void @llvm.dbg.declare(metadata i32* %18, metadata !418, metadata !60), !dbg !419
  %96 = load double, double* %4, align 8, !dbg !420
  %97 = call i32 @gsl_sf_sin_e(double %96, %struct.gsl_sf_result_struct* %16), !dbg !421
  store i32 %97, i32* %18, align 4, !dbg !419
  call void @llvm.dbg.declare(metadata double* %19, metadata !422, metadata !60), !dbg !423
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !424
  %99 = load double, double* %98, align 8, !dbg !424
  store double %99, double* %19, align 8, !dbg !423
  call void @llvm.dbg.declare(metadata double* %20, metadata !425, metadata !60), !dbg !426
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !427
  %101 = load double, double* %100, align 8, !dbg !427
  store double %101, double* %20, align 8, !dbg !426
  call void @llvm.dbg.declare(metadata double* %21, metadata !428, metadata !60), !dbg !429
  %102 = load double, double* %4, align 8, !dbg !430
  %103 = load double, double* %4, align 8, !dbg !431
  %104 = fmul double %102, %103, !dbg !432
  call void @fMulHandler(double %102, double %103, double %104, i64 94430158952536, i64 94430158952888, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158953296, i32 167, i32 29), !dbg !433
  %105 = fdiv double 3.000000e+00, %104, !dbg !433
  call void @fDivHandler(double 3.000000e+00, double %104, double %105, i64 0, i64 94430158953296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158953808, i32 167, i32 26), !dbg !429
  store double %105, double* %21, align 8, !dbg !429
  %106 = load double, double* %21, align 8, !dbg !434
  %107 = fsub double 1.000000e+00, %106, !dbg !435
  call void @fSubHandler(double 1.000000e+00, double %106, double %107, i64 0, i64 94430158955848, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158956288, i32 168, i32 25), !dbg !436
  %108 = load double, double* %4, align 8, !dbg !436
  %109 = fdiv double %107, %108, !dbg !437
  call void @fDivHandler(double %107, double %108, double %109, i64 94430158956288, i64 94430158956648, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158957056, i32 168, i32 29), !dbg !438
  %110 = load double, double* %20, align 8, !dbg !438
  %111 = fmul double %109, %110, !dbg !439
  call void @fMulHandler(double %109, double %110, double %111, i64 94430158957056, i64 94430158957448, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158957856, i32 168, i32 32), !dbg !440
  %112 = load double, double* %21, align 8, !dbg !440
  %113 = load double, double* %19, align 8, !dbg !441
  %114 = fmul double %112, %113, !dbg !442
  call void @fMulHandler(double %112, double %113, double %114, i64 94430158958248, i64 94430158958632, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158959040, i32 168, i32 41), !dbg !443
  %115 = fsub double %111, %114, !dbg !443
  call void @fSubHandler(double %111, double %114, double %115, i64 94430158957856, i64 94430158959040, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158959456, i32 168, i32 37), !dbg !444
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !444
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !445
  store double %115, double* %117, align 8, !dbg !446
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !447
  %119 = load double, double* %118, align 8, !dbg !447
  %120 = load double, double* %21, align 8, !dbg !448
  %121 = fsub double 1.000000e+00, %120, !dbg !449
  call void @fSubHandler(double 1.000000e+00, double %120, double %121, i64 0, i64 94430158963192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158963632, i32 169, i32 47), !dbg !450
  %122 = load double, double* %4, align 8, !dbg !450
  %123 = fdiv double %121, %122, !dbg !451
  call void @fDivHandler(double %121, double %122, double %123, i64 94430158963632, i64 94430158963992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158964400, i32 169, i32 51), !dbg !452
  %124 = call double @fabs(double %123) #1, !dbg !452
  %125 = fmul double %119, %124, !dbg !453
  call void @fMulHandler(double %119, double %124, double %125, i64 94430158961544, i64 94430158964880, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158965360, i32 169, i32 35), !dbg !454
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !454
  %127 = load double, double* %126, align 8, !dbg !454
  %128 = load double, double* %21, align 8, !dbg !455
  %129 = call double @fabs(double %128) #1, !dbg !456
  %130 = fmul double %127, %129, !dbg !458
  call void @fMulHandler(double %127, double %129, double %130, i64 94430158966200, i64 94430158968320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158968800, i32 169, i32 72), !dbg !459
  %131 = fadd double %125, %130, !dbg !459
  call void @fAddHandler(double %125, double %130, double %131, i64 94430158965360, i64 94430158968800, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158969216, i32 169, i32 55), !dbg !460
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !460
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 1, !dbg !461
  store double %131, double* %133, align 8, !dbg !462
  %134 = load double, double* %20, align 8, !dbg !463
  %135 = load double, double* %4, align 8, !dbg !464
  %136 = fdiv double %134, %135, !dbg !465
  call void @fDivHandler(double %134, double %135, double %136, i64 94430158972920, i64 94430158973304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158973712, i32 170, i32 46), !dbg !466
  %137 = call double @fabs(double %136) #1, !dbg !466
  %138 = load double, double* %19, align 8, !dbg !467
  %139 = load double, double* %4, align 8, !dbg !468
  %140 = load double, double* %4, align 8, !dbg !469
  %141 = fmul double %139, %140, !dbg !470
  call void @fMulHandler(double %139, double %140, double %141, i64 94430158975032, i64 94430158975416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158975824, i32 170, i32 62), !dbg !471
  %142 = fdiv double %138, %141, !dbg !471
  call void @fDivHandler(double %138, double %141, double %142, i64 94430158974648, i64 94430158975824, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158976240, i32 170, i32 59), !dbg !472
  %143 = call double @fabs(double %142) #1, !dbg !472
  %144 = fadd double %137, %143, !dbg !473
  call void @fAddHandler(double %137, double %143, double %144, i64 94430158974192, i64 94430158976720, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158977200, i32 170, i32 50), !dbg !474
  %145 = fmul double 0x3CB0000000000000, %144, !dbg !474
  call void @fMulHandler(double 0x3CB0000000000000, double %144, double %145, i64 0, i64 94430158977200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158977616, i32 170, i32 36), !dbg !475
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !475
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 1, !dbg !476
  %148 = load double, double* %147, align 8, !dbg !477
  %149 = fadd double %148, %145, !dbg !477
  call void @fAddHandler(double %148, double %145, double %149, i64 94430158978840, i64 94430158977616, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158979248, i32 170, i32 17), !dbg !477
  store double %149, double* %147, align 8, !dbg !477
  %150 = load i32, i32* %17, align 4, !dbg !478
  %151 = icmp ne i32 %150, 0, !dbg !478
  %152 = sext i32 %150 to i64, !dbg !478
  %153 = call i1 @iCmpInstHandler(i64 %152, i64 0, i1 %151, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158981440, i32 171, i32 12), !dbg !478
  br i1 %153, label %154, label %156, !dbg !478

; <label>:154:                                    ; preds = %93
  %155 = load i32, i32* %17, align 4, !dbg !479
  br label %166, !dbg !479

; <label>:156:                                    ; preds = %93
  %157 = load i32, i32* %18, align 4, !dbg !480
  %158 = icmp ne i32 %157, 0, !dbg !480
  %159 = sext i32 %157 to i64, !dbg !480
  %160 = call i1 @iCmpInstHandler(i64 %159, i64 0, i1 %158, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94430158985984, i32 171, i32 12), !dbg !480
  br i1 %160, label %161, label %163, !dbg !480

; <label>:161:                                    ; preds = %156
  %162 = load i32, i32* %18, align 4, !dbg !482
  br label %164, !dbg !482

; <label>:163:                                    ; preds = %156
  br label %164, !dbg !484

; <label>:164:                                    ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ], !dbg !486
  br label %166, !dbg !486

; <label>:166:                                    ; preds = %164, %154
  %167 = phi i32 [ %155, %154 ], [ %165, %164 ], !dbg !488
  store i32 %167, i32* %3, align 4, !dbg !490
  br label %169, !dbg !490

; <label>:168:                                    ; preds = %46
  br label %169

; <label>:169:                                    ; preds = %168, %166, %51, %44, %33, %31
  %170 = load i32, i32* %3, align 4, !dbg !491
  ret i32 %170, !dbg !491
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_yl_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !492 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !495, metadata !60), !dbg !496
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !497, metadata !60), !dbg !498
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !499, metadata !60), !dbg !500
  %20 = load i32, i32* %5, align 4, !dbg !501
  %21 = icmp slt i32 %20, 0, !dbg !503
  %22 = sext i32 %20 to i64, !dbg !504
  %23 = call i1 @iCmpInstHandler(i64 %22, i64 0, i1 %21, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159001744, i32 180, i32 8), !dbg !504
  br i1 %23, label %28, label %24, !dbg !504

; <label>:24:                                     ; preds = %3
  %25 = load double, double* %6, align 8, !dbg !505
  %26 = fcmp ole double %25, 0.000000e+00, !dbg !507
  %27 = call i1 @fCmpInstHandler(double %25, double 0.000000e+00, i1 %26, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159003200, i32 180, i32 17), !dbg !508
  br i1 %27, label %28, label %37, !dbg !508

; <label>:28:                                     ; preds = %24, %3
  br label %29, !dbg !509, !llvm.loop !511

; <label>:29:                                     ; preds = %28
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !512
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !512
  store double 0x7FF8000000000000, double* %31, align 8, !dbg !512
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !512
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !512
  store double 0x7FF8000000000000, double* %33, align 8, !dbg !512
  br label %34, !dbg !512, !llvm.loop !515

; <label>:34:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 181, i32 1), !dbg !517
  store i32 1, i32* %4, align 4, !dbg !517
  br label %207, !dbg !517
                                                  ; No predecessors!
  br label %36, !dbg !520

; <label>:36:                                     ; preds = %35
  br label %207, !dbg !522

; <label>:37:                                     ; preds = %24
  %38 = load i32, i32* %5, align 4, !dbg !523
  %39 = icmp eq i32 %38, 0, !dbg !525
  %40 = sext i32 %38 to i64, !dbg !526
  %41 = call i1 @iCmpInstHandler(i64 %40, i64 0, i1 %39, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159011760, i32 183, i32 13), !dbg !526
  br i1 %41, label %42, label %46, !dbg !526

; <label>:42:                                     ; preds = %37
  %43 = load double, double* %6, align 8, !dbg !527
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !529
  %45 = call i32 @gsl_sf_bessel_y0_e(double %43, %struct.gsl_sf_result_struct* %44), !dbg !530
  store i32 %45, i32* %4, align 4, !dbg !531
  br label %207, !dbg !531

; <label>:46:                                     ; preds = %37
  %47 = load i32, i32* %5, align 4, !dbg !532
  %48 = icmp eq i32 %47, 1, !dbg !534
  %49 = sext i32 %47 to i64, !dbg !535
  %50 = call i1 @iCmpInstHandler(i64 %49, i64 1, i1 %48, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159016512, i32 186, i32 13), !dbg !535
  br i1 %50, label %51, label %55, !dbg !535

; <label>:51:                                     ; preds = %46
  %52 = load double, double* %6, align 8, !dbg !536
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !538
  %54 = call i32 @gsl_sf_bessel_y1_e(double %52, %struct.gsl_sf_result_struct* %53), !dbg !539
  store i32 %54, i32* %4, align 4, !dbg !540
  br label %207, !dbg !540

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %5, align 4, !dbg !541
  %57 = icmp eq i32 %56, 2, !dbg !543
  %58 = sext i32 %56 to i64, !dbg !544
  %59 = call i1 @iCmpInstHandler(i64 %58, i64 2, i1 %57, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159021328, i32 189, i32 13), !dbg !544
  br i1 %59, label %60, label %64, !dbg !544

; <label>:60:                                     ; preds = %55
  %61 = load double, double* %6, align 8, !dbg !545
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !547
  %63 = call i32 @gsl_sf_bessel_y2_e(double %61, %struct.gsl_sf_result_struct* %62), !dbg !548
  store i32 %63, i32* %4, align 4, !dbg !549
  br label %207, !dbg !549

; <label>:64:                                     ; preds = %55
  %65 = load double, double* %6, align 8, !dbg !550
  %66 = fcmp olt double %65, 3.000000e+00, !dbg !552
  %67 = call i1 @fCmpInstHandler(double %65, double 3.000000e+00, i1 %66, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159026112, i32 192, i32 13), !dbg !553
  br i1 %67, label %68, label %73, !dbg !553

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %5, align 4, !dbg !554
  %70 = load double, double* %6, align 8, !dbg !556
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !557
  %72 = call i32 @bessel_yl_small_x(i32 %69, double %70, %struct.gsl_sf_result_struct* %71), !dbg !558
  store i32 %72, i32* %4, align 4, !dbg !559
  br label %207, !dbg !559

; <label>:73:                                     ; preds = %64
  %74 = load double, double* %6, align 8, !dbg !560
  %75 = fmul double 0x3ED965FEA53D6E41, %74, !dbg !562
  call void @fMulHandler(double 0x3ED965FEA53D6E41, double %74, double %75, i64 0, i64 94430159031256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159031664, i32 195, i32 33), !dbg !563
  %76 = load i32, i32* %5, align 4, !dbg !563
  %77 = load i32, i32* %5, align 4, !dbg !564
  %78 = mul nsw i32 %76, %77, !dbg !565
  %79 = load i32, i32* %5, align 4, !dbg !566
  %80 = add nsw i32 %78, %79, !dbg !567
  %81 = sitofp i32 %80 to double, !dbg !563
  %82 = fadd double %81, 1.000000e+00, !dbg !568
  call void @fAddHandler(double %81, double 1.000000e+00, double %82, i64 94430159034040, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159035744, i32 195, i32 48), !dbg !569
  %83 = fcmp ogt double %75, %82, !dbg !569
  %84 = call i1 @fCmpInstHandler(double %75, double %82, i1 %83, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159036128, i32 195, i32 37), !dbg !570
  br i1 %84, label %85, label %106, !dbg !570

; <label>:85:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata i32* %8, metadata !571, metadata !60), !dbg !573
  %86 = load i32, i32* %5, align 4, !dbg !574
  %87 = sitofp i32 %86 to double, !dbg !574
  %88 = fadd double %87, 5.000000e-01, !dbg !575
  call void @fAddHandler(double %87, double 5.000000e-01, double %88, i64 94430159038696, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159040400, i32 196, i32 47), !dbg !576
  %89 = load double, double* %6, align 8, !dbg !576
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !577
  %91 = call i32 @gsl_sf_bessel_Ynu_asympx_e(double %88, double %89, %struct.gsl_sf_result_struct* %90), !dbg !578
  store i32 %91, i32* %8, align 4, !dbg !573
  call void @llvm.dbg.declare(metadata double* %9, metadata !579, metadata !60), !dbg !580
  %92 = load double, double* %6, align 8, !dbg !581
  %93 = fdiv double 0x3FF921FB54442D18, %92, !dbg !582
  call void @fDivHandler(double 0x3FF921FB54442D18, double %92, double %93, i64 0, i64 94430159045320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159045760, i32 197, i32 33), !dbg !583
  %94 = call double @sqrt(double %93) #5, !dbg !583
  call void @callOneArgHandler(i32 14, double %93, double %94, i64 94430159045760, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159046512, i32 197, i32 18), !dbg !580
  store double %94, double* %9, align 8, !dbg !580
  %95 = load double, double* %9, align 8, !dbg !584
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !585
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !586
  %98 = load double, double* %97, align 8, !dbg !587
  %99 = fmul double %98, %95, !dbg !587
  call void @fMulHandler(double %98, double %95, double %99, i64 94430159049896, i64 94430159048680, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159050304, i32 198, i32 17), !dbg !587
  store double %99, double* %97, align 8, !dbg !587
  %100 = load double, double* %9, align 8, !dbg !588
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !589
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !590
  %103 = load double, double* %102, align 8, !dbg !591
  %104 = fmul double %103, %100, !dbg !591
  call void @fMulHandler(double %103, double %100, double %104, i64 94430159053304, i64 94430159052088, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159053712, i32 199, i32 17), !dbg !591
  store double %104, double* %102, align 8, !dbg !591
  %105 = load i32, i32* %8, align 4, !dbg !592
  store i32 %105, i32* %4, align 4, !dbg !593
  br label %207, !dbg !593

; <label>:106:                                    ; preds = %73
  %107 = load i32, i32* %5, align 4, !dbg !594
  %108 = icmp sgt i32 %107, 40, !dbg !596
  %109 = sext i32 %107 to i64, !dbg !597
  %110 = call i1 @iCmpInstHandler(i64 %109, i64 40, i1 %108, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159058352, i32 202, i32 13), !dbg !597
  br i1 %110, label %111, label %132, !dbg !597

; <label>:111:                                    ; preds = %106
  call void @llvm.dbg.declare(metadata i32* %10, metadata !598, metadata !60), !dbg !600
  %112 = load i32, i32* %5, align 4, !dbg !601
  %113 = sitofp i32 %112 to double, !dbg !601
  %114 = fadd double %113, 5.000000e-01, !dbg !602
  call void @fAddHandler(double %113, double 5.000000e-01, double %114, i64 94430159060920, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159062624, i32 203, i32 52), !dbg !603
  %115 = load double, double* %6, align 8, !dbg !603
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !604
  %117 = call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double %114, double %115, %struct.gsl_sf_result_struct* %116), !dbg !605
  store i32 %117, i32* %10, align 4, !dbg !600
  call void @llvm.dbg.declare(metadata double* %11, metadata !606, metadata !60), !dbg !607
  %118 = load double, double* %6, align 8, !dbg !608
  %119 = fdiv double 0x3FF921FB54442D18, %118, !dbg !609
  call void @fDivHandler(double 0x3FF921FB54442D18, double %118, double %119, i64 0, i64 94430159067544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159067920, i32 204, i32 33), !dbg !610
  %120 = call double @sqrt(double %119) #5, !dbg !610
  call void @callOneArgHandler(i32 14, double %119, double %120, i64 94430159067920, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159068400, i32 204, i32 18), !dbg !607
  store double %120, double* %11, align 8, !dbg !607
  %121 = load double, double* %11, align 8, !dbg !611
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !612
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !613
  %124 = load double, double* %123, align 8, !dbg !614
  %125 = fmul double %124, %121, !dbg !614
  call void @fMulHandler(double %124, double %121, double %125, i64 94430159071752, i64 94430159070536, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159072160, i32 205, i32 17), !dbg !614
  store double %125, double* %123, align 8, !dbg !614
  %126 = load double, double* %11, align 8, !dbg !615
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !616
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !617
  %129 = load double, double* %128, align 8, !dbg !618
  %130 = fmul double %129, %126, !dbg !618
  call void @fMulHandler(double %129, double %126, double %130, i64 94430159075160, i64 94430159073944, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159075568, i32 206, i32 17), !dbg !618
  store double %130, double* %128, align 8, !dbg !618
  %131 = load i32, i32* %10, align 4, !dbg !619
  store i32 %131, i32* %4, align 4, !dbg !620
  br label %207, !dbg !620

; <label>:132:                                    ; preds = %106
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !621, metadata !60), !dbg !623
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !624, metadata !60), !dbg !625
  call void @llvm.dbg.declare(metadata i32* %14, metadata !626, metadata !60), !dbg !627
  %133 = load double, double* %6, align 8, !dbg !628
  %134 = call i32 @gsl_sf_bessel_y1_e(double %133, %struct.gsl_sf_result_struct* %12), !dbg !629
  store i32 %134, i32* %14, align 4, !dbg !627
  call void @llvm.dbg.declare(metadata i32* %15, metadata !630, metadata !60), !dbg !631
  %135 = load double, double* %6, align 8, !dbg !632
  %136 = call i32 @gsl_sf_bessel_y0_e(double %135, %struct.gsl_sf_result_struct* %13), !dbg !633
  store i32 %136, i32* %15, align 4, !dbg !631
  call void @llvm.dbg.declare(metadata double* %16, metadata !634, metadata !60), !dbg !635
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !636
  %138 = load double, double* %137, align 8, !dbg !636
  store double %138, double* %16, align 8, !dbg !635
  call void @llvm.dbg.declare(metadata double* %17, metadata !637, metadata !60), !dbg !638
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !639
  %140 = load double, double* %139, align 8, !dbg !639
  store double %140, double* %17, align 8, !dbg !638
  call void @llvm.dbg.declare(metadata double* %18, metadata !640, metadata !60), !dbg !641
  call void @llvm.dbg.declare(metadata i32* %19, metadata !642, metadata !60), !dbg !643
  store i32 1, i32* %19, align 4, !dbg !644
  br label %141, !dbg !646

; <label>:141:                                    ; preds = %161, %132
  %142 = load i32, i32* %19, align 4, !dbg !647
  %143 = load i32, i32* %5, align 4, !dbg !650
  %144 = icmp slt i32 %142, %143, !dbg !651
  %145 = sext i32 %142 to i64, !dbg !652
  %146 = sext i32 %143 to i64, !dbg !652
  %147 = call i1 @iCmpInstHandler(i64 %145, i64 %146, i1 %144, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159109040, i32 219, i32 15), !dbg !652
  br i1 %147, label %148, label %164, !dbg !652

; <label>:148:                                    ; preds = %141
  %149 = load i32, i32* %19, align 4, !dbg !653
  %150 = mul nsw i32 2, %149, !dbg !655
  %151 = add nsw i32 %150, 1, !dbg !656
  %152 = sitofp i32 %151 to double, !dbg !657
  %153 = load double, double* %6, align 8, !dbg !658
  %154 = fdiv double %152, %153, !dbg !659
  call void @fDivHandler(double %152, double %153, double %154, i64 94430159111304, i64 94430159111688, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159112096, i32 220, i32 20), !dbg !660
  %155 = load double, double* %17, align 8, !dbg !660
  %156 = fmul double %154, %155, !dbg !661
  call void @fMulHandler(double %154, double %155, double %156, i64 94430159112096, i64 94430159112488, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159112896, i32 220, i32 22), !dbg !662
  %157 = load double, double* %16, align 8, !dbg !662
  %158 = fsub double %156, %157, !dbg !663
  call void @fSubHandler(double %156, double %157, double %158, i64 94430159112896, i64 94430159113288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159113696, i32 220, i32 26), !dbg !664
  store double %158, double* %18, align 8, !dbg !664
  %159 = load double, double* %17, align 8, !dbg !665
  store double %159, double* %16, align 8, !dbg !666
  %160 = load double, double* %18, align 8, !dbg !667
  store double %160, double* %17, align 8, !dbg !668
  br label %161, !dbg !669

; <label>:161:                                    ; preds = %148
  %162 = load i32, i32* %19, align 4, !dbg !670
  %163 = add nsw i32 %162, 1, !dbg !670
  store i32 %163, i32* %19, align 4, !dbg !670
  br label %141, !dbg !672, !llvm.loop !673

; <label>:164:                                    ; preds = %141
  %165 = load double, double* %17, align 8, !dbg !675
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !676
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 0, !dbg !677
  store double %165, double* %167, align 8, !dbg !678
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !679
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 0, !dbg !680
  %170 = load double, double* %169, align 8, !dbg !680
  %171 = call double @fabs(double %170) #1, !dbg !681
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !682
  %173 = load double, double* %172, align 8, !dbg !682
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !683
  %175 = load double, double* %174, align 8, !dbg !683
  %176 = fdiv double %173, %175, !dbg !684
  call void @fDivHandler(double %173, double %175, double %176, i64 94430159124472, i64 94430159126568, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159128240, i32 225, i32 71), !dbg !685
  %177 = call double @fabs(double %176) #1, !dbg !685
  %178 = fadd double 0x3CB0000000000000, %177, !dbg !687
  call void @fAddHandler(double 0x3CB0000000000000, double %177, double %178, i64 0, i64 94430159128720, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159129200, i32 225, i32 56), !dbg !688
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !688
  %180 = load double, double* %179, align 8, !dbg !688
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !689
  %182 = load double, double* %181, align 8, !dbg !689
  %183 = fdiv double %180, %182, !dbg !690
  call void @fDivHandler(double %180, double %182, double %183, i64 94430159130040, i64 94430159132136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159133808, i32 225, i32 98), !dbg !691
  %184 = call double @fabs(double %183) #1, !dbg !691
  %185 = fadd double %178, %184, !dbg !693
  call void @fAddHandler(double %178, double %184, double %185, i64 94430159129200, i64 94430159134288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159134768, i32 225, i32 82), !dbg !694
  %186 = fmul double %171, %185, !dbg !694
  call void @fMulHandler(double %171, double %185, double %186, i64 94430159123568, i64 94430159134768, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159135184, i32 225, i32 37), !dbg !695
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !695
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !696
  store double %186, double* %188, align 8, !dbg !697
  %189 = load i32, i32* %14, align 4, !dbg !698
  %190 = icmp ne i32 %189, 0, !dbg !698
  %191 = sext i32 %189 to i64, !dbg !698
  %192 = call i1 @iCmpInstHandler(i64 %191, i64 0, i1 %190, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159137232, i32 227, i32 12), !dbg !698
  br i1 %192, label %193, label %195, !dbg !698

; <label>:193:                                    ; preds = %164
  %194 = load i32, i32* %14, align 4, !dbg !699
  br label %205, !dbg !699

; <label>:195:                                    ; preds = %164
  %196 = load i32, i32* %15, align 4, !dbg !700
  %197 = icmp ne i32 %196, 0, !dbg !700
  %198 = sext i32 %196 to i64, !dbg !700
  %199 = call i1 @iCmpInstHandler(i64 %198, i64 0, i1 %197, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94430159141776, i32 227, i32 12), !dbg !700
  br i1 %199, label %200, label %202, !dbg !700

; <label>:200:                                    ; preds = %195
  %201 = load i32, i32* %15, align 4, !dbg !701
  br label %203, !dbg !701

; <label>:202:                                    ; preds = %195
  br label %203, !dbg !703

; <label>:203:                                    ; preds = %202, %200
  %204 = phi i32 [ %201, %200 ], [ 0, %202 ], !dbg !705
  br label %205, !dbg !705

; <label>:205:                                    ; preds = %203, %193
  %206 = phi i32 [ %194, %193 ], [ %204, %203 ], !dbg !707
  store i32 %206, i32* %4, align 4, !dbg !709
  br label %207, !dbg !709

; <label>:207:                                    ; preds = %205, %111, %85, %68, %60, %51, %42, %36, %34
  %208 = load i32, i32* %4, align 4, !dbg !710
  ret i32 %208, !dbg !710
}

; Function Attrs: nounwind uwtable
define internal i32 @bessel_yl_small_x(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !711 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !712, metadata !60), !dbg !713
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !714, metadata !60), !dbg !715
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !716, metadata !60), !dbg !717
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !718, metadata !60), !dbg !719
  call void @llvm.dbg.declare(metadata double* %9, metadata !720, metadata !60), !dbg !721
  %18 = load double, double* %6, align 8, !dbg !722
  %19 = load i32, i32* %5, align 4, !dbg !723
  %20 = add nsw i32 %19, 1, !dbg !724
  %21 = call double @gsl_sf_pow_int(double %18, i32 %20), !dbg !725
  store double %21, double* %9, align 8, !dbg !721
  call void @llvm.dbg.declare(metadata i32* %10, metadata !726, metadata !60), !dbg !727
  %22 = load i32, i32* %5, align 4, !dbg !728
  %23 = mul nsw i32 2, %22, !dbg !729
  %24 = sub nsw i32 %23, 1, !dbg !730
  %25 = call i32 @gsl_sf_doublefact_e(i32 %24, %struct.gsl_sf_result_struct* %8), !dbg !731
  store i32 %25, i32* %10, align 4, !dbg !727
  %26 = load i32, i32* %10, align 4, !dbg !732
  %27 = icmp ne i32 %26, 0, !dbg !734
  %28 = sext i32 %26 to i64, !dbg !735
  %29 = call i1 @iCmpInstHandler(i64 %28, i64 0, i1 %27, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159167680, i32 48, i32 14), !dbg !735
  br i1 %29, label %34, label %30, !dbg !735

; <label>:30:                                     ; preds = %3
  %31 = load double, double* %9, align 8, !dbg !736
  %32 = fcmp oeq double %31, 0.000000e+00, !dbg !738
  %33 = call i1 @fCmpInstHandler(double %31, double 0.000000e+00, i1 %32, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159169136, i32 48, i32 36), !dbg !739
  br i1 %33, label %34, label %43, !dbg !739

; <label>:34:                                     ; preds = %30, %3
  br label %35, !dbg !740, !llvm.loop !742

; <label>:35:                                     ; preds = %34
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !743
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !743
  store double 0x7FF0000000000000, double* %37, align 8, !dbg !743
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !743
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !743
  store double 0x7FF0000000000000, double* %39, align 8, !dbg !743
  br label %40, !dbg !743, !llvm.loop !746

; <label>:40:                                     ; preds = %35
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 49, i32 16), !dbg !748
  store i32 16, i32* %4, align 4, !dbg !748
  br label %101, !dbg !748
                                                  ; No predecessors!
  br label %42, !dbg !751

; <label>:42:                                     ; preds = %41
  br label %101, !dbg !753

; <label>:43:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata i32* %11, metadata !754, metadata !60), !dbg !756
  store i32 200, i32* %11, align 4, !dbg !756
  call void @llvm.dbg.declare(metadata double* %12, metadata !757, metadata !60), !dbg !758
  %44 = load double, double* %6, align 8, !dbg !759
  %45 = fmul double -5.000000e-01, %44, !dbg !760
  call void @fMulHandler(double -5.000000e-01, double %44, double %45, i64 0, i64 94430159181288, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159181760, i32 53, i32 20), !dbg !761
  %46 = load double, double* %6, align 8, !dbg !761
  %47 = fmul double %45, %46, !dbg !762
  call void @fMulHandler(double %45, double %46, double %47, i64 94430159181760, i64 94430159182120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159182528, i32 53, i32 22), !dbg !758
  store double %47, double* %12, align 8, !dbg !758
  call void @llvm.dbg.declare(metadata double* %13, metadata !763, metadata !60), !dbg !764
  store double 1.000000e+00, double* %13, align 8, !dbg !764
  call void @llvm.dbg.declare(metadata double* %14, metadata !765, metadata !60), !dbg !766
  store double 1.000000e+00, double* %14, align 8, !dbg !766
  call void @llvm.dbg.declare(metadata double* %15, metadata !767, metadata !60), !dbg !768
  store double 1.000000e+00, double* %15, align 8, !dbg !768
  call void @llvm.dbg.declare(metadata double* %16, metadata !769, metadata !60), !dbg !770
  call void @llvm.dbg.declare(metadata i32* %17, metadata !771, metadata !60), !dbg !772
  store i32 1, i32* %17, align 4, !dbg !773
  br label %48, !dbg !775

; <label>:48:                                     ; preds = %81, %43
  %49 = load i32, i32* %17, align 4, !dbg !776
  %50 = icmp sle i32 %49, 200, !dbg !779
  %51 = sext i32 %49 to i64, !dbg !780
  %52 = call i1 @iCmpInstHandler(i64 %51, i64 200, i1 %50, i32 41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159196368, i32 59, i32 15), !dbg !780
  br i1 %52, label %53, label %84, !dbg !780

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %17, align 4, !dbg !781
  %55 = load i32, i32* %17, align 4, !dbg !783
  %56 = load i32, i32* %5, align 4, !dbg !784
  %57 = sub nsw i32 %55, %56, !dbg !785
  %58 = mul nsw i32 2, %57, !dbg !786
  %59 = sub nsw i32 %58, 1, !dbg !787
  %60 = mul nsw i32 %54, %59, !dbg !788
  %61 = sitofp i32 %60 to double, !dbg !781
  %62 = load double, double* %14, align 8, !dbg !789
  %63 = fdiv double %62, %61, !dbg !789
  call void @fDivHandler(double %62, double %61, double %63, i64 94430159201880, i64 94430159200232, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159202288, i32 60, i32 15), !dbg !789
  store double %63, double* %14, align 8, !dbg !789
  %64 = load double, double* %12, align 8, !dbg !790
  %65 = load double, double* %15, align 8, !dbg !791
  %66 = fmul double %65, %64, !dbg !791
  call void @fMulHandler(double %65, double %64, double %66, i64 94430159204456, i64 94430159204072, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159204864, i32 61, i32 15), !dbg !791
  store double %66, double* %15, align 8, !dbg !791
  %67 = load double, double* %15, align 8, !dbg !792
  %68 = load double, double* %14, align 8, !dbg !793
  %69 = fmul double %67, %68, !dbg !794
  call void @fMulHandler(double %67, double %68, double %69, i64 94430159206648, i64 94430159207032, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159207440, i32 62, i32 22), !dbg !795
  store double %69, double* %16, align 8, !dbg !795
  %70 = load double, double* %16, align 8, !dbg !796
  %71 = load double, double* %13, align 8, !dbg !797
  %72 = fadd double %71, %70, !dbg !797
  call void @fAddHandler(double %71, double %70, double %72, i64 94430159208632, i64 94430159208248, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159209040, i32 63, i32 11), !dbg !797
  store double %72, double* %13, align 8, !dbg !797
  %73 = load double, double* %16, align 8, !dbg !798
  %74 = load double, double* %13, align 8, !dbg !800
  %75 = fdiv double %73, %74, !dbg !801
  call void @fDivHandler(double %73, double %74, double %75, i64 94430159210824, i64 94430159211208, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159211616, i32 64, i32 20), !dbg !802
  %76 = call double @fabs(double %75) #1, !dbg !802
  %77 = fcmp olt double %76, 0x3CA0000000000000, !dbg !803
  %78 = call i1 @fCmpInstHandler(double %76, double 0x3CA0000000000000, i1 %77, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159212640, i32 64, i32 26), !dbg !804
  br i1 %78, label %79, label %80, !dbg !804

; <label>:79:                                     ; preds = %53
  br label %84, !dbg !805

; <label>:80:                                     ; preds = %53
  br label %81, !dbg !807

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %17, align 4, !dbg !808
  %83 = add nsw i32 %82, 1, !dbg !808
  store i32 %83, i32* %17, align 4, !dbg !808
  br label %48, !dbg !810, !llvm.loop !811

; <label>:84:                                     ; preds = %79, %48
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !813
  %86 = load double, double* %85, align 8, !dbg !813
  %87 = fsub double -0.000000e+00, %86, !dbg !814
  call void @fSubHandler(double -0.000000e+00, double %86, double %87, i64 0, i64 94430159217720, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159219392, i32 66, i32 19), !dbg !815
  %88 = load double, double* %9, align 8, !dbg !815
  %89 = fdiv double %87, %88, !dbg !816
  call void @fDivHandler(double %87, double %88, double %89, i64 94430159219392, i64 94430159219784, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159220192, i32 66, i32 32), !dbg !817
  %90 = load double, double* %13, align 8, !dbg !817
  %91 = fmul double %89, %90, !dbg !818
  call void @fMulHandler(double %89, double %90, double %91, i64 94430159220192, i64 94430159220584, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159220992, i32 66, i32 37), !dbg !819
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !819
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !820
  store double %91, double* %93, align 8, !dbg !821
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !822
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 0, !dbg !823
  %96 = load double, double* %95, align 8, !dbg !823
  %97 = call double @fabs(double %96) #1, !dbg !824
  %98 = fmul double 0x3CB0000000000000, %97, !dbg !825
  call void @fMulHandler(double 0x3CB0000000000000, double %97, double %98, i64 0, i64 94430159225200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94430159225680, i32 67, i32 35), !dbg !826
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !826
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !827
  store double %98, double* %100, align 8, !dbg !828
  store i32 0, i32* %4, align 4, !dbg !829
  br label %101, !dbg !829

; <label>:101:                                    ; preds = %84, %42, %40
  %102 = load i32, i32* %4, align 4, !dbg !830
  ret i32 %102, !dbg !830
}

declare i32 @gsl_sf_bessel_Ynu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_yl_array(i32, double, double*) #0 !dbg !831 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !835, metadata !60), !dbg !836
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !837, metadata !60), !dbg !838
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !839, metadata !60), !dbg !840
  %18 = load i32, i32* %5, align 4, !dbg !841
  %19 = icmp slt i32 %18, 0, !dbg !843
  %20 = sext i32 %18 to i64, !dbg !844
  %21 = call i1 @iCmpInstHandler(i64 %20, i64 0, i1 %19, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94430159238512, i32 236, i32 11), !dbg !844
  br i1 %21, label %26, label %22, !dbg !844

; <label>:22:                                     ; preds = %3
  %23 = load double, double* %6, align 8, !dbg !845
  %24 = fcmp ole double %23, 0.000000e+00, !dbg !847
  %25 = call i1 @fCmpInstHandler(double %23, double 0.000000e+00, i1 %24, i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94430159239872, i32 236, i32 20), !dbg !848
  br i1 %25, label %26, label %29, !dbg !848

; <label>:26:                                     ; preds = %22, %3
  br label %27, !dbg !849, !llvm.loop !851

; <label>:27:                                     ; preds = %26
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 237, i32 1), !dbg !852
  store i32 1, i32* %4, align 4, !dbg !852
  br label %105, !dbg !852
                                                  ; No predecessors!
  br label %105, !dbg !855

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %5, align 4, !dbg !856
  %31 = icmp eq i32 %30, 0, !dbg !859
  %32 = sext i32 %30 to i64, !dbg !856
  %33 = call i1 @iCmpInstHandler(i64 %32, i64 0, i1 %31, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94430159244928, i32 238, i32 19), !dbg !856
  br i1 %33, label %34, label %42, !dbg !856

; <label>:34:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !860, metadata !60), !dbg !862
  call void @llvm.dbg.declare(metadata i32* %9, metadata !863, metadata !60), !dbg !864
  %35 = load double, double* %6, align 8, !dbg !865
  %36 = call i32 @gsl_sf_bessel_y0_e(double %35, %struct.gsl_sf_result_struct* %8), !dbg !866
  store i32 %36, i32* %9, align 4, !dbg !864
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !867
  %38 = load double, double* %37, align 8, !dbg !867
  %39 = load double*, double** %7, align 8, !dbg !868
  %40 = getelementptr inbounds double, double* %39, i64 0, !dbg !868
  store double %38, double* %40, align 8, !dbg !869
  %41 = load i32, i32* %9, align 4, !dbg !870
  store i32 %41, i32* %4, align 4, !dbg !871
  br label %105, !dbg !871

; <label>:42:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !872, metadata !60), !dbg !874
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !875, metadata !60), !dbg !876
  call void @llvm.dbg.declare(metadata i32* %12, metadata !877, metadata !60), !dbg !878
  %43 = load double, double* %6, align 8, !dbg !879
  %44 = call i32 @gsl_sf_bessel_y1_e(double %43, %struct.gsl_sf_result_struct* %10), !dbg !880
  store i32 %44, i32* %12, align 4, !dbg !878
  call void @llvm.dbg.declare(metadata i32* %13, metadata !881, metadata !60), !dbg !882
  %45 = load double, double* %6, align 8, !dbg !883
  %46 = call i32 @gsl_sf_bessel_y0_e(double %45, %struct.gsl_sf_result_struct* %11), !dbg !884
  store i32 %46, i32* %13, align 4, !dbg !882
  call void @llvm.dbg.declare(metadata double* %14, metadata !885, metadata !60), !dbg !886
  call void @llvm.dbg.declare(metadata double* %15, metadata !887, metadata !60), !dbg !888
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !889
  %48 = load double, double* %47, align 8, !dbg !889
  store double %48, double* %15, align 8, !dbg !888
  call void @llvm.dbg.declare(metadata double* %16, metadata !890, metadata !60), !dbg !891
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !892
  %50 = load double, double* %49, align 8, !dbg !892
  store double %50, double* %16, align 8, !dbg !891
  call void @llvm.dbg.declare(metadata i32* %17, metadata !893, metadata !60), !dbg !894
  %51 = load double, double* %16, align 8, !dbg !895
  %52 = load double*, double** %7, align 8, !dbg !896
  %53 = getelementptr inbounds double, double* %52, i64 0, !dbg !896
  store double %51, double* %53, align 8, !dbg !897
  %54 = load double, double* %15, align 8, !dbg !898
  %55 = load double*, double** %7, align 8, !dbg !899
  %56 = getelementptr inbounds double, double* %55, i64 1, !dbg !899
  store double %54, double* %56, align 8, !dbg !900
  store i32 1, i32* %17, align 4, !dbg !901
  br label %57, !dbg !903

; <label>:57:                                     ; preds = %83, %42
  %58 = load i32, i32* %17, align 4, !dbg !904
  %59 = load i32, i32* %5, align 4, !dbg !907
  %60 = icmp slt i32 %58, %59, !dbg !908
  %61 = sext i32 %58 to i64, !dbg !909
  %62 = sext i32 %59 to i64, !dbg !909
  %63 = call i1 @iCmpInstHandler(i64 %61, i64 %62, i1 %60, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94430159287984, i32 256, i32 22), !dbg !909
  br i1 %63, label %64, label %86, !dbg !909

; <label>:64:                                     ; preds = %57
  %65 = load i32, i32* %17, align 4, !dbg !910
  %66 = mul nsw i32 2, %65, !dbg !912
  %67 = add nsw i32 %66, 1, !dbg !913
  %68 = sitofp i32 %67 to double, !dbg !914
  %69 = load double, double* %6, align 8, !dbg !915
  %70 = fdiv double %68, %69, !dbg !916
  call void @fDivHandler(double %68, double %69, double %70, i64 94430159290248, i64 94430159290632, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94430159291040, i32 257, i32 25), !dbg !917
  %71 = load double, double* %15, align 8, !dbg !917
  %72 = fmul double %70, %71, !dbg !918
  call void @fMulHandler(double %70, double %71, double %72, i64 94430159291040, i64 94430159291432, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94430159291840, i32 257, i32 28), !dbg !919
  %73 = load double, double* %16, align 8, !dbg !919
  %74 = fsub double %72, %73, !dbg !920
  call void @fSubHandler(double %72, double %73, double %74, i64 94430159291840, i64 94430159292232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94430159292640, i32 257, i32 35), !dbg !921
  store double %74, double* %14, align 8, !dbg !921
  %75 = load double, double* %14, align 8, !dbg !922
  %76 = load i32, i32* %17, align 4, !dbg !923
  %77 = add nsw i32 %76, 1, !dbg !924
  %78 = sext i32 %77 to i64, !dbg !925
  %79 = load double*, double** %7, align 8, !dbg !925
  %80 = getelementptr inbounds double, double* %79, i64 %78, !dbg !925
  store double %75, double* %80, align 8, !dbg !926
  %81 = load double, double* %15, align 8, !dbg !927
  store double %81, double* %16, align 8, !dbg !928
  %82 = load double, double* %14, align 8, !dbg !929
  store double %82, double* %15, align 8, !dbg !930
  br label %83, !dbg !931

; <label>:83:                                     ; preds = %64
  %84 = load i32, i32* %17, align 4, !dbg !932
  %85 = add nsw i32 %84, 1, !dbg !932
  store i32 %85, i32* %17, align 4, !dbg !932
  br label %57, !dbg !934, !llvm.loop !935

; <label>:86:                                     ; preds = %57
  %87 = load i32, i32* %13, align 4, !dbg !937
  %88 = icmp ne i32 %87, 0, !dbg !937
  %89 = sext i32 %87 to i64, !dbg !937
  %90 = call i1 @iCmpInstHandler(i64 %89, i64 0, i1 %88, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94430159302496, i32 263, i32 12), !dbg !937
  br i1 %90, label %91, label %93, !dbg !937

; <label>:91:                                     ; preds = %86
  %92 = load i32, i32* %13, align 4, !dbg !938
  br label %103, !dbg !938

; <label>:93:                                     ; preds = %86
  %94 = load i32, i32* %12, align 4, !dbg !940
  %95 = icmp ne i32 %94, 0, !dbg !940
  %96 = sext i32 %94 to i64, !dbg !940
  %97 = call i1 @iCmpInstHandler(i64 %96, i64 0, i1 %95, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94430159307040, i32 263, i32 12), !dbg !940
  br i1 %97, label %98, label %100, !dbg !940

; <label>:98:                                     ; preds = %93
  %99 = load i32, i32* %12, align 4, !dbg !942
  br label %101, !dbg !942

; <label>:100:                                    ; preds = %93
  br label %101, !dbg !944

; <label>:101:                                    ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ], !dbg !946
  br label %103, !dbg !946

; <label>:103:                                    ; preds = %101, %91
  %104 = phi i32 [ %92, %91 ], [ %102, %101 ], !dbg !948
  store i32 %104, i32* %4, align 4, !dbg !950
  br label %105, !dbg !950

; <label>:105:                                    ; preds = %103, %34, %28, %27
  %106 = load i32, i32* %4, align 4, !dbg !951
  ret i32 %106, !dbg !951
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_y0(double) #0 !dbg !952 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !955, metadata !60), !dbg !956
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !957, metadata !60), !dbg !958
  call void @llvm.dbg.declare(metadata i32* %5, metadata !959, metadata !60), !dbg !958
  %6 = load double, double* %3, align 8, !dbg !958
  %7 = call i32 @gsl_sf_bessel_y0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !958
  store i32 %7, i32* %5, align 4, !dbg !958
  %8 = load i32, i32* %5, align 4, !dbg !960
  %9 = icmp ne i32 %8, 0, !dbg !960
  %10 = sext i32 %8 to i64, !dbg !958
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94430159325888, i32 274, i32 3), !dbg !958
  br i1 %11, label %12, label %18, !dbg !958

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !962, !llvm.loop !965

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !967
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 274, i32 %14), !dbg !967
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !967
  %16 = load double, double* %15, align 8, !dbg !967
  store double %16, double* %2, align 8, !dbg !967
  br label %21, !dbg !967
                                                  ; No predecessors!
  br label %18, !dbg !970

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !972
  %20 = load double, double* %19, align 8, !dbg !972
  store double %20, double* %2, align 8, !dbg !972
  br label %21, !dbg !972

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !974
  ret double %22, !dbg !974
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_y1(double) #0 !dbg !975 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !976, metadata !60), !dbg !977
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !978, metadata !60), !dbg !979
  call void @llvm.dbg.declare(metadata i32* %5, metadata !980, metadata !60), !dbg !979
  %6 = load double, double* %3, align 8, !dbg !979
  %7 = call i32 @gsl_sf_bessel_y1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !979
  store i32 %7, i32* %5, align 4, !dbg !979
  %8 = load i32, i32* %5, align 4, !dbg !981
  %9 = icmp ne i32 %8, 0, !dbg !981
  %10 = sext i32 %8 to i64, !dbg !979
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @15, i32 0, i32 0), i64 94430159343184, i32 279, i32 3), !dbg !979
  br i1 %11, label %12, label %18, !dbg !979

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !983, !llvm.loop !986

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !988
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 279, i32 %14), !dbg !988
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !988
  %16 = load double, double* %15, align 8, !dbg !988
  store double %16, double* %2, align 8, !dbg !988
  br label %21, !dbg !988
                                                  ; No predecessors!
  br label %18, !dbg !991

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !993
  %20 = load double, double* %19, align 8, !dbg !993
  store double %20, double* %2, align 8, !dbg !993
  br label %21, !dbg !993

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !995
  ret double %22, !dbg !995
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_y2(double) #0 !dbg !996 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !997, metadata !60), !dbg !998
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !999, metadata !60), !dbg !1000
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1001, metadata !60), !dbg !1000
  %6 = load double, double* %3, align 8, !dbg !1000
  %7 = call i32 @gsl_sf_bessel_y2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1000
  store i32 %7, i32* %5, align 4, !dbg !1000
  %8 = load i32, i32* %5, align 4, !dbg !1002
  %9 = icmp ne i32 %8, 0, !dbg !1002
  %10 = sext i32 %8 to i64, !dbg !1000
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @17, i32 0, i32 0), i64 94430159360480, i32 284, i32 3), !dbg !1000
  br i1 %11, label %12, label %18, !dbg !1000

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1004, !llvm.loop !1007

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1009
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 284, i32 %14), !dbg !1009
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1009
  %16 = load double, double* %15, align 8, !dbg !1009
  store double %16, double* %2, align 8, !dbg !1009
  br label %21, !dbg !1009
                                                  ; No predecessors!
  br label %18, !dbg !1012

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1014
  %20 = load double, double* %19, align 8, !dbg !1014
  store double %20, double* %2, align 8, !dbg !1014
  br label %21, !dbg !1014

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1016
  ret double %22, !dbg !1016
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_yl(i32, double) #0 !dbg !1017 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1020, metadata !60), !dbg !1021
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1022, metadata !60), !dbg !1023
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1024, metadata !60), !dbg !1025
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1026, metadata !60), !dbg !1025
  %8 = load i32, i32* %4, align 4, !dbg !1025
  %9 = load double, double* %5, align 8, !dbg !1025
  %10 = call i32 @gsl_sf_bessel_yl_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1025
  store i32 %10, i32* %7, align 4, !dbg !1025
  %11 = load i32, i32* %7, align 4, !dbg !1027
  %12 = icmp ne i32 %11, 0, !dbg !1027
  %13 = sext i32 %11 to i64, !dbg !1025
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94430159379216, i32 289, i32 3), !dbg !1025
  br i1 %14, label %15, label %21, !dbg !1025

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1029, !llvm.loop !1032

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1034
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 289, i32 %17), !dbg !1034
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1034
  %19 = load double, double* %18, align 8, !dbg !1034
  store double %19, double* %3, align 8, !dbg !1034
  br label %24, !dbg !1034
                                                  ; No predecessors!
  br label %21, !dbg !1037

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1039
  %23 = load double, double* %22, align 8, !dbg !1039
  store double %23, double* %3, align 8, !dbg !1039
  br label %24, !dbg !1039

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1041
  ret double %25, !dbg !1041
}

declare double @gsl_sf_pow_int(double, i32) #2

declare i32 @gsl_sf_doublefact_e(i32, %struct.gsl_sf_result_struct*) #2

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
!1 = !DIFile(filename: "bessel_y.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_bessel_y0_e", scope: !1, file: !1, line: 77, type: !46, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !51}
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
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 77, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 77, column: 37, scope: !45)
!62 = !DILocalVariable(name: "result", arg: 2, scope: !45, file: !1, line: 77, type: !51)
!63 = !DILocation(line: 77, column: 56, scope: !45)
!64 = !DILocation(line: 81, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !45, file: !1, line: 81, column: 6)
!66 = !DILocation(line: 81, column: 8, scope: !65)
!67 = !DILocation(line: 81, column: 6, scope: !45)
!68 = !DILocation(line: 82, column: 5, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 81, column: 16)
!70 = distinct !{!70, !68}
!71 = !DILocation(line: 82, column: 5, scope: !72)
!72 = !DILexicalBlockFile(scope: !73, file: !1, discriminator: 1)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 82, column: 5)
!74 = distinct !{!74, !75}
!75 = !DILocation(line: 82, column: 5, scope: !73)
!76 = !DILocation(line: 82, column: 5, scope: !77)
!77 = !DILexicalBlockFile(scope: !78, file: !1, discriminator: 2)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 82, column: 5)
!79 = !DILocation(line: 82, column: 5, scope: !80)
!80 = !DILexicalBlockFile(scope: !73, file: !1, discriminator: 3)
!81 = !DILocation(line: 83, column: 3, scope: !69)
!82 = !DILocation(line: 84, column: 36, scope: !83)
!83 = distinct !DILexicalBlock(scope: !65, file: !1, line: 84, column: 11)
!84 = !DILocation(line: 84, column: 38, scope: !83)
!85 = !DILocation(line: 84, column: 11, scope: !65)
!86 = !DILocation(line: 85, column: 5, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 84, column: 57)
!88 = distinct !{!88, !86}
!89 = !DILocation(line: 85, column: 5, scope: !90)
!90 = !DILexicalBlockFile(scope: !91, file: !1, discriminator: 1)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 85, column: 5)
!92 = distinct !{!92, !93}
!93 = !DILocation(line: 85, column: 5, scope: !91)
!94 = !DILocation(line: 85, column: 5, scope: !95)
!95 = !DILexicalBlockFile(scope: !96, file: !1, discriminator: 2)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 85, column: 5)
!97 = !DILocation(line: 85, column: 5, scope: !98)
!98 = !DILexicalBlockFile(scope: !91, file: !1, discriminator: 3)
!99 = !DILocation(line: 86, column: 3, scope: !87)
!100 = !DILocalVariable(name: "cos_result", scope: !101, file: !1, line: 88, type: !52)
!101 = distinct !DILexicalBlock(scope: !83, file: !1, line: 87, column: 8)
!102 = !DILocation(line: 88, column: 19, scope: !101)
!103 = !DILocalVariable(name: "stat", scope: !101, file: !1, line: 89, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!105 = !DILocation(line: 89, column: 15, scope: !101)
!106 = !DILocation(line: 89, column: 35, scope: !101)
!107 = !DILocation(line: 89, column: 22, scope: !101)
!108 = !DILocation(line: 90, column: 32, scope: !101)
!109 = !DILocation(line: 90, column: 20, scope: !101)
!110 = !DILocation(line: 90, column: 36, scope: !101)
!111 = !DILocation(line: 90, column: 35, scope: !101)
!112 = !DILocation(line: 90, column: 5, scope: !101)
!113 = !DILocation(line: 90, column: 13, scope: !101)
!114 = !DILocation(line: 90, column: 18, scope: !101)
!115 = !DILocation(line: 91, column: 36, scope: !101)
!116 = !DILocation(line: 91, column: 40, scope: !101)
!117 = !DILocation(line: 91, column: 39, scope: !101)
!118 = !DILocation(line: 91, column: 20, scope: !101)
!119 = !DILocation(line: 91, column: 5, scope: !101)
!120 = !DILocation(line: 91, column: 13, scope: !101)
!121 = !DILocation(line: 91, column: 18, scope: !101)
!122 = !DILocation(line: 92, column: 49, scope: !101)
!123 = !DILocation(line: 92, column: 57, scope: !101)
!124 = !DILocation(line: 92, column: 44, scope: !101)
!125 = !DILocation(line: 92, column: 42, scope: !101)
!126 = !DILocation(line: 92, column: 5, scope: !101)
!127 = !DILocation(line: 92, column: 13, scope: !101)
!128 = !DILocation(line: 92, column: 17, scope: !101)
!129 = !DILocation(line: 93, column: 12, scope: !101)
!130 = !DILocation(line: 93, column: 5, scope: !101)
!131 = !DILocation(line: 95, column: 1, scope: !45)
!132 = distinct !DISubprogram(name: "gsl_sf_bessel_y1_e", scope: !1, file: !1, line: 98, type: !46, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!133 = !DILocalVariable(name: "x", arg: 1, scope: !132, file: !1, line: 98, type: !49)
!134 = !DILocation(line: 98, column: 37, scope: !132)
!135 = !DILocalVariable(name: "result", arg: 2, scope: !132, file: !1, line: 98, type: !51)
!136 = !DILocation(line: 98, column: 56, scope: !132)
!137 = !DILocation(line: 102, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !1, line: 102, column: 6)
!139 = !DILocation(line: 102, column: 8, scope: !138)
!140 = !DILocation(line: 102, column: 6, scope: !132)
!141 = !DILocation(line: 103, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 102, column: 16)
!143 = distinct !{!143, !141}
!144 = !DILocation(line: 103, column: 5, scope: !145)
!145 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 1)
!146 = distinct !DILexicalBlock(scope: !142, file: !1, line: 103, column: 5)
!147 = distinct !{!147, !148}
!148 = !DILocation(line: 103, column: 5, scope: !146)
!149 = !DILocation(line: 103, column: 5, scope: !150)
!150 = !DILexicalBlockFile(scope: !151, file: !1, discriminator: 2)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 103, column: 5)
!152 = !DILocation(line: 103, column: 5, scope: !153)
!153 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 3)
!154 = !DILocation(line: 104, column: 3, scope: !142)
!155 = !DILocation(line: 105, column: 11, scope: !156)
!156 = distinct !DILexicalBlock(scope: !138, file: !1, line: 105, column: 11)
!157 = !DILocation(line: 105, column: 13, scope: !156)
!158 = !DILocation(line: 105, column: 11, scope: !138)
!159 = !DILocation(line: 106, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 105, column: 37)
!161 = distinct !{!161, !159}
!162 = !DILocation(line: 106, column: 5, scope: !163)
!163 = !DILexicalBlockFile(scope: !164, file: !1, discriminator: 1)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 106, column: 5)
!165 = distinct !{!165, !166}
!166 = !DILocation(line: 106, column: 5, scope: !164)
!167 = !DILocation(line: 106, column: 5, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !1, discriminator: 2)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 106, column: 5)
!170 = !DILocation(line: 106, column: 5, scope: !171)
!171 = !DILexicalBlockFile(scope: !164, file: !1, discriminator: 3)
!172 = !DILocation(line: 107, column: 3, scope: !160)
!173 = !DILocation(line: 108, column: 11, scope: !174)
!174 = distinct !DILexicalBlock(scope: !156, file: !1, line: 108, column: 11)
!175 = !DILocation(line: 108, column: 13, scope: !174)
!176 = !DILocation(line: 108, column: 11, scope: !156)
!177 = !DILocalVariable(name: "y", scope: !178, file: !1, line: 109, type: !49)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 108, column: 21)
!179 = !DILocation(line: 109, column: 18, scope: !178)
!180 = !DILocation(line: 109, column: 22, scope: !178)
!181 = !DILocation(line: 109, column: 24, scope: !178)
!182 = !DILocation(line: 109, column: 23, scope: !178)
!183 = !DILocalVariable(name: "c1", scope: !178, file: !1, line: 110, type: !49)
!184 = !DILocation(line: 110, column: 18, scope: !178)
!185 = !DILocalVariable(name: "c2", scope: !178, file: !1, line: 111, type: !49)
!186 = !DILocation(line: 111, column: 18, scope: !178)
!187 = !DILocalVariable(name: "c3", scope: !178, file: !1, line: 112, type: !49)
!188 = !DILocation(line: 112, column: 18, scope: !178)
!189 = !DILocalVariable(name: "c4", scope: !178, file: !1, line: 113, type: !49)
!190 = !DILocation(line: 113, column: 18, scope: !178)
!191 = !DILocalVariable(name: "c5", scope: !178, file: !1, line: 114, type: !49)
!192 = !DILocation(line: 114, column: 18, scope: !178)
!193 = !DILocalVariable(name: "c6", scope: !178, file: !1, line: 115, type: !49)
!194 = !DILocation(line: 115, column: 18, scope: !178)
!195 = !DILocalVariable(name: "sum", scope: !178, file: !1, line: 116, type: !49)
!196 = !DILocation(line: 116, column: 18, scope: !178)
!197 = !DILocation(line: 116, column: 30, scope: !178)
!198 = !DILocation(line: 116, column: 38, scope: !178)
!199 = !DILocation(line: 116, column: 46, scope: !178)
!200 = !DILocation(line: 116, column: 54, scope: !178)
!201 = !DILocation(line: 116, column: 62, scope: !178)
!202 = !DILocation(line: 116, column: 70, scope: !178)
!203 = !DILocation(line: 116, column: 71, scope: !178)
!204 = !DILocation(line: 116, column: 68, scope: !178)
!205 = !DILocation(line: 116, column: 63, scope: !178)
!206 = !DILocation(line: 116, column: 60, scope: !178)
!207 = !DILocation(line: 116, column: 55, scope: !178)
!208 = !DILocation(line: 116, column: 52, scope: !178)
!209 = !DILocation(line: 116, column: 47, scope: !178)
!210 = !DILocation(line: 116, column: 44, scope: !178)
!211 = !DILocation(line: 116, column: 39, scope: !178)
!212 = !DILocation(line: 116, column: 36, scope: !178)
!213 = !DILocation(line: 116, column: 31, scope: !178)
!214 = !DILocation(line: 116, column: 28, scope: !178)
!215 = !DILocation(line: 117, column: 20, scope: !178)
!216 = !DILocation(line: 117, column: 19, scope: !178)
!217 = !DILocation(line: 117, column: 24, scope: !178)
!218 = !DILocation(line: 117, column: 23, scope: !178)
!219 = !DILocation(line: 117, column: 5, scope: !178)
!220 = !DILocation(line: 117, column: 13, scope: !178)
!221 = !DILocation(line: 117, column: 17, scope: !178)
!222 = !DILocation(line: 118, column: 42, scope: !178)
!223 = !DILocation(line: 118, column: 50, scope: !178)
!224 = !DILocation(line: 118, column: 37, scope: !178)
!225 = !DILocation(line: 118, column: 35, scope: !178)
!226 = !DILocation(line: 118, column: 5, scope: !178)
!227 = !DILocation(line: 118, column: 13, scope: !178)
!228 = !DILocation(line: 118, column: 17, scope: !178)
!229 = !DILocation(line: 119, column: 5, scope: !178)
!230 = !DILocalVariable(name: "cos_result", scope: !231, file: !1, line: 122, type: !52)
!231 = distinct !DILexicalBlock(scope: !174, file: !1, line: 121, column: 8)
!232 = !DILocation(line: 122, column: 19, scope: !231)
!233 = !DILocalVariable(name: "sin_result", scope: !231, file: !1, line: 123, type: !52)
!234 = !DILocation(line: 123, column: 19, scope: !231)
!235 = !DILocalVariable(name: "stat_cos", scope: !231, file: !1, line: 124, type: !104)
!236 = !DILocation(line: 124, column: 15, scope: !231)
!237 = !DILocation(line: 124, column: 39, scope: !231)
!238 = !DILocation(line: 124, column: 26, scope: !231)
!239 = !DILocalVariable(name: "stat_sin", scope: !231, file: !1, line: 125, type: !104)
!240 = !DILocation(line: 125, column: 15, scope: !231)
!241 = !DILocation(line: 125, column: 39, scope: !231)
!242 = !DILocation(line: 125, column: 26, scope: !231)
!243 = !DILocalVariable(name: "cx", scope: !231, file: !1, line: 126, type: !49)
!244 = !DILocation(line: 126, column: 18, scope: !231)
!245 = !DILocation(line: 126, column: 34, scope: !231)
!246 = !DILocalVariable(name: "sx", scope: !231, file: !1, line: 127, type: !49)
!247 = !DILocation(line: 127, column: 18, scope: !231)
!248 = !DILocation(line: 127, column: 34, scope: !231)
!249 = !DILocation(line: 128, column: 22, scope: !231)
!250 = !DILocation(line: 128, column: 25, scope: !231)
!251 = !DILocation(line: 128, column: 24, scope: !231)
!252 = !DILocation(line: 128, column: 29, scope: !231)
!253 = !DILocation(line: 128, column: 27, scope: !231)
!254 = !DILocation(line: 128, column: 20, scope: !231)
!255 = !DILocation(line: 128, column: 33, scope: !231)
!256 = !DILocation(line: 128, column: 32, scope: !231)
!257 = !DILocation(line: 128, column: 5, scope: !231)
!258 = !DILocation(line: 128, column: 13, scope: !231)
!259 = !DILocation(line: 128, column: 18, scope: !231)
!260 = !DILocation(line: 129, column: 37, scope: !231)
!261 = !DILocation(line: 129, column: 41, scope: !231)
!262 = !DILocation(line: 129, column: 40, scope: !231)
!263 = !DILocation(line: 129, column: 21, scope: !231)
!264 = !DILocation(line: 129, column: 57, scope: !231)
!265 = !DILocation(line: 129, column: 44, scope: !231)
!266 = !DILocation(line: 129, column: 67, scope: !231)
!267 = !DILocation(line: 129, column: 62, scope: !268)
!268 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 1)
!269 = !DILocation(line: 129, column: 61, scope: !231)
!270 = !DILocation(line: 129, column: 5, scope: !231)
!271 = !DILocation(line: 129, column: 13, scope: !231)
!272 = !DILocation(line: 129, column: 18, scope: !231)
!273 = !DILocation(line: 130, column: 44, scope: !231)
!274 = !DILocation(line: 130, column: 47, scope: !231)
!275 = !DILocation(line: 130, column: 46, scope: !231)
!276 = !DILocation(line: 130, column: 39, scope: !231)
!277 = !DILocation(line: 130, column: 57, scope: !231)
!278 = !DILocation(line: 130, column: 61, scope: !231)
!279 = !DILocation(line: 130, column: 63, scope: !231)
!280 = !DILocation(line: 130, column: 62, scope: !231)
!281 = !DILocation(line: 130, column: 59, scope: !231)
!282 = !DILocation(line: 130, column: 52, scope: !268)
!283 = !DILocation(line: 130, column: 50, scope: !231)
!284 = !DILocation(line: 130, column: 36, scope: !231)
!285 = !DILocation(line: 130, column: 5, scope: !231)
!286 = !DILocation(line: 130, column: 13, scope: !231)
!287 = !DILocation(line: 130, column: 17, scope: !231)
!288 = !DILocation(line: 131, column: 12, scope: !231)
!289 = !DILocation(line: 131, column: 12, scope: !268)
!290 = !DILocation(line: 131, column: 12, scope: !291)
!291 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 2)
!292 = !DILocation(line: 131, column: 12, scope: !293)
!293 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 3)
!294 = !DILocation(line: 131, column: 12, scope: !295)
!295 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 4)
!296 = !DILocation(line: 131, column: 12, scope: !297)
!297 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 5)
!298 = !DILocation(line: 131, column: 12, scope: !299)
!299 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 6)
!300 = !DILocation(line: 131, column: 5, scope: !299)
!301 = !DILocation(line: 133, column: 1, scope: !132)
!302 = distinct !DISubprogram(name: "gsl_sf_bessel_y2_e", scope: !1, file: !1, line: 136, type: !46, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!303 = !DILocalVariable(name: "x", arg: 1, scope: !302, file: !1, line: 136, type: !49)
!304 = !DILocation(line: 136, column: 37, scope: !302)
!305 = !DILocalVariable(name: "result", arg: 2, scope: !302, file: !1, line: 136, type: !51)
!306 = !DILocation(line: 136, column: 56, scope: !302)
!307 = !DILocation(line: 140, column: 6, scope: !308)
!308 = distinct !DILexicalBlock(scope: !302, file: !1, line: 140, column: 6)
!309 = !DILocation(line: 140, column: 8, scope: !308)
!310 = !DILocation(line: 140, column: 6, scope: !302)
!311 = !DILocation(line: 141, column: 5, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !1, line: 140, column: 16)
!313 = distinct !{!313, !311}
!314 = !DILocation(line: 141, column: 5, scope: !315)
!315 = !DILexicalBlockFile(scope: !316, file: !1, discriminator: 1)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 141, column: 5)
!317 = distinct !{!317, !318}
!318 = !DILocation(line: 141, column: 5, scope: !316)
!319 = !DILocation(line: 141, column: 5, scope: !320)
!320 = !DILexicalBlockFile(scope: !321, file: !1, discriminator: 2)
!321 = distinct !DILexicalBlock(scope: !316, file: !1, line: 141, column: 5)
!322 = !DILocation(line: 141, column: 5, scope: !323)
!323 = !DILexicalBlockFile(scope: !316, file: !1, discriminator: 3)
!324 = !DILocation(line: 142, column: 3, scope: !312)
!325 = !DILocation(line: 143, column: 11, scope: !326)
!326 = distinct !DILexicalBlock(scope: !308, file: !1, line: 143, column: 11)
!327 = !DILocation(line: 143, column: 13, scope: !326)
!328 = !DILocation(line: 143, column: 11, scope: !308)
!329 = !DILocation(line: 144, column: 5, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !1, line: 143, column: 38)
!331 = distinct !{!331, !329}
!332 = !DILocation(line: 144, column: 5, scope: !333)
!333 = !DILexicalBlockFile(scope: !334, file: !1, discriminator: 1)
!334 = distinct !DILexicalBlock(scope: !330, file: !1, line: 144, column: 5)
!335 = distinct !{!335, !336}
!336 = !DILocation(line: 144, column: 5, scope: !334)
!337 = !DILocation(line: 144, column: 5, scope: !338)
!338 = !DILexicalBlockFile(scope: !339, file: !1, discriminator: 2)
!339 = distinct !DILexicalBlock(scope: !334, file: !1, line: 144, column: 5)
!340 = !DILocation(line: 144, column: 5, scope: !341)
!341 = !DILexicalBlockFile(scope: !334, file: !1, discriminator: 3)
!342 = !DILocation(line: 145, column: 3, scope: !330)
!343 = !DILocation(line: 146, column: 11, scope: !344)
!344 = distinct !DILexicalBlock(scope: !326, file: !1, line: 146, column: 11)
!345 = !DILocation(line: 146, column: 13, scope: !344)
!346 = !DILocation(line: 146, column: 11, scope: !326)
!347 = !DILocalVariable(name: "y", scope: !348, file: !1, line: 147, type: !49)
!348 = distinct !DILexicalBlock(scope: !344, file: !1, line: 146, column: 20)
!349 = !DILocation(line: 147, column: 18, scope: !348)
!350 = !DILocation(line: 147, column: 22, scope: !348)
!351 = !DILocation(line: 147, column: 24, scope: !348)
!352 = !DILocation(line: 147, column: 23, scope: !348)
!353 = !DILocalVariable(name: "c1", scope: !348, file: !1, line: 148, type: !49)
!354 = !DILocation(line: 148, column: 18, scope: !348)
!355 = !DILocalVariable(name: "c2", scope: !348, file: !1, line: 149, type: !49)
!356 = !DILocation(line: 149, column: 18, scope: !348)
!357 = !DILocalVariable(name: "c3", scope: !348, file: !1, line: 150, type: !49)
!358 = !DILocation(line: 150, column: 18, scope: !348)
!359 = !DILocalVariable(name: "c4", scope: !348, file: !1, line: 151, type: !49)
!360 = !DILocation(line: 151, column: 18, scope: !348)
!361 = !DILocalVariable(name: "c5", scope: !348, file: !1, line: 152, type: !49)
!362 = !DILocation(line: 152, column: 18, scope: !348)
!363 = !DILocalVariable(name: "c6", scope: !348, file: !1, line: 153, type: !49)
!364 = !DILocation(line: 153, column: 18, scope: !348)
!365 = !DILocalVariable(name: "c7", scope: !348, file: !1, line: 154, type: !49)
!366 = !DILocation(line: 154, column: 18, scope: !348)
!367 = !DILocalVariable(name: "sum", scope: !348, file: !1, line: 155, type: !49)
!368 = !DILocation(line: 155, column: 18, scope: !348)
!369 = !DILocation(line: 155, column: 30, scope: !348)
!370 = !DILocation(line: 155, column: 38, scope: !348)
!371 = !DILocation(line: 155, column: 46, scope: !348)
!372 = !DILocation(line: 155, column: 54, scope: !348)
!373 = !DILocation(line: 155, column: 62, scope: !348)
!374 = !DILocation(line: 155, column: 70, scope: !348)
!375 = !DILocation(line: 155, column: 78, scope: !348)
!376 = !DILocation(line: 155, column: 79, scope: !348)
!377 = !DILocation(line: 155, column: 76, scope: !348)
!378 = !DILocation(line: 155, column: 71, scope: !348)
!379 = !DILocation(line: 155, column: 68, scope: !348)
!380 = !DILocation(line: 155, column: 63, scope: !348)
!381 = !DILocation(line: 155, column: 60, scope: !348)
!382 = !DILocation(line: 155, column: 55, scope: !348)
!383 = !DILocation(line: 155, column: 52, scope: !348)
!384 = !DILocation(line: 155, column: 47, scope: !348)
!385 = !DILocation(line: 155, column: 44, scope: !348)
!386 = !DILocation(line: 155, column: 39, scope: !348)
!387 = !DILocation(line: 155, column: 36, scope: !348)
!388 = !DILocation(line: 155, column: 31, scope: !348)
!389 = !DILocation(line: 155, column: 28, scope: !348)
!390 = !DILocation(line: 156, column: 25, scope: !348)
!391 = !DILocation(line: 156, column: 27, scope: !348)
!392 = !DILocation(line: 156, column: 26, scope: !348)
!393 = !DILocation(line: 156, column: 29, scope: !348)
!394 = !DILocation(line: 156, column: 28, scope: !348)
!395 = !DILocation(line: 156, column: 23, scope: !348)
!396 = !DILocation(line: 156, column: 34, scope: !348)
!397 = !DILocation(line: 156, column: 32, scope: !348)
!398 = !DILocation(line: 156, column: 5, scope: !348)
!399 = !DILocation(line: 156, column: 13, scope: !348)
!400 = !DILocation(line: 156, column: 17, scope: !348)
!401 = !DILocation(line: 157, column: 42, scope: !348)
!402 = !DILocation(line: 157, column: 50, scope: !348)
!403 = !DILocation(line: 157, column: 37, scope: !348)
!404 = !DILocation(line: 157, column: 35, scope: !348)
!405 = !DILocation(line: 157, column: 5, scope: !348)
!406 = !DILocation(line: 157, column: 13, scope: !348)
!407 = !DILocation(line: 157, column: 17, scope: !348)
!408 = !DILocation(line: 158, column: 5, scope: !348)
!409 = !DILocalVariable(name: "cos_result", scope: !410, file: !1, line: 161, type: !52)
!410 = distinct !DILexicalBlock(scope: !344, file: !1, line: 160, column: 8)
!411 = !DILocation(line: 161, column: 19, scope: !410)
!412 = !DILocalVariable(name: "sin_result", scope: !410, file: !1, line: 162, type: !52)
!413 = !DILocation(line: 162, column: 19, scope: !410)
!414 = !DILocalVariable(name: "stat_cos", scope: !410, file: !1, line: 163, type: !104)
!415 = !DILocation(line: 163, column: 15, scope: !410)
!416 = !DILocation(line: 163, column: 39, scope: !410)
!417 = !DILocation(line: 163, column: 26, scope: !410)
!418 = !DILocalVariable(name: "stat_sin", scope: !410, file: !1, line: 164, type: !104)
!419 = !DILocation(line: 164, column: 15, scope: !410)
!420 = !DILocation(line: 164, column: 39, scope: !410)
!421 = !DILocation(line: 164, column: 26, scope: !410)
!422 = !DILocalVariable(name: "sx", scope: !410, file: !1, line: 165, type: !49)
!423 = !DILocation(line: 165, column: 18, scope: !410)
!424 = !DILocation(line: 165, column: 34, scope: !410)
!425 = !DILocalVariable(name: "cx", scope: !410, file: !1, line: 166, type: !49)
!426 = !DILocation(line: 166, column: 18, scope: !410)
!427 = !DILocation(line: 166, column: 34, scope: !410)
!428 = !DILocalVariable(name: "a", scope: !410, file: !1, line: 167, type: !49)
!429 = !DILocation(line: 167, column: 18, scope: !410)
!430 = !DILocation(line: 167, column: 28, scope: !410)
!431 = !DILocation(line: 167, column: 30, scope: !410)
!432 = !DILocation(line: 167, column: 29, scope: !410)
!433 = !DILocation(line: 167, column: 26, scope: !410)
!434 = !DILocation(line: 168, column: 27, scope: !410)
!435 = !DILocation(line: 168, column: 25, scope: !410)
!436 = !DILocation(line: 168, column: 30, scope: !410)
!437 = !DILocation(line: 168, column: 29, scope: !410)
!438 = !DILocation(line: 168, column: 34, scope: !410)
!439 = !DILocation(line: 168, column: 32, scope: !410)
!440 = !DILocation(line: 168, column: 39, scope: !410)
!441 = !DILocation(line: 168, column: 43, scope: !410)
!442 = !DILocation(line: 168, column: 41, scope: !410)
!443 = !DILocation(line: 168, column: 37, scope: !410)
!444 = !DILocation(line: 168, column: 5, scope: !410)
!445 = !DILocation(line: 168, column: 13, scope: !410)
!446 = !DILocation(line: 168, column: 18, scope: !410)
!447 = !DILocation(line: 169, column: 31, scope: !410)
!448 = !DILocation(line: 169, column: 49, scope: !410)
!449 = !DILocation(line: 169, column: 47, scope: !410)
!450 = !DILocation(line: 169, column: 52, scope: !410)
!451 = !DILocation(line: 169, column: 51, scope: !410)
!452 = !DILocation(line: 169, column: 37, scope: !410)
!453 = !DILocation(line: 169, column: 35, scope: !410)
!454 = !DILocation(line: 169, column: 68, scope: !410)
!455 = !DILocation(line: 169, column: 79, scope: !410)
!456 = !DILocation(line: 169, column: 74, scope: !457)
!457 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 1)
!458 = !DILocation(line: 169, column: 72, scope: !410)
!459 = !DILocation(line: 169, column: 55, scope: !410)
!460 = !DILocation(line: 169, column: 5, scope: !410)
!461 = !DILocation(line: 169, column: 13, scope: !410)
!462 = !DILocation(line: 169, column: 18, scope: !410)
!463 = !DILocation(line: 170, column: 44, scope: !410)
!464 = !DILocation(line: 170, column: 47, scope: !410)
!465 = !DILocation(line: 170, column: 46, scope: !410)
!466 = !DILocation(line: 170, column: 39, scope: !410)
!467 = !DILocation(line: 170, column: 57, scope: !410)
!468 = !DILocation(line: 170, column: 61, scope: !410)
!469 = !DILocation(line: 170, column: 63, scope: !410)
!470 = !DILocation(line: 170, column: 62, scope: !410)
!471 = !DILocation(line: 170, column: 59, scope: !410)
!472 = !DILocation(line: 170, column: 52, scope: !457)
!473 = !DILocation(line: 170, column: 50, scope: !410)
!474 = !DILocation(line: 170, column: 36, scope: !410)
!475 = !DILocation(line: 170, column: 5, scope: !410)
!476 = !DILocation(line: 170, column: 13, scope: !410)
!477 = !DILocation(line: 170, column: 17, scope: !410)
!478 = !DILocation(line: 171, column: 12, scope: !410)
!479 = !DILocation(line: 171, column: 12, scope: !457)
!480 = !DILocation(line: 171, column: 12, scope: !481)
!481 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 2)
!482 = !DILocation(line: 171, column: 12, scope: !483)
!483 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 3)
!484 = !DILocation(line: 171, column: 12, scope: !485)
!485 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 4)
!486 = !DILocation(line: 171, column: 12, scope: !487)
!487 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 5)
!488 = !DILocation(line: 171, column: 12, scope: !489)
!489 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 6)
!490 = !DILocation(line: 171, column: 5, scope: !489)
!491 = !DILocation(line: 173, column: 1, scope: !302)
!492 = distinct !DISubprogram(name: "gsl_sf_bessel_yl_e", scope: !1, file: !1, line: 176, type: !493, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!493 = !DISubroutineType(types: !494)
!494 = !{!48, !48, !49, !51}
!495 = !DILocalVariable(name: "l", arg: 1, scope: !492, file: !1, line: 176, type: !48)
!496 = !DILocation(line: 176, column: 28, scope: !492)
!497 = !DILocalVariable(name: "x", arg: 2, scope: !492, file: !1, line: 176, type: !49)
!498 = !DILocation(line: 176, column: 44, scope: !492)
!499 = !DILocalVariable(name: "result", arg: 3, scope: !492, file: !1, line: 176, type: !51)
!500 = !DILocation(line: 176, column: 63, scope: !492)
!501 = !DILocation(line: 180, column: 6, scope: !502)
!502 = distinct !DILexicalBlock(scope: !492, file: !1, line: 180, column: 6)
!503 = !DILocation(line: 180, column: 8, scope: !502)
!504 = !DILocation(line: 180, column: 12, scope: !502)
!505 = !DILocation(line: 180, column: 15, scope: !506)
!506 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 1)
!507 = !DILocation(line: 180, column: 17, scope: !506)
!508 = !DILocation(line: 180, column: 6, scope: !506)
!509 = !DILocation(line: 181, column: 5, scope: !510)
!510 = distinct !DILexicalBlock(scope: !502, file: !1, line: 180, column: 25)
!511 = distinct !{!511, !509}
!512 = !DILocation(line: 181, column: 5, scope: !513)
!513 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 1)
!514 = distinct !DILexicalBlock(scope: !510, file: !1, line: 181, column: 5)
!515 = distinct !{!515, !516}
!516 = !DILocation(line: 181, column: 5, scope: !514)
!517 = !DILocation(line: 181, column: 5, scope: !518)
!518 = !DILexicalBlockFile(scope: !519, file: !1, discriminator: 2)
!519 = distinct !DILexicalBlock(scope: !514, file: !1, line: 181, column: 5)
!520 = !DILocation(line: 181, column: 5, scope: !521)
!521 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 3)
!522 = !DILocation(line: 182, column: 3, scope: !510)
!523 = !DILocation(line: 183, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !502, file: !1, line: 183, column: 11)
!525 = !DILocation(line: 183, column: 13, scope: !524)
!526 = !DILocation(line: 183, column: 11, scope: !502)
!527 = !DILocation(line: 184, column: 31, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !1, line: 183, column: 19)
!529 = !DILocation(line: 184, column: 34, scope: !528)
!530 = !DILocation(line: 184, column: 12, scope: !528)
!531 = !DILocation(line: 184, column: 5, scope: !528)
!532 = !DILocation(line: 186, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !524, file: !1, line: 186, column: 11)
!534 = !DILocation(line: 186, column: 13, scope: !533)
!535 = !DILocation(line: 186, column: 11, scope: !524)
!536 = !DILocation(line: 187, column: 31, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !1, line: 186, column: 19)
!538 = !DILocation(line: 187, column: 34, scope: !537)
!539 = !DILocation(line: 187, column: 12, scope: !537)
!540 = !DILocation(line: 187, column: 5, scope: !537)
!541 = !DILocation(line: 189, column: 11, scope: !542)
!542 = distinct !DILexicalBlock(scope: !533, file: !1, line: 189, column: 11)
!543 = !DILocation(line: 189, column: 13, scope: !542)
!544 = !DILocation(line: 189, column: 11, scope: !533)
!545 = !DILocation(line: 190, column: 31, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !1, line: 189, column: 19)
!547 = !DILocation(line: 190, column: 34, scope: !546)
!548 = !DILocation(line: 190, column: 12, scope: !546)
!549 = !DILocation(line: 190, column: 5, scope: !546)
!550 = !DILocation(line: 192, column: 11, scope: !551)
!551 = distinct !DILexicalBlock(scope: !542, file: !1, line: 192, column: 11)
!552 = !DILocation(line: 192, column: 13, scope: !551)
!553 = !DILocation(line: 192, column: 11, scope: !542)
!554 = !DILocation(line: 193, column: 30, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 192, column: 20)
!556 = !DILocation(line: 193, column: 33, scope: !555)
!557 = !DILocation(line: 193, column: 36, scope: !555)
!558 = !DILocation(line: 193, column: 12, scope: !555)
!559 = !DILocation(line: 193, column: 5, scope: !555)
!560 = !DILocation(line: 195, column: 35, scope: !561)
!561 = distinct !DILexicalBlock(scope: !551, file: !1, line: 195, column: 11)
!562 = !DILocation(line: 195, column: 33, scope: !561)
!563 = !DILocation(line: 195, column: 40, scope: !561)
!564 = !DILocation(line: 195, column: 42, scope: !561)
!565 = !DILocation(line: 195, column: 41, scope: !561)
!566 = !DILocation(line: 195, column: 46, scope: !561)
!567 = !DILocation(line: 195, column: 44, scope: !561)
!568 = !DILocation(line: 195, column: 48, scope: !561)
!569 = !DILocation(line: 195, column: 37, scope: !561)
!570 = !DILocation(line: 195, column: 11, scope: !551)
!571 = !DILocalVariable(name: "status", scope: !572, file: !1, line: 196, type: !48)
!572 = distinct !DILexicalBlock(scope: !561, file: !1, line: 195, column: 56)
!573 = !DILocation(line: 196, column: 9, scope: !572)
!574 = !DILocation(line: 196, column: 45, scope: !572)
!575 = !DILocation(line: 196, column: 47, scope: !572)
!576 = !DILocation(line: 196, column: 54, scope: !572)
!577 = !DILocation(line: 196, column: 57, scope: !572)
!578 = !DILocation(line: 196, column: 18, scope: !572)
!579 = !DILocalVariable(name: "pre", scope: !572, file: !1, line: 197, type: !50)
!580 = !DILocation(line: 197, column: 12, scope: !572)
!581 = !DILocation(line: 197, column: 34, scope: !572)
!582 = !DILocation(line: 197, column: 33, scope: !572)
!583 = !DILocation(line: 197, column: 18, scope: !572)
!584 = !DILocation(line: 198, column: 20, scope: !572)
!585 = !DILocation(line: 198, column: 5, scope: !572)
!586 = !DILocation(line: 198, column: 13, scope: !572)
!587 = !DILocation(line: 198, column: 17, scope: !572)
!588 = !DILocation(line: 199, column: 20, scope: !572)
!589 = !DILocation(line: 199, column: 5, scope: !572)
!590 = !DILocation(line: 199, column: 13, scope: !572)
!591 = !DILocation(line: 199, column: 17, scope: !572)
!592 = !DILocation(line: 200, column: 12, scope: !572)
!593 = !DILocation(line: 200, column: 5, scope: !572)
!594 = !DILocation(line: 202, column: 11, scope: !595)
!595 = distinct !DILexicalBlock(scope: !561, file: !1, line: 202, column: 11)
!596 = !DILocation(line: 202, column: 13, scope: !595)
!597 = !DILocation(line: 202, column: 11, scope: !561)
!598 = !DILocalVariable(name: "status", scope: !599, file: !1, line: 203, type: !48)
!599 = distinct !DILexicalBlock(scope: !595, file: !1, line: 202, column: 19)
!600 = !DILocation(line: 203, column: 9, scope: !599)
!601 = !DILocation(line: 203, column: 50, scope: !599)
!602 = !DILocation(line: 203, column: 52, scope: !599)
!603 = !DILocation(line: 203, column: 59, scope: !599)
!604 = !DILocation(line: 203, column: 62, scope: !599)
!605 = !DILocation(line: 203, column: 18, scope: !599)
!606 = !DILocalVariable(name: "pre", scope: !599, file: !1, line: 204, type: !50)
!607 = !DILocation(line: 204, column: 12, scope: !599)
!608 = !DILocation(line: 204, column: 34, scope: !599)
!609 = !DILocation(line: 204, column: 33, scope: !599)
!610 = !DILocation(line: 204, column: 18, scope: !599)
!611 = !DILocation(line: 205, column: 20, scope: !599)
!612 = !DILocation(line: 205, column: 5, scope: !599)
!613 = !DILocation(line: 205, column: 13, scope: !599)
!614 = !DILocation(line: 205, column: 17, scope: !599)
!615 = !DILocation(line: 206, column: 20, scope: !599)
!616 = !DILocation(line: 206, column: 5, scope: !599)
!617 = !DILocation(line: 206, column: 13, scope: !599)
!618 = !DILocation(line: 206, column: 17, scope: !599)
!619 = !DILocation(line: 207, column: 12, scope: !599)
!620 = !DILocation(line: 207, column: 5, scope: !599)
!621 = !DILocalVariable(name: "r_by", scope: !622, file: !1, line: 211, type: !52)
!622 = distinct !DILexicalBlock(scope: !595, file: !1, line: 209, column: 8)
!623 = !DILocation(line: 211, column: 19, scope: !622)
!624 = !DILocalVariable(name: "r_bym", scope: !622, file: !1, line: 212, type: !52)
!625 = !DILocation(line: 212, column: 19, scope: !622)
!626 = !DILocalVariable(name: "stat_1", scope: !622, file: !1, line: 213, type: !48)
!627 = !DILocation(line: 213, column: 9, scope: !622)
!628 = !DILocation(line: 213, column: 37, scope: !622)
!629 = !DILocation(line: 213, column: 18, scope: !622)
!630 = !DILocalVariable(name: "stat_0", scope: !622, file: !1, line: 214, type: !48)
!631 = !DILocation(line: 214, column: 9, scope: !622)
!632 = !DILocation(line: 214, column: 37, scope: !622)
!633 = !DILocation(line: 214, column: 18, scope: !622)
!634 = !DILocalVariable(name: "bym", scope: !622, file: !1, line: 215, type: !50)
!635 = !DILocation(line: 215, column: 12, scope: !622)
!636 = !DILocation(line: 215, column: 24, scope: !622)
!637 = !DILocalVariable(name: "by", scope: !622, file: !1, line: 216, type: !50)
!638 = !DILocation(line: 216, column: 12, scope: !622)
!639 = !DILocation(line: 216, column: 23, scope: !622)
!640 = !DILocalVariable(name: "byp", scope: !622, file: !1, line: 217, type: !50)
!641 = !DILocation(line: 217, column: 12, scope: !622)
!642 = !DILocalVariable(name: "j", scope: !622, file: !1, line: 218, type: !48)
!643 = !DILocation(line: 218, column: 9, scope: !622)
!644 = !DILocation(line: 219, column: 10, scope: !645)
!645 = distinct !DILexicalBlock(scope: !622, file: !1, line: 219, column: 5)
!646 = !DILocation(line: 219, column: 9, scope: !645)
!647 = !DILocation(line: 219, column: 14, scope: !648)
!648 = !DILexicalBlockFile(scope: !649, file: !1, discriminator: 1)
!649 = distinct !DILexicalBlock(scope: !645, file: !1, line: 219, column: 5)
!650 = !DILocation(line: 219, column: 16, scope: !648)
!651 = !DILocation(line: 219, column: 15, scope: !648)
!652 = !DILocation(line: 219, column: 5, scope: !648)
!653 = !DILocation(line: 220, column: 16, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !1, line: 219, column: 24)
!655 = !DILocation(line: 220, column: 15, scope: !654)
!656 = !DILocation(line: 220, column: 17, scope: !654)
!657 = !DILocation(line: 220, column: 13, scope: !654)
!658 = !DILocation(line: 220, column: 21, scope: !654)
!659 = !DILocation(line: 220, column: 20, scope: !654)
!660 = !DILocation(line: 220, column: 23, scope: !654)
!661 = !DILocation(line: 220, column: 22, scope: !654)
!662 = !DILocation(line: 220, column: 28, scope: !654)
!663 = !DILocation(line: 220, column: 26, scope: !654)
!664 = !DILocation(line: 220, column: 11, scope: !654)
!665 = !DILocation(line: 221, column: 13, scope: !654)
!666 = !DILocation(line: 221, column: 11, scope: !654)
!667 = !DILocation(line: 222, column: 13, scope: !654)
!668 = !DILocation(line: 222, column: 11, scope: !654)
!669 = !DILocation(line: 223, column: 5, scope: !654)
!670 = !DILocation(line: 219, column: 20, scope: !671)
!671 = !DILexicalBlockFile(scope: !649, file: !1, discriminator: 2)
!672 = !DILocation(line: 219, column: 5, scope: !671)
!673 = distinct !{!673, !674}
!674 = !DILocation(line: 219, column: 5, scope: !622)
!675 = !DILocation(line: 224, column: 19, scope: !622)
!676 = !DILocation(line: 224, column: 5, scope: !622)
!677 = !DILocation(line: 224, column: 13, scope: !622)
!678 = !DILocation(line: 224, column: 17, scope: !622)
!679 = !DILocation(line: 225, column: 24, scope: !622)
!680 = !DILocation(line: 225, column: 32, scope: !622)
!681 = !DILocation(line: 225, column: 19, scope: !622)
!682 = !DILocation(line: 225, column: 68, scope: !622)
!683 = !DILocation(line: 225, column: 77, scope: !622)
!684 = !DILocation(line: 225, column: 71, scope: !622)
!685 = !DILocation(line: 225, column: 58, scope: !686)
!686 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 1)
!687 = !DILocation(line: 225, column: 56, scope: !622)
!688 = !DILocation(line: 225, column: 95, scope: !622)
!689 = !DILocation(line: 225, column: 105, scope: !622)
!690 = !DILocation(line: 225, column: 98, scope: !622)
!691 = !DILocation(line: 225, column: 84, scope: !692)
!692 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 2)
!693 = !DILocation(line: 225, column: 82, scope: !622)
!694 = !DILocation(line: 225, column: 37, scope: !622)
!695 = !DILocation(line: 225, column: 5, scope: !622)
!696 = !DILocation(line: 225, column: 13, scope: !622)
!697 = !DILocation(line: 225, column: 17, scope: !622)
!698 = !DILocation(line: 227, column: 12, scope: !622)
!699 = !DILocation(line: 227, column: 12, scope: !686)
!700 = !DILocation(line: 227, column: 12, scope: !692)
!701 = !DILocation(line: 227, column: 12, scope: !702)
!702 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 3)
!703 = !DILocation(line: 227, column: 12, scope: !704)
!704 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 4)
!705 = !DILocation(line: 227, column: 12, scope: !706)
!706 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 5)
!707 = !DILocation(line: 227, column: 12, scope: !708)
!708 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 6)
!709 = !DILocation(line: 227, column: 5, scope: !708)
!710 = !DILocation(line: 229, column: 1, scope: !492)
!711 = distinct !DISubprogram(name: "bessel_yl_small_x", scope: !1, file: !1, line: 42, type: !493, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!712 = !DILocalVariable(name: "l", arg: 1, scope: !711, file: !1, line: 42, type: !48)
!713 = !DILocation(line: 42, column: 34, scope: !711)
!714 = !DILocalVariable(name: "x", arg: 2, scope: !711, file: !1, line: 42, type: !49)
!715 = !DILocation(line: 42, column: 50, scope: !711)
!716 = !DILocalVariable(name: "result", arg: 3, scope: !711, file: !1, line: 42, type: !51)
!717 = !DILocation(line: 42, column: 69, scope: !711)
!718 = !DILocalVariable(name: "num_fact", scope: !711, file: !1, line: 44, type: !52)
!719 = !DILocation(line: 44, column: 17, scope: !711)
!720 = !DILocalVariable(name: "den", scope: !711, file: !1, line: 45, type: !50)
!721 = !DILocation(line: 45, column: 10, scope: !711)
!722 = !DILocation(line: 45, column: 31, scope: !711)
!723 = !DILocation(line: 45, column: 34, scope: !711)
!724 = !DILocation(line: 45, column: 35, scope: !711)
!725 = !DILocation(line: 45, column: 16, scope: !711)
!726 = !DILocalVariable(name: "stat_df", scope: !711, file: !1, line: 46, type: !48)
!727 = !DILocation(line: 46, column: 7, scope: !711)
!728 = !DILocation(line: 46, column: 39, scope: !711)
!729 = !DILocation(line: 46, column: 38, scope: !711)
!730 = !DILocation(line: 46, column: 40, scope: !711)
!731 = !DILocation(line: 46, column: 17, scope: !711)
!732 = !DILocation(line: 48, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !711, file: !1, line: 48, column: 6)
!734 = !DILocation(line: 48, column: 14, scope: !733)
!735 = !DILocation(line: 48, column: 29, scope: !733)
!736 = !DILocation(line: 48, column: 32, scope: !737)
!737 = !DILexicalBlockFile(scope: !733, file: !1, discriminator: 1)
!738 = !DILocation(line: 48, column: 36, scope: !737)
!739 = !DILocation(line: 48, column: 6, scope: !737)
!740 = !DILocation(line: 49, column: 5, scope: !741)
!741 = distinct !DILexicalBlock(scope: !733, file: !1, line: 48, column: 44)
!742 = distinct !{!742, !740}
!743 = !DILocation(line: 49, column: 5, scope: !744)
!744 = !DILexicalBlockFile(scope: !745, file: !1, discriminator: 1)
!745 = distinct !DILexicalBlock(scope: !741, file: !1, line: 49, column: 5)
!746 = distinct !{!746, !747}
!747 = !DILocation(line: 49, column: 5, scope: !745)
!748 = !DILocation(line: 49, column: 5, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !1, discriminator: 2)
!750 = distinct !DILexicalBlock(scope: !745, file: !1, line: 49, column: 5)
!751 = !DILocation(line: 49, column: 5, scope: !752)
!752 = !DILexicalBlockFile(scope: !745, file: !1, discriminator: 3)
!753 = !DILocation(line: 50, column: 3, scope: !741)
!754 = !DILocalVariable(name: "lmax", scope: !755, file: !1, line: 52, type: !104)
!755 = distinct !DILexicalBlock(scope: !733, file: !1, line: 51, column: 8)
!756 = !DILocation(line: 52, column: 15, scope: !755)
!757 = !DILocalVariable(name: "t", scope: !755, file: !1, line: 53, type: !50)
!758 = !DILocation(line: 53, column: 12, scope: !755)
!759 = !DILocation(line: 53, column: 21, scope: !755)
!760 = !DILocation(line: 53, column: 20, scope: !755)
!761 = !DILocation(line: 53, column: 23, scope: !755)
!762 = !DILocation(line: 53, column: 22, scope: !755)
!763 = !DILocalVariable(name: "sum", scope: !755, file: !1, line: 54, type: !50)
!764 = !DILocation(line: 54, column: 12, scope: !755)
!765 = !DILocalVariable(name: "t_coeff", scope: !755, file: !1, line: 55, type: !50)
!766 = !DILocation(line: 55, column: 12, scope: !755)
!767 = !DILocalVariable(name: "t_power", scope: !755, file: !1, line: 56, type: !50)
!768 = !DILocation(line: 56, column: 12, scope: !755)
!769 = !DILocalVariable(name: "delta", scope: !755, file: !1, line: 57, type: !50)
!770 = !DILocation(line: 57, column: 12, scope: !755)
!771 = !DILocalVariable(name: "i", scope: !755, file: !1, line: 58, type: !48)
!772 = !DILocation(line: 58, column: 9, scope: !755)
!773 = !DILocation(line: 59, column: 10, scope: !774)
!774 = distinct !DILexicalBlock(scope: !755, file: !1, line: 59, column: 5)
!775 = !DILocation(line: 59, column: 9, scope: !774)
!776 = !DILocation(line: 59, column: 14, scope: !777)
!777 = !DILexicalBlockFile(scope: !778, file: !1, discriminator: 1)
!778 = distinct !DILexicalBlock(scope: !774, file: !1, line: 59, column: 5)
!779 = !DILocation(line: 59, column: 15, scope: !777)
!780 = !DILocation(line: 59, column: 5, scope: !777)
!781 = !DILocation(line: 60, column: 18, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !1, line: 59, column: 28)
!783 = !DILocation(line: 60, column: 24, scope: !782)
!784 = !DILocation(line: 60, column: 26, scope: !782)
!785 = !DILocation(line: 60, column: 25, scope: !782)
!786 = !DILocation(line: 60, column: 22, scope: !782)
!787 = !DILocation(line: 60, column: 29, scope: !782)
!788 = !DILocation(line: 60, column: 19, scope: !782)
!789 = !DILocation(line: 60, column: 15, scope: !782)
!790 = !DILocation(line: 61, column: 18, scope: !782)
!791 = !DILocation(line: 61, column: 15, scope: !782)
!792 = !DILocation(line: 62, column: 15, scope: !782)
!793 = !DILocation(line: 62, column: 23, scope: !782)
!794 = !DILocation(line: 62, column: 22, scope: !782)
!795 = !DILocation(line: 62, column: 13, scope: !782)
!796 = !DILocation(line: 63, column: 14, scope: !782)
!797 = !DILocation(line: 63, column: 11, scope: !782)
!798 = !DILocation(line: 64, column: 15, scope: !799)
!799 = distinct !DILexicalBlock(scope: !782, file: !1, line: 64, column: 10)
!800 = !DILocation(line: 64, column: 21, scope: !799)
!801 = !DILocation(line: 64, column: 20, scope: !799)
!802 = !DILocation(line: 64, column: 10, scope: !799)
!803 = !DILocation(line: 64, column: 26, scope: !799)
!804 = !DILocation(line: 64, column: 10, scope: !782)
!805 = !DILocation(line: 64, column: 49, scope: !806)
!806 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 1)
!807 = !DILocation(line: 65, column: 5, scope: !782)
!808 = !DILocation(line: 59, column: 24, scope: !809)
!809 = !DILexicalBlockFile(scope: !778, file: !1, discriminator: 2)
!810 = !DILocation(line: 59, column: 5, scope: !809)
!811 = distinct !{!811, !812}
!812 = !DILocation(line: 59, column: 5, scope: !755)
!813 = !DILocation(line: 66, column: 29, scope: !755)
!814 = !DILocation(line: 66, column: 19, scope: !755)
!815 = !DILocation(line: 66, column: 33, scope: !755)
!816 = !DILocation(line: 66, column: 32, scope: !755)
!817 = !DILocation(line: 66, column: 39, scope: !755)
!818 = !DILocation(line: 66, column: 37, scope: !755)
!819 = !DILocation(line: 66, column: 5, scope: !755)
!820 = !DILocation(line: 66, column: 13, scope: !755)
!821 = !DILocation(line: 66, column: 17, scope: !755)
!822 = !DILocation(line: 67, column: 42, scope: !755)
!823 = !DILocation(line: 67, column: 50, scope: !755)
!824 = !DILocation(line: 67, column: 37, scope: !755)
!825 = !DILocation(line: 67, column: 35, scope: !755)
!826 = !DILocation(line: 67, column: 5, scope: !755)
!827 = !DILocation(line: 67, column: 13, scope: !755)
!828 = !DILocation(line: 67, column: 17, scope: !755)
!829 = !DILocation(line: 69, column: 5, scope: !755)
!830 = !DILocation(line: 71, column: 1, scope: !711)
!831 = distinct !DISubprogram(name: "gsl_sf_bessel_yl_array", scope: !1, file: !1, line: 232, type: !832, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!832 = !DISubroutineType(types: !833)
!833 = !{!48, !104, !49, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!835 = !DILocalVariable(name: "lmax", arg: 1, scope: !831, file: !1, line: 232, type: !104)
!836 = !DILocation(line: 232, column: 38, scope: !831)
!837 = !DILocalVariable(name: "x", arg: 2, scope: !831, file: !1, line: 232, type: !49)
!838 = !DILocation(line: 232, column: 57, scope: !831)
!839 = !DILocalVariable(name: "result_array", arg: 3, scope: !831, file: !1, line: 232, type: !834)
!840 = !DILocation(line: 232, column: 69, scope: !831)
!841 = !DILocation(line: 236, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !831, file: !1, line: 236, column: 6)
!843 = !DILocation(line: 236, column: 11, scope: !842)
!844 = !DILocation(line: 236, column: 15, scope: !842)
!845 = !DILocation(line: 236, column: 18, scope: !846)
!846 = !DILexicalBlockFile(scope: !842, file: !1, discriminator: 1)
!847 = !DILocation(line: 236, column: 20, scope: !846)
!848 = !DILocation(line: 236, column: 6, scope: !846)
!849 = !DILocation(line: 237, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !842, file: !1, line: 236, column: 28)
!851 = distinct !{!851, !849}
!852 = !DILocation(line: 237, column: 5, scope: !853)
!853 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 1)
!854 = distinct !DILexicalBlock(scope: !850, file: !1, line: 237, column: 5)
!855 = !DILocation(line: 238, column: 3, scope: !850)
!856 = !DILocation(line: 238, column: 14, scope: !857)
!857 = !DILexicalBlockFile(scope: !858, file: !1, discriminator: 1)
!858 = distinct !DILexicalBlock(scope: !842, file: !1, line: 238, column: 14)
!859 = !DILocation(line: 238, column: 19, scope: !857)
!860 = !DILocalVariable(name: "result", scope: !861, file: !1, line: 239, type: !52)
!861 = distinct !DILexicalBlock(scope: !858, file: !1, line: 238, column: 25)
!862 = !DILocation(line: 239, column: 19, scope: !861)
!863 = !DILocalVariable(name: "stat", scope: !861, file: !1, line: 240, type: !48)
!864 = !DILocation(line: 240, column: 9, scope: !861)
!865 = !DILocation(line: 240, column: 35, scope: !861)
!866 = !DILocation(line: 240, column: 16, scope: !861)
!867 = !DILocation(line: 241, column: 30, scope: !861)
!868 = !DILocation(line: 241, column: 5, scope: !861)
!869 = !DILocation(line: 241, column: 21, scope: !861)
!870 = !DILocation(line: 242, column: 12, scope: !861)
!871 = !DILocation(line: 242, column: 5, scope: !861)
!872 = !DILocalVariable(name: "r_yell", scope: !873, file: !1, line: 244, type: !52)
!873 = distinct !DILexicalBlock(scope: !858, file: !1, line: 243, column: 10)
!874 = !DILocation(line: 244, column: 19, scope: !873)
!875 = !DILocalVariable(name: "r_yellm1", scope: !873, file: !1, line: 245, type: !52)
!876 = !DILocation(line: 245, column: 19, scope: !873)
!877 = !DILocalVariable(name: "stat_1", scope: !873, file: !1, line: 246, type: !48)
!878 = !DILocation(line: 246, column: 9, scope: !873)
!879 = !DILocation(line: 246, column: 37, scope: !873)
!880 = !DILocation(line: 246, column: 18, scope: !873)
!881 = !DILocalVariable(name: "stat_0", scope: !873, file: !1, line: 247, type: !48)
!882 = !DILocation(line: 247, column: 9, scope: !873)
!883 = !DILocation(line: 247, column: 37, scope: !873)
!884 = !DILocation(line: 247, column: 18, scope: !873)
!885 = !DILocalVariable(name: "yellp1", scope: !873, file: !1, line: 248, type: !50)
!886 = !DILocation(line: 248, column: 12, scope: !873)
!887 = !DILocalVariable(name: "yell", scope: !873, file: !1, line: 249, type: !50)
!888 = !DILocation(line: 249, column: 12, scope: !873)
!889 = !DILocation(line: 249, column: 28, scope: !873)
!890 = !DILocalVariable(name: "yellm1", scope: !873, file: !1, line: 250, type: !50)
!891 = !DILocation(line: 250, column: 12, scope: !873)
!892 = !DILocation(line: 250, column: 30, scope: !873)
!893 = !DILocalVariable(name: "ell", scope: !873, file: !1, line: 251, type: !48)
!894 = !DILocation(line: 251, column: 9, scope: !873)
!895 = !DILocation(line: 253, column: 23, scope: !873)
!896 = !DILocation(line: 253, column: 5, scope: !873)
!897 = !DILocation(line: 253, column: 21, scope: !873)
!898 = !DILocation(line: 254, column: 23, scope: !873)
!899 = !DILocation(line: 254, column: 5, scope: !873)
!900 = !DILocation(line: 254, column: 21, scope: !873)
!901 = !DILocation(line: 256, column: 13, scope: !902)
!902 = distinct !DILexicalBlock(scope: !873, file: !1, line: 256, column: 5)
!903 = !DILocation(line: 256, column: 9, scope: !902)
!904 = !DILocation(line: 256, column: 18, scope: !905)
!905 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 1)
!906 = distinct !DILexicalBlock(scope: !902, file: !1, line: 256, column: 5)
!907 = !DILocation(line: 256, column: 24, scope: !905)
!908 = !DILocation(line: 256, column: 22, scope: !905)
!909 = !DILocation(line: 256, column: 5, scope: !905)
!910 = !DILocation(line: 257, column: 19, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !1, line: 256, column: 37)
!912 = !DILocation(line: 257, column: 18, scope: !911)
!913 = !DILocation(line: 257, column: 22, scope: !911)
!914 = !DILocation(line: 257, column: 16, scope: !911)
!915 = !DILocation(line: 257, column: 26, scope: !911)
!916 = !DILocation(line: 257, column: 25, scope: !911)
!917 = !DILocation(line: 257, column: 30, scope: !911)
!918 = !DILocation(line: 257, column: 28, scope: !911)
!919 = !DILocation(line: 257, column: 37, scope: !911)
!920 = !DILocation(line: 257, column: 35, scope: !911)
!921 = !DILocation(line: 257, column: 14, scope: !911)
!922 = !DILocation(line: 258, column: 29, scope: !911)
!923 = !DILocation(line: 258, column: 20, scope: !911)
!924 = !DILocation(line: 258, column: 23, scope: !911)
!925 = !DILocation(line: 258, column: 7, scope: !911)
!926 = !DILocation(line: 258, column: 27, scope: !911)
!927 = !DILocation(line: 259, column: 16, scope: !911)
!928 = !DILocation(line: 259, column: 14, scope: !911)
!929 = !DILocation(line: 260, column: 16, scope: !911)
!930 = !DILocation(line: 260, column: 14, scope: !911)
!931 = !DILocation(line: 261, column: 5, scope: !911)
!932 = !DILocation(line: 256, column: 33, scope: !933)
!933 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 2)
!934 = !DILocation(line: 256, column: 5, scope: !933)
!935 = distinct !{!935, !936}
!936 = !DILocation(line: 256, column: 5, scope: !873)
!937 = !DILocation(line: 263, column: 12, scope: !873)
!938 = !DILocation(line: 263, column: 12, scope: !939)
!939 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 1)
!940 = !DILocation(line: 263, column: 12, scope: !941)
!941 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 2)
!942 = !DILocation(line: 263, column: 12, scope: !943)
!943 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 3)
!944 = !DILocation(line: 263, column: 12, scope: !945)
!945 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 4)
!946 = !DILocation(line: 263, column: 12, scope: !947)
!947 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 5)
!948 = !DILocation(line: 263, column: 12, scope: !949)
!949 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 6)
!950 = !DILocation(line: 263, column: 5, scope: !949)
!951 = !DILocation(line: 265, column: 1, scope: !831)
!952 = distinct !DISubprogram(name: "gsl_sf_bessel_y0", scope: !1, file: !1, line: 272, type: !953, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!953 = !DISubroutineType(types: !954)
!954 = !{!50, !49}
!955 = !DILocalVariable(name: "x", arg: 1, scope: !952, file: !1, line: 272, type: !49)
!956 = !DILocation(line: 272, column: 38, scope: !952)
!957 = !DILocalVariable(name: "result", scope: !952, file: !1, line: 274, type: !52)
!958 = !DILocation(line: 274, column: 3, scope: !952)
!959 = !DILocalVariable(name: "status", scope: !952, file: !1, line: 274, type: !48)
!960 = !DILocation(line: 274, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !952, file: !1, line: 274, column: 3)
!962 = !DILocation(line: 274, column: 3, scope: !963)
!963 = !DILexicalBlockFile(scope: !964, file: !1, discriminator: 1)
!964 = distinct !DILexicalBlock(scope: !961, file: !1, line: 274, column: 3)
!965 = distinct !{!965, !966}
!966 = !DILocation(line: 274, column: 3, scope: !964)
!967 = !DILocation(line: 274, column: 3, scope: !968)
!968 = !DILexicalBlockFile(scope: !969, file: !1, discriminator: 2)
!969 = distinct !DILexicalBlock(scope: !964, file: !1, line: 274, column: 3)
!970 = !DILocation(line: 274, column: 3, scope: !971)
!971 = !DILexicalBlockFile(scope: !964, file: !1, discriminator: 3)
!972 = !DILocation(line: 274, column: 3, scope: !973)
!973 = !DILexicalBlockFile(scope: !952, file: !1, discriminator: 4)
!974 = !DILocation(line: 275, column: 1, scope: !952)
!975 = distinct !DISubprogram(name: "gsl_sf_bessel_y1", scope: !1, file: !1, line: 277, type: !953, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!976 = !DILocalVariable(name: "x", arg: 1, scope: !975, file: !1, line: 277, type: !49)
!977 = !DILocation(line: 277, column: 38, scope: !975)
!978 = !DILocalVariable(name: "result", scope: !975, file: !1, line: 279, type: !52)
!979 = !DILocation(line: 279, column: 3, scope: !975)
!980 = !DILocalVariable(name: "status", scope: !975, file: !1, line: 279, type: !48)
!981 = !DILocation(line: 279, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !975, file: !1, line: 279, column: 3)
!983 = !DILocation(line: 279, column: 3, scope: !984)
!984 = !DILexicalBlockFile(scope: !985, file: !1, discriminator: 1)
!985 = distinct !DILexicalBlock(scope: !982, file: !1, line: 279, column: 3)
!986 = distinct !{!986, !987}
!987 = !DILocation(line: 279, column: 3, scope: !985)
!988 = !DILocation(line: 279, column: 3, scope: !989)
!989 = !DILexicalBlockFile(scope: !990, file: !1, discriminator: 2)
!990 = distinct !DILexicalBlock(scope: !985, file: !1, line: 279, column: 3)
!991 = !DILocation(line: 279, column: 3, scope: !992)
!992 = !DILexicalBlockFile(scope: !985, file: !1, discriminator: 3)
!993 = !DILocation(line: 279, column: 3, scope: !994)
!994 = !DILexicalBlockFile(scope: !975, file: !1, discriminator: 4)
!995 = !DILocation(line: 280, column: 1, scope: !975)
!996 = distinct !DISubprogram(name: "gsl_sf_bessel_y2", scope: !1, file: !1, line: 282, type: !953, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!997 = !DILocalVariable(name: "x", arg: 1, scope: !996, file: !1, line: 282, type: !49)
!998 = !DILocation(line: 282, column: 38, scope: !996)
!999 = !DILocalVariable(name: "result", scope: !996, file: !1, line: 284, type: !52)
!1000 = !DILocation(line: 284, column: 3, scope: !996)
!1001 = !DILocalVariable(name: "status", scope: !996, file: !1, line: 284, type: !48)
!1002 = !DILocation(line: 284, column: 3, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !996, file: !1, line: 284, column: 3)
!1004 = !DILocation(line: 284, column: 3, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1006, file: !1, discriminator: 1)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 284, column: 3)
!1007 = distinct !{!1007, !1008}
!1008 = !DILocation(line: 284, column: 3, scope: !1006)
!1009 = !DILocation(line: 284, column: 3, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 2)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 284, column: 3)
!1012 = !DILocation(line: 284, column: 3, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1006, file: !1, discriminator: 3)
!1014 = !DILocation(line: 284, column: 3, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !996, file: !1, discriminator: 4)
!1016 = !DILocation(line: 285, column: 1, scope: !996)
!1017 = distinct !DISubprogram(name: "gsl_sf_bessel_yl", scope: !1, file: !1, line: 287, type: !1018, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!50, !104, !49}
!1020 = !DILocalVariable(name: "l", arg: 1, scope: !1017, file: !1, line: 287, type: !104)
!1021 = !DILocation(line: 287, column: 35, scope: !1017)
!1022 = !DILocalVariable(name: "x", arg: 2, scope: !1017, file: !1, line: 287, type: !49)
!1023 = !DILocation(line: 287, column: 51, scope: !1017)
!1024 = !DILocalVariable(name: "result", scope: !1017, file: !1, line: 289, type: !52)
!1025 = !DILocation(line: 289, column: 3, scope: !1017)
!1026 = !DILocalVariable(name: "status", scope: !1017, file: !1, line: 289, type: !48)
!1027 = !DILocation(line: 289, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 289, column: 3)
!1029 = !DILocation(line: 289, column: 3, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1031, file: !1, discriminator: 1)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 289, column: 3)
!1032 = distinct !{!1032, !1033}
!1033 = !DILocation(line: 289, column: 3, scope: !1031)
!1034 = !DILocation(line: 289, column: 3, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1036, file: !1, discriminator: 2)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 289, column: 3)
!1037 = !DILocation(line: 289, column: 3, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1031, file: !1, discriminator: 3)
!1039 = !DILocation(line: 289, column: 3, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 4)
!1041 = !DILocation(line: 290, column: 1, scope: !1017)
