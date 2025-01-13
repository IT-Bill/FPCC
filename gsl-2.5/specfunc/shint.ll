; ModuleID = 'shint.c'
source_filename = "shint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@shi_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([7 x double], [7 x double]* @shi_data, i32 0, i32 0), i32 6, double -1.000000e+00, double 1.000000e+00, i32 6 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"shint.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_Shi_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gsl_sf_Chi_e(x, &result)\00", align 1
@shi_data = internal global [7 x double] [double 0x3F800CFC618BFBF7, double 0x3F7011519CC91B58, double 0x3ED15793D9F174BE, double 0x3E25393B7E14F475, double 0x3D70800F2892FC16, double 2.451817e-16, double 4.670000e-20], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_Shi_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !75, metadata !76), !dbg !77
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !78, metadata !76), !dbg !79
  call void @llvm.dbg.declare(metadata double* %6, metadata !80, metadata !76), !dbg !81
  store double 0x3E50000000000000, double* %6, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %7, metadata !82, metadata !76), !dbg !83
  %13 = load double, double* %4, align 8, !dbg !84
  %14 = call double @fabs(double %13) #1, !dbg !85
  store double %14, double* %7, align 8, !dbg !83
  %15 = load double, double* %7, align 8, !dbg !86
  %16 = fcmp olt double %15, 0x3E50000000000000, !dbg !88
  br i1 %16, label %17, label %23, !dbg !89

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %4, align 8, !dbg !90
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !92
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !93
  store double %18, double* %20, align 8, !dbg !94
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !96
  store double 0.000000e+00, double* %22, align 8, !dbg !97
  store i32 0, i32* %3, align 4, !dbg !98
  br label %107, !dbg !98

; <label>:23:                                     ; preds = %2
  %24 = load double, double* %7, align 8, !dbg !99
  %25 = fcmp ole double %24, 3.750000e-01, !dbg !101
  br i1 %25, label %26, label %56, !dbg !102

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !103, metadata !76), !dbg !105
  %27 = load double, double* %4, align 8, !dbg !106
  %28 = fmul double 1.280000e+02, %27, !dbg !107
  %29 = load double, double* %4, align 8, !dbg !108
  %30 = fmul double %28, %29, !dbg !109
  %31 = fdiv double %30, 9.000000e+00, !dbg !110
  %32 = fsub double %31, 1.000000e+00, !dbg !111
  %33 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @shi_cs, double %32, %struct.gsl_sf_result_struct* %8), !dbg !112
  %34 = load double, double* %4, align 8, !dbg !113
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !114
  %36 = load double, double* %35, align 8, !dbg !114
  %37 = fadd double 1.000000e+00, %36, !dbg !115
  %38 = fmul double %34, %37, !dbg !116
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !117
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !118
  store double %38, double* %40, align 8, !dbg !119
  %41 = load double, double* %4, align 8, !dbg !120
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !121
  %43 = load double, double* %42, align 8, !dbg !121
  %44 = fmul double %41, %43, !dbg !122
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !123
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !124
  store double %44, double* %46, align 8, !dbg !125
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !126
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !127
  %49 = load double, double* %48, align 8, !dbg !127
  %50 = call double @fabs(double %49) #1, !dbg !128
  %51 = fmul double 0x3CC0000000000000, %50, !dbg !129
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !130
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !131
  %54 = load double, double* %53, align 8, !dbg !132
  %55 = fadd double %54, %51, !dbg !132
  store double %55, double* %53, align 8, !dbg !132
  store i32 0, i32* %3, align 4, !dbg !133
  br label %107, !dbg !133

; <label>:56:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !134, metadata !76), !dbg !136
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !137, metadata !76), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %11, metadata !139, metadata !76), !dbg !140
  %57 = load double, double* %4, align 8, !dbg !141
  %58 = call i32 @gsl_sf_expint_Ei_e(double %57, %struct.gsl_sf_result_struct* %9), !dbg !142
  store i32 %58, i32* %11, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata i32* %12, metadata !143, metadata !76), !dbg !144
  %59 = load double, double* %4, align 8, !dbg !145
  %60 = call i32 @gsl_sf_expint_E1_e(double %59, %struct.gsl_sf_result_struct* %10), !dbg !146
  store i32 %60, i32* %12, align 4, !dbg !144
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !147
  %62 = load double, double* %61, align 8, !dbg !147
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !148
  %64 = load double, double* %63, align 8, !dbg !148
  %65 = fadd double %62, %64, !dbg !149
  %66 = fmul double 5.000000e-01, %65, !dbg !150
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !151
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !152
  store double %66, double* %68, align 8, !dbg !153
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !154
  %70 = load double, double* %69, align 8, !dbg !154
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !155
  %72 = load double, double* %71, align 8, !dbg !155
  %73 = fadd double %70, %72, !dbg !156
  %74 = fmul double 5.000000e-01, %73, !dbg !157
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !158
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !159
  store double %74, double* %76, align 8, !dbg !160
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !161
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !162
  %79 = load double, double* %78, align 8, !dbg !162
  %80 = call double @fabs(double %79) #1, !dbg !163
  %81 = fmul double 0x3CC0000000000000, %80, !dbg !164
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !165
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !166
  %84 = load double, double* %83, align 8, !dbg !167
  %85 = fadd double %84, %81, !dbg !167
  store double %85, double* %83, align 8, !dbg !167
  %86 = load i32, i32* %11, align 4, !dbg !168
  %87 = icmp eq i32 %86, 15, !dbg !170
  br i1 %87, label %88, label %94, !dbg !171

; <label>:88:                                     ; preds = %56
  %89 = load i32, i32* %12, align 4, !dbg !172
  %90 = icmp eq i32 %89, 15, !dbg !174
  br i1 %90, label %91, label %94, !dbg !175

; <label>:91:                                     ; preds = %88
  br label %92, !dbg !176, !llvm.loop !178

; <label>:92:                                     ; preds = %91
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 88, i32 15), !dbg !179
  store i32 15, i32* %3, align 4, !dbg !179
  br label %107, !dbg !179
                                                  ; No predecessors!
  br label %105, !dbg !182

; <label>:94:                                     ; preds = %88, %56
  %95 = load i32, i32* %11, align 4, !dbg !183
  %96 = icmp eq i32 %95, 16, !dbg !185
  br i1 %96, label %100, label %97, !dbg !186

; <label>:97:                                     ; preds = %94
  %98 = load i32, i32* %12, align 4, !dbg !187
  %99 = icmp eq i32 %98, 16, !dbg !189
  br i1 %99, label %100, label %103, !dbg !190

; <label>:100:                                    ; preds = %97, %94
  br label %101, !dbg !191, !llvm.loop !193

; <label>:101:                                    ; preds = %100
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 91, i32 16), !dbg !194
  store i32 16, i32* %3, align 4, !dbg !194
  br label %107, !dbg !194
                                                  ; No predecessors!
  br label %104, !dbg !197

; <label>:103:                                    ; preds = %97
  store i32 0, i32* %3, align 4, !dbg !198
  br label %107, !dbg !198

; <label>:104:                                    ; preds = %102
  br label %105

; <label>:105:                                    ; preds = %104, %93
  br label %106

; <label>:106:                                    ; preds = %105
  br label %107

; <label>:107:                                    ; preds = %17, %26, %92, %101, %103, %106
  %108 = load i32, i32* %3, align 4, !dbg !200
  ret i32 %108, !dbg !200
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !201 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !207, metadata !76), !dbg !208
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !209, metadata !76), !dbg !210
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !211, metadata !76), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %7, metadata !213, metadata !76), !dbg !214
  call void @llvm.dbg.declare(metadata double* %8, metadata !215, metadata !76), !dbg !216
  store double 0.000000e+00, double* %8, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata double* %9, metadata !217, metadata !76), !dbg !218
  store double 0.000000e+00, double* %9, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata double* %10, metadata !219, metadata !76), !dbg !220
  %15 = load double, double* %5, align 8, !dbg !221
  %16 = fmul double 2.000000e+00, %15, !dbg !222
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !223
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !224
  %19 = load double, double* %18, align 8, !dbg !224
  %20 = fsub double %16, %19, !dbg !225
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !226
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !227
  %23 = load double, double* %22, align 8, !dbg !227
  %24 = fsub double %20, %23, !dbg !228
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !229
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !230
  %27 = load double, double* %26, align 8, !dbg !230
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !231
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !232
  %30 = load double, double* %29, align 8, !dbg !232
  %31 = fsub double %27, %30, !dbg !233
  %32 = fdiv double %24, %31, !dbg !234
  store double %32, double* %10, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata double* %11, metadata !235, metadata !76), !dbg !236
  %33 = load double, double* %10, align 8, !dbg !237
  %34 = fmul double 2.000000e+00, %33, !dbg !238
  store double %34, double* %11, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata double* %12, metadata !239, metadata !76), !dbg !240
  store double 0.000000e+00, double* %12, align 8, !dbg !240
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !241
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !243
  %37 = load i32, i32* %36, align 8, !dbg !243
  store i32 %37, i32* %7, align 4, !dbg !244
  br label %38, !dbg !245

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !246
  %40 = icmp sge i32 %39, 1, !dbg !249
  br i1 %40, label %41, label %78, !dbg !250

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !251, metadata !76), !dbg !253
  %42 = load double, double* %8, align 8, !dbg !254
  store double %42, double* %13, align 8, !dbg !253
  %43 = load double, double* %11, align 8, !dbg !255
  %44 = load double, double* %8, align 8, !dbg !256
  %45 = fmul double %43, %44, !dbg !257
  %46 = load double, double* %9, align 8, !dbg !258
  %47 = fsub double %45, %46, !dbg !259
  %48 = load i32, i32* %7, align 4, !dbg !260
  %49 = sext i32 %48 to i64, !dbg !261
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !261
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !262
  %52 = load double*, double** %51, align 8, !dbg !262
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !261
  %54 = load double, double* %53, align 8, !dbg !261
  %55 = fadd double %47, %54, !dbg !263
  store double %55, double* %8, align 8, !dbg !264
  %56 = load double, double* %11, align 8, !dbg !265
  %57 = load double, double* %13, align 8, !dbg !266
  %58 = fmul double %56, %57, !dbg !267
  %59 = call double @fabs(double %58) #1, !dbg !268
  %60 = load double, double* %9, align 8, !dbg !269
  %61 = call double @fabs(double %60) #1, !dbg !270
  %62 = fadd double %59, %61, !dbg !272
  %63 = load i32, i32* %7, align 4, !dbg !273
  %64 = sext i32 %63 to i64, !dbg !274
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !274
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !275
  %67 = load double*, double** %66, align 8, !dbg !275
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !274
  %69 = load double, double* %68, align 8, !dbg !274
  %70 = call double @fabs(double %69) #1, !dbg !276
  %71 = fadd double %62, %70, !dbg !278
  %72 = load double, double* %12, align 8, !dbg !279
  %73 = fadd double %72, %71, !dbg !279
  store double %73, double* %12, align 8, !dbg !279
  %74 = load double, double* %13, align 8, !dbg !280
  store double %74, double* %9, align 8, !dbg !281
  br label %75, !dbg !282

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !283
  %77 = add nsw i32 %76, -1, !dbg !283
  store i32 %77, i32* %7, align 4, !dbg !283
  br label %38, !dbg !285, !llvm.loop !286

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !288, metadata !76), !dbg !290
  %79 = load double, double* %8, align 8, !dbg !291
  store double %79, double* %14, align 8, !dbg !290
  %80 = load double, double* %10, align 8, !dbg !292
  %81 = load double, double* %8, align 8, !dbg !293
  %82 = fmul double %80, %81, !dbg !294
  %83 = load double, double* %9, align 8, !dbg !295
  %84 = fsub double %82, %83, !dbg !296
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !297
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !298
  %87 = load double*, double** %86, align 8, !dbg !298
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !297
  %89 = load double, double* %88, align 8, !dbg !297
  %90 = fmul double 5.000000e-01, %89, !dbg !299
  %91 = fadd double %84, %90, !dbg !300
  store double %91, double* %8, align 8, !dbg !301
  %92 = load double, double* %10, align 8, !dbg !302
  %93 = load double, double* %14, align 8, !dbg !303
  %94 = fmul double %92, %93, !dbg !304
  %95 = call double @fabs(double %94) #1, !dbg !305
  %96 = load double, double* %9, align 8, !dbg !306
  %97 = call double @fabs(double %96) #1, !dbg !307
  %98 = fadd double %95, %97, !dbg !309
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !310
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !311
  %101 = load double*, double** %100, align 8, !dbg !311
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !310
  %103 = load double, double* %102, align 8, !dbg !310
  %104 = call double @fabs(double %103) #1, !dbg !312
  %105 = fmul double 5.000000e-01, %104, !dbg !314
  %106 = fadd double %98, %105, !dbg !315
  %107 = load double, double* %12, align 8, !dbg !316
  %108 = fadd double %107, %106, !dbg !316
  store double %108, double* %12, align 8, !dbg !316
  %109 = load double, double* %8, align 8, !dbg !317
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !318
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !319
  store double %109, double* %111, align 8, !dbg !320
  %112 = load double, double* %12, align 8, !dbg !321
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !322
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !323
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !324
  %116 = load i32, i32* %115, align 8, !dbg !324
  %117 = sext i32 %116 to i64, !dbg !325
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !325
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !326
  %120 = load double*, double** %119, align 8, !dbg !326
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !325
  %122 = load double, double* %121, align 8, !dbg !325
  %123 = call double @fabs(double %122) #1, !dbg !327
  %124 = fadd double %113, %123, !dbg !328
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !329
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !330
  store double %124, double* %126, align 8, !dbg !331
  ret i32 0, !dbg !332
}

declare i32 @gsl_sf_expint_Ei_e(double, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_expint_E1_e(double, %struct.gsl_sf_result_struct*) #4

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_Chi_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !333 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !334, metadata !76), !dbg !335
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !336, metadata !76), !dbg !337
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !338, metadata !76), !dbg !339
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !340, metadata !76), !dbg !341
  call void @llvm.dbg.declare(metadata i32* %8, metadata !342, metadata !76), !dbg !343
  %10 = load double, double* %4, align 8, !dbg !344
  %11 = call i32 @gsl_sf_expint_Ei_e(double %10, %struct.gsl_sf_result_struct* %6), !dbg !345
  store i32 %11, i32* %8, align 4, !dbg !343
  call void @llvm.dbg.declare(metadata i32* %9, metadata !346, metadata !76), !dbg !347
  %12 = load double, double* %4, align 8, !dbg !348
  %13 = call i32 @gsl_sf_expint_E1_e(double %12, %struct.gsl_sf_result_struct* %7), !dbg !349
  store i32 %13, i32* %9, align 4, !dbg !347
  %14 = load i32, i32* %8, align 4, !dbg !350
  %15 = icmp eq i32 %14, 1, !dbg !352
  br i1 %15, label %19, label %16, !dbg !353

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %9, align 4, !dbg !354
  %18 = icmp eq i32 %17, 1, !dbg !356
  br i1 %18, label %19, label %28, !dbg !357

; <label>:19:                                     ; preds = %16, %2
  br label %20, !dbg !358, !llvm.loop !360

; <label>:20:                                     ; preds = %19
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !361
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !361
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !361
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !361
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !361
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !361
  br label %25, !dbg !361, !llvm.loop !364

; <label>:25:                                     ; preds = %20
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 107, i32 1), !dbg !366
  store i32 1, i32* %3, align 4, !dbg !366
  br label %86, !dbg !366
                                                  ; No predecessors!
  br label %27, !dbg !369

; <label>:27:                                     ; preds = %26
  br label %86, !dbg !371

; <label>:28:                                     ; preds = %16
  %29 = load i32, i32* %8, align 4, !dbg !372
  %30 = icmp eq i32 %29, 15, !dbg !374
  br i1 %30, label %31, label %43, !dbg !375

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %9, align 4, !dbg !376
  %33 = icmp eq i32 %32, 15, !dbg !378
  br i1 %33, label %34, label %43, !dbg !379

; <label>:34:                                     ; preds = %31
  br label %35, !dbg !380, !llvm.loop !382

; <label>:35:                                     ; preds = %34
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !383
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !383
  store double 0.000000e+00, double* %37, align 8, !dbg !383
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !383
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !383
  store double 0x10000000000000, double* %39, align 8, !dbg !383
  br label %40, !dbg !383, !llvm.loop !386

; <label>:40:                                     ; preds = %35
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 15), !dbg !388
  store i32 15, i32* %3, align 4, !dbg !388
  br label %86, !dbg !388
                                                  ; No predecessors!
  br label %42, !dbg !391

; <label>:42:                                     ; preds = %41
  br label %85, !dbg !393

; <label>:43:                                     ; preds = %31, %28
  %44 = load i32, i32* %8, align 4, !dbg !394
  %45 = icmp eq i32 %44, 16, !dbg !396
  br i1 %45, label %49, label %46, !dbg !397

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %9, align 4, !dbg !398
  %48 = icmp eq i32 %47, 16, !dbg !400
  br i1 %48, label %49, label %58, !dbg !401

; <label>:49:                                     ; preds = %46, %43
  br label %50, !dbg !402, !llvm.loop !404

; <label>:50:                                     ; preds = %49
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !405
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !405
  store double 0x7FF0000000000000, double* %52, align 8, !dbg !405
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !405
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !405
  store double 0x7FF0000000000000, double* %54, align 8, !dbg !405
  br label %55, !dbg !405, !llvm.loop !408

; <label>:55:                                     ; preds = %50
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 113, i32 16), !dbg !410
  store i32 16, i32* %3, align 4, !dbg !410
  br label %86, !dbg !410
                                                  ; No predecessors!
  br label %57, !dbg !413

; <label>:57:                                     ; preds = %56
  br label %84, !dbg !415

; <label>:58:                                     ; preds = %46
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !416
  %60 = load double, double* %59, align 8, !dbg !416
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !418
  %62 = load double, double* %61, align 8, !dbg !418
  %63 = fsub double %60, %62, !dbg !419
  %64 = fmul double 5.000000e-01, %63, !dbg !420
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !421
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !422
  store double %64, double* %66, align 8, !dbg !423
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !424
  %68 = load double, double* %67, align 8, !dbg !424
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !425
  %70 = load double, double* %69, align 8, !dbg !425
  %71 = fadd double %68, %70, !dbg !426
  %72 = fmul double 5.000000e-01, %71, !dbg !427
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !428
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !429
  store double %72, double* %74, align 8, !dbg !430
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !431
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !432
  %77 = load double, double* %76, align 8, !dbg !432
  %78 = call double @fabs(double %77) #1, !dbg !433
  %79 = fmul double 0x3CC0000000000000, %78, !dbg !434
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !435
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !436
  %82 = load double, double* %81, align 8, !dbg !437
  %83 = fadd double %82, %79, !dbg !437
  store double %83, double* %81, align 8, !dbg !437
  store i32 0, i32* %3, align 4, !dbg !438
  br label %86, !dbg !438

; <label>:84:                                     ; preds = %57
  br label %85

; <label>:85:                                     ; preds = %84, %42
  br label %86

; <label>:86:                                     ; preds = %25, %40, %55, %58, %85, %27
  %87 = load i32, i32* %3, align 4, !dbg !439
  ret i32 %87, !dbg !439
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_Shi(double) #0 !dbg !440 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !443, metadata !76), !dbg !444
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !445, metadata !76), !dbg !446
  call void @llvm.dbg.declare(metadata i32* %5, metadata !447, metadata !76), !dbg !446
  %6 = load double, double* %3, align 8, !dbg !446
  %7 = call i32 @gsl_sf_Shi_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !446
  store i32 %7, i32* %5, align 4, !dbg !446
  %8 = load i32, i32* %5, align 4, !dbg !448
  %9 = icmp ne i32 %8, 0, !dbg !448
  br i1 %9, label %10, label %16, !dbg !446

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !450, !llvm.loop !453

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !455
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 129, i32 %12), !dbg !455
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !455
  %14 = load double, double* %13, align 8, !dbg !455
  store double %14, double* %2, align 8, !dbg !455
  br label %19, !dbg !455
                                                  ; No predecessors!
  br label %16, !dbg !458

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !460
  %18 = load double, double* %17, align 8, !dbg !460
  store double %18, double* %2, align 8, !dbg !460
  br label %19, !dbg !460

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !462
  ret double %20, !dbg !462
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_Chi(double) #0 !dbg !463 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !464, metadata !76), !dbg !465
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !466, metadata !76), !dbg !467
  call void @llvm.dbg.declare(metadata i32* %5, metadata !468, metadata !76), !dbg !467
  %6 = load double, double* %3, align 8, !dbg !467
  %7 = call i32 @gsl_sf_Chi_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !467
  store i32 %7, i32* %5, align 4, !dbg !467
  %8 = load i32, i32* %5, align 4, !dbg !469
  %9 = icmp ne i32 %8, 0, !dbg !469
  br i1 %9, label %10, label %16, !dbg !467

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !471, !llvm.loop !474

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !476
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 134, i32 %12), !dbg !476
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !476
  %14 = load double, double* %13, align 8, !dbg !476
  store double %14, double* %2, align 8, !dbg !476
  br label %19, !dbg !476
                                                  ; No predecessors!
  br label %16, !dbg !479

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !481
  %18 = load double, double* %17, align 8, !dbg !481
  store double %18, double* %2, align 8, !dbg !481
  br label %19, !dbg !481

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !483
  ret double %20, !dbg !483
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "shint.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "shi_cs", scope: !0, file: !1, line: 51, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @shi_cs)
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
!55 = distinct !DIGlobalVariable(name: "shi_data", scope: !0, file: !1, line: 42, type: !56, isLocal: true, isDefinition: true, variable: [7 x double]* @shi_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 448, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 7)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_Shi_e", scope: !1, file: !1, line: 61, type: !64, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
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
!75 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 61, type: !66)
!76 = !DIExpression()
!77 = !DILocation(line: 61, column: 31, scope: !63)
!78 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 61, type: !67)
!79 = !DILocation(line: 61, column: 50, scope: !63)
!80 = !DILocalVariable(name: "xsml", scope: !63, file: !1, line: 63, type: !66)
!81 = !DILocation(line: 63, column: 16, scope: !63)
!82 = !DILocalVariable(name: "ax", scope: !63, file: !1, line: 64, type: !66)
!83 = !DILocation(line: 64, column: 16, scope: !63)
!84 = !DILocation(line: 64, column: 28, scope: !63)
!85 = !DILocation(line: 64, column: 23, scope: !63)
!86 = !DILocation(line: 66, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !63, file: !1, line: 66, column: 6)
!88 = !DILocation(line: 66, column: 9, scope: !87)
!89 = !DILocation(line: 66, column: 6, scope: !63)
!90 = !DILocation(line: 67, column: 19, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 66, column: 17)
!92 = !DILocation(line: 67, column: 5, scope: !91)
!93 = !DILocation(line: 67, column: 13, scope: !91)
!94 = !DILocation(line: 67, column: 17, scope: !91)
!95 = !DILocation(line: 68, column: 5, scope: !91)
!96 = !DILocation(line: 68, column: 13, scope: !91)
!97 = !DILocation(line: 68, column: 17, scope: !91)
!98 = !DILocation(line: 69, column: 5, scope: !91)
!99 = !DILocation(line: 71, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !87, file: !1, line: 71, column: 11)
!101 = !DILocation(line: 71, column: 14, scope: !100)
!102 = !DILocation(line: 71, column: 11, scope: !87)
!103 = !DILocalVariable(name: "result_c", scope: !104, file: !1, line: 72, type: !68)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 71, column: 24)
!105 = !DILocation(line: 72, column: 19, scope: !104)
!106 = !DILocation(line: 73, column: 32, scope: !104)
!107 = !DILocation(line: 73, column: 31, scope: !104)
!108 = !DILocation(line: 73, column: 34, scope: !104)
!109 = !DILocation(line: 73, column: 33, scope: !104)
!110 = !DILocation(line: 73, column: 35, scope: !104)
!111 = !DILocation(line: 73, column: 39, scope: !104)
!112 = !DILocation(line: 73, column: 5, scope: !104)
!113 = !DILocation(line: 74, column: 20, scope: !104)
!114 = !DILocation(line: 74, column: 40, scope: !104)
!115 = !DILocation(line: 74, column: 29, scope: !104)
!116 = !DILocation(line: 74, column: 22, scope: !104)
!117 = !DILocation(line: 74, column: 5, scope: !104)
!118 = !DILocation(line: 74, column: 13, scope: !104)
!119 = !DILocation(line: 74, column: 18, scope: !104)
!120 = !DILocation(line: 75, column: 20, scope: !104)
!121 = !DILocation(line: 75, column: 33, scope: !104)
!122 = !DILocation(line: 75, column: 22, scope: !104)
!123 = !DILocation(line: 75, column: 5, scope: !104)
!124 = !DILocation(line: 75, column: 13, scope: !104)
!125 = !DILocation(line: 75, column: 18, scope: !104)
!126 = !DILocation(line: 76, column: 49, scope: !104)
!127 = !DILocation(line: 76, column: 57, scope: !104)
!128 = !DILocation(line: 76, column: 44, scope: !104)
!129 = !DILocation(line: 76, column: 42, scope: !104)
!130 = !DILocation(line: 76, column: 5, scope: !104)
!131 = !DILocation(line: 76, column: 13, scope: !104)
!132 = !DILocation(line: 76, column: 17, scope: !104)
!133 = !DILocation(line: 77, column: 5, scope: !104)
!134 = !DILocalVariable(name: "result_Ei", scope: !135, file: !1, line: 80, type: !68)
!135 = distinct !DILexicalBlock(scope: !100, file: !1, line: 79, column: 8)
!136 = !DILocation(line: 80, column: 19, scope: !135)
!137 = !DILocalVariable(name: "result_E1", scope: !135, file: !1, line: 81, type: !68)
!138 = !DILocation(line: 81, column: 19, scope: !135)
!139 = !DILocalVariable(name: "status_Ei", scope: !135, file: !1, line: 82, type: !51)
!140 = !DILocation(line: 82, column: 9, scope: !135)
!141 = !DILocation(line: 82, column: 40, scope: !135)
!142 = !DILocation(line: 82, column: 21, scope: !135)
!143 = !DILocalVariable(name: "status_E1", scope: !135, file: !1, line: 83, type: !51)
!144 = !DILocation(line: 83, column: 9, scope: !135)
!145 = !DILocation(line: 83, column: 40, scope: !135)
!146 = !DILocation(line: 83, column: 21, scope: !135)
!147 = !DILocation(line: 84, column: 35, scope: !135)
!148 = !DILocation(line: 84, column: 51, scope: !135)
!149 = !DILocation(line: 84, column: 39, scope: !135)
!150 = !DILocation(line: 84, column: 23, scope: !135)
!151 = !DILocation(line: 84, column: 5, scope: !135)
!152 = !DILocation(line: 84, column: 13, scope: !135)
!153 = !DILocation(line: 84, column: 18, scope: !135)
!154 = !DILocation(line: 85, column: 35, scope: !135)
!155 = !DILocation(line: 85, column: 51, scope: !135)
!156 = !DILocation(line: 85, column: 39, scope: !135)
!157 = !DILocation(line: 85, column: 23, scope: !135)
!158 = !DILocation(line: 85, column: 5, scope: !135)
!159 = !DILocation(line: 85, column: 13, scope: !135)
!160 = !DILocation(line: 85, column: 18, scope: !135)
!161 = !DILocation(line: 86, column: 49, scope: !135)
!162 = !DILocation(line: 86, column: 57, scope: !135)
!163 = !DILocation(line: 86, column: 44, scope: !135)
!164 = !DILocation(line: 86, column: 42, scope: !135)
!165 = !DILocation(line: 86, column: 5, scope: !135)
!166 = !DILocation(line: 86, column: 13, scope: !135)
!167 = !DILocation(line: 86, column: 17, scope: !135)
!168 = !DILocation(line: 87, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !135, file: !1, line: 87, column: 8)
!170 = !DILocation(line: 87, column: 18, scope: !169)
!171 = !DILocation(line: 87, column: 34, scope: !169)
!172 = !DILocation(line: 87, column: 37, scope: !173)
!173 = !DILexicalBlockFile(scope: !169, file: !1, discriminator: 1)
!174 = !DILocation(line: 87, column: 47, scope: !173)
!175 = !DILocation(line: 87, column: 8, scope: !173)
!176 = !DILocation(line: 88, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !169, file: !1, line: 87, column: 64)
!178 = distinct !{!178, !176}
!179 = !DILocation(line: 88, column: 7, scope: !180)
!180 = !DILexicalBlockFile(scope: !181, file: !1, discriminator: 1)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 88, column: 7)
!182 = !DILocation(line: 89, column: 5, scope: !177)
!183 = !DILocation(line: 90, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !169, file: !1, line: 90, column: 13)
!185 = !DILocation(line: 90, column: 23, scope: !184)
!186 = !DILocation(line: 90, column: 38, scope: !184)
!187 = !DILocation(line: 90, column: 41, scope: !188)
!188 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 1)
!189 = !DILocation(line: 90, column: 51, scope: !188)
!190 = !DILocation(line: 90, column: 13, scope: !188)
!191 = !DILocation(line: 91, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !184, file: !1, line: 90, column: 67)
!193 = distinct !{!193, !191}
!194 = !DILocation(line: 91, column: 7, scope: !195)
!195 = !DILexicalBlockFile(scope: !196, file: !1, discriminator: 1)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 91, column: 7)
!197 = !DILocation(line: 92, column: 5, scope: !192)
!198 = !DILocation(line: 94, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !184, file: !1, line: 93, column: 10)
!200 = !DILocation(line: 97, column: 1, scope: !63)
!201 = distinct !DISubprogram(name: "cheb_eval_e", scope: !202, file: !202, line: 3, type: !203, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!202 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!203 = !DISubroutineType(types: !204)
!204 = !{!51, !205, !66, !67}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!207 = !DILocalVariable(name: "cs", arg: 1, scope: !201, file: !202, line: 3, type: !205)
!208 = !DILocation(line: 3, column: 33, scope: !201)
!209 = !DILocalVariable(name: "x", arg: 2, scope: !201, file: !202, line: 4, type: !66)
!210 = !DILocation(line: 4, column: 26, scope: !201)
!211 = !DILocalVariable(name: "result", arg: 3, scope: !201, file: !202, line: 5, type: !67)
!212 = !DILocation(line: 5, column: 29, scope: !201)
!213 = !DILocalVariable(name: "j", scope: !201, file: !202, line: 7, type: !51)
!214 = !DILocation(line: 7, column: 7, scope: !201)
!215 = !DILocalVariable(name: "d", scope: !201, file: !202, line: 8, type: !49)
!216 = !DILocation(line: 8, column: 10, scope: !201)
!217 = !DILocalVariable(name: "dd", scope: !201, file: !202, line: 9, type: !49)
!218 = !DILocation(line: 9, column: 10, scope: !201)
!219 = !DILocalVariable(name: "y", scope: !201, file: !202, line: 11, type: !49)
!220 = !DILocation(line: 11, column: 10, scope: !201)
!221 = !DILocation(line: 11, column: 20, scope: !201)
!222 = !DILocation(line: 11, column: 19, scope: !201)
!223 = !DILocation(line: 11, column: 24, scope: !201)
!224 = !DILocation(line: 11, column: 28, scope: !201)
!225 = !DILocation(line: 11, column: 22, scope: !201)
!226 = !DILocation(line: 11, column: 32, scope: !201)
!227 = !DILocation(line: 11, column: 36, scope: !201)
!228 = !DILocation(line: 11, column: 30, scope: !201)
!229 = !DILocation(line: 11, column: 42, scope: !201)
!230 = !DILocation(line: 11, column: 46, scope: !201)
!231 = !DILocation(line: 11, column: 50, scope: !201)
!232 = !DILocation(line: 11, column: 54, scope: !201)
!233 = !DILocation(line: 11, column: 48, scope: !201)
!234 = !DILocation(line: 11, column: 39, scope: !201)
!235 = !DILocalVariable(name: "y2", scope: !201, file: !202, line: 12, type: !49)
!236 = !DILocation(line: 12, column: 10, scope: !201)
!237 = !DILocation(line: 12, column: 21, scope: !201)
!238 = !DILocation(line: 12, column: 19, scope: !201)
!239 = !DILocalVariable(name: "e", scope: !201, file: !202, line: 14, type: !49)
!240 = !DILocation(line: 14, column: 10, scope: !201)
!241 = !DILocation(line: 16, column: 11, scope: !242)
!242 = distinct !DILexicalBlock(scope: !201, file: !202, line: 16, column: 3)
!243 = !DILocation(line: 16, column: 15, scope: !242)
!244 = !DILocation(line: 16, column: 9, scope: !242)
!245 = !DILocation(line: 16, column: 7, scope: !242)
!246 = !DILocation(line: 16, column: 22, scope: !247)
!247 = !DILexicalBlockFile(scope: !248, file: !202, discriminator: 1)
!248 = distinct !DILexicalBlock(scope: !242, file: !202, line: 16, column: 3)
!249 = !DILocation(line: 16, column: 23, scope: !247)
!250 = !DILocation(line: 16, column: 3, scope: !247)
!251 = !DILocalVariable(name: "temp", scope: !252, file: !202, line: 17, type: !49)
!252 = distinct !DILexicalBlock(scope: !248, file: !202, line: 16, column: 33)
!253 = !DILocation(line: 17, column: 12, scope: !252)
!254 = !DILocation(line: 17, column: 19, scope: !252)
!255 = !DILocation(line: 18, column: 9, scope: !252)
!256 = !DILocation(line: 18, column: 12, scope: !252)
!257 = !DILocation(line: 18, column: 11, scope: !252)
!258 = !DILocation(line: 18, column: 16, scope: !252)
!259 = !DILocation(line: 18, column: 14, scope: !252)
!260 = !DILocation(line: 18, column: 27, scope: !252)
!261 = !DILocation(line: 18, column: 21, scope: !252)
!262 = !DILocation(line: 18, column: 25, scope: !252)
!263 = !DILocation(line: 18, column: 19, scope: !252)
!264 = !DILocation(line: 18, column: 7, scope: !252)
!265 = !DILocation(line: 19, column: 15, scope: !252)
!266 = !DILocation(line: 19, column: 18, scope: !252)
!267 = !DILocation(line: 19, column: 17, scope: !252)
!268 = !DILocation(line: 19, column: 10, scope: !252)
!269 = !DILocation(line: 19, column: 31, scope: !252)
!270 = !DILocation(line: 19, column: 26, scope: !271)
!271 = !DILexicalBlockFile(scope: !252, file: !202, discriminator: 1)
!272 = !DILocation(line: 19, column: 24, scope: !252)
!273 = !DILocation(line: 19, column: 48, scope: !252)
!274 = !DILocation(line: 19, column: 42, scope: !252)
!275 = !DILocation(line: 19, column: 46, scope: !252)
!276 = !DILocation(line: 19, column: 37, scope: !277)
!277 = !DILexicalBlockFile(scope: !252, file: !202, discriminator: 2)
!278 = !DILocation(line: 19, column: 35, scope: !252)
!279 = !DILocation(line: 19, column: 7, scope: !252)
!280 = !DILocation(line: 20, column: 10, scope: !252)
!281 = !DILocation(line: 20, column: 8, scope: !252)
!282 = !DILocation(line: 21, column: 3, scope: !252)
!283 = !DILocation(line: 16, column: 29, scope: !284)
!284 = !DILexicalBlockFile(scope: !248, file: !202, discriminator: 2)
!285 = !DILocation(line: 16, column: 3, scope: !284)
!286 = distinct !{!286, !287}
!287 = !DILocation(line: 16, column: 3, scope: !201)
!288 = !DILocalVariable(name: "temp", scope: !289, file: !202, line: 24, type: !49)
!289 = distinct !DILexicalBlock(scope: !201, file: !202, line: 23, column: 3)
!290 = !DILocation(line: 24, column: 12, scope: !289)
!291 = !DILocation(line: 24, column: 19, scope: !289)
!292 = !DILocation(line: 25, column: 9, scope: !289)
!293 = !DILocation(line: 25, column: 11, scope: !289)
!294 = !DILocation(line: 25, column: 10, scope: !289)
!295 = !DILocation(line: 25, column: 15, scope: !289)
!296 = !DILocation(line: 25, column: 13, scope: !289)
!297 = !DILocation(line: 25, column: 26, scope: !289)
!298 = !DILocation(line: 25, column: 30, scope: !289)
!299 = !DILocation(line: 25, column: 24, scope: !289)
!300 = !DILocation(line: 25, column: 18, scope: !289)
!301 = !DILocation(line: 25, column: 7, scope: !289)
!302 = !DILocation(line: 26, column: 15, scope: !289)
!303 = !DILocation(line: 26, column: 17, scope: !289)
!304 = !DILocation(line: 26, column: 16, scope: !289)
!305 = !DILocation(line: 26, column: 10, scope: !289)
!306 = !DILocation(line: 26, column: 30, scope: !289)
!307 = !DILocation(line: 26, column: 25, scope: !308)
!308 = !DILexicalBlockFile(scope: !289, file: !202, discriminator: 1)
!309 = !DILocation(line: 26, column: 23, scope: !289)
!310 = !DILocation(line: 26, column: 47, scope: !289)
!311 = !DILocation(line: 26, column: 51, scope: !289)
!312 = !DILocation(line: 26, column: 42, scope: !313)
!313 = !DILexicalBlockFile(scope: !289, file: !202, discriminator: 2)
!314 = !DILocation(line: 26, column: 40, scope: !289)
!315 = !DILocation(line: 26, column: 34, scope: !289)
!316 = !DILocation(line: 26, column: 7, scope: !289)
!317 = !DILocation(line: 29, column: 17, scope: !201)
!318 = !DILocation(line: 29, column: 3, scope: !201)
!319 = !DILocation(line: 29, column: 11, scope: !201)
!320 = !DILocation(line: 29, column: 15, scope: !201)
!321 = !DILocation(line: 30, column: 35, scope: !201)
!322 = !DILocation(line: 30, column: 33, scope: !201)
!323 = !DILocation(line: 30, column: 50, scope: !201)
!324 = !DILocation(line: 30, column: 54, scope: !201)
!325 = !DILocation(line: 30, column: 44, scope: !201)
!326 = !DILocation(line: 30, column: 48, scope: !201)
!327 = !DILocation(line: 30, column: 39, scope: !201)
!328 = !DILocation(line: 30, column: 37, scope: !201)
!329 = !DILocation(line: 30, column: 3, scope: !201)
!330 = !DILocation(line: 30, column: 11, scope: !201)
!331 = !DILocation(line: 30, column: 15, scope: !201)
!332 = !DILocation(line: 32, column: 3, scope: !201)
!333 = distinct !DISubprogram(name: "gsl_sf_Chi_e", scope: !1, file: !1, line: 100, type: !64, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!334 = !DILocalVariable(name: "x", arg: 1, scope: !333, file: !1, line: 100, type: !66)
!335 = !DILocation(line: 100, column: 31, scope: !333)
!336 = !DILocalVariable(name: "result", arg: 2, scope: !333, file: !1, line: 100, type: !67)
!337 = !DILocation(line: 100, column: 50, scope: !333)
!338 = !DILocalVariable(name: "result_Ei", scope: !333, file: !1, line: 102, type: !68)
!339 = !DILocation(line: 102, column: 17, scope: !333)
!340 = !DILocalVariable(name: "result_E1", scope: !333, file: !1, line: 103, type: !68)
!341 = !DILocation(line: 103, column: 17, scope: !333)
!342 = !DILocalVariable(name: "status_Ei", scope: !333, file: !1, line: 104, type: !51)
!343 = !DILocation(line: 104, column: 7, scope: !333)
!344 = !DILocation(line: 104, column: 38, scope: !333)
!345 = !DILocation(line: 104, column: 19, scope: !333)
!346 = !DILocalVariable(name: "status_E1", scope: !333, file: !1, line: 105, type: !51)
!347 = !DILocation(line: 105, column: 7, scope: !333)
!348 = !DILocation(line: 105, column: 38, scope: !333)
!349 = !DILocation(line: 105, column: 19, scope: !333)
!350 = !DILocation(line: 106, column: 6, scope: !351)
!351 = distinct !DILexicalBlock(scope: !333, file: !1, line: 106, column: 6)
!352 = !DILocation(line: 106, column: 16, scope: !351)
!353 = !DILocation(line: 106, column: 28, scope: !351)
!354 = !DILocation(line: 106, column: 31, scope: !355)
!355 = !DILexicalBlockFile(scope: !351, file: !1, discriminator: 1)
!356 = !DILocation(line: 106, column: 41, scope: !355)
!357 = !DILocation(line: 106, column: 6, scope: !355)
!358 = !DILocation(line: 107, column: 5, scope: !359)
!359 = distinct !DILexicalBlock(scope: !351, file: !1, line: 106, column: 54)
!360 = distinct !{!360, !358}
!361 = !DILocation(line: 107, column: 5, scope: !362)
!362 = !DILexicalBlockFile(scope: !363, file: !1, discriminator: 1)
!363 = distinct !DILexicalBlock(scope: !359, file: !1, line: 107, column: 5)
!364 = distinct !{!364, !365}
!365 = !DILocation(line: 107, column: 5, scope: !363)
!366 = !DILocation(line: 107, column: 5, scope: !367)
!367 = !DILexicalBlockFile(scope: !368, file: !1, discriminator: 2)
!368 = distinct !DILexicalBlock(scope: !363, file: !1, line: 107, column: 5)
!369 = !DILocation(line: 107, column: 5, scope: !370)
!370 = !DILexicalBlockFile(scope: !363, file: !1, discriminator: 3)
!371 = !DILocation(line: 108, column: 3, scope: !359)
!372 = !DILocation(line: 109, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !351, file: !1, line: 109, column: 11)
!374 = !DILocation(line: 109, column: 21, scope: !373)
!375 = !DILocation(line: 109, column: 37, scope: !373)
!376 = !DILocation(line: 109, column: 40, scope: !377)
!377 = !DILexicalBlockFile(scope: !373, file: !1, discriminator: 1)
!378 = !DILocation(line: 109, column: 50, scope: !377)
!379 = !DILocation(line: 109, column: 11, scope: !377)
!380 = !DILocation(line: 110, column: 5, scope: !381)
!381 = distinct !DILexicalBlock(scope: !373, file: !1, line: 109, column: 67)
!382 = distinct !{!382, !380}
!383 = !DILocation(line: 110, column: 5, scope: !384)
!384 = !DILexicalBlockFile(scope: !385, file: !1, discriminator: 1)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 110, column: 5)
!386 = distinct !{!386, !387}
!387 = !DILocation(line: 110, column: 5, scope: !385)
!388 = !DILocation(line: 110, column: 5, scope: !389)
!389 = !DILexicalBlockFile(scope: !390, file: !1, discriminator: 2)
!390 = distinct !DILexicalBlock(scope: !385, file: !1, line: 110, column: 5)
!391 = !DILocation(line: 110, column: 5, scope: !392)
!392 = !DILexicalBlockFile(scope: !385, file: !1, discriminator: 3)
!393 = !DILocation(line: 111, column: 3, scope: !381)
!394 = !DILocation(line: 112, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !373, file: !1, line: 112, column: 11)
!396 = !DILocation(line: 112, column: 21, scope: !395)
!397 = !DILocation(line: 112, column: 36, scope: !395)
!398 = !DILocation(line: 112, column: 39, scope: !399)
!399 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 1)
!400 = !DILocation(line: 112, column: 49, scope: !399)
!401 = !DILocation(line: 112, column: 11, scope: !399)
!402 = !DILocation(line: 113, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !1, line: 112, column: 65)
!404 = distinct !{!404, !402}
!405 = !DILocation(line: 113, column: 5, scope: !406)
!406 = !DILexicalBlockFile(scope: !407, file: !1, discriminator: 1)
!407 = distinct !DILexicalBlock(scope: !403, file: !1, line: 113, column: 5)
!408 = distinct !{!408, !409}
!409 = !DILocation(line: 113, column: 5, scope: !407)
!410 = !DILocation(line: 113, column: 5, scope: !411)
!411 = !DILexicalBlockFile(scope: !412, file: !1, discriminator: 2)
!412 = distinct !DILexicalBlock(scope: !407, file: !1, line: 113, column: 5)
!413 = !DILocation(line: 113, column: 5, scope: !414)
!414 = !DILexicalBlockFile(scope: !407, file: !1, discriminator: 3)
!415 = !DILocation(line: 114, column: 3, scope: !403)
!416 = !DILocation(line: 116, column: 37, scope: !417)
!417 = distinct !DILexicalBlock(scope: !395, file: !1, line: 115, column: 8)
!418 = !DILocation(line: 116, column: 53, scope: !417)
!419 = !DILocation(line: 116, column: 41, scope: !417)
!420 = !DILocation(line: 116, column: 24, scope: !417)
!421 = !DILocation(line: 116, column: 5, scope: !417)
!422 = !DILocation(line: 116, column: 13, scope: !417)
!423 = !DILocation(line: 116, column: 18, scope: !417)
!424 = !DILocation(line: 117, column: 37, scope: !417)
!425 = !DILocation(line: 117, column: 53, scope: !417)
!426 = !DILocation(line: 117, column: 41, scope: !417)
!427 = !DILocation(line: 117, column: 24, scope: !417)
!428 = !DILocation(line: 117, column: 5, scope: !417)
!429 = !DILocation(line: 117, column: 13, scope: !417)
!430 = !DILocation(line: 117, column: 18, scope: !417)
!431 = !DILocation(line: 118, column: 49, scope: !417)
!432 = !DILocation(line: 118, column: 57, scope: !417)
!433 = !DILocation(line: 118, column: 44, scope: !417)
!434 = !DILocation(line: 118, column: 42, scope: !417)
!435 = !DILocation(line: 118, column: 5, scope: !417)
!436 = !DILocation(line: 118, column: 13, scope: !417)
!437 = !DILocation(line: 118, column: 17, scope: !417)
!438 = !DILocation(line: 119, column: 5, scope: !417)
!439 = !DILocation(line: 121, column: 1, scope: !333)
!440 = distinct !DISubprogram(name: "gsl_sf_Shi", scope: !1, file: !1, line: 127, type: !441, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!441 = !DISubroutineType(types: !442)
!442 = !{!49, !66}
!443 = !DILocalVariable(name: "x", arg: 1, scope: !440, file: !1, line: 127, type: !66)
!444 = !DILocation(line: 127, column: 32, scope: !440)
!445 = !DILocalVariable(name: "result", scope: !440, file: !1, line: 129, type: !68)
!446 = !DILocation(line: 129, column: 3, scope: !440)
!447 = !DILocalVariable(name: "status", scope: !440, file: !1, line: 129, type: !51)
!448 = !DILocation(line: 129, column: 3, scope: !449)
!449 = distinct !DILexicalBlock(scope: !440, file: !1, line: 129, column: 3)
!450 = !DILocation(line: 129, column: 3, scope: !451)
!451 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 1)
!452 = distinct !DILexicalBlock(scope: !449, file: !1, line: 129, column: 3)
!453 = distinct !{!453, !454}
!454 = !DILocation(line: 129, column: 3, scope: !452)
!455 = !DILocation(line: 129, column: 3, scope: !456)
!456 = !DILexicalBlockFile(scope: !457, file: !1, discriminator: 2)
!457 = distinct !DILexicalBlock(scope: !452, file: !1, line: 129, column: 3)
!458 = !DILocation(line: 129, column: 3, scope: !459)
!459 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 3)
!460 = !DILocation(line: 129, column: 3, scope: !461)
!461 = !DILexicalBlockFile(scope: !440, file: !1, discriminator: 4)
!462 = !DILocation(line: 130, column: 1, scope: !440)
!463 = distinct !DISubprogram(name: "gsl_sf_Chi", scope: !1, file: !1, line: 132, type: !441, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!464 = !DILocalVariable(name: "x", arg: 1, scope: !463, file: !1, line: 132, type: !66)
!465 = !DILocation(line: 132, column: 32, scope: !463)
!466 = !DILocalVariable(name: "result", scope: !463, file: !1, line: 134, type: !68)
!467 = !DILocation(line: 134, column: 3, scope: !463)
!468 = !DILocalVariable(name: "status", scope: !463, file: !1, line: 134, type: !51)
!469 = !DILocation(line: 134, column: 3, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !1, line: 134, column: 3)
!471 = !DILocation(line: 134, column: 3, scope: !472)
!472 = !DILexicalBlockFile(scope: !473, file: !1, discriminator: 1)
!473 = distinct !DILexicalBlock(scope: !470, file: !1, line: 134, column: 3)
!474 = distinct !{!474, !475}
!475 = !DILocation(line: 134, column: 3, scope: !473)
!476 = !DILocation(line: 134, column: 3, scope: !477)
!477 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 2)
!478 = distinct !DILexicalBlock(scope: !473, file: !1, line: 134, column: 3)
!479 = !DILocation(line: 134, column: 3, scope: !480)
!480 = !DILexicalBlockFile(scope: !473, file: !1, discriminator: 3)
!481 = !DILocation(line: 134, column: 3, scope: !482)
!482 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 4)
!483 = !DILocation(line: 135, column: 1, scope: !463)
