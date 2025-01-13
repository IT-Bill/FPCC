; ModuleID = 'atanint.c'
source_filename = "atanint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@atanint_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @atanint_data, i32 0, i32 0), i32 20, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@.str = private unnamed_addr constant [29 x i8] c"gsl_sf_atanint_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"atanint.c\00", align 1
@atanint_data = internal global [21 x double] [double 0x3FFE910360FD5653, double 0xBFA5620700D3A6F3, double 0x3F668F667FBD99E5, double 0xBF306AFF06B59B60, double 0x3EFBF71F9572C207, double 0xBECA29CC3BF903BB, double 0x3E9A0F9AEC3D48DB, double 0xBE6B26AA4EBA221D, double 0x3E3D4226B4DF017B, double 0xBE102F8324D66595, double 0x3DE24A4B295A7633, double 0xBDB507B5CD72FF10, double 0x3D88888DC99AFD17, double -4.117482e-13, double 6.142987e-14, double -9.249290e-15, double 1.403870e-15, double -2.146000e-16, double 3.301000e-17, double -5.110000e-18, double 7.900000e-19], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_atanint_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !75, metadata !76), !dbg !77
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !78, metadata !76), !dbg !79
  call void @llvm.dbg.declare(metadata double* %6, metadata !80, metadata !76), !dbg !81
  %12 = load double, double* %4, align 8, !dbg !82
  %13 = call double @fabs(double %12) #1, !dbg !83
  store double %13, double* %6, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %7, metadata !84, metadata !76), !dbg !85
  %14 = load double, double* %4, align 8, !dbg !86
  %15 = fcmp oge double %14, 0.000000e+00, !dbg !86
  %16 = select i1 %15, i32 1, i32 -1, !dbg !86
  %17 = sitofp i32 %16 to double, !dbg !86
  store double %17, double* %7, align 8, !dbg !85
  %18 = load double, double* %6, align 8, !dbg !87
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !89
  br i1 %19, label %20, label %25, !dbg !90

; <label>:20:                                     ; preds = %2
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !91
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !93
  store double 0.000000e+00, double* %22, align 8, !dbg !94
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !96
  store double 0.000000e+00, double* %24, align 8, !dbg !97
  store i32 0, i32* %3, align 4, !dbg !98
  br label %130, !dbg !98

; <label>:25:                                     ; preds = %2
  %26 = load double, double* %6, align 8, !dbg !99
  %27 = fcmp olt double %26, 0x3E40000000000000, !dbg !101
  br i1 %27, label %28, label %34, !dbg !102

; <label>:28:                                     ; preds = %25
  %29 = load double, double* %4, align 8, !dbg !103
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !105
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !106
  store double %29, double* %31, align 8, !dbg !107
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !108
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !109
  store double 0.000000e+00, double* %33, align 8, !dbg !110
  store i32 0, i32* %3, align 4, !dbg !111
  br label %130, !dbg !111

; <label>:34:                                     ; preds = %25
  %35 = load double, double* %6, align 8, !dbg !112
  %36 = fcmp ole double %35, 1.000000e+00, !dbg !114
  br i1 %36, label %37, label %66, !dbg !115

; <label>:37:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata double* %8, metadata !116, metadata !76), !dbg !118
  %38 = load double, double* %4, align 8, !dbg !119
  %39 = load double, double* %4, align 8, !dbg !120
  %40 = fmul double %38, %39, !dbg !121
  %41 = fsub double %40, 5.000000e-01, !dbg !122
  %42 = fmul double 2.000000e+00, %41, !dbg !123
  store double %42, double* %8, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !124, metadata !76), !dbg !125
  %43 = load double, double* %8, align 8, !dbg !126
  %44 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @atanint_cs, double %43, %struct.gsl_sf_result_struct* %9), !dbg !127
  %45 = load double, double* %4, align 8, !dbg !128
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !129
  %47 = load double, double* %46, align 8, !dbg !129
  %48 = fmul double %45, %47, !dbg !130
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !131
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !132
  store double %48, double* %50, align 8, !dbg !133
  %51 = load double, double* %4, align 8, !dbg !134
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !135
  %53 = load double, double* %52, align 8, !dbg !135
  %54 = fmul double %51, %53, !dbg !136
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !137
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !138
  store double %54, double* %56, align 8, !dbg !139
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !140
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !141
  %59 = load double, double* %58, align 8, !dbg !141
  %60 = call double @fabs(double %59) #1, !dbg !142
  %61 = fmul double 0x3CB0000000000000, %60, !dbg !143
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !144
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !145
  %64 = load double, double* %63, align 8, !dbg !146
  %65 = fadd double %64, %61, !dbg !146
  store double %65, double* %63, align 8, !dbg !146
  store i32 0, i32* %3, align 4, !dbg !147
  br label %130, !dbg !147

; <label>:66:                                     ; preds = %34
  %67 = load double, double* %6, align 8, !dbg !148
  %68 = fcmp olt double %67, 0x4190000000000000, !dbg !150
  br i1 %68, label %69, label %111, !dbg !151

; <label>:69:                                     ; preds = %66
  call void @llvm.dbg.declare(metadata double* %10, metadata !152, metadata !76), !dbg !154
  %70 = load double, double* %4, align 8, !dbg !155
  %71 = load double, double* %4, align 8, !dbg !156
  %72 = fmul double %70, %71, !dbg !157
  %73 = fdiv double 1.000000e+00, %72, !dbg !158
  %74 = fsub double %73, 5.000000e-01, !dbg !159
  %75 = fmul double 2.000000e+00, %74, !dbg !160
  store double %75, double* %10, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !161, metadata !76), !dbg !162
  %76 = load double, double* %10, align 8, !dbg !163
  %77 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @atanint_cs, double %76, %struct.gsl_sf_result_struct* %11), !dbg !164
  %78 = load double, double* %7, align 8, !dbg !165
  %79 = load double, double* %6, align 8, !dbg !166
  %80 = call double @log(double %79) #6, !dbg !167
  %81 = fmul double 0x3FF921FB54442D18, %80, !dbg !168
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !169
  %83 = load double, double* %82, align 8, !dbg !169
  %84 = load double, double* %6, align 8, !dbg !170
  %85 = fdiv double %83, %84, !dbg !171
  %86 = fadd double %81, %85, !dbg !172
  %87 = fmul double %78, %86, !dbg !173
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !174
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !175
  store double %87, double* %89, align 8, !dbg !176
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !177
  %91 = load double, double* %90, align 8, !dbg !177
  %92 = load double, double* %6, align 8, !dbg !178
  %93 = fdiv double %91, %92, !dbg !179
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !180
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 0, !dbg !181
  %96 = load double, double* %95, align 8, !dbg !181
  %97 = fmul double %96, 0x3CB0000000000000, !dbg !182
  %98 = call double @fabs(double %97) #1, !dbg !183
  %99 = fadd double %93, %98, !dbg !184
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !185
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !186
  store double %99, double* %101, align 8, !dbg !187
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !188
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !189
  %104 = load double, double* %103, align 8, !dbg !189
  %105 = call double @fabs(double %104) #1, !dbg !190
  %106 = fmul double 0x3CB0000000000000, %105, !dbg !191
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !192
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !193
  %109 = load double, double* %108, align 8, !dbg !194
  %110 = fadd double %109, %106, !dbg !194
  store double %110, double* %108, align 8, !dbg !194
  store i32 0, i32* %3, align 4, !dbg !195
  br label %130, !dbg !195

; <label>:111:                                    ; preds = %66
  %112 = load double, double* %7, align 8, !dbg !196
  %113 = load double, double* %6, align 8, !dbg !198
  %114 = call double @log(double %113) #6, !dbg !199
  %115 = fmul double 0x3FF921FB54442D18, %114, !dbg !200
  %116 = load double, double* %6, align 8, !dbg !201
  %117 = fdiv double 1.000000e+00, %116, !dbg !202
  %118 = fadd double %115, %117, !dbg !203
  %119 = fmul double %112, %118, !dbg !204
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !205
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !206
  store double %119, double* %121, align 8, !dbg !207
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !208
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !209
  %124 = load double, double* %123, align 8, !dbg !209
  %125 = fmul double %124, 0x3CB0000000000000, !dbg !210
  %126 = call double @fabs(double %125) #1, !dbg !211
  %127 = fmul double 2.000000e+00, %126, !dbg !212
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !213
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !214
  store double %127, double* %129, align 8, !dbg !215
  store i32 0, i32* %3, align 4, !dbg !216
  br label %130, !dbg !216

; <label>:130:                                    ; preds = %111, %69, %37, %28, %20
  %131 = load i32, i32* %3, align 4, !dbg !217
  ret i32 %131, !dbg !217
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !218 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !224, metadata !76), !dbg !225
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !226, metadata !76), !dbg !227
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !228, metadata !76), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %7, metadata !230, metadata !76), !dbg !231
  call void @llvm.dbg.declare(metadata double* %8, metadata !232, metadata !76), !dbg !233
  store double 0.000000e+00, double* %8, align 8, !dbg !233
  call void @llvm.dbg.declare(metadata double* %9, metadata !234, metadata !76), !dbg !235
  store double 0.000000e+00, double* %9, align 8, !dbg !235
  call void @llvm.dbg.declare(metadata double* %10, metadata !236, metadata !76), !dbg !237
  %15 = load double, double* %5, align 8, !dbg !238
  %16 = fmul double 2.000000e+00, %15, !dbg !239
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !240
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !241
  %19 = load double, double* %18, align 8, !dbg !241
  %20 = fsub double %16, %19, !dbg !242
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !243
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !244
  %23 = load double, double* %22, align 8, !dbg !244
  %24 = fsub double %20, %23, !dbg !245
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !246
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !247
  %27 = load double, double* %26, align 8, !dbg !247
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !248
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !249
  %30 = load double, double* %29, align 8, !dbg !249
  %31 = fsub double %27, %30, !dbg !250
  %32 = fdiv double %24, %31, !dbg !251
  store double %32, double* %10, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata double* %11, metadata !252, metadata !76), !dbg !253
  %33 = load double, double* %10, align 8, !dbg !254
  %34 = fmul double 2.000000e+00, %33, !dbg !255
  store double %34, double* %11, align 8, !dbg !253
  call void @llvm.dbg.declare(metadata double* %12, metadata !256, metadata !76), !dbg !257
  store double 0.000000e+00, double* %12, align 8, !dbg !257
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !258
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !260
  %37 = load i32, i32* %36, align 8, !dbg !260
  store i32 %37, i32* %7, align 4, !dbg !261
  br label %38, !dbg !262

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !263
  %40 = icmp sge i32 %39, 1, !dbg !266
  br i1 %40, label %41, label %78, !dbg !267

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !268, metadata !76), !dbg !270
  %42 = load double, double* %8, align 8, !dbg !271
  store double %42, double* %13, align 8, !dbg !270
  %43 = load double, double* %11, align 8, !dbg !272
  %44 = load double, double* %8, align 8, !dbg !273
  %45 = fmul double %43, %44, !dbg !274
  %46 = load double, double* %9, align 8, !dbg !275
  %47 = fsub double %45, %46, !dbg !276
  %48 = load i32, i32* %7, align 4, !dbg !277
  %49 = sext i32 %48 to i64, !dbg !278
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !278
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !279
  %52 = load double*, double** %51, align 8, !dbg !279
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !278
  %54 = load double, double* %53, align 8, !dbg !278
  %55 = fadd double %47, %54, !dbg !280
  store double %55, double* %8, align 8, !dbg !281
  %56 = load double, double* %11, align 8, !dbg !282
  %57 = load double, double* %13, align 8, !dbg !283
  %58 = fmul double %56, %57, !dbg !284
  %59 = call double @fabs(double %58) #1, !dbg !285
  %60 = load double, double* %9, align 8, !dbg !286
  %61 = call double @fabs(double %60) #1, !dbg !287
  %62 = fadd double %59, %61, !dbg !289
  %63 = load i32, i32* %7, align 4, !dbg !290
  %64 = sext i32 %63 to i64, !dbg !291
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !291
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !292
  %67 = load double*, double** %66, align 8, !dbg !292
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !291
  %69 = load double, double* %68, align 8, !dbg !291
  %70 = call double @fabs(double %69) #1, !dbg !293
  %71 = fadd double %62, %70, !dbg !295
  %72 = load double, double* %12, align 8, !dbg !296
  %73 = fadd double %72, %71, !dbg !296
  store double %73, double* %12, align 8, !dbg !296
  %74 = load double, double* %13, align 8, !dbg !297
  store double %74, double* %9, align 8, !dbg !298
  br label %75, !dbg !299

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !300
  %77 = add nsw i32 %76, -1, !dbg !300
  store i32 %77, i32* %7, align 4, !dbg !300
  br label %38, !dbg !302, !llvm.loop !303

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !305, metadata !76), !dbg !307
  %79 = load double, double* %8, align 8, !dbg !308
  store double %79, double* %14, align 8, !dbg !307
  %80 = load double, double* %10, align 8, !dbg !309
  %81 = load double, double* %8, align 8, !dbg !310
  %82 = fmul double %80, %81, !dbg !311
  %83 = load double, double* %9, align 8, !dbg !312
  %84 = fsub double %82, %83, !dbg !313
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !314
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !315
  %87 = load double*, double** %86, align 8, !dbg !315
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !314
  %89 = load double, double* %88, align 8, !dbg !314
  %90 = fmul double 5.000000e-01, %89, !dbg !316
  %91 = fadd double %84, %90, !dbg !317
  store double %91, double* %8, align 8, !dbg !318
  %92 = load double, double* %10, align 8, !dbg !319
  %93 = load double, double* %14, align 8, !dbg !320
  %94 = fmul double %92, %93, !dbg !321
  %95 = call double @fabs(double %94) #1, !dbg !322
  %96 = load double, double* %9, align 8, !dbg !323
  %97 = call double @fabs(double %96) #1, !dbg !324
  %98 = fadd double %95, %97, !dbg !326
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !327
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !328
  %101 = load double*, double** %100, align 8, !dbg !328
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !327
  %103 = load double, double* %102, align 8, !dbg !327
  %104 = call double @fabs(double %103) #1, !dbg !329
  %105 = fmul double 5.000000e-01, %104, !dbg !331
  %106 = fadd double %98, %105, !dbg !332
  %107 = load double, double* %12, align 8, !dbg !333
  %108 = fadd double %107, %106, !dbg !333
  store double %108, double* %12, align 8, !dbg !333
  %109 = load double, double* %8, align 8, !dbg !334
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !335
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !336
  store double %109, double* %111, align 8, !dbg !337
  %112 = load double, double* %12, align 8, !dbg !338
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !339
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !340
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !341
  %116 = load i32, i32* %115, align 8, !dbg !341
  %117 = sext i32 %116 to i64, !dbg !342
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !342
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !343
  %120 = load double*, double** %119, align 8, !dbg !343
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !342
  %122 = load double, double* %121, align 8, !dbg !342
  %123 = call double @fabs(double %122) #1, !dbg !344
  %124 = fadd double %113, %123, !dbg !345
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !346
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !347
  store double %124, double* %126, align 8, !dbg !348
  ret i32 0, !dbg !349
}

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_atanint(double) #0 !dbg !350 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !353, metadata !76), !dbg !354
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !355, metadata !76), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %5, metadata !357, metadata !76), !dbg !356
  %6 = load double, double* %3, align 8, !dbg !356
  %7 = call i32 @gsl_sf_atanint_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !356
  store i32 %7, i32* %5, align 4, !dbg !356
  %8 = load i32, i32* %5, align 4, !dbg !358
  %9 = icmp ne i32 %8, 0, !dbg !358
  br i1 %9, label %10, label %16, !dbg !356

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !360, !llvm.loop !363

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !365
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 114, i32 %12), !dbg !365
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !365
  %14 = load double, double* %13, align 8, !dbg !365
  store double %14, double* %2, align 8, !dbg !365
  br label %19, !dbg !365
                                                  ; No predecessors!
  br label %16, !dbg !368

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !370
  %18 = load double, double* %17, align 8, !dbg !370
  store double %18, double* %2, align 8, !dbg !370
  br label %19, !dbg !370

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !372
  ret double %20, !dbg !372
}

declare void @gsl_error(i8*, i8*, i32, i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "atanint.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "atanint_cs", scope: !0, file: !1, line: 55, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @atanint_cs)
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
!55 = distinct !DIGlobalVariable(name: "atanint_data", scope: !0, file: !1, line: 32, type: !56, isLocal: true, isDefinition: true, variable: [21 x double]* @atanint_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1344, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 21)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_atanint_e", scope: !1, file: !1, line: 66, type: !64, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
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
!75 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 66, type: !66)
!76 = !DIExpression()
!77 = !DILocation(line: 66, column: 31, scope: !63)
!78 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 66, type: !67)
!79 = !DILocation(line: 66, column: 50, scope: !63)
!80 = !DILocalVariable(name: "ax", scope: !63, file: !1, line: 68, type: !66)
!81 = !DILocation(line: 68, column: 16, scope: !63)
!82 = !DILocation(line: 68, column: 27, scope: !63)
!83 = !DILocation(line: 68, column: 22, scope: !63)
!84 = !DILocalVariable(name: "sgn", scope: !63, file: !1, line: 69, type: !66)
!85 = !DILocation(line: 69, column: 16, scope: !63)
!86 = !DILocation(line: 69, column: 22, scope: !63)
!87 = !DILocation(line: 73, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !63, file: !1, line: 73, column: 6)
!89 = !DILocation(line: 73, column: 9, scope: !88)
!90 = !DILocation(line: 73, column: 6, scope: !63)
!91 = !DILocation(line: 74, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 73, column: 17)
!93 = !DILocation(line: 74, column: 13, scope: !92)
!94 = !DILocation(line: 74, column: 17, scope: !92)
!95 = !DILocation(line: 75, column: 5, scope: !92)
!96 = !DILocation(line: 75, column: 13, scope: !92)
!97 = !DILocation(line: 75, column: 17, scope: !92)
!98 = !DILocation(line: 76, column: 5, scope: !92)
!99 = !DILocation(line: 78, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !88, file: !1, line: 78, column: 11)
!101 = !DILocation(line: 78, column: 14, scope: !100)
!102 = !DILocation(line: 78, column: 11, scope: !88)
!103 = !DILocation(line: 79, column: 19, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 78, column: 42)
!105 = !DILocation(line: 79, column: 5, scope: !104)
!106 = !DILocation(line: 79, column: 13, scope: !104)
!107 = !DILocation(line: 79, column: 17, scope: !104)
!108 = !DILocation(line: 80, column: 5, scope: !104)
!109 = !DILocation(line: 80, column: 13, scope: !104)
!110 = !DILocation(line: 80, column: 17, scope: !104)
!111 = !DILocation(line: 81, column: 5, scope: !104)
!112 = !DILocation(line: 83, column: 11, scope: !113)
!113 = distinct !DILexicalBlock(scope: !100, file: !1, line: 83, column: 11)
!114 = !DILocation(line: 83, column: 14, scope: !113)
!115 = !DILocation(line: 83, column: 11, scope: !100)
!116 = !DILocalVariable(name: "t", scope: !117, file: !1, line: 84, type: !66)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 83, column: 22)
!118 = !DILocation(line: 84, column: 18, scope: !117)
!119 = !DILocation(line: 84, column: 29, scope: !117)
!120 = !DILocation(line: 84, column: 31, scope: !117)
!121 = !DILocation(line: 84, column: 30, scope: !117)
!122 = !DILocation(line: 84, column: 33, scope: !117)
!123 = !DILocation(line: 84, column: 26, scope: !117)
!124 = !DILocalVariable(name: "result_c", scope: !117, file: !1, line: 85, type: !68)
!125 = !DILocation(line: 85, column: 19, scope: !117)
!126 = !DILocation(line: 86, column: 30, scope: !117)
!127 = !DILocation(line: 86, column: 5, scope: !117)
!128 = !DILocation(line: 87, column: 20, scope: !117)
!129 = !DILocation(line: 87, column: 33, scope: !117)
!130 = !DILocation(line: 87, column: 22, scope: !117)
!131 = !DILocation(line: 87, column: 5, scope: !117)
!132 = !DILocation(line: 87, column: 13, scope: !117)
!133 = !DILocation(line: 87, column: 18, scope: !117)
!134 = !DILocation(line: 88, column: 20, scope: !117)
!135 = !DILocation(line: 88, column: 33, scope: !117)
!136 = !DILocation(line: 88, column: 22, scope: !117)
!137 = !DILocation(line: 88, column: 5, scope: !117)
!138 = !DILocation(line: 88, column: 13, scope: !117)
!139 = !DILocation(line: 88, column: 18, scope: !117)
!140 = !DILocation(line: 89, column: 43, scope: !117)
!141 = !DILocation(line: 89, column: 51, scope: !117)
!142 = !DILocation(line: 89, column: 38, scope: !117)
!143 = !DILocation(line: 89, column: 36, scope: !117)
!144 = !DILocation(line: 89, column: 5, scope: !117)
!145 = !DILocation(line: 89, column: 13, scope: !117)
!146 = !DILocation(line: 89, column: 17, scope: !117)
!147 = !DILocation(line: 90, column: 5, scope: !117)
!148 = !DILocation(line: 92, column: 11, scope: !149)
!149 = distinct !DILexicalBlock(scope: !113, file: !1, line: 92, column: 11)
!150 = !DILocation(line: 92, column: 14, scope: !149)
!151 = !DILocation(line: 92, column: 11, scope: !113)
!152 = !DILocalVariable(name: "t", scope: !153, file: !1, line: 93, type: !66)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 92, column: 42)
!154 = !DILocation(line: 93, column: 18, scope: !153)
!155 = !DILocation(line: 93, column: 34, scope: !153)
!156 = !DILocation(line: 93, column: 36, scope: !153)
!157 = !DILocation(line: 93, column: 35, scope: !153)
!158 = !DILocation(line: 93, column: 32, scope: !153)
!159 = !DILocation(line: 93, column: 39, scope: !153)
!160 = !DILocation(line: 93, column: 26, scope: !153)
!161 = !DILocalVariable(name: "result_c", scope: !153, file: !1, line: 94, type: !68)
!162 = !DILocation(line: 94, column: 19, scope: !153)
!163 = !DILocation(line: 95, column: 30, scope: !153)
!164 = !DILocation(line: 95, column: 5, scope: !153)
!165 = !DILocation(line: 96, column: 20, scope: !153)
!166 = !DILocation(line: 96, column: 40, scope: !153)
!167 = !DILocation(line: 96, column: 36, scope: !153)
!168 = !DILocation(line: 96, column: 35, scope: !153)
!169 = !DILocation(line: 96, column: 55, scope: !153)
!170 = !DILocation(line: 96, column: 59, scope: !153)
!171 = !DILocation(line: 96, column: 58, scope: !153)
!172 = !DILocation(line: 96, column: 44, scope: !153)
!173 = !DILocation(line: 96, column: 24, scope: !153)
!174 = !DILocation(line: 96, column: 5, scope: !153)
!175 = !DILocation(line: 96, column: 13, scope: !153)
!176 = !DILocation(line: 96, column: 18, scope: !153)
!177 = !DILocation(line: 97, column: 29, scope: !153)
!178 = !DILocation(line: 97, column: 33, scope: !153)
!179 = !DILocation(line: 97, column: 32, scope: !153)
!180 = !DILocation(line: 97, column: 43, scope: !153)
!181 = !DILocation(line: 97, column: 51, scope: !153)
!182 = !DILocation(line: 97, column: 54, scope: !153)
!183 = !DILocation(line: 97, column: 38, scope: !153)
!184 = !DILocation(line: 97, column: 36, scope: !153)
!185 = !DILocation(line: 97, column: 5, scope: !153)
!186 = !DILocation(line: 97, column: 13, scope: !153)
!187 = !DILocation(line: 97, column: 18, scope: !153)
!188 = !DILocation(line: 98, column: 43, scope: !153)
!189 = !DILocation(line: 98, column: 51, scope: !153)
!190 = !DILocation(line: 98, column: 38, scope: !153)
!191 = !DILocation(line: 98, column: 36, scope: !153)
!192 = !DILocation(line: 98, column: 5, scope: !153)
!193 = !DILocation(line: 98, column: 13, scope: !153)
!194 = !DILocation(line: 98, column: 17, scope: !153)
!195 = !DILocation(line: 99, column: 5, scope: !153)
!196 = !DILocation(line: 102, column: 19, scope: !197)
!197 = distinct !DILexicalBlock(scope: !149, file: !1, line: 101, column: 8)
!198 = !DILocation(line: 102, column: 39, scope: !197)
!199 = !DILocation(line: 102, column: 35, scope: !197)
!200 = !DILocation(line: 102, column: 34, scope: !197)
!201 = !DILocation(line: 102, column: 51, scope: !197)
!202 = !DILocation(line: 102, column: 49, scope: !197)
!203 = !DILocation(line: 102, column: 43, scope: !197)
!204 = !DILocation(line: 102, column: 23, scope: !197)
!205 = !DILocation(line: 102, column: 5, scope: !197)
!206 = !DILocation(line: 102, column: 13, scope: !197)
!207 = !DILocation(line: 102, column: 17, scope: !197)
!208 = !DILocation(line: 103, column: 30, scope: !197)
!209 = !DILocation(line: 103, column: 38, scope: !197)
!210 = !DILocation(line: 103, column: 42, scope: !197)
!211 = !DILocation(line: 103, column: 25, scope: !197)
!212 = !DILocation(line: 103, column: 23, scope: !197)
!213 = !DILocation(line: 103, column: 5, scope: !197)
!214 = !DILocation(line: 103, column: 13, scope: !197)
!215 = !DILocation(line: 103, column: 17, scope: !197)
!216 = !DILocation(line: 104, column: 5, scope: !197)
!217 = !DILocation(line: 106, column: 1, scope: !63)
!218 = distinct !DISubprogram(name: "cheb_eval_e", scope: !219, file: !219, line: 3, type: !220, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!219 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!220 = !DISubroutineType(types: !221)
!221 = !{!51, !222, !66, !67}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!224 = !DILocalVariable(name: "cs", arg: 1, scope: !218, file: !219, line: 3, type: !222)
!225 = !DILocation(line: 3, column: 33, scope: !218)
!226 = !DILocalVariable(name: "x", arg: 2, scope: !218, file: !219, line: 4, type: !66)
!227 = !DILocation(line: 4, column: 26, scope: !218)
!228 = !DILocalVariable(name: "result", arg: 3, scope: !218, file: !219, line: 5, type: !67)
!229 = !DILocation(line: 5, column: 29, scope: !218)
!230 = !DILocalVariable(name: "j", scope: !218, file: !219, line: 7, type: !51)
!231 = !DILocation(line: 7, column: 7, scope: !218)
!232 = !DILocalVariable(name: "d", scope: !218, file: !219, line: 8, type: !49)
!233 = !DILocation(line: 8, column: 10, scope: !218)
!234 = !DILocalVariable(name: "dd", scope: !218, file: !219, line: 9, type: !49)
!235 = !DILocation(line: 9, column: 10, scope: !218)
!236 = !DILocalVariable(name: "y", scope: !218, file: !219, line: 11, type: !49)
!237 = !DILocation(line: 11, column: 10, scope: !218)
!238 = !DILocation(line: 11, column: 20, scope: !218)
!239 = !DILocation(line: 11, column: 19, scope: !218)
!240 = !DILocation(line: 11, column: 24, scope: !218)
!241 = !DILocation(line: 11, column: 28, scope: !218)
!242 = !DILocation(line: 11, column: 22, scope: !218)
!243 = !DILocation(line: 11, column: 32, scope: !218)
!244 = !DILocation(line: 11, column: 36, scope: !218)
!245 = !DILocation(line: 11, column: 30, scope: !218)
!246 = !DILocation(line: 11, column: 42, scope: !218)
!247 = !DILocation(line: 11, column: 46, scope: !218)
!248 = !DILocation(line: 11, column: 50, scope: !218)
!249 = !DILocation(line: 11, column: 54, scope: !218)
!250 = !DILocation(line: 11, column: 48, scope: !218)
!251 = !DILocation(line: 11, column: 39, scope: !218)
!252 = !DILocalVariable(name: "y2", scope: !218, file: !219, line: 12, type: !49)
!253 = !DILocation(line: 12, column: 10, scope: !218)
!254 = !DILocation(line: 12, column: 21, scope: !218)
!255 = !DILocation(line: 12, column: 19, scope: !218)
!256 = !DILocalVariable(name: "e", scope: !218, file: !219, line: 14, type: !49)
!257 = !DILocation(line: 14, column: 10, scope: !218)
!258 = !DILocation(line: 16, column: 11, scope: !259)
!259 = distinct !DILexicalBlock(scope: !218, file: !219, line: 16, column: 3)
!260 = !DILocation(line: 16, column: 15, scope: !259)
!261 = !DILocation(line: 16, column: 9, scope: !259)
!262 = !DILocation(line: 16, column: 7, scope: !259)
!263 = !DILocation(line: 16, column: 22, scope: !264)
!264 = !DILexicalBlockFile(scope: !265, file: !219, discriminator: 1)
!265 = distinct !DILexicalBlock(scope: !259, file: !219, line: 16, column: 3)
!266 = !DILocation(line: 16, column: 23, scope: !264)
!267 = !DILocation(line: 16, column: 3, scope: !264)
!268 = !DILocalVariable(name: "temp", scope: !269, file: !219, line: 17, type: !49)
!269 = distinct !DILexicalBlock(scope: !265, file: !219, line: 16, column: 33)
!270 = !DILocation(line: 17, column: 12, scope: !269)
!271 = !DILocation(line: 17, column: 19, scope: !269)
!272 = !DILocation(line: 18, column: 9, scope: !269)
!273 = !DILocation(line: 18, column: 12, scope: !269)
!274 = !DILocation(line: 18, column: 11, scope: !269)
!275 = !DILocation(line: 18, column: 16, scope: !269)
!276 = !DILocation(line: 18, column: 14, scope: !269)
!277 = !DILocation(line: 18, column: 27, scope: !269)
!278 = !DILocation(line: 18, column: 21, scope: !269)
!279 = !DILocation(line: 18, column: 25, scope: !269)
!280 = !DILocation(line: 18, column: 19, scope: !269)
!281 = !DILocation(line: 18, column: 7, scope: !269)
!282 = !DILocation(line: 19, column: 15, scope: !269)
!283 = !DILocation(line: 19, column: 18, scope: !269)
!284 = !DILocation(line: 19, column: 17, scope: !269)
!285 = !DILocation(line: 19, column: 10, scope: !269)
!286 = !DILocation(line: 19, column: 31, scope: !269)
!287 = !DILocation(line: 19, column: 26, scope: !288)
!288 = !DILexicalBlockFile(scope: !269, file: !219, discriminator: 1)
!289 = !DILocation(line: 19, column: 24, scope: !269)
!290 = !DILocation(line: 19, column: 48, scope: !269)
!291 = !DILocation(line: 19, column: 42, scope: !269)
!292 = !DILocation(line: 19, column: 46, scope: !269)
!293 = !DILocation(line: 19, column: 37, scope: !294)
!294 = !DILexicalBlockFile(scope: !269, file: !219, discriminator: 2)
!295 = !DILocation(line: 19, column: 35, scope: !269)
!296 = !DILocation(line: 19, column: 7, scope: !269)
!297 = !DILocation(line: 20, column: 10, scope: !269)
!298 = !DILocation(line: 20, column: 8, scope: !269)
!299 = !DILocation(line: 21, column: 3, scope: !269)
!300 = !DILocation(line: 16, column: 29, scope: !301)
!301 = !DILexicalBlockFile(scope: !265, file: !219, discriminator: 2)
!302 = !DILocation(line: 16, column: 3, scope: !301)
!303 = distinct !{!303, !304}
!304 = !DILocation(line: 16, column: 3, scope: !218)
!305 = !DILocalVariable(name: "temp", scope: !306, file: !219, line: 24, type: !49)
!306 = distinct !DILexicalBlock(scope: !218, file: !219, line: 23, column: 3)
!307 = !DILocation(line: 24, column: 12, scope: !306)
!308 = !DILocation(line: 24, column: 19, scope: !306)
!309 = !DILocation(line: 25, column: 9, scope: !306)
!310 = !DILocation(line: 25, column: 11, scope: !306)
!311 = !DILocation(line: 25, column: 10, scope: !306)
!312 = !DILocation(line: 25, column: 15, scope: !306)
!313 = !DILocation(line: 25, column: 13, scope: !306)
!314 = !DILocation(line: 25, column: 26, scope: !306)
!315 = !DILocation(line: 25, column: 30, scope: !306)
!316 = !DILocation(line: 25, column: 24, scope: !306)
!317 = !DILocation(line: 25, column: 18, scope: !306)
!318 = !DILocation(line: 25, column: 7, scope: !306)
!319 = !DILocation(line: 26, column: 15, scope: !306)
!320 = !DILocation(line: 26, column: 17, scope: !306)
!321 = !DILocation(line: 26, column: 16, scope: !306)
!322 = !DILocation(line: 26, column: 10, scope: !306)
!323 = !DILocation(line: 26, column: 30, scope: !306)
!324 = !DILocation(line: 26, column: 25, scope: !325)
!325 = !DILexicalBlockFile(scope: !306, file: !219, discriminator: 1)
!326 = !DILocation(line: 26, column: 23, scope: !306)
!327 = !DILocation(line: 26, column: 47, scope: !306)
!328 = !DILocation(line: 26, column: 51, scope: !306)
!329 = !DILocation(line: 26, column: 42, scope: !330)
!330 = !DILexicalBlockFile(scope: !306, file: !219, discriminator: 2)
!331 = !DILocation(line: 26, column: 40, scope: !306)
!332 = !DILocation(line: 26, column: 34, scope: !306)
!333 = !DILocation(line: 26, column: 7, scope: !306)
!334 = !DILocation(line: 29, column: 17, scope: !218)
!335 = !DILocation(line: 29, column: 3, scope: !218)
!336 = !DILocation(line: 29, column: 11, scope: !218)
!337 = !DILocation(line: 29, column: 15, scope: !218)
!338 = !DILocation(line: 30, column: 35, scope: !218)
!339 = !DILocation(line: 30, column: 33, scope: !218)
!340 = !DILocation(line: 30, column: 50, scope: !218)
!341 = !DILocation(line: 30, column: 54, scope: !218)
!342 = !DILocation(line: 30, column: 44, scope: !218)
!343 = !DILocation(line: 30, column: 48, scope: !218)
!344 = !DILocation(line: 30, column: 39, scope: !218)
!345 = !DILocation(line: 30, column: 37, scope: !218)
!346 = !DILocation(line: 30, column: 3, scope: !218)
!347 = !DILocation(line: 30, column: 11, scope: !218)
!348 = !DILocation(line: 30, column: 15, scope: !218)
!349 = !DILocation(line: 32, column: 3, scope: !218)
!350 = distinct !DISubprogram(name: "gsl_sf_atanint", scope: !1, file: !1, line: 112, type: !351, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!351 = !DISubroutineType(types: !352)
!352 = !{!49, !66}
!353 = !DILocalVariable(name: "x", arg: 1, scope: !350, file: !1, line: 112, type: !66)
!354 = !DILocation(line: 112, column: 36, scope: !350)
!355 = !DILocalVariable(name: "result", scope: !350, file: !1, line: 114, type: !68)
!356 = !DILocation(line: 114, column: 3, scope: !350)
!357 = !DILocalVariable(name: "status", scope: !350, file: !1, line: 114, type: !51)
!358 = !DILocation(line: 114, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !350, file: !1, line: 114, column: 3)
!360 = !DILocation(line: 114, column: 3, scope: !361)
!361 = !DILexicalBlockFile(scope: !362, file: !1, discriminator: 1)
!362 = distinct !DILexicalBlock(scope: !359, file: !1, line: 114, column: 3)
!363 = distinct !{!363, !364}
!364 = !DILocation(line: 114, column: 3, scope: !362)
!365 = !DILocation(line: 114, column: 3, scope: !366)
!366 = !DILexicalBlockFile(scope: !367, file: !1, discriminator: 2)
!367 = distinct !DILexicalBlock(scope: !362, file: !1, line: 114, column: 3)
!368 = !DILocation(line: 114, column: 3, scope: !369)
!369 = !DILexicalBlockFile(scope: !362, file: !1, discriminator: 3)
!370 = !DILocation(line: 114, column: 3, scope: !371)
!371 = !DILexicalBlockFile(scope: !350, file: !1, discriminator: 4)
!372 = !DILocation(line: 115, column: 1, scope: !350)
