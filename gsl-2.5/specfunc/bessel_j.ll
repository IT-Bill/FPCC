; ModuleID = 'bessel_j.c'
source_filename = "bessel_j.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_j.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_j0_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_j1_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_j2_e(x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_jl_e(l, x, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_j0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !59, metadata !60), !dbg !61
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !62, metadata !60), !dbg !63
  call void @llvm.dbg.declare(metadata double* %6, metadata !64, metadata !60), !dbg !65
  %14 = load double, double* %4, align 8, !dbg !66
  %15 = call double @fabs(double %14) #1, !dbg !67
  store double %15, double* %6, align 8, !dbg !65
  %16 = load double, double* %6, align 8, !dbg !68
  %17 = fcmp olt double %16, 5.000000e-01, !dbg !70
  br i1 %17, label %18, label %49, !dbg !71

; <label>:18:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %7, metadata !72, metadata !60), !dbg !74
  %19 = load double, double* %4, align 8, !dbg !75
  %20 = load double, double* %4, align 8, !dbg !76
  %21 = fmul double %19, %20, !dbg !77
  store double %21, double* %7, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata double* %8, metadata !78, metadata !60), !dbg !79
  store double 0xBFC5555555555555, double* %8, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata double* %9, metadata !80, metadata !60), !dbg !81
  store double 0x3F81111111111111, double* %9, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %10, metadata !82, metadata !60), !dbg !83
  store double 0xBF2A01A01A01A01A, double* %10, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata double* %11, metadata !84, metadata !60), !dbg !85
  store double 0x3EC71DE3A556C734, double* %11, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata double* %12, metadata !86, metadata !60), !dbg !87
  store double 0xBE5AE64567F544E4, double* %12, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata double* %13, metadata !88, metadata !60), !dbg !89
  store double 0x3DE6124613A86D09, double* %13, align 8, !dbg !89
  %22 = load double, double* %7, align 8, !dbg !90
  %23 = load double, double* %7, align 8, !dbg !91
  %24 = load double, double* %7, align 8, !dbg !92
  %25 = load double, double* %7, align 8, !dbg !93
  %26 = load double, double* %7, align 8, !dbg !94
  %27 = load double, double* %7, align 8, !dbg !95
  %28 = fmul double %27, 0x3DE6124613A86D09, !dbg !96
  %29 = fadd double 0xBE5AE64567F544E4, %28, !dbg !97
  %30 = fmul double %26, %29, !dbg !98
  %31 = fadd double 0x3EC71DE3A556C734, %30, !dbg !99
  %32 = fmul double %25, %31, !dbg !100
  %33 = fadd double 0xBF2A01A01A01A01A, %32, !dbg !101
  %34 = fmul double %24, %33, !dbg !102
  %35 = fadd double 0x3F81111111111111, %34, !dbg !103
  %36 = fmul double %23, %35, !dbg !104
  %37 = fadd double 0xBFC5555555555555, %36, !dbg !105
  %38 = fmul double %22, %37, !dbg !106
  %39 = fadd double 1.000000e+00, %38, !dbg !107
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !108
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !109
  store double %39, double* %41, align 8, !dbg !110
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !111
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !112
  %44 = load double, double* %43, align 8, !dbg !112
  %45 = call double @fabs(double %44) #1, !dbg !113
  %46 = fmul double 0x3CC0000000000000, %45, !dbg !114
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !115
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !116
  store double %46, double* %48, align 8, !dbg !117
  store i32 0, i32* %3, align 4, !dbg !118
  br label %63, !dbg !118

; <label>:49:                                     ; preds = %2
  %50 = load double, double* %4, align 8, !dbg !119
  %51 = call double @sin(double %50) #5, !dbg !121
  %52 = load double, double* %4, align 8, !dbg !122
  %53 = fdiv double %51, %52, !dbg !123
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !124
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !125
  store double %53, double* %55, align 8, !dbg !126
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !127
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !128
  %58 = load double, double* %57, align 8, !dbg !128
  %59 = call double @fabs(double %58) #1, !dbg !129
  %60 = fmul double 0x3CC0000000000000, %59, !dbg !130
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !131
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !132
  store double %60, double* %62, align 8, !dbg !133
  store i32 0, i32* %3, align 4, !dbg !134
  br label %63, !dbg !134

; <label>:63:                                     ; preds = %49, %18
  %64 = load i32, i32* %3, align 4, !dbg !135
  ret i32 %64, !dbg !135
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_j1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !136 {
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
  call void @llvm.dbg.declare(metadata double* %4, metadata !137, metadata !60), !dbg !138
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !139, metadata !60), !dbg !140
  call void @llvm.dbg.declare(metadata double* %6, metadata !141, metadata !60), !dbg !142
  %16 = load double, double* %4, align 8, !dbg !143
  %17 = call double @fabs(double %16) #1, !dbg !144
  store double %17, double* %6, align 8, !dbg !142
  %18 = load double, double* %4, align 8, !dbg !145
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !147
  br i1 %19, label %20, label %25, !dbg !148

; <label>:20:                                     ; preds = %2
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !149
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !151
  store double 0.000000e+00, double* %22, align 8, !dbg !152
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !153
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !154
  store double 0.000000e+00, double* %24, align 8, !dbg !155
  store i32 0, i32* %3, align 4, !dbg !156
  br label %110, !dbg !156

; <label>:25:                                     ; preds = %2
  %26 = load double, double* %6, align 8, !dbg !157
  %27 = fcmp olt double %26, 0x28CCCCCCCCCCCD, !dbg !159
  br i1 %27, label %28, label %37, !dbg !160

; <label>:28:                                     ; preds = %25
  br label %29, !dbg !161, !llvm.loop !163

; <label>:29:                                     ; preds = %28
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !164
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !164
  store double 0.000000e+00, double* %31, align 8, !dbg !164
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !164
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !164
  store double 0x10000000000000, double* %33, align 8, !dbg !164
  br label %34, !dbg !164, !llvm.loop !167

; <label>:34:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 74, i32 15), !dbg !169
  store i32 15, i32* %3, align 4, !dbg !169
  br label %110, !dbg !169
                                                  ; No predecessors!
  br label %36, !dbg !172

; <label>:36:                                     ; preds = %35
  br label %109, !dbg !174

; <label>:37:                                     ; preds = %25
  %38 = load double, double* %6, align 8, !dbg !175
  %39 = fcmp olt double %38, 2.500000e-01, !dbg !177
  br i1 %39, label %40, label %72, !dbg !178

; <label>:40:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %7, metadata !179, metadata !60), !dbg !181
  %41 = load double, double* %4, align 8, !dbg !182
  %42 = load double, double* %4, align 8, !dbg !183
  %43 = fmul double %41, %42, !dbg !184
  store double %43, double* %7, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata double* %8, metadata !185, metadata !60), !dbg !186
  store double -1.000000e-01, double* %8, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata double* %9, metadata !187, metadata !60), !dbg !188
  store double 0x3F6D41D41D41D41D, double* %9, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata double* %10, metadata !189, metadata !60), !dbg !190
  store double 0xBF11566ABC011567, double* %10, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata double* %11, metadata !191, metadata !60), !dbg !192
  store double 0x3EA937E11175F095, double* %11, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata double* %12, metadata !193, metadata !60), !dbg !194
  store double 0xBE38D48ED61D7AAB, double* %12, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata double* %13, metadata !195, metadata !60), !dbg !196
  %44 = load double, double* %7, align 8, !dbg !197
  %45 = load double, double* %7, align 8, !dbg !198
  %46 = load double, double* %7, align 8, !dbg !199
  %47 = load double, double* %7, align 8, !dbg !200
  %48 = load double, double* %7, align 8, !dbg !201
  %49 = fmul double %48, 0xBE38D48ED61D7AAB, !dbg !202
  %50 = fadd double 0x3EA937E11175F095, %49, !dbg !203
  %51 = fmul double %47, %50, !dbg !204
  %52 = fadd double 0xBF11566ABC011567, %51, !dbg !205
  %53 = fmul double %46, %52, !dbg !206
  %54 = fadd double 0x3F6D41D41D41D41D, %53, !dbg !207
  %55 = fmul double %45, %54, !dbg !208
  %56 = fadd double -1.000000e-01, %55, !dbg !209
  %57 = fmul double %44, %56, !dbg !210
  %58 = fadd double 1.000000e+00, %57, !dbg !211
  store double %58, double* %13, align 8, !dbg !196
  %59 = load double, double* %4, align 8, !dbg !212
  %60 = fdiv double %59, 3.000000e+00, !dbg !213
  %61 = load double, double* %13, align 8, !dbg !214
  %62 = fmul double %60, %61, !dbg !215
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !216
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !217
  store double %62, double* %64, align 8, !dbg !218
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !219
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !220
  %67 = load double, double* %66, align 8, !dbg !220
  %68 = call double @fabs(double %67) #1, !dbg !221
  %69 = fmul double 0x3CC0000000000000, %68, !dbg !222
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !223
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !224
  store double %69, double* %71, align 8, !dbg !225
  store i32 0, i32* %3, align 4, !dbg !226
  br label %110, !dbg !226

; <label>:72:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %14, metadata !227, metadata !60), !dbg !229
  %73 = load double, double* %4, align 8, !dbg !230
  %74 = call double @cos(double %73) #5, !dbg !231
  store double %74, double* %14, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata double* %15, metadata !232, metadata !60), !dbg !233
  %75 = load double, double* %4, align 8, !dbg !234
  %76 = call double @sin(double %75) #5, !dbg !235
  store double %76, double* %15, align 8, !dbg !233
  %77 = load double, double* %15, align 8, !dbg !236
  %78 = load double, double* %4, align 8, !dbg !237
  %79 = fdiv double %77, %78, !dbg !238
  %80 = load double, double* %14, align 8, !dbg !239
  %81 = fsub double %79, %80, !dbg !240
  %82 = load double, double* %4, align 8, !dbg !241
  %83 = fdiv double %81, %82, !dbg !242
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !243
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !244
  store double %83, double* %85, align 8, !dbg !245
  %86 = load double, double* %15, align 8, !dbg !246
  %87 = load double, double* %4, align 8, !dbg !247
  %88 = load double, double* %4, align 8, !dbg !248
  %89 = fmul double %87, %88, !dbg !249
  %90 = fdiv double %86, %89, !dbg !250
  %91 = call double @fabs(double %90) #1, !dbg !251
  %92 = load double, double* %14, align 8, !dbg !252
  %93 = load double, double* %4, align 8, !dbg !253
  %94 = fdiv double %92, %93, !dbg !254
  %95 = call double @fabs(double %94) #1, !dbg !255
  %96 = fadd double %91, %95, !dbg !257
  %97 = fmul double 0x3CC0000000000000, %96, !dbg !258
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !259
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 1, !dbg !260
  store double %97, double* %99, align 8, !dbg !261
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !262
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !263
  %102 = load double, double* %101, align 8, !dbg !263
  %103 = call double @fabs(double %102) #1, !dbg !264
  %104 = fmul double 0x3CC0000000000000, %103, !dbg !265
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !266
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 1, !dbg !267
  %107 = load double, double* %106, align 8, !dbg !268
  %108 = fadd double %107, %104, !dbg !268
  store double %108, double* %106, align 8, !dbg !268
  store i32 0, i32* %3, align 4, !dbg !269
  br label %110, !dbg !269

; <label>:109:                                    ; preds = %36
  br label %110

; <label>:110:                                    ; preds = %20, %34, %40, %72, %109
  %111 = load i32, i32* %3, align 4, !dbg !270
  ret i32 %111, !dbg !270
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_j2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !271 {
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
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !272, metadata !60), !dbg !273
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !274, metadata !60), !dbg !275
  call void @llvm.dbg.declare(metadata double* %6, metadata !276, metadata !60), !dbg !277
  %21 = load double, double* %4, align 8, !dbg !278
  %22 = call double @fabs(double %21) #1, !dbg !279
  store double %22, double* %6, align 8, !dbg !277
  %23 = load double, double* %4, align 8, !dbg !280
  %24 = fcmp oeq double %23, 0.000000e+00, !dbg !282
  br i1 %24, label %25, label %30, !dbg !283

; <label>:25:                                     ; preds = %2
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !284
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !286
  store double 0.000000e+00, double* %27, align 8, !dbg !287
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !288
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !289
  store double 0.000000e+00, double* %29, align 8, !dbg !290
  store i32 0, i32* %3, align 4, !dbg !291
  br label %138, !dbg !291

; <label>:30:                                     ; preds = %2
  %31 = load double, double* %6, align 8, !dbg !292
  %32 = fcmp olt double %31, 0x2020000000000000, !dbg !294
  br i1 %32, label %33, label %42, !dbg !295

; <label>:33:                                     ; preds = %30
  br label %34, !dbg !296, !llvm.loop !298

; <label>:34:                                     ; preds = %33
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !299
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !299
  store double 0.000000e+00, double* %36, align 8, !dbg !299
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !299
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !299
  store double 0x10000000000000, double* %38, align 8, !dbg !299
  br label %39, !dbg !299, !llvm.loop !302

; <label>:39:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 111, i32 15), !dbg !304
  store i32 15, i32* %3, align 4, !dbg !304
  br label %138, !dbg !304
                                                  ; No predecessors!
  br label %41, !dbg !307

; <label>:41:                                     ; preds = %40
  br label %137, !dbg !309

; <label>:42:                                     ; preds = %30
  %43 = load double, double* %6, align 8, !dbg !310
  %44 = fcmp olt double %43, 1.300000e+00, !dbg !312
  br i1 %44, label %45, label %89, !dbg !313

; <label>:45:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata double* %7, metadata !314, metadata !60), !dbg !316
  %46 = load double, double* %4, align 8, !dbg !317
  %47 = load double, double* %4, align 8, !dbg !318
  %48 = fmul double %46, %47, !dbg !319
  store double %48, double* %7, align 8, !dbg !316
  call void @llvm.dbg.declare(metadata double* %8, metadata !320, metadata !60), !dbg !321
  store double 0xBFB2492492492492, double* %8, align 8, !dbg !321
  call void @llvm.dbg.declare(metadata double* %9, metadata !322, metadata !60), !dbg !323
  store double 0x3F60410410410410, double* %9, align 8, !dbg !323
  call void @llvm.dbg.declare(metadata double* %10, metadata !324, metadata !60), !dbg !325
  store double 0xBEFF85D955D36CBB, double* %10, align 8, !dbg !325
  call void @llvm.dbg.declare(metadata double* %11, metadata !326, metadata !60), !dbg !327
  store double 0x3E93660F974707D5, double* %11, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata double* %12, metadata !328, metadata !60), !dbg !329
  store double 0xBE208DB48EBE51C7, double* %12, align 8, !dbg !329
  call void @llvm.dbg.declare(metadata double* %13, metadata !330, metadata !60), !dbg !331
  store double 0x3DA4C5E79A07EE27, double* %13, align 8, !dbg !331
  call void @llvm.dbg.declare(metadata double* %14, metadata !332, metadata !60), !dbg !333
  store double 0xBD23FDFBC45C52EA, double* %14, align 8, !dbg !333
  call void @llvm.dbg.declare(metadata double* %15, metadata !334, metadata !60), !dbg !335
  store double 0x3C9E76D4FA744D95, double* %15, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata double* %16, metadata !336, metadata !60), !dbg !337
  store double 0xBC12D6775460A6B3, double* %16, align 8, !dbg !337
  call void @llvm.dbg.declare(metadata double* %17, metadata !338, metadata !60), !dbg !339
  %49 = load double, double* %7, align 8, !dbg !340
  %50 = load double, double* %7, align 8, !dbg !341
  %51 = load double, double* %7, align 8, !dbg !342
  %52 = load double, double* %7, align 8, !dbg !343
  %53 = load double, double* %7, align 8, !dbg !344
  %54 = load double, double* %7, align 8, !dbg !345
  %55 = load double, double* %7, align 8, !dbg !346
  %56 = load double, double* %7, align 8, !dbg !347
  %57 = load double, double* %7, align 8, !dbg !348
  %58 = fmul double %57, 0xBC12D6775460A6B3, !dbg !349
  %59 = fadd double 0x3C9E76D4FA744D95, %58, !dbg !350
  %60 = fmul double %56, %59, !dbg !351
  %61 = fadd double 0xBD23FDFBC45C52EA, %60, !dbg !352
  %62 = fmul double %55, %61, !dbg !353
  %63 = fadd double 0x3DA4C5E79A07EE27, %62, !dbg !354
  %64 = fmul double %54, %63, !dbg !355
  %65 = fadd double 0xBE208DB48EBE51C7, %64, !dbg !356
  %66 = fmul double %53, %65, !dbg !357
  %67 = fadd double 0x3E93660F974707D5, %66, !dbg !358
  %68 = fmul double %52, %67, !dbg !359
  %69 = fadd double 0xBEFF85D955D36CBB, %68, !dbg !360
  %70 = fmul double %51, %69, !dbg !361
  %71 = fadd double 0x3F60410410410410, %70, !dbg !362
  %72 = fmul double %50, %71, !dbg !363
  %73 = fadd double 0xBFB2492492492492, %72, !dbg !364
  %74 = fmul double %49, %73, !dbg !365
  %75 = fadd double 1.000000e+00, %74, !dbg !366
  store double %75, double* %17, align 8, !dbg !339
  %76 = load double, double* %7, align 8, !dbg !367
  %77 = fdiv double %76, 1.500000e+01, !dbg !368
  %78 = load double, double* %17, align 8, !dbg !369
  %79 = fmul double %77, %78, !dbg !370
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !371
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !372
  store double %79, double* %81, align 8, !dbg !373
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !374
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !375
  %84 = load double, double* %83, align 8, !dbg !375
  %85 = call double @fabs(double %84) #1, !dbg !376
  %86 = fmul double 0x3CC0000000000000, %85, !dbg !377
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !378
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !379
  store double %86, double* %88, align 8, !dbg !380
  store i32 0, i32* %3, align 4, !dbg !381
  br label %138, !dbg !381

; <label>:89:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata double* %18, metadata !382, metadata !60), !dbg !384
  %90 = load double, double* %4, align 8, !dbg !385
  %91 = call double @cos(double %90) #5, !dbg !386
  store double %91, double* %18, align 8, !dbg !384
  call void @llvm.dbg.declare(metadata double* %19, metadata !387, metadata !60), !dbg !388
  %92 = load double, double* %4, align 8, !dbg !389
  %93 = call double @sin(double %92) #5, !dbg !390
  store double %93, double* %19, align 8, !dbg !388
  call void @llvm.dbg.declare(metadata double* %20, metadata !391, metadata !60), !dbg !392
  %94 = load double, double* %4, align 8, !dbg !393
  %95 = load double, double* %4, align 8, !dbg !394
  %96 = fmul double %94, %95, !dbg !395
  %97 = fdiv double 3.000000e+00, %96, !dbg !396
  %98 = fsub double %97, 1.000000e+00, !dbg !397
  store double %98, double* %20, align 8, !dbg !392
  %99 = load double, double* %20, align 8, !dbg !398
  %100 = load double, double* %19, align 8, !dbg !399
  %101 = fmul double %99, %100, !dbg !400
  %102 = load double, double* %18, align 8, !dbg !401
  %103 = fmul double 3.000000e+00, %102, !dbg !402
  %104 = load double, double* %4, align 8, !dbg !403
  %105 = fdiv double %103, %104, !dbg !404
  %106 = fsub double %101, %105, !dbg !405
  %107 = load double, double* %4, align 8, !dbg !406
  %108 = fdiv double %106, %107, !dbg !407
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !408
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !409
  store double %108, double* %110, align 8, !dbg !410
  %111 = load double, double* %20, align 8, !dbg !411
  %112 = load double, double* %19, align 8, !dbg !412
  %113 = fmul double %111, %112, !dbg !413
  %114 = load double, double* %4, align 8, !dbg !414
  %115 = fdiv double %113, %114, !dbg !415
  %116 = call double @fabs(double %115) #1, !dbg !416
  %117 = load double, double* %18, align 8, !dbg !417
  %118 = load double, double* %4, align 8, !dbg !418
  %119 = load double, double* %4, align 8, !dbg !419
  %120 = fmul double %118, %119, !dbg !420
  %121 = fdiv double %117, %120, !dbg !421
  %122 = call double @fabs(double %121) #1, !dbg !422
  %123 = fmul double 3.000000e+00, %122, !dbg !424
  %124 = fadd double %116, %123, !dbg !425
  %125 = fmul double 0x3CC0000000000000, %124, !dbg !426
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !427
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 1, !dbg !428
  store double %125, double* %127, align 8, !dbg !429
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !430
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !431
  %130 = load double, double* %129, align 8, !dbg !431
  %131 = call double @fabs(double %130) #1, !dbg !432
  %132 = fmul double 0x3CC0000000000000, %131, !dbg !433
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !434
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 1, !dbg !435
  %135 = load double, double* %134, align 8, !dbg !436
  %136 = fadd double %135, %132, !dbg !436
  store double %136, double* %134, align 8, !dbg !436
  store i32 0, i32* %3, align 4, !dbg !437
  br label %138, !dbg !437

; <label>:137:                                    ; preds = %41
  br label %138

; <label>:138:                                    ; preds = %25, %39, %45, %89, %137
  %139 = load i32, i32* %3, align 4, !dbg !438
  ret i32 %139, !dbg !438
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_jl_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !439 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.gsl_sf_result_struct, align 8
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !443, metadata !60), !dbg !444
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !445, metadata !60), !dbg !446
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !447, metadata !60), !dbg !448
  %34 = load i32, i32* %5, align 4, !dbg !449
  %35 = icmp slt i32 %34, 0, !dbg !451
  br i1 %35, label %39, label %36, !dbg !452

; <label>:36:                                     ; preds = %3
  %37 = load double, double* %6, align 8, !dbg !453
  %38 = fcmp olt double %37, 0.000000e+00, !dbg !455
  br i1 %38, label %39, label %48, !dbg !456

; <label>:39:                                     ; preds = %36, %3
  br label %40, !dbg !457, !llvm.loop !459

; <label>:40:                                     ; preds = %39
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !460
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !460
  store double 0x7FF8000000000000, double* %42, align 8, !dbg !460
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !460
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !460
  store double 0x7FF8000000000000, double* %44, align 8, !dbg !460
  br label %45, !dbg !460, !llvm.loop !463

; <label>:45:                                     ; preds = %40
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 162, i32 1), !dbg !465
  store i32 1, i32* %4, align 4, !dbg !465
  br label %357, !dbg !465
                                                  ; No predecessors!
  br label %47, !dbg !468

; <label>:47:                                     ; preds = %46
  br label %357, !dbg !470

; <label>:48:                                     ; preds = %36
  %49 = load double, double* %6, align 8, !dbg !471
  %50 = fcmp oeq double %49, 0.000000e+00, !dbg !473
  br i1 %50, label %51, label %59, !dbg !474

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %5, align 4, !dbg !475
  %53 = icmp sgt i32 %52, 0, !dbg !477
  %54 = select i1 %53, double 0.000000e+00, double 1.000000e+00, !dbg !475
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !478
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !479
  store double %54, double* %56, align 8, !dbg !480
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !481
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !482
  store double 0.000000e+00, double* %58, align 8, !dbg !483
  store i32 0, i32* %4, align 4, !dbg !484
  br label %357, !dbg !484

; <label>:59:                                     ; preds = %48
  %60 = load i32, i32* %5, align 4, !dbg !485
  %61 = icmp eq i32 %60, 0, !dbg !487
  br i1 %61, label %62, label %66, !dbg !488

; <label>:62:                                     ; preds = %59
  %63 = load double, double* %6, align 8, !dbg !489
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !491
  %65 = call i32 @gsl_sf_bessel_j0_e(double %63, %struct.gsl_sf_result_struct* %64), !dbg !492
  store i32 %65, i32* %4, align 4, !dbg !493
  br label %357, !dbg !493

; <label>:66:                                     ; preds = %59
  %67 = load i32, i32* %5, align 4, !dbg !494
  %68 = icmp eq i32 %67, 1, !dbg !496
  br i1 %68, label %69, label %73, !dbg !497

; <label>:69:                                     ; preds = %66
  %70 = load double, double* %6, align 8, !dbg !498
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !500
  %72 = call i32 @gsl_sf_bessel_j1_e(double %70, %struct.gsl_sf_result_struct* %71), !dbg !501
  store i32 %72, i32* %4, align 4, !dbg !502
  br label %357, !dbg !502

; <label>:73:                                     ; preds = %66
  %74 = load i32, i32* %5, align 4, !dbg !503
  %75 = icmp eq i32 %74, 2, !dbg !505
  br i1 %75, label %76, label %80, !dbg !506

; <label>:76:                                     ; preds = %73
  %77 = load double, double* %6, align 8, !dbg !507
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !509
  %79 = call i32 @gsl_sf_bessel_j2_e(double %77, %struct.gsl_sf_result_struct* %78), !dbg !510
  store i32 %79, i32* %4, align 4, !dbg !511
  br label %357, !dbg !511

; <label>:80:                                     ; preds = %73
  %81 = load double, double* %6, align 8, !dbg !512
  %82 = load double, double* %6, align 8, !dbg !514
  %83 = fmul double %81, %82, !dbg !515
  %84 = load i32, i32* %5, align 4, !dbg !516
  %85 = sitofp i32 %84 to double, !dbg !516
  %86 = fadd double %85, 5.000000e-01, !dbg !517
  %87 = fmul double 1.000000e+01, %86, !dbg !518
  %88 = fdiv double %87, 0x4005BF0A8B145769, !dbg !519
  %89 = fcmp olt double %83, %88, !dbg !520
  br i1 %89, label %90, label %121, !dbg !521

; <label>:90:                                     ; preds = %80
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !522, metadata !60), !dbg !524
  call void @llvm.dbg.declare(metadata i32* %9, metadata !525, metadata !60), !dbg !526
  %91 = load i32, i32* %5, align 4, !dbg !527
  %92 = sitofp i32 %91 to double, !dbg !527
  %93 = fadd double %92, 5.000000e-01, !dbg !528
  %94 = load double, double* %6, align 8, !dbg !529
  %95 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %93, double %94, i32 -1, i32 50, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %8), !dbg !530
  store i32 %95, i32* %9, align 4, !dbg !526
  call void @llvm.dbg.declare(metadata double* %10, metadata !531, metadata !60), !dbg !532
  %96 = load double, double* %6, align 8, !dbg !533
  %97 = fdiv double 0x3FF921FB54442D18, %96, !dbg !534
  %98 = call double @sqrt(double %97) #5, !dbg !535
  store double %98, double* %10, align 8, !dbg !532
  %99 = load double, double* %10, align 8, !dbg !536
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !537
  %101 = load double, double* %100, align 8, !dbg !537
  %102 = fmul double %99, %101, !dbg !538
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !539
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !540
  store double %102, double* %104, align 8, !dbg !541
  %105 = load double, double* %10, align 8, !dbg !542
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !543
  %107 = load double, double* %106, align 8, !dbg !543
  %108 = fmul double %105, %107, !dbg !544
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !545
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !546
  store double %108, double* %110, align 8, !dbg !547
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !548
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 0, !dbg !549
  %113 = load double, double* %112, align 8, !dbg !549
  %114 = call double @fabs(double %113) #1, !dbg !550
  %115 = fmul double 0x3CC0000000000000, %114, !dbg !551
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !552
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !553
  %118 = load double, double* %117, align 8, !dbg !554
  %119 = fadd double %118, %115, !dbg !554
  store double %119, double* %117, align 8, !dbg !554
  %120 = load i32, i32* %9, align 4, !dbg !555
  store i32 %120, i32* %4, align 4, !dbg !556
  br label %357, !dbg !556

; <label>:121:                                    ; preds = %80
  %122 = load double, double* %6, align 8, !dbg !557
  %123 = fmul double 0x3F20000000000000, %122, !dbg !559
  %124 = load i32, i32* %5, align 4, !dbg !560
  %125 = load i32, i32* %5, align 4, !dbg !561
  %126 = mul nsw i32 %124, %125, !dbg !562
  %127 = load i32, i32* %5, align 4, !dbg !563
  %128 = add nsw i32 %126, %127, !dbg !564
  %129 = sitofp i32 %128 to double, !dbg !560
  %130 = fadd double %129, 1.000000e+00, !dbg !565
  %131 = fcmp ogt double %123, %130, !dbg !566
  br i1 %131, label %132, label %160, !dbg !567

; <label>:132:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !568, metadata !60), !dbg !570
  call void @llvm.dbg.declare(metadata i32* %12, metadata !571, metadata !60), !dbg !572
  %133 = load i32, i32* %5, align 4, !dbg !573
  %134 = sitofp i32 %133 to double, !dbg !573
  %135 = fadd double %134, 5.000000e-01, !dbg !574
  %136 = load double, double* %6, align 8, !dbg !575
  %137 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %135, double %136, %struct.gsl_sf_result_struct* %11), !dbg !576
  store i32 %137, i32* %12, align 4, !dbg !572
  call void @llvm.dbg.declare(metadata double* %13, metadata !577, metadata !60), !dbg !578
  %138 = load double, double* %6, align 8, !dbg !579
  %139 = fdiv double 0x3FF921FB54442D18, %138, !dbg !580
  %140 = call double @sqrt(double %139) #5, !dbg !581
  store double %140, double* %13, align 8, !dbg !578
  %141 = load double, double* %13, align 8, !dbg !582
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !583
  %143 = load double, double* %142, align 8, !dbg !583
  %144 = fmul double %141, %143, !dbg !584
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !585
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 0, !dbg !586
  store double %144, double* %146, align 8, !dbg !587
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !588
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 0, !dbg !589
  %149 = load double, double* %148, align 8, !dbg !589
  %150 = call double @fabs(double %149) #1, !dbg !590
  %151 = fmul double 0x3CC0000000000000, %150, !dbg !591
  %152 = load double, double* %13, align 8, !dbg !592
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !593
  %154 = load double, double* %153, align 8, !dbg !593
  %155 = fmul double %152, %154, !dbg !594
  %156 = fadd double %151, %155, !dbg !595
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !596
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 1, !dbg !597
  store double %156, double* %158, align 8, !dbg !598
  %159 = load i32, i32* %12, align 4, !dbg !599
  store i32 %159, i32* %4, align 4, !dbg !600
  br label %357, !dbg !600

; <label>:160:                                    ; preds = %121
  %161 = load i32, i32* %5, align 4, !dbg !601
  %162 = sitofp i32 %161 to double, !dbg !601
  %163 = fcmp ogt double %162, 0x407965FEA53D6E3A, !dbg !603
  br i1 %163, label %164, label %192, !dbg !604

; <label>:164:                                    ; preds = %160
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !605, metadata !60), !dbg !607
  call void @llvm.dbg.declare(metadata i32* %15, metadata !608, metadata !60), !dbg !609
  %165 = load i32, i32* %5, align 4, !dbg !610
  %166 = sitofp i32 %165 to double, !dbg !610
  %167 = fadd double %166, 5.000000e-01, !dbg !611
  %168 = load double, double* %6, align 8, !dbg !612
  %169 = call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double %167, double %168, %struct.gsl_sf_result_struct* %14), !dbg !613
  store i32 %169, i32* %15, align 4, !dbg !609
  call void @llvm.dbg.declare(metadata double* %16, metadata !614, metadata !60), !dbg !615
  %170 = load double, double* %6, align 8, !dbg !616
  %171 = fdiv double 0x3FF921FB54442D18, %170, !dbg !617
  %172 = call double @sqrt(double %171) #5, !dbg !618
  store double %172, double* %16, align 8, !dbg !615
  %173 = load double, double* %16, align 8, !dbg !619
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !620
  %175 = load double, double* %174, align 8, !dbg !620
  %176 = fmul double %173, %175, !dbg !621
  %177 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !622
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %177, i32 0, i32 0, !dbg !623
  store double %176, double* %178, align 8, !dbg !624
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !625
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %179, i32 0, i32 0, !dbg !626
  %181 = load double, double* %180, align 8, !dbg !626
  %182 = call double @fabs(double %181) #1, !dbg !627
  %183 = fmul double 0x3CC0000000000000, %182, !dbg !628
  %184 = load double, double* %16, align 8, !dbg !629
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !630
  %186 = load double, double* %185, align 8, !dbg !630
  %187 = fmul double %184, %186, !dbg !631
  %188 = fadd double %183, %187, !dbg !632
  %189 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !633
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %189, i32 0, i32 1, !dbg !634
  store double %188, double* %190, align 8, !dbg !635
  %191 = load i32, i32* %15, align 4, !dbg !636
  store i32 %191, i32* %4, align 4, !dbg !637
  br label %357, !dbg !637

; <label>:192:                                    ; preds = %160
  %193 = load double, double* %6, align 8, !dbg !638
  %194 = fcmp ogt double %193, 1.000000e+03, !dbg !640
  br i1 %194, label %195, label %230, !dbg !641

; <label>:195:                                    ; preds = %192
  %196 = load double, double* %6, align 8, !dbg !642
  %197 = load i32, i32* %5, align 4, !dbg !644
  %198 = load i32, i32* %5, align 4, !dbg !645
  %199 = mul nsw i32 %197, %198, !dbg !646
  %200 = sitofp i32 %199 to double, !dbg !644
  %201 = fcmp ogt double %196, %200, !dbg !647
  br i1 %201, label %202, label %230, !dbg !648

; <label>:202:                                    ; preds = %195
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !649, metadata !60), !dbg !651
  call void @llvm.dbg.declare(metadata i32* %18, metadata !652, metadata !60), !dbg !653
  %203 = load i32, i32* %5, align 4, !dbg !654
  %204 = sitofp i32 %203 to double, !dbg !654
  %205 = fadd double %204, 5.000000e-01, !dbg !655
  %206 = load double, double* %6, align 8, !dbg !656
  %207 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %205, double %206, %struct.gsl_sf_result_struct* %17), !dbg !657
  store i32 %207, i32* %18, align 4, !dbg !653
  call void @llvm.dbg.declare(metadata double* %19, metadata !658, metadata !60), !dbg !659
  %208 = load double, double* %6, align 8, !dbg !660
  %209 = fdiv double 0x3FF921FB54442D18, %208, !dbg !661
  %210 = call double @sqrt(double %209) #5, !dbg !662
  store double %210, double* %19, align 8, !dbg !659
  %211 = load double, double* %19, align 8, !dbg !663
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !664
  %213 = load double, double* %212, align 8, !dbg !664
  %214 = fmul double %211, %213, !dbg !665
  %215 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !666
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %215, i32 0, i32 0, !dbg !667
  store double %214, double* %216, align 8, !dbg !668
  %217 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !669
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %217, i32 0, i32 0, !dbg !670
  %219 = load double, double* %218, align 8, !dbg !670
  %220 = call double @fabs(double %219) #1, !dbg !671
  %221 = fmul double 0x3CC0000000000000, %220, !dbg !672
  %222 = load double, double* %19, align 8, !dbg !673
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !674
  %224 = load double, double* %223, align 8, !dbg !674
  %225 = fmul double %222, %224, !dbg !675
  %226 = fadd double %221, %225, !dbg !676
  %227 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !677
  %228 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %227, i32 0, i32 1, !dbg !678
  store double %226, double* %228, align 8, !dbg !679
  %229 = load i32, i32* %18, align 4, !dbg !680
  store i32 %229, i32* %4, align 4, !dbg !681
  br label %357, !dbg !681

; <label>:230:                                    ; preds = %195, %192
  call void @llvm.dbg.declare(metadata double* %20, metadata !682, metadata !60), !dbg !684
  call void @llvm.dbg.declare(metadata double* %21, metadata !685, metadata !60), !dbg !686
  call void @llvm.dbg.declare(metadata i32* %22, metadata !687, metadata !60), !dbg !688
  %231 = load i32, i32* %5, align 4, !dbg !689
  %232 = sitofp i32 %231 to double, !dbg !689
  %233 = fadd double %232, 5.000000e-01, !dbg !690
  %234 = load double, double* %6, align 8, !dbg !691
  %235 = call i32 @gsl_sf_bessel_J_CF1(double %233, double %234, double* %21, double* %20), !dbg !692
  store i32 %235, i32* %22, align 4, !dbg !688
  call void @llvm.dbg.declare(metadata double* %23, metadata !693, metadata !60), !dbg !694
  store double 0x350000000000000, double* %23, align 8, !dbg !694
  call void @llvm.dbg.declare(metadata double* %24, metadata !695, metadata !60), !dbg !696
  %236 = load double, double* %21, align 8, !dbg !697
  %237 = fmul double 0x350000000000000, %236, !dbg !698
  store double %237, double* %24, align 8, !dbg !696
  call void @llvm.dbg.declare(metadata double* %25, metadata !699, metadata !60), !dbg !700
  store double 0x350000000000000, double* %25, align 8, !dbg !700
  call void @llvm.dbg.declare(metadata double* %26, metadata !701, metadata !60), !dbg !702
  call void @llvm.dbg.declare(metadata i32* %27, metadata !703, metadata !60), !dbg !704
  %238 = load i32, i32* %5, align 4, !dbg !705
  store i32 %238, i32* %27, align 4, !dbg !707
  br label %239, !dbg !708

; <label>:239:                                    ; preds = %256, %230
  %240 = load i32, i32* %27, align 4, !dbg !709
  %241 = icmp sgt i32 %240, 0, !dbg !712
  br i1 %241, label %242, label %259, !dbg !713

; <label>:242:                                    ; preds = %239
  %243 = load double, double* %24, align 8, !dbg !714
  %244 = fsub double -0.000000e+00, %243, !dbg !716
  %245 = load i32, i32* %27, align 4, !dbg !717
  %246 = mul nsw i32 2, %245, !dbg !718
  %247 = add nsw i32 %246, 1, !dbg !719
  %248 = sitofp i32 %247 to double, !dbg !720
  %249 = load double, double* %6, align 8, !dbg !721
  %250 = fdiv double %248, %249, !dbg !722
  %251 = load double, double* %25, align 8, !dbg !723
  %252 = fmul double %250, %251, !dbg !724
  %253 = fadd double %244, %252, !dbg !725
  store double %253, double* %26, align 8, !dbg !726
  %254 = load double, double* %25, align 8, !dbg !727
  store double %254, double* %24, align 8, !dbg !728
  %255 = load double, double* %26, align 8, !dbg !729
  store double %255, double* %25, align 8, !dbg !730
  br label %256, !dbg !731

; <label>:256:                                    ; preds = %242
  %257 = load i32, i32* %27, align 4, !dbg !732
  %258 = add nsw i32 %257, -1, !dbg !732
  store i32 %258, i32* %27, align 4, !dbg !732
  br label %239, !dbg !734, !llvm.loop !735

; <label>:259:                                    ; preds = %239
  %260 = load double, double* %25, align 8, !dbg !737
  %261 = call double @fabs(double %260) #1, !dbg !739
  %262 = load double, double* %24, align 8, !dbg !740
  %263 = call double @fabs(double %262) #1, !dbg !741
  %264 = fcmp ogt double %261, %263, !dbg !743
  br i1 %264, label %265, label %311, !dbg !744

; <label>:265:                                    ; preds = %259
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !745, metadata !60), !dbg !747
  call void @llvm.dbg.declare(metadata i32* %29, metadata !748, metadata !60), !dbg !749
  %266 = load double, double* %6, align 8, !dbg !750
  %267 = call i32 @gsl_sf_bessel_j0_e(double %266, %struct.gsl_sf_result_struct* %28), !dbg !751
  store i32 %267, i32* %29, align 4, !dbg !749
  call void @llvm.dbg.declare(metadata double* %30, metadata !752, metadata !60), !dbg !753
  %268 = load double, double* %25, align 8, !dbg !754
  %269 = fdiv double 0x350000000000000, %268, !dbg !755
  store double %269, double* %30, align 8, !dbg !753
  %270 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !756
  %271 = load double, double* %270, align 8, !dbg !756
  %272 = load double, double* %30, align 8, !dbg !757
  %273 = fmul double %271, %272, !dbg !758
  %274 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !759
  %275 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %274, i32 0, i32 0, !dbg !760
  store double %273, double* %275, align 8, !dbg !761
  %276 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !762
  %277 = load double, double* %276, align 8, !dbg !762
  %278 = load double, double* %30, align 8, !dbg !763
  %279 = call double @fabs(double %278) #1, !dbg !764
  %280 = fmul double %277, %279, !dbg !765
  %281 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !766
  %282 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %281, i32 0, i32 1, !dbg !767
  store double %280, double* %282, align 8, !dbg !768
  %283 = load i32, i32* %5, align 4, !dbg !769
  %284 = sitofp i32 %283 to double, !dbg !769
  %285 = fmul double 5.000000e-01, %284, !dbg !770
  %286 = fadd double %285, 1.000000e+00, !dbg !771
  %287 = fmul double 0x3CD0000000000000, %286, !dbg !772
  %288 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !773
  %289 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %288, i32 0, i32 0, !dbg !774
  %290 = load double, double* %289, align 8, !dbg !774
  %291 = call double @fabs(double %290) #1, !dbg !775
  %292 = fmul double %287, %291, !dbg !776
  %293 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !777
  %294 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %293, i32 0, i32 1, !dbg !778
  %295 = load double, double* %294, align 8, !dbg !779
  %296 = fadd double %295, %292, !dbg !779
  store double %296, double* %294, align 8, !dbg !779
  %297 = load i32, i32* %29, align 4, !dbg !780
  %298 = icmp ne i32 %297, 0, !dbg !780
  br i1 %298, label %299, label %301, !dbg !780

; <label>:299:                                    ; preds = %265
  %300 = load i32, i32* %29, align 4, !dbg !781
  br label %309, !dbg !781

; <label>:301:                                    ; preds = %265
  %302 = load i32, i32* %22, align 4, !dbg !783
  %303 = icmp ne i32 %302, 0, !dbg !783
  br i1 %303, label %304, label %306, !dbg !783

; <label>:304:                                    ; preds = %301
  %305 = load i32, i32* %22, align 4, !dbg !785
  br label %307, !dbg !785

; <label>:306:                                    ; preds = %301
  br label %307, !dbg !787

; <label>:307:                                    ; preds = %306, %304
  %308 = phi i32 [ %305, %304 ], [ 0, %306 ], !dbg !789
  br label %309, !dbg !789

; <label>:309:                                    ; preds = %307, %299
  %310 = phi i32 [ %300, %299 ], [ %308, %307 ], !dbg !791
  store i32 %310, i32* %4, align 4, !dbg !793
  br label %357, !dbg !793

; <label>:311:                                    ; preds = %259
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !794, metadata !60), !dbg !796
  call void @llvm.dbg.declare(metadata i32* %32, metadata !797, metadata !60), !dbg !798
  %312 = load double, double* %6, align 8, !dbg !799
  %313 = call i32 @gsl_sf_bessel_j1_e(double %312, %struct.gsl_sf_result_struct* %31), !dbg !800
  store i32 %313, i32* %32, align 4, !dbg !798
  call void @llvm.dbg.declare(metadata double* %33, metadata !801, metadata !60), !dbg !802
  %314 = load double, double* %24, align 8, !dbg !803
  %315 = fdiv double 0x350000000000000, %314, !dbg !804
  store double %315, double* %33, align 8, !dbg !802
  %316 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !805
  %317 = load double, double* %316, align 8, !dbg !805
  %318 = load double, double* %33, align 8, !dbg !806
  %319 = fmul double %317, %318, !dbg !807
  %320 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !808
  %321 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %320, i32 0, i32 0, !dbg !809
  store double %319, double* %321, align 8, !dbg !810
  %322 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !811
  %323 = load double, double* %322, align 8, !dbg !811
  %324 = load double, double* %33, align 8, !dbg !812
  %325 = call double @fabs(double %324) #1, !dbg !813
  %326 = fmul double %323, %325, !dbg !814
  %327 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !815
  %328 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %327, i32 0, i32 1, !dbg !816
  store double %326, double* %328, align 8, !dbg !817
  %329 = load i32, i32* %5, align 4, !dbg !818
  %330 = sitofp i32 %329 to double, !dbg !818
  %331 = fmul double 5.000000e-01, %330, !dbg !819
  %332 = fadd double %331, 1.000000e+00, !dbg !820
  %333 = fmul double 0x3CD0000000000000, %332, !dbg !821
  %334 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !822
  %335 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %334, i32 0, i32 0, !dbg !823
  %336 = load double, double* %335, align 8, !dbg !823
  %337 = call double @fabs(double %336) #1, !dbg !824
  %338 = fmul double %333, %337, !dbg !825
  %339 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !826
  %340 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %339, i32 0, i32 1, !dbg !827
  %341 = load double, double* %340, align 8, !dbg !828
  %342 = fadd double %341, %338, !dbg !828
  store double %342, double* %340, align 8, !dbg !828
  %343 = load i32, i32* %32, align 4, !dbg !829
  %344 = icmp ne i32 %343, 0, !dbg !829
  br i1 %344, label %345, label %347, !dbg !829

; <label>:345:                                    ; preds = %311
  %346 = load i32, i32* %32, align 4, !dbg !830
  br label %355, !dbg !830

; <label>:347:                                    ; preds = %311
  %348 = load i32, i32* %22, align 4, !dbg !832
  %349 = icmp ne i32 %348, 0, !dbg !832
  br i1 %349, label %350, label %352, !dbg !832

; <label>:350:                                    ; preds = %347
  %351 = load i32, i32* %22, align 4, !dbg !834
  br label %353, !dbg !834

; <label>:352:                                    ; preds = %347
  br label %353, !dbg !836

; <label>:353:                                    ; preds = %352, %350
  %354 = phi i32 [ %351, %350 ], [ 0, %352 ], !dbg !838
  br label %355, !dbg !838

; <label>:355:                                    ; preds = %353, %345
  %356 = phi i32 [ %346, %345 ], [ %354, %353 ], !dbg !840
  store i32 %356, i32* %4, align 4, !dbg !842
  br label %357, !dbg !842

; <label>:357:                                    ; preds = %45, %51, %62, %69, %76, %90, %132, %164, %202, %309, %355, %47
  %358 = load i32, i32* %4, align 4, !dbg !843
  ret i32 %358, !dbg !843
}

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare i32 @gsl_sf_bessel_Jnu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_bessel_J_CF1(double, double, double*, double*) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_jl_array(i32, double, double*) #0 !dbg !844 {
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
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !848, metadata !60), !dbg !849
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !850, metadata !60), !dbg !851
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !852, metadata !60), !dbg !853
  %18 = load i32, i32* %5, align 4, !dbg !854
  %19 = icmp slt i32 %18, 0, !dbg !856
  br i1 %19, label %23, label %20, !dbg !857

; <label>:20:                                     ; preds = %3
  %21 = load double, double* %6, align 8, !dbg !858
  %22 = fcmp olt double %21, 0.000000e+00, !dbg !860
  br i1 %22, label %23, label %39, !dbg !861

; <label>:23:                                     ; preds = %20, %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !862, metadata !60), !dbg !864
  store i32 0, i32* %8, align 4, !dbg !865
  br label %24, !dbg !867

; <label>:24:                                     ; preds = %33, %23
  %25 = load i32, i32* %8, align 4, !dbg !868
  %26 = load i32, i32* %5, align 4, !dbg !871
  %27 = icmp sle i32 %25, %26, !dbg !872
  br i1 %27, label %28, label %36, !dbg !873

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %8, align 4, !dbg !874
  %30 = sext i32 %29 to i64, !dbg !876
  %31 = load double*, double** %7, align 8, !dbg !876
  %32 = getelementptr inbounds double, double* %31, i64 %30, !dbg !876
  store double 0.000000e+00, double* %32, align 8, !dbg !877
  br label %33, !dbg !876

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %8, align 4, !dbg !878
  %35 = add nsw i32 %34, 1, !dbg !878
  store i32 %35, i32* %8, align 4, !dbg !878
  br label %24, !dbg !880, !llvm.loop !881

; <label>:36:                                     ; preds = %24
  br label %37, !dbg !883, !llvm.loop !884

; <label>:37:                                     ; preds = %36
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 259, i32 1), !dbg !885
  store i32 1, i32* %4, align 4, !dbg !885
  br label %117, !dbg !885
                                                  ; No predecessors!
  br label %117, !dbg !888

; <label>:39:                                     ; preds = %20
  %40 = load double, double* %6, align 8, !dbg !889
  %41 = fcmp oeq double %40, 0.000000e+00, !dbg !891
  br i1 %41, label %42, label %58, !dbg !892

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %9, metadata !893, metadata !60), !dbg !895
  store i32 1, i32* %9, align 4, !dbg !896
  br label %43, !dbg !898

; <label>:43:                                     ; preds = %52, %42
  %44 = load i32, i32* %9, align 4, !dbg !899
  %45 = load i32, i32* %5, align 4, !dbg !902
  %46 = icmp sle i32 %44, %45, !dbg !903
  br i1 %46, label %47, label %55, !dbg !904

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %9, align 4, !dbg !905
  %49 = sext i32 %48 to i64, !dbg !907
  %50 = load double*, double** %7, align 8, !dbg !907
  %51 = getelementptr inbounds double, double* %50, i64 %49, !dbg !907
  store double 0.000000e+00, double* %51, align 8, !dbg !908
  br label %52, !dbg !907

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %9, align 4, !dbg !909
  %54 = add nsw i32 %53, 1, !dbg !909
  store i32 %54, i32* %9, align 4, !dbg !909
  br label %43, !dbg !911, !llvm.loop !912

; <label>:55:                                     ; preds = %43
  %56 = load double*, double** %7, align 8, !dbg !914
  %57 = getelementptr inbounds double, double* %56, i64 0, !dbg !914
  store double 1.000000e+00, double* %57, align 8, !dbg !915
  store i32 0, i32* %4, align 4, !dbg !916
  br label %117, !dbg !916

; <label>:58:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !917, metadata !60), !dbg !919
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !920, metadata !60), !dbg !921
  call void @llvm.dbg.declare(metadata i32* %12, metadata !922, metadata !60), !dbg !923
  %59 = load i32, i32* %5, align 4, !dbg !924
  %60 = add nsw i32 %59, 1, !dbg !925
  %61 = load double, double* %6, align 8, !dbg !926
  %62 = call i32 @gsl_sf_bessel_jl_e(i32 %60, double %61, %struct.gsl_sf_result_struct* %10), !dbg !927
  store i32 %62, i32* %12, align 4, !dbg !923
  call void @llvm.dbg.declare(metadata i32* %13, metadata !928, metadata !60), !dbg !929
  %63 = load i32, i32* %5, align 4, !dbg !930
  %64 = load double, double* %6, align 8, !dbg !931
  %65 = call i32 @gsl_sf_bessel_jl_e(i32 %63, double %64, %struct.gsl_sf_result_struct* %11), !dbg !932
  store i32 %65, i32* %13, align 4, !dbg !929
  call void @llvm.dbg.declare(metadata double* %14, metadata !933, metadata !60), !dbg !934
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !935
  %67 = load double, double* %66, align 8, !dbg !935
  store double %67, double* %14, align 8, !dbg !934
  call void @llvm.dbg.declare(metadata double* %15, metadata !936, metadata !60), !dbg !937
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !938
  %69 = load double, double* %68, align 8, !dbg !938
  store double %69, double* %15, align 8, !dbg !937
  call void @llvm.dbg.declare(metadata double* %16, metadata !939, metadata !60), !dbg !940
  call void @llvm.dbg.declare(metadata i32* %17, metadata !941, metadata !60), !dbg !942
  %70 = load double, double* %15, align 8, !dbg !943
  %71 = load i32, i32* %5, align 4, !dbg !944
  %72 = sext i32 %71 to i64, !dbg !945
  %73 = load double*, double** %7, align 8, !dbg !945
  %74 = getelementptr inbounds double, double* %73, i64 %72, !dbg !945
  store double %70, double* %74, align 8, !dbg !946
  %75 = load i32, i32* %5, align 4, !dbg !947
  store i32 %75, i32* %17, align 4, !dbg !949
  br label %76, !dbg !950

; <label>:76:                                     ; preds = %99, %58
  %77 = load i32, i32* %17, align 4, !dbg !951
  %78 = icmp sge i32 %77, 1, !dbg !954
  br i1 %78, label %79, label %102, !dbg !955

; <label>:79:                                     ; preds = %76
  %80 = load double, double* %14, align 8, !dbg !956
  %81 = fsub double -0.000000e+00, %80, !dbg !958
  %82 = load i32, i32* %17, align 4, !dbg !959
  %83 = mul nsw i32 2, %82, !dbg !960
  %84 = add nsw i32 %83, 1, !dbg !961
  %85 = sitofp i32 %84 to double, !dbg !962
  %86 = load double, double* %6, align 8, !dbg !963
  %87 = fdiv double %85, %86, !dbg !964
  %88 = load double, double* %15, align 8, !dbg !965
  %89 = fmul double %87, %88, !dbg !966
  %90 = fadd double %81, %89, !dbg !967
  store double %90, double* %16, align 8, !dbg !968
  %91 = load double, double* %15, align 8, !dbg !969
  store double %91, double* %14, align 8, !dbg !970
  %92 = load double, double* %16, align 8, !dbg !971
  store double %92, double* %15, align 8, !dbg !972
  %93 = load double, double* %16, align 8, !dbg !973
  %94 = load i32, i32* %17, align 4, !dbg !974
  %95 = sub nsw i32 %94, 1, !dbg !975
  %96 = sext i32 %95 to i64, !dbg !976
  %97 = load double*, double** %7, align 8, !dbg !976
  %98 = getelementptr inbounds double, double* %97, i64 %96, !dbg !976
  store double %93, double* %98, align 8, !dbg !977
  br label %99, !dbg !978

; <label>:99:                                     ; preds = %79
  %100 = load i32, i32* %17, align 4, !dbg !979
  %101 = add nsw i32 %100, -1, !dbg !979
  store i32 %101, i32* %17, align 4, !dbg !979
  br label %76, !dbg !981, !llvm.loop !982

; <label>:102:                                    ; preds = %76
  %103 = load i32, i32* %12, align 4, !dbg !984
  %104 = icmp ne i32 %103, 0, !dbg !984
  br i1 %104, label %105, label %107, !dbg !984

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %12, align 4, !dbg !985
  br label %115, !dbg !985

; <label>:107:                                    ; preds = %102
  %108 = load i32, i32* %13, align 4, !dbg !987
  %109 = icmp ne i32 %108, 0, !dbg !987
  br i1 %109, label %110, label %112, !dbg !987

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %13, align 4, !dbg !989
  br label %113, !dbg !989

; <label>:112:                                    ; preds = %107
  br label %113, !dbg !991

; <label>:113:                                    ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ], !dbg !993
  br label %115, !dbg !993

; <label>:115:                                    ; preds = %113, %105
  %116 = phi i32 [ %106, %105 ], [ %114, %113 ], !dbg !995
  store i32 %116, i32* %4, align 4, !dbg !997
  br label %117, !dbg !997

; <label>:117:                                    ; preds = %37, %55, %115, %38
  %118 = load i32, i32* %4, align 4, !dbg !998
  ret i32 %118, !dbg !998
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_jl_steed_array(i32, double, double*) #0 !dbg !999 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1000, metadata !60), !dbg !1001
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1002, metadata !60), !dbg !1003
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !1004, metadata !60), !dbg !1005
  %26 = load i32, i32* %5, align 4, !dbg !1006
  %27 = icmp slt i32 %26, 0, !dbg !1008
  br i1 %27, label %31, label %28, !dbg !1009

; <label>:28:                                     ; preds = %3
  %29 = load double, double* %6, align 8, !dbg !1010
  %30 = fcmp olt double %29, 0.000000e+00, !dbg !1012
  br i1 %30, label %31, label %47, !dbg !1013

; <label>:31:                                     ; preds = %28, %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1014, metadata !60), !dbg !1016
  store i32 0, i32* %8, align 4, !dbg !1017
  br label %32, !dbg !1019

; <label>:32:                                     ; preds = %41, %31
  %33 = load i32, i32* %8, align 4, !dbg !1020
  %34 = load i32, i32* %5, align 4, !dbg !1023
  %35 = icmp sle i32 %33, %34, !dbg !1024
  br i1 %35, label %36, label %44, !dbg !1025

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %8, align 4, !dbg !1026
  %38 = sext i32 %37 to i64, !dbg !1028
  %39 = load double*, double** %7, align 8, !dbg !1028
  %40 = getelementptr inbounds double, double* %39, i64 %38, !dbg !1028
  store double 0.000000e+00, double* %40, align 8, !dbg !1029
  br label %41, !dbg !1028

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %8, align 4, !dbg !1030
  %43 = add nsw i32 %42, 1, !dbg !1030
  store i32 %43, i32* %8, align 4, !dbg !1030
  br label %32, !dbg !1032, !llvm.loop !1033

; <label>:44:                                     ; preds = %32
  br label %45, !dbg !1035, !llvm.loop !1036

; <label>:45:                                     ; preds = %44
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 297, i32 1), !dbg !1037
  store i32 1, i32* %4, align 4, !dbg !1037
  br label %268, !dbg !1037
                                                  ; No predecessors!
  br label %268, !dbg !1040

; <label>:47:                                     ; preds = %28
  %48 = load double, double* %6, align 8, !dbg !1041
  %49 = fcmp oeq double %48, 0.000000e+00, !dbg !1043
  br i1 %49, label %50, label %66, !dbg !1044

; <label>:50:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1045, metadata !60), !dbg !1047
  store i32 1, i32* %9, align 4, !dbg !1048
  br label %51, !dbg !1050

; <label>:51:                                     ; preds = %60, %50
  %52 = load i32, i32* %9, align 4, !dbg !1051
  %53 = load i32, i32* %5, align 4, !dbg !1054
  %54 = icmp sle i32 %52, %53, !dbg !1055
  br i1 %54, label %55, label %63, !dbg !1056

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %9, align 4, !dbg !1057
  %57 = sext i32 %56 to i64, !dbg !1059
  %58 = load double*, double** %7, align 8, !dbg !1059
  %59 = getelementptr inbounds double, double* %58, i64 %57, !dbg !1059
  store double 0.000000e+00, double* %59, align 8, !dbg !1060
  br label %60, !dbg !1059

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* %9, align 4, !dbg !1061
  %62 = add nsw i32 %61, 1, !dbg !1061
  store i32 %62, i32* %9, align 4, !dbg !1061
  br label %51, !dbg !1063, !llvm.loop !1064

; <label>:63:                                     ; preds = %51
  %64 = load double*, double** %7, align 8, !dbg !1066
  %65 = getelementptr inbounds double, double* %64, i64 0, !dbg !1066
  store double 1.000000e+00, double* %65, align 8, !dbg !1067
  store i32 0, i32* %4, align 4, !dbg !1068
  br label %268, !dbg !1068

; <label>:66:                                     ; preds = %47
  %67 = load double, double* %6, align 8, !dbg !1069
  %68 = fcmp olt double %67, 0x3F30000000000000, !dbg !1071
  br i1 %68, label %69, label %111, !dbg !1072

; <label>:69:                                     ; preds = %66
  call void @llvm.dbg.declare(metadata double* %10, metadata !1073, metadata !60), !dbg !1075
  store double 1.000000e+00, double* %10, align 8, !dbg !1075
  call void @llvm.dbg.declare(metadata double* %11, metadata !1076, metadata !60), !dbg !1077
  store double 1.000000e+00, double* %11, align 8, !dbg !1077
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1078, metadata !60), !dbg !1079
  store i32 0, i32* %12, align 4, !dbg !1080
  br label %70, !dbg !1082

; <label>:70:                                     ; preds = %107, %69
  %71 = load i32, i32* %12, align 4, !dbg !1083
  %72 = load i32, i32* %5, align 4, !dbg !1086
  %73 = icmp sle i32 %71, %72, !dbg !1087
  br i1 %73, label %74, label %110, !dbg !1088

; <label>:74:                                     ; preds = %70
  %75 = load double, double* %11, align 8, !dbg !1089
  %76 = load double, double* %10, align 8, !dbg !1091
  %77 = fmul double %75, %76, !dbg !1092
  %78 = load i32, i32* %12, align 4, !dbg !1093
  %79 = sext i32 %78 to i64, !dbg !1094
  %80 = load double*, double** %7, align 8, !dbg !1094
  %81 = getelementptr inbounds double, double* %80, i64 %79, !dbg !1094
  store double %77, double* %81, align 8, !dbg !1095
  %82 = load double, double* %6, align 8, !dbg !1096
  %83 = fmul double 5.000000e-01, %82, !dbg !1097
  %84 = load double, double* %6, align 8, !dbg !1098
  %85 = fmul double %83, %84, !dbg !1099
  %86 = load i32, i32* %12, align 4, !dbg !1100
  %87 = sitofp i32 %86 to double, !dbg !1100
  %88 = fmul double 2.000000e+00, %87, !dbg !1101
  %89 = fadd double %88, 3.000000e+00, !dbg !1102
  %90 = fdiv double %85, %89, !dbg !1103
  %91 = fsub double 1.000000e+00, %90, !dbg !1104
  %92 = load i32, i32* %12, align 4, !dbg !1105
  %93 = sext i32 %92 to i64, !dbg !1106
  %94 = load double*, double** %7, align 8, !dbg !1106
  %95 = getelementptr inbounds double, double* %94, i64 %93, !dbg !1106
  %96 = load double, double* %95, align 8, !dbg !1107
  %97 = fmul double %96, %91, !dbg !1107
  store double %97, double* %95, align 8, !dbg !1107
  %98 = load i32, i32* %12, align 4, !dbg !1108
  %99 = sitofp i32 %98 to double, !dbg !1108
  %100 = fmul double 2.000000e+00, %99, !dbg !1109
  %101 = fadd double %100, 3.000000e+00, !dbg !1110
  %102 = load double, double* %10, align 8, !dbg !1111
  %103 = fdiv double %102, %101, !dbg !1111
  store double %103, double* %10, align 8, !dbg !1111
  %104 = load double, double* %6, align 8, !dbg !1112
  %105 = load double, double* %11, align 8, !dbg !1113
  %106 = fmul double %105, %104, !dbg !1113
  store double %106, double* %11, align 8, !dbg !1113
  br label %107, !dbg !1114

; <label>:107:                                    ; preds = %74
  %108 = load i32, i32* %12, align 4, !dbg !1115
  %109 = add nsw i32 %108, 1, !dbg !1115
  store i32 %109, i32* %12, align 4, !dbg !1115
  br label %70, !dbg !1117, !llvm.loop !1118

; <label>:110:                                    ; preds = %70
  store i32 0, i32* %4, align 4, !dbg !1120
  br label %268, !dbg !1120

; <label>:111:                                    ; preds = %66
  call void @llvm.dbg.declare(metadata double* %13, metadata !1121, metadata !60), !dbg !1123
  %112 = load double, double* %6, align 8, !dbg !1124
  %113 = fdiv double 1.000000e+00, %112, !dbg !1125
  store double %113, double* %13, align 8, !dbg !1123
  call void @llvm.dbg.declare(metadata double* %14, metadata !1126, metadata !60), !dbg !1127
  %114 = load double, double* %13, align 8, !dbg !1128
  %115 = fmul double 2.000000e+00, %114, !dbg !1129
  store double %115, double* %14, align 8, !dbg !1127
  call void @llvm.dbg.declare(metadata double* %15, metadata !1130, metadata !60), !dbg !1131
  store double 1.000000e+00, double* %15, align 8, !dbg !1131
  call void @llvm.dbg.declare(metadata double* %16, metadata !1132, metadata !60), !dbg !1133
  %116 = load i32, i32* %5, align 4, !dbg !1134
  %117 = sitofp i32 %116 to double, !dbg !1134
  %118 = fadd double %117, 1.000000e+00, !dbg !1135
  %119 = load double, double* %13, align 8, !dbg !1136
  %120 = fmul double %118, %119, !dbg !1137
  store double %120, double* %16, align 8, !dbg !1133
  call void @llvm.dbg.declare(metadata double* %17, metadata !1138, metadata !60), !dbg !1139
  %121 = load double, double* %16, align 8, !dbg !1140
  %122 = fmul double 2.000000e+00, %121, !dbg !1141
  %123 = load double, double* %13, align 8, !dbg !1142
  %124 = fadd double %122, %123, !dbg !1143
  store double %124, double* %17, align 8, !dbg !1139
  call void @llvm.dbg.declare(metadata double* %18, metadata !1144, metadata !60), !dbg !1145
  %125 = load double, double* %17, align 8, !dbg !1146
  %126 = load double, double* %14, align 8, !dbg !1147
  %127 = fmul double 2.000000e+04, %126, !dbg !1148
  %128 = fadd double %125, %127, !dbg !1149
  store double %128, double* %18, align 8, !dbg !1145
  call void @llvm.dbg.declare(metadata double* %19, metadata !1150, metadata !60), !dbg !1151
  %129 = load double, double* %17, align 8, !dbg !1152
  %130 = fdiv double 1.000000e+00, %129, !dbg !1153
  store double %130, double* %19, align 8, !dbg !1151
  call void @llvm.dbg.declare(metadata double* %20, metadata !1154, metadata !60), !dbg !1155
  %131 = load double, double* %19, align 8, !dbg !1156
  %132 = fsub double -0.000000e+00, %131, !dbg !1157
  store double %132, double* %20, align 8, !dbg !1155
  %133 = load double, double* %20, align 8, !dbg !1158
  %134 = load double, double* %16, align 8, !dbg !1159
  %135 = fadd double %134, %133, !dbg !1159
  store double %135, double* %16, align 8, !dbg !1159
  br label %136, !dbg !1160, !llvm.loop !1161

; <label>:136:                                    ; preds = %166, %111
  %137 = load double, double* %14, align 8, !dbg !1162
  %138 = load double, double* %17, align 8, !dbg !1164
  %139 = fadd double %138, %137, !dbg !1164
  store double %139, double* %17, align 8, !dbg !1164
  %140 = load double, double* %17, align 8, !dbg !1165
  %141 = load double, double* %19, align 8, !dbg !1166
  %142 = fsub double %140, %141, !dbg !1167
  %143 = fdiv double 1.000000e+00, %142, !dbg !1168
  store double %143, double* %19, align 8, !dbg !1169
  %144 = load double, double* %17, align 8, !dbg !1170
  %145 = load double, double* %19, align 8, !dbg !1171
  %146 = fmul double %144, %145, !dbg !1172
  %147 = fsub double %146, 1.000000e+00, !dbg !1173
  %148 = load double, double* %20, align 8, !dbg !1174
  %149 = fmul double %148, %147, !dbg !1174
  store double %149, double* %20, align 8, !dbg !1174
  %150 = load double, double* %20, align 8, !dbg !1175
  %151 = load double, double* %16, align 8, !dbg !1176
  %152 = fadd double %151, %150, !dbg !1176
  store double %152, double* %16, align 8, !dbg !1176
  %153 = load double, double* %19, align 8, !dbg !1177
  %154 = fcmp olt double %153, 0.000000e+00, !dbg !1179
  br i1 %154, label %155, label %158, !dbg !1180

; <label>:155:                                    ; preds = %136
  %156 = load double, double* %15, align 8, !dbg !1181
  %157 = fsub double -0.000000e+00, %156, !dbg !1183
  store double %157, double* %15, align 8, !dbg !1184
  br label %158, !dbg !1185

; <label>:158:                                    ; preds = %155, %136
  %159 = load double, double* %17, align 8, !dbg !1186
  %160 = load double, double* %18, align 8, !dbg !1188
  %161 = fcmp ogt double %159, %160, !dbg !1189
  br i1 %161, label %162, label %165, !dbg !1190

; <label>:162:                                    ; preds = %158
  br label %163, !dbg !1191, !llvm.loop !1193

; <label>:163:                                    ; preds = %162
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 339, i32 11), !dbg !1194
  store i32 11, i32* %4, align 4, !dbg !1194
  br label %268, !dbg !1194
                                                  ; No predecessors!
  br label %165, !dbg !1197

; <label>:165:                                    ; preds = %164, %158
  br label %166, !dbg !1198

; <label>:166:                                    ; preds = %165
  %167 = load double, double* %20, align 8, !dbg !1199
  %168 = call double @fabs(double %167) #1, !dbg !1200
  %169 = load double, double* %16, align 8, !dbg !1201
  %170 = call double @fabs(double %169) #1, !dbg !1202
  %171 = fmul double %170, 0x3CB0000000000000, !dbg !1204
  %172 = fcmp oge double %168, %171, !dbg !1205
  br i1 %172, label %136, label %173, !dbg !1206, !llvm.loop !1161

; <label>:173:                                    ; preds = %166
  %174 = load double, double* %15, align 8, !dbg !1208
  %175 = load double, double* %16, align 8, !dbg !1209
  %176 = fmul double %175, %174, !dbg !1209
  store double %176, double* %16, align 8, !dbg !1209
  %177 = load i32, i32* %5, align 4, !dbg !1210
  %178 = icmp sgt i32 %177, 0, !dbg !1212
  br i1 %178, label %179, label %237, !dbg !1213

; <label>:179:                                    ; preds = %173
  call void @llvm.dbg.declare(metadata double* %21, metadata !1214, metadata !60), !dbg !1216
  %180 = load double, double* %16, align 8, !dbg !1217
  store double %180, double* %21, align 8, !dbg !1216
  call void @llvm.dbg.declare(metadata double* %22, metadata !1218, metadata !60), !dbg !1219
  %181 = load i32, i32* %5, align 4, !dbg !1220
  %182 = sitofp i32 %181 to double, !dbg !1220
  %183 = load double, double* %13, align 8, !dbg !1221
  %184 = fmul double %182, %183, !dbg !1222
  store double %184, double* %22, align 8, !dbg !1219
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1223, metadata !60), !dbg !1224
  %185 = load i32, i32* %5, align 4, !dbg !1225
  store i32 %185, i32* %23, align 4, !dbg !1224
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1226, metadata !60), !dbg !1227
  %186 = load double, double* %15, align 8, !dbg !1228
  %187 = load i32, i32* %5, align 4, !dbg !1229
  %188 = sext i32 %187 to i64, !dbg !1230
  %189 = load double*, double** %7, align 8, !dbg !1230
  %190 = getelementptr inbounds double, double* %189, i64 %188, !dbg !1230
  store double %186, double* %190, align 8, !dbg !1231
  store i32 1, i32* %24, align 4, !dbg !1232
  br label %191, !dbg !1234

; <label>:191:                                    ; preds = %230, %179
  %192 = load i32, i32* %24, align 4, !dbg !1235
  %193 = load i32, i32* %5, align 4, !dbg !1238
  %194 = icmp sle i32 %192, %193, !dbg !1239
  br i1 %194, label %195, label %233, !dbg !1240

; <label>:195:                                    ; preds = %191
  %196 = load double, double* %22, align 8, !dbg !1241
  %197 = load i32, i32* %23, align 4, !dbg !1243
  %198 = sext i32 %197 to i64, !dbg !1244
  %199 = load double*, double** %7, align 8, !dbg !1244
  %200 = getelementptr inbounds double, double* %199, i64 %198, !dbg !1244
  %201 = load double, double* %200, align 8, !dbg !1244
  %202 = fmul double %196, %201, !dbg !1245
  %203 = load double, double* %21, align 8, !dbg !1246
  %204 = fadd double %202, %203, !dbg !1247
  %205 = load i32, i32* %23, align 4, !dbg !1248
  %206 = sub nsw i32 %205, 1, !dbg !1249
  %207 = sext i32 %206 to i64, !dbg !1250
  %208 = load double*, double** %7, align 8, !dbg !1250
  %209 = getelementptr inbounds double, double* %208, i64 %207, !dbg !1250
  store double %204, double* %209, align 8, !dbg !1251
  %210 = load double, double* %22, align 8, !dbg !1252
  %211 = load i32, i32* %23, align 4, !dbg !1253
  %212 = sub nsw i32 %211, 1, !dbg !1254
  %213 = sext i32 %212 to i64, !dbg !1255
  %214 = load double*, double** %7, align 8, !dbg !1255
  %215 = getelementptr inbounds double, double* %214, i64 %213, !dbg !1255
  %216 = load double, double* %215, align 8, !dbg !1255
  %217 = fmul double %210, %216, !dbg !1256
  %218 = load i32, i32* %23, align 4, !dbg !1257
  %219 = sext i32 %218 to i64, !dbg !1258
  %220 = load double*, double** %7, align 8, !dbg !1258
  %221 = getelementptr inbounds double, double* %220, i64 %219, !dbg !1258
  %222 = load double, double* %221, align 8, !dbg !1258
  %223 = fsub double %217, %222, !dbg !1259
  store double %223, double* %16, align 8, !dbg !1260
  %224 = load double, double* %16, align 8, !dbg !1261
  store double %224, double* %21, align 8, !dbg !1262
  %225 = load double, double* %13, align 8, !dbg !1263
  %226 = load double, double* %22, align 8, !dbg !1264
  %227 = fsub double %226, %225, !dbg !1264
  store double %227, double* %22, align 8, !dbg !1264
  %228 = load i32, i32* %23, align 4, !dbg !1265
  %229 = add nsw i32 %228, -1, !dbg !1265
  store i32 %229, i32* %23, align 4, !dbg !1265
  br label %230, !dbg !1266

; <label>:230:                                    ; preds = %195
  %231 = load i32, i32* %24, align 4, !dbg !1267
  %232 = add nsw i32 %231, 1, !dbg !1267
  store i32 %232, i32* %24, align 4, !dbg !1267
  br label %191, !dbg !1269, !llvm.loop !1270

; <label>:233:                                    ; preds = %191
  %234 = load double*, double** %7, align 8, !dbg !1272
  %235 = getelementptr inbounds double, double* %234, i64 0, !dbg !1272
  %236 = load double, double* %235, align 8, !dbg !1272
  store double %236, double* %15, align 8, !dbg !1273
  br label %237, !dbg !1274

; <label>:237:                                    ; preds = %233, %173
  %238 = load double, double* %13, align 8, !dbg !1275
  %239 = load double, double* %16, align 8, !dbg !1276
  %240 = load double, double* %15, align 8, !dbg !1277
  %241 = call double @hypot(double %239, double %240) #5, !dbg !1278
  %242 = fdiv double %238, %241, !dbg !1279
  store double %242, double* %14, align 8, !dbg !1280
  %243 = load double, double* %14, align 8, !dbg !1281
  %244 = load double, double* %15, align 8, !dbg !1282
  %245 = fmul double %243, %244, !dbg !1283
  %246 = load double*, double** %7, align 8, !dbg !1284
  %247 = getelementptr inbounds double, double* %246, i64 0, !dbg !1284
  store double %245, double* %247, align 8, !dbg !1285
  %248 = load i32, i32* %5, align 4, !dbg !1286
  %249 = icmp sgt i32 %248, 0, !dbg !1288
  br i1 %249, label %250, label %267, !dbg !1289

; <label>:250:                                    ; preds = %237
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1290, metadata !60), !dbg !1292
  store i32 1, i32* %25, align 4, !dbg !1293
  br label %251, !dbg !1295

; <label>:251:                                    ; preds = %263, %250
  %252 = load i32, i32* %25, align 4, !dbg !1296
  %253 = load i32, i32* %5, align 4, !dbg !1299
  %254 = icmp sle i32 %252, %253, !dbg !1300
  br i1 %254, label %255, label %266, !dbg !1301

; <label>:255:                                    ; preds = %251
  %256 = load double, double* %14, align 8, !dbg !1302
  %257 = load i32, i32* %25, align 4, !dbg !1304
  %258 = sext i32 %257 to i64, !dbg !1305
  %259 = load double*, double** %7, align 8, !dbg !1305
  %260 = getelementptr inbounds double, double* %259, i64 %258, !dbg !1305
  %261 = load double, double* %260, align 8, !dbg !1306
  %262 = fmul double %261, %256, !dbg !1306
  store double %262, double* %260, align 8, !dbg !1306
  br label %263, !dbg !1307

; <label>:263:                                    ; preds = %255
  %264 = load i32, i32* %25, align 4, !dbg !1308
  %265 = add nsw i32 %264, 1, !dbg !1308
  store i32 %265, i32* %25, align 4, !dbg !1308
  br label %251, !dbg !1310, !llvm.loop !1311

; <label>:266:                                    ; preds = %251
  br label %267, !dbg !1313

; <label>:267:                                    ; preds = %266, %237
  store i32 0, i32* %4, align 4, !dbg !1314
  br label %268, !dbg !1314

; <label>:268:                                    ; preds = %45, %63, %110, %163, %267, %46
  %269 = load i32, i32* %4, align 4, !dbg !1315
  ret i32 %269, !dbg !1315
}

; Function Attrs: nounwind
declare double @hypot(double, double) #3

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_j0(double) #0 !dbg !1316 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1319, metadata !60), !dbg !1320
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1321, metadata !60), !dbg !1322
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1323, metadata !60), !dbg !1322
  %6 = load double, double* %3, align 8, !dbg !1322
  %7 = call i32 @gsl_sf_bessel_j0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1322
  store i32 %7, i32* %5, align 4, !dbg !1322
  %8 = load i32, i32* %5, align 4, !dbg !1324
  %9 = icmp ne i32 %8, 0, !dbg !1324
  br i1 %9, label %10, label %16, !dbg !1322

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1326, !llvm.loop !1329

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1331
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 384, i32 %12), !dbg !1331
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1331
  %14 = load double, double* %13, align 8, !dbg !1331
  store double %14, double* %2, align 8, !dbg !1331
  br label %19, !dbg !1331
                                                  ; No predecessors!
  br label %16, !dbg !1334

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1336
  %18 = load double, double* %17, align 8, !dbg !1336
  store double %18, double* %2, align 8, !dbg !1336
  br label %19, !dbg !1336

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1338
  ret double %20, !dbg !1338
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_j1(double) #0 !dbg !1339 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1340, metadata !60), !dbg !1341
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1342, metadata !60), !dbg !1343
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1344, metadata !60), !dbg !1343
  %6 = load double, double* %3, align 8, !dbg !1343
  %7 = call i32 @gsl_sf_bessel_j1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1343
  store i32 %7, i32* %5, align 4, !dbg !1343
  %8 = load i32, i32* %5, align 4, !dbg !1345
  %9 = icmp ne i32 %8, 0, !dbg !1345
  br i1 %9, label %10, label %16, !dbg !1343

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1347, !llvm.loop !1350

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1352
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 389, i32 %12), !dbg !1352
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1352
  %14 = load double, double* %13, align 8, !dbg !1352
  store double %14, double* %2, align 8, !dbg !1352
  br label %19, !dbg !1352
                                                  ; No predecessors!
  br label %16, !dbg !1355

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1357
  %18 = load double, double* %17, align 8, !dbg !1357
  store double %18, double* %2, align 8, !dbg !1357
  br label %19, !dbg !1357

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1359
  ret double %20, !dbg !1359
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_j2(double) #0 !dbg !1360 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1361, metadata !60), !dbg !1362
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1363, metadata !60), !dbg !1364
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1365, metadata !60), !dbg !1364
  %6 = load double, double* %3, align 8, !dbg !1364
  %7 = call i32 @gsl_sf_bessel_j2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1364
  store i32 %7, i32* %5, align 4, !dbg !1364
  %8 = load i32, i32* %5, align 4, !dbg !1366
  %9 = icmp ne i32 %8, 0, !dbg !1366
  br i1 %9, label %10, label %16, !dbg !1364

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1368, !llvm.loop !1371

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1373
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 394, i32 %12), !dbg !1373
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1373
  %14 = load double, double* %13, align 8, !dbg !1373
  store double %14, double* %2, align 8, !dbg !1373
  br label %19, !dbg !1373
                                                  ; No predecessors!
  br label %16, !dbg !1376

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1378
  %18 = load double, double* %17, align 8, !dbg !1378
  store double %18, double* %2, align 8, !dbg !1378
  br label %19, !dbg !1378

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1380
  ret double %20, !dbg !1380
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_jl(i32, double) #0 !dbg !1381 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1384, metadata !60), !dbg !1385
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1386, metadata !60), !dbg !1387
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1388, metadata !60), !dbg !1389
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1390, metadata !60), !dbg !1389
  %8 = load i32, i32* %4, align 4, !dbg !1389
  %9 = load double, double* %5, align 8, !dbg !1389
  %10 = call i32 @gsl_sf_bessel_jl_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1389
  store i32 %10, i32* %7, align 4, !dbg !1389
  %11 = load i32, i32* %7, align 4, !dbg !1391
  %12 = icmp ne i32 %11, 0, !dbg !1391
  br i1 %12, label %13, label %19, !dbg !1389

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1393, !llvm.loop !1396

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1398
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 399, i32 %15), !dbg !1398
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1398
  %17 = load double, double* %16, align 8, !dbg !1398
  store double %17, double* %3, align 8, !dbg !1398
  br label %22, !dbg !1398
                                                  ; No predecessors!
  br label %19, !dbg !1401

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1403
  %21 = load double, double* %20, align 8, !dbg !1403
  store double %21, double* %3, align 8, !dbg !1403
  br label %22, !dbg !1403

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1405
  ret double %23, !dbg !1405
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "bessel_j.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_bessel_j0_e", scope: !1, file: !1, line: 36, type: !46, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
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
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 36, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 36, column: 37, scope: !45)
!62 = !DILocalVariable(name: "result", arg: 2, scope: !45, file: !1, line: 36, type: !51)
!63 = !DILocation(line: 36, column: 56, scope: !45)
!64 = !DILocalVariable(name: "ax", scope: !45, file: !1, line: 38, type: !50)
!65 = !DILocation(line: 38, column: 10, scope: !45)
!66 = !DILocation(line: 38, column: 20, scope: !45)
!67 = !DILocation(line: 38, column: 15, scope: !45)
!68 = !DILocation(line: 42, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !45, file: !1, line: 42, column: 6)
!70 = !DILocation(line: 42, column: 9, scope: !69)
!71 = !DILocation(line: 42, column: 6, scope: !45)
!72 = !DILocalVariable(name: "y", scope: !73, file: !1, line: 43, type: !49)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 42, column: 16)
!74 = !DILocation(line: 43, column: 18, scope: !73)
!75 = !DILocation(line: 43, column: 22, scope: !73)
!76 = !DILocation(line: 43, column: 24, scope: !73)
!77 = !DILocation(line: 43, column: 23, scope: !73)
!78 = !DILocalVariable(name: "c1", scope: !73, file: !1, line: 44, type: !49)
!79 = !DILocation(line: 44, column: 18, scope: !73)
!80 = !DILocalVariable(name: "c2", scope: !73, file: !1, line: 45, type: !49)
!81 = !DILocation(line: 45, column: 18, scope: !73)
!82 = !DILocalVariable(name: "c3", scope: !73, file: !1, line: 46, type: !49)
!83 = !DILocation(line: 46, column: 18, scope: !73)
!84 = !DILocalVariable(name: "c4", scope: !73, file: !1, line: 47, type: !49)
!85 = !DILocation(line: 47, column: 18, scope: !73)
!86 = !DILocalVariable(name: "c5", scope: !73, file: !1, line: 48, type: !49)
!87 = !DILocation(line: 48, column: 18, scope: !73)
!88 = !DILocalVariable(name: "c6", scope: !73, file: !1, line: 49, type: !49)
!89 = !DILocation(line: 49, column: 18, scope: !73)
!90 = !DILocation(line: 50, column: 25, scope: !73)
!91 = !DILocation(line: 50, column: 33, scope: !73)
!92 = !DILocation(line: 50, column: 41, scope: !73)
!93 = !DILocation(line: 50, column: 49, scope: !73)
!94 = !DILocation(line: 50, column: 57, scope: !73)
!95 = !DILocation(line: 50, column: 65, scope: !73)
!96 = !DILocation(line: 50, column: 66, scope: !73)
!97 = !DILocation(line: 50, column: 63, scope: !73)
!98 = !DILocation(line: 50, column: 58, scope: !73)
!99 = !DILocation(line: 50, column: 55, scope: !73)
!100 = !DILocation(line: 50, column: 50, scope: !73)
!101 = !DILocation(line: 50, column: 47, scope: !73)
!102 = !DILocation(line: 50, column: 42, scope: !73)
!103 = !DILocation(line: 50, column: 39, scope: !73)
!104 = !DILocation(line: 50, column: 34, scope: !73)
!105 = !DILocation(line: 50, column: 31, scope: !73)
!106 = !DILocation(line: 50, column: 26, scope: !73)
!107 = !DILocation(line: 50, column: 23, scope: !73)
!108 = !DILocation(line: 50, column: 5, scope: !73)
!109 = !DILocation(line: 50, column: 13, scope: !73)
!110 = !DILocation(line: 50, column: 17, scope: !73)
!111 = !DILocation(line: 51, column: 48, scope: !73)
!112 = !DILocation(line: 51, column: 56, scope: !73)
!113 = !DILocation(line: 51, column: 43, scope: !73)
!114 = !DILocation(line: 51, column: 41, scope: !73)
!115 = !DILocation(line: 51, column: 5, scope: !73)
!116 = !DILocation(line: 51, column: 13, scope: !73)
!117 = !DILocation(line: 51, column: 17, scope: !73)
!118 = !DILocation(line: 52, column: 5, scope: !73)
!119 = !DILocation(line: 55, column: 23, scope: !120)
!120 = distinct !DILexicalBlock(scope: !69, file: !1, line: 54, column: 8)
!121 = !DILocation(line: 55, column: 19, scope: !120)
!122 = !DILocation(line: 55, column: 28, scope: !120)
!123 = !DILocation(line: 55, column: 26, scope: !120)
!124 = !DILocation(line: 55, column: 5, scope: !120)
!125 = !DILocation(line: 55, column: 13, scope: !120)
!126 = !DILocation(line: 55, column: 17, scope: !120)
!127 = !DILocation(line: 56, column: 48, scope: !120)
!128 = !DILocation(line: 56, column: 56, scope: !120)
!129 = !DILocation(line: 56, column: 43, scope: !120)
!130 = !DILocation(line: 56, column: 41, scope: !120)
!131 = !DILocation(line: 56, column: 5, scope: !120)
!132 = !DILocation(line: 56, column: 13, scope: !120)
!133 = !DILocation(line: 56, column: 17, scope: !120)
!134 = !DILocation(line: 57, column: 5, scope: !120)
!135 = !DILocation(line: 59, column: 1, scope: !45)
!136 = distinct !DISubprogram(name: "gsl_sf_bessel_j1_e", scope: !1, file: !1, line: 62, type: !46, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!137 = !DILocalVariable(name: "x", arg: 1, scope: !136, file: !1, line: 62, type: !49)
!138 = !DILocation(line: 62, column: 37, scope: !136)
!139 = !DILocalVariable(name: "result", arg: 2, scope: !136, file: !1, line: 62, type: !51)
!140 = !DILocation(line: 62, column: 56, scope: !136)
!141 = !DILocalVariable(name: "ax", scope: !136, file: !1, line: 64, type: !50)
!142 = !DILocation(line: 64, column: 10, scope: !136)
!143 = !DILocation(line: 64, column: 20, scope: !136)
!144 = !DILocation(line: 64, column: 15, scope: !136)
!145 = !DILocation(line: 68, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !136, file: !1, line: 68, column: 6)
!147 = !DILocation(line: 68, column: 8, scope: !146)
!148 = !DILocation(line: 68, column: 6, scope: !136)
!149 = !DILocation(line: 69, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 68, column: 16)
!151 = !DILocation(line: 69, column: 13, scope: !150)
!152 = !DILocation(line: 69, column: 17, scope: !150)
!153 = !DILocation(line: 70, column: 5, scope: !150)
!154 = !DILocation(line: 70, column: 13, scope: !150)
!155 = !DILocation(line: 70, column: 17, scope: !150)
!156 = !DILocation(line: 71, column: 5, scope: !150)
!157 = !DILocation(line: 73, column: 11, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !1, line: 73, column: 11)
!159 = !DILocation(line: 73, column: 14, scope: !158)
!160 = !DILocation(line: 73, column: 11, scope: !146)
!161 = !DILocation(line: 74, column: 5, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 73, column: 33)
!163 = distinct !{!163, !161}
!164 = !DILocation(line: 74, column: 5, scope: !165)
!165 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 1)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 74, column: 5)
!167 = distinct !{!167, !168}
!168 = !DILocation(line: 74, column: 5, scope: !166)
!169 = !DILocation(line: 74, column: 5, scope: !170)
!170 = !DILexicalBlockFile(scope: !171, file: !1, discriminator: 2)
!171 = distinct !DILexicalBlock(scope: !166, file: !1, line: 74, column: 5)
!172 = !DILocation(line: 74, column: 5, scope: !173)
!173 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 3)
!174 = !DILocation(line: 75, column: 3, scope: !162)
!175 = !DILocation(line: 76, column: 11, scope: !176)
!176 = distinct !DILexicalBlock(scope: !158, file: !1, line: 76, column: 11)
!177 = !DILocation(line: 76, column: 14, scope: !176)
!178 = !DILocation(line: 76, column: 11, scope: !158)
!179 = !DILocalVariable(name: "y", scope: !180, file: !1, line: 77, type: !49)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 76, column: 22)
!181 = !DILocation(line: 77, column: 18, scope: !180)
!182 = !DILocation(line: 77, column: 22, scope: !180)
!183 = !DILocation(line: 77, column: 24, scope: !180)
!184 = !DILocation(line: 77, column: 23, scope: !180)
!185 = !DILocalVariable(name: "c1", scope: !180, file: !1, line: 78, type: !49)
!186 = !DILocation(line: 78, column: 18, scope: !180)
!187 = !DILocalVariable(name: "c2", scope: !180, file: !1, line: 79, type: !49)
!188 = !DILocation(line: 79, column: 18, scope: !180)
!189 = !DILocalVariable(name: "c3", scope: !180, file: !1, line: 80, type: !49)
!190 = !DILocation(line: 80, column: 18, scope: !180)
!191 = !DILocalVariable(name: "c4", scope: !180, file: !1, line: 81, type: !49)
!192 = !DILocation(line: 81, column: 18, scope: !180)
!193 = !DILocalVariable(name: "c5", scope: !180, file: !1, line: 82, type: !49)
!194 = !DILocation(line: 82, column: 18, scope: !180)
!195 = !DILocalVariable(name: "sum", scope: !180, file: !1, line: 83, type: !49)
!196 = !DILocation(line: 83, column: 18, scope: !180)
!197 = !DILocation(line: 83, column: 30, scope: !180)
!198 = !DILocation(line: 83, column: 38, scope: !180)
!199 = !DILocation(line: 83, column: 46, scope: !180)
!200 = !DILocation(line: 83, column: 54, scope: !180)
!201 = !DILocation(line: 83, column: 62, scope: !180)
!202 = !DILocation(line: 83, column: 63, scope: !180)
!203 = !DILocation(line: 83, column: 60, scope: !180)
!204 = !DILocation(line: 83, column: 55, scope: !180)
!205 = !DILocation(line: 83, column: 52, scope: !180)
!206 = !DILocation(line: 83, column: 47, scope: !180)
!207 = !DILocation(line: 83, column: 44, scope: !180)
!208 = !DILocation(line: 83, column: 39, scope: !180)
!209 = !DILocation(line: 83, column: 36, scope: !180)
!210 = !DILocation(line: 83, column: 31, scope: !180)
!211 = !DILocation(line: 83, column: 28, scope: !180)
!212 = !DILocation(line: 84, column: 19, scope: !180)
!213 = !DILocation(line: 84, column: 20, scope: !180)
!214 = !DILocation(line: 84, column: 27, scope: !180)
!215 = !DILocation(line: 84, column: 25, scope: !180)
!216 = !DILocation(line: 84, column: 5, scope: !180)
!217 = !DILocation(line: 84, column: 13, scope: !180)
!218 = !DILocation(line: 84, column: 17, scope: !180)
!219 = !DILocation(line: 85, column: 48, scope: !180)
!220 = !DILocation(line: 85, column: 56, scope: !180)
!221 = !DILocation(line: 85, column: 43, scope: !180)
!222 = !DILocation(line: 85, column: 41, scope: !180)
!223 = !DILocation(line: 85, column: 5, scope: !180)
!224 = !DILocation(line: 85, column: 13, scope: !180)
!225 = !DILocation(line: 85, column: 17, scope: !180)
!226 = !DILocation(line: 86, column: 5, scope: !180)
!227 = !DILocalVariable(name: "cos_x", scope: !228, file: !1, line: 89, type: !49)
!228 = distinct !DILexicalBlock(scope: !176, file: !1, line: 88, column: 8)
!229 = !DILocation(line: 89, column: 18, scope: !228)
!230 = !DILocation(line: 89, column: 30, scope: !228)
!231 = !DILocation(line: 89, column: 26, scope: !228)
!232 = !DILocalVariable(name: "sin_x", scope: !228, file: !1, line: 90, type: !49)
!233 = !DILocation(line: 90, column: 18, scope: !228)
!234 = !DILocation(line: 90, column: 30, scope: !228)
!235 = !DILocation(line: 90, column: 26, scope: !228)
!236 = !DILocation(line: 91, column: 21, scope: !228)
!237 = !DILocation(line: 91, column: 27, scope: !228)
!238 = !DILocation(line: 91, column: 26, scope: !228)
!239 = !DILocation(line: 91, column: 31, scope: !228)
!240 = !DILocation(line: 91, column: 29, scope: !228)
!241 = !DILocation(line: 91, column: 38, scope: !228)
!242 = !DILocation(line: 91, column: 37, scope: !228)
!243 = !DILocation(line: 91, column: 5, scope: !228)
!244 = !DILocation(line: 91, column: 13, scope: !228)
!245 = !DILocation(line: 91, column: 18, scope: !228)
!246 = !DILocation(line: 92, column: 50, scope: !228)
!247 = !DILocation(line: 92, column: 57, scope: !228)
!248 = !DILocation(line: 92, column: 59, scope: !228)
!249 = !DILocation(line: 92, column: 58, scope: !228)
!250 = !DILocation(line: 92, column: 55, scope: !228)
!251 = !DILocation(line: 92, column: 45, scope: !228)
!252 = !DILocation(line: 92, column: 70, scope: !228)
!253 = !DILocation(line: 92, column: 76, scope: !228)
!254 = !DILocation(line: 92, column: 75, scope: !228)
!255 = !DILocation(line: 92, column: 65, scope: !256)
!256 = !DILexicalBlockFile(scope: !228, file: !1, discriminator: 1)
!257 = !DILocation(line: 92, column: 63, scope: !228)
!258 = !DILocation(line: 92, column: 42, scope: !228)
!259 = !DILocation(line: 92, column: 5, scope: !228)
!260 = !DILocation(line: 92, column: 13, scope: !228)
!261 = !DILocation(line: 92, column: 18, scope: !228)
!262 = !DILocation(line: 93, column: 49, scope: !228)
!263 = !DILocation(line: 93, column: 57, scope: !228)
!264 = !DILocation(line: 93, column: 44, scope: !228)
!265 = !DILocation(line: 93, column: 42, scope: !228)
!266 = !DILocation(line: 93, column: 5, scope: !228)
!267 = !DILocation(line: 93, column: 13, scope: !228)
!268 = !DILocation(line: 93, column: 17, scope: !228)
!269 = !DILocation(line: 94, column: 5, scope: !228)
!270 = !DILocation(line: 96, column: 1, scope: !136)
!271 = distinct !DISubprogram(name: "gsl_sf_bessel_j2_e", scope: !1, file: !1, line: 99, type: !46, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!272 = !DILocalVariable(name: "x", arg: 1, scope: !271, file: !1, line: 99, type: !49)
!273 = !DILocation(line: 99, column: 37, scope: !271)
!274 = !DILocalVariable(name: "result", arg: 2, scope: !271, file: !1, line: 99, type: !51)
!275 = !DILocation(line: 99, column: 56, scope: !271)
!276 = !DILocalVariable(name: "ax", scope: !271, file: !1, line: 101, type: !50)
!277 = !DILocation(line: 101, column: 10, scope: !271)
!278 = !DILocation(line: 101, column: 20, scope: !271)
!279 = !DILocation(line: 101, column: 15, scope: !271)
!280 = !DILocation(line: 105, column: 6, scope: !281)
!281 = distinct !DILexicalBlock(scope: !271, file: !1, line: 105, column: 6)
!282 = !DILocation(line: 105, column: 8, scope: !281)
!283 = !DILocation(line: 105, column: 6, scope: !271)
!284 = !DILocation(line: 106, column: 5, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 105, column: 16)
!286 = !DILocation(line: 106, column: 13, scope: !285)
!287 = !DILocation(line: 106, column: 17, scope: !285)
!288 = !DILocation(line: 107, column: 5, scope: !285)
!289 = !DILocation(line: 107, column: 13, scope: !285)
!290 = !DILocation(line: 107, column: 17, scope: !285)
!291 = !DILocation(line: 108, column: 5, scope: !285)
!292 = !DILocation(line: 110, column: 11, scope: !293)
!293 = distinct !DILexicalBlock(scope: !281, file: !1, line: 110, column: 11)
!294 = !DILocation(line: 110, column: 14, scope: !293)
!295 = !DILocation(line: 110, column: 11, scope: !281)
!296 = !DILocation(line: 111, column: 5, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !1, line: 110, column: 38)
!298 = distinct !{!298, !296}
!299 = !DILocation(line: 111, column: 5, scope: !300)
!300 = !DILexicalBlockFile(scope: !301, file: !1, discriminator: 1)
!301 = distinct !DILexicalBlock(scope: !297, file: !1, line: 111, column: 5)
!302 = distinct !{!302, !303}
!303 = !DILocation(line: 111, column: 5, scope: !301)
!304 = !DILocation(line: 111, column: 5, scope: !305)
!305 = !DILexicalBlockFile(scope: !306, file: !1, discriminator: 2)
!306 = distinct !DILexicalBlock(scope: !301, file: !1, line: 111, column: 5)
!307 = !DILocation(line: 111, column: 5, scope: !308)
!308 = !DILexicalBlockFile(scope: !301, file: !1, discriminator: 3)
!309 = !DILocation(line: 112, column: 3, scope: !297)
!310 = !DILocation(line: 113, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !293, file: !1, line: 113, column: 11)
!312 = !DILocation(line: 113, column: 14, scope: !311)
!313 = !DILocation(line: 113, column: 11, scope: !293)
!314 = !DILocalVariable(name: "y", scope: !315, file: !1, line: 114, type: !49)
!315 = distinct !DILexicalBlock(scope: !311, file: !1, line: 113, column: 21)
!316 = !DILocation(line: 114, column: 18, scope: !315)
!317 = !DILocation(line: 114, column: 23, scope: !315)
!318 = !DILocation(line: 114, column: 25, scope: !315)
!319 = !DILocation(line: 114, column: 24, scope: !315)
!320 = !DILocalVariable(name: "c1", scope: !315, file: !1, line: 115, type: !49)
!321 = !DILocation(line: 115, column: 18, scope: !315)
!322 = !DILocalVariable(name: "c2", scope: !315, file: !1, line: 116, type: !49)
!323 = !DILocation(line: 116, column: 18, scope: !315)
!324 = !DILocalVariable(name: "c3", scope: !315, file: !1, line: 117, type: !49)
!325 = !DILocation(line: 117, column: 18, scope: !315)
!326 = !DILocalVariable(name: "c4", scope: !315, file: !1, line: 118, type: !49)
!327 = !DILocation(line: 118, column: 18, scope: !315)
!328 = !DILocalVariable(name: "c5", scope: !315, file: !1, line: 119, type: !49)
!329 = !DILocation(line: 119, column: 18, scope: !315)
!330 = !DILocalVariable(name: "c6", scope: !315, file: !1, line: 120, type: !49)
!331 = !DILocation(line: 120, column: 18, scope: !315)
!332 = !DILocalVariable(name: "c7", scope: !315, file: !1, line: 121, type: !49)
!333 = !DILocation(line: 121, column: 18, scope: !315)
!334 = !DILocalVariable(name: "c8", scope: !315, file: !1, line: 122, type: !49)
!335 = !DILocation(line: 122, column: 18, scope: !315)
!336 = !DILocalVariable(name: "c9", scope: !315, file: !1, line: 123, type: !49)
!337 = !DILocation(line: 123, column: 18, scope: !315)
!338 = !DILocalVariable(name: "sum", scope: !315, file: !1, line: 124, type: !49)
!339 = !DILocation(line: 124, column: 18, scope: !315)
!340 = !DILocation(line: 124, column: 28, scope: !315)
!341 = !DILocation(line: 124, column: 34, scope: !315)
!342 = !DILocation(line: 124, column: 40, scope: !315)
!343 = !DILocation(line: 124, column: 46, scope: !315)
!344 = !DILocation(line: 124, column: 52, scope: !315)
!345 = !DILocation(line: 124, column: 58, scope: !315)
!346 = !DILocation(line: 124, column: 64, scope: !315)
!347 = !DILocation(line: 124, column: 70, scope: !315)
!348 = !DILocation(line: 124, column: 76, scope: !315)
!349 = !DILocation(line: 124, column: 77, scope: !315)
!350 = !DILocation(line: 124, column: 75, scope: !315)
!351 = !DILocation(line: 124, column: 71, scope: !315)
!352 = !DILocation(line: 124, column: 69, scope: !315)
!353 = !DILocation(line: 124, column: 65, scope: !315)
!354 = !DILocation(line: 124, column: 63, scope: !315)
!355 = !DILocation(line: 124, column: 59, scope: !315)
!356 = !DILocation(line: 124, column: 57, scope: !315)
!357 = !DILocation(line: 124, column: 53, scope: !315)
!358 = !DILocation(line: 124, column: 51, scope: !315)
!359 = !DILocation(line: 124, column: 47, scope: !315)
!360 = !DILocation(line: 124, column: 45, scope: !315)
!361 = !DILocation(line: 124, column: 41, scope: !315)
!362 = !DILocation(line: 124, column: 39, scope: !315)
!363 = !DILocation(line: 124, column: 35, scope: !315)
!364 = !DILocation(line: 124, column: 33, scope: !315)
!365 = !DILocation(line: 124, column: 29, scope: !315)
!366 = !DILocation(line: 124, column: 27, scope: !315)
!367 = !DILocation(line: 125, column: 19, scope: !315)
!368 = !DILocation(line: 125, column: 20, scope: !315)
!369 = !DILocation(line: 125, column: 28, scope: !315)
!370 = !DILocation(line: 125, column: 26, scope: !315)
!371 = !DILocation(line: 125, column: 5, scope: !315)
!372 = !DILocation(line: 125, column: 13, scope: !315)
!373 = !DILocation(line: 125, column: 17, scope: !315)
!374 = !DILocation(line: 126, column: 48, scope: !315)
!375 = !DILocation(line: 126, column: 56, scope: !315)
!376 = !DILocation(line: 126, column: 43, scope: !315)
!377 = !DILocation(line: 126, column: 41, scope: !315)
!378 = !DILocation(line: 126, column: 5, scope: !315)
!379 = !DILocation(line: 126, column: 13, scope: !315)
!380 = !DILocation(line: 126, column: 17, scope: !315)
!381 = !DILocation(line: 127, column: 5, scope: !315)
!382 = !DILocalVariable(name: "cos_x", scope: !383, file: !1, line: 145, type: !49)
!383 = distinct !DILexicalBlock(scope: !311, file: !1, line: 129, column: 8)
!384 = !DILocation(line: 145, column: 18, scope: !383)
!385 = !DILocation(line: 145, column: 30, scope: !383)
!386 = !DILocation(line: 145, column: 26, scope: !383)
!387 = !DILocalVariable(name: "sin_x", scope: !383, file: !1, line: 146, type: !49)
!388 = !DILocation(line: 146, column: 18, scope: !383)
!389 = !DILocation(line: 146, column: 30, scope: !383)
!390 = !DILocation(line: 146, column: 26, scope: !383)
!391 = !DILocalVariable(name: "f", scope: !383, file: !1, line: 147, type: !49)
!392 = !DILocation(line: 147, column: 18, scope: !383)
!393 = !DILocation(line: 147, column: 28, scope: !383)
!394 = !DILocation(line: 147, column: 30, scope: !383)
!395 = !DILocation(line: 147, column: 29, scope: !383)
!396 = !DILocation(line: 147, column: 26, scope: !383)
!397 = !DILocation(line: 147, column: 33, scope: !383)
!398 = !DILocation(line: 148, column: 21, scope: !383)
!399 = !DILocation(line: 148, column: 25, scope: !383)
!400 = !DILocation(line: 148, column: 23, scope: !383)
!401 = !DILocation(line: 148, column: 37, scope: !383)
!402 = !DILocation(line: 148, column: 36, scope: !383)
!403 = !DILocation(line: 148, column: 43, scope: !383)
!404 = !DILocation(line: 148, column: 42, scope: !383)
!405 = !DILocation(line: 148, column: 31, scope: !383)
!406 = !DILocation(line: 148, column: 46, scope: !383)
!407 = !DILocation(line: 148, column: 45, scope: !383)
!408 = !DILocation(line: 148, column: 5, scope: !383)
!409 = !DILocation(line: 148, column: 13, scope: !383)
!410 = !DILocation(line: 148, column: 18, scope: !383)
!411 = !DILocation(line: 149, column: 49, scope: !383)
!412 = !DILocation(line: 149, column: 51, scope: !383)
!413 = !DILocation(line: 149, column: 50, scope: !383)
!414 = !DILocation(line: 149, column: 57, scope: !383)
!415 = !DILocation(line: 149, column: 56, scope: !383)
!416 = !DILocation(line: 149, column: 44, scope: !383)
!417 = !DILocation(line: 149, column: 71, scope: !383)
!418 = !DILocation(line: 149, column: 78, scope: !383)
!419 = !DILocation(line: 149, column: 80, scope: !383)
!420 = !DILocation(line: 149, column: 79, scope: !383)
!421 = !DILocation(line: 149, column: 76, scope: !383)
!422 = !DILocation(line: 149, column: 66, scope: !423)
!423 = !DILexicalBlockFile(scope: !383, file: !1, discriminator: 1)
!424 = !DILocation(line: 149, column: 65, scope: !383)
!425 = !DILocation(line: 149, column: 60, scope: !383)
!426 = !DILocation(line: 149, column: 41, scope: !383)
!427 = !DILocation(line: 149, column: 5, scope: !383)
!428 = !DILocation(line: 149, column: 13, scope: !383)
!429 = !DILocation(line: 149, column: 17, scope: !383)
!430 = !DILocation(line: 150, column: 49, scope: !383)
!431 = !DILocation(line: 150, column: 57, scope: !383)
!432 = !DILocation(line: 150, column: 44, scope: !383)
!433 = !DILocation(line: 150, column: 42, scope: !383)
!434 = !DILocation(line: 150, column: 5, scope: !383)
!435 = !DILocation(line: 150, column: 13, scope: !383)
!436 = !DILocation(line: 150, column: 17, scope: !383)
!437 = !DILocation(line: 152, column: 5, scope: !383)
!438 = !DILocation(line: 155, column: 1, scope: !271)
!439 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_e", scope: !1, file: !1, line: 159, type: !440, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!440 = !DISubroutineType(types: !441)
!441 = !{!48, !442, !49, !51}
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!443 = !DILocalVariable(name: "l", arg: 1, scope: !439, file: !1, line: 159, type: !442)
!444 = !DILocation(line: 159, column: 30, scope: !439)
!445 = !DILocalVariable(name: "x", arg: 2, scope: !439, file: !1, line: 159, type: !49)
!446 = !DILocation(line: 159, column: 46, scope: !439)
!447 = !DILocalVariable(name: "result", arg: 3, scope: !439, file: !1, line: 159, type: !51)
!448 = !DILocation(line: 159, column: 65, scope: !439)
!449 = !DILocation(line: 161, column: 6, scope: !450)
!450 = distinct !DILexicalBlock(scope: !439, file: !1, line: 161, column: 6)
!451 = !DILocation(line: 161, column: 8, scope: !450)
!452 = !DILocation(line: 161, column: 12, scope: !450)
!453 = !DILocation(line: 161, column: 15, scope: !454)
!454 = !DILexicalBlockFile(scope: !450, file: !1, discriminator: 1)
!455 = !DILocation(line: 161, column: 17, scope: !454)
!456 = !DILocation(line: 161, column: 6, scope: !454)
!457 = !DILocation(line: 162, column: 5, scope: !458)
!458 = distinct !DILexicalBlock(scope: !450, file: !1, line: 161, column: 24)
!459 = distinct !{!459, !457}
!460 = !DILocation(line: 162, column: 5, scope: !461)
!461 = !DILexicalBlockFile(scope: !462, file: !1, discriminator: 1)
!462 = distinct !DILexicalBlock(scope: !458, file: !1, line: 162, column: 5)
!463 = distinct !{!463, !464}
!464 = !DILocation(line: 162, column: 5, scope: !462)
!465 = !DILocation(line: 162, column: 5, scope: !466)
!466 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 2)
!467 = distinct !DILexicalBlock(scope: !462, file: !1, line: 162, column: 5)
!468 = !DILocation(line: 162, column: 5, scope: !469)
!469 = !DILexicalBlockFile(scope: !462, file: !1, discriminator: 3)
!470 = !DILocation(line: 163, column: 3, scope: !458)
!471 = !DILocation(line: 164, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !450, file: !1, line: 164, column: 11)
!473 = !DILocation(line: 164, column: 13, scope: !472)
!474 = !DILocation(line: 164, column: 11, scope: !450)
!475 = !DILocation(line: 165, column: 21, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !1, line: 164, column: 21)
!477 = !DILocation(line: 165, column: 23, scope: !476)
!478 = !DILocation(line: 165, column: 5, scope: !476)
!479 = !DILocation(line: 165, column: 13, scope: !476)
!480 = !DILocation(line: 165, column: 17, scope: !476)
!481 = !DILocation(line: 166, column: 5, scope: !476)
!482 = !DILocation(line: 166, column: 13, scope: !476)
!483 = !DILocation(line: 166, column: 17, scope: !476)
!484 = !DILocation(line: 167, column: 5, scope: !476)
!485 = !DILocation(line: 169, column: 11, scope: !486)
!486 = distinct !DILexicalBlock(scope: !472, file: !1, line: 169, column: 11)
!487 = !DILocation(line: 169, column: 13, scope: !486)
!488 = !DILocation(line: 169, column: 11, scope: !472)
!489 = !DILocation(line: 170, column: 31, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !1, line: 169, column: 19)
!491 = !DILocation(line: 170, column: 34, scope: !490)
!492 = !DILocation(line: 170, column: 12, scope: !490)
!493 = !DILocation(line: 170, column: 5, scope: !490)
!494 = !DILocation(line: 172, column: 11, scope: !495)
!495 = distinct !DILexicalBlock(scope: !486, file: !1, line: 172, column: 11)
!496 = !DILocation(line: 172, column: 13, scope: !495)
!497 = !DILocation(line: 172, column: 11, scope: !486)
!498 = !DILocation(line: 173, column: 31, scope: !499)
!499 = distinct !DILexicalBlock(scope: !495, file: !1, line: 172, column: 19)
!500 = !DILocation(line: 173, column: 34, scope: !499)
!501 = !DILocation(line: 173, column: 12, scope: !499)
!502 = !DILocation(line: 173, column: 5, scope: !499)
!503 = !DILocation(line: 175, column: 11, scope: !504)
!504 = distinct !DILexicalBlock(scope: !495, file: !1, line: 175, column: 11)
!505 = !DILocation(line: 175, column: 13, scope: !504)
!506 = !DILocation(line: 175, column: 11, scope: !495)
!507 = !DILocation(line: 176, column: 31, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !1, line: 175, column: 19)
!509 = !DILocation(line: 176, column: 34, scope: !508)
!510 = !DILocation(line: 176, column: 12, scope: !508)
!511 = !DILocation(line: 176, column: 5, scope: !508)
!512 = !DILocation(line: 178, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !504, file: !1, line: 178, column: 11)
!514 = !DILocation(line: 178, column: 13, scope: !513)
!515 = !DILocation(line: 178, column: 12, scope: !513)
!516 = !DILocation(line: 178, column: 23, scope: !513)
!517 = !DILocation(line: 178, column: 24, scope: !513)
!518 = !DILocation(line: 178, column: 21, scope: !513)
!519 = !DILocation(line: 178, column: 29, scope: !513)
!520 = !DILocation(line: 178, column: 15, scope: !513)
!521 = !DILocation(line: 178, column: 11, scope: !504)
!522 = !DILocalVariable(name: "b", scope: !523, file: !1, line: 179, type: !52)
!523 = distinct !DILexicalBlock(scope: !513, file: !1, line: 178, column: 35)
!524 = !DILocation(line: 179, column: 19, scope: !523)
!525 = !DILocalVariable(name: "status", scope: !523, file: !1, line: 180, type: !48)
!526 = !DILocation(line: 180, column: 9, scope: !523)
!527 = !DILocation(line: 180, column: 44, scope: !523)
!528 = !DILocation(line: 180, column: 45, scope: !523)
!529 = !DILocation(line: 180, column: 51, scope: !523)
!530 = !DILocation(line: 180, column: 18, scope: !523)
!531 = !DILocalVariable(name: "pre", scope: !523, file: !1, line: 181, type: !50)
!532 = !DILocation(line: 181, column: 12, scope: !523)
!533 = !DILocation(line: 181, column: 36, scope: !523)
!534 = !DILocation(line: 181, column: 35, scope: !523)
!535 = !DILocation(line: 181, column: 20, scope: !523)
!536 = !DILocation(line: 182, column: 20, scope: !523)
!537 = !DILocation(line: 182, column: 28, scope: !523)
!538 = !DILocation(line: 182, column: 24, scope: !523)
!539 = !DILocation(line: 182, column: 5, scope: !523)
!540 = !DILocation(line: 182, column: 13, scope: !523)
!541 = !DILocation(line: 182, column: 18, scope: !523)
!542 = !DILocation(line: 183, column: 20, scope: !523)
!543 = !DILocation(line: 183, column: 28, scope: !523)
!544 = !DILocation(line: 183, column: 24, scope: !523)
!545 = !DILocation(line: 183, column: 5, scope: !523)
!546 = !DILocation(line: 183, column: 13, scope: !523)
!547 = !DILocation(line: 183, column: 18, scope: !523)
!548 = !DILocation(line: 184, column: 49, scope: !523)
!549 = !DILocation(line: 184, column: 57, scope: !523)
!550 = !DILocation(line: 184, column: 44, scope: !523)
!551 = !DILocation(line: 184, column: 42, scope: !523)
!552 = !DILocation(line: 184, column: 5, scope: !523)
!553 = !DILocation(line: 184, column: 13, scope: !523)
!554 = !DILocation(line: 184, column: 17, scope: !523)
!555 = !DILocation(line: 185, column: 12, scope: !523)
!556 = !DILocation(line: 185, column: 5, scope: !523)
!557 = !DILocation(line: 187, column: 35, scope: !558)
!558 = distinct !DILexicalBlock(scope: !513, file: !1, line: 187, column: 11)
!559 = !DILocation(line: 187, column: 33, scope: !558)
!560 = !DILocation(line: 187, column: 40, scope: !558)
!561 = !DILocation(line: 187, column: 42, scope: !558)
!562 = !DILocation(line: 187, column: 41, scope: !558)
!563 = !DILocation(line: 187, column: 46, scope: !558)
!564 = !DILocation(line: 187, column: 44, scope: !558)
!565 = !DILocation(line: 187, column: 48, scope: !558)
!566 = !DILocation(line: 187, column: 37, scope: !558)
!567 = !DILocation(line: 187, column: 11, scope: !513)
!568 = !DILocalVariable(name: "b", scope: !569, file: !1, line: 188, type: !52)
!569 = distinct !DILexicalBlock(scope: !558, file: !1, line: 187, column: 56)
!570 = !DILocation(line: 188, column: 19, scope: !569)
!571 = !DILocalVariable(name: "status", scope: !569, file: !1, line: 189, type: !48)
!572 = !DILocation(line: 189, column: 9, scope: !569)
!573 = !DILocation(line: 189, column: 45, scope: !569)
!574 = !DILocation(line: 189, column: 47, scope: !569)
!575 = !DILocation(line: 189, column: 54, scope: !569)
!576 = !DILocation(line: 189, column: 18, scope: !569)
!577 = !DILocalVariable(name: "pre", scope: !569, file: !1, line: 190, type: !50)
!578 = !DILocation(line: 190, column: 12, scope: !569)
!579 = !DILocation(line: 190, column: 34, scope: !569)
!580 = !DILocation(line: 190, column: 33, scope: !569)
!581 = !DILocation(line: 190, column: 18, scope: !569)
!582 = !DILocation(line: 191, column: 19, scope: !569)
!583 = !DILocation(line: 191, column: 27, scope: !569)
!584 = !DILocation(line: 191, column: 23, scope: !569)
!585 = !DILocation(line: 191, column: 5, scope: !569)
!586 = !DILocation(line: 191, column: 13, scope: !569)
!587 = !DILocation(line: 191, column: 17, scope: !569)
!588 = !DILocation(line: 192, column: 48, scope: !569)
!589 = !DILocation(line: 192, column: 56, scope: !569)
!590 = !DILocation(line: 192, column: 43, scope: !569)
!591 = !DILocation(line: 192, column: 41, scope: !569)
!592 = !DILocation(line: 192, column: 63, scope: !569)
!593 = !DILocation(line: 192, column: 71, scope: !569)
!594 = !DILocation(line: 192, column: 67, scope: !569)
!595 = !DILocation(line: 192, column: 61, scope: !569)
!596 = !DILocation(line: 192, column: 5, scope: !569)
!597 = !DILocation(line: 192, column: 13, scope: !569)
!598 = !DILocation(line: 192, column: 17, scope: !569)
!599 = !DILocation(line: 193, column: 12, scope: !569)
!600 = !DILocation(line: 193, column: 5, scope: !569)
!601 = !DILocation(line: 195, column: 11, scope: !602)
!602 = distinct !DILexicalBlock(scope: !558, file: !1, line: 195, column: 11)
!603 = !DILocation(line: 195, column: 13, scope: !602)
!604 = !DILocation(line: 195, column: 11, scope: !558)
!605 = !DILocalVariable(name: "b", scope: !606, file: !1, line: 196, type: !52)
!606 = distinct !DILexicalBlock(scope: !602, file: !1, line: 195, column: 42)
!607 = !DILocation(line: 196, column: 19, scope: !606)
!608 = !DILocalVariable(name: "status", scope: !606, file: !1, line: 197, type: !48)
!609 = !DILocation(line: 197, column: 9, scope: !606)
!610 = !DILocation(line: 197, column: 50, scope: !606)
!611 = !DILocation(line: 197, column: 52, scope: !606)
!612 = !DILocation(line: 197, column: 59, scope: !606)
!613 = !DILocation(line: 197, column: 18, scope: !606)
!614 = !DILocalVariable(name: "pre", scope: !606, file: !1, line: 198, type: !50)
!615 = !DILocation(line: 198, column: 12, scope: !606)
!616 = !DILocation(line: 198, column: 34, scope: !606)
!617 = !DILocation(line: 198, column: 33, scope: !606)
!618 = !DILocation(line: 198, column: 18, scope: !606)
!619 = !DILocation(line: 199, column: 19, scope: !606)
!620 = !DILocation(line: 199, column: 27, scope: !606)
!621 = !DILocation(line: 199, column: 23, scope: !606)
!622 = !DILocation(line: 199, column: 5, scope: !606)
!623 = !DILocation(line: 199, column: 13, scope: !606)
!624 = !DILocation(line: 199, column: 17, scope: !606)
!625 = !DILocation(line: 200, column: 48, scope: !606)
!626 = !DILocation(line: 200, column: 56, scope: !606)
!627 = !DILocation(line: 200, column: 43, scope: !606)
!628 = !DILocation(line: 200, column: 41, scope: !606)
!629 = !DILocation(line: 200, column: 63, scope: !606)
!630 = !DILocation(line: 200, column: 71, scope: !606)
!631 = !DILocation(line: 200, column: 67, scope: !606)
!632 = !DILocation(line: 200, column: 61, scope: !606)
!633 = !DILocation(line: 200, column: 5, scope: !606)
!634 = !DILocation(line: 200, column: 13, scope: !606)
!635 = !DILocation(line: 200, column: 17, scope: !606)
!636 = !DILocation(line: 201, column: 12, scope: !606)
!637 = !DILocation(line: 201, column: 5, scope: !606)
!638 = !DILocation(line: 203, column: 11, scope: !639)
!639 = distinct !DILexicalBlock(scope: !602, file: !1, line: 203, column: 11)
!640 = !DILocation(line: 203, column: 13, scope: !639)
!641 = !DILocation(line: 203, column: 22, scope: !639)
!642 = !DILocation(line: 203, column: 25, scope: !643)
!643 = !DILexicalBlockFile(scope: !639, file: !1, discriminator: 1)
!644 = !DILocation(line: 203, column: 29, scope: !643)
!645 = !DILocation(line: 203, column: 31, scope: !643)
!646 = !DILocation(line: 203, column: 30, scope: !643)
!647 = !DILocation(line: 203, column: 27, scope: !643)
!648 = !DILocation(line: 203, column: 11, scope: !643)
!649 = !DILocalVariable(name: "b", scope: !650, file: !1, line: 206, type: !52)
!650 = distinct !DILexicalBlock(scope: !639, file: !1, line: 204, column: 3)
!651 = !DILocation(line: 206, column: 19, scope: !650)
!652 = !DILocalVariable(name: "status", scope: !650, file: !1, line: 207, type: !48)
!653 = !DILocation(line: 207, column: 9, scope: !650)
!654 = !DILocation(line: 207, column: 45, scope: !650)
!655 = !DILocation(line: 207, column: 47, scope: !650)
!656 = !DILocation(line: 207, column: 54, scope: !650)
!657 = !DILocation(line: 207, column: 18, scope: !650)
!658 = !DILocalVariable(name: "pre", scope: !650, file: !1, line: 208, type: !50)
!659 = !DILocation(line: 208, column: 12, scope: !650)
!660 = !DILocation(line: 208, column: 34, scope: !650)
!661 = !DILocation(line: 208, column: 33, scope: !650)
!662 = !DILocation(line: 208, column: 18, scope: !650)
!663 = !DILocation(line: 209, column: 19, scope: !650)
!664 = !DILocation(line: 209, column: 27, scope: !650)
!665 = !DILocation(line: 209, column: 23, scope: !650)
!666 = !DILocation(line: 209, column: 5, scope: !650)
!667 = !DILocation(line: 209, column: 13, scope: !650)
!668 = !DILocation(line: 209, column: 17, scope: !650)
!669 = !DILocation(line: 210, column: 48, scope: !650)
!670 = !DILocation(line: 210, column: 56, scope: !650)
!671 = !DILocation(line: 210, column: 43, scope: !650)
!672 = !DILocation(line: 210, column: 41, scope: !650)
!673 = !DILocation(line: 210, column: 63, scope: !650)
!674 = !DILocation(line: 210, column: 71, scope: !650)
!675 = !DILocation(line: 210, column: 67, scope: !650)
!676 = !DILocation(line: 210, column: 61, scope: !650)
!677 = !DILocation(line: 210, column: 5, scope: !650)
!678 = !DILocation(line: 210, column: 13, scope: !650)
!679 = !DILocation(line: 210, column: 17, scope: !650)
!680 = !DILocation(line: 211, column: 12, scope: !650)
!681 = !DILocation(line: 211, column: 5, scope: !650)
!682 = !DILocalVariable(name: "sgn", scope: !683, file: !1, line: 214, type: !50)
!683 = distinct !DILexicalBlock(scope: !639, file: !1, line: 213, column: 8)
!684 = !DILocation(line: 214, column: 12, scope: !683)
!685 = !DILocalVariable(name: "ratio", scope: !683, file: !1, line: 215, type: !50)
!686 = !DILocation(line: 215, column: 12, scope: !683)
!687 = !DILocalVariable(name: "stat_CF1", scope: !683, file: !1, line: 217, type: !48)
!688 = !DILocation(line: 217, column: 9, scope: !683)
!689 = !DILocation(line: 217, column: 40, scope: !683)
!690 = !DILocation(line: 217, column: 41, scope: !683)
!691 = !DILocation(line: 217, column: 47, scope: !683)
!692 = !DILocation(line: 217, column: 20, scope: !683)
!693 = !DILocalVariable(name: "BESSEL_J_SMALL", scope: !683, file: !1, line: 218, type: !49)
!694 = !DILocation(line: 218, column: 18, scope: !683)
!695 = !DILocalVariable(name: "jellp1", scope: !683, file: !1, line: 219, type: !50)
!696 = !DILocation(line: 219, column: 12, scope: !683)
!697 = !DILocation(line: 219, column: 38, scope: !683)
!698 = !DILocation(line: 219, column: 36, scope: !683)
!699 = !DILocalVariable(name: "jell", scope: !683, file: !1, line: 220, type: !50)
!700 = !DILocation(line: 220, column: 12, scope: !683)
!701 = !DILocalVariable(name: "jellm1", scope: !683, file: !1, line: 221, type: !50)
!702 = !DILocation(line: 221, column: 12, scope: !683)
!703 = !DILocalVariable(name: "ell", scope: !683, file: !1, line: 222, type: !48)
!704 = !DILocation(line: 222, column: 9, scope: !683)
!705 = !DILocation(line: 223, column: 15, scope: !706)
!706 = distinct !DILexicalBlock(scope: !683, file: !1, line: 223, column: 5)
!707 = !DILocation(line: 223, column: 13, scope: !706)
!708 = !DILocation(line: 223, column: 9, scope: !706)
!709 = !DILocation(line: 223, column: 18, scope: !710)
!710 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 1)
!711 = distinct !DILexicalBlock(scope: !706, file: !1, line: 223, column: 5)
!712 = !DILocation(line: 223, column: 22, scope: !710)
!713 = !DILocation(line: 223, column: 5, scope: !710)
!714 = !DILocation(line: 224, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !1, line: 223, column: 34)
!716 = !DILocation(line: 224, column: 16, scope: !715)
!717 = !DILocation(line: 224, column: 29, scope: !715)
!718 = !DILocation(line: 224, column: 28, scope: !715)
!719 = !DILocation(line: 224, column: 33, scope: !715)
!720 = !DILocation(line: 224, column: 26, scope: !715)
!721 = !DILocation(line: 224, column: 38, scope: !715)
!722 = !DILocation(line: 224, column: 37, scope: !715)
!723 = !DILocation(line: 224, column: 42, scope: !715)
!724 = !DILocation(line: 224, column: 40, scope: !715)
!725 = !DILocation(line: 224, column: 24, scope: !715)
!726 = !DILocation(line: 224, column: 14, scope: !715)
!727 = !DILocation(line: 225, column: 16, scope: !715)
!728 = !DILocation(line: 225, column: 14, scope: !715)
!729 = !DILocation(line: 226, column: 16, scope: !715)
!730 = !DILocation(line: 226, column: 14, scope: !715)
!731 = !DILocation(line: 227, column: 5, scope: !715)
!732 = !DILocation(line: 223, column: 30, scope: !733)
!733 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 2)
!734 = !DILocation(line: 223, column: 5, scope: !733)
!735 = distinct !{!735, !736}
!736 = !DILocation(line: 223, column: 5, scope: !683)
!737 = !DILocation(line: 229, column: 13, scope: !738)
!738 = distinct !DILexicalBlock(scope: !683, file: !1, line: 229, column: 8)
!739 = !DILocation(line: 229, column: 8, scope: !738)
!740 = !DILocation(line: 229, column: 26, scope: !738)
!741 = !DILocation(line: 229, column: 21, scope: !742)
!742 = !DILexicalBlockFile(scope: !738, file: !1, discriminator: 1)
!743 = !DILocation(line: 229, column: 19, scope: !738)
!744 = !DILocation(line: 229, column: 8, scope: !683)
!745 = !DILocalVariable(name: "j0_result", scope: !746, file: !1, line: 230, type: !52)
!746 = distinct !DILexicalBlock(scope: !738, file: !1, line: 229, column: 35)
!747 = !DILocation(line: 230, column: 21, scope: !746)
!748 = !DILocalVariable(name: "stat_j0", scope: !746, file: !1, line: 231, type: !48)
!749 = !DILocation(line: 231, column: 11, scope: !746)
!750 = !DILocation(line: 231, column: 41, scope: !746)
!751 = !DILocation(line: 231, column: 22, scope: !746)
!752 = !DILocalVariable(name: "pre", scope: !746, file: !1, line: 232, type: !50)
!753 = !DILocation(line: 232, column: 14, scope: !746)
!754 = !DILocation(line: 232, column: 39, scope: !746)
!755 = !DILocation(line: 232, column: 37, scope: !746)
!756 = !DILocation(line: 233, column: 32, scope: !746)
!757 = !DILocation(line: 233, column: 38, scope: !746)
!758 = !DILocation(line: 233, column: 36, scope: !746)
!759 = !DILocation(line: 233, column: 7, scope: !746)
!760 = !DILocation(line: 233, column: 15, scope: !746)
!761 = !DILocation(line: 233, column: 20, scope: !746)
!762 = !DILocation(line: 234, column: 32, scope: !746)
!763 = !DILocation(line: 234, column: 43, scope: !746)
!764 = !DILocation(line: 234, column: 38, scope: !746)
!765 = !DILocation(line: 234, column: 36, scope: !746)
!766 = !DILocation(line: 234, column: 7, scope: !746)
!767 = !DILocation(line: 234, column: 15, scope: !746)
!768 = !DILocation(line: 234, column: 20, scope: !746)
!769 = !DILocation(line: 235, column: 51, scope: !746)
!770 = !DILocation(line: 235, column: 50, scope: !746)
!771 = !DILocation(line: 235, column: 53, scope: !746)
!772 = !DILocation(line: 235, column: 44, scope: !746)
!773 = !DILocation(line: 235, column: 67, scope: !746)
!774 = !DILocation(line: 235, column: 75, scope: !746)
!775 = !DILocation(line: 235, column: 62, scope: !746)
!776 = !DILocation(line: 235, column: 60, scope: !746)
!777 = !DILocation(line: 235, column: 7, scope: !746)
!778 = !DILocation(line: 235, column: 15, scope: !746)
!779 = !DILocation(line: 235, column: 19, scope: !746)
!780 = !DILocation(line: 236, column: 14, scope: !746)
!781 = !DILocation(line: 236, column: 14, scope: !782)
!782 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 1)
!783 = !DILocation(line: 236, column: 14, scope: !784)
!784 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 2)
!785 = !DILocation(line: 236, column: 14, scope: !786)
!786 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 3)
!787 = !DILocation(line: 236, column: 14, scope: !788)
!788 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 4)
!789 = !DILocation(line: 236, column: 14, scope: !790)
!790 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 5)
!791 = !DILocation(line: 236, column: 14, scope: !792)
!792 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 6)
!793 = !DILocation(line: 236, column: 7, scope: !792)
!794 = !DILocalVariable(name: "j1_result", scope: !795, file: !1, line: 239, type: !52)
!795 = distinct !DILexicalBlock(scope: !738, file: !1, line: 238, column: 10)
!796 = !DILocation(line: 239, column: 21, scope: !795)
!797 = !DILocalVariable(name: "stat_j1", scope: !795, file: !1, line: 240, type: !48)
!798 = !DILocation(line: 240, column: 11, scope: !795)
!799 = !DILocation(line: 240, column: 41, scope: !795)
!800 = !DILocation(line: 240, column: 22, scope: !795)
!801 = !DILocalVariable(name: "pre", scope: !795, file: !1, line: 241, type: !50)
!802 = !DILocation(line: 241, column: 14, scope: !795)
!803 = !DILocation(line: 241, column: 39, scope: !795)
!804 = !DILocation(line: 241, column: 37, scope: !795)
!805 = !DILocation(line: 242, column: 32, scope: !795)
!806 = !DILocation(line: 242, column: 38, scope: !795)
!807 = !DILocation(line: 242, column: 36, scope: !795)
!808 = !DILocation(line: 242, column: 7, scope: !795)
!809 = !DILocation(line: 242, column: 15, scope: !795)
!810 = !DILocation(line: 242, column: 20, scope: !795)
!811 = !DILocation(line: 243, column: 32, scope: !795)
!812 = !DILocation(line: 243, column: 43, scope: !795)
!813 = !DILocation(line: 243, column: 38, scope: !795)
!814 = !DILocation(line: 243, column: 36, scope: !795)
!815 = !DILocation(line: 243, column: 7, scope: !795)
!816 = !DILocation(line: 243, column: 15, scope: !795)
!817 = !DILocation(line: 243, column: 20, scope: !795)
!818 = !DILocation(line: 244, column: 51, scope: !795)
!819 = !DILocation(line: 244, column: 50, scope: !795)
!820 = !DILocation(line: 244, column: 53, scope: !795)
!821 = !DILocation(line: 244, column: 44, scope: !795)
!822 = !DILocation(line: 244, column: 67, scope: !795)
!823 = !DILocation(line: 244, column: 75, scope: !795)
!824 = !DILocation(line: 244, column: 62, scope: !795)
!825 = !DILocation(line: 244, column: 60, scope: !795)
!826 = !DILocation(line: 244, column: 7, scope: !795)
!827 = !DILocation(line: 244, column: 15, scope: !795)
!828 = !DILocation(line: 244, column: 19, scope: !795)
!829 = !DILocation(line: 245, column: 14, scope: !795)
!830 = !DILocation(line: 245, column: 14, scope: !831)
!831 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 1)
!832 = !DILocation(line: 245, column: 14, scope: !833)
!833 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 2)
!834 = !DILocation(line: 245, column: 14, scope: !835)
!835 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 3)
!836 = !DILocation(line: 245, column: 14, scope: !837)
!837 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 4)
!838 = !DILocation(line: 245, column: 14, scope: !839)
!839 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 5)
!840 = !DILocation(line: 245, column: 14, scope: !841)
!841 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 6)
!842 = !DILocation(line: 245, column: 7, scope: !841)
!843 = !DILocation(line: 248, column: 1, scope: !439)
!844 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_array", scope: !1, file: !1, line: 252, type: !845, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!845 = !DISubroutineType(types: !846)
!846 = !{!48, !442, !49, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!848 = !DILocalVariable(name: "lmax", arg: 1, scope: !844, file: !1, line: 252, type: !442)
!849 = !DILocation(line: 252, column: 34, scope: !844)
!850 = !DILocalVariable(name: "x", arg: 2, scope: !844, file: !1, line: 252, type: !49)
!851 = !DILocation(line: 252, column: 53, scope: !844)
!852 = !DILocalVariable(name: "result_array", arg: 3, scope: !844, file: !1, line: 252, type: !847)
!853 = !DILocation(line: 252, column: 65, scope: !844)
!854 = !DILocation(line: 256, column: 6, scope: !855)
!855 = distinct !DILexicalBlock(scope: !844, file: !1, line: 256, column: 6)
!856 = !DILocation(line: 256, column: 11, scope: !855)
!857 = !DILocation(line: 256, column: 15, scope: !855)
!858 = !DILocation(line: 256, column: 18, scope: !859)
!859 = !DILexicalBlockFile(scope: !855, file: !1, discriminator: 1)
!860 = !DILocation(line: 256, column: 20, scope: !859)
!861 = !DILocation(line: 256, column: 6, scope: !859)
!862 = !DILocalVariable(name: "j", scope: !863, file: !1, line: 257, type: !48)
!863 = distinct !DILexicalBlock(scope: !855, file: !1, line: 256, column: 27)
!864 = !DILocation(line: 257, column: 9, scope: !863)
!865 = !DILocation(line: 258, column: 10, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !1, line: 258, column: 5)
!867 = !DILocation(line: 258, column: 9, scope: !866)
!868 = !DILocation(line: 258, column: 14, scope: !869)
!869 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 1)
!870 = distinct !DILexicalBlock(scope: !866, file: !1, line: 258, column: 5)
!871 = !DILocation(line: 258, column: 17, scope: !869)
!872 = !DILocation(line: 258, column: 15, scope: !869)
!873 = !DILocation(line: 258, column: 5, scope: !869)
!874 = !DILocation(line: 258, column: 41, scope: !875)
!875 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 2)
!876 = !DILocation(line: 258, column: 28, scope: !875)
!877 = !DILocation(line: 258, column: 44, scope: !875)
!878 = !DILocation(line: 258, column: 24, scope: !879)
!879 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 3)
!880 = !DILocation(line: 258, column: 5, scope: !879)
!881 = distinct !{!881, !882}
!882 = !DILocation(line: 258, column: 5, scope: !863)
!883 = !DILocation(line: 259, column: 5, scope: !863)
!884 = distinct !{!884, !883}
!885 = !DILocation(line: 259, column: 5, scope: !886)
!886 = !DILexicalBlockFile(scope: !887, file: !1, discriminator: 1)
!887 = distinct !DILexicalBlock(scope: !863, file: !1, line: 259, column: 5)
!888 = !DILocation(line: 260, column: 3, scope: !863)
!889 = !DILocation(line: 261, column: 11, scope: !890)
!890 = distinct !DILexicalBlock(scope: !855, file: !1, line: 261, column: 11)
!891 = !DILocation(line: 261, column: 13, scope: !890)
!892 = !DILocation(line: 261, column: 11, scope: !855)
!893 = !DILocalVariable(name: "j", scope: !894, file: !1, line: 262, type: !48)
!894 = distinct !DILexicalBlock(scope: !890, file: !1, line: 261, column: 21)
!895 = !DILocation(line: 262, column: 9, scope: !894)
!896 = !DILocation(line: 263, column: 10, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !1, line: 263, column: 5)
!898 = !DILocation(line: 263, column: 9, scope: !897)
!899 = !DILocation(line: 263, column: 14, scope: !900)
!900 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 1)
!901 = distinct !DILexicalBlock(scope: !897, file: !1, line: 263, column: 5)
!902 = !DILocation(line: 263, column: 17, scope: !900)
!903 = !DILocation(line: 263, column: 15, scope: !900)
!904 = !DILocation(line: 263, column: 5, scope: !900)
!905 = !DILocation(line: 263, column: 41, scope: !906)
!906 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 2)
!907 = !DILocation(line: 263, column: 28, scope: !906)
!908 = !DILocation(line: 263, column: 44, scope: !906)
!909 = !DILocation(line: 263, column: 24, scope: !910)
!910 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 3)
!911 = !DILocation(line: 263, column: 5, scope: !910)
!912 = distinct !{!912, !913}
!913 = !DILocation(line: 263, column: 5, scope: !894)
!914 = !DILocation(line: 264, column: 5, scope: !894)
!915 = !DILocation(line: 264, column: 21, scope: !894)
!916 = !DILocation(line: 265, column: 5, scope: !894)
!917 = !DILocalVariable(name: "r_jellp1", scope: !918, file: !1, line: 268, type: !52)
!918 = distinct !DILexicalBlock(scope: !890, file: !1, line: 267, column: 8)
!919 = !DILocation(line: 268, column: 19, scope: !918)
!920 = !DILocalVariable(name: "r_jell", scope: !918, file: !1, line: 269, type: !52)
!921 = !DILocation(line: 269, column: 19, scope: !918)
!922 = !DILocalVariable(name: "stat_0", scope: !918, file: !1, line: 270, type: !48)
!923 = !DILocation(line: 270, column: 9, scope: !918)
!924 = !DILocation(line: 270, column: 37, scope: !918)
!925 = !DILocation(line: 270, column: 41, scope: !918)
!926 = !DILocation(line: 270, column: 45, scope: !918)
!927 = !DILocation(line: 270, column: 18, scope: !918)
!928 = !DILocalVariable(name: "stat_1", scope: !918, file: !1, line: 271, type: !48)
!929 = !DILocation(line: 271, column: 9, scope: !918)
!930 = !DILocation(line: 271, column: 37, scope: !918)
!931 = !DILocation(line: 271, column: 45, scope: !918)
!932 = !DILocation(line: 271, column: 18, scope: !918)
!933 = !DILocalVariable(name: "jellp1", scope: !918, file: !1, line: 272, type: !50)
!934 = !DILocation(line: 272, column: 12, scope: !918)
!935 = !DILocation(line: 272, column: 30, scope: !918)
!936 = !DILocalVariable(name: "jell", scope: !918, file: !1, line: 273, type: !50)
!937 = !DILocation(line: 273, column: 12, scope: !918)
!938 = !DILocation(line: 273, column: 28, scope: !918)
!939 = !DILocalVariable(name: "jellm1", scope: !918, file: !1, line: 274, type: !50)
!940 = !DILocation(line: 274, column: 12, scope: !918)
!941 = !DILocalVariable(name: "ell", scope: !918, file: !1, line: 275, type: !48)
!942 = !DILocation(line: 275, column: 9, scope: !918)
!943 = !DILocation(line: 277, column: 26, scope: !918)
!944 = !DILocation(line: 277, column: 18, scope: !918)
!945 = !DILocation(line: 277, column: 5, scope: !918)
!946 = !DILocation(line: 277, column: 24, scope: !918)
!947 = !DILocation(line: 278, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !918, file: !1, line: 278, column: 5)
!949 = !DILocation(line: 278, column: 13, scope: !948)
!950 = !DILocation(line: 278, column: 9, scope: !948)
!951 = !DILocation(line: 278, column: 21, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !1, discriminator: 1)
!953 = distinct !DILexicalBlock(scope: !948, file: !1, line: 278, column: 5)
!954 = !DILocation(line: 278, column: 25, scope: !952)
!955 = !DILocation(line: 278, column: 5, scope: !952)
!956 = !DILocation(line: 279, column: 17, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !1, line: 278, column: 38)
!958 = !DILocation(line: 279, column: 16, scope: !957)
!959 = !DILocation(line: 279, column: 29, scope: !957)
!960 = !DILocation(line: 279, column: 28, scope: !957)
!961 = !DILocation(line: 279, column: 33, scope: !957)
!962 = !DILocation(line: 279, column: 26, scope: !957)
!963 = !DILocation(line: 279, column: 38, scope: !957)
!964 = !DILocation(line: 279, column: 37, scope: !957)
!965 = !DILocation(line: 279, column: 42, scope: !957)
!966 = !DILocation(line: 279, column: 40, scope: !957)
!967 = !DILocation(line: 279, column: 24, scope: !957)
!968 = !DILocation(line: 279, column: 14, scope: !957)
!969 = !DILocation(line: 280, column: 16, scope: !957)
!970 = !DILocation(line: 280, column: 14, scope: !957)
!971 = !DILocation(line: 281, column: 16, scope: !957)
!972 = !DILocation(line: 281, column: 14, scope: !957)
!973 = !DILocation(line: 282, column: 29, scope: !957)
!974 = !DILocation(line: 282, column: 20, scope: !957)
!975 = !DILocation(line: 282, column: 23, scope: !957)
!976 = !DILocation(line: 282, column: 7, scope: !957)
!977 = !DILocation(line: 282, column: 27, scope: !957)
!978 = !DILocation(line: 283, column: 5, scope: !957)
!979 = !DILocation(line: 278, column: 34, scope: !980)
!980 = !DILexicalBlockFile(scope: !953, file: !1, discriminator: 2)
!981 = !DILocation(line: 278, column: 5, scope: !980)
!982 = distinct !{!982, !983}
!983 = !DILocation(line: 278, column: 5, scope: !918)
!984 = !DILocation(line: 285, column: 12, scope: !918)
!985 = !DILocation(line: 285, column: 12, scope: !986)
!986 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 1)
!987 = !DILocation(line: 285, column: 12, scope: !988)
!988 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 2)
!989 = !DILocation(line: 285, column: 12, scope: !990)
!990 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 3)
!991 = !DILocation(line: 285, column: 12, scope: !992)
!992 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 4)
!993 = !DILocation(line: 285, column: 12, scope: !994)
!994 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 5)
!995 = !DILocation(line: 285, column: 12, scope: !996)
!996 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 6)
!997 = !DILocation(line: 285, column: 5, scope: !996)
!998 = !DILocation(line: 287, column: 1, scope: !844)
!999 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_steed_array", scope: !1, file: !1, line: 290, type: !845, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1000 = !DILocalVariable(name: "lmax", arg: 1, scope: !999, file: !1, line: 290, type: !442)
!1001 = !DILocation(line: 290, column: 44, scope: !999)
!1002 = !DILocalVariable(name: "x", arg: 2, scope: !999, file: !1, line: 290, type: !49)
!1003 = !DILocation(line: 290, column: 63, scope: !999)
!1004 = !DILocalVariable(name: "jl_x", arg: 3, scope: !999, file: !1, line: 290, type: !847)
!1005 = !DILocation(line: 290, column: 75, scope: !999)
!1006 = !DILocation(line: 294, column: 6, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !999, file: !1, line: 294, column: 6)
!1008 = !DILocation(line: 294, column: 11, scope: !1007)
!1009 = !DILocation(line: 294, column: 15, scope: !1007)
!1010 = !DILocation(line: 294, column: 18, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1007, file: !1, discriminator: 1)
!1012 = !DILocation(line: 294, column: 20, scope: !1011)
!1013 = !DILocation(line: 294, column: 6, scope: !1011)
!1014 = !DILocalVariable(name: "j", scope: !1015, file: !1, line: 295, type: !48)
!1015 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 294, column: 27)
!1016 = !DILocation(line: 295, column: 9, scope: !1015)
!1017 = !DILocation(line: 296, column: 10, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 296, column: 5)
!1019 = !DILocation(line: 296, column: 9, scope: !1018)
!1020 = !DILocation(line: 296, column: 14, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1022, file: !1, discriminator: 1)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 296, column: 5)
!1023 = !DILocation(line: 296, column: 17, scope: !1021)
!1024 = !DILocation(line: 296, column: 15, scope: !1021)
!1025 = !DILocation(line: 296, column: 5, scope: !1021)
!1026 = !DILocation(line: 296, column: 33, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1022, file: !1, discriminator: 2)
!1028 = !DILocation(line: 296, column: 28, scope: !1027)
!1029 = !DILocation(line: 296, column: 36, scope: !1027)
!1030 = !DILocation(line: 296, column: 24, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1022, file: !1, discriminator: 3)
!1032 = !DILocation(line: 296, column: 5, scope: !1031)
!1033 = distinct !{!1033, !1034}
!1034 = !DILocation(line: 296, column: 5, scope: !1015)
!1035 = !DILocation(line: 297, column: 5, scope: !1015)
!1036 = distinct !{!1036, !1035}
!1037 = !DILocation(line: 297, column: 5, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 1)
!1039 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 297, column: 5)
!1040 = !DILocation(line: 298, column: 3, scope: !1015)
!1041 = !DILocation(line: 299, column: 11, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 299, column: 11)
!1043 = !DILocation(line: 299, column: 13, scope: !1042)
!1044 = !DILocation(line: 299, column: 11, scope: !1007)
!1045 = !DILocalVariable(name: "j", scope: !1046, file: !1, line: 300, type: !48)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 299, column: 21)
!1047 = !DILocation(line: 300, column: 9, scope: !1046)
!1048 = !DILocation(line: 301, column: 10, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 301, column: 5)
!1050 = !DILocation(line: 301, column: 9, scope: !1049)
!1051 = !DILocation(line: 301, column: 14, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1053, file: !1, discriminator: 1)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 301, column: 5)
!1054 = !DILocation(line: 301, column: 17, scope: !1052)
!1055 = !DILocation(line: 301, column: 15, scope: !1052)
!1056 = !DILocation(line: 301, column: 5, scope: !1052)
!1057 = !DILocation(line: 301, column: 33, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1053, file: !1, discriminator: 2)
!1059 = !DILocation(line: 301, column: 28, scope: !1058)
!1060 = !DILocation(line: 301, column: 36, scope: !1058)
!1061 = !DILocation(line: 301, column: 24, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1053, file: !1, discriminator: 3)
!1063 = !DILocation(line: 301, column: 5, scope: !1062)
!1064 = distinct !{!1064, !1065}
!1065 = !DILocation(line: 301, column: 5, scope: !1046)
!1066 = !DILocation(line: 302, column: 5, scope: !1046)
!1067 = !DILocation(line: 302, column: 13, scope: !1046)
!1068 = !DILocation(line: 303, column: 5, scope: !1046)
!1069 = !DILocation(line: 305, column: 11, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 305, column: 11)
!1071 = !DILocation(line: 305, column: 13, scope: !1070)
!1072 = !DILocation(line: 305, column: 11, scope: !1042)
!1073 = !DILocalVariable(name: "inv_fact", scope: !1074, file: !1, line: 307, type: !50)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 305, column: 42)
!1075 = !DILocation(line: 307, column: 12, scope: !1074)
!1076 = !DILocalVariable(name: "x_l", scope: !1074, file: !1, line: 308, type: !50)
!1077 = !DILocation(line: 308, column: 12, scope: !1074)
!1078 = !DILocalVariable(name: "l", scope: !1074, file: !1, line: 309, type: !48)
!1079 = !DILocation(line: 309, column: 9, scope: !1074)
!1080 = !DILocation(line: 310, column: 10, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 310, column: 5)
!1082 = !DILocation(line: 310, column: 9, scope: !1081)
!1083 = !DILocation(line: 310, column: 14, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !1, discriminator: 1)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 310, column: 5)
!1086 = !DILocation(line: 310, column: 17, scope: !1084)
!1087 = !DILocation(line: 310, column: 15, scope: !1084)
!1088 = !DILocation(line: 310, column: 5, scope: !1084)
!1089 = !DILocation(line: 311, column: 18, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 310, column: 28)
!1091 = !DILocation(line: 311, column: 24, scope: !1090)
!1092 = !DILocation(line: 311, column: 22, scope: !1090)
!1093 = !DILocation(line: 311, column: 12, scope: !1090)
!1094 = !DILocation(line: 311, column: 7, scope: !1090)
!1095 = !DILocation(line: 311, column: 16, scope: !1090)
!1096 = !DILocation(line: 312, column: 28, scope: !1090)
!1097 = !DILocation(line: 312, column: 27, scope: !1090)
!1098 = !DILocation(line: 312, column: 30, scope: !1090)
!1099 = !DILocation(line: 312, column: 29, scope: !1090)
!1100 = !DILocation(line: 312, column: 37, scope: !1090)
!1101 = !DILocation(line: 312, column: 36, scope: !1090)
!1102 = !DILocation(line: 312, column: 38, scope: !1090)
!1103 = !DILocation(line: 312, column: 31, scope: !1090)
!1104 = !DILocation(line: 312, column: 22, scope: !1090)
!1105 = !DILocation(line: 312, column: 12, scope: !1090)
!1106 = !DILocation(line: 312, column: 7, scope: !1090)
!1107 = !DILocation(line: 312, column: 15, scope: !1090)
!1108 = !DILocation(line: 313, column: 23, scope: !1090)
!1109 = !DILocation(line: 313, column: 22, scope: !1090)
!1110 = !DILocation(line: 313, column: 24, scope: !1090)
!1111 = !DILocation(line: 313, column: 16, scope: !1090)
!1112 = !DILocation(line: 314, column: 19, scope: !1090)
!1113 = !DILocation(line: 314, column: 16, scope: !1090)
!1114 = !DILocation(line: 315, column: 5, scope: !1090)
!1115 = !DILocation(line: 310, column: 24, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1085, file: !1, discriminator: 2)
!1117 = !DILocation(line: 310, column: 5, scope: !1116)
!1118 = distinct !{!1118, !1119}
!1119 = !DILocation(line: 310, column: 5, scope: !1074)
!1120 = !DILocation(line: 316, column: 5, scope: !1074)
!1121 = !DILocalVariable(name: "x_inv", scope: !1122, file: !1, line: 320, type: !50)
!1122 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 318, column: 8)
!1123 = !DILocation(line: 320, column: 12, scope: !1122)
!1124 = !DILocation(line: 320, column: 24, scope: !1122)
!1125 = !DILocation(line: 320, column: 23, scope: !1122)
!1126 = !DILocalVariable(name: "W", scope: !1122, file: !1, line: 321, type: !50)
!1127 = !DILocation(line: 321, column: 12, scope: !1122)
!1128 = !DILocation(line: 321, column: 20, scope: !1122)
!1129 = !DILocation(line: 321, column: 19, scope: !1122)
!1130 = !DILocalVariable(name: "F", scope: !1122, file: !1, line: 322, type: !50)
!1131 = !DILocation(line: 322, column: 12, scope: !1122)
!1132 = !DILocalVariable(name: "FP", scope: !1122, file: !1, line: 323, type: !50)
!1133 = !DILocation(line: 323, column: 12, scope: !1122)
!1134 = !DILocation(line: 323, column: 18, scope: !1122)
!1135 = !DILocation(line: 323, column: 22, scope: !1122)
!1136 = !DILocation(line: 323, column: 30, scope: !1122)
!1137 = !DILocation(line: 323, column: 28, scope: !1122)
!1138 = !DILocalVariable(name: "B", scope: !1122, file: !1, line: 324, type: !50)
!1139 = !DILocation(line: 324, column: 12, scope: !1122)
!1140 = !DILocation(line: 324, column: 20, scope: !1122)
!1141 = !DILocation(line: 324, column: 19, scope: !1122)
!1142 = !DILocation(line: 324, column: 25, scope: !1122)
!1143 = !DILocation(line: 324, column: 23, scope: !1122)
!1144 = !DILocalVariable(name: "end", scope: !1122, file: !1, line: 325, type: !50)
!1145 = !DILocation(line: 325, column: 12, scope: !1122)
!1146 = !DILocation(line: 325, column: 18, scope: !1122)
!1147 = !DILocation(line: 325, column: 30, scope: !1122)
!1148 = !DILocation(line: 325, column: 29, scope: !1122)
!1149 = !DILocation(line: 325, column: 20, scope: !1122)
!1150 = !DILocalVariable(name: "D", scope: !1122, file: !1, line: 326, type: !50)
!1151 = !DILocation(line: 326, column: 12, scope: !1122)
!1152 = !DILocation(line: 326, column: 20, scope: !1122)
!1153 = !DILocation(line: 326, column: 19, scope: !1122)
!1154 = !DILocalVariable(name: "del", scope: !1122, file: !1, line: 327, type: !50)
!1155 = !DILocation(line: 327, column: 12, scope: !1122)
!1156 = !DILocation(line: 327, column: 19, scope: !1122)
!1157 = !DILocation(line: 327, column: 18, scope: !1122)
!1158 = !DILocation(line: 329, column: 11, scope: !1122)
!1159 = !DILocation(line: 329, column: 8, scope: !1122)
!1160 = !DILocation(line: 332, column: 5, scope: !1122)
!1161 = distinct !{!1161, !1160}
!1162 = !DILocation(line: 333, column: 12, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 332, column: 8)
!1164 = !DILocation(line: 333, column: 9, scope: !1163)
!1165 = !DILocation(line: 334, column: 16, scope: !1163)
!1166 = !DILocation(line: 334, column: 18, scope: !1163)
!1167 = !DILocation(line: 334, column: 17, scope: !1163)
!1168 = !DILocation(line: 334, column: 14, scope: !1163)
!1169 = !DILocation(line: 334, column: 9, scope: !1163)
!1170 = !DILocation(line: 335, column: 15, scope: !1163)
!1171 = !DILocation(line: 335, column: 17, scope: !1163)
!1172 = !DILocation(line: 335, column: 16, scope: !1163)
!1173 = !DILocation(line: 335, column: 19, scope: !1163)
!1174 = !DILocation(line: 335, column: 11, scope: !1163)
!1175 = !DILocation(line: 336, column: 13, scope: !1163)
!1176 = !DILocation(line: 336, column: 10, scope: !1163)
!1177 = !DILocation(line: 337, column: 10, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 337, column: 10)
!1179 = !DILocation(line: 337, column: 12, scope: !1178)
!1180 = !DILocation(line: 337, column: 10, scope: !1163)
!1181 = !DILocation(line: 337, column: 24, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1178, file: !1, discriminator: 1)
!1183 = !DILocation(line: 337, column: 23, scope: !1182)
!1184 = !DILocation(line: 337, column: 21, scope: !1182)
!1185 = !DILocation(line: 337, column: 19, scope: !1182)
!1186 = !DILocation(line: 338, column: 10, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 338, column: 10)
!1188 = !DILocation(line: 338, column: 14, scope: !1187)
!1189 = !DILocation(line: 338, column: 12, scope: !1187)
!1190 = !DILocation(line: 338, column: 10, scope: !1163)
!1191 = !DILocation(line: 339, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 338, column: 19)
!1193 = distinct !{!1193, !1191}
!1194 = !DILocation(line: 339, column: 9, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1196, file: !1, discriminator: 1)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 339, column: 9)
!1197 = !DILocation(line: 340, column: 7, scope: !1192)
!1198 = !DILocation(line: 341, column: 5, scope: !1163)
!1199 = !DILocation(line: 342, column: 16, scope: !1122)
!1200 = !DILocation(line: 342, column: 11, scope: !1122)
!1201 = !DILocation(line: 342, column: 29, scope: !1122)
!1202 = !DILocation(line: 342, column: 24, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1122, file: !1, discriminator: 1)
!1204 = !DILocation(line: 342, column: 33, scope: !1122)
!1205 = !DILocation(line: 342, column: 21, scope: !1122)
!1206 = !DILocation(line: 341, column: 5, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1163, file: !1, discriminator: 1)
!1208 = !DILocation(line: 344, column: 11, scope: !1122)
!1209 = !DILocation(line: 344, column: 8, scope: !1122)
!1210 = !DILocation(line: 346, column: 8, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 346, column: 8)
!1212 = !DILocation(line: 346, column: 13, scope: !1211)
!1213 = !DILocation(line: 346, column: 8, scope: !1122)
!1214 = !DILocalVariable(name: "XP2", scope: !1215, file: !1, line: 348, type: !50)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 346, column: 18)
!1216 = !DILocation(line: 348, column: 14, scope: !1215)
!1217 = !DILocation(line: 348, column: 20, scope: !1215)
!1218 = !DILocalVariable(name: "PL", scope: !1215, file: !1, line: 349, type: !50)
!1219 = !DILocation(line: 349, column: 14, scope: !1215)
!1220 = !DILocation(line: 349, column: 19, scope: !1215)
!1221 = !DILocation(line: 349, column: 26, scope: !1215)
!1222 = !DILocation(line: 349, column: 24, scope: !1215)
!1223 = !DILocalVariable(name: "L", scope: !1215, file: !1, line: 350, type: !48)
!1224 = !DILocation(line: 350, column: 11, scope: !1215)
!1225 = !DILocation(line: 350, column: 16, scope: !1215)
!1226 = !DILocalVariable(name: "LP", scope: !1215, file: !1, line: 351, type: !48)
!1227 = !DILocation(line: 351, column: 11, scope: !1215)
!1228 = !DILocation(line: 352, column: 20, scope: !1215)
!1229 = !DILocation(line: 352, column: 12, scope: !1215)
!1230 = !DILocation(line: 352, column: 7, scope: !1215)
!1231 = !DILocation(line: 352, column: 18, scope: !1215)
!1232 = !DILocation(line: 353, column: 14, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 353, column: 7)
!1234 = !DILocation(line: 353, column: 11, scope: !1233)
!1235 = !DILocation(line: 353, column: 19, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1237, file: !1, discriminator: 1)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 353, column: 7)
!1238 = !DILocation(line: 353, column: 23, scope: !1236)
!1239 = !DILocation(line: 353, column: 21, scope: !1236)
!1240 = !DILocation(line: 353, column: 7, scope: !1236)
!1241 = !DILocation(line: 354, column: 21, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 353, column: 35)
!1243 = !DILocation(line: 354, column: 31, scope: !1242)
!1244 = !DILocation(line: 354, column: 26, scope: !1242)
!1245 = !DILocation(line: 354, column: 24, scope: !1242)
!1246 = !DILocation(line: 354, column: 36, scope: !1242)
!1247 = !DILocation(line: 354, column: 34, scope: !1242)
!1248 = !DILocation(line: 354, column: 14, scope: !1242)
!1249 = !DILocation(line: 354, column: 15, scope: !1242)
!1250 = !DILocation(line: 354, column: 9, scope: !1242)
!1251 = !DILocation(line: 354, column: 19, scope: !1242)
!1252 = !DILocation(line: 355, column: 14, scope: !1242)
!1253 = !DILocation(line: 355, column: 22, scope: !1242)
!1254 = !DILocation(line: 355, column: 23, scope: !1242)
!1255 = !DILocation(line: 355, column: 17, scope: !1242)
!1256 = !DILocation(line: 355, column: 16, scope: !1242)
!1257 = !DILocation(line: 355, column: 34, scope: !1242)
!1258 = !DILocation(line: 355, column: 29, scope: !1242)
!1259 = !DILocation(line: 355, column: 27, scope: !1242)
!1260 = !DILocation(line: 355, column: 12, scope: !1242)
!1261 = !DILocation(line: 356, column: 15, scope: !1242)
!1262 = !DILocation(line: 356, column: 13, scope: !1242)
!1263 = !DILocation(line: 357, column: 15, scope: !1242)
!1264 = !DILocation(line: 357, column: 12, scope: !1242)
!1265 = !DILocation(line: 358, column: 9, scope: !1242)
!1266 = !DILocation(line: 359, column: 7, scope: !1242)
!1267 = !DILocation(line: 353, column: 31, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1237, file: !1, discriminator: 2)
!1269 = !DILocation(line: 353, column: 7, scope: !1268)
!1270 = distinct !{!1270, !1271}
!1271 = !DILocation(line: 353, column: 7, scope: !1215)
!1272 = !DILocation(line: 360, column: 11, scope: !1215)
!1273 = !DILocation(line: 360, column: 9, scope: !1215)
!1274 = !DILocation(line: 361, column: 5, scope: !1215)
!1275 = !DILocation(line: 364, column: 9, scope: !1122)
!1276 = !DILocation(line: 364, column: 23, scope: !1122)
!1277 = !DILocation(line: 364, column: 27, scope: !1122)
!1278 = !DILocation(line: 364, column: 17, scope: !1122)
!1279 = !DILocation(line: 364, column: 15, scope: !1122)
!1280 = !DILocation(line: 364, column: 7, scope: !1122)
!1281 = !DILocation(line: 365, column: 15, scope: !1122)
!1282 = !DILocation(line: 365, column: 17, scope: !1122)
!1283 = !DILocation(line: 365, column: 16, scope: !1122)
!1284 = !DILocation(line: 365, column: 5, scope: !1122)
!1285 = !DILocation(line: 365, column: 13, scope: !1122)
!1286 = !DILocation(line: 366, column: 8, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 366, column: 8)
!1288 = !DILocation(line: 366, column: 13, scope: !1287)
!1289 = !DILocation(line: 366, column: 8, scope: !1122)
!1290 = !DILocalVariable(name: "L", scope: !1291, file: !1, line: 367, type: !48)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 366, column: 18)
!1292 = !DILocation(line: 367, column: 11, scope: !1291)
!1293 = !DILocation(line: 368, column: 12, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 368, column: 7)
!1295 = !DILocation(line: 368, column: 11, scope: !1294)
!1296 = !DILocation(line: 368, column: 16, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1298, file: !1, discriminator: 1)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 368, column: 7)
!1299 = !DILocation(line: 368, column: 19, scope: !1297)
!1300 = !DILocation(line: 368, column: 17, scope: !1297)
!1301 = !DILocation(line: 368, column: 7, scope: !1297)
!1302 = !DILocation(line: 369, column: 20, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 368, column: 30)
!1304 = !DILocation(line: 369, column: 14, scope: !1303)
!1305 = !DILocation(line: 369, column: 9, scope: !1303)
!1306 = !DILocation(line: 369, column: 17, scope: !1303)
!1307 = !DILocation(line: 370, column: 7, scope: !1303)
!1308 = !DILocation(line: 368, column: 26, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1298, file: !1, discriminator: 2)
!1310 = !DILocation(line: 368, column: 7, scope: !1309)
!1311 = distinct !{!1311, !1312}
!1312 = !DILocation(line: 368, column: 7, scope: !1291)
!1313 = !DILocation(line: 371, column: 5, scope: !1291)
!1314 = !DILocation(line: 373, column: 5, scope: !1122)
!1315 = !DILocation(line: 375, column: 1, scope: !999)
!1316 = distinct !DISubprogram(name: "gsl_sf_bessel_j0", scope: !1, file: !1, line: 382, type: !1317, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!50, !49}
!1319 = !DILocalVariable(name: "x", arg: 1, scope: !1316, file: !1, line: 382, type: !49)
!1320 = !DILocation(line: 382, column: 38, scope: !1316)
!1321 = !DILocalVariable(name: "result", scope: !1316, file: !1, line: 384, type: !52)
!1322 = !DILocation(line: 384, column: 3, scope: !1316)
!1323 = !DILocalVariable(name: "status", scope: !1316, file: !1, line: 384, type: !48)
!1324 = !DILocation(line: 384, column: 3, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 384, column: 3)
!1326 = !DILocation(line: 384, column: 3, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 1)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 384, column: 3)
!1329 = distinct !{!1329, !1330}
!1330 = !DILocation(line: 384, column: 3, scope: !1328)
!1331 = !DILocation(line: 384, column: 3, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 2)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 384, column: 3)
!1334 = !DILocation(line: 384, column: 3, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 3)
!1336 = !DILocation(line: 384, column: 3, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1316, file: !1, discriminator: 4)
!1338 = !DILocation(line: 385, column: 1, scope: !1316)
!1339 = distinct !DISubprogram(name: "gsl_sf_bessel_j1", scope: !1, file: !1, line: 387, type: !1317, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1340 = !DILocalVariable(name: "x", arg: 1, scope: !1339, file: !1, line: 387, type: !49)
!1341 = !DILocation(line: 387, column: 38, scope: !1339)
!1342 = !DILocalVariable(name: "result", scope: !1339, file: !1, line: 389, type: !52)
!1343 = !DILocation(line: 389, column: 3, scope: !1339)
!1344 = !DILocalVariable(name: "status", scope: !1339, file: !1, line: 389, type: !48)
!1345 = !DILocation(line: 389, column: 3, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 389, column: 3)
!1347 = !DILocation(line: 389, column: 3, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1349, file: !1, discriminator: 1)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 389, column: 3)
!1350 = distinct !{!1350, !1351}
!1351 = !DILocation(line: 389, column: 3, scope: !1349)
!1352 = !DILocation(line: 389, column: 3, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 2)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 389, column: 3)
!1355 = !DILocation(line: 389, column: 3, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1349, file: !1, discriminator: 3)
!1357 = !DILocation(line: 389, column: 3, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1339, file: !1, discriminator: 4)
!1359 = !DILocation(line: 390, column: 1, scope: !1339)
!1360 = distinct !DISubprogram(name: "gsl_sf_bessel_j2", scope: !1, file: !1, line: 392, type: !1317, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1361 = !DILocalVariable(name: "x", arg: 1, scope: !1360, file: !1, line: 392, type: !49)
!1362 = !DILocation(line: 392, column: 38, scope: !1360)
!1363 = !DILocalVariable(name: "result", scope: !1360, file: !1, line: 394, type: !52)
!1364 = !DILocation(line: 394, column: 3, scope: !1360)
!1365 = !DILocalVariable(name: "status", scope: !1360, file: !1, line: 394, type: !48)
!1366 = !DILocation(line: 394, column: 3, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 394, column: 3)
!1368 = !DILocation(line: 394, column: 3, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1370, file: !1, discriminator: 1)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 394, column: 3)
!1371 = distinct !{!1371, !1372}
!1372 = !DILocation(line: 394, column: 3, scope: !1370)
!1373 = !DILocation(line: 394, column: 3, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !1, discriminator: 2)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 394, column: 3)
!1376 = !DILocation(line: 394, column: 3, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1370, file: !1, discriminator: 3)
!1378 = !DILocation(line: 394, column: 3, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1360, file: !1, discriminator: 4)
!1380 = !DILocation(line: 395, column: 1, scope: !1360)
!1381 = distinct !DISubprogram(name: "gsl_sf_bessel_jl", scope: !1, file: !1, line: 397, type: !1382, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!50, !442, !49}
!1384 = !DILocalVariable(name: "l", arg: 1, scope: !1381, file: !1, line: 397, type: !442)
!1385 = !DILocation(line: 397, column: 35, scope: !1381)
!1386 = !DILocalVariable(name: "x", arg: 2, scope: !1381, file: !1, line: 397, type: !49)
!1387 = !DILocation(line: 397, column: 51, scope: !1381)
!1388 = !DILocalVariable(name: "result", scope: !1381, file: !1, line: 399, type: !52)
!1389 = !DILocation(line: 399, column: 3, scope: !1381)
!1390 = !DILocalVariable(name: "status", scope: !1381, file: !1, line: 399, type: !48)
!1391 = !DILocation(line: 399, column: 3, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 399, column: 3)
!1393 = !DILocation(line: 399, column: 3, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1395, file: !1, discriminator: 1)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 399, column: 3)
!1396 = distinct !{!1396, !1397}
!1397 = !DILocation(line: 399, column: 3, scope: !1395)
!1398 = !DILocation(line: 399, column: 3, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1400, file: !1, discriminator: 2)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !1, line: 399, column: 3)
!1401 = !DILocation(line: 399, column: 3, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1395, file: !1, discriminator: 3)
!1403 = !DILocation(line: 399, column: 3, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1381, file: !1, discriminator: 4)
!1405 = !DILocation(line: 400, column: 1, scope: !1381)
