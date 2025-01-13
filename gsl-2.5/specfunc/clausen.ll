; ModuleID = 'clausen.c'
source_filename = "clausen.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@aclaus_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([15 x double], [15 x double]* @aclaus_data, i32 0, i32 0), i32 14, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@.str = private unnamed_addr constant [29 x i8] c"gsl_sf_clausen_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"clausen.c\00", align 1
@aclaus_data = internal global [15 x double] [double 0x4001243CF14D9C94, double 0x3FB28460C5398C8E, double 0x3F50A731C3E77ADA, double 0x3F0103B385B37ED8, double 0x3EB65DD7FD2B2749, double 0x3E70ADB4D822210F, double 0x3E2AE308A2537CDD, double 0x3DE6DD2CB91E71FB, double 0x3DA43938B84274B5, double 0x3D626FD063CB6B46, double 3.058040e-14, double 1.819700e-15, double 1.100000e-16, double 6.800000e-18, double 4.000000e-19], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_clausen_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !74, metadata !75), !dbg !76
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !77, metadata !75), !dbg !78
  call void @llvm.dbg.declare(metadata double* %5, metadata !79, metadata !75), !dbg !81
  store double 0x3E6921FB54442D18, double* %5, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %6, metadata !82, metadata !75), !dbg !83
  store double 1.000000e+00, double* %6, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %7, metadata !84, metadata !75), !dbg !85
  %12 = load double, double* %3, align 8, !dbg !86
  %13 = fcmp olt double %12, 0.000000e+00, !dbg !88
  br i1 %13, label %14, label %17, !dbg !89

; <label>:14:                                     ; preds = %2
  %15 = load double, double* %3, align 8, !dbg !90
  %16 = fsub double -0.000000e+00, %15, !dbg !92
  store double %16, double* %3, align 8, !dbg !93
  store double -1.000000e+00, double* %6, align 8, !dbg !94
  br label %17, !dbg !95

; <label>:17:                                     ; preds = %14, %2
  %18 = call i32 @gsl_sf_angle_restrict_pos_e(double* %3), !dbg !96
  store i32 %18, i32* %7, align 4, !dbg !97
  %19 = load double, double* %3, align 8, !dbg !98
  %20 = fcmp ogt double %19, 0x400921FB54442D18, !dbg !100
  br i1 %20, label %21, label %27, !dbg !101

; <label>:21:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata double* %8, metadata !102, metadata !75), !dbg !104
  store double 6.281250e+00, double* %8, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata double* %9, metadata !105, metadata !75), !dbg !106
  store double 0x3F5FB54442D1846A, double* %9, align 8, !dbg !106
  %22 = load double, double* %3, align 8, !dbg !107
  %23 = fsub double 6.281250e+00, %22, !dbg !108
  %24 = fadd double %23, 0x3F5FB54442D1846A, !dbg !109
  store double %24, double* %3, align 8, !dbg !110
  %25 = load double, double* %6, align 8, !dbg !111
  %26 = fsub double -0.000000e+00, %25, !dbg !112
  store double %26, double* %6, align 8, !dbg !113
  br label %27, !dbg !114

; <label>:27:                                     ; preds = %21, %17
  %28 = load double, double* %3, align 8, !dbg !115
  %29 = fcmp oeq double %28, 0.000000e+00, !dbg !117
  br i1 %29, label %30, label %35, !dbg !118

; <label>:30:                                     ; preds = %27
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !119
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !121
  store double 0.000000e+00, double* %32, align 8, !dbg !122
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !123
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !124
  store double 0.000000e+00, double* %34, align 8, !dbg !125
  br label %76, !dbg !126

; <label>:35:                                     ; preds = %27
  %36 = load double, double* %3, align 8, !dbg !127
  %37 = fcmp olt double %36, 0x3E6921FB54442D18, !dbg !129
  br i1 %37, label %38, label %50, !dbg !130

; <label>:38:                                     ; preds = %35
  %39 = load double, double* %3, align 8, !dbg !131
  %40 = load double, double* %3, align 8, !dbg !133
  %41 = call double @log(double %40) #6, !dbg !134
  %42 = fsub double 1.000000e+00, %41, !dbg !135
  %43 = fmul double %39, %42, !dbg !136
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !137
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !138
  store double %43, double* %45, align 8, !dbg !139
  %46 = load double, double* %3, align 8, !dbg !140
  %47 = fmul double %46, 0x3CB0000000000000, !dbg !141
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !142
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !143
  store double %47, double* %49, align 8, !dbg !144
  br label %75, !dbg !145

; <label>:50:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %10, metadata !146, metadata !75), !dbg !148
  %51 = load double, double* %3, align 8, !dbg !149
  %52 = load double, double* %3, align 8, !dbg !150
  %53 = fmul double %51, %52, !dbg !151
  %54 = fdiv double %53, 0x4023BD3CC9BE45DE, !dbg !152
  %55 = fsub double %54, 5.000000e-01, !dbg !153
  %56 = fmul double 2.000000e+00, %55, !dbg !154
  store double %56, double* %10, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !155, metadata !75), !dbg !156
  %57 = load double, double* %10, align 8, !dbg !157
  %58 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @aclaus_cs, double %57, %struct.gsl_sf_result_struct* %11), !dbg !158
  %59 = load double, double* %3, align 8, !dbg !159
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !160
  %61 = load double, double* %60, align 8, !dbg !160
  %62 = load double, double* %3, align 8, !dbg !161
  %63 = call double @log(double %62) #6, !dbg !162
  %64 = fsub double %61, %63, !dbg !163
  %65 = fmul double %59, %64, !dbg !164
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !165
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !166
  store double %65, double* %67, align 8, !dbg !167
  %68 = load double, double* %3, align 8, !dbg !168
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !169
  %70 = load double, double* %69, align 8, !dbg !169
  %71 = fadd double %70, 0x3CB0000000000000, !dbg !170
  %72 = fmul double %68, %71, !dbg !171
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !172
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !173
  store double %72, double* %74, align 8, !dbg !174
  br label %75

; <label>:75:                                     ; preds = %50, %38
  br label %76

; <label>:76:                                     ; preds = %75, %30
  %77 = load double, double* %6, align 8, !dbg !175
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !176
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !177
  %80 = load double, double* %79, align 8, !dbg !178
  %81 = fmul double %80, %77, !dbg !178
  store double %81, double* %79, align 8, !dbg !178
  %82 = load i32, i32* %7, align 4, !dbg !179
  ret i32 %82, !dbg !180
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gsl_sf_angle_restrict_pos_e(double*) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !181 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !187, metadata !75), !dbg !188
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !189, metadata !75), !dbg !190
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !191, metadata !75), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %7, metadata !193, metadata !75), !dbg !194
  call void @llvm.dbg.declare(metadata double* %8, metadata !195, metadata !75), !dbg !196
  store double 0.000000e+00, double* %8, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata double* %9, metadata !197, metadata !75), !dbg !198
  store double 0.000000e+00, double* %9, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata double* %10, metadata !199, metadata !75), !dbg !200
  %15 = load double, double* %5, align 8, !dbg !201
  %16 = fmul double 2.000000e+00, %15, !dbg !202
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !203
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !204
  %19 = load double, double* %18, align 8, !dbg !204
  %20 = fsub double %16, %19, !dbg !205
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !206
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !207
  %23 = load double, double* %22, align 8, !dbg !207
  %24 = fsub double %20, %23, !dbg !208
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !209
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !210
  %27 = load double, double* %26, align 8, !dbg !210
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !211
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !212
  %30 = load double, double* %29, align 8, !dbg !212
  %31 = fsub double %27, %30, !dbg !213
  %32 = fdiv double %24, %31, !dbg !214
  store double %32, double* %10, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata double* %11, metadata !215, metadata !75), !dbg !216
  %33 = load double, double* %10, align 8, !dbg !217
  %34 = fmul double 2.000000e+00, %33, !dbg !218
  store double %34, double* %11, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata double* %12, metadata !219, metadata !75), !dbg !220
  store double 0.000000e+00, double* %12, align 8, !dbg !220
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !221
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !223
  %37 = load i32, i32* %36, align 8, !dbg !223
  store i32 %37, i32* %7, align 4, !dbg !224
  br label %38, !dbg !225

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !226
  %40 = icmp sge i32 %39, 1, !dbg !229
  br i1 %40, label %41, label %78, !dbg !230

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !231, metadata !75), !dbg !233
  %42 = load double, double* %8, align 8, !dbg !234
  store double %42, double* %13, align 8, !dbg !233
  %43 = load double, double* %11, align 8, !dbg !235
  %44 = load double, double* %8, align 8, !dbg !236
  %45 = fmul double %43, %44, !dbg !237
  %46 = load double, double* %9, align 8, !dbg !238
  %47 = fsub double %45, %46, !dbg !239
  %48 = load i32, i32* %7, align 4, !dbg !240
  %49 = sext i32 %48 to i64, !dbg !241
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !241
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !242
  %52 = load double*, double** %51, align 8, !dbg !242
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !241
  %54 = load double, double* %53, align 8, !dbg !241
  %55 = fadd double %47, %54, !dbg !243
  store double %55, double* %8, align 8, !dbg !244
  %56 = load double, double* %11, align 8, !dbg !245
  %57 = load double, double* %13, align 8, !dbg !246
  %58 = fmul double %56, %57, !dbg !247
  %59 = call double @fabs(double %58) #1, !dbg !248
  %60 = load double, double* %9, align 8, !dbg !249
  %61 = call double @fabs(double %60) #1, !dbg !250
  %62 = fadd double %59, %61, !dbg !252
  %63 = load i32, i32* %7, align 4, !dbg !253
  %64 = sext i32 %63 to i64, !dbg !254
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !254
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !255
  %67 = load double*, double** %66, align 8, !dbg !255
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !254
  %69 = load double, double* %68, align 8, !dbg !254
  %70 = call double @fabs(double %69) #1, !dbg !256
  %71 = fadd double %62, %70, !dbg !258
  %72 = load double, double* %12, align 8, !dbg !259
  %73 = fadd double %72, %71, !dbg !259
  store double %73, double* %12, align 8, !dbg !259
  %74 = load double, double* %13, align 8, !dbg !260
  store double %74, double* %9, align 8, !dbg !261
  br label %75, !dbg !262

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !263
  %77 = add nsw i32 %76, -1, !dbg !263
  store i32 %77, i32* %7, align 4, !dbg !263
  br label %38, !dbg !265, !llvm.loop !266

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !268, metadata !75), !dbg !270
  %79 = load double, double* %8, align 8, !dbg !271
  store double %79, double* %14, align 8, !dbg !270
  %80 = load double, double* %10, align 8, !dbg !272
  %81 = load double, double* %8, align 8, !dbg !273
  %82 = fmul double %80, %81, !dbg !274
  %83 = load double, double* %9, align 8, !dbg !275
  %84 = fsub double %82, %83, !dbg !276
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !277
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !278
  %87 = load double*, double** %86, align 8, !dbg !278
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !277
  %89 = load double, double* %88, align 8, !dbg !277
  %90 = fmul double 5.000000e-01, %89, !dbg !279
  %91 = fadd double %84, %90, !dbg !280
  store double %91, double* %8, align 8, !dbg !281
  %92 = load double, double* %10, align 8, !dbg !282
  %93 = load double, double* %14, align 8, !dbg !283
  %94 = fmul double %92, %93, !dbg !284
  %95 = call double @fabs(double %94) #1, !dbg !285
  %96 = load double, double* %9, align 8, !dbg !286
  %97 = call double @fabs(double %96) #1, !dbg !287
  %98 = fadd double %95, %97, !dbg !289
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !290
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !291
  %101 = load double*, double** %100, align 8, !dbg !291
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !290
  %103 = load double, double* %102, align 8, !dbg !290
  %104 = call double @fabs(double %103) #1, !dbg !292
  %105 = fmul double 5.000000e-01, %104, !dbg !294
  %106 = fadd double %98, %105, !dbg !295
  %107 = load double, double* %12, align 8, !dbg !296
  %108 = fadd double %107, %106, !dbg !296
  store double %108, double* %12, align 8, !dbg !296
  %109 = load double, double* %8, align 8, !dbg !297
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !298
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !299
  store double %109, double* %111, align 8, !dbg !300
  %112 = load double, double* %12, align 8, !dbg !301
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !302
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !303
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !304
  %116 = load i32, i32* %115, align 8, !dbg !304
  %117 = sext i32 %116 to i64, !dbg !305
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !305
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !306
  %120 = load double*, double** %119, align 8, !dbg !306
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !305
  %122 = load double, double* %121, align 8, !dbg !305
  %123 = call double @fabs(double %122) #1, !dbg !307
  %124 = fadd double %113, %123, !dbg !308
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !309
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !310
  store double %124, double* %126, align 8, !dbg !311
  ret i32 0, !dbg !312
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_clausen(double) #0 !dbg !313 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !316, metadata !75), !dbg !317
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !318, metadata !75), !dbg !319
  call void @llvm.dbg.declare(metadata i32* %5, metadata !320, metadata !75), !dbg !319
  %6 = load double, double* %3, align 8, !dbg !319
  %7 = call i32 @gsl_sf_clausen_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !319
  store i32 %7, i32* %5, align 4, !dbg !319
  %8 = load i32, i32* %5, align 4, !dbg !321
  %9 = icmp ne i32 %8, 0, !dbg !321
  br i1 %9, label %10, label %16, !dbg !319

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !323, !llvm.loop !326

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !328
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 %12), !dbg !328
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !328
  %14 = load double, double* %13, align 8, !dbg !328
  store double %14, double* %2, align 8, !dbg !328
  br label %19, !dbg !328
                                                  ; No predecessors!
  br label %16, !dbg !331

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !333
  %18 = load double, double* %17, align 8, !dbg !333
  store double %18, double* %2, align 8, !dbg !333
  br label %19, !dbg !333

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !335
  ret double %20, !dbg !335
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "clausen.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "aclaus_cs", scope: !0, file: !1, line: 48, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aclaus_cs)
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
!55 = distinct !DIGlobalVariable(name: "aclaus_data", scope: !0, file: !1, line: 31, type: !56, isLocal: true, isDefinition: true, variable: [15 x double]* @aclaus_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 960, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 15)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_clausen_e", scope: !1, file: !1, line: 58, type: !64, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!64 = !DISubroutineType(types: !65)
!65 = !{!51, !49, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !68, line: 41, baseType: !69)
!68 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !68, line: 37, size: 128, align: 64, elements: !70)
!70 = !{!71, !72}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !69, file: !68, line: 38, baseType: !49, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !69, file: !68, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!73 = !{}
!74 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 58, type: !49)
!75 = !DIExpression()
!76 = !DILocation(line: 58, column: 29, scope: !63)
!77 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 58, type: !66)
!78 = !DILocation(line: 58, column: 47, scope: !63)
!79 = !DILocalVariable(name: "x_cut", scope: !63, file: !1, line: 60, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!81 = !DILocation(line: 60, column: 16, scope: !63)
!82 = !DILocalVariable(name: "sgn", scope: !63, file: !1, line: 62, type: !49)
!83 = !DILocation(line: 62, column: 10, scope: !63)
!84 = !DILocalVariable(name: "status_red", scope: !63, file: !1, line: 63, type: !51)
!85 = !DILocation(line: 63, column: 7, scope: !63)
!86 = !DILocation(line: 65, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !63, file: !1, line: 65, column: 6)
!88 = !DILocation(line: 65, column: 8, scope: !87)
!89 = !DILocation(line: 65, column: 6, scope: !63)
!90 = !DILocation(line: 66, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 65, column: 15)
!92 = !DILocation(line: 66, column: 11, scope: !91)
!93 = !DILocation(line: 66, column: 9, scope: !91)
!94 = !DILocation(line: 67, column: 9, scope: !91)
!95 = !DILocation(line: 68, column: 3, scope: !91)
!96 = !DILocation(line: 71, column: 16, scope: !63)
!97 = !DILocation(line: 71, column: 14, scope: !63)
!98 = !DILocation(line: 74, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !63, file: !1, line: 74, column: 6)
!100 = !DILocation(line: 74, column: 8, scope: !99)
!101 = !DILocation(line: 74, column: 6, scope: !63)
!102 = !DILocalVariable(name: "p0", scope: !103, file: !1, line: 76, type: !80)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 74, column: 16)
!104 = !DILocation(line: 76, column: 18, scope: !103)
!105 = !DILocalVariable(name: "p1", scope: !103, file: !1, line: 77, type: !80)
!106 = !DILocation(line: 77, column: 18, scope: !103)
!107 = !DILocation(line: 78, column: 15, scope: !103)
!108 = !DILocation(line: 78, column: 13, scope: !103)
!109 = !DILocation(line: 78, column: 18, scope: !103)
!110 = !DILocation(line: 78, column: 7, scope: !103)
!111 = !DILocation(line: 79, column: 12, scope: !103)
!112 = !DILocation(line: 79, column: 11, scope: !103)
!113 = !DILocation(line: 79, column: 9, scope: !103)
!114 = !DILocation(line: 80, column: 3, scope: !103)
!115 = !DILocation(line: 82, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !63, file: !1, line: 82, column: 6)
!117 = !DILocation(line: 82, column: 8, scope: !116)
!118 = !DILocation(line: 82, column: 6, scope: !63)
!119 = !DILocation(line: 83, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 82, column: 16)
!121 = !DILocation(line: 83, column: 13, scope: !120)
!122 = !DILocation(line: 83, column: 17, scope: !120)
!123 = !DILocation(line: 84, column: 5, scope: !120)
!124 = !DILocation(line: 84, column: 13, scope: !120)
!125 = !DILocation(line: 84, column: 17, scope: !120)
!126 = !DILocation(line: 85, column: 3, scope: !120)
!127 = !DILocation(line: 86, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !116, file: !1, line: 86, column: 11)
!129 = !DILocation(line: 86, column: 13, scope: !128)
!130 = !DILocation(line: 86, column: 11, scope: !116)
!131 = !DILocation(line: 87, column: 19, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 86, column: 22)
!133 = !DILocation(line: 87, column: 34, scope: !132)
!134 = !DILocation(line: 87, column: 30, scope: !132)
!135 = !DILocation(line: 87, column: 28, scope: !132)
!136 = !DILocation(line: 87, column: 21, scope: !132)
!137 = !DILocation(line: 87, column: 5, scope: !132)
!138 = !DILocation(line: 87, column: 13, scope: !132)
!139 = !DILocation(line: 87, column: 17, scope: !132)
!140 = !DILocation(line: 88, column: 19, scope: !132)
!141 = !DILocation(line: 88, column: 21, scope: !132)
!142 = !DILocation(line: 88, column: 5, scope: !132)
!143 = !DILocation(line: 88, column: 13, scope: !132)
!144 = !DILocation(line: 88, column: 17, scope: !132)
!145 = !DILocation(line: 89, column: 3, scope: !132)
!146 = !DILocalVariable(name: "t", scope: !147, file: !1, line: 91, type: !80)
!147 = distinct !DILexicalBlock(scope: !128, file: !1, line: 90, column: 8)
!148 = !DILocation(line: 91, column: 18, scope: !147)
!149 = !DILocation(line: 91, column: 27, scope: !147)
!150 = !DILocation(line: 91, column: 29, scope: !147)
!151 = !DILocation(line: 91, column: 28, scope: !147)
!152 = !DILocation(line: 91, column: 31, scope: !147)
!153 = !DILocation(line: 91, column: 45, scope: !147)
!154 = !DILocation(line: 91, column: 25, scope: !147)
!155 = !DILocalVariable(name: "result_c", scope: !147, file: !1, line: 92, type: !67)
!156 = !DILocation(line: 92, column: 19, scope: !147)
!157 = !DILocation(line: 93, column: 29, scope: !147)
!158 = !DILocation(line: 93, column: 5, scope: !147)
!159 = !DILocation(line: 94, column: 19, scope: !147)
!160 = !DILocation(line: 94, column: 33, scope: !147)
!161 = !DILocation(line: 94, column: 43, scope: !147)
!162 = !DILocation(line: 94, column: 39, scope: !147)
!163 = !DILocation(line: 94, column: 37, scope: !147)
!164 = !DILocation(line: 94, column: 21, scope: !147)
!165 = !DILocation(line: 94, column: 5, scope: !147)
!166 = !DILocation(line: 94, column: 13, scope: !147)
!167 = !DILocation(line: 94, column: 17, scope: !147)
!168 = !DILocation(line: 95, column: 19, scope: !147)
!169 = !DILocation(line: 95, column: 33, scope: !147)
!170 = !DILocation(line: 95, column: 37, scope: !147)
!171 = !DILocation(line: 95, column: 21, scope: !147)
!172 = !DILocation(line: 95, column: 5, scope: !147)
!173 = !DILocation(line: 95, column: 13, scope: !147)
!174 = !DILocation(line: 95, column: 17, scope: !147)
!175 = !DILocation(line: 98, column: 18, scope: !63)
!176 = !DILocation(line: 98, column: 3, scope: !63)
!177 = !DILocation(line: 98, column: 11, scope: !63)
!178 = !DILocation(line: 98, column: 15, scope: !63)
!179 = !DILocation(line: 100, column: 10, scope: !63)
!180 = !DILocation(line: 100, column: 3, scope: !63)
!181 = distinct !DISubprogram(name: "cheb_eval_e", scope: !182, file: !182, line: 3, type: !183, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!182 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!183 = !DISubroutineType(types: !184)
!184 = !{!51, !185, !80, !66}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!187 = !DILocalVariable(name: "cs", arg: 1, scope: !181, file: !182, line: 3, type: !185)
!188 = !DILocation(line: 3, column: 33, scope: !181)
!189 = !DILocalVariable(name: "x", arg: 2, scope: !181, file: !182, line: 4, type: !80)
!190 = !DILocation(line: 4, column: 26, scope: !181)
!191 = !DILocalVariable(name: "result", arg: 3, scope: !181, file: !182, line: 5, type: !66)
!192 = !DILocation(line: 5, column: 29, scope: !181)
!193 = !DILocalVariable(name: "j", scope: !181, file: !182, line: 7, type: !51)
!194 = !DILocation(line: 7, column: 7, scope: !181)
!195 = !DILocalVariable(name: "d", scope: !181, file: !182, line: 8, type: !49)
!196 = !DILocation(line: 8, column: 10, scope: !181)
!197 = !DILocalVariable(name: "dd", scope: !181, file: !182, line: 9, type: !49)
!198 = !DILocation(line: 9, column: 10, scope: !181)
!199 = !DILocalVariable(name: "y", scope: !181, file: !182, line: 11, type: !49)
!200 = !DILocation(line: 11, column: 10, scope: !181)
!201 = !DILocation(line: 11, column: 20, scope: !181)
!202 = !DILocation(line: 11, column: 19, scope: !181)
!203 = !DILocation(line: 11, column: 24, scope: !181)
!204 = !DILocation(line: 11, column: 28, scope: !181)
!205 = !DILocation(line: 11, column: 22, scope: !181)
!206 = !DILocation(line: 11, column: 32, scope: !181)
!207 = !DILocation(line: 11, column: 36, scope: !181)
!208 = !DILocation(line: 11, column: 30, scope: !181)
!209 = !DILocation(line: 11, column: 42, scope: !181)
!210 = !DILocation(line: 11, column: 46, scope: !181)
!211 = !DILocation(line: 11, column: 50, scope: !181)
!212 = !DILocation(line: 11, column: 54, scope: !181)
!213 = !DILocation(line: 11, column: 48, scope: !181)
!214 = !DILocation(line: 11, column: 39, scope: !181)
!215 = !DILocalVariable(name: "y2", scope: !181, file: !182, line: 12, type: !49)
!216 = !DILocation(line: 12, column: 10, scope: !181)
!217 = !DILocation(line: 12, column: 21, scope: !181)
!218 = !DILocation(line: 12, column: 19, scope: !181)
!219 = !DILocalVariable(name: "e", scope: !181, file: !182, line: 14, type: !49)
!220 = !DILocation(line: 14, column: 10, scope: !181)
!221 = !DILocation(line: 16, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !181, file: !182, line: 16, column: 3)
!223 = !DILocation(line: 16, column: 15, scope: !222)
!224 = !DILocation(line: 16, column: 9, scope: !222)
!225 = !DILocation(line: 16, column: 7, scope: !222)
!226 = !DILocation(line: 16, column: 22, scope: !227)
!227 = !DILexicalBlockFile(scope: !228, file: !182, discriminator: 1)
!228 = distinct !DILexicalBlock(scope: !222, file: !182, line: 16, column: 3)
!229 = !DILocation(line: 16, column: 23, scope: !227)
!230 = !DILocation(line: 16, column: 3, scope: !227)
!231 = !DILocalVariable(name: "temp", scope: !232, file: !182, line: 17, type: !49)
!232 = distinct !DILexicalBlock(scope: !228, file: !182, line: 16, column: 33)
!233 = !DILocation(line: 17, column: 12, scope: !232)
!234 = !DILocation(line: 17, column: 19, scope: !232)
!235 = !DILocation(line: 18, column: 9, scope: !232)
!236 = !DILocation(line: 18, column: 12, scope: !232)
!237 = !DILocation(line: 18, column: 11, scope: !232)
!238 = !DILocation(line: 18, column: 16, scope: !232)
!239 = !DILocation(line: 18, column: 14, scope: !232)
!240 = !DILocation(line: 18, column: 27, scope: !232)
!241 = !DILocation(line: 18, column: 21, scope: !232)
!242 = !DILocation(line: 18, column: 25, scope: !232)
!243 = !DILocation(line: 18, column: 19, scope: !232)
!244 = !DILocation(line: 18, column: 7, scope: !232)
!245 = !DILocation(line: 19, column: 15, scope: !232)
!246 = !DILocation(line: 19, column: 18, scope: !232)
!247 = !DILocation(line: 19, column: 17, scope: !232)
!248 = !DILocation(line: 19, column: 10, scope: !232)
!249 = !DILocation(line: 19, column: 31, scope: !232)
!250 = !DILocation(line: 19, column: 26, scope: !251)
!251 = !DILexicalBlockFile(scope: !232, file: !182, discriminator: 1)
!252 = !DILocation(line: 19, column: 24, scope: !232)
!253 = !DILocation(line: 19, column: 48, scope: !232)
!254 = !DILocation(line: 19, column: 42, scope: !232)
!255 = !DILocation(line: 19, column: 46, scope: !232)
!256 = !DILocation(line: 19, column: 37, scope: !257)
!257 = !DILexicalBlockFile(scope: !232, file: !182, discriminator: 2)
!258 = !DILocation(line: 19, column: 35, scope: !232)
!259 = !DILocation(line: 19, column: 7, scope: !232)
!260 = !DILocation(line: 20, column: 10, scope: !232)
!261 = !DILocation(line: 20, column: 8, scope: !232)
!262 = !DILocation(line: 21, column: 3, scope: !232)
!263 = !DILocation(line: 16, column: 29, scope: !264)
!264 = !DILexicalBlockFile(scope: !228, file: !182, discriminator: 2)
!265 = !DILocation(line: 16, column: 3, scope: !264)
!266 = distinct !{!266, !267}
!267 = !DILocation(line: 16, column: 3, scope: !181)
!268 = !DILocalVariable(name: "temp", scope: !269, file: !182, line: 24, type: !49)
!269 = distinct !DILexicalBlock(scope: !181, file: !182, line: 23, column: 3)
!270 = !DILocation(line: 24, column: 12, scope: !269)
!271 = !DILocation(line: 24, column: 19, scope: !269)
!272 = !DILocation(line: 25, column: 9, scope: !269)
!273 = !DILocation(line: 25, column: 11, scope: !269)
!274 = !DILocation(line: 25, column: 10, scope: !269)
!275 = !DILocation(line: 25, column: 15, scope: !269)
!276 = !DILocation(line: 25, column: 13, scope: !269)
!277 = !DILocation(line: 25, column: 26, scope: !269)
!278 = !DILocation(line: 25, column: 30, scope: !269)
!279 = !DILocation(line: 25, column: 24, scope: !269)
!280 = !DILocation(line: 25, column: 18, scope: !269)
!281 = !DILocation(line: 25, column: 7, scope: !269)
!282 = !DILocation(line: 26, column: 15, scope: !269)
!283 = !DILocation(line: 26, column: 17, scope: !269)
!284 = !DILocation(line: 26, column: 16, scope: !269)
!285 = !DILocation(line: 26, column: 10, scope: !269)
!286 = !DILocation(line: 26, column: 30, scope: !269)
!287 = !DILocation(line: 26, column: 25, scope: !288)
!288 = !DILexicalBlockFile(scope: !269, file: !182, discriminator: 1)
!289 = !DILocation(line: 26, column: 23, scope: !269)
!290 = !DILocation(line: 26, column: 47, scope: !269)
!291 = !DILocation(line: 26, column: 51, scope: !269)
!292 = !DILocation(line: 26, column: 42, scope: !293)
!293 = !DILexicalBlockFile(scope: !269, file: !182, discriminator: 2)
!294 = !DILocation(line: 26, column: 40, scope: !269)
!295 = !DILocation(line: 26, column: 34, scope: !269)
!296 = !DILocation(line: 26, column: 7, scope: !269)
!297 = !DILocation(line: 29, column: 17, scope: !181)
!298 = !DILocation(line: 29, column: 3, scope: !181)
!299 = !DILocation(line: 29, column: 11, scope: !181)
!300 = !DILocation(line: 29, column: 15, scope: !181)
!301 = !DILocation(line: 30, column: 35, scope: !181)
!302 = !DILocation(line: 30, column: 33, scope: !181)
!303 = !DILocation(line: 30, column: 50, scope: !181)
!304 = !DILocation(line: 30, column: 54, scope: !181)
!305 = !DILocation(line: 30, column: 44, scope: !181)
!306 = !DILocation(line: 30, column: 48, scope: !181)
!307 = !DILocation(line: 30, column: 39, scope: !181)
!308 = !DILocation(line: 30, column: 37, scope: !181)
!309 = !DILocation(line: 30, column: 3, scope: !181)
!310 = !DILocation(line: 30, column: 11, scope: !181)
!311 = !DILocation(line: 30, column: 15, scope: !181)
!312 = !DILocation(line: 32, column: 3, scope: !181)
!313 = distinct !DISubprogram(name: "gsl_sf_clausen", scope: !1, file: !1, line: 108, type: !314, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!314 = !DISubroutineType(types: !315)
!315 = !{!49, !80}
!316 = !DILocalVariable(name: "x", arg: 1, scope: !313, file: !1, line: 108, type: !80)
!317 = !DILocation(line: 108, column: 36, scope: !313)
!318 = !DILocalVariable(name: "result", scope: !313, file: !1, line: 110, type: !67)
!319 = !DILocation(line: 110, column: 3, scope: !313)
!320 = !DILocalVariable(name: "status", scope: !313, file: !1, line: 110, type: !51)
!321 = !DILocation(line: 110, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !313, file: !1, line: 110, column: 3)
!323 = !DILocation(line: 110, column: 3, scope: !324)
!324 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 1)
!325 = distinct !DILexicalBlock(scope: !322, file: !1, line: 110, column: 3)
!326 = distinct !{!326, !327}
!327 = !DILocation(line: 110, column: 3, scope: !325)
!328 = !DILocation(line: 110, column: 3, scope: !329)
!329 = !DILexicalBlockFile(scope: !330, file: !1, discriminator: 2)
!330 = distinct !DILexicalBlock(scope: !325, file: !1, line: 110, column: 3)
!331 = !DILocation(line: 110, column: 3, scope: !332)
!332 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 3)
!333 = !DILocation(line: 110, column: 3, scope: !334)
!334 = !DILexicalBlockFile(scope: !313, file: !1, discriminator: 4)
!335 = !DILocation(line: 111, column: 1, scope: !313)
