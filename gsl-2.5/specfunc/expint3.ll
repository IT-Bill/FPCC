; ModuleID = 'expint3.c'
source_filename = "expint3.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"expint3.c\00", align 1
@expint3_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([24 x double], [24 x double]* @expint3_data, i32 0, i32 0), i32 23, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8
@expint3a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([23 x double], [23 x double]* @expint3a_data, i32 0, i32 0), i32 22, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"gsl_sf_expint_3_e(x, &result)\00", align 1
@expint3_data = internal global [24 x double] [double 0x3FF44EA2FF136FD0, double 0xBFCFDA334A790CCC, double 0x3FB49D5DCC7373C1, double 0xBF9A642AD9C86EF1, double 0x3F7F210CF36A23F4, double 0xBF60A2AD639A2371, double 0x3F40156B3FB1FD3B, double 0xBF1C3A6EC82A9B4A, double 0x3EF6993F5A050C21, double 0xBED0987AD399599C, double 0x3EA67A9AA92B63B2, double 0xBE7C38A0E24E9B03, double 0x3E507ED579D6B29F, double 0xBE2207F6041337C3, double 0x3DF2800259E967D1, double 0xBDC1E0B756287962, double 0x3D9052C1BCD68276, double -4.013652e-13, double 4.123340e-14, double -4.033800e-15, double 3.766000e-16, double -3.360000e-17, double 2.900000e-18, double -2.000000e-19], align 16
@expint3a_data = internal global [23 x double] [double 0x3FFED52EB4C12BF8, double 0xBFA1E242B7DA0165, double 0x3F57C328F8072947, double 0xBF1765B12C250B5C, double 0x3EDD966E82FA6A76, double 0xBEA662F861FD5F8F, double 0x3E73712104D60093, double 0xBE42DC469C60CE74, double 0x3E140D80C3F8A9BD, double 0xBDE70B1F33D510A2, double 0x3DBC51647913B2B9, double 0xBD927409C8B94787, double 7.201041e-13, double -1.294906e-13, double 2.428700e-14, double -4.733100e-15, double 9.553100e-16, double -1.991000e-16, double 4.280000e-17, double -9.400000e-18, double 2.100000e-18, double -5.000000e-19, double 1.000000e-19], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expint_3_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !68 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !80, metadata !81), !dbg !82
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !83, metadata !81), !dbg !84
  call void @llvm.dbg.declare(metadata double* %6, metadata !85, metadata !81), !dbg !86
  store double 0x3FEC9349C4C603ED, double* %6, align 8, !dbg !86
  %12 = load double, double* %4, align 8, !dbg !87
  %13 = fcmp olt double %12, 0.000000e+00, !dbg !89
  br i1 %13, label %14, label %23, !dbg !90

; <label>:14:                                     ; preds = %2
  br label %15, !dbg !91, !llvm.loop !93

; <label>:15:                                     ; preds = %14
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !94
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !94
  store double 0x7FF8000000000000, double* %17, align 8, !dbg !94
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !94
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !94
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !94
  br label %20, !dbg !94, !llvm.loop !97

; <label>:20:                                     ; preds = %15
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 107, i32 1), !dbg !99
  store i32 1, i32* %3, align 4, !dbg !99
  br label %102, !dbg !99
                                                  ; No predecessors!
  br label %22, !dbg !102

; <label>:22:                                     ; preds = %21
  br label %102, !dbg !104

; <label>:23:                                     ; preds = %2
  %24 = load double, double* %4, align 8, !dbg !105
  %25 = fcmp olt double %24, 0x3EE4519884312501, !dbg !107
  br i1 %25, label %26, label %32, !dbg !108

; <label>:26:                                     ; preds = %23
  %27 = load double, double* %4, align 8, !dbg !109
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !111
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !112
  store double %27, double* %29, align 8, !dbg !113
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !114
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !115
  store double 0.000000e+00, double* %31, align 8, !dbg !116
  store i32 0, i32* %3, align 4, !dbg !117
  br label %102, !dbg !117

; <label>:32:                                     ; preds = %23
  %33 = load double, double* %4, align 8, !dbg !118
  %34 = fcmp ole double %33, 2.000000e+00, !dbg !120
  br i1 %34, label %35, label %57, !dbg !121

; <label>:35:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata double* %7, metadata !122, metadata !81), !dbg !124
  %36 = load double, double* %4, align 8, !dbg !125
  %37 = load double, double* %4, align 8, !dbg !126
  %38 = fmul double %36, %37, !dbg !127
  %39 = load double, double* %4, align 8, !dbg !128
  %40 = fmul double %38, %39, !dbg !129
  %41 = fdiv double %40, 4.000000e+00, !dbg !130
  %42 = fsub double %41, 1.000000e+00, !dbg !131
  store double %42, double* %7, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !132, metadata !81), !dbg !133
  %43 = load double, double* %7, align 8, !dbg !134
  %44 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @expint3_cs, double %43, %struct.gsl_sf_result_struct* %8), !dbg !135
  %45 = load double, double* %4, align 8, !dbg !136
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !137
  %47 = load double, double* %46, align 8, !dbg !137
  %48 = fmul double %45, %47, !dbg !138
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !139
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !140
  store double %48, double* %50, align 8, !dbg !141
  %51 = load double, double* %4, align 8, !dbg !142
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !143
  %53 = load double, double* %52, align 8, !dbg !143
  %54 = fmul double %51, %53, !dbg !144
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !145
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !146
  store double %54, double* %56, align 8, !dbg !147
  store i32 0, i32* %3, align 4, !dbg !148
  br label %102, !dbg !148

; <label>:57:                                     ; preds = %32
  %58 = load double, double* %4, align 8, !dbg !149
  %59 = call double @pow(double 0x404205966F2B4F12, double 0x3FD5555555555555) #6, !dbg !151
  %60 = fcmp olt double %58, %59, !dbg !152
  br i1 %60, label %61, label %97, !dbg !153

; <label>:61:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata double* %9, metadata !154, metadata !81), !dbg !156
  %62 = load double, double* %4, align 8, !dbg !157
  %63 = load double, double* %4, align 8, !dbg !158
  %64 = fmul double %62, %63, !dbg !159
  %65 = load double, double* %4, align 8, !dbg !160
  %66 = fmul double %64, %65, !dbg !161
  %67 = fdiv double 1.600000e+01, %66, !dbg !162
  %68 = fsub double %67, 1.000000e+00, !dbg !163
  store double %68, double* %9, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata double* %10, metadata !164, metadata !81), !dbg !165
  %69 = load double, double* %4, align 8, !dbg !166
  %70 = fsub double -0.000000e+00, %69, !dbg !167
  %71 = load double, double* %4, align 8, !dbg !168
  %72 = fmul double %70, %71, !dbg !169
  %73 = load double, double* %4, align 8, !dbg !170
  %74 = fmul double %72, %73, !dbg !171
  %75 = call double @exp(double %74) #6, !dbg !172
  %76 = load double, double* %4, align 8, !dbg !173
  %77 = fmul double 3.000000e+00, %76, !dbg !174
  %78 = load double, double* %4, align 8, !dbg !175
  %79 = fmul double %77, %78, !dbg !176
  %80 = fdiv double %75, %79, !dbg !177
  store double %80, double* %10, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !178, metadata !81), !dbg !179
  %81 = load double, double* %9, align 8, !dbg !180
  %82 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @expint3a_cs, double %81, %struct.gsl_sf_result_struct* %11), !dbg !181
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !182
  %84 = load double, double* %83, align 8, !dbg !182
  %85 = load double, double* %10, align 8, !dbg !183
  %86 = fmul double %84, %85, !dbg !184
  %87 = fsub double 0x3FEC9349C4C603ED, %86, !dbg !185
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !186
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !187
  store double %87, double* %89, align 8, !dbg !188
  %90 = load double, double* %10, align 8, !dbg !189
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !190
  %92 = load double, double* %91, align 8, !dbg !190
  %93 = fmul double %90, %92, !dbg !191
  %94 = fadd double 0x3CAC9349C4C603ED, %93, !dbg !192
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !193
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !194
  store double %94, double* %96, align 8, !dbg !195
  store i32 0, i32* %3, align 4, !dbg !196
  br label %102, !dbg !196

; <label>:97:                                     ; preds = %57
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !197
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !199
  store double 0x3FEC9349C4C603ED, double* %99, align 8, !dbg !200
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !202
  store double 0x3CAC9349C4C603ED, double* %101, align 8, !dbg !203
  store i32 0, i32* %3, align 4, !dbg !204
  br label %102, !dbg !204

; <label>:102:                                    ; preds = %20, %26, %35, %61, %97, %22
  %103 = load i32, i32* %3, align 4, !dbg !205
  ret i32 %103, !dbg !205
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !206 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !212, metadata !81), !dbg !213
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !214, metadata !81), !dbg !215
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !216, metadata !81), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %7, metadata !218, metadata !81), !dbg !219
  call void @llvm.dbg.declare(metadata double* %8, metadata !220, metadata !81), !dbg !221
  store double 0.000000e+00, double* %8, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata double* %9, metadata !222, metadata !81), !dbg !223
  store double 0.000000e+00, double* %9, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata double* %10, metadata !224, metadata !81), !dbg !225
  %15 = load double, double* %5, align 8, !dbg !226
  %16 = fmul double 2.000000e+00, %15, !dbg !227
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !228
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !229
  %19 = load double, double* %18, align 8, !dbg !229
  %20 = fsub double %16, %19, !dbg !230
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !231
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !232
  %23 = load double, double* %22, align 8, !dbg !232
  %24 = fsub double %20, %23, !dbg !233
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !234
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !235
  %27 = load double, double* %26, align 8, !dbg !235
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !236
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !237
  %30 = load double, double* %29, align 8, !dbg !237
  %31 = fsub double %27, %30, !dbg !238
  %32 = fdiv double %24, %31, !dbg !239
  store double %32, double* %10, align 8, !dbg !225
  call void @llvm.dbg.declare(metadata double* %11, metadata !240, metadata !81), !dbg !241
  %33 = load double, double* %10, align 8, !dbg !242
  %34 = fmul double 2.000000e+00, %33, !dbg !243
  store double %34, double* %11, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata double* %12, metadata !244, metadata !81), !dbg !245
  store double 0.000000e+00, double* %12, align 8, !dbg !245
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !246
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !248
  %37 = load i32, i32* %36, align 8, !dbg !248
  store i32 %37, i32* %7, align 4, !dbg !249
  br label %38, !dbg !250

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !251
  %40 = icmp sge i32 %39, 1, !dbg !254
  br i1 %40, label %41, label %78, !dbg !255

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !256, metadata !81), !dbg !258
  %42 = load double, double* %8, align 8, !dbg !259
  store double %42, double* %13, align 8, !dbg !258
  %43 = load double, double* %11, align 8, !dbg !260
  %44 = load double, double* %8, align 8, !dbg !261
  %45 = fmul double %43, %44, !dbg !262
  %46 = load double, double* %9, align 8, !dbg !263
  %47 = fsub double %45, %46, !dbg !264
  %48 = load i32, i32* %7, align 4, !dbg !265
  %49 = sext i32 %48 to i64, !dbg !266
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !266
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !267
  %52 = load double*, double** %51, align 8, !dbg !267
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !266
  %54 = load double, double* %53, align 8, !dbg !266
  %55 = fadd double %47, %54, !dbg !268
  store double %55, double* %8, align 8, !dbg !269
  %56 = load double, double* %11, align 8, !dbg !270
  %57 = load double, double* %13, align 8, !dbg !271
  %58 = fmul double %56, %57, !dbg !272
  %59 = call double @fabs(double %58) #1, !dbg !273
  %60 = load double, double* %9, align 8, !dbg !274
  %61 = call double @fabs(double %60) #1, !dbg !275
  %62 = fadd double %59, %61, !dbg !277
  %63 = load i32, i32* %7, align 4, !dbg !278
  %64 = sext i32 %63 to i64, !dbg !279
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !279
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !280
  %67 = load double*, double** %66, align 8, !dbg !280
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !279
  %69 = load double, double* %68, align 8, !dbg !279
  %70 = call double @fabs(double %69) #1, !dbg !281
  %71 = fadd double %62, %70, !dbg !283
  %72 = load double, double* %12, align 8, !dbg !284
  %73 = fadd double %72, %71, !dbg !284
  store double %73, double* %12, align 8, !dbg !284
  %74 = load double, double* %13, align 8, !dbg !285
  store double %74, double* %9, align 8, !dbg !286
  br label %75, !dbg !287

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !288
  %77 = add nsw i32 %76, -1, !dbg !288
  store i32 %77, i32* %7, align 4, !dbg !288
  br label %38, !dbg !290, !llvm.loop !291

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !293, metadata !81), !dbg !295
  %79 = load double, double* %8, align 8, !dbg !296
  store double %79, double* %14, align 8, !dbg !295
  %80 = load double, double* %10, align 8, !dbg !297
  %81 = load double, double* %8, align 8, !dbg !298
  %82 = fmul double %80, %81, !dbg !299
  %83 = load double, double* %9, align 8, !dbg !300
  %84 = fsub double %82, %83, !dbg !301
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !302
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !303
  %87 = load double*, double** %86, align 8, !dbg !303
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !302
  %89 = load double, double* %88, align 8, !dbg !302
  %90 = fmul double 5.000000e-01, %89, !dbg !304
  %91 = fadd double %84, %90, !dbg !305
  store double %91, double* %8, align 8, !dbg !306
  %92 = load double, double* %10, align 8, !dbg !307
  %93 = load double, double* %14, align 8, !dbg !308
  %94 = fmul double %92, %93, !dbg !309
  %95 = call double @fabs(double %94) #1, !dbg !310
  %96 = load double, double* %9, align 8, !dbg !311
  %97 = call double @fabs(double %96) #1, !dbg !312
  %98 = fadd double %95, %97, !dbg !314
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !315
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !316
  %101 = load double*, double** %100, align 8, !dbg !316
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !315
  %103 = load double, double* %102, align 8, !dbg !315
  %104 = call double @fabs(double %103) #1, !dbg !317
  %105 = fmul double 5.000000e-01, %104, !dbg !319
  %106 = fadd double %98, %105, !dbg !320
  %107 = load double, double* %12, align 8, !dbg !321
  %108 = fadd double %107, %106, !dbg !321
  store double %108, double* %12, align 8, !dbg !321
  %109 = load double, double* %8, align 8, !dbg !322
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !323
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !324
  store double %109, double* %111, align 8, !dbg !325
  %112 = load double, double* %12, align 8, !dbg !326
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !327
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !328
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !329
  %116 = load i32, i32* %115, align 8, !dbg !329
  %117 = sext i32 %116 to i64, !dbg !330
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !330
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !331
  %120 = load double*, double** %119, align 8, !dbg !331
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !330
  %122 = load double, double* %121, align 8, !dbg !330
  %123 = call double @fabs(double %122) #1, !dbg !332
  %124 = fadd double %113, %123, !dbg !333
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !334
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !335
  store double %124, double* %126, align 8, !dbg !336
  ret i32 0, !dbg !337
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_expint_3(double) #0 !dbg !338 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !341, metadata !81), !dbg !342
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !343, metadata !81), !dbg !344
  call void @llvm.dbg.declare(metadata i32* %5, metadata !345, metadata !81), !dbg !344
  %6 = load double, double* %3, align 8, !dbg !344
  %7 = call i32 @gsl_sf_expint_3_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !344
  store i32 %7, i32* %5, align 4, !dbg !344
  %8 = load i32, i32* %5, align 4, !dbg !346
  %9 = icmp ne i32 %8, 0, !dbg !346
  br i1 %9, label %10, label %16, !dbg !344

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !348, !llvm.loop !351

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !353
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 145, i32 %12), !dbg !353
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !353
  %14 = load double, double* %13, align 8, !dbg !353
  store double %14, double* %2, align 8, !dbg !353
  br label %19, !dbg !353
                                                  ; No predecessors!
  br label %16, !dbg !356

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !358
  %18 = load double, double* %17, align 8, !dbg !358
  store double %18, double* %2, align 8, !dbg !358
  br label %19, !dbg !358

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !360
  ret double %20, !dbg !360
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "expint3.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "expint3_cs", scope: !0, file: !1, line: 58, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @expint3_cs)
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
!55 = distinct !DIGlobalVariable(name: "expint3_data", scope: !0, file: !1, line: 32, type: !56, isLocal: true, isDefinition: true, variable: [24 x double]* @expint3_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1536, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 24)
!59 = distinct !DIGlobalVariable(name: "expint3a_cs", scope: !0, file: !1, line: 90, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @expint3a_cs)
!60 = distinct !DIGlobalVariable(name: "expint3a_data", scope: !0, file: !1, line: 65, type: !61, isLocal: true, isDefinition: true, variable: [23 x double]* @expint3a_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1472, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 23)
!64 = !{i32 2, !"Dwarf Version", i32 4}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"PIC Level", i32 2}
!67 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!68 = distinct !DISubprogram(name: "gsl_sf_expint_3_e", scope: !1, file: !1, line: 100, type: !69, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
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
!80 = !DILocalVariable(name: "x", arg: 1, scope: !68, file: !1, line: 100, type: !71)
!81 = !DIExpression()
!82 = !DILocation(line: 100, column: 36, scope: !68)
!83 = !DILocalVariable(name: "result", arg: 2, scope: !68, file: !1, line: 100, type: !72)
!84 = !DILocation(line: 100, column: 55, scope: !68)
!85 = !DILocalVariable(name: "val_infinity", scope: !68, file: !1, line: 102, type: !71)
!86 = !DILocation(line: 102, column: 16, scope: !68)
!87 = !DILocation(line: 106, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !68, file: !1, line: 106, column: 6)
!89 = !DILocation(line: 106, column: 8, scope: !88)
!90 = !DILocation(line: 106, column: 6, scope: !68)
!91 = !DILocation(line: 107, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 106, column: 15)
!93 = distinct !{!93, !91}
!94 = !DILocation(line: 107, column: 5, scope: !95)
!95 = !DILexicalBlockFile(scope: !96, file: !1, discriminator: 1)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 107, column: 5)
!97 = distinct !{!97, !98}
!98 = !DILocation(line: 107, column: 5, scope: !96)
!99 = !DILocation(line: 107, column: 5, scope: !100)
!100 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 2)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 107, column: 5)
!102 = !DILocation(line: 107, column: 5, scope: !103)
!103 = !DILexicalBlockFile(scope: !96, file: !1, discriminator: 3)
!104 = !DILocation(line: 108, column: 3, scope: !92)
!105 = !DILocation(line: 109, column: 11, scope: !106)
!106 = distinct !DILexicalBlock(scope: !88, file: !1, line: 109, column: 11)
!107 = !DILocation(line: 109, column: 13, scope: !106)
!108 = !DILocation(line: 109, column: 11, scope: !88)
!109 = !DILocation(line: 110, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 109, column: 42)
!111 = !DILocation(line: 110, column: 5, scope: !110)
!112 = !DILocation(line: 110, column: 13, scope: !110)
!113 = !DILocation(line: 110, column: 17, scope: !110)
!114 = !DILocation(line: 111, column: 5, scope: !110)
!115 = !DILocation(line: 111, column: 13, scope: !110)
!116 = !DILocation(line: 111, column: 17, scope: !110)
!117 = !DILocation(line: 112, column: 5, scope: !110)
!118 = !DILocation(line: 114, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !106, file: !1, line: 114, column: 11)
!120 = !DILocation(line: 114, column: 13, scope: !119)
!121 = !DILocation(line: 114, column: 11, scope: !106)
!122 = !DILocalVariable(name: "t", scope: !123, file: !1, line: 115, type: !71)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 114, column: 21)
!124 = !DILocation(line: 115, column: 18, scope: !123)
!125 = !DILocation(line: 115, column: 22, scope: !123)
!126 = !DILocation(line: 115, column: 24, scope: !123)
!127 = !DILocation(line: 115, column: 23, scope: !123)
!128 = !DILocation(line: 115, column: 26, scope: !123)
!129 = !DILocation(line: 115, column: 25, scope: !123)
!130 = !DILocation(line: 115, column: 27, scope: !123)
!131 = !DILocation(line: 115, column: 32, scope: !123)
!132 = !DILocalVariable(name: "result_c", scope: !123, file: !1, line: 116, type: !73)
!133 = !DILocation(line: 116, column: 19, scope: !123)
!134 = !DILocation(line: 117, column: 30, scope: !123)
!135 = !DILocation(line: 117, column: 5, scope: !123)
!136 = !DILocation(line: 118, column: 19, scope: !123)
!137 = !DILocation(line: 118, column: 32, scope: !123)
!138 = !DILocation(line: 118, column: 21, scope: !123)
!139 = !DILocation(line: 118, column: 5, scope: !123)
!140 = !DILocation(line: 118, column: 13, scope: !123)
!141 = !DILocation(line: 118, column: 17, scope: !123)
!142 = !DILocation(line: 119, column: 19, scope: !123)
!143 = !DILocation(line: 119, column: 32, scope: !123)
!144 = !DILocation(line: 119, column: 21, scope: !123)
!145 = !DILocation(line: 119, column: 5, scope: !123)
!146 = !DILocation(line: 119, column: 13, scope: !123)
!147 = !DILocation(line: 119, column: 17, scope: !123)
!148 = !DILocation(line: 120, column: 5, scope: !123)
!149 = !DILocation(line: 122, column: 11, scope: !150)
!150 = distinct !DILexicalBlock(scope: !119, file: !1, line: 122, column: 11)
!151 = !DILocation(line: 122, column: 15, scope: !150)
!152 = !DILocation(line: 122, column: 13, scope: !150)
!153 = !DILocation(line: 122, column: 11, scope: !119)
!154 = !DILocalVariable(name: "t", scope: !155, file: !1, line: 123, type: !71)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 122, column: 51)
!156 = !DILocation(line: 123, column: 18, scope: !155)
!157 = !DILocation(line: 123, column: 28, scope: !155)
!158 = !DILocation(line: 123, column: 30, scope: !155)
!159 = !DILocation(line: 123, column: 29, scope: !155)
!160 = !DILocation(line: 123, column: 32, scope: !155)
!161 = !DILocation(line: 123, column: 31, scope: !155)
!162 = !DILocation(line: 123, column: 26, scope: !155)
!163 = !DILocation(line: 123, column: 35, scope: !155)
!164 = !DILocalVariable(name: "s", scope: !155, file: !1, line: 124, type: !71)
!165 = !DILocation(line: 124, column: 18, scope: !155)
!166 = !DILocation(line: 124, column: 27, scope: !155)
!167 = !DILocation(line: 124, column: 26, scope: !155)
!168 = !DILocation(line: 124, column: 29, scope: !155)
!169 = !DILocation(line: 124, column: 28, scope: !155)
!170 = !DILocation(line: 124, column: 31, scope: !155)
!171 = !DILocation(line: 124, column: 30, scope: !155)
!172 = !DILocation(line: 124, column: 22, scope: !155)
!173 = !DILocation(line: 124, column: 39, scope: !155)
!174 = !DILocation(line: 124, column: 38, scope: !155)
!175 = !DILocation(line: 124, column: 41, scope: !155)
!176 = !DILocation(line: 124, column: 40, scope: !155)
!177 = !DILocation(line: 124, column: 33, scope: !155)
!178 = !DILocalVariable(name: "result_c", scope: !155, file: !1, line: 125, type: !73)
!179 = !DILocation(line: 125, column: 19, scope: !155)
!180 = !DILocation(line: 126, column: 31, scope: !155)
!181 = !DILocation(line: 126, column: 5, scope: !155)
!182 = !DILocation(line: 127, column: 43, scope: !155)
!183 = !DILocation(line: 127, column: 49, scope: !155)
!184 = !DILocation(line: 127, column: 47, scope: !155)
!185 = !DILocation(line: 127, column: 32, scope: !155)
!186 = !DILocation(line: 127, column: 5, scope: !155)
!187 = !DILocation(line: 127, column: 13, scope: !155)
!188 = !DILocation(line: 127, column: 17, scope: !155)
!189 = !DILocation(line: 128, column: 52, scope: !155)
!190 = !DILocation(line: 128, column: 65, scope: !155)
!191 = !DILocation(line: 128, column: 54, scope: !155)
!192 = !DILocation(line: 128, column: 50, scope: !155)
!193 = !DILocation(line: 128, column: 5, scope: !155)
!194 = !DILocation(line: 128, column: 13, scope: !155)
!195 = !DILocation(line: 128, column: 17, scope: !155)
!196 = !DILocation(line: 129, column: 5, scope: !155)
!197 = !DILocation(line: 132, column: 5, scope: !198)
!198 = distinct !DILexicalBlock(scope: !150, file: !1, line: 131, column: 8)
!199 = !DILocation(line: 132, column: 13, scope: !198)
!200 = !DILocation(line: 132, column: 17, scope: !198)
!201 = !DILocation(line: 133, column: 5, scope: !198)
!202 = !DILocation(line: 133, column: 13, scope: !198)
!203 = !DILocation(line: 133, column: 17, scope: !198)
!204 = !DILocation(line: 134, column: 5, scope: !198)
!205 = !DILocation(line: 136, column: 1, scope: !68)
!206 = distinct !DISubprogram(name: "cheb_eval_e", scope: !207, file: !207, line: 3, type: !208, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!207 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!208 = !DISubroutineType(types: !209)
!209 = !{!51, !210, !71, !72}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!212 = !DILocalVariable(name: "cs", arg: 1, scope: !206, file: !207, line: 3, type: !210)
!213 = !DILocation(line: 3, column: 33, scope: !206)
!214 = !DILocalVariable(name: "x", arg: 2, scope: !206, file: !207, line: 4, type: !71)
!215 = !DILocation(line: 4, column: 26, scope: !206)
!216 = !DILocalVariable(name: "result", arg: 3, scope: !206, file: !207, line: 5, type: !72)
!217 = !DILocation(line: 5, column: 29, scope: !206)
!218 = !DILocalVariable(name: "j", scope: !206, file: !207, line: 7, type: !51)
!219 = !DILocation(line: 7, column: 7, scope: !206)
!220 = !DILocalVariable(name: "d", scope: !206, file: !207, line: 8, type: !49)
!221 = !DILocation(line: 8, column: 10, scope: !206)
!222 = !DILocalVariable(name: "dd", scope: !206, file: !207, line: 9, type: !49)
!223 = !DILocation(line: 9, column: 10, scope: !206)
!224 = !DILocalVariable(name: "y", scope: !206, file: !207, line: 11, type: !49)
!225 = !DILocation(line: 11, column: 10, scope: !206)
!226 = !DILocation(line: 11, column: 20, scope: !206)
!227 = !DILocation(line: 11, column: 19, scope: !206)
!228 = !DILocation(line: 11, column: 24, scope: !206)
!229 = !DILocation(line: 11, column: 28, scope: !206)
!230 = !DILocation(line: 11, column: 22, scope: !206)
!231 = !DILocation(line: 11, column: 32, scope: !206)
!232 = !DILocation(line: 11, column: 36, scope: !206)
!233 = !DILocation(line: 11, column: 30, scope: !206)
!234 = !DILocation(line: 11, column: 42, scope: !206)
!235 = !DILocation(line: 11, column: 46, scope: !206)
!236 = !DILocation(line: 11, column: 50, scope: !206)
!237 = !DILocation(line: 11, column: 54, scope: !206)
!238 = !DILocation(line: 11, column: 48, scope: !206)
!239 = !DILocation(line: 11, column: 39, scope: !206)
!240 = !DILocalVariable(name: "y2", scope: !206, file: !207, line: 12, type: !49)
!241 = !DILocation(line: 12, column: 10, scope: !206)
!242 = !DILocation(line: 12, column: 21, scope: !206)
!243 = !DILocation(line: 12, column: 19, scope: !206)
!244 = !DILocalVariable(name: "e", scope: !206, file: !207, line: 14, type: !49)
!245 = !DILocation(line: 14, column: 10, scope: !206)
!246 = !DILocation(line: 16, column: 11, scope: !247)
!247 = distinct !DILexicalBlock(scope: !206, file: !207, line: 16, column: 3)
!248 = !DILocation(line: 16, column: 15, scope: !247)
!249 = !DILocation(line: 16, column: 9, scope: !247)
!250 = !DILocation(line: 16, column: 7, scope: !247)
!251 = !DILocation(line: 16, column: 22, scope: !252)
!252 = !DILexicalBlockFile(scope: !253, file: !207, discriminator: 1)
!253 = distinct !DILexicalBlock(scope: !247, file: !207, line: 16, column: 3)
!254 = !DILocation(line: 16, column: 23, scope: !252)
!255 = !DILocation(line: 16, column: 3, scope: !252)
!256 = !DILocalVariable(name: "temp", scope: !257, file: !207, line: 17, type: !49)
!257 = distinct !DILexicalBlock(scope: !253, file: !207, line: 16, column: 33)
!258 = !DILocation(line: 17, column: 12, scope: !257)
!259 = !DILocation(line: 17, column: 19, scope: !257)
!260 = !DILocation(line: 18, column: 9, scope: !257)
!261 = !DILocation(line: 18, column: 12, scope: !257)
!262 = !DILocation(line: 18, column: 11, scope: !257)
!263 = !DILocation(line: 18, column: 16, scope: !257)
!264 = !DILocation(line: 18, column: 14, scope: !257)
!265 = !DILocation(line: 18, column: 27, scope: !257)
!266 = !DILocation(line: 18, column: 21, scope: !257)
!267 = !DILocation(line: 18, column: 25, scope: !257)
!268 = !DILocation(line: 18, column: 19, scope: !257)
!269 = !DILocation(line: 18, column: 7, scope: !257)
!270 = !DILocation(line: 19, column: 15, scope: !257)
!271 = !DILocation(line: 19, column: 18, scope: !257)
!272 = !DILocation(line: 19, column: 17, scope: !257)
!273 = !DILocation(line: 19, column: 10, scope: !257)
!274 = !DILocation(line: 19, column: 31, scope: !257)
!275 = !DILocation(line: 19, column: 26, scope: !276)
!276 = !DILexicalBlockFile(scope: !257, file: !207, discriminator: 1)
!277 = !DILocation(line: 19, column: 24, scope: !257)
!278 = !DILocation(line: 19, column: 48, scope: !257)
!279 = !DILocation(line: 19, column: 42, scope: !257)
!280 = !DILocation(line: 19, column: 46, scope: !257)
!281 = !DILocation(line: 19, column: 37, scope: !282)
!282 = !DILexicalBlockFile(scope: !257, file: !207, discriminator: 2)
!283 = !DILocation(line: 19, column: 35, scope: !257)
!284 = !DILocation(line: 19, column: 7, scope: !257)
!285 = !DILocation(line: 20, column: 10, scope: !257)
!286 = !DILocation(line: 20, column: 8, scope: !257)
!287 = !DILocation(line: 21, column: 3, scope: !257)
!288 = !DILocation(line: 16, column: 29, scope: !289)
!289 = !DILexicalBlockFile(scope: !253, file: !207, discriminator: 2)
!290 = !DILocation(line: 16, column: 3, scope: !289)
!291 = distinct !{!291, !292}
!292 = !DILocation(line: 16, column: 3, scope: !206)
!293 = !DILocalVariable(name: "temp", scope: !294, file: !207, line: 24, type: !49)
!294 = distinct !DILexicalBlock(scope: !206, file: !207, line: 23, column: 3)
!295 = !DILocation(line: 24, column: 12, scope: !294)
!296 = !DILocation(line: 24, column: 19, scope: !294)
!297 = !DILocation(line: 25, column: 9, scope: !294)
!298 = !DILocation(line: 25, column: 11, scope: !294)
!299 = !DILocation(line: 25, column: 10, scope: !294)
!300 = !DILocation(line: 25, column: 15, scope: !294)
!301 = !DILocation(line: 25, column: 13, scope: !294)
!302 = !DILocation(line: 25, column: 26, scope: !294)
!303 = !DILocation(line: 25, column: 30, scope: !294)
!304 = !DILocation(line: 25, column: 24, scope: !294)
!305 = !DILocation(line: 25, column: 18, scope: !294)
!306 = !DILocation(line: 25, column: 7, scope: !294)
!307 = !DILocation(line: 26, column: 15, scope: !294)
!308 = !DILocation(line: 26, column: 17, scope: !294)
!309 = !DILocation(line: 26, column: 16, scope: !294)
!310 = !DILocation(line: 26, column: 10, scope: !294)
!311 = !DILocation(line: 26, column: 30, scope: !294)
!312 = !DILocation(line: 26, column: 25, scope: !313)
!313 = !DILexicalBlockFile(scope: !294, file: !207, discriminator: 1)
!314 = !DILocation(line: 26, column: 23, scope: !294)
!315 = !DILocation(line: 26, column: 47, scope: !294)
!316 = !DILocation(line: 26, column: 51, scope: !294)
!317 = !DILocation(line: 26, column: 42, scope: !318)
!318 = !DILexicalBlockFile(scope: !294, file: !207, discriminator: 2)
!319 = !DILocation(line: 26, column: 40, scope: !294)
!320 = !DILocation(line: 26, column: 34, scope: !294)
!321 = !DILocation(line: 26, column: 7, scope: !294)
!322 = !DILocation(line: 29, column: 17, scope: !206)
!323 = !DILocation(line: 29, column: 3, scope: !206)
!324 = !DILocation(line: 29, column: 11, scope: !206)
!325 = !DILocation(line: 29, column: 15, scope: !206)
!326 = !DILocation(line: 30, column: 35, scope: !206)
!327 = !DILocation(line: 30, column: 33, scope: !206)
!328 = !DILocation(line: 30, column: 50, scope: !206)
!329 = !DILocation(line: 30, column: 54, scope: !206)
!330 = !DILocation(line: 30, column: 44, scope: !206)
!331 = !DILocation(line: 30, column: 48, scope: !206)
!332 = !DILocation(line: 30, column: 39, scope: !206)
!333 = !DILocation(line: 30, column: 37, scope: !206)
!334 = !DILocation(line: 30, column: 3, scope: !206)
!335 = !DILocation(line: 30, column: 11, scope: !206)
!336 = !DILocation(line: 30, column: 15, scope: !206)
!337 = !DILocation(line: 32, column: 3, scope: !206)
!338 = distinct !DISubprogram(name: "gsl_sf_expint_3", scope: !1, file: !1, line: 143, type: !339, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!339 = !DISubroutineType(types: !340)
!340 = !{!49, !49}
!341 = !DILocalVariable(name: "x", arg: 1, scope: !338, file: !1, line: 143, type: !49)
!342 = !DILocation(line: 143, column: 31, scope: !338)
!343 = !DILocalVariable(name: "result", scope: !338, file: !1, line: 145, type: !73)
!344 = !DILocation(line: 145, column: 3, scope: !338)
!345 = !DILocalVariable(name: "status", scope: !338, file: !1, line: 145, type: !51)
!346 = !DILocation(line: 145, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !338, file: !1, line: 145, column: 3)
!348 = !DILocation(line: 145, column: 3, scope: !349)
!349 = !DILexicalBlockFile(scope: !350, file: !1, discriminator: 1)
!350 = distinct !DILexicalBlock(scope: !347, file: !1, line: 145, column: 3)
!351 = distinct !{!351, !352}
!352 = !DILocation(line: 145, column: 3, scope: !350)
!353 = !DILocation(line: 145, column: 3, scope: !354)
!354 = !DILexicalBlockFile(scope: !355, file: !1, discriminator: 2)
!355 = distinct !DILexicalBlock(scope: !350, file: !1, line: 145, column: 3)
!356 = !DILocation(line: 145, column: 3, scope: !357)
!357 = !DILexicalBlockFile(scope: !350, file: !1, discriminator: 3)
!358 = !DILocation(line: 145, column: 3, scope: !359)
!359 = !DILexicalBlockFile(scope: !338, file: !1, discriminator: 4)
!360 = !DILocation(line: 146, column: 1, scope: !338)
