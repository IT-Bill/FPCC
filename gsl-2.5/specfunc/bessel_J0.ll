; ModuleID = 'bessel_J0.c'
source_filename = "bessel_J0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@bj0_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([13 x double], [13 x double]* @bj0_data, i32 0, i32 0), i32 12, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@_gsl_sf_bessel_amp_phase_bm0_cs = external constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth0_cs = external constant %struct.cheb_series_struct, align 8
@.str = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_J0_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_J0.c\00", align 1
@bj0_data = internal global [13 x double] [double 0x3FB9AA41BAF1C97A, double 0xBFE54981C2DCA2CF, double 0x3FCFDEB2AFE18BCE, double 0xBFA106803D09576B, double 0x3F62EF650D666EF6, double 0xBF19FB587EC623DD, double 0x3EC841D0DE9B1CCB, double 0xBE706E60D04405E4, double 0x3E10E71599E3A0D3, double 0xBDAB51D676039C1D, double 1.265433e-13, double -1.061900e-15, double 7.400000e-18], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_J0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !75, metadata !76), !dbg !77
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !78, metadata !76), !dbg !79
  call void @llvm.dbg.declare(metadata double* %6, metadata !80, metadata !76), !dbg !81
  %16 = load double, double* %4, align 8, !dbg !82
  %17 = call double @fabs(double %16) #1, !dbg !83
  store double %17, double* %6, align 8, !dbg !81
  %18 = load double, double* %6, align 8, !dbg !84
  %19 = fcmp olt double %18, 0x3E60000000000000, !dbg !86
  br i1 %19, label %20, label %28, !dbg !87

; <label>:20:                                     ; preds = %2
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !88
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !90
  store double 1.000000e+00, double* %22, align 8, !dbg !91
  %23 = load double, double* %6, align 8, !dbg !92
  %24 = load double, double* %6, align 8, !dbg !93
  %25 = fmul double %23, %24, !dbg !94
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !96
  store double %25, double* %27, align 8, !dbg !97
  store i32 0, i32* %3, align 4, !dbg !98
  br label %114, !dbg !98

; <label>:28:                                     ; preds = %2
  %29 = load double, double* %6, align 8, !dbg !99
  %30 = fcmp ole double %29, 4.000000e+00, !dbg !101
  br i1 %30, label %31, label %39, !dbg !102

; <label>:31:                                     ; preds = %28
  %32 = load double, double* %6, align 8, !dbg !103
  %33 = fmul double 1.250000e-01, %32, !dbg !105
  %34 = load double, double* %6, align 8, !dbg !106
  %35 = fmul double %33, %34, !dbg !107
  %36 = fsub double %35, 1.000000e+00, !dbg !108
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !109
  %38 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @bj0_cs, double %36, %struct.gsl_sf_result_struct* %37), !dbg !110
  store i32 %38, i32* %3, align 4, !dbg !111
  br label %114, !dbg !111

; <label>:39:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata double* %7, metadata !112, metadata !76), !dbg !114
  %40 = load double, double* %6, align 8, !dbg !115
  %41 = load double, double* %6, align 8, !dbg !116
  %42 = fmul double %40, %41, !dbg !117
  %43 = fdiv double 3.200000e+01, %42, !dbg !118
  %44 = fsub double %43, 1.000000e+00, !dbg !119
  store double %44, double* %7, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !120, metadata !76), !dbg !121
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !122, metadata !76), !dbg !123
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !124, metadata !76), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %11, metadata !126, metadata !76), !dbg !128
  %45 = load double, double* %7, align 8, !dbg !129
  %46 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bm0_cs, double %45, %struct.gsl_sf_result_struct* %8), !dbg !130
  store i32 %46, i32* %11, align 4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %12, metadata !131, metadata !76), !dbg !132
  %47 = load double, double* %7, align 8, !dbg !133
  %48 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bth0_cs, double %47, %struct.gsl_sf_result_struct* %9), !dbg !134
  store i32 %48, i32* %12, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %13, metadata !135, metadata !76), !dbg !136
  %49 = load double, double* %6, align 8, !dbg !137
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !138
  %51 = load double, double* %50, align 8, !dbg !138
  %52 = load double, double* %6, align 8, !dbg !139
  %53 = fdiv double %51, %52, !dbg !140
  %54 = call i32 @gsl_sf_bessel_cos_pi4_e(double %49, double %53, %struct.gsl_sf_result_struct* %10), !dbg !141
  store i32 %54, i32* %13, align 4, !dbg !136
  call void @llvm.dbg.declare(metadata double* %14, metadata !142, metadata !76), !dbg !143
  %55 = load double, double* %6, align 8, !dbg !144
  %56 = call double @sqrt(double %55) #6, !dbg !145
  store double %56, double* %14, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata double* %15, metadata !146, metadata !76), !dbg !147
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !148
  %58 = load double, double* %57, align 8, !dbg !148
  %59 = fadd double 7.500000e-01, %58, !dbg !149
  %60 = load double, double* %14, align 8, !dbg !150
  %61 = fdiv double %59, %60, !dbg !151
  store double %61, double* %15, align 8, !dbg !147
  %62 = load double, double* %15, align 8, !dbg !152
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !153
  %64 = load double, double* %63, align 8, !dbg !153
  %65 = fmul double %62, %64, !dbg !154
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !155
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !156
  store double %65, double* %67, align 8, !dbg !157
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !158
  %69 = load double, double* %68, align 8, !dbg !158
  %70 = call double @fabs(double %69) #1, !dbg !159
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !160
  %72 = load double, double* %71, align 8, !dbg !160
  %73 = fmul double %70, %72, !dbg !161
  %74 = load double, double* %14, align 8, !dbg !162
  %75 = fdiv double %73, %74, !dbg !163
  %76 = load double, double* %15, align 8, !dbg !164
  %77 = call double @fabs(double %76) #1, !dbg !165
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !167
  %79 = load double, double* %78, align 8, !dbg !167
  %80 = fmul double %77, %79, !dbg !168
  %81 = fadd double %75, %80, !dbg !169
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !170
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !171
  store double %81, double* %83, align 8, !dbg !172
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !173
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !174
  %86 = load double, double* %85, align 8, !dbg !174
  %87 = call double @fabs(double %86) #1, !dbg !175
  %88 = fmul double 0x3CB0000000000000, %87, !dbg !176
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !177
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !178
  %91 = load double, double* %90, align 8, !dbg !179
  %92 = fadd double %91, %88, !dbg !179
  store double %92, double* %90, align 8, !dbg !179
  %93 = load i32, i32* %11, align 4, !dbg !180
  %94 = icmp ne i32 %93, 0, !dbg !180
  br i1 %94, label %95, label %97, !dbg !180

; <label>:95:                                     ; preds = %39
  %96 = load i32, i32* %11, align 4, !dbg !181
  br label %112, !dbg !181

; <label>:97:                                     ; preds = %39
  %98 = load i32, i32* %12, align 4, !dbg !182
  %99 = icmp ne i32 %98, 0, !dbg !182
  br i1 %99, label %100, label %102, !dbg !182

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %12, align 4, !dbg !184
  br label %110, !dbg !184

; <label>:102:                                    ; preds = %97
  %103 = load i32, i32* %13, align 4, !dbg !186
  %104 = icmp ne i32 %103, 0, !dbg !186
  br i1 %104, label %105, label %107, !dbg !186

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %13, align 4, !dbg !188
  br label %108, !dbg !188

; <label>:107:                                    ; preds = %102
  br label %108, !dbg !190

; <label>:108:                                    ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ], !dbg !192
  br label %110, !dbg !192

; <label>:110:                                    ; preds = %108, %100
  %111 = phi i32 [ %101, %100 ], [ %109, %108 ], !dbg !194
  br label %112, !dbg !194

; <label>:112:                                    ; preds = %110, %95
  %113 = phi i32 [ %96, %95 ], [ %111, %110 ], !dbg !196
  store i32 %113, i32* %3, align 4, !dbg !198
  br label %114, !dbg !198

; <label>:114:                                    ; preds = %112, %31, %20
  %115 = load i32, i32* %3, align 4, !dbg !199
  ret i32 %115, !dbg !199
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !200 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !206, metadata !76), !dbg !207
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !208, metadata !76), !dbg !209
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !210, metadata !76), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %7, metadata !212, metadata !76), !dbg !213
  call void @llvm.dbg.declare(metadata double* %8, metadata !214, metadata !76), !dbg !215
  store double 0.000000e+00, double* %8, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata double* %9, metadata !216, metadata !76), !dbg !217
  store double 0.000000e+00, double* %9, align 8, !dbg !217
  call void @llvm.dbg.declare(metadata double* %10, metadata !218, metadata !76), !dbg !219
  %15 = load double, double* %5, align 8, !dbg !220
  %16 = fmul double 2.000000e+00, %15, !dbg !221
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !222
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !223
  %19 = load double, double* %18, align 8, !dbg !223
  %20 = fsub double %16, %19, !dbg !224
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !225
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !226
  %23 = load double, double* %22, align 8, !dbg !226
  %24 = fsub double %20, %23, !dbg !227
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !228
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !229
  %27 = load double, double* %26, align 8, !dbg !229
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !230
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !231
  %30 = load double, double* %29, align 8, !dbg !231
  %31 = fsub double %27, %30, !dbg !232
  %32 = fdiv double %24, %31, !dbg !233
  store double %32, double* %10, align 8, !dbg !219
  call void @llvm.dbg.declare(metadata double* %11, metadata !234, metadata !76), !dbg !235
  %33 = load double, double* %10, align 8, !dbg !236
  %34 = fmul double 2.000000e+00, %33, !dbg !237
  store double %34, double* %11, align 8, !dbg !235
  call void @llvm.dbg.declare(metadata double* %12, metadata !238, metadata !76), !dbg !239
  store double 0.000000e+00, double* %12, align 8, !dbg !239
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !240
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !242
  %37 = load i32, i32* %36, align 8, !dbg !242
  store i32 %37, i32* %7, align 4, !dbg !243
  br label %38, !dbg !244

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !245
  %40 = icmp sge i32 %39, 1, !dbg !248
  br i1 %40, label %41, label %78, !dbg !249

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !250, metadata !76), !dbg !252
  %42 = load double, double* %8, align 8, !dbg !253
  store double %42, double* %13, align 8, !dbg !252
  %43 = load double, double* %11, align 8, !dbg !254
  %44 = load double, double* %8, align 8, !dbg !255
  %45 = fmul double %43, %44, !dbg !256
  %46 = load double, double* %9, align 8, !dbg !257
  %47 = fsub double %45, %46, !dbg !258
  %48 = load i32, i32* %7, align 4, !dbg !259
  %49 = sext i32 %48 to i64, !dbg !260
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !260
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !261
  %52 = load double*, double** %51, align 8, !dbg !261
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !260
  %54 = load double, double* %53, align 8, !dbg !260
  %55 = fadd double %47, %54, !dbg !262
  store double %55, double* %8, align 8, !dbg !263
  %56 = load double, double* %11, align 8, !dbg !264
  %57 = load double, double* %13, align 8, !dbg !265
  %58 = fmul double %56, %57, !dbg !266
  %59 = call double @fabs(double %58) #1, !dbg !267
  %60 = load double, double* %9, align 8, !dbg !268
  %61 = call double @fabs(double %60) #1, !dbg !269
  %62 = fadd double %59, %61, !dbg !271
  %63 = load i32, i32* %7, align 4, !dbg !272
  %64 = sext i32 %63 to i64, !dbg !273
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !273
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !274
  %67 = load double*, double** %66, align 8, !dbg !274
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !273
  %69 = load double, double* %68, align 8, !dbg !273
  %70 = call double @fabs(double %69) #1, !dbg !275
  %71 = fadd double %62, %70, !dbg !277
  %72 = load double, double* %12, align 8, !dbg !278
  %73 = fadd double %72, %71, !dbg !278
  store double %73, double* %12, align 8, !dbg !278
  %74 = load double, double* %13, align 8, !dbg !279
  store double %74, double* %9, align 8, !dbg !280
  br label %75, !dbg !281

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !282
  %77 = add nsw i32 %76, -1, !dbg !282
  store i32 %77, i32* %7, align 4, !dbg !282
  br label %38, !dbg !284, !llvm.loop !285

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !287, metadata !76), !dbg !289
  %79 = load double, double* %8, align 8, !dbg !290
  store double %79, double* %14, align 8, !dbg !289
  %80 = load double, double* %10, align 8, !dbg !291
  %81 = load double, double* %8, align 8, !dbg !292
  %82 = fmul double %80, %81, !dbg !293
  %83 = load double, double* %9, align 8, !dbg !294
  %84 = fsub double %82, %83, !dbg !295
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !296
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !297
  %87 = load double*, double** %86, align 8, !dbg !297
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !296
  %89 = load double, double* %88, align 8, !dbg !296
  %90 = fmul double 5.000000e-01, %89, !dbg !298
  %91 = fadd double %84, %90, !dbg !299
  store double %91, double* %8, align 8, !dbg !300
  %92 = load double, double* %10, align 8, !dbg !301
  %93 = load double, double* %14, align 8, !dbg !302
  %94 = fmul double %92, %93, !dbg !303
  %95 = call double @fabs(double %94) #1, !dbg !304
  %96 = load double, double* %9, align 8, !dbg !305
  %97 = call double @fabs(double %96) #1, !dbg !306
  %98 = fadd double %95, %97, !dbg !308
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !309
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !310
  %101 = load double*, double** %100, align 8, !dbg !310
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !309
  %103 = load double, double* %102, align 8, !dbg !309
  %104 = call double @fabs(double %103) #1, !dbg !311
  %105 = fmul double 5.000000e-01, %104, !dbg !313
  %106 = fadd double %98, %105, !dbg !314
  %107 = load double, double* %12, align 8, !dbg !315
  %108 = fadd double %107, %106, !dbg !315
  store double %108, double* %12, align 8, !dbg !315
  %109 = load double, double* %8, align 8, !dbg !316
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !317
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !318
  store double %109, double* %111, align 8, !dbg !319
  %112 = load double, double* %12, align 8, !dbg !320
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !321
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !322
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !323
  %116 = load i32, i32* %115, align 8, !dbg !323
  %117 = sext i32 %116 to i64, !dbg !324
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !324
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !325
  %120 = load double*, double** %119, align 8, !dbg !325
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !324
  %122 = load double, double* %121, align 8, !dbg !324
  %123 = call double @fabs(double %122) #1, !dbg !326
  %124 = fadd double %113, %123, !dbg !327
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !328
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !329
  store double %124, double* %126, align 8, !dbg !330
  ret i32 0, !dbg !331
}

declare i32 @gsl_sf_bessel_cos_pi4_e(double, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_J0(double) #0 !dbg !332 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !335, metadata !76), !dbg !336
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !337, metadata !76), !dbg !338
  call void @llvm.dbg.declare(metadata i32* %5, metadata !339, metadata !76), !dbg !338
  %6 = load double, double* %3, align 8, !dbg !338
  %7 = call i32 @gsl_sf_bessel_J0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !338
  store i32 %7, i32* %5, align 4, !dbg !338
  %8 = load i32, i32* %5, align 4, !dbg !340
  %9 = icmp ne i32 %8, 0, !dbg !340
  br i1 %9, label %10, label %16, !dbg !338

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !342, !llvm.loop !345

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !347
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 %12), !dbg !347
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !347
  %14 = load double, double* %13, align 8, !dbg !347
  store double %14, double* %2, align 8, !dbg !347
  br label %19, !dbg !347
                                                  ; No predecessors!
  br label %16, !dbg !350

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !352
  %18 = load double, double* %17, align 8, !dbg !352
  store double %18, double* %2, align 8, !dbg !352
  br label %19, !dbg !352

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !354
  ret double %20, !dbg !354
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_J0.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55}
!42 = distinct !DIGlobalVariable(name: "bj0_cs", scope: !0, file: !1, line: 63, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bj0_cs)
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
!55 = distinct !DIGlobalVariable(name: "bj0_data", scope: !0, file: !1, line: 48, type: !56, isLocal: true, isDefinition: true, variable: [13 x double]* @bj0_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 832, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 13)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !1, file: !1, line: 73, type: !64, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!64 = !DISubroutineType(types: !65)
!65 = !{!51, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !69, line: 41, baseType: !70)
!69 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !69, line: 37, size: 128, align: 64, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !69, line: 38, baseType: !49, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !70, file: !69, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!74 = !{}
!75 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 73, type: !66)
!76 = !DIExpression()
!77 = !DILocation(line: 73, column: 37, scope: !63)
!78 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 73, type: !67)
!79 = !DILocation(line: 73, column: 56, scope: !63)
!80 = !DILocalVariable(name: "y", scope: !63, file: !1, line: 75, type: !49)
!81 = !DILocation(line: 75, column: 10, scope: !63)
!82 = !DILocation(line: 75, column: 19, scope: !63)
!83 = !DILocation(line: 75, column: 14, scope: !63)
!84 = !DILocation(line: 79, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !63, file: !1, line: 79, column: 6)
!86 = !DILocation(line: 79, column: 8, scope: !85)
!87 = !DILocation(line: 79, column: 6, scope: !63)
!88 = !DILocation(line: 80, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 79, column: 36)
!90 = !DILocation(line: 80, column: 13, scope: !89)
!91 = !DILocation(line: 80, column: 17, scope: !89)
!92 = !DILocation(line: 81, column: 19, scope: !89)
!93 = !DILocation(line: 81, column: 21, scope: !89)
!94 = !DILocation(line: 81, column: 20, scope: !89)
!95 = !DILocation(line: 81, column: 5, scope: !89)
!96 = !DILocation(line: 81, column: 13, scope: !89)
!97 = !DILocation(line: 81, column: 17, scope: !89)
!98 = !DILocation(line: 82, column: 5, scope: !89)
!99 = !DILocation(line: 84, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !85, file: !1, line: 84, column: 11)
!101 = !DILocation(line: 84, column: 13, scope: !100)
!102 = !DILocation(line: 84, column: 11, scope: !85)
!103 = !DILocation(line: 85, column: 39, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 84, column: 21)
!105 = !DILocation(line: 85, column: 38, scope: !104)
!106 = !DILocation(line: 85, column: 41, scope: !104)
!107 = !DILocation(line: 85, column: 40, scope: !104)
!108 = !DILocation(line: 85, column: 43, scope: !104)
!109 = !DILocation(line: 85, column: 50, scope: !104)
!110 = !DILocation(line: 85, column: 12, scope: !104)
!111 = !DILocation(line: 85, column: 5, scope: !104)
!112 = !DILocalVariable(name: "z", scope: !113, file: !1, line: 88, type: !66)
!113 = distinct !DILexicalBlock(scope: !100, file: !1, line: 87, column: 8)
!114 = !DILocation(line: 88, column: 18, scope: !113)
!115 = !DILocation(line: 88, column: 28, scope: !113)
!116 = !DILocation(line: 88, column: 30, scope: !113)
!117 = !DILocation(line: 88, column: 29, scope: !113)
!118 = !DILocation(line: 88, column: 26, scope: !113)
!119 = !DILocation(line: 88, column: 33, scope: !113)
!120 = !DILocalVariable(name: "ca", scope: !113, file: !1, line: 89, type: !68)
!121 = !DILocation(line: 89, column: 19, scope: !113)
!122 = !DILocalVariable(name: "ct", scope: !113, file: !1, line: 90, type: !68)
!123 = !DILocation(line: 90, column: 19, scope: !113)
!124 = !DILocalVariable(name: "cp", scope: !113, file: !1, line: 91, type: !68)
!125 = !DILocation(line: 91, column: 19, scope: !113)
!126 = !DILocalVariable(name: "stat_ca", scope: !113, file: !1, line: 92, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!128 = !DILocation(line: 92, column: 15, scope: !113)
!129 = !DILocation(line: 92, column: 72, scope: !113)
!130 = !DILocation(line: 92, column: 25, scope: !113)
!131 = !DILocalVariable(name: "stat_ct", scope: !113, file: !1, line: 93, type: !127)
!132 = !DILocation(line: 93, column: 15, scope: !113)
!133 = !DILocation(line: 93, column: 72, scope: !113)
!134 = !DILocation(line: 93, column: 25, scope: !113)
!135 = !DILocalVariable(name: "stat_cp", scope: !113, file: !1, line: 94, type: !127)
!136 = !DILocation(line: 94, column: 15, scope: !113)
!137 = !DILocation(line: 94, column: 49, scope: !113)
!138 = !DILocation(line: 94, column: 55, scope: !113)
!139 = !DILocation(line: 94, column: 59, scope: !113)
!140 = !DILocation(line: 94, column: 58, scope: !113)
!141 = !DILocation(line: 94, column: 25, scope: !113)
!142 = !DILocalVariable(name: "sqrty", scope: !113, file: !1, line: 95, type: !66)
!143 = !DILocation(line: 95, column: 18, scope: !113)
!144 = !DILocation(line: 95, column: 31, scope: !113)
!145 = !DILocation(line: 95, column: 26, scope: !113)
!146 = !DILocalVariable(name: "ampl", scope: !113, file: !1, line: 96, type: !66)
!147 = !DILocation(line: 96, column: 18, scope: !113)
!148 = !DILocation(line: 96, column: 37, scope: !113)
!149 = !DILocation(line: 96, column: 32, scope: !113)
!150 = !DILocation(line: 96, column: 44, scope: !113)
!151 = !DILocation(line: 96, column: 42, scope: !113)
!152 = !DILocation(line: 97, column: 20, scope: !113)
!153 = !DILocation(line: 97, column: 30, scope: !113)
!154 = !DILocation(line: 97, column: 25, scope: !113)
!155 = !DILocation(line: 97, column: 5, scope: !113)
!156 = !DILocation(line: 97, column: 13, scope: !113)
!157 = !DILocation(line: 97, column: 18, scope: !113)
!158 = !DILocation(line: 98, column: 28, scope: !113)
!159 = !DILocation(line: 98, column: 20, scope: !113)
!160 = !DILocation(line: 98, column: 38, scope: !113)
!161 = !DILocation(line: 98, column: 33, scope: !113)
!162 = !DILocation(line: 98, column: 42, scope: !113)
!163 = !DILocation(line: 98, column: 41, scope: !113)
!164 = !DILocation(line: 98, column: 55, scope: !113)
!165 = !DILocation(line: 98, column: 50, scope: !166)
!166 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 1)
!167 = !DILocation(line: 98, column: 66, scope: !113)
!168 = !DILocation(line: 98, column: 61, scope: !113)
!169 = !DILocation(line: 98, column: 48, scope: !113)
!170 = !DILocation(line: 98, column: 5, scope: !113)
!171 = !DILocation(line: 98, column: 13, scope: !113)
!172 = !DILocation(line: 98, column: 18, scope: !113)
!173 = !DILocation(line: 99, column: 43, scope: !113)
!174 = !DILocation(line: 99, column: 51, scope: !113)
!175 = !DILocation(line: 99, column: 38, scope: !113)
!176 = !DILocation(line: 99, column: 36, scope: !113)
!177 = !DILocation(line: 99, column: 5, scope: !113)
!178 = !DILocation(line: 99, column: 13, scope: !113)
!179 = !DILocation(line: 99, column: 17, scope: !113)
!180 = !DILocation(line: 100, column: 12, scope: !113)
!181 = !DILocation(line: 100, column: 12, scope: !166)
!182 = !DILocation(line: 100, column: 12, scope: !183)
!183 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 2)
!184 = !DILocation(line: 100, column: 12, scope: !185)
!185 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 3)
!186 = !DILocation(line: 100, column: 12, scope: !187)
!187 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 4)
!188 = !DILocation(line: 100, column: 12, scope: !189)
!189 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 5)
!190 = !DILocation(line: 100, column: 12, scope: !191)
!191 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 6)
!192 = !DILocation(line: 100, column: 12, scope: !193)
!193 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 7)
!194 = !DILocation(line: 100, column: 12, scope: !195)
!195 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 8)
!196 = !DILocation(line: 100, column: 12, scope: !197)
!197 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 9)
!198 = !DILocation(line: 100, column: 5, scope: !197)
!199 = !DILocation(line: 102, column: 1, scope: !63)
!200 = distinct !DISubprogram(name: "cheb_eval_e", scope: !201, file: !201, line: 3, type: !202, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!201 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!202 = !DISubroutineType(types: !203)
!203 = !{!51, !204, !66, !67}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!206 = !DILocalVariable(name: "cs", arg: 1, scope: !200, file: !201, line: 3, type: !204)
!207 = !DILocation(line: 3, column: 33, scope: !200)
!208 = !DILocalVariable(name: "x", arg: 2, scope: !200, file: !201, line: 4, type: !66)
!209 = !DILocation(line: 4, column: 26, scope: !200)
!210 = !DILocalVariable(name: "result", arg: 3, scope: !200, file: !201, line: 5, type: !67)
!211 = !DILocation(line: 5, column: 29, scope: !200)
!212 = !DILocalVariable(name: "j", scope: !200, file: !201, line: 7, type: !51)
!213 = !DILocation(line: 7, column: 7, scope: !200)
!214 = !DILocalVariable(name: "d", scope: !200, file: !201, line: 8, type: !49)
!215 = !DILocation(line: 8, column: 10, scope: !200)
!216 = !DILocalVariable(name: "dd", scope: !200, file: !201, line: 9, type: !49)
!217 = !DILocation(line: 9, column: 10, scope: !200)
!218 = !DILocalVariable(name: "y", scope: !200, file: !201, line: 11, type: !49)
!219 = !DILocation(line: 11, column: 10, scope: !200)
!220 = !DILocation(line: 11, column: 20, scope: !200)
!221 = !DILocation(line: 11, column: 19, scope: !200)
!222 = !DILocation(line: 11, column: 24, scope: !200)
!223 = !DILocation(line: 11, column: 28, scope: !200)
!224 = !DILocation(line: 11, column: 22, scope: !200)
!225 = !DILocation(line: 11, column: 32, scope: !200)
!226 = !DILocation(line: 11, column: 36, scope: !200)
!227 = !DILocation(line: 11, column: 30, scope: !200)
!228 = !DILocation(line: 11, column: 42, scope: !200)
!229 = !DILocation(line: 11, column: 46, scope: !200)
!230 = !DILocation(line: 11, column: 50, scope: !200)
!231 = !DILocation(line: 11, column: 54, scope: !200)
!232 = !DILocation(line: 11, column: 48, scope: !200)
!233 = !DILocation(line: 11, column: 39, scope: !200)
!234 = !DILocalVariable(name: "y2", scope: !200, file: !201, line: 12, type: !49)
!235 = !DILocation(line: 12, column: 10, scope: !200)
!236 = !DILocation(line: 12, column: 21, scope: !200)
!237 = !DILocation(line: 12, column: 19, scope: !200)
!238 = !DILocalVariable(name: "e", scope: !200, file: !201, line: 14, type: !49)
!239 = !DILocation(line: 14, column: 10, scope: !200)
!240 = !DILocation(line: 16, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !200, file: !201, line: 16, column: 3)
!242 = !DILocation(line: 16, column: 15, scope: !241)
!243 = !DILocation(line: 16, column: 9, scope: !241)
!244 = !DILocation(line: 16, column: 7, scope: !241)
!245 = !DILocation(line: 16, column: 22, scope: !246)
!246 = !DILexicalBlockFile(scope: !247, file: !201, discriminator: 1)
!247 = distinct !DILexicalBlock(scope: !241, file: !201, line: 16, column: 3)
!248 = !DILocation(line: 16, column: 23, scope: !246)
!249 = !DILocation(line: 16, column: 3, scope: !246)
!250 = !DILocalVariable(name: "temp", scope: !251, file: !201, line: 17, type: !49)
!251 = distinct !DILexicalBlock(scope: !247, file: !201, line: 16, column: 33)
!252 = !DILocation(line: 17, column: 12, scope: !251)
!253 = !DILocation(line: 17, column: 19, scope: !251)
!254 = !DILocation(line: 18, column: 9, scope: !251)
!255 = !DILocation(line: 18, column: 12, scope: !251)
!256 = !DILocation(line: 18, column: 11, scope: !251)
!257 = !DILocation(line: 18, column: 16, scope: !251)
!258 = !DILocation(line: 18, column: 14, scope: !251)
!259 = !DILocation(line: 18, column: 27, scope: !251)
!260 = !DILocation(line: 18, column: 21, scope: !251)
!261 = !DILocation(line: 18, column: 25, scope: !251)
!262 = !DILocation(line: 18, column: 19, scope: !251)
!263 = !DILocation(line: 18, column: 7, scope: !251)
!264 = !DILocation(line: 19, column: 15, scope: !251)
!265 = !DILocation(line: 19, column: 18, scope: !251)
!266 = !DILocation(line: 19, column: 17, scope: !251)
!267 = !DILocation(line: 19, column: 10, scope: !251)
!268 = !DILocation(line: 19, column: 31, scope: !251)
!269 = !DILocation(line: 19, column: 26, scope: !270)
!270 = !DILexicalBlockFile(scope: !251, file: !201, discriminator: 1)
!271 = !DILocation(line: 19, column: 24, scope: !251)
!272 = !DILocation(line: 19, column: 48, scope: !251)
!273 = !DILocation(line: 19, column: 42, scope: !251)
!274 = !DILocation(line: 19, column: 46, scope: !251)
!275 = !DILocation(line: 19, column: 37, scope: !276)
!276 = !DILexicalBlockFile(scope: !251, file: !201, discriminator: 2)
!277 = !DILocation(line: 19, column: 35, scope: !251)
!278 = !DILocation(line: 19, column: 7, scope: !251)
!279 = !DILocation(line: 20, column: 10, scope: !251)
!280 = !DILocation(line: 20, column: 8, scope: !251)
!281 = !DILocation(line: 21, column: 3, scope: !251)
!282 = !DILocation(line: 16, column: 29, scope: !283)
!283 = !DILexicalBlockFile(scope: !247, file: !201, discriminator: 2)
!284 = !DILocation(line: 16, column: 3, scope: !283)
!285 = distinct !{!285, !286}
!286 = !DILocation(line: 16, column: 3, scope: !200)
!287 = !DILocalVariable(name: "temp", scope: !288, file: !201, line: 24, type: !49)
!288 = distinct !DILexicalBlock(scope: !200, file: !201, line: 23, column: 3)
!289 = !DILocation(line: 24, column: 12, scope: !288)
!290 = !DILocation(line: 24, column: 19, scope: !288)
!291 = !DILocation(line: 25, column: 9, scope: !288)
!292 = !DILocation(line: 25, column: 11, scope: !288)
!293 = !DILocation(line: 25, column: 10, scope: !288)
!294 = !DILocation(line: 25, column: 15, scope: !288)
!295 = !DILocation(line: 25, column: 13, scope: !288)
!296 = !DILocation(line: 25, column: 26, scope: !288)
!297 = !DILocation(line: 25, column: 30, scope: !288)
!298 = !DILocation(line: 25, column: 24, scope: !288)
!299 = !DILocation(line: 25, column: 18, scope: !288)
!300 = !DILocation(line: 25, column: 7, scope: !288)
!301 = !DILocation(line: 26, column: 15, scope: !288)
!302 = !DILocation(line: 26, column: 17, scope: !288)
!303 = !DILocation(line: 26, column: 16, scope: !288)
!304 = !DILocation(line: 26, column: 10, scope: !288)
!305 = !DILocation(line: 26, column: 30, scope: !288)
!306 = !DILocation(line: 26, column: 25, scope: !307)
!307 = !DILexicalBlockFile(scope: !288, file: !201, discriminator: 1)
!308 = !DILocation(line: 26, column: 23, scope: !288)
!309 = !DILocation(line: 26, column: 47, scope: !288)
!310 = !DILocation(line: 26, column: 51, scope: !288)
!311 = !DILocation(line: 26, column: 42, scope: !312)
!312 = !DILexicalBlockFile(scope: !288, file: !201, discriminator: 2)
!313 = !DILocation(line: 26, column: 40, scope: !288)
!314 = !DILocation(line: 26, column: 34, scope: !288)
!315 = !DILocation(line: 26, column: 7, scope: !288)
!316 = !DILocation(line: 29, column: 17, scope: !200)
!317 = !DILocation(line: 29, column: 3, scope: !200)
!318 = !DILocation(line: 29, column: 11, scope: !200)
!319 = !DILocation(line: 29, column: 15, scope: !200)
!320 = !DILocation(line: 30, column: 35, scope: !200)
!321 = !DILocation(line: 30, column: 33, scope: !200)
!322 = !DILocation(line: 30, column: 50, scope: !200)
!323 = !DILocation(line: 30, column: 54, scope: !200)
!324 = !DILocation(line: 30, column: 44, scope: !200)
!325 = !DILocation(line: 30, column: 48, scope: !200)
!326 = !DILocation(line: 30, column: 39, scope: !200)
!327 = !DILocation(line: 30, column: 37, scope: !200)
!328 = !DILocation(line: 30, column: 3, scope: !200)
!329 = !DILocation(line: 30, column: 11, scope: !200)
!330 = !DILocation(line: 30, column: 15, scope: !200)
!331 = !DILocation(line: 32, column: 3, scope: !200)
!332 = distinct !DISubprogram(name: "gsl_sf_bessel_J0", scope: !1, file: !1, line: 108, type: !333, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!333 = !DISubroutineType(types: !334)
!334 = !{!49, !66}
!335 = !DILocalVariable(name: "x", arg: 1, scope: !332, file: !1, line: 108, type: !66)
!336 = !DILocation(line: 108, column: 38, scope: !332)
!337 = !DILocalVariable(name: "result", scope: !332, file: !1, line: 110, type: !68)
!338 = !DILocation(line: 110, column: 3, scope: !332)
!339 = !DILocalVariable(name: "status", scope: !332, file: !1, line: 110, type: !51)
!340 = !DILocation(line: 110, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !332, file: !1, line: 110, column: 3)
!342 = !DILocation(line: 110, column: 3, scope: !343)
!343 = !DILexicalBlockFile(scope: !344, file: !1, discriminator: 1)
!344 = distinct !DILexicalBlock(scope: !341, file: !1, line: 110, column: 3)
!345 = distinct !{!345, !346}
!346 = !DILocation(line: 110, column: 3, scope: !344)
!347 = !DILocation(line: 110, column: 3, scope: !348)
!348 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 2)
!349 = distinct !DILexicalBlock(scope: !344, file: !1, line: 110, column: 3)
!350 = !DILocation(line: 110, column: 3, scope: !351)
!351 = !DILexicalBlockFile(scope: !344, file: !1, discriminator: 3)
!352 = !DILocation(line: 110, column: 3, scope: !353)
!353 = !DILexicalBlockFile(scope: !332, file: !1, discriminator: 4)
!354 = !DILocation(line: 111, column: 1, scope: !332)
