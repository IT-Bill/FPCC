; ModuleID = 'bessel_i.c'
source_filename = "bessel_i.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_i.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_i0_scaled_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_i1_scaled_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_i2_scaled_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_il_scaled_e(l, x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_i0_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !60, metadata !61), !dbg !62
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !63, metadata !61), !dbg !64
  call void @llvm.dbg.declare(metadata double* %6, metadata !65, metadata !61), !dbg !66
  %15 = load double, double* %4, align 8, !dbg !67
  %16 = call double @fabs(double %15) #1, !dbg !68
  store double %16, double* %6, align 8, !dbg !66
  %17 = load double, double* %4, align 8, !dbg !69
  %18 = fcmp oeq double %17, 0.000000e+00, !dbg !71
  br i1 %18, label %19, label %24, !dbg !72

; <label>:19:                                     ; preds = %2
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !73
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !75
  store double 1.000000e+00, double* %21, align 8, !dbg !76
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !77
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !78
  store double 0.000000e+00, double* %23, align 8, !dbg !79
  store i32 0, i32* %3, align 4, !dbg !80
  br label %94, !dbg !80

; <label>:24:                                     ; preds = %2
  %25 = load double, double* %6, align 8, !dbg !81
  %26 = fcmp olt double %25, 2.000000e-01, !dbg !83
  br i1 %26, label %27, label %60, !dbg !84

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata double* %7, metadata !85, metadata !61), !dbg !87
  %28 = load double, double* %6, align 8, !dbg !88
  %29 = fsub double -0.000000e+00, %28, !dbg !89
  %30 = call double @exp(double %29) #5, !dbg !90
  store double %30, double* %7, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata double* %8, metadata !91, metadata !61), !dbg !92
  %31 = load double, double* %6, align 8, !dbg !93
  %32 = load double, double* %6, align 8, !dbg !94
  %33 = fmul double %31, %32, !dbg !95
  store double %33, double* %8, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata double* %9, metadata !96, metadata !61), !dbg !97
  store double 0x3FC5555555555555, double* %9, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata double* %10, metadata !98, metadata !61), !dbg !99
  store double 0x3F81111111111111, double* %10, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata double* %11, metadata !100, metadata !61), !dbg !101
  store double 0x3F2A01A01A01A01A, double* %11, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata double* %12, metadata !102, metadata !61), !dbg !103
  store double 0x3EC71DE3A556C734, double* %12, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata double* %13, metadata !104, metadata !61), !dbg !105
  store double 0x3E5AE64567F544E4, double* %13, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata double* %14, metadata !106, metadata !61), !dbg !107
  %34 = load double, double* %8, align 8, !dbg !108
  %35 = load double, double* %8, align 8, !dbg !109
  %36 = load double, double* %8, align 8, !dbg !110
  %37 = load double, double* %8, align 8, !dbg !111
  %38 = load double, double* %8, align 8, !dbg !112
  %39 = fmul double %38, 0x3E5AE64567F544E4, !dbg !113
  %40 = fadd double 0x3EC71DE3A556C734, %39, !dbg !114
  %41 = fmul double %37, %40, !dbg !115
  %42 = fadd double 0x3F2A01A01A01A01A, %41, !dbg !116
  %43 = fmul double %36, %42, !dbg !117
  %44 = fadd double 0x3F81111111111111, %43, !dbg !118
  %45 = fmul double %35, %44, !dbg !119
  %46 = fadd double 0x3FC5555555555555, %45, !dbg !120
  %47 = fmul double %34, %46, !dbg !121
  %48 = fadd double 1.000000e+00, %47, !dbg !122
  store double %48, double* %14, align 8, !dbg !107
  %49 = load double, double* %7, align 8, !dbg !123
  %50 = load double, double* %14, align 8, !dbg !124
  %51 = fmul double %49, %50, !dbg !125
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !126
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !127
  store double %51, double* %53, align 8, !dbg !128
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !129
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !130
  %56 = load double, double* %55, align 8, !dbg !130
  %57 = fmul double 0x3CC0000000000000, %56, !dbg !131
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !132
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !133
  store double %57, double* %59, align 8, !dbg !134
  br label %92, !dbg !135

; <label>:60:                                     ; preds = %24
  %61 = load double, double* %6, align 8, !dbg !136
  %62 = fcmp olt double %61, 0x403205966F2B4F12, !dbg !138
  br i1 %62, label %63, label %79, !dbg !139

; <label>:63:                                     ; preds = %60
  %64 = load double, double* %6, align 8, !dbg !140
  %65 = fmul double -2.000000e+00, %64, !dbg !142
  %66 = call double @exp(double %65) #5, !dbg !143
  %67 = fsub double 1.000000e+00, %66, !dbg !144
  %68 = load double, double* %6, align 8, !dbg !145
  %69 = fmul double 2.000000e+00, %68, !dbg !146
  %70 = fdiv double %67, %69, !dbg !147
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !148
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !149
  store double %70, double* %72, align 8, !dbg !150
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !151
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !152
  %75 = load double, double* %74, align 8, !dbg !152
  %76 = fmul double 0x3CC0000000000000, %75, !dbg !153
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !154
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !155
  store double %76, double* %78, align 8, !dbg !156
  br label %91, !dbg !157

; <label>:79:                                     ; preds = %60
  %80 = load double, double* %6, align 8, !dbg !158
  %81 = fmul double 2.000000e+00, %80, !dbg !160
  %82 = fdiv double 1.000000e+00, %81, !dbg !161
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !162
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !163
  store double %82, double* %84, align 8, !dbg !164
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !165
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !166
  %87 = load double, double* %86, align 8, !dbg !166
  %88 = fmul double 0x3CC0000000000000, %87, !dbg !167
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !168
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !169
  store double %88, double* %90, align 8, !dbg !170
  br label %91

; <label>:91:                                     ; preds = %79, %63
  br label %92

; <label>:92:                                     ; preds = %91, %27
  br label %93

; <label>:93:                                     ; preds = %92
  store i32 0, i32* %3, align 4, !dbg !171
  br label %94, !dbg !171

; <label>:94:                                     ; preds = %93, %19
  %95 = load i32, i32* %3, align 4, !dbg !172
  ret i32 %95, !dbg !172
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_i1_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !173 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !174, metadata !61), !dbg !175
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !176, metadata !61), !dbg !177
  call void @llvm.dbg.declare(metadata double* %6, metadata !178, metadata !61), !dbg !179
  %16 = load double, double* %4, align 8, !dbg !180
  %17 = call double @fabs(double %16) #1, !dbg !181
  store double %17, double* %6, align 8, !dbg !179
  %18 = load double, double* %4, align 8, !dbg !182
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !184
  br i1 %19, label %20, label %25, !dbg !185

; <label>:20:                                     ; preds = %2
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !186
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !188
  store double 0.000000e+00, double* %22, align 8, !dbg !189
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !190
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !191
  store double 0.000000e+00, double* %24, align 8, !dbg !192
  store i32 0, i32* %3, align 4, !dbg !193
  br label %113, !dbg !193

; <label>:25:                                     ; preds = %2
  %26 = load double, double* %6, align 8, !dbg !194
  %27 = fcmp olt double %26, 0x28000000000000, !dbg !196
  br i1 %27, label %28, label %37, !dbg !197

; <label>:28:                                     ; preds = %25
  br label %29, !dbg !198, !llvm.loop !200

; <label>:29:                                     ; preds = %28
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !201
  store double 0.000000e+00, double* %31, align 8, !dbg !201
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !201
  store double 0x10000000000000, double* %33, align 8, !dbg !201
  br label %34, !dbg !201, !llvm.loop !204

; <label>:34:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 111, i32 15), !dbg !206
  store i32 15, i32* %3, align 4, !dbg !206
  br label %113, !dbg !206
                                                  ; No predecessors!
  br label %36, !dbg !209

; <label>:36:                                     ; preds = %35
  br label %112, !dbg !211

; <label>:37:                                     ; preds = %25
  %38 = load double, double* %6, align 8, !dbg !212
  %39 = fcmp olt double %38, 2.500000e-01, !dbg !214
  br i1 %39, label %40, label %77, !dbg !215

; <label>:40:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %7, metadata !216, metadata !61), !dbg !218
  %41 = load double, double* %6, align 8, !dbg !219
  %42 = fsub double -0.000000e+00, %41, !dbg !220
  %43 = call double @exp(double %42) #5, !dbg !221
  store double %43, double* %7, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata double* %8, metadata !222, metadata !61), !dbg !223
  %44 = load double, double* %4, align 8, !dbg !224
  %45 = load double, double* %4, align 8, !dbg !225
  %46 = fmul double %44, %45, !dbg !226
  store double %46, double* %8, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata double* %9, metadata !227, metadata !61), !dbg !228
  store double 1.000000e-01, double* %9, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata double* %10, metadata !229, metadata !61), !dbg !230
  store double 0x3F6D41D41D41D41D, double* %10, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata double* %11, metadata !231, metadata !61), !dbg !232
  store double 0x3F11566ABC011567, double* %11, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata double* %12, metadata !233, metadata !61), !dbg !234
  store double 0x3EA937E11175F095, double* %12, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata double* %13, metadata !235, metadata !61), !dbg !236
  store double 0x3E38D48ED61D7AAB, double* %13, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata double* %14, metadata !237, metadata !61), !dbg !238
  %47 = load double, double* %8, align 8, !dbg !239
  %48 = load double, double* %8, align 8, !dbg !240
  %49 = load double, double* %8, align 8, !dbg !241
  %50 = load double, double* %8, align 8, !dbg !242
  %51 = load double, double* %8, align 8, !dbg !243
  %52 = fmul double %51, 0x3E38D48ED61D7AAB, !dbg !244
  %53 = fadd double 0x3EA937E11175F095, %52, !dbg !245
  %54 = fmul double %50, %53, !dbg !246
  %55 = fadd double 0x3F11566ABC011567, %54, !dbg !247
  %56 = fmul double %49, %55, !dbg !248
  %57 = fadd double 0x3F6D41D41D41D41D, %56, !dbg !249
  %58 = fmul double %48, %57, !dbg !250
  %59 = fadd double 1.000000e-01, %58, !dbg !251
  %60 = fmul double %47, %59, !dbg !252
  %61 = fadd double 1.000000e+00, %60, !dbg !253
  store double %61, double* %14, align 8, !dbg !238
  %62 = load double, double* %7, align 8, !dbg !254
  %63 = load double, double* %4, align 8, !dbg !255
  %64 = fmul double %62, %63, !dbg !256
  %65 = fdiv double %64, 3.000000e+00, !dbg !257
  %66 = load double, double* %14, align 8, !dbg !258
  %67 = fmul double %65, %66, !dbg !259
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !260
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !261
  store double %67, double* %69, align 8, !dbg !262
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !263
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !264
  %72 = load double, double* %71, align 8, !dbg !264
  %73 = call double @fabs(double %72) #1, !dbg !265
  %74 = fmul double 0x3CC0000000000000, %73, !dbg !266
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !267
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !268
  store double %74, double* %76, align 8, !dbg !269
  store i32 0, i32* %3, align 4, !dbg !270
  br label %113, !dbg !270

; <label>:77:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %15, metadata !271, metadata !61), !dbg !273
  %78 = load double, double* %6, align 8, !dbg !274
  %79 = fmul double -2.000000e+00, %78, !dbg !275
  %80 = call double @exp(double %79) #5, !dbg !276
  store double %80, double* %15, align 8, !dbg !273
  %81 = load double, double* %6, align 8, !dbg !277
  %82 = load double, double* %15, align 8, !dbg !278
  %83 = fadd double 1.000000e+00, %82, !dbg !279
  %84 = fmul double %81, %83, !dbg !280
  %85 = load double, double* %15, align 8, !dbg !281
  %86 = fsub double 1.000000e+00, %85, !dbg !282
  %87 = fsub double %84, %86, !dbg !283
  %88 = fmul double 5.000000e-01, %87, !dbg !284
  %89 = load double, double* %6, align 8, !dbg !285
  %90 = load double, double* %6, align 8, !dbg !286
  %91 = fmul double %89, %90, !dbg !287
  %92 = fdiv double %88, %91, !dbg !288
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !289
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !290
  store double %92, double* %94, align 8, !dbg !291
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !292
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 0, !dbg !293
  %97 = load double, double* %96, align 8, !dbg !293
  %98 = call double @fabs(double %97) #1, !dbg !294
  %99 = fmul double 0x3CC0000000000000, %98, !dbg !295
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !296
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !297
  store double %99, double* %101, align 8, !dbg !298
  %102 = load double, double* %4, align 8, !dbg !299
  %103 = fcmp olt double %102, 0.000000e+00, !dbg !301
  br i1 %103, label %104, label %111, !dbg !302

; <label>:104:                                    ; preds = %77
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !303
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !305
  %107 = load double, double* %106, align 8, !dbg !305
  %108 = fsub double -0.000000e+00, %107, !dbg !306
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !307
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !308
  store double %108, double* %110, align 8, !dbg !309
  br label %111, !dbg !307

; <label>:111:                                    ; preds = %104, %77
  store i32 0, i32* %3, align 4, !dbg !310
  br label %113, !dbg !310

; <label>:112:                                    ; preds = %36
  br label %113

; <label>:113:                                    ; preds = %20, %34, %40, %111, %112
  %114 = load i32, i32* %3, align 4, !dbg !311
  ret i32 %114, !dbg !311
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_i2_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !312 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !313, metadata !61), !dbg !314
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !315, metadata !61), !dbg !316
  call void @llvm.dbg.declare(metadata double* %6, metadata !317, metadata !61), !dbg !318
  %17 = load double, double* %4, align 8, !dbg !319
  %18 = call double @fabs(double %17) #1, !dbg !320
  store double %18, double* %6, align 8, !dbg !318
  %19 = load double, double* %4, align 8, !dbg !321
  %20 = fcmp oeq double %19, 0.000000e+00, !dbg !323
  br i1 %20, label %21, label %26, !dbg !324

; <label>:21:                                     ; preds = %2
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !325
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !327
  store double 0.000000e+00, double* %23, align 8, !dbg !328
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !329
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !330
  store double 0.000000e+00, double* %25, align 8, !dbg !331
  store i32 0, i32* %3, align 4, !dbg !332
  br label %115, !dbg !332

; <label>:26:                                     ; preds = %2
  %27 = load double, double* %6, align 8, !dbg !333
  %28 = fcmp olt double %27, 0x2020000000000000, !dbg !335
  br i1 %28, label %29, label %38, !dbg !336

; <label>:29:                                     ; preds = %26
  br label %30, !dbg !337, !llvm.loop !339

; <label>:30:                                     ; preds = %29
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !340
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !340
  store double 0.000000e+00, double* %32, align 8, !dbg !340
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !340
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !340
  store double 0x10000000000000, double* %34, align 8, !dbg !340
  br label %35, !dbg !340, !llvm.loop !343

; <label>:35:                                     ; preds = %30
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 148, i32 15), !dbg !345
  store i32 15, i32* %3, align 4, !dbg !345
  br label %115, !dbg !345
                                                  ; No predecessors!
  br label %37, !dbg !348

; <label>:37:                                     ; preds = %36
  br label %114, !dbg !350

; <label>:38:                                     ; preds = %26
  %39 = load double, double* %6, align 8, !dbg !351
  %40 = fcmp olt double %39, 2.500000e-01, !dbg !353
  br i1 %40, label %41, label %80, !dbg !354

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %7, metadata !355, metadata !61), !dbg !357
  %42 = load double, double* %4, align 8, !dbg !358
  %43 = load double, double* %4, align 8, !dbg !359
  %44 = fmul double %42, %43, !dbg !360
  store double %44, double* %7, align 8, !dbg !357
  call void @llvm.dbg.declare(metadata double* %8, metadata !361, metadata !61), !dbg !362
  store double 0x3FB2492492492492, double* %8, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata double* %9, metadata !363, metadata !61), !dbg !364
  store double 0x3F60410410410410, double* %9, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata double* %10, metadata !365, metadata !61), !dbg !366
  store double 0x3EFF85D955D36CBB, double* %10, align 8, !dbg !366
  call void @llvm.dbg.declare(metadata double* %11, metadata !367, metadata !61), !dbg !368
  store double 0x3E93660F974707D5, double* %11, align 8, !dbg !368
  call void @llvm.dbg.declare(metadata double* %12, metadata !369, metadata !61), !dbg !370
  store double 0x3E208DB48EBE51C7, double* %12, align 8, !dbg !370
  call void @llvm.dbg.declare(metadata double* %13, metadata !371, metadata !61), !dbg !372
  %45 = load double, double* %7, align 8, !dbg !373
  %46 = load double, double* %7, align 8, !dbg !374
  %47 = load double, double* %7, align 8, !dbg !375
  %48 = load double, double* %7, align 8, !dbg !376
  %49 = load double, double* %7, align 8, !dbg !377
  %50 = fmul double %49, 0x3E208DB48EBE51C7, !dbg !378
  %51 = fadd double 0x3E93660F974707D5, %50, !dbg !379
  %52 = fmul double %48, %51, !dbg !380
  %53 = fadd double 0x3EFF85D955D36CBB, %52, !dbg !381
  %54 = fmul double %47, %53, !dbg !382
  %55 = fadd double 0x3F60410410410410, %54, !dbg !383
  %56 = fmul double %46, %55, !dbg !384
  %57 = fadd double 0x3FB2492492492492, %56, !dbg !385
  %58 = fmul double %45, %57, !dbg !386
  %59 = fadd double 1.000000e+00, %58, !dbg !387
  store double %59, double* %13, align 8, !dbg !372
  call void @llvm.dbg.declare(metadata double* %14, metadata !388, metadata !61), !dbg !389
  %60 = load double, double* %6, align 8, !dbg !390
  %61 = fsub double -0.000000e+00, %60, !dbg !391
  %62 = call double @exp(double %61) #5, !dbg !392
  %63 = load double, double* %4, align 8, !dbg !393
  %64 = fmul double %62, %63, !dbg !394
  %65 = load double, double* %4, align 8, !dbg !395
  %66 = fmul double %64, %65, !dbg !396
  %67 = fdiv double %66, 1.500000e+01, !dbg !397
  store double %67, double* %14, align 8, !dbg !389
  %68 = load double, double* %14, align 8, !dbg !398
  %69 = load double, double* %13, align 8, !dbg !399
  %70 = fmul double %68, %69, !dbg !400
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !401
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !402
  store double %70, double* %72, align 8, !dbg !403
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !404
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !405
  %75 = load double, double* %74, align 8, !dbg !405
  %76 = call double @fabs(double %75) #1, !dbg !406
  %77 = fmul double 0x3CC0000000000000, %76, !dbg !407
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !408
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !409
  store double %77, double* %79, align 8, !dbg !410
  store i32 0, i32* %3, align 4, !dbg !411
  br label %115, !dbg !411

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %15, metadata !412, metadata !61), !dbg !414
  %81 = load double, double* %6, align 8, !dbg !415
  %82 = fmul double -2.000000e+00, %81, !dbg !416
  %83 = call double @exp(double %82) #5, !dbg !417
  store double %83, double* %15, align 8, !dbg !414
  call void @llvm.dbg.declare(metadata double* %16, metadata !418, metadata !61), !dbg !419
  %84 = load double, double* %4, align 8, !dbg !420
  %85 = load double, double* %4, align 8, !dbg !421
  %86 = fmul double %84, %85, !dbg !422
  store double %86, double* %16, align 8, !dbg !419
  %87 = load double, double* %16, align 8, !dbg !423
  %88 = fadd double 3.000000e+00, %87, !dbg !424
  %89 = load double, double* %15, align 8, !dbg !425
  %90 = fsub double 1.000000e+00, %89, !dbg !426
  %91 = fmul double %88, %90, !dbg !427
  %92 = load double, double* %6, align 8, !dbg !428
  %93 = fmul double 3.000000e+00, %92, !dbg !429
  %94 = load double, double* %15, align 8, !dbg !430
  %95 = fadd double 1.000000e+00, %94, !dbg !431
  %96 = fmul double %93, %95, !dbg !432
  %97 = fsub double %91, %96, !dbg !433
  %98 = fmul double 5.000000e-01, %97, !dbg !434
  %99 = load double, double* %6, align 8, !dbg !435
  %100 = load double, double* %6, align 8, !dbg !436
  %101 = fmul double %99, %100, !dbg !437
  %102 = load double, double* %6, align 8, !dbg !438
  %103 = fmul double %101, %102, !dbg !439
  %104 = fdiv double %98, %103, !dbg !440
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !441
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !442
  store double %104, double* %106, align 8, !dbg !443
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !444
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !445
  %109 = load double, double* %108, align 8, !dbg !445
  %110 = call double @fabs(double %109) #1, !dbg !446
  %111 = fmul double 0x3CC0000000000000, %110, !dbg !447
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !448
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !449
  store double %111, double* %113, align 8, !dbg !450
  store i32 0, i32* %3, align 4, !dbg !451
  br label %115, !dbg !451

; <label>:114:                                    ; preds = %37
  br label %115

; <label>:115:                                    ; preds = %21, %35, %41, %80, %114
  %116 = load i32, i32* %3, align 4, !dbg !452
  ret i32 %116, !dbg !452
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_il_scaled_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !453 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca %struct.gsl_sf_result_struct, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !457, metadata !61), !dbg !458
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !459, metadata !61), !dbg !460
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !461, metadata !61), !dbg !462
  call void @llvm.dbg.declare(metadata double* %8, metadata !463, metadata !61), !dbg !464
  store double 1.000000e+00, double* %8, align 8, !dbg !464
  call void @llvm.dbg.declare(metadata double* %9, metadata !465, metadata !61), !dbg !466
  %39 = load double, double* %6, align 8, !dbg !467
  %40 = call double @fabs(double %39) #1, !dbg !468
  store double %40, double* %9, align 8, !dbg !466
  %41 = load double, double* %6, align 8, !dbg !469
  %42 = fcmp olt double %41, 0.000000e+00, !dbg !471
  br i1 %42, label %43, label %50, !dbg !472

; <label>:43:                                     ; preds = %3
  %44 = load i32, i32* %5, align 4, !dbg !473
  %45 = and i32 %44, 1, !dbg !473
  %46 = icmp ne i32 %45, 0, !dbg !473
  %47 = select i1 %46, double -1.000000e+00, double 1.000000e+00, !dbg !473
  store double %47, double* %8, align 8, !dbg !475
  %48 = load double, double* %6, align 8, !dbg !476
  %49 = fsub double -0.000000e+00, %48, !dbg !477
  store double %49, double* %6, align 8, !dbg !478
  br label %50, !dbg !479

; <label>:50:                                     ; preds = %43, %3
  %51 = load i32, i32* %5, align 4, !dbg !480
  %52 = icmp slt i32 %51, 0, !dbg !482
  br i1 %52, label %53, label %62, !dbg !483

; <label>:53:                                     ; preds = %50
  br label %54, !dbg !484, !llvm.loop !486

; <label>:54:                                     ; preds = %53
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !487
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !487
  store double 0x7FF8000000000000, double* %56, align 8, !dbg !487
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !487
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !487
  store double 0x7FF8000000000000, double* %58, align 8, !dbg !487
  br label %59, !dbg !487, !llvm.loop !490

; <label>:59:                                     ; preds = %54
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 185, i32 1), !dbg !492
  store i32 1, i32* %4, align 4, !dbg !492
  br label %393, !dbg !492
                                                  ; No predecessors!
  br label %61, !dbg !495

; <label>:61:                                     ; preds = %60
  br label %393, !dbg !497

; <label>:62:                                     ; preds = %50
  %63 = load double, double* %6, align 8, !dbg !498
  %64 = fcmp oeq double %63, 0.000000e+00, !dbg !500
  br i1 %64, label %65, label %73, !dbg !501

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %5, align 4, !dbg !502
  %67 = icmp eq i32 %66, 0, !dbg !504
  %68 = select i1 %67, double 1.000000e+00, double 0.000000e+00, !dbg !502
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !505
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !506
  store double %68, double* %70, align 8, !dbg !507
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !508
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !509
  store double 0.000000e+00, double* %72, align 8, !dbg !510
  store i32 0, i32* %4, align 4, !dbg !511
  br label %393, !dbg !511

; <label>:73:                                     ; preds = %62
  %74 = load i32, i32* %5, align 4, !dbg !512
  %75 = icmp eq i32 %74, 0, !dbg !514
  br i1 %75, label %76, label %90, !dbg !515

; <label>:76:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !516, metadata !61), !dbg !518
  call void @llvm.dbg.declare(metadata i32* %11, metadata !519, metadata !61), !dbg !520
  %77 = load double, double* %6, align 8, !dbg !521
  %78 = call i32 @gsl_sf_bessel_i0_scaled_e(double %77, %struct.gsl_sf_result_struct* %10), !dbg !522
  store i32 %78, i32* %11, align 4, !dbg !520
  %79 = load double, double* %8, align 8, !dbg !523
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !524
  %81 = load double, double* %80, align 8, !dbg !524
  %82 = fmul double %79, %81, !dbg !525
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !526
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !527
  store double %82, double* %84, align 8, !dbg !528
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !529
  %86 = load double, double* %85, align 8, !dbg !529
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !530
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !531
  store double %86, double* %88, align 8, !dbg !532
  %89 = load i32, i32* %11, align 4, !dbg !533
  store i32 %89, i32* %4, align 4, !dbg !534
  br label %393, !dbg !534

; <label>:90:                                     ; preds = %73
  %91 = load i32, i32* %5, align 4, !dbg !535
  %92 = icmp eq i32 %91, 1, !dbg !537
  br i1 %92, label %93, label %107, !dbg !538

; <label>:93:                                     ; preds = %90
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !539, metadata !61), !dbg !541
  call void @llvm.dbg.declare(metadata i32* %13, metadata !542, metadata !61), !dbg !543
  %94 = load double, double* %6, align 8, !dbg !544
  %95 = call i32 @gsl_sf_bessel_i1_scaled_e(double %94, %struct.gsl_sf_result_struct* %12), !dbg !545
  store i32 %95, i32* %13, align 4, !dbg !543
  %96 = load double, double* %8, align 8, !dbg !546
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !547
  %98 = load double, double* %97, align 8, !dbg !547
  %99 = fmul double %96, %98, !dbg !548
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !549
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !550
  store double %99, double* %101, align 8, !dbg !551
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !552
  %103 = load double, double* %102, align 8, !dbg !552
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !553
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 1, !dbg !554
  store double %103, double* %105, align 8, !dbg !555
  %106 = load i32, i32* %13, align 4, !dbg !556
  store i32 %106, i32* %4, align 4, !dbg !557
  br label %393, !dbg !557

; <label>:107:                                    ; preds = %90
  %108 = load i32, i32* %5, align 4, !dbg !558
  %109 = icmp eq i32 %108, 2, !dbg !560
  br i1 %109, label %110, label %124, !dbg !561

; <label>:110:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !562, metadata !61), !dbg !564
  call void @llvm.dbg.declare(metadata i32* %15, metadata !565, metadata !61), !dbg !566
  %111 = load double, double* %6, align 8, !dbg !567
  %112 = call i32 @gsl_sf_bessel_i2_scaled_e(double %111, %struct.gsl_sf_result_struct* %14), !dbg !568
  store i32 %112, i32* %15, align 4, !dbg !566
  %113 = load double, double* %8, align 8, !dbg !569
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !570
  %115 = load double, double* %114, align 8, !dbg !570
  %116 = fmul double %113, %115, !dbg !571
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !572
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 0, !dbg !573
  store double %116, double* %118, align 8, !dbg !574
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !575
  %120 = load double, double* %119, align 8, !dbg !575
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !576
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 1, !dbg !577
  store double %120, double* %122, align 8, !dbg !578
  %123 = load i32, i32* %15, align 4, !dbg !579
  store i32 %123, i32* %4, align 4, !dbg !580
  br label %393, !dbg !580

; <label>:124:                                    ; preds = %107
  %125 = load double, double* %6, align 8, !dbg !581
  %126 = load double, double* %6, align 8, !dbg !583
  %127 = fmul double %125, %126, !dbg !584
  %128 = load i32, i32* %5, align 4, !dbg !585
  %129 = sitofp i32 %128 to double, !dbg !585
  %130 = fadd double %129, 1.500000e+00, !dbg !586
  %131 = fmul double 1.000000e+01, %130, !dbg !587
  %132 = fdiv double %131, 0x4005BF0A8B145769, !dbg !588
  %133 = fcmp olt double %127, %132, !dbg !589
  br i1 %133, label %134, label %171, !dbg !590

; <label>:134:                                    ; preds = %124
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !591, metadata !61), !dbg !593
  call void @llvm.dbg.declare(metadata i32* %17, metadata !594, metadata !61), !dbg !595
  %135 = load i32, i32* %5, align 4, !dbg !596
  %136 = sitofp i32 %135 to double, !dbg !596
  %137 = fadd double %136, 5.000000e-01, !dbg !597
  %138 = load double, double* %6, align 8, !dbg !598
  %139 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %137, double %138, i32 1, i32 50, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %16), !dbg !599
  store i32 %139, i32* %17, align 4, !dbg !595
  call void @llvm.dbg.declare(metadata double* %18, metadata !600, metadata !61), !dbg !601
  %140 = load double, double* %9, align 8, !dbg !602
  %141 = fsub double -0.000000e+00, %140, !dbg !603
  %142 = call double @exp(double %141) #5, !dbg !604
  %143 = load double, double* %6, align 8, !dbg !605
  %144 = fdiv double 0x3FF921FB54442D18, %143, !dbg !606
  %145 = call double @sqrt(double %144) #5, !dbg !607
  %146 = fmul double %142, %145, !dbg !609
  store double %146, double* %18, align 8, !dbg !601
  %147 = load double, double* %8, align 8, !dbg !610
  %148 = load double, double* %18, align 8, !dbg !611
  %149 = fmul double %147, %148, !dbg !612
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !613
  %151 = load double, double* %150, align 8, !dbg !613
  %152 = fmul double %149, %151, !dbg !614
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !615
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 0, !dbg !616
  store double %152, double* %154, align 8, !dbg !617
  %155 = load double, double* %18, align 8, !dbg !618
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !619
  %157 = load double, double* %156, align 8, !dbg !619
  %158 = fmul double %155, %157, !dbg !620
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !621
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 1, !dbg !622
  store double %158, double* %160, align 8, !dbg !623
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !624
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !625
  %163 = load double, double* %162, align 8, !dbg !625
  %164 = call double @fabs(double %163) #1, !dbg !626
  %165 = fmul double 0x3CC0000000000000, %164, !dbg !627
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !628
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 1, !dbg !629
  %168 = load double, double* %167, align 8, !dbg !630
  %169 = fadd double %168, %165, !dbg !630
  store double %169, double* %167, align 8, !dbg !630
  %170 = load i32, i32* %17, align 4, !dbg !631
  store i32 %170, i32* %4, align 4, !dbg !632
  br label %393, !dbg !632

; <label>:171:                                    ; preds = %124
  %172 = load i32, i32* %5, align 4, !dbg !633
  %173 = icmp slt i32 %172, 150, !dbg !635
  br i1 %173, label %174, label %242, !dbg !636

; <label>:174:                                    ; preds = %171
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !637, metadata !61), !dbg !639
  call void @llvm.dbg.declare(metadata i32* %20, metadata !640, metadata !61), !dbg !641
  %175 = load double, double* %9, align 8, !dbg !642
  %176 = call i32 @gsl_sf_bessel_i0_scaled_e(double %175, %struct.gsl_sf_result_struct* %19), !dbg !643
  store i32 %176, i32* %20, align 4, !dbg !641
  call void @llvm.dbg.declare(metadata double* %21, metadata !644, metadata !61), !dbg !645
  call void @llvm.dbg.declare(metadata i32* %22, metadata !646, metadata !61), !dbg !647
  %177 = load i32, i32* %5, align 4, !dbg !648
  %178 = load double, double* %9, align 8, !dbg !649
  %179 = call i32 @bessel_il_CF1(i32 %177, double %178, double 0x3CB0000000000000, double* %21), !dbg !650
  store i32 %179, i32* %22, align 4, !dbg !647
  call void @llvm.dbg.declare(metadata double* %23, metadata !651, metadata !61), !dbg !652
  %180 = load double, double* %21, align 8, !dbg !653
  %181 = fmul double %180, 0x2000000000000000, !dbg !654
  store double %181, double* %23, align 8, !dbg !652
  call void @llvm.dbg.declare(metadata double* %24, metadata !655, metadata !61), !dbg !656
  store double 0x2000000000000000, double* %24, align 8, !dbg !656
  call void @llvm.dbg.declare(metadata double* %25, metadata !657, metadata !61), !dbg !658
  call void @llvm.dbg.declare(metadata i32* %26, metadata !659, metadata !61), !dbg !660
  %182 = load i32, i32* %5, align 4, !dbg !661
  store i32 %182, i32* %26, align 4, !dbg !663
  br label %183, !dbg !664

; <label>:183:                                    ; preds = %199, %174
  %184 = load i32, i32* %26, align 4, !dbg !665
  %185 = icmp sge i32 %184, 1, !dbg !668
  br i1 %185, label %186, label %202, !dbg !669

; <label>:186:                                    ; preds = %183
  %187 = load double, double* %23, align 8, !dbg !670
  %188 = load i32, i32* %26, align 4, !dbg !672
  %189 = mul nsw i32 2, %188, !dbg !673
  %190 = add nsw i32 %189, 1, !dbg !674
  %191 = sitofp i32 %190 to double, !dbg !675
  %192 = load double, double* %6, align 8, !dbg !676
  %193 = fdiv double %191, %192, !dbg !677
  %194 = load double, double* %24, align 8, !dbg !678
  %195 = fmul double %193, %194, !dbg !679
  %196 = fadd double %187, %195, !dbg !680
  store double %196, double* %25, align 8, !dbg !681
  %197 = load double, double* %24, align 8, !dbg !682
  store double %197, double* %23, align 8, !dbg !683
  %198 = load double, double* %25, align 8, !dbg !684
  store double %198, double* %24, align 8, !dbg !685
  br label %199, !dbg !686

; <label>:199:                                    ; preds = %186
  %200 = load i32, i32* %26, align 4, !dbg !687
  %201 = add nsw i32 %200, -1, !dbg !687
  store i32 %201, i32* %26, align 4, !dbg !687
  br label %183, !dbg !689, !llvm.loop !690

; <label>:202:                                    ; preds = %183
  %203 = load double, double* %8, align 8, !dbg !692
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !693
  %205 = load double, double* %204, align 8, !dbg !693
  %206 = fmul double %203, %205, !dbg !694
  %207 = load double, double* %24, align 8, !dbg !695
  %208 = fdiv double 0x2000000000000000, %207, !dbg !696
  %209 = fmul double %206, %208, !dbg !697
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !698
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 0, !dbg !699
  store double %209, double* %211, align 8, !dbg !700
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !701
  %213 = load double, double* %212, align 8, !dbg !701
  %214 = load double, double* %24, align 8, !dbg !702
  %215 = fdiv double 0x2000000000000000, %214, !dbg !703
  %216 = fmul double %213, %215, !dbg !704
  %217 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !705
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %217, i32 0, i32 1, !dbg !706
  store double %216, double* %218, align 8, !dbg !707
  %219 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !708
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %219, i32 0, i32 0, !dbg !709
  %221 = load double, double* %220, align 8, !dbg !709
  %222 = call double @fabs(double %221) #1, !dbg !710
  %223 = fmul double 0x3CC0000000000000, %222, !dbg !711
  %224 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !712
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %224, i32 0, i32 1, !dbg !713
  %226 = load double, double* %225, align 8, !dbg !714
  %227 = fadd double %226, %223, !dbg !714
  store double %227, double* %225, align 8, !dbg !714
  %228 = load i32, i32* %20, align 4, !dbg !715
  %229 = icmp ne i32 %228, 0, !dbg !715
  br i1 %229, label %230, label %232, !dbg !715

; <label>:230:                                    ; preds = %202
  %231 = load i32, i32* %20, align 4, !dbg !716
  br label %240, !dbg !716

; <label>:232:                                    ; preds = %202
  %233 = load i32, i32* %22, align 4, !dbg !718
  %234 = icmp ne i32 %233, 0, !dbg !718
  br i1 %234, label %235, label %237, !dbg !718

; <label>:235:                                    ; preds = %232
  %236 = load i32, i32* %22, align 4, !dbg !720
  br label %238, !dbg !720

; <label>:237:                                    ; preds = %232
  br label %238, !dbg !722

; <label>:238:                                    ; preds = %237, %235
  %239 = phi i32 [ %236, %235 ], [ 0, %237 ], !dbg !724
  br label %240, !dbg !724

; <label>:240:                                    ; preds = %238, %230
  %241 = phi i32 [ %231, %230 ], [ %239, %238 ], !dbg !726
  store i32 %241, i32* %4, align 4, !dbg !728
  br label %393, !dbg !728

; <label>:242:                                    ; preds = %171
  %243 = load i32, i32* %5, align 4, !dbg !729
  %244 = load i32, i32* %5, align 4, !dbg !729
  %245 = mul nsw i32 %243, %244, !dbg !729
  %246 = sitofp i32 %245 to double, !dbg !729
  %247 = fadd double %246, 1.000000e+00, !dbg !729
  %248 = fdiv double 2.900000e-01, %247, !dbg !729
  %249 = load i32, i32* %5, align 4, !dbg !729
  %250 = load i32, i32* %5, align 4, !dbg !729
  %251 = mul nsw i32 %249, %250, !dbg !729
  %252 = sitofp i32 %251 to double, !dbg !729
  %253 = fadd double %252, 1.000000e+00, !dbg !729
  %254 = load double, double* %6, align 8, !dbg !729
  %255 = load double, double* %6, align 8, !dbg !729
  %256 = fmul double %254, %255, !dbg !729
  %257 = fadd double %253, %256, !dbg !729
  %258 = fdiv double 5.000000e-01, %257, !dbg !729
  %259 = fcmp olt double %248, %258, !dbg !729
  br i1 %259, label %260, label %267, !dbg !729

; <label>:260:                                    ; preds = %242
  %261 = load i32, i32* %5, align 4, !dbg !731
  %262 = load i32, i32* %5, align 4, !dbg !731
  %263 = mul nsw i32 %261, %262, !dbg !731
  %264 = sitofp i32 %263 to double, !dbg !731
  %265 = fadd double %264, 1.000000e+00, !dbg !731
  %266 = fdiv double 2.900000e-01, %265, !dbg !731
  br label %278, !dbg !731

; <label>:267:                                    ; preds = %242
  %268 = load i32, i32* %5, align 4, !dbg !733
  %269 = load i32, i32* %5, align 4, !dbg !733
  %270 = mul nsw i32 %268, %269, !dbg !733
  %271 = sitofp i32 %270 to double, !dbg !733
  %272 = fadd double %271, 1.000000e+00, !dbg !733
  %273 = load double, double* %6, align 8, !dbg !733
  %274 = load double, double* %6, align 8, !dbg !733
  %275 = fmul double %273, %274, !dbg !733
  %276 = fadd double %272, %275, !dbg !733
  %277 = fdiv double 5.000000e-01, %276, !dbg !733
  br label %278, !dbg !733

; <label>:278:                                    ; preds = %267, %260
  %279 = phi double [ %266, %260 ], [ %277, %267 ], !dbg !735
  %280 = fcmp olt double %279, 0x3EC965FEA53D6E41, !dbg !737
  br i1 %280, label %281, label %304, !dbg !735

; <label>:281:                                    ; preds = %278
  call void @llvm.dbg.declare(metadata i32* %27, metadata !738, metadata !61), !dbg !740
  %282 = load i32, i32* %5, align 4, !dbg !741
  %283 = sitofp i32 %282 to double, !dbg !741
  %284 = fadd double %283, 5.000000e-01, !dbg !742
  %285 = load double, double* %6, align 8, !dbg !743
  %286 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !744
  %287 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double %284, double %285, %struct.gsl_sf_result_struct* %286), !dbg !745
  store i32 %287, i32* %27, align 4, !dbg !740
  call void @llvm.dbg.declare(metadata double* %28, metadata !746, metadata !61), !dbg !747
  %288 = load double, double* %6, align 8, !dbg !748
  %289 = fdiv double 0x3FF921FB54442D18, %288, !dbg !749
  %290 = call double @sqrt(double %289) #5, !dbg !750
  store double %290, double* %28, align 8, !dbg !747
  %291 = load double, double* %8, align 8, !dbg !751
  %292 = load double, double* %28, align 8, !dbg !752
  %293 = fmul double %291, %292, !dbg !753
  %294 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !754
  %295 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %294, i32 0, i32 0, !dbg !755
  %296 = load double, double* %295, align 8, !dbg !756
  %297 = fmul double %296, %293, !dbg !756
  store double %297, double* %295, align 8, !dbg !756
  %298 = load double, double* %28, align 8, !dbg !757
  %299 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !758
  %300 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %299, i32 0, i32 1, !dbg !759
  %301 = load double, double* %300, align 8, !dbg !760
  %302 = fmul double %301, %298, !dbg !760
  store double %302, double* %300, align 8, !dbg !760
  %303 = load i32, i32* %27, align 4, !dbg !761
  store i32 %303, i32* %4, align 4, !dbg !762
  br label %393, !dbg !762

; <label>:304:                                    ; preds = %278
  call void @llvm.dbg.declare(metadata double* %29, metadata !763, metadata !61), !dbg !765
  %305 = load double, double* %6, align 8, !dbg !766
  %306 = fdiv double 0x3FF921FB54442D18, %305, !dbg !767
  %307 = call double @sqrt(double %306) #5, !dbg !768
  store double %307, double* %29, align 8, !dbg !765
  call void @llvm.dbg.declare(metadata i32* %30, metadata !769, metadata !61), !dbg !770
  store i32 489, i32* %30, align 4, !dbg !770
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !771, metadata !61), !dbg !772
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %32, metadata !773, metadata !61), !dbg !774
  call void @llvm.dbg.declare(metadata i32* %33, metadata !775, metadata !61), !dbg !776
  %308 = load double, double* %6, align 8, !dbg !777
  %309 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double 4.905000e+02, double %308, %struct.gsl_sf_result_struct* %31), !dbg !778
  store i32 %309, i32* %33, align 4, !dbg !776
  call void @llvm.dbg.declare(metadata i32* %34, metadata !779, metadata !61), !dbg !780
  %310 = load double, double* %6, align 8, !dbg !781
  %311 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double 4.895000e+02, double %310, %struct.gsl_sf_result_struct* %32), !dbg !782
  store i32 %311, i32* %34, align 4, !dbg !780
  call void @llvm.dbg.declare(metadata double* %35, metadata !783, metadata !61), !dbg !784
  %312 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !785
  %313 = load double, double* %312, align 8, !dbg !785
  store double %313, double* %35, align 8, !dbg !784
  call void @llvm.dbg.declare(metadata double* %36, metadata !786, metadata !61), !dbg !787
  %314 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !788
  %315 = load double, double* %314, align 8, !dbg !788
  store double %315, double* %36, align 8, !dbg !787
  call void @llvm.dbg.declare(metadata double* %37, metadata !789, metadata !61), !dbg !790
  store double 0.000000e+00, double* %37, align 8, !dbg !790
  call void @llvm.dbg.declare(metadata i32* %38, metadata !791, metadata !61), !dbg !792
  %316 = load double, double* %29, align 8, !dbg !793
  %317 = load double, double* %35, align 8, !dbg !794
  %318 = fmul double %317, %316, !dbg !794
  store double %318, double* %35, align 8, !dbg !794
  %319 = load double, double* %29, align 8, !dbg !795
  %320 = load double, double* %36, align 8, !dbg !796
  %321 = fmul double %320, %319, !dbg !796
  store double %321, double* %36, align 8, !dbg !796
  store i32 489, i32* %38, align 4, !dbg !797
  br label %322, !dbg !799

; <label>:322:                                    ; preds = %340, %304
  %323 = load i32, i32* %38, align 4, !dbg !800
  %324 = load i32, i32* %5, align 4, !dbg !803
  %325 = add nsw i32 %324, 1, !dbg !804
  %326 = icmp sge i32 %323, %325, !dbg !805
  br i1 %326, label %327, label %343, !dbg !806

; <label>:327:                                    ; preds = %322
  %328 = load double, double* %35, align 8, !dbg !807
  %329 = load i32, i32* %38, align 4, !dbg !809
  %330 = mul nsw i32 2, %329, !dbg !810
  %331 = add nsw i32 %330, 1, !dbg !811
  %332 = sitofp i32 %331 to double, !dbg !812
  %333 = load double, double* %6, align 8, !dbg !813
  %334 = fdiv double %332, %333, !dbg !814
  %335 = load double, double* %36, align 8, !dbg !815
  %336 = fmul double %334, %335, !dbg !816
  %337 = fadd double %328, %336, !dbg !817
  store double %337, double* %37, align 8, !dbg !818
  %338 = load double, double* %36, align 8, !dbg !819
  store double %338, double* %35, align 8, !dbg !820
  %339 = load double, double* %37, align 8, !dbg !821
  store double %339, double* %36, align 8, !dbg !822
  br label %340, !dbg !823

; <label>:340:                                    ; preds = %327
  %341 = load i32, i32* %38, align 4, !dbg !824
  %342 = add nsw i32 %341, -1, !dbg !824
  store i32 %342, i32* %38, align 4, !dbg !824
  br label %322, !dbg !826, !llvm.loop !827

; <label>:343:                                    ; preds = %322
  %344 = load double, double* %8, align 8, !dbg !829
  %345 = load double, double* %37, align 8, !dbg !830
  %346 = fmul double %344, %345, !dbg !831
  %347 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !832
  %348 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %347, i32 0, i32 0, !dbg !833
  store double %346, double* %348, align 8, !dbg !834
  %349 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !835
  %350 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %349, i32 0, i32 0, !dbg !836
  %351 = load double, double* %350, align 8, !dbg !836
  %352 = call double @fabs(double %351) #1, !dbg !837
  %353 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !838
  %354 = load double, double* %353, align 8, !dbg !838
  %355 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !839
  %356 = load double, double* %355, align 8, !dbg !839
  %357 = fdiv double %354, %356, !dbg !840
  %358 = call double @fabs(double %357) #1, !dbg !841
  %359 = fadd double 0x3CB0000000000000, %358, !dbg !843
  %360 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !844
  %361 = load double, double* %360, align 8, !dbg !844
  %362 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !845
  %363 = load double, double* %362, align 8, !dbg !845
  %364 = fdiv double %361, %363, !dbg !846
  %365 = call double @fabs(double %364) #1, !dbg !847
  %366 = fadd double %359, %365, !dbg !849
  %367 = fmul double %352, %366, !dbg !850
  %368 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !851
  %369 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %368, i32 0, i32 1, !dbg !852
  store double %367, double* %369, align 8, !dbg !853
  %370 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !854
  %371 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %370, i32 0, i32 0, !dbg !855
  %372 = load double, double* %371, align 8, !dbg !855
  %373 = call double @fabs(double %372) #1, !dbg !856
  %374 = fmul double 0x3CC0000000000000, %373, !dbg !857
  %375 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !858
  %376 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %375, i32 0, i32 1, !dbg !859
  %377 = load double, double* %376, align 8, !dbg !860
  %378 = fadd double %377, %374, !dbg !860
  store double %378, double* %376, align 8, !dbg !860
  %379 = load i32, i32* %33, align 4, !dbg !861
  %380 = icmp ne i32 %379, 0, !dbg !861
  br i1 %380, label %381, label %383, !dbg !861

; <label>:381:                                    ; preds = %343
  %382 = load i32, i32* %33, align 4, !dbg !862
  br label %391, !dbg !862

; <label>:383:                                    ; preds = %343
  %384 = load i32, i32* %34, align 4, !dbg !863
  %385 = icmp ne i32 %384, 0, !dbg !863
  br i1 %385, label %386, label %388, !dbg !863

; <label>:386:                                    ; preds = %383
  %387 = load i32, i32* %34, align 4, !dbg !864
  br label %389, !dbg !864

; <label>:388:                                    ; preds = %383
  br label %389, !dbg !866

; <label>:389:                                    ; preds = %388, %386
  %390 = phi i32 [ %387, %386 ], [ 0, %388 ], !dbg !868
  br label %391, !dbg !868

; <label>:391:                                    ; preds = %389, %381
  %392 = phi i32 [ %382, %381 ], [ %390, %389 ], !dbg !870
  store i32 %392, i32* %4, align 4, !dbg !872
  br label %393, !dbg !872

; <label>:393:                                    ; preds = %59, %65, %76, %93, %110, %134, %240, %281, %391, %61
  %394 = load i32, i32* %4, align 4, !dbg !873
  ret i32 %394, !dbg !873
}

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define internal i32 @bessel_il_CF1(i32, double, double, double*) #0 !dbg !874 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !878, metadata !61), !dbg !879
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !880, metadata !61), !dbg !881
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !882, metadata !61), !dbg !883
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !884, metadata !61), !dbg !885
  call void @llvm.dbg.declare(metadata i32* %10, metadata !886, metadata !61), !dbg !887
  store i32 2000, i32* %10, align 4, !dbg !887
  call void @llvm.dbg.declare(metadata double* %11, metadata !888, metadata !61), !dbg !889
  store double 1.000000e+00, double* %11, align 8, !dbg !889
  call void @llvm.dbg.declare(metadata double* %12, metadata !890, metadata !61), !dbg !891
  store double 1.000000e+00, double* %12, align 8, !dbg !891
  call void @llvm.dbg.declare(metadata double* %13, metadata !892, metadata !61), !dbg !893
  store double 0.000000e+00, double* %13, align 8, !dbg !893
  call void @llvm.dbg.declare(metadata i32* %14, metadata !894, metadata !61), !dbg !895
  store i32 1, i32* %14, align 4, !dbg !896
  br label %16, !dbg !898

; <label>:16:                                     ; preds = %66, %4
  %17 = load i32, i32* %14, align 4, !dbg !899
  %18 = icmp sle i32 %17, 2000, !dbg !902
  br i1 %18, label %19, label %69, !dbg !903

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata double* %15, metadata !904, metadata !61), !dbg !906
  %20 = load double, double* %7, align 8, !dbg !907
  %21 = load i32, i32* %6, align 4, !dbg !908
  %22 = sitofp i32 %21 to double, !dbg !908
  %23 = fmul double 2.000000e+00, %22, !dbg !909
  %24 = fadd double %23, 1.000000e+00, !dbg !910
  %25 = load i32, i32* %14, align 4, !dbg !911
  %26 = sitofp i32 %25 to double, !dbg !911
  %27 = fmul double 2.000000e+00, %26, !dbg !912
  %28 = fadd double %24, %27, !dbg !913
  %29 = fdiv double %20, %28, !dbg !914
  %30 = load double, double* %7, align 8, !dbg !915
  %31 = load i32, i32* %6, align 4, !dbg !916
  %32 = sitofp i32 %31 to double, !dbg !916
  %33 = fmul double 2.000000e+00, %32, !dbg !917
  %34 = fadd double %33, 3.000000e+00, !dbg !918
  %35 = load i32, i32* %14, align 4, !dbg !919
  %36 = sitofp i32 %35 to double, !dbg !919
  %37 = fmul double 2.000000e+00, %36, !dbg !920
  %38 = fadd double %34, %37, !dbg !921
  %39 = fdiv double %30, %38, !dbg !922
  %40 = fmul double %29, %39, !dbg !923
  store double %40, double* %15, align 8, !dbg !906
  %41 = load double, double* %15, align 8, !dbg !924
  %42 = fsub double -0.000000e+00, %41, !dbg !925
  %43 = load double, double* %13, align 8, !dbg !926
  %44 = fadd double 1.000000e+00, %43, !dbg !927
  %45 = fmul double %42, %44, !dbg !928
  %46 = load double, double* %15, align 8, !dbg !929
  %47 = load double, double* %13, align 8, !dbg !930
  %48 = fadd double 1.000000e+00, %47, !dbg !931
  %49 = fmul double %46, %48, !dbg !932
  %50 = fadd double 1.000000e+00, %49, !dbg !933
  %51 = fdiv double %45, %50, !dbg !934
  store double %51, double* %13, align 8, !dbg !935
  %52 = load double, double* %13, align 8, !dbg !936
  %53 = load double, double* %11, align 8, !dbg !937
  %54 = fmul double %53, %52, !dbg !937
  store double %54, double* %11, align 8, !dbg !937
  %55 = load double, double* %11, align 8, !dbg !938
  %56 = load double, double* %12, align 8, !dbg !939
  %57 = fadd double %56, %55, !dbg !939
  store double %57, double* %12, align 8, !dbg !939
  %58 = load double, double* %11, align 8, !dbg !940
  %59 = load double, double* %12, align 8, !dbg !942
  %60 = fdiv double %58, %59, !dbg !943
  %61 = call double @fabs(double %60) #1, !dbg !944
  %62 = load double, double* %8, align 8, !dbg !945
  %63 = fcmp olt double %61, %62, !dbg !946
  br i1 %63, label %64, label %65, !dbg !947

; <label>:64:                                     ; preds = %19
  br label %69, !dbg !948

; <label>:65:                                     ; preds = %19
  br label %66, !dbg !950

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %14, align 4, !dbg !951
  %68 = add nsw i32 %67, 1, !dbg !951
  store i32 %68, i32* %14, align 4, !dbg !951
  br label %16, !dbg !953, !llvm.loop !954

; <label>:69:                                     ; preds = %64, %16
  %70 = load double, double* %7, align 8, !dbg !956
  %71 = load i32, i32* %6, align 4, !dbg !957
  %72 = sitofp i32 %71 to double, !dbg !957
  %73 = fmul double 2.000000e+00, %72, !dbg !958
  %74 = fadd double %73, 3.000000e+00, !dbg !959
  %75 = fdiv double %70, %74, !dbg !960
  %76 = load double, double* %12, align 8, !dbg !961
  %77 = fmul double %75, %76, !dbg !962
  %78 = load double*, double** %9, align 8, !dbg !963
  store double %77, double* %78, align 8, !dbg !964
  %79 = load i32, i32* %14, align 4, !dbg !965
  %80 = icmp eq i32 %79, 2000, !dbg !967
  br i1 %80, label %81, label %84, !dbg !968

; <label>:81:                                     ; preds = %69
  br label %82, !dbg !969, !llvm.loop !970

; <label>:82:                                     ; preds = %81
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 56, i32 11), !dbg !971
  store i32 11, i32* %5, align 4, !dbg !971
  br label %85, !dbg !971
                                                  ; No predecessors!
  br label %85, !dbg !974

; <label>:84:                                     ; preds = %69
  store i32 0, i32* %5, align 4, !dbg !976
  br label %85, !dbg !976

; <label>:85:                                     ; preds = %82, %84, %83
  %86 = load i32, i32* %5, align 4, !dbg !977
  ret i32 %86, !dbg !977
}

declare i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_il_scaled_array(i32, double, double*) #0 !dbg !978 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !981, metadata !61), !dbg !982
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !983, metadata !61), !dbg !984
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !985, metadata !61), !dbg !986
  %17 = load double, double* %6, align 8, !dbg !987
  %18 = fcmp oeq double %17, 0.000000e+00, !dbg !989
  br i1 %18, label %19, label %35, !dbg !990

; <label>:19:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !991, metadata !61), !dbg !993
  %20 = load double*, double** %7, align 8, !dbg !994
  %21 = getelementptr inbounds double, double* %20, i64 0, !dbg !994
  store double 1.000000e+00, double* %21, align 8, !dbg !995
  %22 = load i32, i32* %5, align 4, !dbg !996
  store i32 %22, i32* %8, align 4, !dbg !998
  br label %23, !dbg !999

; <label>:23:                                     ; preds = %31, %19
  %24 = load i32, i32* %8, align 4, !dbg !1000
  %25 = icmp sge i32 %24, 1, !dbg !1003
  br i1 %25, label %26, label %34, !dbg !1004

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %8, align 4, !dbg !1005
  %28 = sext i32 %27 to i64, !dbg !1007
  %29 = load double*, double** %7, align 8, !dbg !1007
  %30 = getelementptr inbounds double, double* %29, i64 %28, !dbg !1007
  store double 0.000000e+00, double* %30, align 8, !dbg !1008
  br label %31, !dbg !1009

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %8, align 4, !dbg !1010
  %33 = add nsw i32 %32, -1, !dbg !1010
  store i32 %33, i32* %8, align 4, !dbg !1010
  br label %23, !dbg !1012, !llvm.loop !1013

; <label>:34:                                     ; preds = %23
  store i32 0, i32* %4, align 4, !dbg !1015
  br label %93, !dbg !1015

; <label>:35:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1016, metadata !61), !dbg !1018
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1019, metadata !61), !dbg !1020
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1021, metadata !61), !dbg !1022
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1023, metadata !61), !dbg !1024
  %36 = load i32, i32* %5, align 4, !dbg !1025
  %37 = add nsw i32 %36, 1, !dbg !1026
  %38 = load double, double* %6, align 8, !dbg !1027
  %39 = call i32 @gsl_sf_bessel_il_scaled_e(i32 %37, double %38, %struct.gsl_sf_result_struct* %10), !dbg !1028
  store i32 %39, i32* %12, align 4, !dbg !1024
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1029, metadata !61), !dbg !1030
  %40 = load i32, i32* %5, align 4, !dbg !1031
  %41 = load double, double* %6, align 8, !dbg !1032
  %42 = call i32 @gsl_sf_bessel_il_scaled_e(i32 %40, double %41, %struct.gsl_sf_result_struct* %11), !dbg !1033
  store i32 %42, i32* %13, align 4, !dbg !1030
  call void @llvm.dbg.declare(metadata double* %14, metadata !1034, metadata !61), !dbg !1035
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1036
  %44 = load double, double* %43, align 8, !dbg !1036
  store double %44, double* %14, align 8, !dbg !1035
  call void @llvm.dbg.declare(metadata double* %15, metadata !1037, metadata !61), !dbg !1038
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1039
  %46 = load double, double* %45, align 8, !dbg !1039
  store double %46, double* %15, align 8, !dbg !1038
  call void @llvm.dbg.declare(metadata double* %16, metadata !1040, metadata !61), !dbg !1041
  %47 = load double, double* %15, align 8, !dbg !1042
  %48 = load i32, i32* %5, align 4, !dbg !1043
  %49 = sext i32 %48 to i64, !dbg !1044
  %50 = load double*, double** %7, align 8, !dbg !1044
  %51 = getelementptr inbounds double, double* %50, i64 %49, !dbg !1044
  store double %47, double* %51, align 8, !dbg !1045
  %52 = load i32, i32* %5, align 4, !dbg !1046
  store i32 %52, i32* %9, align 4, !dbg !1048
  br label %53, !dbg !1049

; <label>:53:                                     ; preds = %75, %35
  %54 = load i32, i32* %9, align 4, !dbg !1050
  %55 = icmp sge i32 %54, 1, !dbg !1053
  br i1 %55, label %56, label %78, !dbg !1054

; <label>:56:                                     ; preds = %53
  %57 = load double, double* %14, align 8, !dbg !1055
  %58 = load i32, i32* %9, align 4, !dbg !1057
  %59 = mul nsw i32 2, %58, !dbg !1058
  %60 = add nsw i32 %59, 1, !dbg !1059
  %61 = sitofp i32 %60 to double, !dbg !1060
  %62 = load double, double* %6, align 8, !dbg !1061
  %63 = fdiv double %61, %62, !dbg !1062
  %64 = load double, double* %15, align 8, !dbg !1063
  %65 = fmul double %63, %64, !dbg !1064
  %66 = fadd double %57, %65, !dbg !1065
  store double %66, double* %16, align 8, !dbg !1066
  %67 = load double, double* %15, align 8, !dbg !1067
  store double %67, double* %14, align 8, !dbg !1068
  %68 = load double, double* %16, align 8, !dbg !1069
  store double %68, double* %15, align 8, !dbg !1070
  %69 = load double, double* %16, align 8, !dbg !1071
  %70 = load i32, i32* %9, align 4, !dbg !1072
  %71 = sub nsw i32 %70, 1, !dbg !1073
  %72 = sext i32 %71 to i64, !dbg !1074
  %73 = load double*, double** %7, align 8, !dbg !1074
  %74 = getelementptr inbounds double, double* %73, i64 %72, !dbg !1074
  store double %69, double* %74, align 8, !dbg !1075
  br label %75, !dbg !1076

; <label>:75:                                     ; preds = %56
  %76 = load i32, i32* %9, align 4, !dbg !1077
  %77 = add nsw i32 %76, -1, !dbg !1077
  store i32 %77, i32* %9, align 4, !dbg !1077
  br label %53, !dbg !1079, !llvm.loop !1080

; <label>:78:                                     ; preds = %53
  %79 = load i32, i32* %12, align 4, !dbg !1082
  %80 = icmp ne i32 %79, 0, !dbg !1082
  br i1 %80, label %81, label %83, !dbg !1082

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %12, align 4, !dbg !1083
  br label %91, !dbg !1083

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %13, align 4, !dbg !1085
  %85 = icmp ne i32 %84, 0, !dbg !1085
  br i1 %85, label %86, label %88, !dbg !1085

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %13, align 4, !dbg !1087
  br label %89, !dbg !1087

; <label>:88:                                     ; preds = %83
  br label %89, !dbg !1089

; <label>:89:                                     ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ], !dbg !1091
  br label %91, !dbg !1091

; <label>:91:                                     ; preds = %89, %81
  %92 = phi i32 [ %82, %81 ], [ %90, %89 ], !dbg !1093
  store i32 %92, i32* %4, align 4, !dbg !1095
  br label %93, !dbg !1095

; <label>:93:                                     ; preds = %91, %34
  %94 = load i32, i32* %4, align 4, !dbg !1096
  ret i32 %94, !dbg !1096
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_i0_scaled(double) #0 !dbg !1097 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1100, metadata !61), !dbg !1101
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1102, metadata !61), !dbg !1103
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1104, metadata !61), !dbg !1103
  %6 = load double, double* %3, align 8, !dbg !1103
  %7 = call i32 @gsl_sf_bessel_i0_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1103
  store i32 %7, i32* %5, align 4, !dbg !1103
  %8 = load i32, i32* %5, align 4, !dbg !1105
  %9 = icmp ne i32 %8, 0, !dbg !1105
  br i1 %9, label %10, label %16, !dbg !1103

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1107, !llvm.loop !1110

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1112
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 312, i32 %12), !dbg !1112
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1112
  %14 = load double, double* %13, align 8, !dbg !1112
  store double %14, double* %2, align 8, !dbg !1112
  br label %19, !dbg !1112
                                                  ; No predecessors!
  br label %16, !dbg !1115

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1117
  %18 = load double, double* %17, align 8, !dbg !1117
  store double %18, double* %2, align 8, !dbg !1117
  br label %19, !dbg !1117

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1119
  ret double %20, !dbg !1119
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_i1_scaled(double) #0 !dbg !1120 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1121, metadata !61), !dbg !1122
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1123, metadata !61), !dbg !1124
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1125, metadata !61), !dbg !1124
  %6 = load double, double* %3, align 8, !dbg !1124
  %7 = call i32 @gsl_sf_bessel_i1_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1124
  store i32 %7, i32* %5, align 4, !dbg !1124
  %8 = load i32, i32* %5, align 4, !dbg !1126
  %9 = icmp ne i32 %8, 0, !dbg !1126
  br i1 %9, label %10, label %16, !dbg !1124

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1128, !llvm.loop !1131

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1133
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 317, i32 %12), !dbg !1133
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1133
  %14 = load double, double* %13, align 8, !dbg !1133
  store double %14, double* %2, align 8, !dbg !1133
  br label %19, !dbg !1133
                                                  ; No predecessors!
  br label %16, !dbg !1136

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1138
  %18 = load double, double* %17, align 8, !dbg !1138
  store double %18, double* %2, align 8, !dbg !1138
  br label %19, !dbg !1138

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1140
  ret double %20, !dbg !1140
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_i2_scaled(double) #0 !dbg !1141 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1142, metadata !61), !dbg !1143
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1144, metadata !61), !dbg !1145
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1146, metadata !61), !dbg !1145
  %6 = load double, double* %3, align 8, !dbg !1145
  %7 = call i32 @gsl_sf_bessel_i2_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1145
  store i32 %7, i32* %5, align 4, !dbg !1145
  %8 = load i32, i32* %5, align 4, !dbg !1147
  %9 = icmp ne i32 %8, 0, !dbg !1147
  br i1 %9, label %10, label %16, !dbg !1145

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1149, !llvm.loop !1152

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1154
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 322, i32 %12), !dbg !1154
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1154
  %14 = load double, double* %13, align 8, !dbg !1154
  store double %14, double* %2, align 8, !dbg !1154
  br label %19, !dbg !1154
                                                  ; No predecessors!
  br label %16, !dbg !1157

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1159
  %18 = load double, double* %17, align 8, !dbg !1159
  store double %18, double* %2, align 8, !dbg !1159
  br label %19, !dbg !1159

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1161
  ret double %20, !dbg !1161
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_il_scaled(i32, double) #0 !dbg !1162 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1165, metadata !61), !dbg !1166
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1167, metadata !61), !dbg !1168
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1169, metadata !61), !dbg !1170
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1171, metadata !61), !dbg !1170
  %8 = load i32, i32* %4, align 4, !dbg !1170
  %9 = load double, double* %5, align 8, !dbg !1170
  %10 = call i32 @gsl_sf_bessel_il_scaled_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1170
  store i32 %10, i32* %7, align 4, !dbg !1170
  %11 = load i32, i32* %7, align 4, !dbg !1172
  %12 = icmp ne i32 %11, 0, !dbg !1172
  br i1 %12, label %13, label %19, !dbg !1170

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1174, !llvm.loop !1177

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1179
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 327, i32 %15), !dbg !1179
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1179
  %17 = load double, double* %16, align 8, !dbg !1179
  store double %17, double* %3, align 8, !dbg !1179
  br label %22, !dbg !1179
                                                  ; No predecessors!
  br label %19, !dbg !1182

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1184
  %21 = load double, double* %20, align 8, !dbg !1184
  store double %21, double* %3, align 8, !dbg !1184
  br label %22, !dbg !1184

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1186
  ret double %23, !dbg !1186
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_i.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_i0_scaled_e", scope: !1, file: !1, line: 64, type: !48, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
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
!60 = !DILocalVariable(name: "x", arg: 1, scope: !47, file: !1, line: 64, type: !50)
!61 = !DIExpression()
!62 = !DILocation(line: 64, column: 44, scope: !47)
!63 = !DILocalVariable(name: "result", arg: 2, scope: !47, file: !1, line: 64, type: !52)
!64 = !DILocation(line: 64, column: 63, scope: !47)
!65 = !DILocalVariable(name: "ax", scope: !47, file: !1, line: 66, type: !51)
!66 = !DILocation(line: 66, column: 10, scope: !47)
!67 = !DILocation(line: 66, column: 20, scope: !47)
!68 = !DILocation(line: 66, column: 15, scope: !47)
!69 = !DILocation(line: 70, column: 6, scope: !70)
!70 = distinct !DILexicalBlock(scope: !47, file: !1, line: 70, column: 6)
!71 = !DILocation(line: 70, column: 8, scope: !70)
!72 = !DILocation(line: 70, column: 6, scope: !47)
!73 = !DILocation(line: 71, column: 5, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 70, column: 16)
!75 = !DILocation(line: 71, column: 13, scope: !74)
!76 = !DILocation(line: 71, column: 17, scope: !74)
!77 = !DILocation(line: 72, column: 5, scope: !74)
!78 = !DILocation(line: 72, column: 13, scope: !74)
!79 = !DILocation(line: 72, column: 17, scope: !74)
!80 = !DILocation(line: 73, column: 5, scope: !74)
!81 = !DILocation(line: 75, column: 11, scope: !82)
!82 = distinct !DILexicalBlock(scope: !70, file: !1, line: 75, column: 11)
!83 = !DILocation(line: 75, column: 14, scope: !82)
!84 = !DILocation(line: 75, column: 11, scope: !70)
!85 = !DILocalVariable(name: "eax", scope: !86, file: !1, line: 76, type: !50)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 75, column: 21)
!87 = !DILocation(line: 76, column: 18, scope: !86)
!88 = !DILocation(line: 76, column: 29, scope: !86)
!89 = !DILocation(line: 76, column: 28, scope: !86)
!90 = !DILocation(line: 76, column: 24, scope: !86)
!91 = !DILocalVariable(name: "y", scope: !86, file: !1, line: 77, type: !50)
!92 = !DILocation(line: 77, column: 18, scope: !86)
!93 = !DILocation(line: 77, column: 22, scope: !86)
!94 = !DILocation(line: 77, column: 25, scope: !86)
!95 = !DILocation(line: 77, column: 24, scope: !86)
!96 = !DILocalVariable(name: "c1", scope: !86, file: !1, line: 78, type: !50)
!97 = !DILocation(line: 78, column: 18, scope: !86)
!98 = !DILocalVariable(name: "c2", scope: !86, file: !1, line: 79, type: !50)
!99 = !DILocation(line: 79, column: 18, scope: !86)
!100 = !DILocalVariable(name: "c3", scope: !86, file: !1, line: 80, type: !50)
!101 = !DILocation(line: 80, column: 18, scope: !86)
!102 = !DILocalVariable(name: "c4", scope: !86, file: !1, line: 81, type: !50)
!103 = !DILocation(line: 81, column: 18, scope: !86)
!104 = !DILocalVariable(name: "c5", scope: !86, file: !1, line: 82, type: !50)
!105 = !DILocation(line: 82, column: 18, scope: !86)
!106 = !DILocalVariable(name: "sum", scope: !86, file: !1, line: 83, type: !50)
!107 = !DILocation(line: 83, column: 18, scope: !86)
!108 = !DILocation(line: 83, column: 30, scope: !86)
!109 = !DILocation(line: 83, column: 38, scope: !86)
!110 = !DILocation(line: 83, column: 46, scope: !86)
!111 = !DILocation(line: 83, column: 54, scope: !86)
!112 = !DILocation(line: 83, column: 62, scope: !86)
!113 = !DILocation(line: 83, column: 63, scope: !86)
!114 = !DILocation(line: 83, column: 60, scope: !86)
!115 = !DILocation(line: 83, column: 55, scope: !86)
!116 = !DILocation(line: 83, column: 52, scope: !86)
!117 = !DILocation(line: 83, column: 47, scope: !86)
!118 = !DILocation(line: 83, column: 44, scope: !86)
!119 = !DILocation(line: 83, column: 39, scope: !86)
!120 = !DILocation(line: 83, column: 36, scope: !86)
!121 = !DILocation(line: 83, column: 31, scope: !86)
!122 = !DILocation(line: 83, column: 28, scope: !86)
!123 = !DILocation(line: 84, column: 19, scope: !86)
!124 = !DILocation(line: 84, column: 25, scope: !86)
!125 = !DILocation(line: 84, column: 23, scope: !86)
!126 = !DILocation(line: 84, column: 5, scope: !86)
!127 = !DILocation(line: 84, column: 13, scope: !86)
!128 = !DILocation(line: 84, column: 17, scope: !86)
!129 = !DILocation(line: 85, column: 43, scope: !86)
!130 = !DILocation(line: 85, column: 51, scope: !86)
!131 = !DILocation(line: 85, column: 41, scope: !86)
!132 = !DILocation(line: 85, column: 5, scope: !86)
!133 = !DILocation(line: 85, column: 13, scope: !86)
!134 = !DILocation(line: 85, column: 17, scope: !86)
!135 = !DILocation(line: 86, column: 3, scope: !86)
!136 = !DILocation(line: 87, column: 11, scope: !137)
!137 = distinct !DILexicalBlock(scope: !82, file: !1, line: 87, column: 11)
!138 = !DILocation(line: 87, column: 14, scope: !137)
!139 = !DILocation(line: 87, column: 11, scope: !82)
!140 = !DILocation(line: 88, column: 35, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 87, column: 42)
!142 = !DILocation(line: 88, column: 34, scope: !141)
!143 = !DILocation(line: 88, column: 26, scope: !141)
!144 = !DILocation(line: 88, column: 24, scope: !141)
!145 = !DILocation(line: 88, column: 45, scope: !141)
!146 = !DILocation(line: 88, column: 44, scope: !141)
!147 = !DILocation(line: 88, column: 39, scope: !141)
!148 = !DILocation(line: 88, column: 5, scope: !141)
!149 = !DILocation(line: 88, column: 13, scope: !141)
!150 = !DILocation(line: 88, column: 17, scope: !141)
!151 = !DILocation(line: 89, column: 43, scope: !141)
!152 = !DILocation(line: 89, column: 51, scope: !141)
!153 = !DILocation(line: 89, column: 41, scope: !141)
!154 = !DILocation(line: 89, column: 5, scope: !141)
!155 = !DILocation(line: 89, column: 13, scope: !141)
!156 = !DILocation(line: 89, column: 17, scope: !141)
!157 = !DILocation(line: 90, column: 3, scope: !141)
!158 = !DILocation(line: 92, column: 28, scope: !159)
!159 = distinct !DILexicalBlock(scope: !137, file: !1, line: 91, column: 8)
!160 = !DILocation(line: 92, column: 27, scope: !159)
!161 = !DILocation(line: 92, column: 22, scope: !159)
!162 = !DILocation(line: 92, column: 5, scope: !159)
!163 = !DILocation(line: 92, column: 13, scope: !159)
!164 = !DILocation(line: 92, column: 17, scope: !159)
!165 = !DILocation(line: 93, column: 43, scope: !159)
!166 = !DILocation(line: 93, column: 51, scope: !159)
!167 = !DILocation(line: 93, column: 41, scope: !159)
!168 = !DILocation(line: 93, column: 5, scope: !159)
!169 = !DILocation(line: 93, column: 13, scope: !159)
!170 = !DILocation(line: 93, column: 17, scope: !159)
!171 = !DILocation(line: 95, column: 3, scope: !47)
!172 = !DILocation(line: 96, column: 1, scope: !47)
!173 = distinct !DISubprogram(name: "gsl_sf_bessel_i1_scaled_e", scope: !1, file: !1, line: 99, type: !48, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!174 = !DILocalVariable(name: "x", arg: 1, scope: !173, file: !1, line: 99, type: !50)
!175 = !DILocation(line: 99, column: 44, scope: !173)
!176 = !DILocalVariable(name: "result", arg: 2, scope: !173, file: !1, line: 99, type: !52)
!177 = !DILocation(line: 99, column: 63, scope: !173)
!178 = !DILocalVariable(name: "ax", scope: !173, file: !1, line: 101, type: !51)
!179 = !DILocation(line: 101, column: 10, scope: !173)
!180 = !DILocation(line: 101, column: 20, scope: !173)
!181 = !DILocation(line: 101, column: 15, scope: !173)
!182 = !DILocation(line: 105, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !173, file: !1, line: 105, column: 6)
!184 = !DILocation(line: 105, column: 8, scope: !183)
!185 = !DILocation(line: 105, column: 6, scope: !173)
!186 = !DILocation(line: 106, column: 5, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 105, column: 16)
!188 = !DILocation(line: 106, column: 13, scope: !187)
!189 = !DILocation(line: 106, column: 17, scope: !187)
!190 = !DILocation(line: 107, column: 5, scope: !187)
!191 = !DILocation(line: 107, column: 13, scope: !187)
!192 = !DILocation(line: 107, column: 17, scope: !187)
!193 = !DILocation(line: 108, column: 5, scope: !187)
!194 = !DILocation(line: 110, column: 11, scope: !195)
!195 = distinct !DILexicalBlock(scope: !183, file: !1, line: 110, column: 11)
!196 = !DILocation(line: 110, column: 14, scope: !195)
!197 = !DILocation(line: 110, column: 11, scope: !183)
!198 = !DILocation(line: 111, column: 5, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 110, column: 33)
!200 = distinct !{!200, !198}
!201 = !DILocation(line: 111, column: 5, scope: !202)
!202 = !DILexicalBlockFile(scope: !203, file: !1, discriminator: 1)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 111, column: 5)
!204 = distinct !{!204, !205}
!205 = !DILocation(line: 111, column: 5, scope: !203)
!206 = !DILocation(line: 111, column: 5, scope: !207)
!207 = !DILexicalBlockFile(scope: !208, file: !1, discriminator: 2)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 111, column: 5)
!209 = !DILocation(line: 111, column: 5, scope: !210)
!210 = !DILexicalBlockFile(scope: !203, file: !1, discriminator: 3)
!211 = !DILocation(line: 112, column: 3, scope: !199)
!212 = !DILocation(line: 113, column: 11, scope: !213)
!213 = distinct !DILexicalBlock(scope: !195, file: !1, line: 113, column: 11)
!214 = !DILocation(line: 113, column: 14, scope: !213)
!215 = !DILocation(line: 113, column: 11, scope: !195)
!216 = !DILocalVariable(name: "eax", scope: !217, file: !1, line: 114, type: !50)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 113, column: 22)
!218 = !DILocation(line: 114, column: 18, scope: !217)
!219 = !DILocation(line: 114, column: 29, scope: !217)
!220 = !DILocation(line: 114, column: 28, scope: !217)
!221 = !DILocation(line: 114, column: 24, scope: !217)
!222 = !DILocalVariable(name: "y", scope: !217, file: !1, line: 115, type: !50)
!223 = !DILocation(line: 115, column: 18, scope: !217)
!224 = !DILocation(line: 115, column: 23, scope: !217)
!225 = !DILocation(line: 115, column: 25, scope: !217)
!226 = !DILocation(line: 115, column: 24, scope: !217)
!227 = !DILocalVariable(name: "c1", scope: !217, file: !1, line: 116, type: !50)
!228 = !DILocation(line: 116, column: 18, scope: !217)
!229 = !DILocalVariable(name: "c2", scope: !217, file: !1, line: 117, type: !50)
!230 = !DILocation(line: 117, column: 18, scope: !217)
!231 = !DILocalVariable(name: "c3", scope: !217, file: !1, line: 118, type: !50)
!232 = !DILocation(line: 118, column: 18, scope: !217)
!233 = !DILocalVariable(name: "c4", scope: !217, file: !1, line: 119, type: !50)
!234 = !DILocation(line: 119, column: 18, scope: !217)
!235 = !DILocalVariable(name: "c5", scope: !217, file: !1, line: 120, type: !50)
!236 = !DILocation(line: 120, column: 18, scope: !217)
!237 = !DILocalVariable(name: "sum", scope: !217, file: !1, line: 121, type: !50)
!238 = !DILocation(line: 121, column: 18, scope: !217)
!239 = !DILocation(line: 121, column: 30, scope: !217)
!240 = !DILocation(line: 121, column: 38, scope: !217)
!241 = !DILocation(line: 121, column: 46, scope: !217)
!242 = !DILocation(line: 121, column: 54, scope: !217)
!243 = !DILocation(line: 121, column: 62, scope: !217)
!244 = !DILocation(line: 121, column: 63, scope: !217)
!245 = !DILocation(line: 121, column: 60, scope: !217)
!246 = !DILocation(line: 121, column: 55, scope: !217)
!247 = !DILocation(line: 121, column: 52, scope: !217)
!248 = !DILocation(line: 121, column: 47, scope: !217)
!249 = !DILocation(line: 121, column: 44, scope: !217)
!250 = !DILocation(line: 121, column: 39, scope: !217)
!251 = !DILocation(line: 121, column: 36, scope: !217)
!252 = !DILocation(line: 121, column: 31, scope: !217)
!253 = !DILocation(line: 121, column: 28, scope: !217)
!254 = !DILocation(line: 122, column: 19, scope: !217)
!255 = !DILocation(line: 122, column: 25, scope: !217)
!256 = !DILocation(line: 122, column: 23, scope: !217)
!257 = !DILocation(line: 122, column: 26, scope: !217)
!258 = !DILocation(line: 122, column: 33, scope: !217)
!259 = !DILocation(line: 122, column: 31, scope: !217)
!260 = !DILocation(line: 122, column: 5, scope: !217)
!261 = !DILocation(line: 122, column: 13, scope: !217)
!262 = !DILocation(line: 122, column: 17, scope: !217)
!263 = !DILocation(line: 123, column: 48, scope: !217)
!264 = !DILocation(line: 123, column: 56, scope: !217)
!265 = !DILocation(line: 123, column: 43, scope: !217)
!266 = !DILocation(line: 123, column: 41, scope: !217)
!267 = !DILocation(line: 123, column: 5, scope: !217)
!268 = !DILocation(line: 123, column: 13, scope: !217)
!269 = !DILocation(line: 123, column: 17, scope: !217)
!270 = !DILocation(line: 124, column: 5, scope: !217)
!271 = !DILocalVariable(name: "ex", scope: !272, file: !1, line: 127, type: !51)
!272 = distinct !DILexicalBlock(scope: !213, file: !1, line: 126, column: 8)
!273 = !DILocation(line: 127, column: 12, scope: !272)
!274 = !DILocation(line: 127, column: 26, scope: !272)
!275 = !DILocation(line: 127, column: 25, scope: !272)
!276 = !DILocation(line: 127, column: 17, scope: !272)
!277 = !DILocation(line: 128, column: 26, scope: !272)
!278 = !DILocation(line: 128, column: 34, scope: !272)
!279 = !DILocation(line: 128, column: 33, scope: !272)
!280 = !DILocation(line: 128, column: 28, scope: !272)
!281 = !DILocation(line: 128, column: 45, scope: !272)
!282 = !DILocation(line: 128, column: 44, scope: !272)
!283 = !DILocation(line: 128, column: 38, scope: !272)
!284 = !DILocation(line: 128, column: 23, scope: !272)
!285 = !DILocation(line: 128, column: 53, scope: !272)
!286 = !DILocation(line: 128, column: 56, scope: !272)
!287 = !DILocation(line: 128, column: 55, scope: !272)
!288 = !DILocation(line: 128, column: 50, scope: !272)
!289 = !DILocation(line: 128, column: 5, scope: !272)
!290 = !DILocation(line: 128, column: 13, scope: !272)
!291 = !DILocation(line: 128, column: 17, scope: !272)
!292 = !DILocation(line: 129, column: 48, scope: !272)
!293 = !DILocation(line: 129, column: 56, scope: !272)
!294 = !DILocation(line: 129, column: 43, scope: !272)
!295 = !DILocation(line: 129, column: 41, scope: !272)
!296 = !DILocation(line: 129, column: 5, scope: !272)
!297 = !DILocation(line: 129, column: 13, scope: !272)
!298 = !DILocation(line: 129, column: 17, scope: !272)
!299 = !DILocation(line: 130, column: 8, scope: !300)
!300 = distinct !DILexicalBlock(scope: !272, file: !1, line: 130, column: 8)
!301 = !DILocation(line: 130, column: 10, scope: !300)
!302 = !DILocation(line: 130, column: 8, scope: !272)
!303 = !DILocation(line: 130, column: 32, scope: !304)
!304 = !DILexicalBlockFile(scope: !300, file: !1, discriminator: 1)
!305 = !DILocation(line: 130, column: 40, scope: !304)
!306 = !DILocation(line: 130, column: 31, scope: !304)
!307 = !DILocation(line: 130, column: 17, scope: !304)
!308 = !DILocation(line: 130, column: 25, scope: !304)
!309 = !DILocation(line: 130, column: 29, scope: !304)
!310 = !DILocation(line: 131, column: 5, scope: !272)
!311 = !DILocation(line: 133, column: 1, scope: !173)
!312 = distinct !DISubprogram(name: "gsl_sf_bessel_i2_scaled_e", scope: !1, file: !1, line: 136, type: !48, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!313 = !DILocalVariable(name: "x", arg: 1, scope: !312, file: !1, line: 136, type: !50)
!314 = !DILocation(line: 136, column: 44, scope: !312)
!315 = !DILocalVariable(name: "result", arg: 2, scope: !312, file: !1, line: 136, type: !52)
!316 = !DILocation(line: 136, column: 63, scope: !312)
!317 = !DILocalVariable(name: "ax", scope: !312, file: !1, line: 138, type: !51)
!318 = !DILocation(line: 138, column: 10, scope: !312)
!319 = !DILocation(line: 138, column: 20, scope: !312)
!320 = !DILocation(line: 138, column: 15, scope: !312)
!321 = !DILocation(line: 142, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !312, file: !1, line: 142, column: 6)
!323 = !DILocation(line: 142, column: 8, scope: !322)
!324 = !DILocation(line: 142, column: 6, scope: !312)
!325 = !DILocation(line: 143, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !1, line: 142, column: 16)
!327 = !DILocation(line: 143, column: 13, scope: !326)
!328 = !DILocation(line: 143, column: 17, scope: !326)
!329 = !DILocation(line: 144, column: 5, scope: !326)
!330 = !DILocation(line: 144, column: 13, scope: !326)
!331 = !DILocation(line: 144, column: 17, scope: !326)
!332 = !DILocation(line: 145, column: 5, scope: !326)
!333 = !DILocation(line: 147, column: 11, scope: !334)
!334 = distinct !DILexicalBlock(scope: !322, file: !1, line: 147, column: 11)
!335 = !DILocation(line: 147, column: 14, scope: !334)
!336 = !DILocation(line: 147, column: 11, scope: !322)
!337 = !DILocation(line: 148, column: 5, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !1, line: 147, column: 38)
!339 = distinct !{!339, !337}
!340 = !DILocation(line: 148, column: 5, scope: !341)
!341 = !DILexicalBlockFile(scope: !342, file: !1, discriminator: 1)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 148, column: 5)
!343 = distinct !{!343, !344}
!344 = !DILocation(line: 148, column: 5, scope: !342)
!345 = !DILocation(line: 148, column: 5, scope: !346)
!346 = !DILexicalBlockFile(scope: !347, file: !1, discriminator: 2)
!347 = distinct !DILexicalBlock(scope: !342, file: !1, line: 148, column: 5)
!348 = !DILocation(line: 148, column: 5, scope: !349)
!349 = !DILexicalBlockFile(scope: !342, file: !1, discriminator: 3)
!350 = !DILocation(line: 149, column: 3, scope: !338)
!351 = !DILocation(line: 150, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !334, file: !1, line: 150, column: 11)
!353 = !DILocation(line: 150, column: 14, scope: !352)
!354 = !DILocation(line: 150, column: 11, scope: !334)
!355 = !DILocalVariable(name: "y", scope: !356, file: !1, line: 151, type: !50)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 150, column: 22)
!357 = !DILocation(line: 151, column: 18, scope: !356)
!358 = !DILocation(line: 151, column: 22, scope: !356)
!359 = !DILocation(line: 151, column: 24, scope: !356)
!360 = !DILocation(line: 151, column: 23, scope: !356)
!361 = !DILocalVariable(name: "c1", scope: !356, file: !1, line: 152, type: !50)
!362 = !DILocation(line: 152, column: 18, scope: !356)
!363 = !DILocalVariable(name: "c2", scope: !356, file: !1, line: 153, type: !50)
!364 = !DILocation(line: 153, column: 18, scope: !356)
!365 = !DILocalVariable(name: "c3", scope: !356, file: !1, line: 154, type: !50)
!366 = !DILocation(line: 154, column: 18, scope: !356)
!367 = !DILocalVariable(name: "c4", scope: !356, file: !1, line: 155, type: !50)
!368 = !DILocation(line: 155, column: 18, scope: !356)
!369 = !DILocalVariable(name: "c5", scope: !356, file: !1, line: 156, type: !50)
!370 = !DILocation(line: 156, column: 18, scope: !356)
!371 = !DILocalVariable(name: "sum", scope: !356, file: !1, line: 157, type: !50)
!372 = !DILocation(line: 157, column: 18, scope: !356)
!373 = !DILocation(line: 157, column: 30, scope: !356)
!374 = !DILocation(line: 157, column: 38, scope: !356)
!375 = !DILocation(line: 157, column: 46, scope: !356)
!376 = !DILocation(line: 157, column: 54, scope: !356)
!377 = !DILocation(line: 157, column: 62, scope: !356)
!378 = !DILocation(line: 157, column: 63, scope: !356)
!379 = !DILocation(line: 157, column: 60, scope: !356)
!380 = !DILocation(line: 157, column: 55, scope: !356)
!381 = !DILocation(line: 157, column: 52, scope: !356)
!382 = !DILocation(line: 157, column: 47, scope: !356)
!383 = !DILocation(line: 157, column: 44, scope: !356)
!384 = !DILocation(line: 157, column: 39, scope: !356)
!385 = !DILocation(line: 157, column: 36, scope: !356)
!386 = !DILocation(line: 157, column: 31, scope: !356)
!387 = !DILocation(line: 157, column: 28, scope: !356)
!388 = !DILocalVariable(name: "pre", scope: !356, file: !1, line: 158, type: !50)
!389 = !DILocation(line: 158, column: 18, scope: !356)
!390 = !DILocation(line: 158, column: 29, scope: !356)
!391 = !DILocation(line: 158, column: 28, scope: !356)
!392 = !DILocation(line: 158, column: 24, scope: !356)
!393 = !DILocation(line: 158, column: 35, scope: !356)
!394 = !DILocation(line: 158, column: 33, scope: !356)
!395 = !DILocation(line: 158, column: 37, scope: !356)
!396 = !DILocation(line: 158, column: 36, scope: !356)
!397 = !DILocation(line: 158, column: 38, scope: !356)
!398 = !DILocation(line: 159, column: 19, scope: !356)
!399 = !DILocation(line: 159, column: 25, scope: !356)
!400 = !DILocation(line: 159, column: 23, scope: !356)
!401 = !DILocation(line: 159, column: 5, scope: !356)
!402 = !DILocation(line: 159, column: 13, scope: !356)
!403 = !DILocation(line: 159, column: 17, scope: !356)
!404 = !DILocation(line: 160, column: 48, scope: !356)
!405 = !DILocation(line: 160, column: 56, scope: !356)
!406 = !DILocation(line: 160, column: 43, scope: !356)
!407 = !DILocation(line: 160, column: 41, scope: !356)
!408 = !DILocation(line: 160, column: 5, scope: !356)
!409 = !DILocation(line: 160, column: 13, scope: !356)
!410 = !DILocation(line: 160, column: 17, scope: !356)
!411 = !DILocation(line: 161, column: 5, scope: !356)
!412 = !DILocalVariable(name: "ex", scope: !413, file: !1, line: 164, type: !51)
!413 = distinct !DILexicalBlock(scope: !352, file: !1, line: 163, column: 8)
!414 = !DILocation(line: 164, column: 12, scope: !413)
!415 = !DILocation(line: 164, column: 26, scope: !413)
!416 = !DILocation(line: 164, column: 25, scope: !413)
!417 = !DILocation(line: 164, column: 17, scope: !413)
!418 = !DILocalVariable(name: "x2", scope: !413, file: !1, line: 165, type: !51)
!419 = !DILocation(line: 165, column: 12, scope: !413)
!420 = !DILocation(line: 165, column: 17, scope: !413)
!421 = !DILocation(line: 165, column: 19, scope: !413)
!422 = !DILocation(line: 165, column: 18, scope: !413)
!423 = !DILocation(line: 166, column: 31, scope: !413)
!424 = !DILocation(line: 166, column: 30, scope: !413)
!425 = !DILocation(line: 166, column: 40, scope: !413)
!426 = !DILocation(line: 166, column: 39, scope: !413)
!427 = !DILocation(line: 166, column: 34, scope: !413)
!428 = !DILocation(line: 166, column: 50, scope: !413)
!429 = !DILocation(line: 166, column: 49, scope: !413)
!430 = !DILocation(line: 166, column: 58, scope: !413)
!431 = !DILocation(line: 166, column: 57, scope: !413)
!432 = !DILocation(line: 166, column: 52, scope: !413)
!433 = !DILocation(line: 166, column: 44, scope: !413)
!434 = !DILocation(line: 166, column: 23, scope: !413)
!435 = !DILocation(line: 166, column: 64, scope: !413)
!436 = !DILocation(line: 166, column: 67, scope: !413)
!437 = !DILocation(line: 166, column: 66, scope: !413)
!438 = !DILocation(line: 166, column: 70, scope: !413)
!439 = !DILocation(line: 166, column: 69, scope: !413)
!440 = !DILocation(line: 166, column: 62, scope: !413)
!441 = !DILocation(line: 166, column: 5, scope: !413)
!442 = !DILocation(line: 166, column: 13, scope: !413)
!443 = !DILocation(line: 166, column: 17, scope: !413)
!444 = !DILocation(line: 167, column: 48, scope: !413)
!445 = !DILocation(line: 167, column: 56, scope: !413)
!446 = !DILocation(line: 167, column: 43, scope: !413)
!447 = !DILocation(line: 167, column: 41, scope: !413)
!448 = !DILocation(line: 167, column: 5, scope: !413)
!449 = !DILocation(line: 167, column: 13, scope: !413)
!450 = !DILocation(line: 167, column: 17, scope: !413)
!451 = !DILocation(line: 168, column: 5, scope: !413)
!452 = !DILocation(line: 170, column: 1, scope: !312)
!453 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled_e", scope: !1, file: !1, line: 173, type: !454, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!454 = !DISubroutineType(types: !455)
!455 = !{!42, !456, !51, !52}
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!457 = !DILocalVariable(name: "l", arg: 1, scope: !453, file: !1, line: 173, type: !456)
!458 = !DILocation(line: 173, column: 41, scope: !453)
!459 = !DILocalVariable(name: "x", arg: 2, scope: !453, file: !1, line: 173, type: !51)
!460 = !DILocation(line: 173, column: 51, scope: !453)
!461 = !DILocalVariable(name: "result", arg: 3, scope: !453, file: !1, line: 173, type: !52)
!462 = !DILocation(line: 173, column: 70, scope: !453)
!463 = !DILocalVariable(name: "sgn", scope: !453, file: !1, line: 175, type: !51)
!464 = !DILocation(line: 175, column: 10, scope: !453)
!465 = !DILocalVariable(name: "ax", scope: !453, file: !1, line: 176, type: !51)
!466 = !DILocation(line: 176, column: 10, scope: !453)
!467 = !DILocation(line: 176, column: 21, scope: !453)
!468 = !DILocation(line: 176, column: 16, scope: !453)
!469 = !DILocation(line: 178, column: 6, scope: !470)
!470 = distinct !DILexicalBlock(scope: !453, file: !1, line: 178, column: 6)
!471 = !DILocation(line: 178, column: 8, scope: !470)
!472 = !DILocation(line: 178, column: 6, scope: !453)
!473 = !DILocation(line: 180, column: 13, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !1, line: 178, column: 15)
!475 = !DILocation(line: 180, column: 9, scope: !474)
!476 = !DILocation(line: 181, column: 10, scope: !474)
!477 = !DILocation(line: 181, column: 9, scope: !474)
!478 = !DILocation(line: 181, column: 7, scope: !474)
!479 = !DILocation(line: 182, column: 3, scope: !474)
!480 = !DILocation(line: 184, column: 6, scope: !481)
!481 = distinct !DILexicalBlock(scope: !453, file: !1, line: 184, column: 6)
!482 = !DILocation(line: 184, column: 8, scope: !481)
!483 = !DILocation(line: 184, column: 6, scope: !453)
!484 = !DILocation(line: 185, column: 5, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !1, line: 184, column: 13)
!486 = distinct !{!486, !484}
!487 = !DILocation(line: 185, column: 5, scope: !488)
!488 = !DILexicalBlockFile(scope: !489, file: !1, discriminator: 1)
!489 = distinct !DILexicalBlock(scope: !485, file: !1, line: 185, column: 5)
!490 = distinct !{!490, !491}
!491 = !DILocation(line: 185, column: 5, scope: !489)
!492 = !DILocation(line: 185, column: 5, scope: !493)
!493 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 2)
!494 = distinct !DILexicalBlock(scope: !489, file: !1, line: 185, column: 5)
!495 = !DILocation(line: 185, column: 5, scope: !496)
!496 = !DILexicalBlockFile(scope: !489, file: !1, discriminator: 3)
!497 = !DILocation(line: 186, column: 3, scope: !485)
!498 = !DILocation(line: 187, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !481, file: !1, line: 187, column: 11)
!500 = !DILocation(line: 187, column: 13, scope: !499)
!501 = !DILocation(line: 187, column: 11, scope: !481)
!502 = !DILocation(line: 188, column: 21, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !1, line: 187, column: 21)
!504 = !DILocation(line: 188, column: 23, scope: !503)
!505 = !DILocation(line: 188, column: 5, scope: !503)
!506 = !DILocation(line: 188, column: 13, scope: !503)
!507 = !DILocation(line: 188, column: 17, scope: !503)
!508 = !DILocation(line: 189, column: 5, scope: !503)
!509 = !DILocation(line: 189, column: 13, scope: !503)
!510 = !DILocation(line: 189, column: 17, scope: !503)
!511 = !DILocation(line: 190, column: 5, scope: !503)
!512 = !DILocation(line: 192, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !499, file: !1, line: 192, column: 11)
!514 = !DILocation(line: 192, column: 13, scope: !513)
!515 = !DILocation(line: 192, column: 11, scope: !499)
!516 = !DILocalVariable(name: "il", scope: !517, file: !1, line: 193, type: !53)
!517 = distinct !DILexicalBlock(scope: !513, file: !1, line: 192, column: 19)
!518 = !DILocation(line: 193, column: 19, scope: !517)
!519 = !DILocalVariable(name: "stat_il", scope: !517, file: !1, line: 194, type: !42)
!520 = !DILocation(line: 194, column: 9, scope: !517)
!521 = !DILocation(line: 194, column: 45, scope: !517)
!522 = !DILocation(line: 194, column: 19, scope: !517)
!523 = !DILocation(line: 195, column: 19, scope: !517)
!524 = !DILocation(line: 195, column: 28, scope: !517)
!525 = !DILocation(line: 195, column: 23, scope: !517)
!526 = !DILocation(line: 195, column: 5, scope: !517)
!527 = !DILocation(line: 195, column: 13, scope: !517)
!528 = !DILocation(line: 195, column: 17, scope: !517)
!529 = !DILocation(line: 196, column: 22, scope: !517)
!530 = !DILocation(line: 196, column: 5, scope: !517)
!531 = !DILocation(line: 196, column: 13, scope: !517)
!532 = !DILocation(line: 196, column: 17, scope: !517)
!533 = !DILocation(line: 197, column: 12, scope: !517)
!534 = !DILocation(line: 197, column: 5, scope: !517)
!535 = !DILocation(line: 199, column: 11, scope: !536)
!536 = distinct !DILexicalBlock(scope: !513, file: !1, line: 199, column: 11)
!537 = !DILocation(line: 199, column: 13, scope: !536)
!538 = !DILocation(line: 199, column: 11, scope: !513)
!539 = !DILocalVariable(name: "il", scope: !540, file: !1, line: 200, type: !53)
!540 = distinct !DILexicalBlock(scope: !536, file: !1, line: 199, column: 19)
!541 = !DILocation(line: 200, column: 19, scope: !540)
!542 = !DILocalVariable(name: "stat_il", scope: !540, file: !1, line: 201, type: !42)
!543 = !DILocation(line: 201, column: 9, scope: !540)
!544 = !DILocation(line: 201, column: 45, scope: !540)
!545 = !DILocation(line: 201, column: 19, scope: !540)
!546 = !DILocation(line: 202, column: 19, scope: !540)
!547 = !DILocation(line: 202, column: 28, scope: !540)
!548 = !DILocation(line: 202, column: 23, scope: !540)
!549 = !DILocation(line: 202, column: 5, scope: !540)
!550 = !DILocation(line: 202, column: 13, scope: !540)
!551 = !DILocation(line: 202, column: 17, scope: !540)
!552 = !DILocation(line: 203, column: 22, scope: !540)
!553 = !DILocation(line: 203, column: 5, scope: !540)
!554 = !DILocation(line: 203, column: 13, scope: !540)
!555 = !DILocation(line: 203, column: 17, scope: !540)
!556 = !DILocation(line: 204, column: 12, scope: !540)
!557 = !DILocation(line: 204, column: 5, scope: !540)
!558 = !DILocation(line: 206, column: 11, scope: !559)
!559 = distinct !DILexicalBlock(scope: !536, file: !1, line: 206, column: 11)
!560 = !DILocation(line: 206, column: 13, scope: !559)
!561 = !DILocation(line: 206, column: 11, scope: !536)
!562 = !DILocalVariable(name: "il", scope: !563, file: !1, line: 207, type: !53)
!563 = distinct !DILexicalBlock(scope: !559, file: !1, line: 206, column: 19)
!564 = !DILocation(line: 207, column: 19, scope: !563)
!565 = !DILocalVariable(name: "stat_il", scope: !563, file: !1, line: 208, type: !42)
!566 = !DILocation(line: 208, column: 9, scope: !563)
!567 = !DILocation(line: 208, column: 45, scope: !563)
!568 = !DILocation(line: 208, column: 19, scope: !563)
!569 = !DILocation(line: 209, column: 19, scope: !563)
!570 = !DILocation(line: 209, column: 28, scope: !563)
!571 = !DILocation(line: 209, column: 23, scope: !563)
!572 = !DILocation(line: 209, column: 5, scope: !563)
!573 = !DILocation(line: 209, column: 13, scope: !563)
!574 = !DILocation(line: 209, column: 17, scope: !563)
!575 = !DILocation(line: 210, column: 22, scope: !563)
!576 = !DILocation(line: 210, column: 5, scope: !563)
!577 = !DILocation(line: 210, column: 13, scope: !563)
!578 = !DILocation(line: 210, column: 17, scope: !563)
!579 = !DILocation(line: 211, column: 12, scope: !563)
!580 = !DILocation(line: 211, column: 5, scope: !563)
!581 = !DILocation(line: 213, column: 11, scope: !582)
!582 = distinct !DILexicalBlock(scope: !559, file: !1, line: 213, column: 11)
!583 = !DILocation(line: 213, column: 13, scope: !582)
!584 = !DILocation(line: 213, column: 12, scope: !582)
!585 = !DILocation(line: 213, column: 23, scope: !582)
!586 = !DILocation(line: 213, column: 24, scope: !582)
!587 = !DILocation(line: 213, column: 21, scope: !582)
!588 = !DILocation(line: 213, column: 29, scope: !582)
!589 = !DILocation(line: 213, column: 15, scope: !582)
!590 = !DILocation(line: 213, column: 11, scope: !559)
!591 = !DILocalVariable(name: "b", scope: !592, file: !1, line: 214, type: !53)
!592 = distinct !DILexicalBlock(scope: !582, file: !1, line: 213, column: 35)
!593 = !DILocation(line: 214, column: 19, scope: !592)
!594 = !DILocalVariable(name: "stat", scope: !592, file: !1, line: 215, type: !42)
!595 = !DILocation(line: 215, column: 9, scope: !592)
!596 = !DILocation(line: 215, column: 42, scope: !592)
!597 = !DILocation(line: 215, column: 43, scope: !592)
!598 = !DILocation(line: 215, column: 49, scope: !592)
!599 = !DILocation(line: 215, column: 16, scope: !592)
!600 = !DILocalVariable(name: "pre", scope: !592, file: !1, line: 216, type: !51)
!601 = !DILocation(line: 216, column: 12, scope: !592)
!602 = !DILocation(line: 216, column: 25, scope: !592)
!603 = !DILocation(line: 216, column: 24, scope: !592)
!604 = !DILocation(line: 216, column: 20, scope: !592)
!605 = !DILocation(line: 216, column: 47, scope: !592)
!606 = !DILocation(line: 216, column: 46, scope: !592)
!607 = !DILocation(line: 216, column: 31, scope: !608)
!608 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 1)
!609 = !DILocation(line: 216, column: 29, scope: !592)
!610 = !DILocation(line: 217, column: 20, scope: !592)
!611 = !DILocation(line: 217, column: 26, scope: !592)
!612 = !DILocation(line: 217, column: 24, scope: !592)
!613 = !DILocation(line: 217, column: 34, scope: !592)
!614 = !DILocation(line: 217, column: 30, scope: !592)
!615 = !DILocation(line: 217, column: 5, scope: !592)
!616 = !DILocation(line: 217, column: 13, scope: !592)
!617 = !DILocation(line: 217, column: 18, scope: !592)
!618 = !DILocation(line: 218, column: 20, scope: !592)
!619 = !DILocation(line: 218, column: 28, scope: !592)
!620 = !DILocation(line: 218, column: 24, scope: !592)
!621 = !DILocation(line: 218, column: 5, scope: !592)
!622 = !DILocation(line: 218, column: 13, scope: !592)
!623 = !DILocation(line: 218, column: 18, scope: !592)
!624 = !DILocation(line: 219, column: 49, scope: !592)
!625 = !DILocation(line: 219, column: 57, scope: !592)
!626 = !DILocation(line: 219, column: 44, scope: !592)
!627 = !DILocation(line: 219, column: 42, scope: !592)
!628 = !DILocation(line: 219, column: 5, scope: !592)
!629 = !DILocation(line: 219, column: 13, scope: !592)
!630 = !DILocation(line: 219, column: 17, scope: !592)
!631 = !DILocation(line: 220, column: 12, scope: !592)
!632 = !DILocation(line: 220, column: 5, scope: !592)
!633 = !DILocation(line: 222, column: 11, scope: !634)
!634 = distinct !DILexicalBlock(scope: !582, file: !1, line: 222, column: 11)
!635 = !DILocation(line: 222, column: 13, scope: !634)
!636 = !DILocation(line: 222, column: 11, scope: !582)
!637 = !DILocalVariable(name: "i0_scaled", scope: !638, file: !1, line: 223, type: !53)
!638 = distinct !DILexicalBlock(scope: !634, file: !1, line: 222, column: 20)
!639 = !DILocation(line: 223, column: 19, scope: !638)
!640 = !DILocalVariable(name: "stat_i0", scope: !638, file: !1, line: 224, type: !42)
!641 = !DILocation(line: 224, column: 9, scope: !638)
!642 = !DILocation(line: 224, column: 46, scope: !638)
!643 = !DILocation(line: 224, column: 20, scope: !638)
!644 = !DILocalVariable(name: "rat", scope: !638, file: !1, line: 225, type: !51)
!645 = !DILocation(line: 225, column: 12, scope: !638)
!646 = !DILocalVariable(name: "stat_CF1", scope: !638, file: !1, line: 226, type: !42)
!647 = !DILocation(line: 226, column: 9, scope: !638)
!648 = !DILocation(line: 226, column: 34, scope: !638)
!649 = !DILocation(line: 226, column: 37, scope: !638)
!650 = !DILocation(line: 226, column: 20, scope: !638)
!651 = !DILocalVariable(name: "iellp1", scope: !638, file: !1, line: 227, type: !51)
!652 = !DILocation(line: 227, column: 12, scope: !638)
!653 = !DILocation(line: 227, column: 21, scope: !638)
!654 = !DILocation(line: 227, column: 25, scope: !638)
!655 = !DILocalVariable(name: "iell", scope: !638, file: !1, line: 228, type: !51)
!656 = !DILocation(line: 228, column: 12, scope: !638)
!657 = !DILocalVariable(name: "iellm1", scope: !638, file: !1, line: 229, type: !51)
!658 = !DILocation(line: 229, column: 12, scope: !638)
!659 = !DILocalVariable(name: "ell", scope: !638, file: !1, line: 230, type: !42)
!660 = !DILocation(line: 230, column: 9, scope: !638)
!661 = !DILocation(line: 231, column: 15, scope: !662)
!662 = distinct !DILexicalBlock(scope: !638, file: !1, line: 231, column: 5)
!663 = !DILocation(line: 231, column: 13, scope: !662)
!664 = !DILocation(line: 231, column: 9, scope: !662)
!665 = !DILocation(line: 231, column: 18, scope: !666)
!666 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 1)
!667 = distinct !DILexicalBlock(scope: !662, file: !1, line: 231, column: 5)
!668 = !DILocation(line: 231, column: 22, scope: !666)
!669 = !DILocation(line: 231, column: 5, scope: !666)
!670 = !DILocation(line: 232, column: 16, scope: !671)
!671 = distinct !DILexicalBlock(scope: !667, file: !1, line: 231, column: 35)
!672 = !DILocation(line: 232, column: 28, scope: !671)
!673 = !DILocation(line: 232, column: 27, scope: !671)
!674 = !DILocation(line: 232, column: 32, scope: !671)
!675 = !DILocation(line: 232, column: 25, scope: !671)
!676 = !DILocation(line: 232, column: 37, scope: !671)
!677 = !DILocation(line: 232, column: 36, scope: !671)
!678 = !DILocation(line: 232, column: 41, scope: !671)
!679 = !DILocation(line: 232, column: 39, scope: !671)
!680 = !DILocation(line: 232, column: 23, scope: !671)
!681 = !DILocation(line: 232, column: 14, scope: !671)
!682 = !DILocation(line: 233, column: 16, scope: !671)
!683 = !DILocation(line: 233, column: 14, scope: !671)
!684 = !DILocation(line: 234, column: 16, scope: !671)
!685 = !DILocation(line: 234, column: 14, scope: !671)
!686 = !DILocation(line: 235, column: 5, scope: !671)
!687 = !DILocation(line: 231, column: 31, scope: !688)
!688 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 2)
!689 = !DILocation(line: 231, column: 5, scope: !688)
!690 = distinct !{!690, !691}
!691 = !DILocation(line: 231, column: 5, scope: !638)
!692 = !DILocation(line: 236, column: 20, scope: !638)
!693 = !DILocation(line: 236, column: 36, scope: !638)
!694 = !DILocation(line: 236, column: 24, scope: !638)
!695 = !DILocation(line: 236, column: 62, scope: !638)
!696 = !DILocation(line: 236, column: 60, scope: !638)
!697 = !DILocation(line: 236, column: 40, scope: !638)
!698 = !DILocation(line: 236, column: 5, scope: !638)
!699 = !DILocation(line: 236, column: 13, scope: !638)
!700 = !DILocation(line: 236, column: 18, scope: !638)
!701 = !DILocation(line: 237, column: 30, scope: !638)
!702 = !DILocation(line: 237, column: 56, scope: !638)
!703 = !DILocation(line: 237, column: 54, scope: !638)
!704 = !DILocation(line: 237, column: 34, scope: !638)
!705 = !DILocation(line: 237, column: 5, scope: !638)
!706 = !DILocation(line: 237, column: 13, scope: !638)
!707 = !DILocation(line: 237, column: 18, scope: !638)
!708 = !DILocation(line: 238, column: 49, scope: !638)
!709 = !DILocation(line: 238, column: 57, scope: !638)
!710 = !DILocation(line: 238, column: 44, scope: !638)
!711 = !DILocation(line: 238, column: 42, scope: !638)
!712 = !DILocation(line: 238, column: 5, scope: !638)
!713 = !DILocation(line: 238, column: 13, scope: !638)
!714 = !DILocation(line: 238, column: 17, scope: !638)
!715 = !DILocation(line: 239, column: 12, scope: !638)
!716 = !DILocation(line: 239, column: 12, scope: !717)
!717 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 1)
!718 = !DILocation(line: 239, column: 12, scope: !719)
!719 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 2)
!720 = !DILocation(line: 239, column: 12, scope: !721)
!721 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 3)
!722 = !DILocation(line: 239, column: 12, scope: !723)
!723 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 4)
!724 = !DILocation(line: 239, column: 12, scope: !725)
!725 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 5)
!726 = !DILocation(line: 239, column: 12, scope: !727)
!727 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 6)
!728 = !DILocation(line: 239, column: 5, scope: !727)
!729 = !DILocation(line: 241, column: 11, scope: !730)
!730 = distinct !DILexicalBlock(scope: !634, file: !1, line: 241, column: 11)
!731 = !DILocation(line: 241, column: 11, scope: !732)
!732 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 1)
!733 = !DILocation(line: 241, column: 11, scope: !734)
!734 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 2)
!735 = !DILocation(line: 241, column: 11, scope: !736)
!736 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 3)
!737 = !DILocation(line: 241, column: 54, scope: !736)
!738 = !DILocalVariable(name: "status", scope: !739, file: !1, line: 242, type: !42)
!739 = distinct !DILexicalBlock(scope: !730, file: !1, line: 241, column: 83)
!740 = !DILocation(line: 242, column: 9, scope: !739)
!741 = !DILocation(line: 242, column: 56, scope: !739)
!742 = !DILocation(line: 242, column: 58, scope: !739)
!743 = !DILocation(line: 242, column: 65, scope: !739)
!744 = !DILocation(line: 242, column: 68, scope: !739)
!745 = !DILocation(line: 242, column: 18, scope: !739)
!746 = !DILocalVariable(name: "pre", scope: !739, file: !1, line: 243, type: !51)
!747 = !DILocation(line: 243, column: 12, scope: !739)
!748 = !DILocation(line: 243, column: 34, scope: !739)
!749 = !DILocation(line: 243, column: 33, scope: !739)
!750 = !DILocation(line: 243, column: 18, scope: !739)
!751 = !DILocation(line: 244, column: 20, scope: !739)
!752 = !DILocation(line: 244, column: 26, scope: !739)
!753 = !DILocation(line: 244, column: 24, scope: !739)
!754 = !DILocation(line: 244, column: 5, scope: !739)
!755 = !DILocation(line: 244, column: 13, scope: !739)
!756 = !DILocation(line: 244, column: 17, scope: !739)
!757 = !DILocation(line: 245, column: 20, scope: !739)
!758 = !DILocation(line: 245, column: 5, scope: !739)
!759 = !DILocation(line: 245, column: 13, scope: !739)
!760 = !DILocation(line: 245, column: 17, scope: !739)
!761 = !DILocation(line: 246, column: 12, scope: !739)
!762 = !DILocation(line: 246, column: 5, scope: !739)
!763 = !DILocalVariable(name: "rt_term", scope: !764, file: !1, line: 250, type: !51)
!764 = distinct !DILexicalBlock(scope: !730, file: !1, line: 248, column: 8)
!765 = !DILocation(line: 250, column: 12, scope: !764)
!766 = !DILocation(line: 250, column: 38, scope: !764)
!767 = !DILocation(line: 250, column: 37, scope: !764)
!768 = !DILocation(line: 250, column: 22, scope: !764)
!769 = !DILocalVariable(name: "LMAX", scope: !764, file: !1, line: 251, type: !456)
!770 = !DILocation(line: 251, column: 15, scope: !764)
!771 = !DILocalVariable(name: "r_iellp1", scope: !764, file: !1, line: 252, type: !53)
!772 = !DILocation(line: 252, column: 19, scope: !764)
!773 = !DILocalVariable(name: "r_iell", scope: !764, file: !1, line: 253, type: !53)
!774 = !DILocation(line: 253, column: 19, scope: !764)
!775 = !DILocalVariable(name: "stat_a1", scope: !764, file: !1, line: 254, type: !42)
!776 = !DILocation(line: 254, column: 9, scope: !764)
!777 = !DILocation(line: 254, column: 73, scope: !764)
!778 = !DILocation(line: 254, column: 19, scope: !764)
!779 = !DILocalVariable(name: "stat_a2", scope: !764, file: !1, line: 255, type: !42)
!780 = !DILocation(line: 255, column: 9, scope: !764)
!781 = !DILocation(line: 255, column: 73, scope: !764)
!782 = !DILocation(line: 255, column: 19, scope: !764)
!783 = !DILocalVariable(name: "iellp1", scope: !764, file: !1, line: 256, type: !51)
!784 = !DILocation(line: 256, column: 12, scope: !764)
!785 = !DILocation(line: 256, column: 30, scope: !764)
!786 = !DILocalVariable(name: "iell", scope: !764, file: !1, line: 257, type: !51)
!787 = !DILocation(line: 257, column: 12, scope: !764)
!788 = !DILocation(line: 257, column: 28, scope: !764)
!789 = !DILocalVariable(name: "iellm1", scope: !764, file: !1, line: 258, type: !51)
!790 = !DILocation(line: 258, column: 12, scope: !764)
!791 = !DILocalVariable(name: "ell", scope: !764, file: !1, line: 259, type: !42)
!792 = !DILocation(line: 259, column: 9, scope: !764)
!793 = !DILocation(line: 260, column: 15, scope: !764)
!794 = !DILocation(line: 260, column: 12, scope: !764)
!795 = !DILocation(line: 261, column: 15, scope: !764)
!796 = !DILocation(line: 261, column: 12, scope: !764)
!797 = !DILocation(line: 262, column: 13, scope: !798)
!798 = distinct !DILexicalBlock(scope: !764, file: !1, line: 262, column: 5)
!799 = !DILocation(line: 262, column: 9, scope: !798)
!800 = !DILocation(line: 262, column: 21, scope: !801)
!801 = !DILexicalBlockFile(scope: !802, file: !1, discriminator: 1)
!802 = distinct !DILexicalBlock(scope: !798, file: !1, line: 262, column: 5)
!803 = !DILocation(line: 262, column: 28, scope: !801)
!804 = !DILocation(line: 262, column: 29, scope: !801)
!805 = !DILocation(line: 262, column: 25, scope: !801)
!806 = !DILocation(line: 262, column: 5, scope: !801)
!807 = !DILocation(line: 263, column: 16, scope: !808)
!808 = distinct !DILexicalBlock(scope: !802, file: !1, line: 262, column: 40)
!809 = !DILocation(line: 263, column: 28, scope: !808)
!810 = !DILocation(line: 263, column: 27, scope: !808)
!811 = !DILocation(line: 263, column: 32, scope: !808)
!812 = !DILocation(line: 263, column: 25, scope: !808)
!813 = !DILocation(line: 263, column: 37, scope: !808)
!814 = !DILocation(line: 263, column: 36, scope: !808)
!815 = !DILocation(line: 263, column: 41, scope: !808)
!816 = !DILocation(line: 263, column: 39, scope: !808)
!817 = !DILocation(line: 263, column: 23, scope: !808)
!818 = !DILocation(line: 263, column: 14, scope: !808)
!819 = !DILocation(line: 264, column: 16, scope: !808)
!820 = !DILocation(line: 264, column: 14, scope: !808)
!821 = !DILocation(line: 265, column: 16, scope: !808)
!822 = !DILocation(line: 265, column: 14, scope: !808)
!823 = !DILocation(line: 266, column: 5, scope: !808)
!824 = !DILocation(line: 262, column: 36, scope: !825)
!825 = !DILexicalBlockFile(scope: !802, file: !1, discriminator: 2)
!826 = !DILocation(line: 262, column: 5, scope: !825)
!827 = distinct !{!827, !828}
!828 = !DILocation(line: 262, column: 5, scope: !764)
!829 = !DILocation(line: 267, column: 20, scope: !764)
!830 = !DILocation(line: 267, column: 26, scope: !764)
!831 = !DILocation(line: 267, column: 24, scope: !764)
!832 = !DILocation(line: 267, column: 5, scope: !764)
!833 = !DILocation(line: 267, column: 13, scope: !764)
!834 = !DILocation(line: 267, column: 18, scope: !764)
!835 = !DILocation(line: 268, column: 25, scope: !764)
!836 = !DILocation(line: 268, column: 33, scope: !764)
!837 = !DILocation(line: 268, column: 20, scope: !764)
!838 = !DILocation(line: 268, column: 71, scope: !764)
!839 = !DILocation(line: 268, column: 84, scope: !764)
!840 = !DILocation(line: 268, column: 74, scope: !764)
!841 = !DILocation(line: 268, column: 57, scope: !842)
!842 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 1)
!843 = !DILocation(line: 268, column: 55, scope: !764)
!844 = !DILocation(line: 268, column: 103, scope: !764)
!845 = !DILocation(line: 268, column: 114, scope: !764)
!846 = !DILocation(line: 268, column: 106, scope: !764)
!847 = !DILocation(line: 268, column: 91, scope: !848)
!848 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 2)
!849 = !DILocation(line: 268, column: 89, scope: !764)
!850 = !DILocation(line: 268, column: 37, scope: !764)
!851 = !DILocation(line: 268, column: 5, scope: !764)
!852 = !DILocation(line: 268, column: 13, scope: !764)
!853 = !DILocation(line: 268, column: 18, scope: !764)
!854 = !DILocation(line: 269, column: 49, scope: !764)
!855 = !DILocation(line: 269, column: 57, scope: !764)
!856 = !DILocation(line: 269, column: 44, scope: !764)
!857 = !DILocation(line: 269, column: 42, scope: !764)
!858 = !DILocation(line: 269, column: 5, scope: !764)
!859 = !DILocation(line: 269, column: 13, scope: !764)
!860 = !DILocation(line: 269, column: 17, scope: !764)
!861 = !DILocation(line: 271, column: 12, scope: !764)
!862 = !DILocation(line: 271, column: 12, scope: !842)
!863 = !DILocation(line: 271, column: 12, scope: !848)
!864 = !DILocation(line: 271, column: 12, scope: !865)
!865 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 3)
!866 = !DILocation(line: 271, column: 12, scope: !867)
!867 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 4)
!868 = !DILocation(line: 271, column: 12, scope: !869)
!869 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 5)
!870 = !DILocation(line: 271, column: 12, scope: !871)
!871 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 6)
!872 = !DILocation(line: 271, column: 5, scope: !871)
!873 = !DILocation(line: 273, column: 1, scope: !453)
!874 = distinct !DISubprogram(name: "bessel_il_CF1", scope: !1, file: !1, line: 37, type: !875, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!875 = !DISubroutineType(types: !876)
!876 = !{!42, !456, !50, !50, !877}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!878 = !DILocalVariable(name: "l", arg: 1, scope: !874, file: !1, line: 37, type: !456)
!879 = !DILocation(line: 37, column: 25, scope: !874)
!880 = !DILocalVariable(name: "x", arg: 2, scope: !874, file: !1, line: 37, type: !50)
!881 = !DILocation(line: 37, column: 41, scope: !874)
!882 = !DILocalVariable(name: "threshold", arg: 3, scope: !874, file: !1, line: 37, type: !50)
!883 = !DILocation(line: 37, column: 57, scope: !874)
!884 = !DILocalVariable(name: "ratio", arg: 4, scope: !874, file: !1, line: 37, type: !877)
!885 = !DILocation(line: 37, column: 77, scope: !874)
!886 = !DILocalVariable(name: "kmax", scope: !874, file: !1, line: 39, type: !456)
!887 = !DILocation(line: 39, column: 13, scope: !874)
!888 = !DILocalVariable(name: "tk", scope: !874, file: !1, line: 40, type: !51)
!889 = !DILocation(line: 40, column: 10, scope: !874)
!890 = !DILocalVariable(name: "sum", scope: !874, file: !1, line: 41, type: !51)
!891 = !DILocation(line: 41, column: 10, scope: !874)
!892 = !DILocalVariable(name: "rhok", scope: !874, file: !1, line: 42, type: !51)
!893 = !DILocation(line: 42, column: 10, scope: !874)
!894 = !DILocalVariable(name: "k", scope: !874, file: !1, line: 43, type: !42)
!895 = !DILocation(line: 43, column: 7, scope: !874)
!896 = !DILocation(line: 45, column: 8, scope: !897)
!897 = distinct !DILexicalBlock(scope: !874, file: !1, line: 45, column: 3)
!898 = !DILocation(line: 45, column: 7, scope: !897)
!899 = !DILocation(line: 45, column: 12, scope: !900)
!900 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 1)
!901 = distinct !DILexicalBlock(scope: !897, file: !1, line: 45, column: 3)
!902 = !DILocation(line: 45, column: 13, scope: !900)
!903 = !DILocation(line: 45, column: 3, scope: !900)
!904 = !DILocalVariable(name: "ak", scope: !905, file: !1, line: 46, type: !51)
!905 = distinct !DILexicalBlock(scope: !901, file: !1, line: 45, column: 26)
!906 = !DILocation(line: 46, column: 12, scope: !905)
!907 = !DILocation(line: 46, column: 18, scope: !905)
!908 = !DILocation(line: 46, column: 25, scope: !905)
!909 = !DILocation(line: 46, column: 24, scope: !905)
!910 = !DILocation(line: 46, column: 26, scope: !905)
!911 = !DILocation(line: 46, column: 35, scope: !905)
!912 = !DILocation(line: 46, column: 34, scope: !905)
!913 = !DILocation(line: 46, column: 30, scope: !905)
!914 = !DILocation(line: 46, column: 19, scope: !905)
!915 = !DILocation(line: 46, column: 42, scope: !905)
!916 = !DILocation(line: 46, column: 49, scope: !905)
!917 = !DILocation(line: 46, column: 48, scope: !905)
!918 = !DILocation(line: 46, column: 50, scope: !905)
!919 = !DILocation(line: 46, column: 59, scope: !905)
!920 = !DILocation(line: 46, column: 58, scope: !905)
!921 = !DILocation(line: 46, column: 54, scope: !905)
!922 = !DILocation(line: 46, column: 43, scope: !905)
!923 = !DILocation(line: 46, column: 39, scope: !905)
!924 = !DILocation(line: 47, column: 13, scope: !905)
!925 = !DILocation(line: 47, column: 12, scope: !905)
!926 = !DILocation(line: 47, column: 23, scope: !905)
!927 = !DILocation(line: 47, column: 21, scope: !905)
!928 = !DILocation(line: 47, column: 15, scope: !905)
!929 = !DILocation(line: 47, column: 36, scope: !905)
!930 = !DILocation(line: 47, column: 46, scope: !905)
!931 = !DILocation(line: 47, column: 44, scope: !905)
!932 = !DILocation(line: 47, column: 38, scope: !905)
!933 = !DILocation(line: 47, column: 34, scope: !905)
!934 = !DILocation(line: 47, column: 28, scope: !905)
!935 = !DILocation(line: 47, column: 10, scope: !905)
!936 = !DILocation(line: 48, column: 12, scope: !905)
!937 = !DILocation(line: 48, column: 9, scope: !905)
!938 = !DILocation(line: 49, column: 12, scope: !905)
!939 = !DILocation(line: 49, column: 9, scope: !905)
!940 = !DILocation(line: 50, column: 13, scope: !941)
!941 = distinct !DILexicalBlock(scope: !905, file: !1, line: 50, column: 8)
!942 = !DILocation(line: 50, column: 16, scope: !941)
!943 = !DILocation(line: 50, column: 15, scope: !941)
!944 = !DILocation(line: 50, column: 8, scope: !941)
!945 = !DILocation(line: 50, column: 23, scope: !941)
!946 = !DILocation(line: 50, column: 21, scope: !941)
!947 = !DILocation(line: 50, column: 8, scope: !905)
!948 = !DILocation(line: 50, column: 34, scope: !949)
!949 = !DILexicalBlockFile(scope: !941, file: !1, discriminator: 1)
!950 = !DILocation(line: 51, column: 3, scope: !905)
!951 = !DILocation(line: 45, column: 22, scope: !952)
!952 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 2)
!953 = !DILocation(line: 45, column: 3, scope: !952)
!954 = distinct !{!954, !955}
!955 = !DILocation(line: 45, column: 3, scope: !874)
!956 = !DILocation(line: 53, column: 12, scope: !874)
!957 = !DILocation(line: 53, column: 19, scope: !874)
!958 = !DILocation(line: 53, column: 18, scope: !874)
!959 = !DILocation(line: 53, column: 20, scope: !874)
!960 = !DILocation(line: 53, column: 13, scope: !874)
!961 = !DILocation(line: 53, column: 28, scope: !874)
!962 = !DILocation(line: 53, column: 26, scope: !874)
!963 = !DILocation(line: 53, column: 4, scope: !874)
!964 = !DILocation(line: 53, column: 10, scope: !874)
!965 = !DILocation(line: 55, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !874, file: !1, line: 55, column: 6)
!967 = !DILocation(line: 55, column: 8, scope: !966)
!968 = !DILocation(line: 55, column: 6, scope: !874)
!969 = !DILocation(line: 56, column: 5, scope: !966)
!970 = distinct !{!970, !969}
!971 = !DILocation(line: 56, column: 5, scope: !972)
!972 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 1)
!973 = distinct !DILexicalBlock(scope: !966, file: !1, line: 56, column: 5)
!974 = !DILocation(line: 56, column: 5, scope: !975)
!975 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 2)
!976 = !DILocation(line: 58, column: 5, scope: !966)
!977 = !DILocation(line: 59, column: 1, scope: !874)
!978 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled_array", scope: !1, file: !1, line: 276, type: !979, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!979 = !DISubroutineType(types: !980)
!980 = !{!42, !456, !50, !877}
!981 = !DILocalVariable(name: "lmax", arg: 1, scope: !978, file: !1, line: 276, type: !456)
!982 = !DILocation(line: 276, column: 45, scope: !978)
!983 = !DILocalVariable(name: "x", arg: 2, scope: !978, file: !1, line: 276, type: !50)
!984 = !DILocation(line: 276, column: 64, scope: !978)
!985 = !DILocalVariable(name: "result_array", arg: 3, scope: !978, file: !1, line: 276, type: !877)
!986 = !DILocation(line: 276, column: 76, scope: !978)
!987 = !DILocation(line: 278, column: 6, scope: !988)
!988 = distinct !DILexicalBlock(scope: !978, file: !1, line: 278, column: 6)
!989 = !DILocation(line: 278, column: 8, scope: !988)
!990 = !DILocation(line: 278, column: 6, scope: !978)
!991 = !DILocalVariable(name: "ell", scope: !992, file: !1, line: 279, type: !42)
!992 = distinct !DILexicalBlock(scope: !988, file: !1, line: 278, column: 16)
!993 = !DILocation(line: 279, column: 9, scope: !992)
!994 = !DILocation(line: 280, column: 5, scope: !992)
!995 = !DILocation(line: 280, column: 21, scope: !992)
!996 = !DILocation(line: 281, column: 16, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !1, line: 281, column: 5)
!998 = !DILocation(line: 281, column: 14, scope: !997)
!999 = !DILocation(line: 281, column: 10, scope: !997)
!1000 = !DILocation(line: 281, column: 22, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !1002, file: !1, discriminator: 1)
!1002 = distinct !DILexicalBlock(scope: !997, file: !1, line: 281, column: 5)
!1003 = !DILocation(line: 281, column: 26, scope: !1001)
!1004 = !DILocation(line: 281, column: 5, scope: !1001)
!1005 = !DILocation(line: 282, column: 20, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 281, column: 39)
!1007 = !DILocation(line: 282, column: 7, scope: !1006)
!1008 = !DILocation(line: 282, column: 25, scope: !1006)
!1009 = !DILocation(line: 283, column: 5, scope: !1006)
!1010 = !DILocation(line: 281, column: 35, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1002, file: !1, discriminator: 2)
!1012 = !DILocation(line: 281, column: 5, scope: !1011)
!1013 = distinct !{!1013, !1014}
!1014 = !DILocation(line: 281, column: 5, scope: !992)
!1015 = !DILocation(line: 284, column: 5, scope: !992)
!1016 = !DILocalVariable(name: "ell", scope: !1017, file: !1, line: 286, type: !42)
!1017 = distinct !DILexicalBlock(scope: !988, file: !1, line: 285, column: 10)
!1018 = !DILocation(line: 286, column: 9, scope: !1017)
!1019 = !DILocalVariable(name: "r_iellp1", scope: !1017, file: !1, line: 287, type: !53)
!1020 = !DILocation(line: 287, column: 19, scope: !1017)
!1021 = !DILocalVariable(name: "r_iell", scope: !1017, file: !1, line: 288, type: !53)
!1022 = !DILocation(line: 288, column: 19, scope: !1017)
!1023 = !DILocalVariable(name: "stat_0", scope: !1017, file: !1, line: 289, type: !42)
!1024 = !DILocation(line: 289, column: 9, scope: !1017)
!1025 = !DILocation(line: 289, column: 44, scope: !1017)
!1026 = !DILocation(line: 289, column: 48, scope: !1017)
!1027 = !DILocation(line: 289, column: 52, scope: !1017)
!1028 = !DILocation(line: 289, column: 18, scope: !1017)
!1029 = !DILocalVariable(name: "stat_1", scope: !1017, file: !1, line: 290, type: !42)
!1030 = !DILocation(line: 290, column: 9, scope: !1017)
!1031 = !DILocation(line: 290, column: 44, scope: !1017)
!1032 = !DILocation(line: 290, column: 52, scope: !1017)
!1033 = !DILocation(line: 290, column: 18, scope: !1017)
!1034 = !DILocalVariable(name: "iellp1", scope: !1017, file: !1, line: 291, type: !51)
!1035 = !DILocation(line: 291, column: 12, scope: !1017)
!1036 = !DILocation(line: 291, column: 30, scope: !1017)
!1037 = !DILocalVariable(name: "iell", scope: !1017, file: !1, line: 292, type: !51)
!1038 = !DILocation(line: 292, column: 12, scope: !1017)
!1039 = !DILocation(line: 292, column: 28, scope: !1017)
!1040 = !DILocalVariable(name: "iellm1", scope: !1017, file: !1, line: 293, type: !51)
!1041 = !DILocation(line: 293, column: 12, scope: !1017)
!1042 = !DILocation(line: 294, column: 26, scope: !1017)
!1043 = !DILocation(line: 294, column: 18, scope: !1017)
!1044 = !DILocation(line: 294, column: 5, scope: !1017)
!1045 = !DILocation(line: 294, column: 24, scope: !1017)
!1046 = !DILocation(line: 295, column: 15, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 295, column: 5)
!1048 = !DILocation(line: 295, column: 13, scope: !1047)
!1049 = !DILocation(line: 295, column: 9, scope: !1047)
!1050 = !DILocation(line: 295, column: 21, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1052, file: !1, discriminator: 1)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 295, column: 5)
!1053 = !DILocation(line: 295, column: 25, scope: !1051)
!1054 = !DILocation(line: 295, column: 5, scope: !1051)
!1055 = !DILocation(line: 296, column: 16, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 295, column: 38)
!1057 = !DILocation(line: 296, column: 28, scope: !1056)
!1058 = !DILocation(line: 296, column: 27, scope: !1056)
!1059 = !DILocation(line: 296, column: 32, scope: !1056)
!1060 = !DILocation(line: 296, column: 25, scope: !1056)
!1061 = !DILocation(line: 296, column: 37, scope: !1056)
!1062 = !DILocation(line: 296, column: 36, scope: !1056)
!1063 = !DILocation(line: 296, column: 41, scope: !1056)
!1064 = !DILocation(line: 296, column: 39, scope: !1056)
!1065 = !DILocation(line: 296, column: 23, scope: !1056)
!1066 = !DILocation(line: 296, column: 14, scope: !1056)
!1067 = !DILocation(line: 297, column: 16, scope: !1056)
!1068 = !DILocation(line: 297, column: 14, scope: !1056)
!1069 = !DILocation(line: 298, column: 16, scope: !1056)
!1070 = !DILocation(line: 298, column: 14, scope: !1056)
!1071 = !DILocation(line: 299, column: 29, scope: !1056)
!1072 = !DILocation(line: 299, column: 20, scope: !1056)
!1073 = !DILocation(line: 299, column: 23, scope: !1056)
!1074 = !DILocation(line: 299, column: 7, scope: !1056)
!1075 = !DILocation(line: 299, column: 27, scope: !1056)
!1076 = !DILocation(line: 300, column: 5, scope: !1056)
!1077 = !DILocation(line: 295, column: 34, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1052, file: !1, discriminator: 2)
!1079 = !DILocation(line: 295, column: 5, scope: !1078)
!1080 = distinct !{!1080, !1081}
!1081 = !DILocation(line: 295, column: 5, scope: !1017)
!1082 = !DILocation(line: 301, column: 12, scope: !1017)
!1083 = !DILocation(line: 301, column: 12, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 1)
!1085 = !DILocation(line: 301, column: 12, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 2)
!1087 = !DILocation(line: 301, column: 12, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 3)
!1089 = !DILocation(line: 301, column: 12, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 4)
!1091 = !DILocation(line: 301, column: 12, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 5)
!1093 = !DILocation(line: 301, column: 12, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 6)
!1095 = !DILocation(line: 301, column: 5, scope: !1094)
!1096 = !DILocation(line: 303, column: 1, scope: !978)
!1097 = distinct !DISubprogram(name: "gsl_sf_bessel_i0_scaled", scope: !1, file: !1, line: 310, type: !1098, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!51, !50}
!1100 = !DILocalVariable(name: "x", arg: 1, scope: !1097, file: !1, line: 310, type: !50)
!1101 = !DILocation(line: 310, column: 45, scope: !1097)
!1102 = !DILocalVariable(name: "result", scope: !1097, file: !1, line: 312, type: !53)
!1103 = !DILocation(line: 312, column: 3, scope: !1097)
!1104 = !DILocalVariable(name: "status", scope: !1097, file: !1, line: 312, type: !42)
!1105 = !DILocation(line: 312, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 312, column: 3)
!1107 = !DILocation(line: 312, column: 3, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1109, file: !1, discriminator: 1)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 312, column: 3)
!1110 = distinct !{!1110, !1111}
!1111 = !DILocation(line: 312, column: 3, scope: !1109)
!1112 = !DILocation(line: 312, column: 3, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1114, file: !1, discriminator: 2)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 312, column: 3)
!1115 = !DILocation(line: 312, column: 3, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1109, file: !1, discriminator: 3)
!1117 = !DILocation(line: 312, column: 3, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1097, file: !1, discriminator: 4)
!1119 = !DILocation(line: 313, column: 1, scope: !1097)
!1120 = distinct !DISubprogram(name: "gsl_sf_bessel_i1_scaled", scope: !1, file: !1, line: 315, type: !1098, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1121 = !DILocalVariable(name: "x", arg: 1, scope: !1120, file: !1, line: 315, type: !50)
!1122 = !DILocation(line: 315, column: 45, scope: !1120)
!1123 = !DILocalVariable(name: "result", scope: !1120, file: !1, line: 317, type: !53)
!1124 = !DILocation(line: 317, column: 3, scope: !1120)
!1125 = !DILocalVariable(name: "status", scope: !1120, file: !1, line: 317, type: !42)
!1126 = !DILocation(line: 317, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 317, column: 3)
!1128 = !DILocation(line: 317, column: 3, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1130, file: !1, discriminator: 1)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 317, column: 3)
!1131 = distinct !{!1131, !1132}
!1132 = !DILocation(line: 317, column: 3, scope: !1130)
!1133 = !DILocation(line: 317, column: 3, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !1, discriminator: 2)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 317, column: 3)
!1136 = !DILocation(line: 317, column: 3, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1130, file: !1, discriminator: 3)
!1138 = !DILocation(line: 317, column: 3, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1120, file: !1, discriminator: 4)
!1140 = !DILocation(line: 318, column: 1, scope: !1120)
!1141 = distinct !DISubprogram(name: "gsl_sf_bessel_i2_scaled", scope: !1, file: !1, line: 320, type: !1098, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1142 = !DILocalVariable(name: "x", arg: 1, scope: !1141, file: !1, line: 320, type: !50)
!1143 = !DILocation(line: 320, column: 45, scope: !1141)
!1144 = !DILocalVariable(name: "result", scope: !1141, file: !1, line: 322, type: !53)
!1145 = !DILocation(line: 322, column: 3, scope: !1141)
!1146 = !DILocalVariable(name: "status", scope: !1141, file: !1, line: 322, type: !42)
!1147 = !DILocation(line: 322, column: 3, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 322, column: 3)
!1149 = !DILocation(line: 322, column: 3, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1151, file: !1, discriminator: 1)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 322, column: 3)
!1152 = distinct !{!1152, !1153}
!1153 = !DILocation(line: 322, column: 3, scope: !1151)
!1154 = !DILocation(line: 322, column: 3, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1156, file: !1, discriminator: 2)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 322, column: 3)
!1157 = !DILocation(line: 322, column: 3, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1151, file: !1, discriminator: 3)
!1159 = !DILocation(line: 322, column: 3, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1141, file: !1, discriminator: 4)
!1161 = !DILocation(line: 323, column: 1, scope: !1141)
!1162 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled", scope: !1, file: !1, line: 325, type: !1163, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!51, !456, !50}
!1165 = !DILocalVariable(name: "l", arg: 1, scope: !1162, file: !1, line: 325, type: !456)
!1166 = !DILocation(line: 325, column: 42, scope: !1162)
!1167 = !DILocalVariable(name: "x", arg: 2, scope: !1162, file: !1, line: 325, type: !50)
!1168 = !DILocation(line: 325, column: 58, scope: !1162)
!1169 = !DILocalVariable(name: "result", scope: !1162, file: !1, line: 327, type: !53)
!1170 = !DILocation(line: 327, column: 3, scope: !1162)
!1171 = !DILocalVariable(name: "status", scope: !1162, file: !1, line: 327, type: !42)
!1172 = !DILocation(line: 327, column: 3, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 327, column: 3)
!1174 = !DILocation(line: 327, column: 3, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1176, file: !1, discriminator: 1)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 327, column: 3)
!1177 = distinct !{!1177, !1178}
!1178 = !DILocation(line: 327, column: 3, scope: !1176)
!1179 = !DILocation(line: 327, column: 3, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1181, file: !1, discriminator: 2)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 327, column: 3)
!1182 = !DILocation(line: 327, column: 3, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1176, file: !1, discriminator: 3)
!1184 = !DILocation(line: 327, column: 3, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1162, file: !1, discriminator: 4)
!1186 = !DILocation(line: 328, column: 1, scope: !1162)
