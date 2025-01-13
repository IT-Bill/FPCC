; ModuleID = 'log.c'
source_filename = "log.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"log.c\00", align 1
@lopx_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @lopx_data, i32 0, i32 0), i32 20, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@lopxmx_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @lopxmx_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"gsl_sf_log_e(x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_log_abs_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"gsl_sf_log_1plusx_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"gsl_sf_log_1plusx_mx_e(x, &result)\00", align 1
@lopx_data = internal global [21 x double] [double 0x400154F2FF74064B, double 0xBFD24827A76F5655, double 0x3F8F1578BA172797, double 0xBF6066D4F46F9C1B, double 0x3F292E448F91A693, double 0xBEFAC5DA2570740B, double 0x3EC854ABF2478DF1, double 0xBE9A1678662CBAB6, double 0x3E69A1D75B785524, double 0xBE3BB4110B46F7FB, double 0x3E0C6EF0DB053944, double 0xBDDEF3DF3B59CD2E, double 0x3DB052607B1FF7DC, double 0xBD81E193293BDE47, double 0x3D533459E4FAFCAF, double 0xBD25282240EEAE5E, double 0x3CF704469B786A68, double 0xBCC97AF78DD66016, double 0x3C9BFBF5AEA7147A, double 0xBC6F1CA5B981D327, double 0x3C413556459573FA], align 16
@lopxmx_data = internal global [20 x double] [double 0xBFF1EFA01F2185C3, double 0x3FC9074757AD1436, double 0xBF8E0DC5808E6080, double 0x3F5B4EFE163C1CBE, double 0xBF284E1E2A0C3A2C, double 0x3EF7E8BDE99BFB11, double 0xBEC783AA6FE8A397, double 0x3E981DDB03754A22, double 0xBE68D36EB4473126, double 0x3E3A1F850BD62A1E, double 0xBE0B9AC404474E93, double 0x3DDD8DD9608B4CCD, double 0xBDAFC3FCB2FFEE47, double 0x3D8137A736D0474D, double 0xBD52BA6E42B95CAC, double 0x3D247E2C285B7015, double 0xBCF67D66BB2CAB8A, double 0x3CC8C9F2503F956B, double 0xBC9B6447F503A1C6, double 0x3C6E5E46887B99D5], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_log_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !68 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !80, metadata !81), !dbg !82
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !83, metadata !81), !dbg !84
  %6 = load double, double* %4, align 8, !dbg !85
  %7 = fcmp ole double %6, 0.000000e+00, !dbg !87
  br i1 %7, label %8, label %17, !dbg !88

; <label>:8:                                      ; preds = %2
  br label %9, !dbg !89, !llvm.loop !91

; <label>:9:                                      ; preds = %8
  %10 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !92
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !92
  store double 0x7FF8000000000000, double* %11, align 8, !dbg !92
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !92
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !92
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !92
  br label %14, !dbg !92, !llvm.loop !95

; <label>:14:                                     ; preds = %9
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 116, i32 1), !dbg !97
  store i32 1, i32* %3, align 4, !dbg !97
  br label %29, !dbg !97
                                                  ; No predecessors!
  br label %16, !dbg !100

; <label>:16:                                     ; preds = %15
  br label %29, !dbg !102

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %4, align 8, !dbg !103
  %19 = call double @log(double %18) #6, !dbg !105
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !106
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !107
  store double %19, double* %21, align 8, !dbg !108
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !109
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !110
  %24 = load double, double* %23, align 8, !dbg !110
  %25 = call double @fabs(double %24) #1, !dbg !111
  %26 = fmul double 0x3CC0000000000000, %25, !dbg !112
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !113
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !114
  store double %26, double* %28, align 8, !dbg !115
  store i32 0, i32* %3, align 4, !dbg !116
  br label %29, !dbg !116

; <label>:29:                                     ; preds = %14, %17, %16
  %30 = load i32, i32* %3, align 4, !dbg !117
  ret i32 %30, !dbg !117
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_log_abs_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !118 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !119, metadata !81), !dbg !120
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !121, metadata !81), !dbg !122
  %6 = load double, double* %4, align 8, !dbg !123
  %7 = fcmp oeq double %6, 0.000000e+00, !dbg !125
  br i1 %7, label %8, label %17, !dbg !126

; <label>:8:                                      ; preds = %2
  br label %9, !dbg !127, !llvm.loop !129

; <label>:9:                                      ; preds = %8
  %10 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !130
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !130
  store double 0x7FF8000000000000, double* %11, align 8, !dbg !130
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !130
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !130
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !130
  br label %14, !dbg !130, !llvm.loop !133

; <label>:14:                                     ; preds = %9
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 132, i32 1), !dbg !135
  store i32 1, i32* %3, align 4, !dbg !135
  br label %30, !dbg !135
                                                  ; No predecessors!
  br label %16, !dbg !138

; <label>:16:                                     ; preds = %15
  br label %30, !dbg !140

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %4, align 8, !dbg !141
  %19 = call double @fabs(double %18) #1, !dbg !143
  %20 = call double @log(double %19) #6, !dbg !144
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !146
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !147
  store double %20, double* %22, align 8, !dbg !148
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !149
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !150
  %25 = load double, double* %24, align 8, !dbg !150
  %26 = call double @fabs(double %25) #1, !dbg !151
  %27 = fmul double 0x3CC0000000000000, %26, !dbg !152
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !153
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !154
  store double %27, double* %29, align 8, !dbg !155
  store i32 0, i32* %3, align 4, !dbg !156
  br label %30, !dbg !156

; <label>:30:                                     ; preds = %14, %17, %16
  %31 = load i32, i32* %3, align 4, !dbg !157
  ret i32 %31, !dbg !157
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_log_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !158 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !161, metadata !81), !dbg !162
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !163, metadata !81), !dbg !164
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !165, metadata !81), !dbg !166
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !167, metadata !81), !dbg !168
  %14 = load double, double* %6, align 8, !dbg !169
  %15 = fcmp une double %14, 0.000000e+00, !dbg !171
  br i1 %15, label %19, label %16, !dbg !172

; <label>:16:                                     ; preds = %4
  %17 = load double, double* %7, align 8, !dbg !173
  %18 = fcmp une double %17, 0.000000e+00, !dbg !175
  br i1 %18, label %19, label %76, !dbg !176

; <label>:19:                                     ; preds = %16, %4
  call void @llvm.dbg.declare(metadata double* %10, metadata !177, metadata !81), !dbg !179
  %20 = load double, double* %6, align 8, !dbg !180
  %21 = call double @fabs(double %20) #1, !dbg !181
  store double %21, double* %10, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata double* %11, metadata !182, metadata !81), !dbg !183
  %22 = load double, double* %7, align 8, !dbg !184
  %23 = call double @fabs(double %22) #1, !dbg !185
  store double %23, double* %11, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata double* %12, metadata !186, metadata !81), !dbg !187
  %24 = load double, double* %10, align 8, !dbg !188
  %25 = load double, double* %11, align 8, !dbg !188
  %26 = fcmp olt double %24, %25, !dbg !188
  br i1 %26, label %27, label %29, !dbg !188

; <label>:27:                                     ; preds = %19
  %28 = load double, double* %10, align 8, !dbg !189
  br label %31, !dbg !189

; <label>:29:                                     ; preds = %19
  %30 = load double, double* %11, align 8, !dbg !191
  br label %31, !dbg !191

; <label>:31:                                     ; preds = %29, %27
  %32 = phi double [ %28, %27 ], [ %30, %29 ], !dbg !193
  store double %32, double* %12, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata double* %13, metadata !196, metadata !81), !dbg !197
  %33 = load double, double* %10, align 8, !dbg !198
  %34 = load double, double* %11, align 8, !dbg !198
  %35 = fcmp ogt double %33, %34, !dbg !198
  br i1 %35, label %36, label %38, !dbg !198

; <label>:36:                                     ; preds = %31
  %37 = load double, double* %10, align 8, !dbg !199
  br label %40, !dbg !199

; <label>:38:                                     ; preds = %31
  %39 = load double, double* %11, align 8, !dbg !200
  br label %40, !dbg !200

; <label>:40:                                     ; preds = %38, %36
  %41 = phi double [ %37, %36 ], [ %39, %38 ], !dbg !201
  store double %41, double* %13, align 8, !dbg !202
  %42 = load double, double* %13, align 8, !dbg !203
  %43 = call double @log(double %42) #6, !dbg !204
  %44 = load double, double* %12, align 8, !dbg !205
  %45 = load double, double* %13, align 8, !dbg !206
  %46 = fdiv double %44, %45, !dbg !207
  %47 = load double, double* %12, align 8, !dbg !208
  %48 = load double, double* %13, align 8, !dbg !209
  %49 = fdiv double %47, %48, !dbg !210
  %50 = fmul double %46, %49, !dbg !211
  %51 = fadd double 1.000000e+00, %50, !dbg !212
  %52 = call double @log(double %51) #6, !dbg !213
  %53 = fmul double 5.000000e-01, %52, !dbg !214
  %54 = fadd double %43, %53, !dbg !215
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !216
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !217
  store double %54, double* %56, align 8, !dbg !218
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !219
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !220
  %59 = load double, double* %58, align 8, !dbg !220
  %60 = call double @fabs(double %59) #1, !dbg !221
  %61 = fmul double 0x3CC0000000000000, %60, !dbg !222
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !223
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !224
  store double %61, double* %63, align 8, !dbg !225
  %64 = load double, double* %7, align 8, !dbg !226
  %65 = load double, double* %6, align 8, !dbg !227
  %66 = call double @atan2(double %64, double %65) #6, !dbg !228
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !229
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !230
  store double %66, double* %68, align 8, !dbg !231
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !232
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !233
  %71 = load double, double* %70, align 8, !dbg !233
  %72 = call double @fabs(double %71) #1, !dbg !234
  %73 = fmul double 0x3CB0000000000000, %72, !dbg !235
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !236
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !237
  store double %73, double* %75, align 8, !dbg !238
  store i32 0, i32* %5, align 4, !dbg !239
  br label %89, !dbg !239

; <label>:76:                                     ; preds = %16
  br label %77, !dbg !240, !llvm.loop !242

; <label>:77:                                     ; preds = %76
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !243
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !243
  store double 0x7FF8000000000000, double* %79, align 8, !dbg !243
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !243
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !243
  store double 0x7FF8000000000000, double* %81, align 8, !dbg !243
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !243
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !243
  store double 0x7FF8000000000000, double* %83, align 8, !dbg !243
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !243
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !243
  store double 0x7FF8000000000000, double* %85, align 8, !dbg !243
  br label %86, !dbg !243, !llvm.loop !246

; <label>:86:                                     ; preds = %77
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 159, i32 1), !dbg !248
  store i32 1, i32* %5, align 4, !dbg !248
  br label %89, !dbg !248
                                                  ; No predecessors!
  br label %88, !dbg !251

; <label>:88:                                     ; preds = %87
  br label %89

; <label>:89:                                     ; preds = %40, %86, %88
  %90 = load i32, i32* %5, align 4, !dbg !253
  ret i32 %90, !dbg !253
}

; Function Attrs: nounwind
declare double @atan2(double, double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !254 {
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
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !255, metadata !81), !dbg !256
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !257, metadata !81), !dbg !258
  %18 = load double, double* %4, align 8, !dbg !259
  %19 = fcmp ole double %18, -1.000000e+00, !dbg !261
  br i1 %19, label %20, label %29, !dbg !262

; <label>:20:                                     ; preds = %2
  br label %21, !dbg !263, !llvm.loop !265

; <label>:21:                                     ; preds = %20
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !266
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !266
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !266
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !266
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !266
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !266
  br label %26, !dbg !266, !llvm.loop !269

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 170, i32 1), !dbg !271
  store i32 1, i32* %3, align 4, !dbg !271
  br label %113, !dbg !271
                                                  ; No predecessors!
  br label %28, !dbg !274

; <label>:28:                                     ; preds = %27
  br label %113, !dbg !276

; <label>:29:                                     ; preds = %2
  %30 = load double, double* %4, align 8, !dbg !277
  %31 = call double @fabs(double %30) #1, !dbg !279
  %32 = fcmp olt double %31, 0x3F6428A2F98D728D, !dbg !280
  br i1 %32, label %33, label %73, !dbg !281

; <label>:33:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata double* %6, metadata !282, metadata !81), !dbg !284
  store double -5.000000e-01, double* %6, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata double* %7, metadata !285, metadata !81), !dbg !286
  store double 0x3FD5555555555555, double* %7, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata double* %8, metadata !287, metadata !81), !dbg !288
  store double -2.500000e-01, double* %8, align 8, !dbg !288
  call void @llvm.dbg.declare(metadata double* %9, metadata !289, metadata !81), !dbg !290
  store double 2.000000e-01, double* %9, align 8, !dbg !290
  call void @llvm.dbg.declare(metadata double* %10, metadata !291, metadata !81), !dbg !292
  store double 0xBFC5555555555555, double* %10, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata double* %11, metadata !293, metadata !81), !dbg !294
  store double 0x3FC2492492492492, double* %11, align 8, !dbg !294
  call void @llvm.dbg.declare(metadata double* %12, metadata !295, metadata !81), !dbg !296
  store double -1.250000e-01, double* %12, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata double* %13, metadata !297, metadata !81), !dbg !298
  store double 0x3FBC71C71C71C71C, double* %13, align 8, !dbg !298
  call void @llvm.dbg.declare(metadata double* %14, metadata !299, metadata !81), !dbg !300
  store double -1.000000e-01, double* %14, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata double* %15, metadata !301, metadata !81), !dbg !302
  %34 = load double, double* %4, align 8, !dbg !303
  %35 = load double, double* %4, align 8, !dbg !304
  %36 = load double, double* %4, align 8, !dbg !305
  %37 = load double, double* %4, align 8, !dbg !306
  %38 = fmul double %37, -1.000000e-01, !dbg !307
  %39 = fadd double 0x3FBC71C71C71C71C, %38, !dbg !308
  %40 = fmul double %36, %39, !dbg !309
  %41 = fadd double -1.250000e-01, %40, !dbg !310
  %42 = fmul double %35, %41, !dbg !311
  %43 = fadd double 0x3FC2492492492492, %42, !dbg !312
  %44 = fmul double %34, %43, !dbg !313
  %45 = fadd double 0xBFC5555555555555, %44, !dbg !314
  store double %45, double* %15, align 8, !dbg !302
  %46 = load double, double* %4, align 8, !dbg !315
  %47 = load double, double* %4, align 8, !dbg !316
  %48 = load double, double* %4, align 8, !dbg !317
  %49 = load double, double* %4, align 8, !dbg !318
  %50 = load double, double* %4, align 8, !dbg !319
  %51 = load double, double* %4, align 8, !dbg !320
  %52 = load double, double* %15, align 8, !dbg !321
  %53 = fmul double %51, %52, !dbg !322
  %54 = fadd double 2.000000e-01, %53, !dbg !323
  %55 = fmul double %50, %54, !dbg !324
  %56 = fadd double -2.500000e-01, %55, !dbg !325
  %57 = fmul double %49, %56, !dbg !326
  %58 = fadd double 0x3FD5555555555555, %57, !dbg !327
  %59 = fmul double %48, %58, !dbg !328
  %60 = fadd double -5.000000e-01, %59, !dbg !329
  %61 = fmul double %47, %60, !dbg !330
  %62 = fadd double 1.000000e+00, %61, !dbg !331
  %63 = fmul double %46, %62, !dbg !332
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !333
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !334
  store double %63, double* %65, align 8, !dbg !335
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !336
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !337
  %68 = load double, double* %67, align 8, !dbg !337
  %69 = call double @fabs(double %68) #1, !dbg !338
  %70 = fmul double 0x3CB0000000000000, %69, !dbg !339
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !340
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !341
  store double %70, double* %72, align 8, !dbg !342
  store i32 0, i32* %3, align 4, !dbg !343
  br label %113, !dbg !343

; <label>:73:                                     ; preds = %29
  %74 = load double, double* %4, align 8, !dbg !344
  %75 = call double @fabs(double %74) #1, !dbg !346
  %76 = fcmp olt double %75, 5.000000e-01, !dbg !347
  br i1 %76, label %77, label %100, !dbg !348

; <label>:77:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata double* %16, metadata !349, metadata !81), !dbg !351
  %78 = load double, double* %4, align 8, !dbg !352
  %79 = fmul double 8.000000e+00, %78, !dbg !353
  %80 = fadd double %79, 1.000000e+00, !dbg !354
  %81 = fmul double 5.000000e-01, %80, !dbg !355
  %82 = load double, double* %4, align 8, !dbg !356
  %83 = fadd double %82, 2.000000e+00, !dbg !357
  %84 = fdiv double %81, %83, !dbg !358
  store double %84, double* %16, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !359, metadata !81), !dbg !360
  %85 = load double, double* %16, align 8, !dbg !361
  %86 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @lopx_cs, double %85, %struct.gsl_sf_result_struct* %17), !dbg !362
  %87 = load double, double* %4, align 8, !dbg !363
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !364
  %89 = load double, double* %88, align 8, !dbg !364
  %90 = fmul double %87, %89, !dbg !365
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !366
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !367
  store double %90, double* %92, align 8, !dbg !368
  %93 = load double, double* %4, align 8, !dbg !369
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !370
  %95 = load double, double* %94, align 8, !dbg !370
  %96 = fmul double %93, %95, !dbg !371
  %97 = call double @fabs(double %96) #1, !dbg !372
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !373
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 1, !dbg !374
  store double %97, double* %99, align 8, !dbg !375
  store i32 0, i32* %3, align 4, !dbg !376
  br label %113, !dbg !376

; <label>:100:                                    ; preds = %73
  %101 = load double, double* %4, align 8, !dbg !377
  %102 = fadd double 1.000000e+00, %101, !dbg !379
  %103 = call double @log(double %102) #6, !dbg !380
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !381
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 0, !dbg !382
  store double %103, double* %105, align 8, !dbg !383
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !384
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !385
  %108 = load double, double* %107, align 8, !dbg !385
  %109 = call double @fabs(double %108) #1, !dbg !386
  %110 = fmul double 0x3CB0000000000000, %109, !dbg !387
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !388
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 1, !dbg !389
  store double %110, double* %112, align 8, !dbg !390
  store i32 0, i32* %3, align 4, !dbg !391
  br label %113, !dbg !391

; <label>:113:                                    ; preds = %26, %33, %77, %100, %28
  %114 = load i32, i32* %3, align 4, !dbg !392
  ret i32 %114, !dbg !392
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #5 !dbg !393 {
  %4 = alloca %struct.cheb_series_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.cheb_series_struct* %0, %struct.cheb_series_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !399, metadata !81), !dbg !400
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !401, metadata !81), !dbg !402
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !403, metadata !81), !dbg !404
  call void @llvm.dbg.declare(metadata i32* %7, metadata !405, metadata !81), !dbg !406
  call void @llvm.dbg.declare(metadata double* %8, metadata !407, metadata !81), !dbg !408
  store double 0.000000e+00, double* %8, align 8, !dbg !408
  call void @llvm.dbg.declare(metadata double* %9, metadata !409, metadata !81), !dbg !410
  store double 0.000000e+00, double* %9, align 8, !dbg !410
  call void @llvm.dbg.declare(metadata double* %10, metadata !411, metadata !81), !dbg !412
  %15 = load double, double* %5, align 8, !dbg !413
  %16 = fmul double 2.000000e+00, %15, !dbg !414
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !415
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !416
  %19 = load double, double* %18, align 8, !dbg !416
  %20 = fsub double %16, %19, !dbg !417
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !418
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !419
  %23 = load double, double* %22, align 8, !dbg !419
  %24 = fsub double %20, %23, !dbg !420
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !421
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !422
  %27 = load double, double* %26, align 8, !dbg !422
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !423
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !424
  %30 = load double, double* %29, align 8, !dbg !424
  %31 = fsub double %27, %30, !dbg !425
  %32 = fdiv double %24, %31, !dbg !426
  store double %32, double* %10, align 8, !dbg !412
  call void @llvm.dbg.declare(metadata double* %11, metadata !427, metadata !81), !dbg !428
  %33 = load double, double* %10, align 8, !dbg !429
  %34 = fmul double 2.000000e+00, %33, !dbg !430
  store double %34, double* %11, align 8, !dbg !428
  call void @llvm.dbg.declare(metadata double* %12, metadata !431, metadata !81), !dbg !432
  store double 0.000000e+00, double* %12, align 8, !dbg !432
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !433
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !435
  %37 = load i32, i32* %36, align 8, !dbg !435
  store i32 %37, i32* %7, align 4, !dbg !436
  br label %38, !dbg !437

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !438
  %40 = icmp sge i32 %39, 1, !dbg !441
  br i1 %40, label %41, label %78, !dbg !442

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !443, metadata !81), !dbg !445
  %42 = load double, double* %8, align 8, !dbg !446
  store double %42, double* %13, align 8, !dbg !445
  %43 = load double, double* %11, align 8, !dbg !447
  %44 = load double, double* %8, align 8, !dbg !448
  %45 = fmul double %43, %44, !dbg !449
  %46 = load double, double* %9, align 8, !dbg !450
  %47 = fsub double %45, %46, !dbg !451
  %48 = load i32, i32* %7, align 4, !dbg !452
  %49 = sext i32 %48 to i64, !dbg !453
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !453
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !454
  %52 = load double*, double** %51, align 8, !dbg !454
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !453
  %54 = load double, double* %53, align 8, !dbg !453
  %55 = fadd double %47, %54, !dbg !455
  store double %55, double* %8, align 8, !dbg !456
  %56 = load double, double* %11, align 8, !dbg !457
  %57 = load double, double* %13, align 8, !dbg !458
  %58 = fmul double %56, %57, !dbg !459
  %59 = call double @fabs(double %58) #1, !dbg !460
  %60 = load double, double* %9, align 8, !dbg !461
  %61 = call double @fabs(double %60) #1, !dbg !462
  %62 = fadd double %59, %61, !dbg !464
  %63 = load i32, i32* %7, align 4, !dbg !465
  %64 = sext i32 %63 to i64, !dbg !466
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !466
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !467
  %67 = load double*, double** %66, align 8, !dbg !467
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !466
  %69 = load double, double* %68, align 8, !dbg !466
  %70 = call double @fabs(double %69) #1, !dbg !468
  %71 = fadd double %62, %70, !dbg !470
  %72 = load double, double* %12, align 8, !dbg !471
  %73 = fadd double %72, %71, !dbg !471
  store double %73, double* %12, align 8, !dbg !471
  %74 = load double, double* %13, align 8, !dbg !472
  store double %74, double* %9, align 8, !dbg !473
  br label %75, !dbg !474

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !475
  %77 = add nsw i32 %76, -1, !dbg !475
  store i32 %77, i32* %7, align 4, !dbg !475
  br label %38, !dbg !477, !llvm.loop !478

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !480, metadata !81), !dbg !482
  %79 = load double, double* %8, align 8, !dbg !483
  store double %79, double* %14, align 8, !dbg !482
  %80 = load double, double* %10, align 8, !dbg !484
  %81 = load double, double* %8, align 8, !dbg !485
  %82 = fmul double %80, %81, !dbg !486
  %83 = load double, double* %9, align 8, !dbg !487
  %84 = fsub double %82, %83, !dbg !488
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !489
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !490
  %87 = load double*, double** %86, align 8, !dbg !490
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !489
  %89 = load double, double* %88, align 8, !dbg !489
  %90 = fmul double 5.000000e-01, %89, !dbg !491
  %91 = fadd double %84, %90, !dbg !492
  store double %91, double* %8, align 8, !dbg !493
  %92 = load double, double* %10, align 8, !dbg !494
  %93 = load double, double* %14, align 8, !dbg !495
  %94 = fmul double %92, %93, !dbg !496
  %95 = call double @fabs(double %94) #1, !dbg !497
  %96 = load double, double* %9, align 8, !dbg !498
  %97 = call double @fabs(double %96) #1, !dbg !499
  %98 = fadd double %95, %97, !dbg !501
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !502
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !503
  %101 = load double*, double** %100, align 8, !dbg !503
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !502
  %103 = load double, double* %102, align 8, !dbg !502
  %104 = call double @fabs(double %103) #1, !dbg !504
  %105 = fmul double 5.000000e-01, %104, !dbg !506
  %106 = fadd double %98, %105, !dbg !507
  %107 = load double, double* %12, align 8, !dbg !508
  %108 = fadd double %107, %106, !dbg !508
  store double %108, double* %12, align 8, !dbg !508
  %109 = load double, double* %8, align 8, !dbg !509
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !510
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !511
  store double %109, double* %111, align 8, !dbg !512
  %112 = load double, double* %12, align 8, !dbg !513
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !514
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !515
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !516
  %116 = load i32, i32* %115, align 8, !dbg !516
  %117 = sext i32 %116 to i64, !dbg !517
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !517
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !518
  %120 = load double*, double** %119, align 8, !dbg !518
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !517
  %122 = load double, double* %121, align 8, !dbg !517
  %123 = call double @fabs(double %122) #1, !dbg !519
  %124 = fadd double %113, %123, !dbg !520
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !521
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !522
  store double %124, double* %126, align 8, !dbg !523
  ret i32 0, !dbg !524
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_log_1plusx_mx_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !525 {
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
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !526, metadata !81), !dbg !527
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !528, metadata !81), !dbg !529
  %19 = load double, double* %4, align 8, !dbg !530
  %20 = fcmp ole double %19, -1.000000e+00, !dbg !532
  br i1 %20, label %21, label %30, !dbg !533

; <label>:21:                                     ; preds = %2
  br label %22, !dbg !534, !llvm.loop !536

; <label>:22:                                     ; preds = %21
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !537
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !537
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !537
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !537
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !537
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !537
  br label %27, !dbg !537, !llvm.loop !540

; <label>:27:                                     ; preds = %22
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 209, i32 1), !dbg !542
  store i32 1, i32* %3, align 4, !dbg !542
  br label %120, !dbg !542
                                                  ; No predecessors!
  br label %29, !dbg !545

; <label>:29:                                     ; preds = %28
  br label %120, !dbg !547

; <label>:30:                                     ; preds = %2
  %31 = load double, double* %4, align 8, !dbg !548
  %32 = call double @fabs(double %31) #1, !dbg !550
  %33 = fcmp olt double %32, 0x3F48406003B2AE5A, !dbg !551
  br i1 %33, label %34, label %73, !dbg !552

; <label>:34:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %6, metadata !553, metadata !81), !dbg !555
  store double -5.000000e-01, double* %6, align 8, !dbg !555
  call void @llvm.dbg.declare(metadata double* %7, metadata !556, metadata !81), !dbg !557
  store double 0x3FD5555555555555, double* %7, align 8, !dbg !557
  call void @llvm.dbg.declare(metadata double* %8, metadata !558, metadata !81), !dbg !559
  store double -2.500000e-01, double* %8, align 8, !dbg !559
  call void @llvm.dbg.declare(metadata double* %9, metadata !560, metadata !81), !dbg !561
  store double 2.000000e-01, double* %9, align 8, !dbg !561
  call void @llvm.dbg.declare(metadata double* %10, metadata !562, metadata !81), !dbg !563
  store double 0xBFC5555555555555, double* %10, align 8, !dbg !563
  call void @llvm.dbg.declare(metadata double* %11, metadata !564, metadata !81), !dbg !565
  store double 0x3FC2492492492492, double* %11, align 8, !dbg !565
  call void @llvm.dbg.declare(metadata double* %12, metadata !566, metadata !81), !dbg !567
  store double -1.250000e-01, double* %12, align 8, !dbg !567
  call void @llvm.dbg.declare(metadata double* %13, metadata !568, metadata !81), !dbg !569
  store double 0x3FBC71C71C71C71C, double* %13, align 8, !dbg !569
  call void @llvm.dbg.declare(metadata double* %14, metadata !570, metadata !81), !dbg !571
  store double -1.000000e-01, double* %14, align 8, !dbg !571
  call void @llvm.dbg.declare(metadata double* %15, metadata !572, metadata !81), !dbg !573
  %35 = load double, double* %4, align 8, !dbg !574
  %36 = load double, double* %4, align 8, !dbg !575
  %37 = load double, double* %4, align 8, !dbg !576
  %38 = load double, double* %4, align 8, !dbg !577
  %39 = fmul double %38, -1.000000e-01, !dbg !578
  %40 = fadd double 0x3FBC71C71C71C71C, %39, !dbg !579
  %41 = fmul double %37, %40, !dbg !580
  %42 = fadd double -1.250000e-01, %41, !dbg !581
  %43 = fmul double %36, %42, !dbg !582
  %44 = fadd double 0x3FC2492492492492, %43, !dbg !583
  %45 = fmul double %35, %44, !dbg !584
  %46 = fadd double 0xBFC5555555555555, %45, !dbg !585
  store double %46, double* %15, align 8, !dbg !573
  %47 = load double, double* %4, align 8, !dbg !586
  %48 = load double, double* %4, align 8, !dbg !587
  %49 = fmul double %47, %48, !dbg !588
  %50 = load double, double* %4, align 8, !dbg !589
  %51 = load double, double* %4, align 8, !dbg !590
  %52 = load double, double* %4, align 8, !dbg !591
  %53 = load double, double* %4, align 8, !dbg !592
  %54 = load double, double* %15, align 8, !dbg !593
  %55 = fmul double %53, %54, !dbg !594
  %56 = fadd double 2.000000e-01, %55, !dbg !595
  %57 = fmul double %52, %56, !dbg !596
  %58 = fadd double -2.500000e-01, %57, !dbg !597
  %59 = fmul double %51, %58, !dbg !598
  %60 = fadd double 0x3FD5555555555555, %59, !dbg !599
  %61 = fmul double %50, %60, !dbg !600
  %62 = fadd double -5.000000e-01, %61, !dbg !601
  %63 = fmul double %49, %62, !dbg !602
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !603
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !604
  store double %63, double* %65, align 8, !dbg !605
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !606
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !607
  %68 = load double, double* %67, align 8, !dbg !607
  %69 = call double @fabs(double %68) #1, !dbg !608
  %70 = fmul double 0x3CB0000000000000, %69, !dbg !609
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !610
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !611
  store double %70, double* %72, align 8, !dbg !612
  store i32 0, i32* %3, align 4, !dbg !613
  br label %120, !dbg !613

; <label>:73:                                     ; preds = %30
  %74 = load double, double* %4, align 8, !dbg !614
  %75 = call double @fabs(double %74) #1, !dbg !616
  %76 = fcmp olt double %75, 5.000000e-01, !dbg !617
  br i1 %76, label %77, label %103, !dbg !618

; <label>:77:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata double* %16, metadata !619, metadata !81), !dbg !621
  %78 = load double, double* %4, align 8, !dbg !622
  %79 = fmul double 8.000000e+00, %78, !dbg !623
  %80 = fadd double %79, 1.000000e+00, !dbg !624
  %81 = fmul double 5.000000e-01, %80, !dbg !625
  %82 = load double, double* %4, align 8, !dbg !626
  %83 = fadd double %82, 2.000000e+00, !dbg !627
  %84 = fdiv double %81, %83, !dbg !628
  store double %84, double* %16, align 8, !dbg !621
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !629, metadata !81), !dbg !630
  %85 = load double, double* %16, align 8, !dbg !631
  %86 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @lopxmx_cs, double %85, %struct.gsl_sf_result_struct* %17), !dbg !632
  %87 = load double, double* %4, align 8, !dbg !633
  %88 = load double, double* %4, align 8, !dbg !634
  %89 = fmul double %87, %88, !dbg !635
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !636
  %91 = load double, double* %90, align 8, !dbg !636
  %92 = fmul double %89, %91, !dbg !637
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !638
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !639
  store double %92, double* %94, align 8, !dbg !640
  %95 = load double, double* %4, align 8, !dbg !641
  %96 = load double, double* %4, align 8, !dbg !642
  %97 = fmul double %95, %96, !dbg !643
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !644
  %99 = load double, double* %98, align 8, !dbg !644
  %100 = fmul double %97, %99, !dbg !645
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !646
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !647
  store double %100, double* %102, align 8, !dbg !648
  store i32 0, i32* %3, align 4, !dbg !649
  br label %120, !dbg !649

; <label>:103:                                    ; preds = %73
  call void @llvm.dbg.declare(metadata double* %18, metadata !650, metadata !81), !dbg !652
  %104 = load double, double* %4, align 8, !dbg !653
  %105 = fadd double 1.000000e+00, %104, !dbg !654
  %106 = call double @log(double %105) #6, !dbg !655
  store double %106, double* %18, align 8, !dbg !652
  %107 = load double, double* %18, align 8, !dbg !656
  %108 = load double, double* %4, align 8, !dbg !657
  %109 = fsub double %107, %108, !dbg !658
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !659
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !660
  store double %109, double* %111, align 8, !dbg !661
  %112 = load double, double* %18, align 8, !dbg !662
  %113 = call double @fabs(double %112) #1, !dbg !663
  %114 = load double, double* %4, align 8, !dbg !664
  %115 = call double @fabs(double %114) #1, !dbg !665
  %116 = fadd double %113, %115, !dbg !667
  %117 = fmul double 0x3CB0000000000000, %116, !dbg !668
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !669
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !670
  store double %117, double* %119, align 8, !dbg !671
  store i32 0, i32* %3, align 4, !dbg !672
  br label %120, !dbg !672

; <label>:120:                                    ; preds = %27, %34, %77, %103, %29
  %121 = load i32, i32* %3, align 4, !dbg !673
  ret i32 %121, !dbg !673
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_log(double) #0 !dbg !674 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !677, metadata !81), !dbg !678
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !679, metadata !81), !dbg !680
  call void @llvm.dbg.declare(metadata i32* %5, metadata !681, metadata !81), !dbg !680
  %6 = load double, double* %3, align 8, !dbg !680
  %7 = call i32 @gsl_sf_log_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !680
  store i32 %7, i32* %5, align 4, !dbg !680
  %8 = load i32, i32* %5, align 4, !dbg !682
  %9 = icmp ne i32 %8, 0, !dbg !682
  br i1 %9, label %10, label %16, !dbg !680

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !684, !llvm.loop !687

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !689
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 250, i32 %12), !dbg !689
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !689
  %14 = load double, double* %13, align 8, !dbg !689
  store double %14, double* %2, align 8, !dbg !689
  br label %19, !dbg !689
                                                  ; No predecessors!
  br label %16, !dbg !692

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !694
  %18 = load double, double* %17, align 8, !dbg !694
  store double %18, double* %2, align 8, !dbg !694
  br label %19, !dbg !694

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !696
  ret double %20, !dbg !696
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_log_abs(double) #0 !dbg !697 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !698, metadata !81), !dbg !699
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !700, metadata !81), !dbg !701
  call void @llvm.dbg.declare(metadata i32* %5, metadata !702, metadata !81), !dbg !701
  %6 = load double, double* %3, align 8, !dbg !701
  %7 = call i32 @gsl_sf_log_abs_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !701
  store i32 %7, i32* %5, align 4, !dbg !701
  %8 = load i32, i32* %5, align 4, !dbg !703
  %9 = icmp ne i32 %8, 0, !dbg !703
  br i1 %9, label %10, label %16, !dbg !701

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !705, !llvm.loop !708

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !710
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 255, i32 %12), !dbg !710
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !710
  %14 = load double, double* %13, align 8, !dbg !710
  store double %14, double* %2, align 8, !dbg !710
  br label %19, !dbg !710
                                                  ; No predecessors!
  br label %16, !dbg !713

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !715
  %18 = load double, double* %17, align 8, !dbg !715
  store double %18, double* %2, align 8, !dbg !715
  br label %19, !dbg !715

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !717
  ret double %20, !dbg !717
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_log_1plusx(double) #0 !dbg !718 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !719, metadata !81), !dbg !720
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !721, metadata !81), !dbg !722
  call void @llvm.dbg.declare(metadata i32* %5, metadata !723, metadata !81), !dbg !722
  %6 = load double, double* %3, align 8, !dbg !722
  %7 = call i32 @gsl_sf_log_1plusx_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !722
  store i32 %7, i32* %5, align 4, !dbg !722
  %8 = load i32, i32* %5, align 4, !dbg !724
  %9 = icmp ne i32 %8, 0, !dbg !724
  br i1 %9, label %10, label %16, !dbg !722

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !726, !llvm.loop !729

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !731
  call void @gsl_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 260, i32 %12), !dbg !731
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !731
  %14 = load double, double* %13, align 8, !dbg !731
  store double %14, double* %2, align 8, !dbg !731
  br label %19, !dbg !731
                                                  ; No predecessors!
  br label %16, !dbg !734

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !736
  %18 = load double, double* %17, align 8, !dbg !736
  store double %18, double* %2, align 8, !dbg !736
  br label %19, !dbg !736

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !738
  ret double %20, !dbg !738
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_log_1plusx_mx(double) #0 !dbg !739 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !740, metadata !81), !dbg !741
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !742, metadata !81), !dbg !743
  call void @llvm.dbg.declare(metadata i32* %5, metadata !744, metadata !81), !dbg !743
  %6 = load double, double* %3, align 8, !dbg !743
  %7 = call i32 @gsl_sf_log_1plusx_mx_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !743
  store i32 %7, i32* %5, align 4, !dbg !743
  %8 = load i32, i32* %5, align 4, !dbg !745
  %9 = icmp ne i32 %8, 0, !dbg !745
  br i1 %9, label %10, label %16, !dbg !743

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !747, !llvm.loop !750

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !752
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 265, i32 %12), !dbg !752
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !752
  %14 = load double, double* %13, align 8, !dbg !752
  store double %14, double* %2, align 8, !dbg !752
  br label %19, !dbg !752
                                                  ; No predecessors!
  br label %16, !dbg !755

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !757
  %18 = load double, double* %17, align 8, !dbg !757
  store double %18, double* %2, align 8, !dbg !757
  br label %19, !dbg !757

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !759
  ret double %20, !dbg !759
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "log.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60}
!42 = distinct !DIGlobalVariable(name: "lopx_cs", scope: !0, file: !1, line: 64, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @lopx_cs)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !44, line: 29, baseType: !45)
!44 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !44, line: 22, size: 320, align: 64, elements: !46)
!46 = !{!47, !50, !52, !53, !54}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !45, file: !44, line: 23, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !45, file: !44, line: 24, baseType: !51, size: 32, align: 32, offset: 64)
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !45, file: !44, line: 25, baseType: !49, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !45, file: !44, line: 26, baseType: !49, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !45, file: !44, line: 27, baseType: !51, size: 32, align: 32, offset: 256)
!55 = distinct !DIGlobalVariable(name: "lopx_data", scope: !0, file: !1, line: 41, type: !56, isLocal: true, isDefinition: true, variable: [21 x double]* @lopx_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1344, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 21)
!59 = distinct !DIGlobalVariable(name: "lopxmx_cs", scope: !0, file: !1, line: 100, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @lopxmx_cs)
!60 = distinct !DIGlobalVariable(name: "lopxmx_data", scope: !0, file: !1, line: 78, type: !61, isLocal: true, isDefinition: true, variable: [20 x double]* @lopxmx_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1280, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 20)
!64 = !{i32 2, !"Dwarf Version", i32 4}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"PIC Level", i32 2}
!67 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!68 = distinct !DISubprogram(name: "gsl_sf_log_e", scope: !1, file: !1, line: 111, type: !69, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!69 = !DISubroutineType(types: !70)
!70 = !{!51, !71, !72}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !74, line: 41, baseType: !75)
!74 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !74, line: 37, size: 128, align: 64, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !75, file: !74, line: 38, baseType: !49, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !75, file: !74, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!79 = !{}
!80 = !DILocalVariable(name: "x", arg: 1, scope: !68, file: !1, line: 111, type: !71)
!81 = !DIExpression()
!82 = !DILocation(line: 111, column: 27, scope: !68)
!83 = !DILocalVariable(name: "result", arg: 2, scope: !68, file: !1, line: 111, type: !72)
!84 = !DILocation(line: 111, column: 46, scope: !68)
!85 = !DILocation(line: 115, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !68, file: !1, line: 115, column: 6)
!87 = !DILocation(line: 115, column: 8, scope: !86)
!88 = !DILocation(line: 115, column: 6, scope: !68)
!89 = !DILocation(line: 116, column: 5, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 115, column: 16)
!91 = distinct !{!91, !89}
!92 = !DILocation(line: 116, column: 5, scope: !93)
!93 = !DILexicalBlockFile(scope: !94, file: !1, discriminator: 1)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 116, column: 5)
!95 = distinct !{!95, !96}
!96 = !DILocation(line: 116, column: 5, scope: !94)
!97 = !DILocation(line: 116, column: 5, scope: !98)
!98 = !DILexicalBlockFile(scope: !99, file: !1, discriminator: 2)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 116, column: 5)
!100 = !DILocation(line: 116, column: 5, scope: !101)
!101 = !DILexicalBlockFile(scope: !94, file: !1, discriminator: 3)
!102 = !DILocation(line: 117, column: 3, scope: !90)
!103 = !DILocation(line: 119, column: 23, scope: !104)
!104 = distinct !DILexicalBlock(scope: !86, file: !1, line: 118, column: 8)
!105 = !DILocation(line: 119, column: 19, scope: !104)
!106 = !DILocation(line: 119, column: 5, scope: !104)
!107 = !DILocation(line: 119, column: 13, scope: !104)
!108 = !DILocation(line: 119, column: 17, scope: !104)
!109 = !DILocation(line: 120, column: 48, scope: !104)
!110 = !DILocation(line: 120, column: 56, scope: !104)
!111 = !DILocation(line: 120, column: 43, scope: !104)
!112 = !DILocation(line: 120, column: 41, scope: !104)
!113 = !DILocation(line: 120, column: 5, scope: !104)
!114 = !DILocation(line: 120, column: 13, scope: !104)
!115 = !DILocation(line: 120, column: 17, scope: !104)
!116 = !DILocation(line: 121, column: 5, scope: !104)
!117 = !DILocation(line: 123, column: 1, scope: !68)
!118 = distinct !DISubprogram(name: "gsl_sf_log_abs_e", scope: !1, file: !1, line: 127, type: !69, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!119 = !DILocalVariable(name: "x", arg: 1, scope: !118, file: !1, line: 127, type: !71)
!120 = !DILocation(line: 127, column: 31, scope: !118)
!121 = !DILocalVariable(name: "result", arg: 2, scope: !118, file: !1, line: 127, type: !72)
!122 = !DILocation(line: 127, column: 50, scope: !118)
!123 = !DILocation(line: 131, column: 6, scope: !124)
!124 = distinct !DILexicalBlock(scope: !118, file: !1, line: 131, column: 6)
!125 = !DILocation(line: 131, column: 8, scope: !124)
!126 = !DILocation(line: 131, column: 6, scope: !118)
!127 = !DILocation(line: 132, column: 5, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !1, line: 131, column: 16)
!129 = distinct !{!129, !127}
!130 = !DILocation(line: 132, column: 5, scope: !131)
!131 = !DILexicalBlockFile(scope: !132, file: !1, discriminator: 1)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 132, column: 5)
!133 = distinct !{!133, !134}
!134 = !DILocation(line: 132, column: 5, scope: !132)
!135 = !DILocation(line: 132, column: 5, scope: !136)
!136 = !DILexicalBlockFile(scope: !137, file: !1, discriminator: 2)
!137 = distinct !DILexicalBlock(scope: !132, file: !1, line: 132, column: 5)
!138 = !DILocation(line: 132, column: 5, scope: !139)
!139 = !DILexicalBlockFile(scope: !132, file: !1, discriminator: 3)
!140 = !DILocation(line: 133, column: 3, scope: !128)
!141 = !DILocation(line: 135, column: 28, scope: !142)
!142 = distinct !DILexicalBlock(scope: !124, file: !1, line: 134, column: 8)
!143 = !DILocation(line: 135, column: 23, scope: !142)
!144 = !DILocation(line: 135, column: 19, scope: !145)
!145 = !DILexicalBlockFile(scope: !142, file: !1, discriminator: 1)
!146 = !DILocation(line: 135, column: 5, scope: !142)
!147 = !DILocation(line: 135, column: 13, scope: !142)
!148 = !DILocation(line: 135, column: 17, scope: !142)
!149 = !DILocation(line: 136, column: 48, scope: !142)
!150 = !DILocation(line: 136, column: 56, scope: !142)
!151 = !DILocation(line: 136, column: 43, scope: !142)
!152 = !DILocation(line: 136, column: 41, scope: !142)
!153 = !DILocation(line: 136, column: 5, scope: !142)
!154 = !DILocation(line: 136, column: 13, scope: !142)
!155 = !DILocation(line: 136, column: 17, scope: !142)
!156 = !DILocation(line: 137, column: 5, scope: !142)
!157 = !DILocation(line: 139, column: 1, scope: !118)
!158 = distinct !DISubprogram(name: "gsl_sf_complex_log_e", scope: !1, file: !1, line: 142, type: !159, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!159 = !DISubroutineType(types: !160)
!160 = !{!51, !71, !71, !72, !72}
!161 = !DILocalVariable(name: "zr", arg: 1, scope: !158, file: !1, line: 142, type: !71)
!162 = !DILocation(line: 142, column: 35, scope: !158)
!163 = !DILocalVariable(name: "zi", arg: 2, scope: !158, file: !1, line: 142, type: !71)
!164 = !DILocation(line: 142, column: 52, scope: !158)
!165 = !DILocalVariable(name: "lnr", arg: 3, scope: !158, file: !1, line: 142, type: !72)
!166 = !DILocation(line: 142, column: 72, scope: !158)
!167 = !DILocalVariable(name: "theta", arg: 4, scope: !158, file: !1, line: 142, type: !72)
!168 = !DILocation(line: 142, column: 93, scope: !158)
!169 = !DILocation(line: 147, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !158, file: !1, line: 147, column: 6)
!171 = !DILocation(line: 147, column: 9, scope: !170)
!172 = !DILocation(line: 147, column: 16, scope: !170)
!173 = !DILocation(line: 147, column: 19, scope: !174)
!174 = !DILexicalBlockFile(scope: !170, file: !1, discriminator: 1)
!175 = !DILocation(line: 147, column: 22, scope: !174)
!176 = !DILocation(line: 147, column: 6, scope: !174)
!177 = !DILocalVariable(name: "ax", scope: !178, file: !1, line: 148, type: !71)
!178 = distinct !DILexicalBlock(scope: !170, file: !1, line: 147, column: 30)
!179 = !DILocation(line: 148, column: 18, scope: !178)
!180 = !DILocation(line: 148, column: 28, scope: !178)
!181 = !DILocation(line: 148, column: 23, scope: !178)
!182 = !DILocalVariable(name: "ay", scope: !178, file: !1, line: 149, type: !71)
!183 = !DILocation(line: 149, column: 18, scope: !178)
!184 = !DILocation(line: 149, column: 28, scope: !178)
!185 = !DILocation(line: 149, column: 23, scope: !178)
!186 = !DILocalVariable(name: "min", scope: !178, file: !1, line: 150, type: !71)
!187 = !DILocation(line: 150, column: 18, scope: !178)
!188 = !DILocation(line: 150, column: 24, scope: !178)
!189 = !DILocation(line: 150, column: 24, scope: !190)
!190 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 1)
!191 = !DILocation(line: 150, column: 24, scope: !192)
!192 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 2)
!193 = !DILocation(line: 150, column: 24, scope: !194)
!194 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 3)
!195 = !DILocation(line: 150, column: 18, scope: !194)
!196 = !DILocalVariable(name: "max", scope: !178, file: !1, line: 151, type: !71)
!197 = !DILocation(line: 151, column: 18, scope: !178)
!198 = !DILocation(line: 151, column: 24, scope: !178)
!199 = !DILocation(line: 151, column: 24, scope: !190)
!200 = !DILocation(line: 151, column: 24, scope: !192)
!201 = !DILocation(line: 151, column: 24, scope: !194)
!202 = !DILocation(line: 151, column: 18, scope: !194)
!203 = !DILocation(line: 152, column: 20, scope: !178)
!204 = !DILocation(line: 152, column: 16, scope: !178)
!205 = !DILocation(line: 152, column: 44, scope: !178)
!206 = !DILocation(line: 152, column: 48, scope: !178)
!207 = !DILocation(line: 152, column: 47, scope: !178)
!208 = !DILocation(line: 152, column: 54, scope: !178)
!209 = !DILocation(line: 152, column: 58, scope: !178)
!210 = !DILocation(line: 152, column: 57, scope: !178)
!211 = !DILocation(line: 152, column: 52, scope: !178)
!212 = !DILocation(line: 152, column: 41, scope: !178)
!213 = !DILocation(line: 152, column: 33, scope: !190)
!214 = !DILocation(line: 152, column: 31, scope: !178)
!215 = !DILocation(line: 152, column: 25, scope: !178)
!216 = !DILocation(line: 152, column: 5, scope: !178)
!217 = !DILocation(line: 152, column: 10, scope: !178)
!218 = !DILocation(line: 152, column: 14, scope: !178)
!219 = !DILocation(line: 153, column: 45, scope: !178)
!220 = !DILocation(line: 153, column: 50, scope: !178)
!221 = !DILocation(line: 153, column: 40, scope: !178)
!222 = !DILocation(line: 153, column: 38, scope: !178)
!223 = !DILocation(line: 153, column: 5, scope: !178)
!224 = !DILocation(line: 153, column: 10, scope: !178)
!225 = !DILocation(line: 153, column: 14, scope: !178)
!226 = !DILocation(line: 154, column: 24, scope: !178)
!227 = !DILocation(line: 154, column: 28, scope: !178)
!228 = !DILocation(line: 154, column: 18, scope: !178)
!229 = !DILocation(line: 154, column: 5, scope: !178)
!230 = !DILocation(line: 154, column: 12, scope: !178)
!231 = !DILocation(line: 154, column: 16, scope: !178)
!232 = !DILocation(line: 155, column: 41, scope: !178)
!233 = !DILocation(line: 155, column: 46, scope: !178)
!234 = !DILocation(line: 155, column: 36, scope: !178)
!235 = !DILocation(line: 155, column: 34, scope: !178)
!236 = !DILocation(line: 155, column: 5, scope: !178)
!237 = !DILocation(line: 155, column: 12, scope: !178)
!238 = !DILocation(line: 155, column: 16, scope: !178)
!239 = !DILocation(line: 156, column: 5, scope: !178)
!240 = !DILocation(line: 159, column: 5, scope: !241)
!241 = distinct !DILexicalBlock(scope: !170, file: !1, line: 158, column: 8)
!242 = distinct !{!242, !240}
!243 = !DILocation(line: 159, column: 5, scope: !244)
!244 = !DILexicalBlockFile(scope: !245, file: !1, discriminator: 1)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 159, column: 5)
!246 = distinct !{!246, !247}
!247 = !DILocation(line: 159, column: 5, scope: !245)
!248 = !DILocation(line: 159, column: 5, scope: !249)
!249 = !DILexicalBlockFile(scope: !250, file: !1, discriminator: 2)
!250 = distinct !DILexicalBlock(scope: !245, file: !1, line: 159, column: 5)
!251 = !DILocation(line: 159, column: 5, scope: !252)
!252 = !DILexicalBlockFile(scope: !245, file: !1, discriminator: 3)
!253 = !DILocation(line: 161, column: 1, scope: !158)
!254 = distinct !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !1, file: !1, line: 165, type: !69, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!255 = !DILocalVariable(name: "x", arg: 1, scope: !254, file: !1, line: 165, type: !71)
!256 = !DILocation(line: 165, column: 34, scope: !254)
!257 = !DILocalVariable(name: "result", arg: 2, scope: !254, file: !1, line: 165, type: !72)
!258 = !DILocation(line: 165, column: 53, scope: !254)
!259 = !DILocation(line: 169, column: 6, scope: !260)
!260 = distinct !DILexicalBlock(scope: !254, file: !1, line: 169, column: 6)
!261 = !DILocation(line: 169, column: 8, scope: !260)
!262 = !DILocation(line: 169, column: 6, scope: !254)
!263 = !DILocation(line: 170, column: 5, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !1, line: 169, column: 17)
!265 = distinct !{!265, !263}
!266 = !DILocation(line: 170, column: 5, scope: !267)
!267 = !DILexicalBlockFile(scope: !268, file: !1, discriminator: 1)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 170, column: 5)
!269 = distinct !{!269, !270}
!270 = !DILocation(line: 170, column: 5, scope: !268)
!271 = !DILocation(line: 170, column: 5, scope: !272)
!272 = !DILexicalBlockFile(scope: !273, file: !1, discriminator: 2)
!273 = distinct !DILexicalBlock(scope: !268, file: !1, line: 170, column: 5)
!274 = !DILocation(line: 170, column: 5, scope: !275)
!275 = !DILexicalBlockFile(scope: !268, file: !1, discriminator: 3)
!276 = !DILocation(line: 171, column: 3, scope: !264)
!277 = !DILocation(line: 172, column: 16, scope: !278)
!278 = distinct !DILexicalBlock(scope: !260, file: !1, line: 172, column: 11)
!279 = !DILocation(line: 172, column: 11, scope: !278)
!280 = !DILocation(line: 172, column: 19, scope: !278)
!281 = !DILocation(line: 172, column: 11, scope: !260)
!282 = !DILocalVariable(name: "c1", scope: !283, file: !1, line: 173, type: !71)
!283 = distinct !DILexicalBlock(scope: !278, file: !1, line: 172, column: 44)
!284 = !DILocation(line: 173, column: 18, scope: !283)
!285 = !DILocalVariable(name: "c2", scope: !283, file: !1, line: 174, type: !71)
!286 = !DILocation(line: 174, column: 18, scope: !283)
!287 = !DILocalVariable(name: "c3", scope: !283, file: !1, line: 175, type: !71)
!288 = !DILocation(line: 175, column: 18, scope: !283)
!289 = !DILocalVariable(name: "c4", scope: !283, file: !1, line: 176, type: !71)
!290 = !DILocation(line: 176, column: 18, scope: !283)
!291 = !DILocalVariable(name: "c5", scope: !283, file: !1, line: 177, type: !71)
!292 = !DILocation(line: 177, column: 18, scope: !283)
!293 = !DILocalVariable(name: "c6", scope: !283, file: !1, line: 178, type: !71)
!294 = !DILocation(line: 178, column: 18, scope: !283)
!295 = !DILocalVariable(name: "c7", scope: !283, file: !1, line: 179, type: !71)
!296 = !DILocation(line: 179, column: 18, scope: !283)
!297 = !DILocalVariable(name: "c8", scope: !283, file: !1, line: 180, type: !71)
!298 = !DILocation(line: 180, column: 18, scope: !283)
!299 = !DILocalVariable(name: "c9", scope: !283, file: !1, line: 181, type: !71)
!300 = !DILocation(line: 181, column: 18, scope: !283)
!301 = !DILocalVariable(name: "t", scope: !283, file: !1, line: 182, type: !71)
!302 = !DILocation(line: 182, column: 18, scope: !283)
!303 = !DILocation(line: 182, column: 29, scope: !283)
!304 = !DILocation(line: 182, column: 37, scope: !283)
!305 = !DILocation(line: 182, column: 45, scope: !283)
!306 = !DILocation(line: 182, column: 53, scope: !283)
!307 = !DILocation(line: 182, column: 54, scope: !283)
!308 = !DILocation(line: 182, column: 51, scope: !283)
!309 = !DILocation(line: 182, column: 46, scope: !283)
!310 = !DILocation(line: 182, column: 43, scope: !283)
!311 = !DILocation(line: 182, column: 38, scope: !283)
!312 = !DILocation(line: 182, column: 35, scope: !283)
!313 = !DILocation(line: 182, column: 30, scope: !283)
!314 = !DILocation(line: 182, column: 27, scope: !283)
!315 = !DILocation(line: 183, column: 19, scope: !283)
!316 = !DILocation(line: 183, column: 30, scope: !283)
!317 = !DILocation(line: 183, column: 38, scope: !283)
!318 = !DILocation(line: 183, column: 46, scope: !283)
!319 = !DILocation(line: 183, column: 54, scope: !283)
!320 = !DILocation(line: 183, column: 62, scope: !283)
!321 = !DILocation(line: 183, column: 64, scope: !283)
!322 = !DILocation(line: 183, column: 63, scope: !283)
!323 = !DILocation(line: 183, column: 60, scope: !283)
!324 = !DILocation(line: 183, column: 55, scope: !283)
!325 = !DILocation(line: 183, column: 52, scope: !283)
!326 = !DILocation(line: 183, column: 47, scope: !283)
!327 = !DILocation(line: 183, column: 44, scope: !283)
!328 = !DILocation(line: 183, column: 39, scope: !283)
!329 = !DILocation(line: 183, column: 36, scope: !283)
!330 = !DILocation(line: 183, column: 31, scope: !283)
!331 = !DILocation(line: 183, column: 28, scope: !283)
!332 = !DILocation(line: 183, column: 21, scope: !283)
!333 = !DILocation(line: 183, column: 5, scope: !283)
!334 = !DILocation(line: 183, column: 13, scope: !283)
!335 = !DILocation(line: 183, column: 17, scope: !283)
!336 = !DILocation(line: 184, column: 42, scope: !283)
!337 = !DILocation(line: 184, column: 50, scope: !283)
!338 = !DILocation(line: 184, column: 37, scope: !283)
!339 = !DILocation(line: 184, column: 35, scope: !283)
!340 = !DILocation(line: 184, column: 5, scope: !283)
!341 = !DILocation(line: 184, column: 13, scope: !283)
!342 = !DILocation(line: 184, column: 17, scope: !283)
!343 = !DILocation(line: 185, column: 5, scope: !283)
!344 = !DILocation(line: 187, column: 16, scope: !345)
!345 = distinct !DILexicalBlock(scope: !278, file: !1, line: 187, column: 11)
!346 = !DILocation(line: 187, column: 11, scope: !345)
!347 = !DILocation(line: 187, column: 19, scope: !345)
!348 = !DILocation(line: 187, column: 11, scope: !278)
!349 = !DILocalVariable(name: "t", scope: !350, file: !1, line: 188, type: !49)
!350 = distinct !DILexicalBlock(scope: !345, file: !1, line: 187, column: 26)
!351 = !DILocation(line: 188, column: 12, scope: !350)
!352 = !DILocation(line: 188, column: 25, scope: !350)
!353 = !DILocation(line: 188, column: 24, scope: !350)
!354 = !DILocation(line: 188, column: 27, scope: !350)
!355 = !DILocation(line: 188, column: 19, scope: !350)
!356 = !DILocation(line: 188, column: 35, scope: !350)
!357 = !DILocation(line: 188, column: 36, scope: !350)
!358 = !DILocation(line: 188, column: 33, scope: !350)
!359 = !DILocalVariable(name: "c", scope: !350, file: !1, line: 189, type: !73)
!360 = !DILocation(line: 189, column: 19, scope: !350)
!361 = !DILocation(line: 190, column: 27, scope: !350)
!362 = !DILocation(line: 190, column: 5, scope: !350)
!363 = !DILocation(line: 191, column: 19, scope: !350)
!364 = !DILocation(line: 191, column: 25, scope: !350)
!365 = !DILocation(line: 191, column: 21, scope: !350)
!366 = !DILocation(line: 191, column: 5, scope: !350)
!367 = !DILocation(line: 191, column: 13, scope: !350)
!368 = !DILocation(line: 191, column: 17, scope: !350)
!369 = !DILocation(line: 192, column: 24, scope: !350)
!370 = !DILocation(line: 192, column: 30, scope: !350)
!371 = !DILocation(line: 192, column: 26, scope: !350)
!372 = !DILocation(line: 192, column: 19, scope: !350)
!373 = !DILocation(line: 192, column: 5, scope: !350)
!374 = !DILocation(line: 192, column: 13, scope: !350)
!375 = !DILocation(line: 192, column: 17, scope: !350)
!376 = !DILocation(line: 193, column: 5, scope: !350)
!377 = !DILocation(line: 196, column: 29, scope: !378)
!378 = distinct !DILexicalBlock(scope: !345, file: !1, line: 195, column: 8)
!379 = !DILocation(line: 196, column: 27, scope: !378)
!380 = !DILocation(line: 196, column: 19, scope: !378)
!381 = !DILocation(line: 196, column: 5, scope: !378)
!382 = !DILocation(line: 196, column: 13, scope: !378)
!383 = !DILocation(line: 196, column: 17, scope: !378)
!384 = !DILocation(line: 197, column: 42, scope: !378)
!385 = !DILocation(line: 197, column: 50, scope: !378)
!386 = !DILocation(line: 197, column: 37, scope: !378)
!387 = !DILocation(line: 197, column: 35, scope: !378)
!388 = !DILocation(line: 197, column: 5, scope: !378)
!389 = !DILocation(line: 197, column: 13, scope: !378)
!390 = !DILocation(line: 197, column: 17, scope: !378)
!391 = !DILocation(line: 198, column: 5, scope: !378)
!392 = !DILocation(line: 200, column: 1, scope: !254)
!393 = distinct !DISubprogram(name: "cheb_eval_e", scope: !394, file: !394, line: 3, type: !395, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!394 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!395 = !DISubroutineType(types: !396)
!396 = !{!51, !397, !71, !72}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!399 = !DILocalVariable(name: "cs", arg: 1, scope: !393, file: !394, line: 3, type: !397)
!400 = !DILocation(line: 3, column: 33, scope: !393)
!401 = !DILocalVariable(name: "x", arg: 2, scope: !393, file: !394, line: 4, type: !71)
!402 = !DILocation(line: 4, column: 26, scope: !393)
!403 = !DILocalVariable(name: "result", arg: 3, scope: !393, file: !394, line: 5, type: !72)
!404 = !DILocation(line: 5, column: 29, scope: !393)
!405 = !DILocalVariable(name: "j", scope: !393, file: !394, line: 7, type: !51)
!406 = !DILocation(line: 7, column: 7, scope: !393)
!407 = !DILocalVariable(name: "d", scope: !393, file: !394, line: 8, type: !49)
!408 = !DILocation(line: 8, column: 10, scope: !393)
!409 = !DILocalVariable(name: "dd", scope: !393, file: !394, line: 9, type: !49)
!410 = !DILocation(line: 9, column: 10, scope: !393)
!411 = !DILocalVariable(name: "y", scope: !393, file: !394, line: 11, type: !49)
!412 = !DILocation(line: 11, column: 10, scope: !393)
!413 = !DILocation(line: 11, column: 20, scope: !393)
!414 = !DILocation(line: 11, column: 19, scope: !393)
!415 = !DILocation(line: 11, column: 24, scope: !393)
!416 = !DILocation(line: 11, column: 28, scope: !393)
!417 = !DILocation(line: 11, column: 22, scope: !393)
!418 = !DILocation(line: 11, column: 32, scope: !393)
!419 = !DILocation(line: 11, column: 36, scope: !393)
!420 = !DILocation(line: 11, column: 30, scope: !393)
!421 = !DILocation(line: 11, column: 42, scope: !393)
!422 = !DILocation(line: 11, column: 46, scope: !393)
!423 = !DILocation(line: 11, column: 50, scope: !393)
!424 = !DILocation(line: 11, column: 54, scope: !393)
!425 = !DILocation(line: 11, column: 48, scope: !393)
!426 = !DILocation(line: 11, column: 39, scope: !393)
!427 = !DILocalVariable(name: "y2", scope: !393, file: !394, line: 12, type: !49)
!428 = !DILocation(line: 12, column: 10, scope: !393)
!429 = !DILocation(line: 12, column: 21, scope: !393)
!430 = !DILocation(line: 12, column: 19, scope: !393)
!431 = !DILocalVariable(name: "e", scope: !393, file: !394, line: 14, type: !49)
!432 = !DILocation(line: 14, column: 10, scope: !393)
!433 = !DILocation(line: 16, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !393, file: !394, line: 16, column: 3)
!435 = !DILocation(line: 16, column: 15, scope: !434)
!436 = !DILocation(line: 16, column: 9, scope: !434)
!437 = !DILocation(line: 16, column: 7, scope: !434)
!438 = !DILocation(line: 16, column: 22, scope: !439)
!439 = !DILexicalBlockFile(scope: !440, file: !394, discriminator: 1)
!440 = distinct !DILexicalBlock(scope: !434, file: !394, line: 16, column: 3)
!441 = !DILocation(line: 16, column: 23, scope: !439)
!442 = !DILocation(line: 16, column: 3, scope: !439)
!443 = !DILocalVariable(name: "temp", scope: !444, file: !394, line: 17, type: !49)
!444 = distinct !DILexicalBlock(scope: !440, file: !394, line: 16, column: 33)
!445 = !DILocation(line: 17, column: 12, scope: !444)
!446 = !DILocation(line: 17, column: 19, scope: !444)
!447 = !DILocation(line: 18, column: 9, scope: !444)
!448 = !DILocation(line: 18, column: 12, scope: !444)
!449 = !DILocation(line: 18, column: 11, scope: !444)
!450 = !DILocation(line: 18, column: 16, scope: !444)
!451 = !DILocation(line: 18, column: 14, scope: !444)
!452 = !DILocation(line: 18, column: 27, scope: !444)
!453 = !DILocation(line: 18, column: 21, scope: !444)
!454 = !DILocation(line: 18, column: 25, scope: !444)
!455 = !DILocation(line: 18, column: 19, scope: !444)
!456 = !DILocation(line: 18, column: 7, scope: !444)
!457 = !DILocation(line: 19, column: 15, scope: !444)
!458 = !DILocation(line: 19, column: 18, scope: !444)
!459 = !DILocation(line: 19, column: 17, scope: !444)
!460 = !DILocation(line: 19, column: 10, scope: !444)
!461 = !DILocation(line: 19, column: 31, scope: !444)
!462 = !DILocation(line: 19, column: 26, scope: !463)
!463 = !DILexicalBlockFile(scope: !444, file: !394, discriminator: 1)
!464 = !DILocation(line: 19, column: 24, scope: !444)
!465 = !DILocation(line: 19, column: 48, scope: !444)
!466 = !DILocation(line: 19, column: 42, scope: !444)
!467 = !DILocation(line: 19, column: 46, scope: !444)
!468 = !DILocation(line: 19, column: 37, scope: !469)
!469 = !DILexicalBlockFile(scope: !444, file: !394, discriminator: 2)
!470 = !DILocation(line: 19, column: 35, scope: !444)
!471 = !DILocation(line: 19, column: 7, scope: !444)
!472 = !DILocation(line: 20, column: 10, scope: !444)
!473 = !DILocation(line: 20, column: 8, scope: !444)
!474 = !DILocation(line: 21, column: 3, scope: !444)
!475 = !DILocation(line: 16, column: 29, scope: !476)
!476 = !DILexicalBlockFile(scope: !440, file: !394, discriminator: 2)
!477 = !DILocation(line: 16, column: 3, scope: !476)
!478 = distinct !{!478, !479}
!479 = !DILocation(line: 16, column: 3, scope: !393)
!480 = !DILocalVariable(name: "temp", scope: !481, file: !394, line: 24, type: !49)
!481 = distinct !DILexicalBlock(scope: !393, file: !394, line: 23, column: 3)
!482 = !DILocation(line: 24, column: 12, scope: !481)
!483 = !DILocation(line: 24, column: 19, scope: !481)
!484 = !DILocation(line: 25, column: 9, scope: !481)
!485 = !DILocation(line: 25, column: 11, scope: !481)
!486 = !DILocation(line: 25, column: 10, scope: !481)
!487 = !DILocation(line: 25, column: 15, scope: !481)
!488 = !DILocation(line: 25, column: 13, scope: !481)
!489 = !DILocation(line: 25, column: 26, scope: !481)
!490 = !DILocation(line: 25, column: 30, scope: !481)
!491 = !DILocation(line: 25, column: 24, scope: !481)
!492 = !DILocation(line: 25, column: 18, scope: !481)
!493 = !DILocation(line: 25, column: 7, scope: !481)
!494 = !DILocation(line: 26, column: 15, scope: !481)
!495 = !DILocation(line: 26, column: 17, scope: !481)
!496 = !DILocation(line: 26, column: 16, scope: !481)
!497 = !DILocation(line: 26, column: 10, scope: !481)
!498 = !DILocation(line: 26, column: 30, scope: !481)
!499 = !DILocation(line: 26, column: 25, scope: !500)
!500 = !DILexicalBlockFile(scope: !481, file: !394, discriminator: 1)
!501 = !DILocation(line: 26, column: 23, scope: !481)
!502 = !DILocation(line: 26, column: 47, scope: !481)
!503 = !DILocation(line: 26, column: 51, scope: !481)
!504 = !DILocation(line: 26, column: 42, scope: !505)
!505 = !DILexicalBlockFile(scope: !481, file: !394, discriminator: 2)
!506 = !DILocation(line: 26, column: 40, scope: !481)
!507 = !DILocation(line: 26, column: 34, scope: !481)
!508 = !DILocation(line: 26, column: 7, scope: !481)
!509 = !DILocation(line: 29, column: 17, scope: !393)
!510 = !DILocation(line: 29, column: 3, scope: !393)
!511 = !DILocation(line: 29, column: 11, scope: !393)
!512 = !DILocation(line: 29, column: 15, scope: !393)
!513 = !DILocation(line: 30, column: 35, scope: !393)
!514 = !DILocation(line: 30, column: 33, scope: !393)
!515 = !DILocation(line: 30, column: 50, scope: !393)
!516 = !DILocation(line: 30, column: 54, scope: !393)
!517 = !DILocation(line: 30, column: 44, scope: !393)
!518 = !DILocation(line: 30, column: 48, scope: !393)
!519 = !DILocation(line: 30, column: 39, scope: !393)
!520 = !DILocation(line: 30, column: 37, scope: !393)
!521 = !DILocation(line: 30, column: 3, scope: !393)
!522 = !DILocation(line: 30, column: 11, scope: !393)
!523 = !DILocation(line: 30, column: 15, scope: !393)
!524 = !DILocation(line: 32, column: 3, scope: !393)
!525 = distinct !DISubprogram(name: "gsl_sf_log_1plusx_mx_e", scope: !1, file: !1, line: 204, type: !69, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!526 = !DILocalVariable(name: "x", arg: 1, scope: !525, file: !1, line: 204, type: !71)
!527 = !DILocation(line: 204, column: 37, scope: !525)
!528 = !DILocalVariable(name: "result", arg: 2, scope: !525, file: !1, line: 204, type: !72)
!529 = !DILocation(line: 204, column: 56, scope: !525)
!530 = !DILocation(line: 208, column: 6, scope: !531)
!531 = distinct !DILexicalBlock(scope: !525, file: !1, line: 208, column: 6)
!532 = !DILocation(line: 208, column: 8, scope: !531)
!533 = !DILocation(line: 208, column: 6, scope: !525)
!534 = !DILocation(line: 209, column: 5, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !1, line: 208, column: 17)
!536 = distinct !{!536, !534}
!537 = !DILocation(line: 209, column: 5, scope: !538)
!538 = !DILexicalBlockFile(scope: !539, file: !1, discriminator: 1)
!539 = distinct !DILexicalBlock(scope: !535, file: !1, line: 209, column: 5)
!540 = distinct !{!540, !541}
!541 = !DILocation(line: 209, column: 5, scope: !539)
!542 = !DILocation(line: 209, column: 5, scope: !543)
!543 = !DILexicalBlockFile(scope: !544, file: !1, discriminator: 2)
!544 = distinct !DILexicalBlock(scope: !539, file: !1, line: 209, column: 5)
!545 = !DILocation(line: 209, column: 5, scope: !546)
!546 = !DILexicalBlockFile(scope: !539, file: !1, discriminator: 3)
!547 = !DILocation(line: 210, column: 3, scope: !535)
!548 = !DILocation(line: 211, column: 16, scope: !549)
!549 = distinct !DILexicalBlock(scope: !531, file: !1, line: 211, column: 11)
!550 = !DILocation(line: 211, column: 11, scope: !549)
!551 = !DILocation(line: 211, column: 19, scope: !549)
!552 = !DILocation(line: 211, column: 11, scope: !531)
!553 = !DILocalVariable(name: "c1", scope: !554, file: !1, line: 212, type: !71)
!554 = distinct !DILexicalBlock(scope: !549, file: !1, line: 211, column: 44)
!555 = !DILocation(line: 212, column: 18, scope: !554)
!556 = !DILocalVariable(name: "c2", scope: !554, file: !1, line: 213, type: !71)
!557 = !DILocation(line: 213, column: 18, scope: !554)
!558 = !DILocalVariable(name: "c3", scope: !554, file: !1, line: 214, type: !71)
!559 = !DILocation(line: 214, column: 18, scope: !554)
!560 = !DILocalVariable(name: "c4", scope: !554, file: !1, line: 215, type: !71)
!561 = !DILocation(line: 215, column: 18, scope: !554)
!562 = !DILocalVariable(name: "c5", scope: !554, file: !1, line: 216, type: !71)
!563 = !DILocation(line: 216, column: 18, scope: !554)
!564 = !DILocalVariable(name: "c6", scope: !554, file: !1, line: 217, type: !71)
!565 = !DILocation(line: 217, column: 18, scope: !554)
!566 = !DILocalVariable(name: "c7", scope: !554, file: !1, line: 218, type: !71)
!567 = !DILocation(line: 218, column: 18, scope: !554)
!568 = !DILocalVariable(name: "c8", scope: !554, file: !1, line: 219, type: !71)
!569 = !DILocation(line: 219, column: 18, scope: !554)
!570 = !DILocalVariable(name: "c9", scope: !554, file: !1, line: 220, type: !71)
!571 = !DILocation(line: 220, column: 18, scope: !554)
!572 = !DILocalVariable(name: "t", scope: !554, file: !1, line: 221, type: !71)
!573 = !DILocation(line: 221, column: 18, scope: !554)
!574 = !DILocation(line: 221, column: 29, scope: !554)
!575 = !DILocation(line: 221, column: 37, scope: !554)
!576 = !DILocation(line: 221, column: 45, scope: !554)
!577 = !DILocation(line: 221, column: 53, scope: !554)
!578 = !DILocation(line: 221, column: 54, scope: !554)
!579 = !DILocation(line: 221, column: 51, scope: !554)
!580 = !DILocation(line: 221, column: 46, scope: !554)
!581 = !DILocation(line: 221, column: 43, scope: !554)
!582 = !DILocation(line: 221, column: 38, scope: !554)
!583 = !DILocation(line: 221, column: 35, scope: !554)
!584 = !DILocation(line: 221, column: 30, scope: !554)
!585 = !DILocation(line: 221, column: 27, scope: !554)
!586 = !DILocation(line: 222, column: 19, scope: !554)
!587 = !DILocation(line: 222, column: 21, scope: !554)
!588 = !DILocation(line: 222, column: 20, scope: !554)
!589 = !DILocation(line: 222, column: 31, scope: !554)
!590 = !DILocation(line: 222, column: 39, scope: !554)
!591 = !DILocation(line: 222, column: 47, scope: !554)
!592 = !DILocation(line: 222, column: 55, scope: !554)
!593 = !DILocation(line: 222, column: 57, scope: !554)
!594 = !DILocation(line: 222, column: 56, scope: !554)
!595 = !DILocation(line: 222, column: 53, scope: !554)
!596 = !DILocation(line: 222, column: 48, scope: !554)
!597 = !DILocation(line: 222, column: 45, scope: !554)
!598 = !DILocation(line: 222, column: 40, scope: !554)
!599 = !DILocation(line: 222, column: 37, scope: !554)
!600 = !DILocation(line: 222, column: 32, scope: !554)
!601 = !DILocation(line: 222, column: 29, scope: !554)
!602 = !DILocation(line: 222, column: 23, scope: !554)
!603 = !DILocation(line: 222, column: 5, scope: !554)
!604 = !DILocation(line: 222, column: 13, scope: !554)
!605 = !DILocation(line: 222, column: 17, scope: !554)
!606 = !DILocation(line: 223, column: 42, scope: !554)
!607 = !DILocation(line: 223, column: 50, scope: !554)
!608 = !DILocation(line: 223, column: 37, scope: !554)
!609 = !DILocation(line: 223, column: 35, scope: !554)
!610 = !DILocation(line: 223, column: 5, scope: !554)
!611 = !DILocation(line: 223, column: 13, scope: !554)
!612 = !DILocation(line: 223, column: 17, scope: !554)
!613 = !DILocation(line: 224, column: 5, scope: !554)
!614 = !DILocation(line: 226, column: 16, scope: !615)
!615 = distinct !DILexicalBlock(scope: !549, file: !1, line: 226, column: 11)
!616 = !DILocation(line: 226, column: 11, scope: !615)
!617 = !DILocation(line: 226, column: 19, scope: !615)
!618 = !DILocation(line: 226, column: 11, scope: !549)
!619 = !DILocalVariable(name: "t", scope: !620, file: !1, line: 227, type: !49)
!620 = distinct !DILexicalBlock(scope: !615, file: !1, line: 226, column: 26)
!621 = !DILocation(line: 227, column: 12, scope: !620)
!622 = !DILocation(line: 227, column: 25, scope: !620)
!623 = !DILocation(line: 227, column: 24, scope: !620)
!624 = !DILocation(line: 227, column: 27, scope: !620)
!625 = !DILocation(line: 227, column: 19, scope: !620)
!626 = !DILocation(line: 227, column: 35, scope: !620)
!627 = !DILocation(line: 227, column: 36, scope: !620)
!628 = !DILocation(line: 227, column: 33, scope: !620)
!629 = !DILocalVariable(name: "c", scope: !620, file: !1, line: 228, type: !73)
!630 = !DILocation(line: 228, column: 19, scope: !620)
!631 = !DILocation(line: 229, column: 29, scope: !620)
!632 = !DILocation(line: 229, column: 5, scope: !620)
!633 = !DILocation(line: 230, column: 19, scope: !620)
!634 = !DILocation(line: 230, column: 21, scope: !620)
!635 = !DILocation(line: 230, column: 20, scope: !620)
!636 = !DILocation(line: 230, column: 27, scope: !620)
!637 = !DILocation(line: 230, column: 23, scope: !620)
!638 = !DILocation(line: 230, column: 5, scope: !620)
!639 = !DILocation(line: 230, column: 13, scope: !620)
!640 = !DILocation(line: 230, column: 17, scope: !620)
!641 = !DILocation(line: 231, column: 19, scope: !620)
!642 = !DILocation(line: 231, column: 21, scope: !620)
!643 = !DILocation(line: 231, column: 20, scope: !620)
!644 = !DILocation(line: 231, column: 27, scope: !620)
!645 = !DILocation(line: 231, column: 23, scope: !620)
!646 = !DILocation(line: 231, column: 5, scope: !620)
!647 = !DILocation(line: 231, column: 13, scope: !620)
!648 = !DILocation(line: 231, column: 17, scope: !620)
!649 = !DILocation(line: 232, column: 5, scope: !620)
!650 = !DILocalVariable(name: "lterm", scope: !651, file: !1, line: 235, type: !71)
!651 = distinct !DILexicalBlock(scope: !615, file: !1, line: 234, column: 8)
!652 = !DILocation(line: 235, column: 18, scope: !651)
!653 = !DILocation(line: 235, column: 36, scope: !651)
!654 = !DILocation(line: 235, column: 34, scope: !651)
!655 = !DILocation(line: 235, column: 26, scope: !651)
!656 = !DILocation(line: 236, column: 19, scope: !651)
!657 = !DILocation(line: 236, column: 27, scope: !651)
!658 = !DILocation(line: 236, column: 25, scope: !651)
!659 = !DILocation(line: 236, column: 5, scope: !651)
!660 = !DILocation(line: 236, column: 13, scope: !651)
!661 = !DILocation(line: 236, column: 17, scope: !651)
!662 = !DILocation(line: 237, column: 43, scope: !651)
!663 = !DILocation(line: 237, column: 38, scope: !651)
!664 = !DILocation(line: 237, column: 57, scope: !651)
!665 = !DILocation(line: 237, column: 52, scope: !666)
!666 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 1)
!667 = !DILocation(line: 237, column: 50, scope: !651)
!668 = !DILocation(line: 237, column: 35, scope: !651)
!669 = !DILocation(line: 237, column: 5, scope: !651)
!670 = !DILocation(line: 237, column: 13, scope: !651)
!671 = !DILocation(line: 237, column: 17, scope: !651)
!672 = !DILocation(line: 238, column: 5, scope: !651)
!673 = !DILocation(line: 240, column: 1, scope: !525)
!674 = distinct !DISubprogram(name: "gsl_sf_log", scope: !1, file: !1, line: 248, type: !675, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!675 = !DISubroutineType(types: !676)
!676 = !{!49, !71}
!677 = !DILocalVariable(name: "x", arg: 1, scope: !674, file: !1, line: 248, type: !71)
!678 = !DILocation(line: 248, column: 32, scope: !674)
!679 = !DILocalVariable(name: "result", scope: !674, file: !1, line: 250, type: !73)
!680 = !DILocation(line: 250, column: 3, scope: !674)
!681 = !DILocalVariable(name: "status", scope: !674, file: !1, line: 250, type: !51)
!682 = !DILocation(line: 250, column: 3, scope: !683)
!683 = distinct !DILexicalBlock(scope: !674, file: !1, line: 250, column: 3)
!684 = !DILocation(line: 250, column: 3, scope: !685)
!685 = !DILexicalBlockFile(scope: !686, file: !1, discriminator: 1)
!686 = distinct !DILexicalBlock(scope: !683, file: !1, line: 250, column: 3)
!687 = distinct !{!687, !688}
!688 = !DILocation(line: 250, column: 3, scope: !686)
!689 = !DILocation(line: 250, column: 3, scope: !690)
!690 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 2)
!691 = distinct !DILexicalBlock(scope: !686, file: !1, line: 250, column: 3)
!692 = !DILocation(line: 250, column: 3, scope: !693)
!693 = !DILexicalBlockFile(scope: !686, file: !1, discriminator: 3)
!694 = !DILocation(line: 250, column: 3, scope: !695)
!695 = !DILexicalBlockFile(scope: !674, file: !1, discriminator: 4)
!696 = !DILocation(line: 251, column: 1, scope: !674)
!697 = distinct !DISubprogram(name: "gsl_sf_log_abs", scope: !1, file: !1, line: 253, type: !675, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!698 = !DILocalVariable(name: "x", arg: 1, scope: !697, file: !1, line: 253, type: !71)
!699 = !DILocation(line: 253, column: 36, scope: !697)
!700 = !DILocalVariable(name: "result", scope: !697, file: !1, line: 255, type: !73)
!701 = !DILocation(line: 255, column: 3, scope: !697)
!702 = !DILocalVariable(name: "status", scope: !697, file: !1, line: 255, type: !51)
!703 = !DILocation(line: 255, column: 3, scope: !704)
!704 = distinct !DILexicalBlock(scope: !697, file: !1, line: 255, column: 3)
!705 = !DILocation(line: 255, column: 3, scope: !706)
!706 = !DILexicalBlockFile(scope: !707, file: !1, discriminator: 1)
!707 = distinct !DILexicalBlock(scope: !704, file: !1, line: 255, column: 3)
!708 = distinct !{!708, !709}
!709 = !DILocation(line: 255, column: 3, scope: !707)
!710 = !DILocation(line: 255, column: 3, scope: !711)
!711 = !DILexicalBlockFile(scope: !712, file: !1, discriminator: 2)
!712 = distinct !DILexicalBlock(scope: !707, file: !1, line: 255, column: 3)
!713 = !DILocation(line: 255, column: 3, scope: !714)
!714 = !DILexicalBlockFile(scope: !707, file: !1, discriminator: 3)
!715 = !DILocation(line: 255, column: 3, scope: !716)
!716 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 4)
!717 = !DILocation(line: 256, column: 1, scope: !697)
!718 = distinct !DISubprogram(name: "gsl_sf_log_1plusx", scope: !1, file: !1, line: 258, type: !675, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!719 = !DILocalVariable(name: "x", arg: 1, scope: !718, file: !1, line: 258, type: !71)
!720 = !DILocation(line: 258, column: 39, scope: !718)
!721 = !DILocalVariable(name: "result", scope: !718, file: !1, line: 260, type: !73)
!722 = !DILocation(line: 260, column: 3, scope: !718)
!723 = !DILocalVariable(name: "status", scope: !718, file: !1, line: 260, type: !51)
!724 = !DILocation(line: 260, column: 3, scope: !725)
!725 = distinct !DILexicalBlock(scope: !718, file: !1, line: 260, column: 3)
!726 = !DILocation(line: 260, column: 3, scope: !727)
!727 = !DILexicalBlockFile(scope: !728, file: !1, discriminator: 1)
!728 = distinct !DILexicalBlock(scope: !725, file: !1, line: 260, column: 3)
!729 = distinct !{!729, !730}
!730 = !DILocation(line: 260, column: 3, scope: !728)
!731 = !DILocation(line: 260, column: 3, scope: !732)
!732 = !DILexicalBlockFile(scope: !733, file: !1, discriminator: 2)
!733 = distinct !DILexicalBlock(scope: !728, file: !1, line: 260, column: 3)
!734 = !DILocation(line: 260, column: 3, scope: !735)
!735 = !DILexicalBlockFile(scope: !728, file: !1, discriminator: 3)
!736 = !DILocation(line: 260, column: 3, scope: !737)
!737 = !DILexicalBlockFile(scope: !718, file: !1, discriminator: 4)
!738 = !DILocation(line: 261, column: 1, scope: !718)
!739 = distinct !DISubprogram(name: "gsl_sf_log_1plusx_mx", scope: !1, file: !1, line: 263, type: !675, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!740 = !DILocalVariable(name: "x", arg: 1, scope: !739, file: !1, line: 263, type: !71)
!741 = !DILocation(line: 263, column: 42, scope: !739)
!742 = !DILocalVariable(name: "result", scope: !739, file: !1, line: 265, type: !73)
!743 = !DILocation(line: 265, column: 3, scope: !739)
!744 = !DILocalVariable(name: "status", scope: !739, file: !1, line: 265, type: !51)
!745 = !DILocation(line: 265, column: 3, scope: !746)
!746 = distinct !DILexicalBlock(scope: !739, file: !1, line: 265, column: 3)
!747 = !DILocation(line: 265, column: 3, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !1, discriminator: 1)
!749 = distinct !DILexicalBlock(scope: !746, file: !1, line: 265, column: 3)
!750 = distinct !{!750, !751}
!751 = !DILocation(line: 265, column: 3, scope: !749)
!752 = !DILocation(line: 265, column: 3, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !1, discriminator: 2)
!754 = distinct !DILexicalBlock(scope: !749, file: !1, line: 265, column: 3)
!755 = !DILocation(line: 265, column: 3, scope: !756)
!756 = !DILexicalBlockFile(scope: !749, file: !1, discriminator: 3)
!757 = !DILocation(line: 265, column: 3, scope: !758)
!758 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 4)
!759 = !DILocation(line: 266, column: 1, scope: !739)
