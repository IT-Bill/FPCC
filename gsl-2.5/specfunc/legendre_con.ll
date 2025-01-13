; ModuleID = 'legendre_con.c'
source_filename = "legendre_con.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"legendre_con.c\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"gsl_sf_conicalP_0_e(lambda, x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"gsl_sf_conicalP_1_e(lambda, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"gsl_sf_conicalP_half_e(lambda, x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"gsl_sf_conicalP_mhalf_e(lambda, x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"gsl_sf_conicalP_sph_reg_e(l, lambda, x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"gsl_sf_conicalP_cyl_reg_e(m, lambda, x, &result)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_conicalP_xlt1_large_neg_mu_e(double, double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !45 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !59, metadata !60), !dbg !61
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !62, metadata !60), !dbg !63
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !64, metadata !60), !dbg !65
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !66, metadata !60), !dbg !67
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !68, metadata !60), !dbg !69
  call void @llvm.dbg.declare(metadata double* %12, metadata !70, metadata !60), !dbg !71
  %24 = load double, double* %8, align 8, !dbg !72
  %25 = load double, double* %7, align 8, !dbg !73
  %26 = fdiv double %24, %25, !dbg !74
  store double %26, double* %12, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata double* %13, metadata !75, metadata !60), !dbg !76
  %27 = load double, double* %12, align 8, !dbg !77
  %28 = load double, double* %12, align 8, !dbg !78
  %29 = fmul double %27, %28, !dbg !79
  store double %29, double* %13, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata double* %14, metadata !80, metadata !60), !dbg !81
  %30 = load double, double* %12, align 8, !dbg !82
  %31 = load double, double* %13, align 8, !dbg !83
  %32 = fsub double 1.000000e+00, %31, !dbg !84
  %33 = load double, double* %13, align 8, !dbg !85
  %34 = fadd double 1.000000e+00, %33, !dbg !86
  %35 = fdiv double %32, %34, !dbg !87
  %36 = call double @acos(double %35) #6, !dbg !88
  %37 = fmul double %30, %36, !dbg !89
  store double %37, double* %14, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %15, metadata !90, metadata !60), !dbg !91
  %38 = load double, double* %9, align 8, !dbg !92
  %39 = load double, double* %13, align 8, !dbg !93
  %40 = load double, double* %9, align 8, !dbg !94
  %41 = load double, double* %9, align 8, !dbg !95
  %42 = fmul double %40, %41, !dbg !96
  %43 = fsub double 1.000000e+00, %42, !dbg !97
  %44 = fmul double %39, %43, !dbg !98
  %45 = fadd double %44, 1.000000e+00, !dbg !99
  %46 = call double @sqrt(double %45) #6, !dbg !100
  %47 = fdiv double %38, %46, !dbg !101
  store double %47, double* %15, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !102, metadata !60), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %17, metadata !104, metadata !60), !dbg !105
  %48 = load double, double* %7, align 8, !dbg !106
  %49 = fadd double %48, 1.000000e+00, !dbg !107
  %50 = call i32 @gsl_sf_lngamma_e(double %49, %struct.gsl_sf_result_struct* %16), !dbg !108
  store i32 %50, i32* %17, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata double* %18, metadata !109, metadata !60), !dbg !110
  %51 = load double, double* %7, align 8, !dbg !111
  %52 = fmul double 5.000000e-01, %51, !dbg !112
  %53 = load double, double* %14, align 8, !dbg !113
  %54 = load double, double* %13, align 8, !dbg !114
  %55 = fadd double 1.000000e+00, %54, !dbg !115
  %56 = call double @log(double %55) #6, !dbg !116
  %57 = fsub double %53, %56, !dbg !117
  %58 = load double, double* %15, align 8, !dbg !118
  %59 = fsub double 1.000000e+00, %58, !dbg !119
  %60 = load double, double* %15, align 8, !dbg !120
  %61 = fadd double 1.000000e+00, %60, !dbg !121
  %62 = fdiv double %59, %61, !dbg !122
  %63 = call double @log(double %62) #6, !dbg !123
  %64 = fadd double %57, %63, !dbg !125
  %65 = fmul double %52, %64, !dbg !126
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !127
  %67 = load double, double* %66, align 8, !dbg !127
  %68 = fsub double %65, %67, !dbg !128
  store double %68, double* %18, align 8, !dbg !110
  call void @llvm.dbg.declare(metadata double* %19, metadata !129, metadata !60), !dbg !130
  %69 = load double, double* %13, align 8, !dbg !131
  %70 = load double, double* %9, align 8, !dbg !132
  %71 = fsub double 1.000000e+00, %70, !dbg !133
  %72 = fmul double %69, %71, !dbg !134
  %73 = fadd double 1.000000e+00, %72, !dbg !135
  %74 = call double @log(double %73) #6, !dbg !136
  %75 = fmul double -2.500000e-01, %74, !dbg !137
  store double %75, double* %19, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata double* %20, metadata !138, metadata !60), !dbg !139
  %76 = load double, double* %8, align 8, !dbg !140
  %77 = fsub double -0.000000e+00, %76, !dbg !141
  %78 = load double, double* %15, align 8, !dbg !142
  %79 = load double, double* %12, align 8, !dbg !143
  %80 = fmul double %78, %79, !dbg !144
  %81 = call double @atan(double %80) #6, !dbg !145
  %82 = fmul double %77, %81, !dbg !146
  store double %82, double* %20, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata double* %21, metadata !147, metadata !60), !dbg !148
  %83 = load double, double* %18, align 8, !dbg !149
  %84 = load double, double* %19, align 8, !dbg !150
  %85 = fadd double %83, %84, !dbg !151
  %86 = load double, double* %20, align 8, !dbg !152
  %87 = fadd double %85, %86, !dbg !153
  store double %87, double* %21, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata double* %22, metadata !154, metadata !60), !dbg !155
  %88 = load double, double* %13, align 8, !dbg !156
  %89 = load double, double* %15, align 8, !dbg !157
  %90 = call double @olver_U1(double %88, double %89), !dbg !158
  %91 = load double, double* %7, align 8, !dbg !159
  %92 = fdiv double %90, %91, !dbg !160
  %93 = fsub double 1.000000e+00, %92, !dbg !161
  %94 = load double, double* %13, align 8, !dbg !162
  %95 = load double, double* %15, align 8, !dbg !163
  %96 = call double @olver_U2(double %94, double %95), !dbg !164
  %97 = load double, double* %7, align 8, !dbg !165
  %98 = load double, double* %7, align 8, !dbg !166
  %99 = fmul double %97, %98, !dbg !167
  %100 = fdiv double %96, %99, !dbg !168
  %101 = fadd double %93, %100, !dbg !169
  store double %101, double* %22, align 8, !dbg !155
  %102 = load double, double* %22, align 8, !dbg !170
  %103 = fcmp oeq double %102, 0.000000e+00, !dbg !172
  br i1 %103, label %104, label %110, !dbg !173

; <label>:104:                                    ; preds = %5
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !174
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !176
  store double 0.000000e+00, double* %106, align 8, !dbg !177
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !178
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !179
  store double 0.000000e+00, double* %108, align 8, !dbg !180
  %109 = load double*, double** %11, align 8, !dbg !181
  store double 0.000000e+00, double* %109, align 8, !dbg !182
  store i32 0, i32* %6, align 4, !dbg !183
  br label %132, !dbg !183

; <label>:110:                                    ; preds = %5
  call void @llvm.dbg.declare(metadata i32* %23, metadata !184, metadata !60), !dbg !186
  %111 = load double, double* %21, align 8, !dbg !187
  %112 = load double, double* %22, align 8, !dbg !188
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !189
  %114 = call i32 @gsl_sf_exp_mult_e(double %111, double %112, %struct.gsl_sf_result_struct* %113), !dbg !190
  store i32 %114, i32* %23, align 4, !dbg !186
  %115 = load i32, i32* %23, align 4, !dbg !191
  %116 = icmp ne i32 %115, 0, !dbg !193
  br i1 %116, label %117, label %128, !dbg !194

; <label>:117:                                    ; preds = %110
  %118 = load double, double* %22, align 8, !dbg !195
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !197
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 0, !dbg !198
  store double %118, double* %120, align 8, !dbg !199
  %121 = load double, double* %22, align 8, !dbg !200
  %122 = call double @fabs(double %121) #1, !dbg !201
  %123 = fmul double 0x3CC0000000000000, %122, !dbg !202
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !203
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 1, !dbg !204
  store double %123, double* %125, align 8, !dbg !205
  %126 = load double, double* %21, align 8, !dbg !206
  %127 = load double*, double** %11, align 8, !dbg !207
  store double %126, double* %127, align 8, !dbg !208
  br label %130, !dbg !209

; <label>:128:                                    ; preds = %110
  %129 = load double*, double** %11, align 8, !dbg !210
  store double 0.000000e+00, double* %129, align 8, !dbg !212
  br label %130

; <label>:130:                                    ; preds = %128, %117
  %131 = load i32, i32* %17, align 4, !dbg !213
  store i32 %131, i32* %6, align 4, !dbg !214
  br label %132, !dbg !214

; <label>:132:                                    ; preds = %130, %104
  %133 = load i32, i32* %6, align 4, !dbg !215
  ret i32 %133, !dbg !215
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @acos(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind
declare double @atan(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal double @olver_U1(double, double) #4 !dbg !216 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !219, metadata !60), !dbg !220
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !221, metadata !60), !dbg !222
  %5 = load double, double* %4, align 8, !dbg !223
  %6 = fsub double %5, 1.000000e+00, !dbg !224
  %7 = load double, double* %3, align 8, !dbg !225
  %8 = fadd double 1.000000e+00, %7, !dbg !226
  %9 = fmul double 2.400000e+01, %8, !dbg !227
  %10 = fdiv double %6, %9, !dbg !228
  %11 = load double, double* %3, align 8, !dbg !229
  %12 = load double, double* %4, align 8, !dbg !230
  %13 = fmul double 5.000000e+00, %12, !dbg !231
  %14 = load double, double* %4, align 8, !dbg !232
  %15 = fadd double 1.000000e+00, %14, !dbg !233
  %16 = fmul double %13, %15, !dbg !234
  %17 = fadd double 2.000000e+00, %16, !dbg !235
  %18 = fmul double %11, %17, !dbg !236
  %19 = fadd double 3.000000e+00, %18, !dbg !237
  %20 = fmul double %10, %19, !dbg !238
  ret double %20, !dbg !239
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @olver_U2(double, double) #4 !dbg !240 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !241, metadata !60), !dbg !242
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !243, metadata !60), !dbg !244
  call void @llvm.dbg.declare(metadata double* %5, metadata !245, metadata !60), !dbg !246
  %10 = load double, double* %3, align 8, !dbg !247
  %11 = load double, double* %3, align 8, !dbg !248
  %12 = fmul double %10, %11, !dbg !249
  store double %12, double* %5, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata double* %6, metadata !250, metadata !60), !dbg !251
  %13 = load double, double* %4, align 8, !dbg !252
  %14 = load double, double* %4, align 8, !dbg !253
  %15 = fmul double %13, %14, !dbg !254
  store double %15, double* %6, align 8, !dbg !251
  call void @llvm.dbg.declare(metadata double* %7, metadata !255, metadata !60), !dbg !256
  %16 = load double, double* %5, align 8, !dbg !257
  %17 = fmul double 4.000000e+00, %16, !dbg !258
  %18 = load double, double* %3, align 8, !dbg !259
  %19 = fmul double 8.400000e+01, %18, !dbg !260
  %20 = fadd double %17, %19, !dbg !261
  %21 = fsub double %20, 6.300000e+01, !dbg !262
  store double %21, double* %7, align 8, !dbg !256
  call void @llvm.dbg.declare(metadata double* %8, metadata !263, metadata !60), !dbg !264
  %22 = load double, double* %5, align 8, !dbg !265
  %23 = fmul double 1.600000e+01, %22, !dbg !266
  %24 = load double, double* %3, align 8, !dbg !267
  %25 = fmul double 9.000000e+01, %24, !dbg !268
  %26 = fadd double %23, %25, !dbg !269
  %27 = fsub double %26, 8.100000e+01, !dbg !270
  store double %27, double* %8, align 8, !dbg !264
  call void @llvm.dbg.declare(metadata double* %9, metadata !271, metadata !60), !dbg !272
  %28 = load double, double* %3, align 8, !dbg !273
  %29 = load double, double* %6, align 8, !dbg !274
  %30 = fmul double %28, %29, !dbg !275
  %31 = load double, double* %3, align 8, !dbg !276
  %32 = fmul double 9.700000e+01, %31, !dbg !277
  %33 = fsub double %32, 4.320000e+02, !dbg !278
  %34 = load double, double* %4, align 8, !dbg !279
  %35 = fmul double 7.700000e+01, %34, !dbg !280
  %36 = load double, double* %3, align 8, !dbg !281
  %37 = fsub double %36, 6.000000e+00, !dbg !282
  %38 = fmul double %35, %37, !dbg !283
  %39 = fadd double %33, %38, !dbg !284
  %40 = load double, double* %3, align 8, !dbg !285
  %41 = fmul double 3.850000e+02, %40, !dbg !286
  %42 = load double, double* %6, align 8, !dbg !287
  %43 = fmul double %41, %42, !dbg !288
  %44 = load double, double* %4, align 8, !dbg !289
  %45 = fadd double 1.000000e+00, %44, !dbg !290
  %46 = fmul double %43, %45, !dbg !291
  %47 = fsub double %39, %46, !dbg !292
  %48 = fmul double %30, %47, !dbg !293
  store double %48, double* %9, align 8, !dbg !272
  %49 = load double, double* %4, align 8, !dbg !294
  %50 = fsub double 1.000000e+00, %49, !dbg !295
  %51 = load double, double* %3, align 8, !dbg !296
  %52 = fadd double 1.000000e+00, %51, !dbg !297
  %53 = fmul double 1.152000e+03, %52, !dbg !298
  %54 = fdiv double %50, %53, !dbg !299
  %55 = load double, double* %7, align 8, !dbg !300
  %56 = load double, double* %8, align 8, !dbg !301
  %57 = fadd double %55, %56, !dbg !302
  %58 = load double, double* %9, align 8, !dbg !303
  %59 = fadd double %57, %58, !dbg !304
  %60 = fmul double %54, %59, !dbg !305
  ret double %60, !dbg !306
}

declare i32 @gsl_sf_exp_mult_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double, double, double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !307 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca i32, align 4
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !311, metadata !60), !dbg !312
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !313, metadata !60), !dbg !314
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !315, metadata !60), !dbg !316
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !317, metadata !60), !dbg !318
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %12, metadata !319, metadata !60), !dbg !320
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !321, metadata !60), !dbg !322
  call void @llvm.dbg.declare(metadata double* %14, metadata !323, metadata !60), !dbg !324
  %26 = load double, double* %11, align 8, !dbg !325
  store double %26, double* %14, align 8, !dbg !324
  call void @llvm.dbg.declare(metadata double* %15, metadata !326, metadata !60), !dbg !327
  call void @llvm.dbg.declare(metadata double* %16, metadata !328, metadata !60), !dbg !329
  call void @llvm.dbg.declare(metadata double* %17, metadata !330, metadata !60), !dbg !331
  call void @llvm.dbg.declare(metadata double* %18, metadata !332, metadata !60), !dbg !333
  call void @llvm.dbg.declare(metadata double* %19, metadata !334, metadata !60), !dbg !335
  call void @llvm.dbg.declare(metadata double* %20, metadata !336, metadata !60), !dbg !337
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !338, metadata !60), !dbg !339
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !340, metadata !60), !dbg !341
  call void @llvm.dbg.declare(metadata double* %23, metadata !342, metadata !60), !dbg !343
  %27 = load double, double* %14, align 8, !dbg !344
  %28 = fcmp olt double %27, 0x3F20000000000000, !dbg !346
  br i1 %28, label %29, label %35, !dbg !347

; <label>:29:                                     ; preds = %6
  %30 = load double, double* %14, align 8, !dbg !348
  %31 = fsub double -0.000000e+00, %30, !dbg !350
  %32 = load double, double* %14, align 8, !dbg !351
  %33 = fmul double %31, %32, !dbg !352
  %34 = fdiv double %33, 6.000000e+00, !dbg !353
  store double %34, double* %15, align 8, !dbg !354
  br label %43, !dbg !355

; <label>:35:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !356, metadata !60), !dbg !358
  %36 = load double, double* %14, align 8, !dbg !359
  %37 = call i32 @gsl_sf_lnsinh_e(double %36, %struct.gsl_sf_result_struct* %24), !dbg !360
  %38 = load double, double* %14, align 8, !dbg !361
  %39 = call double @log(double %38) #6, !dbg !362
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !363
  %41 = load double, double* %40, align 8, !dbg !363
  %42 = fsub double %39, %41, !dbg !364
  store double %42, double* %15, align 8, !dbg !365
  br label %43

; <label>:43:                                     ; preds = %35, %29
  %44 = load double, double* %15, align 8, !dbg !366
  %45 = fmul double 5.000000e-01, %44, !dbg !367
  %46 = load double, double* %8, align 8, !dbg !368
  %47 = load double, double* %9, align 8, !dbg !369
  %48 = call double @log(double %47) #6, !dbg !370
  %49 = fmul double %46, %48, !dbg !371
  %50 = fsub double %45, %49, !dbg !372
  store double %50, double* %16, align 8, !dbg !373
  %51 = load double, double* %9, align 8, !dbg !374
  %52 = load double, double* %14, align 8, !dbg !375
  %53 = fmul double %51, %52, !dbg !376
  store double %53, double* %20, align 8, !dbg !377
  %54 = load double, double* %8, align 8, !dbg !378
  %55 = fadd double %54, 1.000000e+00, !dbg !379
  %56 = load double, double* %20, align 8, !dbg !380
  %57 = call i32 @gsl_sf_bessel_Jnu_e(double %55, double %56, %struct.gsl_sf_result_struct* %21), !dbg !381
  %58 = load double, double* %8, align 8, !dbg !382
  %59 = load double, double* %20, align 8, !dbg !383
  %60 = call i32 @gsl_sf_bessel_Jnu_e(double %58, double %59, %struct.gsl_sf_result_struct* %22), !dbg !384
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !385
  %62 = load double, double* %61, align 8, !dbg !385
  %63 = fsub double -0.000000e+00, %62, !dbg !386
  %64 = load double, double* %8, align 8, !dbg !387
  %65 = fmul double 2.000000e+00, %64, !dbg !388
  %66 = load double, double* %20, align 8, !dbg !389
  %67 = fdiv double %65, %66, !dbg !390
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !391
  %69 = load double, double* %68, align 8, !dbg !391
  %70 = fmul double %67, %69, !dbg !392
  %71 = fadd double %63, %70, !dbg !393
  store double %71, double* %23, align 8, !dbg !394
  %72 = load double, double* %8, align 8, !dbg !395
  %73 = fsub double -0.000000e+00, %72, !dbg !396
  %74 = load double, double* %14, align 8, !dbg !397
  %75 = load double, double* %10, align 8, !dbg !398
  %76 = call double @olver_A1_xi(double %73, double %74, double %75), !dbg !399
  %77 = load double, double* %9, align 8, !dbg !400
  %78 = load double, double* %9, align 8, !dbg !401
  %79 = fmul double %77, %78, !dbg !402
  %80 = fdiv double %76, %79, !dbg !403
  %81 = fsub double 1.000000e+00, %80, !dbg !404
  store double %81, double* %17, align 8, !dbg !405
  %82 = load double, double* %8, align 8, !dbg !406
  %83 = fsub double -0.000000e+00, %82, !dbg !407
  %84 = load double, double* %14, align 8, !dbg !408
  %85 = call double @olver_B0_xi(double %83, double %84), !dbg !409
  store double %85, double* %18, align 8, !dbg !410
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !411
  %87 = load double, double* %86, align 8, !dbg !411
  %88 = load double, double* %17, align 8, !dbg !412
  %89 = fmul double %87, %88, !dbg !413
  %90 = load double, double* %14, align 8, !dbg !414
  %91 = load double, double* %9, align 8, !dbg !415
  %92 = fdiv double %90, %91, !dbg !416
  %93 = load double, double* %23, align 8, !dbg !417
  %94 = fmul double %92, %93, !dbg !418
  %95 = load double, double* %18, align 8, !dbg !419
  %96 = fmul double %94, %95, !dbg !420
  %97 = fsub double %89, %96, !dbg !421
  store double %97, double* %19, align 8, !dbg !422
  %98 = load double, double* %19, align 8, !dbg !423
  %99 = fcmp oeq double %98, 0.000000e+00, !dbg !425
  br i1 %99, label %100, label %106, !dbg !426

; <label>:100:                                    ; preds = %43
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !427
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !429
  store double 0.000000e+00, double* %102, align 8, !dbg !430
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !431
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !432
  store double 0.000000e+00, double* %104, align 8, !dbg !433
  %105 = load double*, double** %13, align 8, !dbg !434
  store double 0.000000e+00, double* %105, align 8, !dbg !435
  store i32 0, i32* %7, align 4, !dbg !436
  br label %127, !dbg !436

; <label>:106:                                    ; preds = %43
  call void @llvm.dbg.declare(metadata i32* %25, metadata !437, metadata !60), !dbg !439
  %107 = load double, double* %16, align 8, !dbg !440
  %108 = load double, double* %19, align 8, !dbg !441
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !442
  %110 = call i32 @gsl_sf_exp_mult_e(double %107, double %108, %struct.gsl_sf_result_struct* %109), !dbg !443
  store i32 %110, i32* %25, align 4, !dbg !439
  %111 = load i32, i32* %25, align 4, !dbg !444
  %112 = icmp ne i32 %111, 0, !dbg !446
  br i1 %112, label %113, label %124, !dbg !447

; <label>:113:                                    ; preds = %106
  %114 = load double, double* %19, align 8, !dbg !448
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !450
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !451
  store double %114, double* %116, align 8, !dbg !452
  %117 = load double, double* %19, align 8, !dbg !453
  %118 = call double @fabs(double %117) #1, !dbg !454
  %119 = fmul double 0x3CC0000000000000, %118, !dbg !455
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !456
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !457
  store double %119, double* %121, align 8, !dbg !458
  %122 = load double, double* %16, align 8, !dbg !459
  %123 = load double*, double** %13, align 8, !dbg !460
  store double %122, double* %123, align 8, !dbg !461
  br label %126, !dbg !462

; <label>:124:                                    ; preds = %106
  %125 = load double*, double** %13, align 8, !dbg !463
  store double 0.000000e+00, double* %125, align 8, !dbg !465
  br label %126

; <label>:126:                                    ; preds = %124, %113
  store i32 0, i32* %7, align 4, !dbg !466
  br label %127, !dbg !466

; <label>:127:                                    ; preds = %126, %100
  %128 = load i32, i32* %7, align 4, !dbg !467
  ret i32 %128, !dbg !467
}

declare i32 @gsl_sf_lnsinh_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_Jnu_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define internal double @olver_A1_xi(double, double, double) #0 !dbg !468 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !471, metadata !60), !dbg !472
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !473, metadata !60), !dbg !474
  store double %2, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !475, metadata !60), !dbg !476
  call void @llvm.dbg.declare(metadata double* %7, metadata !477, metadata !60), !dbg !478
  %11 = load double, double* %4, align 8, !dbg !479
  %12 = load double, double* %5, align 8, !dbg !480
  %13 = call double @olver_B0_xi(double %11, double %12), !dbg !481
  store double %13, double* %7, align 8, !dbg !478
  call void @llvm.dbg.declare(metadata double* %8, metadata !482, metadata !60), !dbg !483
  %14 = load double, double* %6, align 8, !dbg !484
  %15 = fsub double %14, 1.000000e+00, !dbg !486
  %16 = call double @fabs(double %15) #1, !dbg !487
  %17 = fcmp olt double %16, 0x3F20000000000000, !dbg !488
  br i1 %17, label %18, label %38, !dbg !489

; <label>:18:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %9, metadata !490, metadata !60), !dbg !492
  %19 = load double, double* %6, align 8, !dbg !493
  %20 = fsub double %19, 1.000000e+00, !dbg !494
  store double %20, double* %9, align 8, !dbg !492
  call void @llvm.dbg.declare(metadata double* %10, metadata !495, metadata !60), !dbg !496
  %21 = load double, double* %9, align 8, !dbg !497
  %22 = load double, double* %9, align 8, !dbg !498
  %23 = load double, double* %9, align 8, !dbg !499
  %24 = fmul double 0x3FA053825FF87CB0, %23, !dbg !500
  %25 = fsub double 0x3FB0865DBB310866, %24, !dbg !501
  %26 = fmul double %22, %25, !dbg !502
  %27 = fsub double 0x3FC1111111111111, %26, !dbg !503
  %28 = fmul double %21, %27, !dbg !504
  %29 = fadd double 0xBFD5555555555555, %28, !dbg !505
  store double %29, double* %10, align 8, !dbg !496
  %30 = load double, double* %4, align 8, !dbg !506
  %31 = fmul double 4.000000e+00, %30, !dbg !507
  %32 = load double, double* %4, align 8, !dbg !508
  %33 = fmul double %31, %32, !dbg !509
  %34 = fsub double %33, 1.000000e+00, !dbg !510
  %35 = fdiv double %34, 1.600000e+01, !dbg !511
  %36 = load double, double* %10, align 8, !dbg !512
  %37 = fmul double %35, %36, !dbg !513
  store double %37, double* %8, align 8, !dbg !514
  br label %56, !dbg !515

; <label>:38:                                     ; preds = %3
  %39 = load double, double* %4, align 8, !dbg !516
  %40 = fmul double 4.000000e+00, %39, !dbg !518
  %41 = load double, double* %4, align 8, !dbg !519
  %42 = fmul double %40, %41, !dbg !520
  %43 = fsub double %42, 1.000000e+00, !dbg !521
  %44 = fdiv double %43, 1.600000e+01, !dbg !522
  %45 = load double, double* %6, align 8, !dbg !523
  %46 = load double, double* %6, align 8, !dbg !524
  %47 = fmul double %45, %46, !dbg !525
  %48 = fsub double %47, 1.000000e+00, !dbg !526
  %49 = fdiv double 1.000000e+00, %48, !dbg !527
  %50 = load double, double* %5, align 8, !dbg !528
  %51 = load double, double* %5, align 8, !dbg !529
  %52 = fmul double %50, %51, !dbg !530
  %53 = fdiv double 1.000000e+00, %52, !dbg !531
  %54 = fsub double %49, %53, !dbg !532
  %55 = fmul double %44, %54, !dbg !533
  store double %55, double* %8, align 8, !dbg !534
  br label %56

; <label>:56:                                     ; preds = %38, %18
  %57 = load double, double* %5, align 8, !dbg !535
  %58 = fmul double 5.000000e-01, %57, !dbg !536
  %59 = load double, double* %5, align 8, !dbg !537
  %60 = fmul double %58, %59, !dbg !538
  %61 = load double, double* %7, align 8, !dbg !539
  %62 = fmul double %60, %61, !dbg !540
  %63 = load double, double* %7, align 8, !dbg !541
  %64 = fmul double %62, %63, !dbg !542
  %65 = load double, double* %4, align 8, !dbg !543
  %66 = fadd double %65, 5.000000e-01, !dbg !544
  %67 = load double, double* %7, align 8, !dbg !545
  %68 = fmul double %66, %67, !dbg !546
  %69 = fadd double %64, %68, !dbg !547
  %70 = load double, double* %8, align 8, !dbg !548
  %71 = fsub double %69, %70, !dbg !549
  %72 = load double, double* %4, align 8, !dbg !550
  %73 = fdiv double %72, 6.000000e+00, !dbg !551
  %74 = load double, double* %4, align 8, !dbg !552
  %75 = load double, double* %4, align 8, !dbg !553
  %76 = fmul double %74, %75, !dbg !554
  %77 = fsub double 2.500000e-01, %76, !dbg !555
  %78 = fmul double %73, %77, !dbg !556
  %79 = fadd double %71, %78, !dbg !557
  ret double %79, !dbg !558
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @olver_B0_xi(double, double) #4 !dbg !559 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !560, metadata !60), !dbg !561
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !562, metadata !60), !dbg !563
  %5 = load double, double* %3, align 8, !dbg !564
  %6 = fmul double 4.000000e+00, %5, !dbg !565
  %7 = load double, double* %3, align 8, !dbg !566
  %8 = fmul double %6, %7, !dbg !567
  %9 = fsub double 1.000000e+00, %8, !dbg !568
  %10 = load double, double* %4, align 8, !dbg !569
  %11 = fmul double 8.000000e+00, %10, !dbg !570
  %12 = fdiv double %9, %11, !dbg !571
  %13 = load double, double* %4, align 8, !dbg !572
  %14 = call double @tanh(double %13) #6, !dbg !573
  %15 = fdiv double 1.000000e+00, %14, !dbg !574
  %16 = load double, double* %4, align 8, !dbg !575
  %17 = fdiv double 1.000000e+00, %16, !dbg !576
  %18 = fsub double %15, %17, !dbg !577
  %19 = fmul double %12, %18, !dbg !578
  ret double %19, !dbg !579
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_conicalP_xlt1_neg_mu_largetau_e(double, double, double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !580 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
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
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !583, metadata !60), !dbg !584
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !585, metadata !60), !dbg !586
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !587, metadata !60), !dbg !588
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !589, metadata !60), !dbg !590
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %12, metadata !591, metadata !60), !dbg !592
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !593, metadata !60), !dbg !594
  call void @llvm.dbg.declare(metadata double* %14, metadata !595, metadata !60), !dbg !596
  %26 = load double, double* %11, align 8, !dbg !597
  store double %26, double* %14, align 8, !dbg !596
  call void @llvm.dbg.declare(metadata double* %15, metadata !598, metadata !60), !dbg !599
  call void @llvm.dbg.declare(metadata double* %16, metadata !600, metadata !60), !dbg !601
  call void @llvm.dbg.declare(metadata double* %17, metadata !602, metadata !60), !dbg !603
  call void @llvm.dbg.declare(metadata double* %18, metadata !604, metadata !60), !dbg !605
  call void @llvm.dbg.declare(metadata double* %19, metadata !606, metadata !60), !dbg !607
  call void @llvm.dbg.declare(metadata double* %20, metadata !608, metadata !60), !dbg !609
  call void @llvm.dbg.declare(metadata double* %21, metadata !610, metadata !60), !dbg !611
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !612, metadata !60), !dbg !613
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !614, metadata !60), !dbg !615
  call void @llvm.dbg.declare(metadata double* %24, metadata !616, metadata !60), !dbg !617
  %27 = load double, double* %14, align 8, !dbg !618
  %28 = fcmp olt double %27, 0x3F20000000000000, !dbg !620
  br i1 %28, label %29, label %34, !dbg !621

; <label>:29:                                     ; preds = %6
  %30 = load double, double* %14, align 8, !dbg !622
  %31 = load double, double* %14, align 8, !dbg !624
  %32 = fmul double %30, %31, !dbg !625
  %33 = fdiv double %32, 6.000000e+00, !dbg !626
  store double %33, double* %15, align 8, !dbg !627
  br label %40, !dbg !628

; <label>:34:                                     ; preds = %6
  %35 = load double, double* %14, align 8, !dbg !629
  %36 = load double, double* %14, align 8, !dbg !631
  %37 = call double @sin(double %36) #6, !dbg !632
  %38 = fdiv double %35, %37, !dbg !633
  %39 = call double @log(double %38) #6, !dbg !634
  store double %39, double* %15, align 8, !dbg !636
  br label %40

; <label>:40:                                     ; preds = %34, %29
  %41 = load double, double* %15, align 8, !dbg !637
  %42 = fmul double 5.000000e-01, %41, !dbg !638
  %43 = load double, double* %8, align 8, !dbg !639
  %44 = load double, double* %9, align 8, !dbg !640
  %45 = call double @log(double %44) #6, !dbg !641
  %46 = fmul double %43, %45, !dbg !642
  %47 = fsub double %42, %46, !dbg !643
  store double %47, double* %16, align 8, !dbg !644
  %48 = load double, double* %9, align 8, !dbg !645
  %49 = load double, double* %14, align 8, !dbg !646
  %50 = fmul double %48, %49, !dbg !647
  store double %50, double* %21, align 8, !dbg !648
  %51 = load double, double* %8, align 8, !dbg !649
  %52 = fadd double %51, 1.000000e+00, !dbg !650
  %53 = load double, double* %21, align 8, !dbg !651
  %54 = call i32 @gsl_sf_bessel_Inu_e(double %52, double %53, %struct.gsl_sf_result_struct* %22), !dbg !652
  %55 = load double, double* %8, align 8, !dbg !653
  %56 = load double, double* %21, align 8, !dbg !654
  %57 = call i32 @gsl_sf_bessel_Inu_e(double %55, double %56, %struct.gsl_sf_result_struct* %23), !dbg !655
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !656
  %59 = load double, double* %58, align 8, !dbg !656
  %60 = load double, double* %8, align 8, !dbg !657
  %61 = fmul double 2.000000e+00, %60, !dbg !658
  %62 = load double, double* %21, align 8, !dbg !659
  %63 = fdiv double %61, %62, !dbg !660
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !661
  %65 = load double, double* %64, align 8, !dbg !661
  %66 = fmul double %63, %65, !dbg !662
  %67 = fadd double %59, %66, !dbg !663
  store double %67, double* %24, align 8, !dbg !664
  %68 = load double, double* %8, align 8, !dbg !665
  %69 = fsub double -0.000000e+00, %68, !dbg !666
  %70 = load double, double* %14, align 8, !dbg !667
  %71 = load double, double* %10, align 8, !dbg !668
  %72 = call double @olver_A1_th(double %69, double %70, double %71), !dbg !669
  %73 = load double, double* %9, align 8, !dbg !670
  %74 = load double, double* %9, align 8, !dbg !671
  %75 = fmul double %73, %74, !dbg !672
  %76 = fdiv double %72, %75, !dbg !673
  %77 = fsub double 1.000000e+00, %76, !dbg !674
  store double %77, double* %17, align 8, !dbg !675
  %78 = load double, double* %8, align 8, !dbg !676
  %79 = fsub double -0.000000e+00, %78, !dbg !677
  %80 = load double, double* %14, align 8, !dbg !678
  %81 = call double @olver_B0_th(double %79, double %80), !dbg !679
  store double %81, double* %18, align 8, !dbg !680
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !681
  %83 = load double, double* %82, align 8, !dbg !681
  %84 = load double, double* %17, align 8, !dbg !682
  %85 = fmul double %83, %84, !dbg !683
  %86 = load double, double* %14, align 8, !dbg !684
  %87 = load double, double* %9, align 8, !dbg !685
  %88 = fdiv double %86, %87, !dbg !686
  %89 = load double, double* %24, align 8, !dbg !687
  %90 = fmul double %88, %89, !dbg !688
  %91 = load double, double* %18, align 8, !dbg !689
  %92 = fmul double %90, %91, !dbg !690
  %93 = fsub double %85, %92, !dbg !691
  store double %93, double* %19, align 8, !dbg !692
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !693
  %95 = load double, double* %94, align 8, !dbg !693
  %96 = load double, double* %17, align 8, !dbg !694
  %97 = fmul double %95, %96, !dbg !695
  %98 = call double @fabs(double %97) #1, !dbg !696
  store double %98, double* %20, align 8, !dbg !697
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !698
  %100 = load double, double* %99, align 8, !dbg !698
  %101 = load double, double* %14, align 8, !dbg !699
  %102 = fmul double %100, %101, !dbg !700
  %103 = load double, double* %9, align 8, !dbg !701
  %104 = fdiv double %102, %103, !dbg !702
  %105 = load double, double* %18, align 8, !dbg !703
  %106 = fmul double %104, %105, !dbg !704
  %107 = call double @fabs(double %106) #1, !dbg !705
  %108 = load double, double* %20, align 8, !dbg !706
  %109 = fadd double %108, %107, !dbg !706
  store double %109, double* %20, align 8, !dbg !706
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !707
  %111 = load double, double* %110, align 8, !dbg !707
  %112 = load double, double* %14, align 8, !dbg !708
  %113 = fmul double %111, %112, !dbg !709
  %114 = load double, double* %9, align 8, !dbg !710
  %115 = fdiv double %113, %114, !dbg !711
  %116 = load double, double* %18, align 8, !dbg !712
  %117 = fmul double %115, %116, !dbg !713
  %118 = fmul double %117, 2.000000e+00, !dbg !714
  %119 = load double, double* %8, align 8, !dbg !715
  %120 = fmul double %118, %119, !dbg !716
  %121 = load double, double* %21, align 8, !dbg !717
  %122 = fdiv double %120, %121, !dbg !718
  %123 = call double @fabs(double %122) #1, !dbg !719
  %124 = load double, double* %20, align 8, !dbg !720
  %125 = fadd double %124, %123, !dbg !720
  store double %125, double* %20, align 8, !dbg !720
  %126 = load double, double* %19, align 8, !dbg !721
  %127 = fcmp oeq double %126, 0.000000e+00, !dbg !723
  br i1 %127, label %128, label %134, !dbg !724

; <label>:128:                                    ; preds = %40
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !725
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !727
  store double 0.000000e+00, double* %130, align 8, !dbg !728
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !729
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 1, !dbg !730
  store double 0.000000e+00, double* %132, align 8, !dbg !731
  %133 = load double*, double** %13, align 8, !dbg !732
  store double 0.000000e+00, double* %133, align 8, !dbg !733
  store i32 0, i32* %7, align 4, !dbg !734
  br label %160, !dbg !734

; <label>:134:                                    ; preds = %40
  call void @llvm.dbg.declare(metadata i32* %25, metadata !735, metadata !60), !dbg !737
  %135 = load double, double* %16, align 8, !dbg !738
  %136 = load double, double* %19, align 8, !dbg !739
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !740
  %138 = call i32 @gsl_sf_exp_mult_e(double %135, double %136, %struct.gsl_sf_result_struct* %137), !dbg !741
  store i32 %138, i32* %25, align 4, !dbg !737
  %139 = load i32, i32* %25, align 4, !dbg !742
  %140 = icmp ne i32 %139, 0, !dbg !744
  br i1 %140, label %141, label %157, !dbg !745

; <label>:141:                                    ; preds = %134
  %142 = load double, double* %19, align 8, !dbg !746
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !748
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 0, !dbg !749
  store double %142, double* %144, align 8, !dbg !750
  %145 = load double, double* %20, align 8, !dbg !751
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !752
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 1, !dbg !753
  store double %145, double* %147, align 8, !dbg !754
  %148 = load double, double* %19, align 8, !dbg !755
  %149 = call double @fabs(double %148) #1, !dbg !756
  %150 = fmul double 0x3CB0000000000000, %149, !dbg !757
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !758
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 1, !dbg !759
  %153 = load double, double* %152, align 8, !dbg !760
  %154 = fadd double %153, %150, !dbg !760
  store double %154, double* %152, align 8, !dbg !760
  %155 = load double, double* %16, align 8, !dbg !761
  %156 = load double*, double** %13, align 8, !dbg !762
  store double %155, double* %156, align 8, !dbg !763
  br label %159, !dbg !764

; <label>:157:                                    ; preds = %134
  %158 = load double*, double** %13, align 8, !dbg !765
  store double 0.000000e+00, double* %158, align 8, !dbg !767
  br label %159

; <label>:159:                                    ; preds = %157, %141
  store i32 0, i32* %7, align 4, !dbg !768
  br label %160, !dbg !768

; <label>:160:                                    ; preds = %159, %128
  %161 = load i32, i32* %7, align 4, !dbg !769
  ret i32 %161, !dbg !769
}

; Function Attrs: nounwind
declare double @sin(double) #2

declare i32 @gsl_sf_bessel_Inu_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define internal double @olver_A1_th(double, double, double) #0 !dbg !770 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !771, metadata !60), !dbg !772
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !773, metadata !60), !dbg !774
  store double %2, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !775, metadata !60), !dbg !776
  call void @llvm.dbg.declare(metadata double* %7, metadata !777, metadata !60), !dbg !778
  %11 = load double, double* %4, align 8, !dbg !779
  %12 = load double, double* %5, align 8, !dbg !780
  %13 = call double @olver_B0_th(double %11, double %12), !dbg !781
  store double %13, double* %7, align 8, !dbg !778
  call void @llvm.dbg.declare(metadata double* %8, metadata !782, metadata !60), !dbg !783
  %14 = load double, double* %6, align 8, !dbg !784
  %15 = fsub double %14, 1.000000e+00, !dbg !786
  %16 = call double @fabs(double %15) #1, !dbg !787
  %17 = fcmp olt double %16, 0x3F20000000000000, !dbg !788
  br i1 %17, label %18, label %38, !dbg !789

; <label>:18:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %9, metadata !790, metadata !60), !dbg !792
  %19 = load double, double* %6, align 8, !dbg !793
  %20 = fsub double 1.000000e+00, %19, !dbg !794
  store double %20, double* %9, align 8, !dbg !792
  call void @llvm.dbg.declare(metadata double* %10, metadata !795, metadata !60), !dbg !796
  %21 = load double, double* %9, align 8, !dbg !797
  %22 = load double, double* %9, align 8, !dbg !798
  %23 = load double, double* %9, align 8, !dbg !799
  %24 = fmul double 0x3FA053825FF87CB0, %23, !dbg !800
  %25 = fsub double 0x3FB0865DBB310866, %24, !dbg !801
  %26 = fmul double %22, %25, !dbg !802
  %27 = fsub double 0x3FC1111111111111, %26, !dbg !803
  %28 = fmul double %21, %27, !dbg !804
  %29 = fadd double 0xBFD5555555555555, %28, !dbg !805
  store double %29, double* %10, align 8, !dbg !796
  %30 = load double, double* %4, align 8, !dbg !806
  %31 = fmul double 4.000000e+00, %30, !dbg !807
  %32 = load double, double* %4, align 8, !dbg !808
  %33 = fmul double %31, %32, !dbg !809
  %34 = fsub double %33, 1.000000e+00, !dbg !810
  %35 = fdiv double %34, 1.600000e+01, !dbg !811
  %36 = load double, double* %10, align 8, !dbg !812
  %37 = fmul double %35, %36, !dbg !813
  store double %37, double* %8, align 8, !dbg !814
  br label %56, !dbg !815

; <label>:38:                                     ; preds = %3
  %39 = load double, double* %4, align 8, !dbg !816
  %40 = fmul double 4.000000e+00, %39, !dbg !818
  %41 = load double, double* %4, align 8, !dbg !819
  %42 = fmul double %40, %41, !dbg !820
  %43 = fsub double %42, 1.000000e+00, !dbg !821
  %44 = fdiv double %43, 1.600000e+01, !dbg !822
  %45 = load double, double* %6, align 8, !dbg !823
  %46 = load double, double* %6, align 8, !dbg !824
  %47 = fmul double %45, %46, !dbg !825
  %48 = fsub double %47, 1.000000e+00, !dbg !826
  %49 = fdiv double 1.000000e+00, %48, !dbg !827
  %50 = load double, double* %5, align 8, !dbg !828
  %51 = load double, double* %5, align 8, !dbg !829
  %52 = fmul double %50, %51, !dbg !830
  %53 = fdiv double 1.000000e+00, %52, !dbg !831
  %54 = fadd double %49, %53, !dbg !832
  %55 = fmul double %44, %54, !dbg !833
  store double %55, double* %8, align 8, !dbg !834
  br label %56

; <label>:56:                                     ; preds = %38, %18
  %57 = load double, double* %5, align 8, !dbg !835
  %58 = fmul double -5.000000e-01, %57, !dbg !836
  %59 = load double, double* %5, align 8, !dbg !837
  %60 = fmul double %58, %59, !dbg !838
  %61 = load double, double* %7, align 8, !dbg !839
  %62 = fmul double %60, %61, !dbg !840
  %63 = load double, double* %7, align 8, !dbg !841
  %64 = fmul double %62, %63, !dbg !842
  %65 = load double, double* %4, align 8, !dbg !843
  %66 = fadd double %65, 5.000000e-01, !dbg !844
  %67 = load double, double* %7, align 8, !dbg !845
  %68 = fmul double %66, %67, !dbg !846
  %69 = fadd double %64, %68, !dbg !847
  %70 = load double, double* %8, align 8, !dbg !848
  %71 = fsub double %69, %70, !dbg !849
  %72 = load double, double* %4, align 8, !dbg !850
  %73 = fdiv double %72, 6.000000e+00, !dbg !851
  %74 = load double, double* %4, align 8, !dbg !852
  %75 = load double, double* %4, align 8, !dbg !853
  %76 = fmul double %74, %75, !dbg !854
  %77 = fsub double 2.500000e-01, %76, !dbg !855
  %78 = fmul double %73, %77, !dbg !856
  %79 = fadd double %71, %78, !dbg !857
  ret double %79, !dbg !858
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @olver_B0_th(double, double) #4 !dbg !859 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !860, metadata !60), !dbg !861
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !862, metadata !60), !dbg !863
  %5 = load double, double* %3, align 8, !dbg !864
  %6 = fmul double 4.000000e+00, %5, !dbg !865
  %7 = load double, double* %3, align 8, !dbg !866
  %8 = fmul double %6, %7, !dbg !867
  %9 = fsub double 1.000000e+00, %8, !dbg !868
  %10 = fsub double -0.000000e+00, %9, !dbg !869
  %11 = load double, double* %4, align 8, !dbg !870
  %12 = fmul double 8.000000e+00, %11, !dbg !871
  %13 = fdiv double %10, %12, !dbg !872
  %14 = load double, double* %4, align 8, !dbg !873
  %15 = call double @tan(double %14) #6, !dbg !874
  %16 = fdiv double 1.000000e+00, %15, !dbg !875
  %17 = load double, double* %4, align 8, !dbg !876
  %18 = fdiv double 1.000000e+00, %17, !dbg !877
  %19 = fsub double %16, %18, !dbg !878
  %20 = fmul double %13, %19, !dbg !879
  ret double %20, !dbg !880
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_conicalP_large_x_e(double, double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !881 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !884, metadata !60), !dbg !885
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !886, metadata !60), !dbg !887
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !888, metadata !60), !dbg !889
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !890, metadata !60), !dbg !891
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !892, metadata !60), !dbg !893
  call void @llvm.dbg.declare(metadata double* %12, metadata !894, metadata !60), !dbg !895
  %37 = load double, double* %9, align 8, !dbg !896
  %38 = fcmp olt double %37, 0x5FDFFFFFFFFFFFFF, !dbg !897
  br i1 %38, label %39, label %44, !dbg !896

; <label>:39:                                     ; preds = %5
  %40 = load double, double* %9, align 8, !dbg !898
  %41 = load double, double* %9, align 8, !dbg !900
  %42 = fmul double %40, %41, !dbg !901
  %43 = fdiv double 1.000000e+00, %42, !dbg !902
  br label %45, !dbg !903

; <label>:44:                                     ; preds = %5
  br label %45, !dbg !904

; <label>:45:                                     ; preds = %44, %39
  %46 = phi double [ %43, %39 ], [ 0.000000e+00, %44 ], !dbg !906
  store double %46, double* %12, align 8, !dbg !908
  call void @llvm.dbg.declare(metadata double* %13, metadata !909, metadata !60), !dbg !910
  call void @llvm.dbg.declare(metadata double* %14, metadata !911, metadata !60), !dbg !912
  call void @llvm.dbg.declare(metadata i32* %15, metadata !913, metadata !60), !dbg !914
  %47 = load double, double* %7, align 8, !dbg !915
  %48 = load double, double* %8, align 8, !dbg !916
  %49 = load double, double* %12, align 8, !dbg !917
  %50 = call i32 @conicalP_hyperg_large_x(double %47, double %48, double %49, double* %13, double* %14), !dbg !918
  store i32 %50, i32* %15, align 4, !dbg !914
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !919, metadata !60), !dbg !920
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !921, metadata !60), !dbg !922
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !923, metadata !60), !dbg !924
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !925, metadata !60), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %20, metadata !927, metadata !60), !dbg !928
  %51 = load double, double* %8, align 8, !dbg !929
  %52 = call i32 @gsl_sf_lngamma_complex_e(double 0.000000e+00, double %51, %struct.gsl_sf_result_struct* %16, %struct.gsl_sf_result_struct* %17), !dbg !930
  store i32 %52, i32* %20, align 4, !dbg !928
  call void @llvm.dbg.declare(metadata i32* %21, metadata !931, metadata !60), !dbg !932
  %53 = load double, double* %7, align 8, !dbg !933
  %54 = fsub double 5.000000e-01, %53, !dbg !934
  %55 = load double, double* %8, align 8, !dbg !935
  %56 = call i32 @gsl_sf_lngamma_complex_e(double %54, double %55, %struct.gsl_sf_result_struct* %18, %struct.gsl_sf_result_struct* %19), !dbg !936
  store i32 %56, i32* %21, align 4, !dbg !932
  call void @llvm.dbg.declare(metadata double* %22, metadata !937, metadata !60), !dbg !938
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !939
  %58 = load double, double* %57, align 8, !dbg !939
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !940
  %60 = load double, double* %59, align 8, !dbg !940
  %61 = fsub double %58, %60, !dbg !941
  %62 = load double, double* %14, align 8, !dbg !942
  %63 = load double, double* %13, align 8, !dbg !943
  %64 = call double @atan2(double %62, double %63) #6, !dbg !944
  %65 = fadd double %61, %64, !dbg !945
  store double %65, double* %22, align 8, !dbg !938
  call void @llvm.dbg.declare(metadata double* %23, metadata !946, metadata !60), !dbg !947
  %66 = load double, double* %9, align 8, !dbg !948
  %67 = call double @log(double %66) #6, !dbg !949
  store double %67, double* %23, align 8, !dbg !947
  call void @llvm.dbg.declare(metadata double* %24, metadata !950, metadata !60), !dbg !951
  %68 = load double, double* %9, align 8, !dbg !952
  %69 = fadd double %68, 1.000000e+00, !dbg !953
  %70 = call double @log(double %69) #6, !dbg !954
  store double %70, double* %24, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata double* %25, metadata !955, metadata !60), !dbg !956
  %71 = load double, double* %9, align 8, !dbg !957
  %72 = fsub double %71, 1.000000e+00, !dbg !958
  %73 = call double @log(double %72) #6, !dbg !959
  store double %73, double* %25, align 8, !dbg !956
  call void @llvm.dbg.declare(metadata double* %26, metadata !960, metadata !60), !dbg !961
  store double 0xBFCCE6BB25AA1316, double* %26, align 8, !dbg !961
  call void @llvm.dbg.declare(metadata double* %27, metadata !962, metadata !60), !dbg !963
  %74 = load double, double* %7, align 8, !dbg !964
  %75 = fsub double %74, 5.000000e-01, !dbg !965
  %76 = load double, double* %23, align 8, !dbg !966
  %77 = fmul double %75, %76, !dbg !967
  %78 = load double, double* %7, align 8, !dbg !968
  %79 = fmul double 5.000000e-01, %78, !dbg !969
  %80 = load double, double* %24, align 8, !dbg !970
  %81 = load double, double* %25, align 8, !dbg !971
  %82 = fadd double %80, %81, !dbg !972
  %83 = fmul double %79, %82, !dbg !973
  %84 = fsub double %77, %83, !dbg !974
  store double %84, double* %27, align 8, !dbg !963
  call void @llvm.dbg.declare(metadata double* %28, metadata !975, metadata !60), !dbg !976
  %85 = load double, double* %7, align 8, !dbg !977
  %86 = fsub double %85, 5.000000e-01, !dbg !978
  %87 = load double, double* %23, align 8, !dbg !979
  %88 = fmul double %86, %87, !dbg !980
  %89 = call double @fabs(double %88) #1, !dbg !981
  %90 = fmul double 0x3CB0000000000000, %89, !dbg !982
  %91 = fadd double 0x3CAD67F1C864BEB4, %90, !dbg !983
  %92 = load double, double* %7, align 8, !dbg !984
  %93 = fmul double 5.000000e-01, %92, !dbg !985
  %94 = call double @fabs(double %93) #1, !dbg !986
  %95 = fmul double 0x3CB0000000000000, %94, !dbg !987
  %96 = load double, double* %24, align 8, !dbg !988
  %97 = call double @fabs(double %96) #1, !dbg !989
  %98 = load double, double* %25, align 8, !dbg !990
  %99 = call double @fabs(double %98) #1, !dbg !991
  %100 = fadd double %97, %99, !dbg !992
  %101 = fmul double %95, %100, !dbg !993
  %102 = fadd double %91, %101, !dbg !994
  store double %102, double* %28, align 8, !dbg !976
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !995, metadata !60), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %30, metadata !997, metadata !60), !dbg !998
  %103 = load double, double* %22, align 8, !dbg !999
  %104 = load double, double* %8, align 8, !dbg !1000
  %105 = load double, double* %9, align 8, !dbg !1001
  %106 = call double @log(double %105) #6, !dbg !1002
  %107 = fadd double %106, 0x3FE62E42FEFA39EF, !dbg !1003
  %108 = fmul double %104, %107, !dbg !1004
  %109 = fadd double %103, %108, !dbg !1005
  %110 = call i32 @gsl_sf_cos_e(double %109, %struct.gsl_sf_result_struct* %29), !dbg !1006
  store i32 %110, i32* %30, align 4, !dbg !998
  call void @llvm.dbg.declare(metadata i32* %31, metadata !1007, metadata !60), !dbg !1008
  %111 = load i32, i32* %30, align 4, !dbg !1009
  %112 = icmp ne i32 %111, 0, !dbg !1009
  br i1 %112, label %113, label %115, !dbg !1009

; <label>:113:                                    ; preds = %45
  %114 = load i32, i32* %30, align 4, !dbg !1010
  br label %137, !dbg !1010

; <label>:115:                                    ; preds = %45
  %116 = load i32, i32* %21, align 4, !dbg !1011
  %117 = icmp ne i32 %116, 0, !dbg !1011
  br i1 %117, label %118, label %120, !dbg !1011

; <label>:118:                                    ; preds = %115
  %119 = load i32, i32* %21, align 4, !dbg !1012
  br label %135, !dbg !1012

; <label>:120:                                    ; preds = %115
  %121 = load i32, i32* %20, align 4, !dbg !1013
  %122 = icmp ne i32 %121, 0, !dbg !1013
  br i1 %122, label %123, label %125, !dbg !1013

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %20, align 4, !dbg !1015
  br label %133, !dbg !1015

; <label>:125:                                    ; preds = %120
  %126 = load i32, i32* %15, align 4, !dbg !1017
  %127 = icmp ne i32 %126, 0, !dbg !1017
  br i1 %127, label %128, label %130, !dbg !1017

; <label>:128:                                    ; preds = %125
  %129 = load i32, i32* %15, align 4, !dbg !1019
  br label %131, !dbg !1019

; <label>:130:                                    ; preds = %125
  br label %131, !dbg !1021

; <label>:131:                                    ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ 0, %130 ], !dbg !1023
  br label %133, !dbg !1023

; <label>:133:                                    ; preds = %131, %123
  %134 = phi i32 [ %124, %123 ], [ %132, %131 ], !dbg !1025
  br label %135, !dbg !1025

; <label>:135:                                    ; preds = %133, %118
  %136 = phi i32 [ %119, %118 ], [ %134, %133 ], !dbg !1027
  br label %137, !dbg !1027

; <label>:137:                                    ; preds = %135, %113
  %138 = phi i32 [ %114, %113 ], [ %136, %135 ], !dbg !1029
  store i32 %138, i32* %31, align 4, !dbg !1031
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1032
  %140 = load double, double* %139, align 8, !dbg !1032
  %141 = fcmp oeq double %140, 0.000000e+00, !dbg !1034
  br i1 %141, label %142, label %148, !dbg !1035

; <label>:142:                                    ; preds = %137
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1036
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 0, !dbg !1038
  store double 0.000000e+00, double* %144, align 8, !dbg !1039
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1040
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 1, !dbg !1041
  store double 0.000000e+00, double* %146, align 8, !dbg !1042
  %147 = load i32, i32* %31, align 4, !dbg !1043
  store i32 %147, i32* %6, align 4, !dbg !1044
  br label %219, !dbg !1044

; <label>:148:                                    ; preds = %137
  call void @llvm.dbg.declare(metadata double* %32, metadata !1045, metadata !60), !dbg !1047
  %149 = load double, double* %13, align 8, !dbg !1048
  %150 = load double, double* %13, align 8, !dbg !1049
  %151 = fmul double %149, %150, !dbg !1050
  %152 = load double, double* %14, align 8, !dbg !1051
  %153 = load double, double* %14, align 8, !dbg !1052
  %154 = fmul double %152, %153, !dbg !1053
  %155 = fadd double %151, %154, !dbg !1054
  %156 = call double @log(double %155) #6, !dbg !1055
  %157 = fmul double 5.000000e-01, %156, !dbg !1056
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1057
  %159 = load double, double* %158, align 8, !dbg !1057
  %160 = fadd double %157, %159, !dbg !1058
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1059
  %162 = load double, double* %161, align 8, !dbg !1059
  %163 = fsub double %160, %162, !dbg !1060
  store double %163, double* %32, align 8, !dbg !1047
  call void @llvm.dbg.declare(metadata double* %33, metadata !1061, metadata !60), !dbg !1062
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1063
  %165 = load double, double* %164, align 8, !dbg !1063
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1064
  %167 = load double, double* %166, align 8, !dbg !1064
  %168 = fadd double %165, %167, !dbg !1065
  %169 = load double, double* %32, align 8, !dbg !1066
  %170 = call double @fabs(double %169) #1, !dbg !1067
  %171 = fmul double 0x3CB0000000000000, %170, !dbg !1068
  %172 = fadd double %168, %171, !dbg !1069
  store double %172, double* %33, align 8, !dbg !1062
  call void @llvm.dbg.declare(metadata double* %34, metadata !1070, metadata !60), !dbg !1071
  %173 = load double, double* %26, align 8, !dbg !1072
  %174 = load double, double* %27, align 8, !dbg !1073
  %175 = fadd double %173, %174, !dbg !1074
  %176 = load double, double* %32, align 8, !dbg !1075
  %177 = fadd double %175, %176, !dbg !1076
  store double %177, double* %34, align 8, !dbg !1071
  call void @llvm.dbg.declare(metadata double* %35, metadata !1077, metadata !60), !dbg !1078
  %178 = load double, double* %28, align 8, !dbg !1079
  %179 = load double, double* %33, align 8, !dbg !1080
  %180 = fadd double %178, %179, !dbg !1081
  %181 = load double, double* %34, align 8, !dbg !1082
  %182 = call double @fabs(double %181) #1, !dbg !1083
  %183 = fmul double 0x3CB0000000000000, %182, !dbg !1084
  %184 = fadd double %180, %183, !dbg !1085
  store double %184, double* %35, align 8, !dbg !1078
  call void @llvm.dbg.declare(metadata i32* %36, metadata !1086, metadata !60), !dbg !1087
  %185 = load double, double* %34, align 8, !dbg !1088
  %186 = load double, double* %35, align 8, !dbg !1089
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1090
  %188 = load double, double* %187, align 8, !dbg !1090
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !1091
  %190 = load double, double* %189, align 8, !dbg !1091
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1092
  %192 = call i32 @gsl_sf_exp_mult_err_e(double %185, double %186, double %188, double %190, %struct.gsl_sf_result_struct* %191), !dbg !1093
  store i32 %192, i32* %36, align 4, !dbg !1087
  %193 = load i32, i32* %36, align 4, !dbg !1094
  %194 = icmp eq i32 %193, 0, !dbg !1096
  br i1 %194, label %195, label %197, !dbg !1097

; <label>:195:                                    ; preds = %148
  %196 = load double*, double** %11, align 8, !dbg !1098
  store double 0.000000e+00, double* %196, align 8, !dbg !1100
  br label %217, !dbg !1101

; <label>:197:                                    ; preds = %148
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1102
  %199 = load double, double* %198, align 8, !dbg !1102
  %200 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1104
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %200, i32 0, i32 0, !dbg !1105
  store double %199, double* %201, align 8, !dbg !1106
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !1107
  %203 = load double, double* %202, align 8, !dbg !1107
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1108
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 1, !dbg !1109
  store double %203, double* %205, align 8, !dbg !1110
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1111
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %206, i32 0, i32 0, !dbg !1112
  %208 = load double, double* %207, align 8, !dbg !1112
  %209 = call double @fabs(double %208) #1, !dbg !1113
  %210 = fmul double 0x3CC0000000000000, %209, !dbg !1114
  %211 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1115
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %211, i32 0, i32 1, !dbg !1116
  %213 = load double, double* %212, align 8, !dbg !1117
  %214 = fadd double %213, %210, !dbg !1117
  store double %214, double* %212, align 8, !dbg !1117
  %215 = load double, double* %34, align 8, !dbg !1118
  %216 = load double*, double** %11, align 8, !dbg !1119
  store double %215, double* %216, align 8, !dbg !1120
  br label %217

; <label>:217:                                    ; preds = %197, %195
  %218 = load i32, i32* %31, align 4, !dbg !1121
  store i32 %218, i32* %6, align 4, !dbg !1122
  br label %219, !dbg !1122

; <label>:219:                                    ; preds = %217, %142
  %220 = load i32, i32* %6, align 4, !dbg !1123
  ret i32 %220, !dbg !1123
}

; Function Attrs: nounwind uwtable
define internal i32 @conicalP_hyperg_large_x(double, double, double, double*, double*) #0 !dbg !1124 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
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
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1127, metadata !60), !dbg !1128
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1129, metadata !60), !dbg !1130
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1131, metadata !60), !dbg !1132
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !1133, metadata !60), !dbg !1134
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !1135, metadata !60), !dbg !1136
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1137, metadata !60), !dbg !1139
  store i32 1000, i32* %12, align 4, !dbg !1139
  call void @llvm.dbg.declare(metadata double* %13, metadata !1140, metadata !60), !dbg !1141
  %36 = load double, double* %7, align 8, !dbg !1142
  %37 = fmul double 5.000000e-01, %36, !dbg !1143
  %38 = fsub double 2.500000e-01, %37, !dbg !1144
  store double %38, double* %13, align 8, !dbg !1141
  call void @llvm.dbg.declare(metadata double* %14, metadata !1145, metadata !60), !dbg !1146
  %39 = load double, double* %7, align 8, !dbg !1147
  %40 = fmul double 5.000000e-01, %39, !dbg !1148
  %41 = fsub double 7.500000e-01, %40, !dbg !1149
  store double %41, double* %14, align 8, !dbg !1146
  call void @llvm.dbg.declare(metadata double* %15, metadata !1150, metadata !60), !dbg !1151
  store double 1.000000e+00, double* %15, align 8, !dbg !1151
  call void @llvm.dbg.declare(metadata double* %16, metadata !1152, metadata !60), !dbg !1153
  %42 = load double, double* %8, align 8, !dbg !1154
  %43 = fmul double -5.000000e-01, %42, !dbg !1155
  store double %43, double* %16, align 8, !dbg !1153
  call void @llvm.dbg.declare(metadata double* %17, metadata !1156, metadata !60), !dbg !1157
  %44 = load double, double* %8, align 8, !dbg !1158
  %45 = fmul double -5.000000e-01, %44, !dbg !1159
  store double %45, double* %17, align 8, !dbg !1157
  call void @llvm.dbg.declare(metadata double* %18, metadata !1160, metadata !60), !dbg !1161
  %46 = load double, double* %8, align 8, !dbg !1162
  %47 = fsub double -0.000000e+00, %46, !dbg !1163
  store double %47, double* %18, align 8, !dbg !1161
  call void @llvm.dbg.declare(metadata double* %19, metadata !1164, metadata !60), !dbg !1165
  store double 1.000000e+00, double* %19, align 8, !dbg !1165
  call void @llvm.dbg.declare(metadata double* %20, metadata !1166, metadata !60), !dbg !1167
  store double 0.000000e+00, double* %20, align 8, !dbg !1167
  call void @llvm.dbg.declare(metadata double* %21, metadata !1168, metadata !60), !dbg !1169
  store double 1.000000e+00, double* %21, align 8, !dbg !1169
  call void @llvm.dbg.declare(metadata double* %22, metadata !1170, metadata !60), !dbg !1171
  store double 0.000000e+00, double* %22, align 8, !dbg !1171
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1172, metadata !60), !dbg !1173
  store i32 1, i32* %23, align 4, !dbg !1174
  br label %48, !dbg !1176

; <label>:48:                                     ; preds = %168, %5
  %49 = load i32, i32* %23, align 4, !dbg !1177
  %50 = icmp sle i32 %49, 1000, !dbg !1180
  br i1 %50, label %51, label %171, !dbg !1181

; <label>:51:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata double* %24, metadata !1182, metadata !60), !dbg !1184
  %52 = load double, double* %13, align 8, !dbg !1185
  %53 = load i32, i32* %23, align 4, !dbg !1186
  %54 = sitofp i32 %53 to double, !dbg !1186
  %55 = fadd double %52, %54, !dbg !1187
  %56 = fsub double %55, 1.000000e+00, !dbg !1188
  store double %56, double* %24, align 8, !dbg !1184
  call void @llvm.dbg.declare(metadata double* %25, metadata !1189, metadata !60), !dbg !1190
  %57 = load double, double* %14, align 8, !dbg !1191
  %58 = load i32, i32* %23, align 4, !dbg !1192
  %59 = sitofp i32 %58 to double, !dbg !1192
  %60 = fadd double %57, %59, !dbg !1193
  %61 = fsub double %60, 1.000000e+00, !dbg !1194
  store double %61, double* %25, align 8, !dbg !1190
  call void @llvm.dbg.declare(metadata double* %26, metadata !1195, metadata !60), !dbg !1196
  %62 = load i32, i32* %23, align 4, !dbg !1197
  %63 = sitofp i32 %62 to double, !dbg !1197
  %64 = fadd double 1.000000e+00, %63, !dbg !1198
  %65 = fsub double %64, 1.000000e+00, !dbg !1199
  store double %65, double* %26, align 8, !dbg !1196
  call void @llvm.dbg.declare(metadata double* %27, metadata !1200, metadata !60), !dbg !1201
  %66 = load double, double* %16, align 8, !dbg !1202
  store double %66, double* %27, align 8, !dbg !1201
  call void @llvm.dbg.declare(metadata double* %28, metadata !1203, metadata !60), !dbg !1204
  %67 = load double, double* %17, align 8, !dbg !1205
  store double %67, double* %28, align 8, !dbg !1204
  call void @llvm.dbg.declare(metadata double* %29, metadata !1206, metadata !60), !dbg !1207
  %68 = load double, double* %18, align 8, !dbg !1208
  store double %68, double* %29, align 8, !dbg !1207
  call void @llvm.dbg.declare(metadata double* %30, metadata !1209, metadata !60), !dbg !1210
  %69 = load double, double* %26, align 8, !dbg !1211
  %70 = load double, double* %26, align 8, !dbg !1212
  %71 = fmul double %69, %70, !dbg !1213
  %72 = load double, double* %29, align 8, !dbg !1214
  %73 = load double, double* %29, align 8, !dbg !1215
  %74 = fmul double %72, %73, !dbg !1216
  %75 = fadd double %71, %74, !dbg !1217
  store double %75, double* %30, align 8, !dbg !1210
  call void @llvm.dbg.declare(metadata double* %31, metadata !1218, metadata !60), !dbg !1219
  %76 = load double, double* %24, align 8, !dbg !1220
  %77 = load double, double* %25, align 8, !dbg !1221
  %78 = fmul double %76, %77, !dbg !1222
  %79 = load double, double* %27, align 8, !dbg !1223
  %80 = load double, double* %28, align 8, !dbg !1224
  %81 = fmul double %79, %80, !dbg !1225
  %82 = fsub double %78, %81, !dbg !1226
  %83 = load double, double* %26, align 8, !dbg !1227
  %84 = fmul double %82, %83, !dbg !1228
  %85 = load double, double* %29, align 8, !dbg !1229
  %86 = load double, double* %27, align 8, !dbg !1230
  %87 = load double, double* %25, align 8, !dbg !1231
  %88 = fmul double %86, %87, !dbg !1232
  %89 = load double, double* %24, align 8, !dbg !1233
  %90 = load double, double* %28, align 8, !dbg !1234
  %91 = fmul double %89, %90, !dbg !1235
  %92 = fadd double %88, %91, !dbg !1236
  %93 = fmul double %85, %92, !dbg !1237
  %94 = fadd double %84, %93, !dbg !1238
  %95 = load double, double* %30, align 8, !dbg !1239
  %96 = fdiv double %94, %95, !dbg !1240
  store double %96, double* %31, align 8, !dbg !1219
  call void @llvm.dbg.declare(metadata double* %32, metadata !1241, metadata !60), !dbg !1242
  %97 = load double, double* %27, align 8, !dbg !1243
  %98 = load double, double* %25, align 8, !dbg !1244
  %99 = fmul double %97, %98, !dbg !1245
  %100 = load double, double* %24, align 8, !dbg !1246
  %101 = load double, double* %28, align 8, !dbg !1247
  %102 = fmul double %100, %101, !dbg !1248
  %103 = fadd double %99, %102, !dbg !1249
  %104 = load double, double* %26, align 8, !dbg !1250
  %105 = fmul double %103, %104, !dbg !1251
  %106 = load double, double* %29, align 8, !dbg !1252
  %107 = load double, double* %24, align 8, !dbg !1253
  %108 = load double, double* %25, align 8, !dbg !1254
  %109 = fmul double %107, %108, !dbg !1255
  %110 = load double, double* %27, align 8, !dbg !1256
  %111 = load double, double* %28, align 8, !dbg !1257
  %112 = fmul double %110, %111, !dbg !1258
  %113 = fsub double %109, %112, !dbg !1259
  %114 = fmul double %106, %113, !dbg !1260
  %115 = fsub double %105, %114, !dbg !1261
  %116 = load double, double* %30, align 8, !dbg !1262
  %117 = fdiv double %115, %116, !dbg !1263
  store double %117, double* %32, align 8, !dbg !1242
  call void @llvm.dbg.declare(metadata double* %33, metadata !1264, metadata !60), !dbg !1265
  %118 = load double, double* %31, align 8, !dbg !1266
  %119 = load double, double* %21, align 8, !dbg !1267
  %120 = fmul double %118, %119, !dbg !1268
  %121 = load double, double* %32, align 8, !dbg !1269
  %122 = load double, double* %22, align 8, !dbg !1270
  %123 = fmul double %121, %122, !dbg !1271
  %124 = fsub double %120, %123, !dbg !1272
  store double %124, double* %33, align 8, !dbg !1265
  call void @llvm.dbg.declare(metadata double* %34, metadata !1273, metadata !60), !dbg !1274
  %125 = load double, double* %32, align 8, !dbg !1275
  %126 = load double, double* %21, align 8, !dbg !1276
  %127 = fmul double %125, %126, !dbg !1277
  %128 = load double, double* %31, align 8, !dbg !1278
  %129 = load double, double* %22, align 8, !dbg !1279
  %130 = fmul double %128, %129, !dbg !1280
  %131 = fadd double %127, %130, !dbg !1281
  store double %131, double* %34, align 8, !dbg !1274
  call void @llvm.dbg.declare(metadata double* %35, metadata !1282, metadata !60), !dbg !1283
  %132 = load double, double* %19, align 8, !dbg !1284
  %133 = call double @fabs(double %132) #1, !dbg !1285
  %134 = load double, double* %20, align 8, !dbg !1286
  %135 = call double @fabs(double %134) #1, !dbg !1287
  %136 = fadd double %133, %135, !dbg !1289
  store double %136, double* %35, align 8, !dbg !1283
  %137 = load double, double* %9, align 8, !dbg !1290
  %138 = load i32, i32* %23, align 4, !dbg !1291
  %139 = sitofp i32 %138 to double, !dbg !1291
  %140 = fdiv double %137, %139, !dbg !1292
  %141 = load double, double* %33, align 8, !dbg !1293
  %142 = fmul double %140, %141, !dbg !1294
  store double %142, double* %21, align 8, !dbg !1295
  %143 = load double, double* %9, align 8, !dbg !1296
  %144 = load i32, i32* %23, align 4, !dbg !1297
  %145 = sitofp i32 %144 to double, !dbg !1297
  %146 = fdiv double %143, %145, !dbg !1298
  %147 = load double, double* %34, align 8, !dbg !1299
  %148 = fmul double %146, %147, !dbg !1300
  store double %148, double* %22, align 8, !dbg !1301
  %149 = load double, double* %21, align 8, !dbg !1302
  %150 = load double, double* %35, align 8, !dbg !1304
  %151 = fdiv double %149, %150, !dbg !1305
  %152 = call double @fabs(double %151) #1, !dbg !1306
  %153 = fcmp olt double %152, 0x3CB0000000000000, !dbg !1307
  br i1 %153, label %154, label %161, !dbg !1308

; <label>:154:                                    ; preds = %51
  %155 = load double, double* %22, align 8, !dbg !1309
  %156 = load double, double* %35, align 8, !dbg !1311
  %157 = fdiv double %155, %156, !dbg !1312
  %158 = call double @fabs(double %157) #1, !dbg !1313
  %159 = fcmp olt double %158, 0x3CB0000000000000, !dbg !1314
  br i1 %159, label %160, label %161, !dbg !1315

; <label>:160:                                    ; preds = %154
  br label %171, !dbg !1316

; <label>:161:                                    ; preds = %154, %51
  %162 = load double, double* %21, align 8, !dbg !1318
  %163 = load double, double* %19, align 8, !dbg !1319
  %164 = fadd double %163, %162, !dbg !1319
  store double %164, double* %19, align 8, !dbg !1319
  %165 = load double, double* %22, align 8, !dbg !1320
  %166 = load double, double* %20, align 8, !dbg !1321
  %167 = fadd double %166, %165, !dbg !1321
  store double %167, double* %20, align 8, !dbg !1321
  br label %168, !dbg !1322

; <label>:168:                                    ; preds = %161
  %169 = load i32, i32* %23, align 4, !dbg !1323
  %170 = add nsw i32 %169, 1, !dbg !1323
  store i32 %170, i32* %23, align 4, !dbg !1323
  br label %48, !dbg !1325, !llvm.loop !1326

; <label>:171:                                    ; preds = %160, %48
  %172 = load double, double* %19, align 8, !dbg !1328
  %173 = load double*, double** %10, align 8, !dbg !1329
  store double %172, double* %173, align 8, !dbg !1330
  %174 = load double, double* %20, align 8, !dbg !1331
  %175 = load double*, double** %11, align 8, !dbg !1332
  store double %174, double* %175, align 8, !dbg !1333
  %176 = load i32, i32* %23, align 4, !dbg !1334
  %177 = icmp eq i32 %176, 1000, !dbg !1336
  br i1 %177, label %178, label %181, !dbg !1337

; <label>:178:                                    ; preds = %171
  br label %179, !dbg !1338, !llvm.loop !1339

; <label>:179:                                    ; preds = %178
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 473, i32 11), !dbg !1340
  store i32 11, i32* %6, align 4, !dbg !1340
  br label %182, !dbg !1340
                                                  ; No predecessors!
  br label %182, !dbg !1343

; <label>:181:                                    ; preds = %171
  store i32 0, i32* %6, align 4, !dbg !1345
  br label %182, !dbg !1345

; <label>:182:                                    ; preds = %179, %181, %180
  %183 = load i32, i32* %6, align 4, !dbg !1346
  ret i32 %183, !dbg !1346
}

declare i32 @gsl_sf_lngamma_complex_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @atan2(double, double) #2

declare i32 @gsl_sf_cos_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_conicalP_0_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1347 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca %struct.gsl_sf_result_struct, align 8
  %37 = alloca %struct.gsl_sf_result_struct, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1350, metadata !60), !dbg !1351
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1352, metadata !60), !dbg !1353
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1354, metadata !60), !dbg !1355
  %46 = load double, double* %6, align 8, !dbg !1356
  %47 = fcmp ole double %46, -1.000000e+00, !dbg !1358
  br i1 %47, label %48, label %57, !dbg !1359

; <label>:48:                                     ; preds = %3
  br label %49, !dbg !1360, !llvm.loop !1362

; <label>:49:                                     ; preds = %48
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1363
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !1363
  store double 0x7FF8000000000000, double* %51, align 8, !dbg !1363
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1363
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !1363
  store double 0x7FF8000000000000, double* %53, align 8, !dbg !1363
  br label %54, !dbg !1363, !llvm.loop !1366

; <label>:54:                                     ; preds = %49
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 771, i32 1), !dbg !1368
  store i32 1, i32* %4, align 4, !dbg !1368
  br label %424, !dbg !1368
                                                  ; No predecessors!
  br label %56, !dbg !1371

; <label>:56:                                     ; preds = %55
  br label %424, !dbg !1373

; <label>:57:                                     ; preds = %3
  %58 = load double, double* %6, align 8, !dbg !1374
  %59 = fcmp oeq double %58, 1.000000e+00, !dbg !1376
  br i1 %59, label %60, label %65, !dbg !1377

; <label>:60:                                     ; preds = %57
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1378
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !1380
  store double 1.000000e+00, double* %62, align 8, !dbg !1381
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1382
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !1383
  store double 0.000000e+00, double* %64, align 8, !dbg !1384
  store i32 0, i32* %4, align 4, !dbg !1385
  br label %424, !dbg !1385

; <label>:65:                                     ; preds = %57
  %66 = load double, double* %5, align 8, !dbg !1386
  %67 = fcmp oeq double %66, 0.000000e+00, !dbg !1388
  br i1 %67, label %68, label %134, !dbg !1389

; <label>:68:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1390, metadata !60), !dbg !1392
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1393, metadata !60), !dbg !1394
  %69 = load double, double* %6, align 8, !dbg !1395
  %70 = fcmp olt double %69, 1.000000e+00, !dbg !1397
  br i1 %70, label %71, label %99, !dbg !1398

; <label>:71:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata double* %10, metadata !1399, metadata !60), !dbg !1401
  %72 = load double, double* %6, align 8, !dbg !1402
  %73 = call double @acos(double %72) #6, !dbg !1403
  store double %73, double* %10, align 8, !dbg !1401
  call void @llvm.dbg.declare(metadata double* %11, metadata !1404, metadata !60), !dbg !1405
  %74 = load double, double* %10, align 8, !dbg !1406
  %75 = fmul double 5.000000e-01, %74, !dbg !1407
  %76 = call double @sin(double %75) #6, !dbg !1408
  store double %76, double* %11, align 8, !dbg !1405
  %77 = load double, double* %11, align 8, !dbg !1409
  %78 = call i32 @gsl_sf_ellint_Kcomp_e(double %77, i32 0, %struct.gsl_sf_result_struct* %8), !dbg !1410
  store i32 %78, i32* %9, align 4, !dbg !1411
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1412
  %80 = load double, double* %79, align 8, !dbg !1412
  %81 = fmul double 0x3FE45F306DC9C883, %80, !dbg !1413
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1414
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !1415
  store double %81, double* %83, align 8, !dbg !1416
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1417
  %85 = load double, double* %84, align 8, !dbg !1417
  %86 = fmul double 0x3FE45F306DC9C883, %85, !dbg !1418
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1419
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !1420
  store double %86, double* %88, align 8, !dbg !1421
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1422
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 0, !dbg !1423
  %91 = load double, double* %90, align 8, !dbg !1423
  %92 = call double @fabs(double %91) #1, !dbg !1424
  %93 = fmul double 0x3CC0000000000000, %92, !dbg !1425
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1426
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !1427
  %96 = load double, double* %95, align 8, !dbg !1428
  %97 = fadd double %96, %93, !dbg !1428
  store double %97, double* %95, align 8, !dbg !1428
  %98 = load i32, i32* %9, align 4, !dbg !1429
  store i32 %98, i32* %4, align 4, !dbg !1430
  br label %424, !dbg !1430

; <label>:99:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata double* %12, metadata !1431, metadata !60), !dbg !1433
  %100 = load double, double* %6, align 8, !dbg !1434
  %101 = call double @acosh(double %100) #6, !dbg !1435
  store double %101, double* %12, align 8, !dbg !1433
  call void @llvm.dbg.declare(metadata double* %13, metadata !1436, metadata !60), !dbg !1437
  %102 = load double, double* %12, align 8, !dbg !1438
  %103 = fmul double 5.000000e-01, %102, !dbg !1439
  %104 = call double @cosh(double %103) #6, !dbg !1440
  store double %104, double* %13, align 8, !dbg !1437
  call void @llvm.dbg.declare(metadata double* %14, metadata !1441, metadata !60), !dbg !1442
  %105 = load double, double* %12, align 8, !dbg !1443
  %106 = fmul double 5.000000e-01, %105, !dbg !1444
  %107 = call double @tanh(double %106) #6, !dbg !1445
  store double %107, double* %14, align 8, !dbg !1442
  %108 = load double, double* %14, align 8, !dbg !1446
  %109 = call i32 @gsl_sf_ellint_Kcomp_e(double %108, i32 0, %struct.gsl_sf_result_struct* %8), !dbg !1447
  store i32 %109, i32* %9, align 4, !dbg !1448
  %110 = load double, double* %13, align 8, !dbg !1449
  %111 = fdiv double 0x3FE45F306DC9C883, %110, !dbg !1450
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1451
  %113 = load double, double* %112, align 8, !dbg !1451
  %114 = fmul double %111, %113, !dbg !1452
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1453
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !1454
  store double %114, double* %116, align 8, !dbg !1455
  %117 = load double, double* %13, align 8, !dbg !1456
  %118 = fdiv double 0x3FE45F306DC9C883, %117, !dbg !1457
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1458
  %120 = load double, double* %119, align 8, !dbg !1458
  %121 = fmul double %118, %120, !dbg !1459
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1460
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 1, !dbg !1461
  store double %121, double* %123, align 8, !dbg !1462
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1463
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !1464
  %126 = load double, double* %125, align 8, !dbg !1464
  %127 = call double @fabs(double %126) #1, !dbg !1465
  %128 = fmul double 0x3CC0000000000000, %127, !dbg !1466
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1467
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !1468
  %131 = load double, double* %130, align 8, !dbg !1469
  %132 = fadd double %131, %128, !dbg !1469
  store double %132, double* %130, align 8, !dbg !1469
  %133 = load i32, i32* %9, align 4, !dbg !1470
  store i32 %133, i32* %4, align 4, !dbg !1471
  br label %424, !dbg !1471

; <label>:134:                                    ; preds = %65
  %135 = load double, double* %6, align 8, !dbg !1472
  %136 = fcmp ole double %135, 0.000000e+00, !dbg !1474
  br i1 %136, label %137, label %140, !dbg !1475

; <label>:137:                                    ; preds = %134
  %138 = load double, double* %5, align 8, !dbg !1476
  %139 = fcmp olt double %138, 1.000000e+03, !dbg !1478
  br i1 %139, label %152, label %140, !dbg !1479

; <label>:140:                                    ; preds = %137, %134
  %141 = load double, double* %6, align 8, !dbg !1480
  %142 = fcmp olt double %141, 1.000000e-01, !dbg !1481
  br i1 %142, label %143, label %146, !dbg !1482

; <label>:143:                                    ; preds = %140
  %144 = load double, double* %5, align 8, !dbg !1483
  %145 = fcmp olt double %144, 1.700000e+01, !dbg !1485
  br i1 %145, label %152, label %146, !dbg !1486

; <label>:146:                                    ; preds = %143, %140
  %147 = load double, double* %6, align 8, !dbg !1487
  %148 = fcmp olt double %147, 2.000000e-01, !dbg !1488
  br i1 %148, label %149, label %157, !dbg !1489

; <label>:149:                                    ; preds = %146
  %150 = load double, double* %5, align 8, !dbg !1490
  %151 = fcmp olt double %150, 5.000000e+00, !dbg !1491
  br i1 %151, label %152, label %157, !dbg !1492

; <label>:152:                                    ; preds = %149, %143, %137
  %153 = load double, double* %5, align 8, !dbg !1494
  %154 = load double, double* %6, align 8, !dbg !1496
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1497
  %156 = call i32 @conicalP_xlt1_hyperg_A(double 0.000000e+00, double %153, double %154, %struct.gsl_sf_result_struct* %155), !dbg !1498
  store i32 %156, i32* %4, align 4, !dbg !1499
  br label %424, !dbg !1499

; <label>:157:                                    ; preds = %149, %146
  %158 = load double, double* %6, align 8, !dbg !1500
  %159 = fcmp ole double %158, 2.000000e-01, !dbg !1502
  br i1 %159, label %160, label %163, !dbg !1503

; <label>:160:                                    ; preds = %157
  %161 = load double, double* %5, align 8, !dbg !1504
  %162 = fcmp olt double %161, 1.700000e+01, !dbg !1506
  br i1 %162, label %169, label %163, !dbg !1507

; <label>:163:                                    ; preds = %160, %157
  %164 = load double, double* %6, align 8, !dbg !1508
  %165 = fcmp ole double %164, 1.500000e+00, !dbg !1509
  br i1 %165, label %166, label %176, !dbg !1510

; <label>:166:                                    ; preds = %163
  %167 = load double, double* %5, align 8, !dbg !1511
  %168 = fcmp olt double %167, 2.000000e+01, !dbg !1513
  br i1 %168, label %169, label %176, !dbg !1514

; <label>:169:                                    ; preds = %166, %160
  %170 = load double, double* %5, align 8, !dbg !1515
  %171 = load double, double* %6, align 8, !dbg !1517
  %172 = fsub double 1.000000e+00, %171, !dbg !1518
  %173 = fdiv double %172, 2.000000e+00, !dbg !1519
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1520
  %175 = call i32 @gsl_sf_hyperg_2F1_conj_e(double 5.000000e-01, double %170, double 1.000000e+00, double %173, %struct.gsl_sf_result_struct* %174), !dbg !1521
  store i32 %175, i32* %4, align 4, !dbg !1522
  br label %424, !dbg !1522

; <label>:176:                                    ; preds = %166, %163
  %177 = load double, double* %6, align 8, !dbg !1523
  %178 = fcmp olt double 1.500000e+00, %177, !dbg !1525
  br i1 %178, label %179, label %217, !dbg !1526

; <label>:179:                                    ; preds = %176
  %180 = load double, double* %5, align 8, !dbg !1527
  %181 = load double, double* %6, align 8, !dbg !1529
  %182 = fcmp ogt double %181, 2.000000e+01, !dbg !1529
  br i1 %182, label %183, label %185, !dbg !1529

; <label>:183:                                    ; preds = %179
  %184 = load double, double* %6, align 8, !dbg !1530
  br label %186, !dbg !1530

; <label>:185:                                    ; preds = %179
  br label %186, !dbg !1532

; <label>:186:                                    ; preds = %185, %183
  %187 = phi double [ %184, %183 ], [ 2.000000e+01, %185 ], !dbg !1534
  %188 = fcmp olt double %180, %187, !dbg !1536
  br i1 %188, label %189, label %217, !dbg !1537

; <label>:189:                                    ; preds = %186
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1538, metadata !60), !dbg !1540
  call void @llvm.dbg.declare(metadata double* %16, metadata !1541, metadata !60), !dbg !1542
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1543, metadata !60), !dbg !1544
  %190 = load double, double* %5, align 8, !dbg !1545
  %191 = load double, double* %6, align 8, !dbg !1546
  %192 = call i32 @gsl_sf_conicalP_large_x_e(double 0.000000e+00, double %190, double %191, %struct.gsl_sf_result_struct* %15, double* %16), !dbg !1547
  store i32 %192, i32* %17, align 4, !dbg !1544
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1548, metadata !60), !dbg !1549
  %193 = load double, double* %16, align 8, !dbg !1550
  %194 = load double, double* %16, align 8, !dbg !1551
  %195 = call double @fabs(double %194) #1, !dbg !1552
  %196 = fmul double 0x3CC0000000000000, %195, !dbg !1553
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1554
  %198 = load double, double* %197, align 8, !dbg !1554
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !1555
  %200 = load double, double* %199, align 8, !dbg !1555
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1556
  %202 = call i32 @gsl_sf_exp_mult_err_e(double %193, double %196, double %198, double %200, %struct.gsl_sf_result_struct* %201), !dbg !1557
  store i32 %202, i32* %18, align 4, !dbg !1549
  %203 = load i32, i32* %18, align 4, !dbg !1559
  %204 = icmp ne i32 %203, 0, !dbg !1559
  br i1 %204, label %205, label %207, !dbg !1559

; <label>:205:                                    ; preds = %189
  %206 = load i32, i32* %18, align 4, !dbg !1560
  br label %215, !dbg !1560

; <label>:207:                                    ; preds = %189
  %208 = load i32, i32* %17, align 4, !dbg !1561
  %209 = icmp ne i32 %208, 0, !dbg !1561
  br i1 %209, label %210, label %212, !dbg !1561

; <label>:210:                                    ; preds = %207
  %211 = load i32, i32* %17, align 4, !dbg !1563
  br label %213, !dbg !1563

; <label>:212:                                    ; preds = %207
  br label %213, !dbg !1565

; <label>:213:                                    ; preds = %212, %210
  %214 = phi i32 [ %211, %210 ], [ 0, %212 ], !dbg !1567
  br label %215, !dbg !1567

; <label>:215:                                    ; preds = %213, %205
  %216 = phi i32 [ %206, %205 ], [ %214, %213 ], !dbg !1569
  store i32 %216, i32* %4, align 4, !dbg !1571
  br label %424, !dbg !1571

; <label>:217:                                    ; preds = %186, %176
  call void @llvm.dbg.declare(metadata double* %19, metadata !1572, metadata !60), !dbg !1574
  call void @llvm.dbg.declare(metadata double* %20, metadata !1575, metadata !60), !dbg !1576
  %218 = load double, double* %6, align 8, !dbg !1577
  %219 = fcmp olt double %218, 1.000000e+00, !dbg !1579
  br i1 %219, label %220, label %316, !dbg !1580

; <label>:220:                                    ; preds = %217
  call void @llvm.dbg.declare(metadata double* %21, metadata !1581, metadata !60), !dbg !1583
  %221 = load double, double* %6, align 8, !dbg !1584
  %222 = call double @acos(double %221) #6, !dbg !1585
  store double %222, double* %21, align 8, !dbg !1583
  call void @llvm.dbg.declare(metadata double* %22, metadata !1586, metadata !60), !dbg !1587
  %223 = load double, double* %6, align 8, !dbg !1588
  %224 = load double, double* %6, align 8, !dbg !1589
  %225 = fmul double %223, %224, !dbg !1590
  %226 = fsub double 1.000000e+00, %225, !dbg !1591
  %227 = call double @sqrt(double %226) #6, !dbg !1592
  store double %227, double* %22, align 8, !dbg !1587
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !1593, metadata !60), !dbg !1594
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !1595, metadata !60), !dbg !1596
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1597, metadata !60), !dbg !1598
  %228 = load double, double* %21, align 8, !dbg !1599
  %229 = load double, double* %5, align 8, !dbg !1600
  %230 = fmul double %228, %229, !dbg !1601
  %231 = call i32 @gsl_sf_bessel_I0_scaled_e(double %230, %struct.gsl_sf_result_struct* %23), !dbg !1602
  store i32 %231, i32* %25, align 4, !dbg !1598
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1603, metadata !60), !dbg !1604
  %232 = load double, double* %21, align 8, !dbg !1605
  %233 = load double, double* %5, align 8, !dbg !1606
  %234 = fmul double %232, %233, !dbg !1607
  %235 = call i32 @gsl_sf_bessel_I1_scaled_e(double %234, %struct.gsl_sf_result_struct* %24), !dbg !1608
  store i32 %235, i32* %26, align 4, !dbg !1604
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1609, metadata !60), !dbg !1610
  %236 = load i32, i32* %25, align 4, !dbg !1611
  %237 = icmp ne i32 %236, 0, !dbg !1611
  br i1 %237, label %238, label %240, !dbg !1611

; <label>:238:                                    ; preds = %220
  %239 = load i32, i32* %25, align 4, !dbg !1612
  br label %248, !dbg !1612

; <label>:240:                                    ; preds = %220
  %241 = load i32, i32* %26, align 4, !dbg !1614
  %242 = icmp ne i32 %241, 0, !dbg !1614
  br i1 %242, label %243, label %245, !dbg !1614

; <label>:243:                                    ; preds = %240
  %244 = load i32, i32* %26, align 4, !dbg !1616
  br label %246, !dbg !1616

; <label>:245:                                    ; preds = %240
  br label %246, !dbg !1618

; <label>:246:                                    ; preds = %245, %243
  %247 = phi i32 [ %244, %243 ], [ 0, %245 ], !dbg !1620
  br label %248, !dbg !1620

; <label>:248:                                    ; preds = %246, %238
  %249 = phi i32 [ %239, %238 ], [ %247, %246 ], !dbg !1622
  store i32 %249, i32* %27, align 4, !dbg !1624
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1625, metadata !60), !dbg !1626
  %250 = load double, double* %21, align 8, !dbg !1627
  %251 = load double, double* %6, align 8, !dbg !1628
  %252 = load double, double* %22, align 8, !dbg !1629
  %253 = fdiv double %251, %252, !dbg !1630
  %254 = load double, double* %5, align 8, !dbg !1631
  %255 = call i32 @conicalP_0_V(double %250, double %253, double %254, double -1.000000e+00, double* %19, double* %20), !dbg !1632
  store i32 %255, i32* %28, align 4, !dbg !1626
  call void @llvm.dbg.declare(metadata double* %29, metadata !1633, metadata !60), !dbg !1634
  %256 = load double, double* %19, align 8, !dbg !1635
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1636
  %258 = load double, double* %257, align 8, !dbg !1636
  %259 = fmul double %256, %258, !dbg !1637
  %260 = load double, double* %20, align 8, !dbg !1638
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !1639
  %262 = load double, double* %261, align 8, !dbg !1639
  %263 = fmul double %260, %262, !dbg !1640
  %264 = fadd double %259, %263, !dbg !1641
  store double %264, double* %29, align 8, !dbg !1634
  call void @llvm.dbg.declare(metadata double* %30, metadata !1642, metadata !60), !dbg !1643
  %265 = load double, double* %19, align 8, !dbg !1644
  %266 = call double @fabs(double %265) #1, !dbg !1645
  %267 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !1646
  %268 = load double, double* %267, align 8, !dbg !1646
  %269 = fmul double %266, %268, !dbg !1647
  %270 = load double, double* %20, align 8, !dbg !1648
  %271 = call double @fabs(double %270) #1, !dbg !1649
  %272 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !1650
  %273 = load double, double* %272, align 8, !dbg !1650
  %274 = fmul double %271, %273, !dbg !1651
  %275 = fadd double %269, %274, !dbg !1652
  store double %275, double* %30, align 8, !dbg !1643
  call void @llvm.dbg.declare(metadata double* %31, metadata !1653, metadata !60), !dbg !1654
  %276 = load double, double* %21, align 8, !dbg !1655
  %277 = load double, double* %5, align 8, !dbg !1656
  %278 = fmul double %276, %277, !dbg !1657
  store double %278, double* %31, align 8, !dbg !1654
  call void @llvm.dbg.declare(metadata double* %32, metadata !1658, metadata !60), !dbg !1659
  %279 = load double, double* %21, align 8, !dbg !1660
  %280 = load double, double* %22, align 8, !dbg !1661
  %281 = fdiv double %279, %280, !dbg !1662
  %282 = call double @sqrt(double %281) #6, !dbg !1663
  store double %282, double* %32, align 8, !dbg !1659
  call void @llvm.dbg.declare(metadata i32* %33, metadata !1664, metadata !60), !dbg !1665
  %283 = load double, double* %31, align 8, !dbg !1666
  %284 = load double, double* %31, align 8, !dbg !1667
  %285 = call double @fabs(double %284) #1, !dbg !1668
  %286 = fmul double 0x3CD0000000000000, %285, !dbg !1669
  %287 = load double, double* %32, align 8, !dbg !1670
  %288 = load double, double* %29, align 8, !dbg !1671
  %289 = fmul double %287, %288, !dbg !1672
  %290 = load double, double* %32, align 8, !dbg !1673
  %291 = load double, double* %30, align 8, !dbg !1674
  %292 = fmul double %290, %291, !dbg !1675
  %293 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1676
  %294 = call i32 @gsl_sf_exp_mult_err_e(double %283, double %286, double %289, double %292, %struct.gsl_sf_result_struct* %293), !dbg !1677
  store i32 %294, i32* %33, align 4, !dbg !1665
  %295 = load i32, i32* %33, align 4, !dbg !1678
  %296 = icmp ne i32 %295, 0, !dbg !1678
  br i1 %296, label %297, label %299, !dbg !1678

; <label>:297:                                    ; preds = %248
  %298 = load i32, i32* %33, align 4, !dbg !1679
  br label %314, !dbg !1679

; <label>:299:                                    ; preds = %248
  %300 = load i32, i32* %28, align 4, !dbg !1680
  %301 = icmp ne i32 %300, 0, !dbg !1680
  br i1 %301, label %302, label %304, !dbg !1680

; <label>:302:                                    ; preds = %299
  %303 = load i32, i32* %28, align 4, !dbg !1681
  br label %312, !dbg !1681

; <label>:304:                                    ; preds = %299
  %305 = load i32, i32* %27, align 4, !dbg !1682
  %306 = icmp ne i32 %305, 0, !dbg !1682
  br i1 %306, label %307, label %309, !dbg !1682

; <label>:307:                                    ; preds = %304
  %308 = load i32, i32* %27, align 4, !dbg !1683
  br label %310, !dbg !1683

; <label>:309:                                    ; preds = %304
  br label %310, !dbg !1684

; <label>:310:                                    ; preds = %309, %307
  %311 = phi i32 [ %308, %307 ], [ 0, %309 ], !dbg !1685
  br label %312, !dbg !1685

; <label>:312:                                    ; preds = %310, %302
  %313 = phi i32 [ %303, %302 ], [ %311, %310 ], !dbg !1687
  br label %314, !dbg !1687

; <label>:314:                                    ; preds = %312, %297
  %315 = phi i32 [ %298, %297 ], [ %313, %312 ], !dbg !1689
  store i32 %315, i32* %4, align 4, !dbg !1691
  br label %424, !dbg !1691

; <label>:316:                                    ; preds = %217
  call void @llvm.dbg.declare(metadata double* %34, metadata !1692, metadata !60), !dbg !1694
  %317 = load double, double* %6, align 8, !dbg !1695
  %318 = fsub double %317, 1.000000e+00, !dbg !1696
  %319 = call double @sqrt(double %318) #6, !dbg !1697
  %320 = load double, double* %6, align 8, !dbg !1698
  %321 = fadd double %320, 1.000000e+00, !dbg !1699
  %322 = call double @sqrt(double %321) #6, !dbg !1700
  %323 = fmul double %319, %322, !dbg !1702
  store double %323, double* %34, align 8, !dbg !1694
  call void @llvm.dbg.declare(metadata double* %35, metadata !1703, metadata !60), !dbg !1704
  %324 = load double, double* %6, align 8, !dbg !1705
  %325 = load double, double* %34, align 8, !dbg !1706
  %326 = fadd double %324, %325, !dbg !1707
  %327 = call double @log(double %326) #6, !dbg !1708
  store double %327, double* %35, align 8, !dbg !1704
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %36, metadata !1709, metadata !60), !dbg !1710
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %37, metadata !1711, metadata !60), !dbg !1712
  call void @llvm.dbg.declare(metadata i32* %38, metadata !1713, metadata !60), !dbg !1714
  %328 = load double, double* %35, align 8, !dbg !1715
  %329 = load double, double* %5, align 8, !dbg !1716
  %330 = fmul double %328, %329, !dbg !1717
  %331 = call i32 @gsl_sf_bessel_J0_e(double %330, %struct.gsl_sf_result_struct* %36), !dbg !1718
  store i32 %331, i32* %38, align 4, !dbg !1714
  call void @llvm.dbg.declare(metadata i32* %39, metadata !1719, metadata !60), !dbg !1720
  %332 = load double, double* %35, align 8, !dbg !1721
  %333 = load double, double* %5, align 8, !dbg !1722
  %334 = fmul double %332, %333, !dbg !1723
  %335 = call i32 @gsl_sf_bessel_J1_e(double %334, %struct.gsl_sf_result_struct* %37), !dbg !1724
  store i32 %335, i32* %39, align 4, !dbg !1720
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1725, metadata !60), !dbg !1726
  %336 = load i32, i32* %38, align 4, !dbg !1727
  %337 = icmp ne i32 %336, 0, !dbg !1727
  br i1 %337, label %338, label %340, !dbg !1727

; <label>:338:                                    ; preds = %316
  %339 = load i32, i32* %38, align 4, !dbg !1728
  br label %348, !dbg !1728

; <label>:340:                                    ; preds = %316
  %341 = load i32, i32* %39, align 4, !dbg !1729
  %342 = icmp ne i32 %341, 0, !dbg !1729
  br i1 %342, label %343, label %345, !dbg !1729

; <label>:343:                                    ; preds = %340
  %344 = load i32, i32* %39, align 4, !dbg !1731
  br label %346, !dbg !1731

; <label>:345:                                    ; preds = %340
  br label %346, !dbg !1733

; <label>:346:                                    ; preds = %345, %343
  %347 = phi i32 [ %344, %343 ], [ 0, %345 ], !dbg !1735
  br label %348, !dbg !1735

; <label>:348:                                    ; preds = %346, %338
  %349 = phi i32 [ %339, %338 ], [ %347, %346 ], !dbg !1737
  store i32 %349, i32* %40, align 4, !dbg !1739
  call void @llvm.dbg.declare(metadata i32* %41, metadata !1740, metadata !60), !dbg !1741
  %350 = load double, double* %35, align 8, !dbg !1742
  %351 = load double, double* %6, align 8, !dbg !1743
  %352 = load double, double* %34, align 8, !dbg !1744
  %353 = fdiv double %351, %352, !dbg !1745
  %354 = load double, double* %5, align 8, !dbg !1746
  %355 = call i32 @conicalP_0_V(double %350, double %353, double %354, double 1.000000e+00, double* %19, double* %20), !dbg !1747
  store i32 %355, i32* %41, align 4, !dbg !1741
  call void @llvm.dbg.declare(metadata double* %42, metadata !1748, metadata !60), !dbg !1749
  %356 = load double, double* %19, align 8, !dbg !1750
  %357 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !1751
  %358 = load double, double* %357, align 8, !dbg !1751
  %359 = fmul double %356, %358, !dbg !1752
  %360 = load double, double* %20, align 8, !dbg !1753
  %361 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !1754
  %362 = load double, double* %361, align 8, !dbg !1754
  %363 = fmul double %360, %362, !dbg !1755
  %364 = fadd double %359, %363, !dbg !1756
  store double %364, double* %42, align 8, !dbg !1749
  call void @llvm.dbg.declare(metadata double* %43, metadata !1757, metadata !60), !dbg !1758
  %365 = load double, double* %19, align 8, !dbg !1759
  %366 = call double @fabs(double %365) #1, !dbg !1760
  %367 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !1761
  %368 = load double, double* %367, align 8, !dbg !1761
  %369 = fmul double %366, %368, !dbg !1762
  %370 = load double, double* %20, align 8, !dbg !1763
  %371 = call double @fabs(double %370) #1, !dbg !1764
  %372 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !1765
  %373 = load double, double* %372, align 8, !dbg !1765
  %374 = fmul double %371, %373, !dbg !1766
  %375 = fadd double %369, %374, !dbg !1767
  store double %375, double* %43, align 8, !dbg !1758
  call void @llvm.dbg.declare(metadata double* %44, metadata !1768, metadata !60), !dbg !1769
  %376 = load double, double* %35, align 8, !dbg !1770
  %377 = load double, double* %34, align 8, !dbg !1771
  %378 = fdiv double %376, %377, !dbg !1772
  %379 = call double @sqrt(double %378) #6, !dbg !1773
  store double %379, double* %44, align 8, !dbg !1769
  call void @llvm.dbg.declare(metadata double* %45, metadata !1774, metadata !60), !dbg !1775
  %380 = load double, double* %44, align 8, !dbg !1776
  %381 = call double @fabs(double %380) #1, !dbg !1777
  %382 = fmul double 2.000000e+00, %381, !dbg !1778
  store double %382, double* %45, align 8, !dbg !1775
  %383 = load double, double* %44, align 8, !dbg !1779
  %384 = load double, double* %42, align 8, !dbg !1780
  %385 = fmul double %383, %384, !dbg !1781
  %386 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1782
  %387 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %386, i32 0, i32 0, !dbg !1783
  store double %385, double* %387, align 8, !dbg !1784
  %388 = load double, double* %44, align 8, !dbg !1785
  %389 = load double, double* %43, align 8, !dbg !1786
  %390 = fmul double %388, %389, !dbg !1787
  %391 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1788
  %392 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %391, i32 0, i32 1, !dbg !1789
  store double %390, double* %392, align 8, !dbg !1790
  %393 = load double, double* %45, align 8, !dbg !1791
  %394 = load double, double* %42, align 8, !dbg !1792
  %395 = call double @fabs(double %394) #1, !dbg !1793
  %396 = fmul double %393, %395, !dbg !1794
  %397 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1795
  %398 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %397, i32 0, i32 1, !dbg !1796
  %399 = load double, double* %398, align 8, !dbg !1797
  %400 = fadd double %399, %396, !dbg !1797
  store double %400, double* %398, align 8, !dbg !1797
  %401 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1798
  %402 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %401, i32 0, i32 0, !dbg !1799
  %403 = load double, double* %402, align 8, !dbg !1799
  %404 = call double @fabs(double %403) #1, !dbg !1800
  %405 = fmul double 0x3CC0000000000000, %404, !dbg !1801
  %406 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1802
  %407 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %406, i32 0, i32 1, !dbg !1803
  %408 = load double, double* %407, align 8, !dbg !1804
  %409 = fadd double %408, %405, !dbg !1804
  store double %409, double* %407, align 8, !dbg !1804
  %410 = load i32, i32* %41, align 4, !dbg !1805
  %411 = icmp ne i32 %410, 0, !dbg !1805
  br i1 %411, label %412, label %414, !dbg !1805

; <label>:412:                                    ; preds = %348
  %413 = load i32, i32* %41, align 4, !dbg !1806
  br label %422, !dbg !1806

; <label>:414:                                    ; preds = %348
  %415 = load i32, i32* %40, align 4, !dbg !1807
  %416 = icmp ne i32 %415, 0, !dbg !1807
  br i1 %416, label %417, label %419, !dbg !1807

; <label>:417:                                    ; preds = %414
  %418 = load i32, i32* %40, align 4, !dbg !1808
  br label %420, !dbg !1808

; <label>:419:                                    ; preds = %414
  br label %420, !dbg !1809

; <label>:420:                                    ; preds = %419, %417
  %421 = phi i32 [ %418, %417 ], [ 0, %419 ], !dbg !1810
  br label %422, !dbg !1810

; <label>:422:                                    ; preds = %420, %412
  %423 = phi i32 [ %413, %412 ], [ %421, %420 ], !dbg !1811
  store i32 %423, i32* %4, align 4, !dbg !1812
  br label %424, !dbg !1812

; <label>:424:                                    ; preds = %54, %60, %71, %99, %152, %169, %215, %314, %422, %56
  %425 = load i32, i32* %4, align 4, !dbg !1813
  ret i32 %425, !dbg !1813
}

declare void @gsl_error(i8*, i8*, i32, i32) #3

declare i32 @gsl_sf_ellint_Kcomp_e(double, i32, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @acosh(double) #2

; Function Attrs: nounwind
declare double @cosh(double) #2

; Function Attrs: nounwind
declare double @tanh(double) #2

; Function Attrs: nounwind uwtable
define internal i32 @conicalP_xlt1_hyperg_A(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1814 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1817, metadata !60), !dbg !1818
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1819, metadata !60), !dbg !1820
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1821, metadata !60), !dbg !1822
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1823, metadata !60), !dbg !1824
  call void @llvm.dbg.declare(metadata double* %9, metadata !1825, metadata !60), !dbg !1826
  %28 = load double, double* %7, align 8, !dbg !1827
  %29 = load double, double* %7, align 8, !dbg !1828
  %30 = fmul double %28, %29, !dbg !1829
  store double %30, double* %9, align 8, !dbg !1826
  call void @llvm.dbg.declare(metadata double* %10, metadata !1830, metadata !60), !dbg !1831
  %31 = load double, double* %7, align 8, !dbg !1832
  %32 = call double @fabs(double %31) #1, !dbg !1833
  %33 = fsub double 1.000000e+00, %32, !dbg !1834
  %34 = call double @fabs(double %33) #1, !dbg !1835
  %35 = fadd double 0x3CB0000000000000, %34, !dbg !1837
  %36 = fdiv double 1.000000e+00, %35, !dbg !1838
  %37 = fadd double 1.000000e+00, %36, !dbg !1839
  store double %37, double* %10, align 8, !dbg !1831
  call void @llvm.dbg.declare(metadata double* %11, metadata !1840, metadata !60), !dbg !1841
  %38 = load double, double* %9, align 8, !dbg !1842
  %39 = fsub double 1.000000e+00, %38, !dbg !1843
  %40 = call double @sqrt(double %39) #6, !dbg !1844
  %41 = fmul double 5.000000e-01, %40, !dbg !1845
  %42 = load double, double* %5, align 8, !dbg !1846
  %43 = call double @pow(double %41, double %42) #6, !dbg !1847
  %44 = fdiv double 0x3FFC5BF891B4EF6B, %43, !dbg !1848
  store double %44, double* %11, align 8, !dbg !1841
  call void @llvm.dbg.declare(metadata double* %12, metadata !1849, metadata !60), !dbg !1850
  %45 = load double, double* %10, align 8, !dbg !1851
  %46 = fmul double %45, 0x3CB0000000000000, !dbg !1852
  %47 = load double, double* %5, align 8, !dbg !1853
  %48 = call double @fabs(double %47) #1, !dbg !1854
  %49 = fadd double %48, 1.000000e+00, !dbg !1855
  %50 = fmul double %46, %49, !dbg !1856
  %51 = load double, double* %11, align 8, !dbg !1857
  %52 = call double @fabs(double %51) #1, !dbg !1858
  %53 = fmul double %50, %52, !dbg !1859
  store double %53, double* %12, align 8, !dbg !1850
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1860, metadata !60), !dbg !1861
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1862, metadata !60), !dbg !1863
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1864, metadata !60), !dbg !1865
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !1866, metadata !60), !dbg !1867
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !1868, metadata !60), !dbg !1869
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1870, metadata !60), !dbg !1871
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !1872, metadata !60), !dbg !1873
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !1874, metadata !60), !dbg !1875
  call void @llvm.dbg.declare(metadata double* %21, metadata !1876, metadata !60), !dbg !1877
  call void @llvm.dbg.declare(metadata double* %22, metadata !1878, metadata !60), !dbg !1879
  call void @llvm.dbg.declare(metadata double* %23, metadata !1880, metadata !60), !dbg !1881
  call void @llvm.dbg.declare(metadata double* %24, metadata !1882, metadata !60), !dbg !1883
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1884, metadata !60), !dbg !1885
  %54 = load double, double* %5, align 8, !dbg !1886
  %55 = fmul double 5.000000e-01, %54, !dbg !1887
  %56 = fsub double 2.500000e-01, %55, !dbg !1888
  %57 = load double, double* %6, align 8, !dbg !1889
  %58 = fmul double 5.000000e-01, %57, !dbg !1890
  %59 = load double, double* %9, align 8, !dbg !1891
  %60 = call i32 @gsl_sf_hyperg_2F1_conj_e(double %56, double %58, double 5.000000e-01, double %59, %struct.gsl_sf_result_struct* %17), !dbg !1892
  store i32 %60, i32* %25, align 4, !dbg !1885
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1893, metadata !60), !dbg !1894
  %61 = load double, double* %5, align 8, !dbg !1895
  %62 = fmul double 5.000000e-01, %61, !dbg !1896
  %63 = fsub double 7.500000e-01, %62, !dbg !1897
  %64 = load double, double* %6, align 8, !dbg !1898
  %65 = fmul double 5.000000e-01, %64, !dbg !1899
  %66 = load double, double* %9, align 8, !dbg !1900
  %67 = call i32 @gsl_sf_hyperg_2F1_conj_e(double %63, double %65, double 1.500000e+00, double %66, %struct.gsl_sf_result_struct* %18), !dbg !1901
  store i32 %67, i32* %26, align 4, !dbg !1894
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1902, metadata !60), !dbg !1903
  %68 = load i32, i32* %25, align 4, !dbg !1904
  %69 = icmp ne i32 %68, 0, !dbg !1904
  br i1 %69, label %70, label %72, !dbg !1904

; <label>:70:                                     ; preds = %4
  %71 = load i32, i32* %25, align 4, !dbg !1905
  br label %80, !dbg !1905

; <label>:72:                                     ; preds = %4
  %73 = load i32, i32* %26, align 4, !dbg !1906
  %74 = icmp ne i32 %73, 0, !dbg !1906
  br i1 %74, label %75, label %77, !dbg !1906

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %26, align 4, !dbg !1908
  br label %78, !dbg !1908

; <label>:77:                                     ; preds = %72
  br label %78, !dbg !1910

; <label>:78:                                     ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 0, %77 ], !dbg !1912
  br label %80, !dbg !1912

; <label>:80:                                     ; preds = %78, %70
  %81 = phi i32 [ %71, %70 ], [ %79, %78 ], !dbg !1914
  store i32 %81, i32* %27, align 4, !dbg !1916
  %82 = load double, double* %5, align 8, !dbg !1917
  %83 = fmul double 5.000000e-01, %82, !dbg !1918
  %84 = fsub double 7.500000e-01, %83, !dbg !1919
  %85 = load double, double* %6, align 8, !dbg !1920
  %86 = fmul double -5.000000e-01, %85, !dbg !1921
  %87 = call i32 @gsl_sf_lngamma_complex_e(double %84, double %86, %struct.gsl_sf_result_struct* %13, %struct.gsl_sf_result_struct* %15), !dbg !1922
  %88 = load double, double* %5, align 8, !dbg !1923
  %89 = fmul double 5.000000e-01, %88, !dbg !1924
  %90 = fsub double 2.500000e-01, %89, !dbg !1925
  %91 = load double, double* %6, align 8, !dbg !1926
  %92 = fmul double -5.000000e-01, %91, !dbg !1927
  %93 = call i32 @gsl_sf_lngamma_complex_e(double %90, double %92, %struct.gsl_sf_result_struct* %14, %struct.gsl_sf_result_struct* %16), !dbg !1928
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1929
  %95 = load double, double* %94, align 8, !dbg !1929
  %96 = fmul double -2.000000e+00, %95, !dbg !1930
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1931
  %98 = load double, double* %97, align 8, !dbg !1931
  %99 = fmul double 2.000000e+00, %98, !dbg !1932
  %100 = call i32 @gsl_sf_exp_err_e(double %96, double %99, %struct.gsl_sf_result_struct* %19), !dbg !1933
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1934
  %102 = load double, double* %101, align 8, !dbg !1934
  %103 = fmul double -2.000000e+00, %102, !dbg !1935
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1936
  %105 = load double, double* %104, align 8, !dbg !1936
  %106 = fmul double 2.000000e+00, %105, !dbg !1937
  %107 = call i32 @gsl_sf_exp_err_e(double %103, double %106, %struct.gsl_sf_result_struct* %20), !dbg !1938
  %108 = load double, double* %7, align 8, !dbg !1939
  %109 = fmul double -2.000000e+00, %108, !dbg !1940
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1941
  %111 = load double, double* %110, align 8, !dbg !1942
  %112 = fmul double %111, %109, !dbg !1942
  store double %112, double* %110, align 8, !dbg !1942
  %113 = load double, double* %7, align 8, !dbg !1943
  %114 = call double @fabs(double %113) #1, !dbg !1944
  %115 = fmul double 2.000000e+00, %114, !dbg !1945
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1946
  %117 = load double, double* %116, align 8, !dbg !1947
  %118 = fmul double %117, %115, !dbg !1947
  store double %118, double* %116, align 8, !dbg !1947
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1948
  %120 = load double, double* %119, align 8, !dbg !1948
  %121 = call double @fabs(double %120) #1, !dbg !1949
  %122 = fmul double 0x3CB0000000000000, %121, !dbg !1950
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1951
  %124 = load double, double* %123, align 8, !dbg !1952
  %125 = fadd double %124, %122, !dbg !1952
  store double %125, double* %123, align 8, !dbg !1952
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1953
  %127 = load double, double* %126, align 8, !dbg !1953
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1954
  %129 = load double, double* %128, align 8, !dbg !1954
  %130 = fmul double %127, %129, !dbg !1955
  store double %130, double* %21, align 8, !dbg !1956
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1957
  %132 = load double, double* %131, align 8, !dbg !1957
  %133 = call double @fabs(double %132) #1, !dbg !1958
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !1959
  %135 = load double, double* %134, align 8, !dbg !1959
  %136 = fmul double %133, %135, !dbg !1960
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1961
  %138 = load double, double* %137, align 8, !dbg !1961
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1962
  %140 = load double, double* %139, align 8, !dbg !1962
  %141 = call double @fabs(double %140) #1, !dbg !1963
  %142 = fmul double %138, %141, !dbg !1964
  %143 = fadd double %136, %142, !dbg !1965
  store double %143, double* %22, align 8, !dbg !1966
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1967
  %145 = load double, double* %144, align 8, !dbg !1967
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1968
  %147 = load double, double* %146, align 8, !dbg !1968
  %148 = fmul double %145, %147, !dbg !1969
  store double %148, double* %23, align 8, !dbg !1970
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1971
  %150 = load double, double* %149, align 8, !dbg !1971
  %151 = call double @fabs(double %150) #1, !dbg !1972
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1973
  %153 = load double, double* %152, align 8, !dbg !1973
  %154 = fmul double %151, %153, !dbg !1974
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1975
  %156 = load double, double* %155, align 8, !dbg !1975
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1976
  %158 = load double, double* %157, align 8, !dbg !1976
  %159 = call double @fabs(double %158) #1, !dbg !1977
  %160 = fmul double %156, %159, !dbg !1978
  %161 = fadd double %154, %160, !dbg !1979
  store double %161, double* %24, align 8, !dbg !1980
  %162 = load double, double* %11, align 8, !dbg !1981
  %163 = load double, double* %21, align 8, !dbg !1982
  %164 = load double, double* %23, align 8, !dbg !1983
  %165 = fadd double %163, %164, !dbg !1984
  %166 = fmul double %162, %165, !dbg !1985
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1986
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !1987
  store double %166, double* %168, align 8, !dbg !1988
  %169 = load double, double* %11, align 8, !dbg !1989
  %170 = load double, double* %22, align 8, !dbg !1990
  %171 = load double, double* %24, align 8, !dbg !1991
  %172 = fadd double %170, %171, !dbg !1992
  %173 = fmul double %169, %172, !dbg !1993
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1994
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 1, !dbg !1995
  store double %173, double* %175, align 8, !dbg !1996
  %176 = load double, double* %12, align 8, !dbg !1997
  %177 = load double, double* %21, align 8, !dbg !1998
  %178 = load double, double* %23, align 8, !dbg !1999
  %179 = fadd double %177, %178, !dbg !2000
  %180 = call double @fabs(double %179) #1, !dbg !2001
  %181 = fmul double %176, %180, !dbg !2002
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2003
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %182, i32 0, i32 1, !dbg !2004
  %184 = load double, double* %183, align 8, !dbg !2005
  %185 = fadd double %184, %181, !dbg !2005
  store double %185, double* %183, align 8, !dbg !2005
  %186 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2006
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %186, i32 0, i32 0, !dbg !2007
  %188 = load double, double* %187, align 8, !dbg !2007
  %189 = call double @fabs(double %188) #1, !dbg !2008
  %190 = fmul double 0x3CC0000000000000, %189, !dbg !2009
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !2010
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %191, i32 0, i32 1, !dbg !2011
  %193 = load double, double* %192, align 8, !dbg !2012
  %194 = fadd double %193, %190, !dbg !2012
  store double %194, double* %192, align 8, !dbg !2012
  %195 = load i32, i32* %27, align 4, !dbg !2013
  ret i32 %195, !dbg !2014
}

declare i32 @gsl_sf_hyperg_2F1_conj_e(double, double, double, double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_I0_scaled_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_I1_scaled_e(double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define internal i32 @conicalP_0_V(double, double, double, double, double*, double*) #0 !dbg !2015 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca [8 x double], align 16
  %14 = alloca [8 x double], align 16
  %15 = alloca [8 x double], align 16
  %16 = alloca [12 x double], align 16
  %17 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2018, metadata !60), !dbg !2019
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2020, metadata !60), !dbg !2021
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2022, metadata !60), !dbg !2023
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !2024, metadata !60), !dbg !2025
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !2026, metadata !60), !dbg !2027
  store double* %5, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !2028, metadata !60), !dbg !2029
  call void @llvm.dbg.declare(metadata [8 x double]* %13, metadata !2030, metadata !60), !dbg !2034
  call void @llvm.dbg.declare(metadata [8 x double]* %14, metadata !2035, metadata !60), !dbg !2036
  call void @llvm.dbg.declare(metadata [8 x double]* %15, metadata !2037, metadata !60), !dbg !2038
  call void @llvm.dbg.declare(metadata [12 x double]* %16, metadata !2039, metadata !60), !dbg !2043
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2044, metadata !60), !dbg !2045
  %18 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 0, !dbg !2046
  store double 1.000000e+00, double* %18, align 16, !dbg !2047
  %19 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 0, !dbg !2048
  store double 1.000000e+00, double* %19, align 16, !dbg !2049
  %20 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 0, !dbg !2050
  store double 1.000000e+00, double* %20, align 16, !dbg !2051
  store i32 1, i32* %17, align 4, !dbg !2052
  br label %21, !dbg !2054

; <label>:21:                                     ; preds = %47, %6
  %22 = load i32, i32* %17, align 4, !dbg !2055
  %23 = icmp sle i32 %22, 7, !dbg !2058
  br i1 %23, label %24, label %50, !dbg !2059

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %17, align 4, !dbg !2060
  %26 = sub nsw i32 %25, 1, !dbg !2062
  %27 = sext i32 %26 to i64, !dbg !2063
  %28 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 %27, !dbg !2063
  %29 = load double, double* %28, align 8, !dbg !2063
  %30 = load double, double* %7, align 8, !dbg !2064
  %31 = fmul double %29, %30, !dbg !2065
  %32 = load i32, i32* %17, align 4, !dbg !2066
  %33 = sext i32 %32 to i64, !dbg !2067
  %34 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 %33, !dbg !2067
  store double %31, double* %34, align 8, !dbg !2068
  %35 = load i32, i32* %17, align 4, !dbg !2069
  %36 = sub nsw i32 %35, 1, !dbg !2070
  %37 = sext i32 %36 to i64, !dbg !2071
  %38 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 %37, !dbg !2071
  %39 = load double, double* %38, align 8, !dbg !2071
  %40 = load double, double* %7, align 8, !dbg !2072
  %41 = load double, double* %8, align 8, !dbg !2073
  %42 = fmul double %40, %41, !dbg !2074
  %43 = fmul double %39, %42, !dbg !2075
  %44 = load i32, i32* %17, align 4, !dbg !2076
  %45 = sext i32 %44 to i64, !dbg !2077
  %46 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 %45, !dbg !2077
  store double %43, double* %46, align 8, !dbg !2078
  br label %47, !dbg !2079

; <label>:47:                                     ; preds = %24
  %48 = load i32, i32* %17, align 4, !dbg !2080
  %49 = add nsw i32 %48, 1, !dbg !2080
  store i32 %49, i32* %17, align 4, !dbg !2080
  br label %21, !dbg !2082, !llvm.loop !2083

; <label>:50:                                     ; preds = %21
  store i32 1, i32* %17, align 4, !dbg !2085
  br label %51, !dbg !2087

; <label>:51:                                     ; preds = %65, %50
  %52 = load i32, i32* %17, align 4, !dbg !2088
  %53 = icmp sle i32 %52, 11, !dbg !2091
  br i1 %53, label %54, label %68, !dbg !2092

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %17, align 4, !dbg !2093
  %56 = sub nsw i32 %55, 1, !dbg !2095
  %57 = sext i32 %56 to i64, !dbg !2096
  %58 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 %57, !dbg !2096
  %59 = load double, double* %58, align 8, !dbg !2096
  %60 = load double, double* %9, align 8, !dbg !2097
  %61 = fmul double %59, %60, !dbg !2098
  %62 = load i32, i32* %17, align 4, !dbg !2099
  %63 = sext i32 %62 to i64, !dbg !2100
  %64 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 %63, !dbg !2100
  store double %61, double* %64, align 8, !dbg !2101
  br label %65, !dbg !2102

; <label>:65:                                     ; preds = %54
  %66 = load i32, i32* %17, align 4, !dbg !2103
  %67 = add nsw i32 %66, 1, !dbg !2103
  store i32 %67, i32* %17, align 4, !dbg !2103
  br label %51, !dbg !2105, !llvm.loop !2106

; <label>:68:                                     ; preds = %51
  %69 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 0, !dbg !2108
  store double 1.000000e+00, double* %69, align 16, !dbg !2109
  %70 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2110
  %71 = load double, double* %70, align 8, !dbg !2110
  %72 = fsub double %71, 1.000000e+00, !dbg !2111
  %73 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 1, !dbg !2112
  %74 = load double, double* %73, align 8, !dbg !2112
  %75 = fmul double 8.000000e+00, %74, !dbg !2113
  %76 = fdiv double %72, %75, !dbg !2114
  %77 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 1, !dbg !2115
  store double %76, double* %77, align 8, !dbg !2116
  %78 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !2117
  %79 = load double, double* %78, align 16, !dbg !2117
  %80 = fmul double 9.000000e+00, %79, !dbg !2118
  %81 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2119
  %82 = load double, double* %81, align 8, !dbg !2119
  %83 = fmul double 6.000000e+00, %82, !dbg !2120
  %84 = fadd double %80, %83, !dbg !2121
  %85 = fsub double %84, 1.500000e+01, !dbg !2122
  %86 = load double, double* %10, align 8, !dbg !2123
  %87 = fmul double %86, 8.000000e+00, !dbg !2124
  %88 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !2125
  %89 = load double, double* %88, align 16, !dbg !2125
  %90 = fmul double %87, %89, !dbg !2126
  %91 = fsub double %85, %90, !dbg !2127
  %92 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !2128
  %93 = load double, double* %92, align 16, !dbg !2128
  %94 = fmul double 1.280000e+02, %93, !dbg !2129
  %95 = fdiv double %91, %94, !dbg !2130
  %96 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 2, !dbg !2131
  store double %95, double* %96, align 16, !dbg !2132
  %97 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 3, !dbg !2133
  %98 = load double, double* %97, align 8, !dbg !2133
  %99 = fmul double 1.500000e+01, %98, !dbg !2134
  %100 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !2135
  %101 = load double, double* %100, align 16, !dbg !2135
  %102 = fmul double 2.700000e+01, %101, !dbg !2136
  %103 = fadd double %99, %102, !dbg !2137
  %104 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2138
  %105 = load double, double* %104, align 8, !dbg !2138
  %106 = fmul double 2.100000e+01, %105, !dbg !2139
  %107 = fadd double %103, %106, !dbg !2140
  %108 = fsub double %107, 6.300000e+01, !dbg !2141
  %109 = load double, double* %10, align 8, !dbg !2142
  %110 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !2143
  %111 = load double, double* %110, align 16, !dbg !2143
  %112 = fmul double %109, %111, !dbg !2144
  %113 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2145
  %114 = load double, double* %113, align 8, !dbg !2145
  %115 = fmul double 1.600000e+01, %114, !dbg !2146
  %116 = fadd double %115, 2.400000e+01, !dbg !2147
  %117 = fmul double %112, %116, !dbg !2148
  %118 = fsub double %108, %117, !dbg !2149
  %119 = fmul double 5.000000e+00, %118, !dbg !2150
  %120 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 3, !dbg !2151
  %121 = load double, double* %120, align 8, !dbg !2151
  %122 = fmul double 1.024000e+03, %121, !dbg !2152
  %123 = fdiv double %119, %122, !dbg !2153
  %124 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 3, !dbg !2154
  store double %123, double* %124, align 8, !dbg !2155
  %125 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 4, !dbg !2156
  %126 = load double, double* %125, align 16, !dbg !2156
  %127 = fmul double 5.250000e+02, %126, !dbg !2157
  %128 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 3, !dbg !2158
  %129 = load double, double* %128, align 8, !dbg !2158
  %130 = fmul double 1.500000e+03, %129, !dbg !2159
  %131 = fadd double %127, %130, !dbg !2160
  %132 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !2161
  %133 = load double, double* %132, align 16, !dbg !2161
  %134 = fmul double 2.430000e+03, %133, !dbg !2162
  %135 = fadd double %131, %134, !dbg !2163
  %136 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2164
  %137 = load double, double* %136, align 8, !dbg !2164
  %138 = fmul double 1.980000e+03, %137, !dbg !2165
  %139 = fadd double %135, %138, !dbg !2166
  %140 = fsub double %139, 6.435000e+03, !dbg !2167
  %141 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !2168
  %142 = load double, double* %141, align 16, !dbg !2168
  %143 = fmul double 1.920000e+02, %142, !dbg !2169
  %144 = fadd double %140, %143, !dbg !2170
  %145 = load double, double* %10, align 8, !dbg !2171
  %146 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !2172
  %147 = load double, double* %146, align 16, !dbg !2172
  %148 = fmul double %145, %147, !dbg !2173
  %149 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !2174
  %150 = load double, double* %149, align 16, !dbg !2174
  %151 = fmul double 7.200000e+02, %150, !dbg !2175
  %152 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2176
  %153 = load double, double* %152, align 8, !dbg !2176
  %154 = fmul double 1.600000e+03, %153, !dbg !2177
  %155 = fadd double %151, %154, !dbg !2178
  %156 = fadd double %155, 2.160000e+03, !dbg !2179
  %157 = fmul double %148, %156, !dbg !2180
  %158 = fsub double %144, %157, !dbg !2181
  %159 = fmul double 7.000000e+00, %158, !dbg !2182
  %160 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !2183
  %161 = load double, double* %160, align 16, !dbg !2183
  %162 = fmul double 3.276800e+04, %161, !dbg !2184
  %163 = fdiv double %159, %162, !dbg !2185
  %164 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 4, !dbg !2186
  store double %163, double* %164, align 16, !dbg !2187
  %165 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 5, !dbg !2188
  %166 = load double, double* %165, align 8, !dbg !2188
  %167 = fmul double 2.835000e+03, %166, !dbg !2189
  %168 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 4, !dbg !2190
  %169 = load double, double* %168, align 16, !dbg !2190
  %170 = fmul double 1.102500e+04, %169, !dbg !2191
  %171 = fadd double %167, %170, !dbg !2192
  %172 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 3, !dbg !2193
  %173 = load double, double* %172, align 8, !dbg !2193
  %174 = fmul double 2.475000e+04, %173, !dbg !2194
  %175 = fadd double %171, %174, !dbg !2195
  %176 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !2196
  %177 = load double, double* %176, align 16, !dbg !2196
  %178 = fmul double 3.861000e+04, %177, !dbg !2197
  %179 = fadd double %175, %178, !dbg !2198
  %180 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2199
  %181 = load double, double* %180, align 8, !dbg !2199
  %182 = fmul double 3.217500e+04, %181, !dbg !2200
  %183 = fadd double %179, %182, !dbg !2201
  %184 = fsub double %183, 1.093950e+05, !dbg !2202
  %185 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !2203
  %186 = load double, double* %185, align 16, !dbg !2203
  %187 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2204
  %188 = load double, double* %187, align 8, !dbg !2204
  %189 = fmul double 1.984000e+03, %188, !dbg !2205
  %190 = fadd double %189, 4.032000e+03, !dbg !2206
  %191 = fmul double %186, %190, !dbg !2207
  %192 = fadd double %184, %191, !dbg !2208
  %193 = load double, double* %10, align 8, !dbg !2209
  %194 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !2210
  %195 = load double, double* %194, align 16, !dbg !2210
  %196 = fmul double %193, %195, !dbg !2211
  %197 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 3, !dbg !2212
  %198 = load double, double* %197, align 8, !dbg !2212
  %199 = fmul double 4.800000e+03, %198, !dbg !2213
  %200 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !2214
  %201 = load double, double* %200, align 16, !dbg !2214
  %202 = fmul double 1.512000e+04, %201, !dbg !2215
  %203 = fadd double %199, %202, !dbg !2216
  %204 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2217
  %205 = load double, double* %204, align 8, !dbg !2217
  %206 = fmul double 2.640000e+04, %205, !dbg !2218
  %207 = fadd double %203, %206, !dbg !2219
  %208 = fadd double %207, 3.432000e+04, !dbg !2220
  %209 = fmul double %196, %208, !dbg !2221
  %210 = fsub double %192, %209, !dbg !2222
  %211 = fmul double 2.100000e+01, %210, !dbg !2223
  %212 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 5, !dbg !2224
  %213 = load double, double* %212, align 8, !dbg !2224
  %214 = fmul double 2.621440e+05, %213, !dbg !2225
  %215 = fdiv double %211, %214, !dbg !2226
  %216 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 5, !dbg !2227
  store double %215, double* %216, align 8, !dbg !2228
  %217 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 6, !dbg !2229
  %218 = load double, double* %217, align 16, !dbg !2229
  %219 = fmul double 2.182950e+05, %218, !dbg !2230
  %220 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 5, !dbg !2231
  %221 = load double, double* %220, align 8, !dbg !2231
  %222 = fmul double 1.071630e+06, %221, !dbg !2232
  %223 = fadd double %219, %222, !dbg !2233
  %224 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 4, !dbg !2234
  %225 = load double, double* %224, align 16, !dbg !2234
  %226 = fmul double 3.009825e+06, %225, !dbg !2235
  %227 = fadd double %223, %226, !dbg !2236
  %228 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 3, !dbg !2237
  %229 = load double, double* %228, align 8, !dbg !2237
  %230 = fmul double 6.142500e+06, %229, !dbg !2238
  %231 = fadd double %227, %230, !dbg !2239
  %232 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !2240
  %233 = load double, double* %232, align 16, !dbg !2240
  %234 = fmul double 9.398025e+06, %233, !dbg !2241
  %235 = fadd double %231, %234, !dbg !2242
  %236 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2243
  %237 = load double, double* %236, align 8, !dbg !2243
  %238 = fmul double 7.936110e+06, %237, !dbg !2244
  %239 = fadd double %235, %238, !dbg !2245
  %240 = fsub double %239, 0x417A7D5810000000, !dbg !2246
  %241 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !2247
  %242 = load double, double* %241, align 16, !dbg !2247
  %243 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !2248
  %244 = load double, double* %243, align 16, !dbg !2248
  %245 = fmul double 2.540160e+05, %244, !dbg !2249
  %246 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2250
  %247 = load double, double* %246, align 8, !dbg !2250
  %248 = fmul double 7.499520e+05, %247, !dbg !2251
  %249 = fadd double %245, %248, !dbg !2252
  %250 = fadd double %249, 1.100736e+06, !dbg !2253
  %251 = fmul double %242, %250, !dbg !2254
  %252 = fadd double %240, %251, !dbg !2255
  %253 = load double, double* %10, align 8, !dbg !2256
  %254 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !2257
  %255 = load double, double* %254, align 16, !dbg !2257
  %256 = fmul double %253, %255, !dbg !2258
  %257 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 4, !dbg !2259
  %258 = load double, double* %257, align 16, !dbg !2259
  %259 = fmul double 4.410000e+05, %258, !dbg !2260
  %260 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 3, !dbg !2261
  %261 = load double, double* %260, align 8, !dbg !2261
  %262 = fmul double 1.814400e+06, %261, !dbg !2262
  %263 = fadd double %259, %262, !dbg !2263
  %264 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !2264
  %265 = load double, double* %264, align 16, !dbg !2264
  %266 = fmul double 4.127760e+06, %265, !dbg !2265
  %267 = fadd double %263, %266, !dbg !2266
  %268 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !2267
  %269 = load double, double* %268, align 8, !dbg !2267
  %270 = fmul double 6.552000e+06, %269, !dbg !2268
  %271 = fadd double %267, %270, !dbg !2269
  %272 = fadd double %271, 8.353800e+06, !dbg !2270
  %273 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !2271
  %274 = load double, double* %273, align 16, !dbg !2271
  %275 = fmul double 3.123200e+04, %274, !dbg !2272
  %276 = fadd double %272, %275, !dbg !2273
  %277 = fmul double %256, %276, !dbg !2274
  %278 = fsub double %252, %277, !dbg !2275
  %279 = fmul double 1.100000e+01, %278, !dbg !2276
  %280 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 6, !dbg !2277
  %281 = load double, double* %280, align 16, !dbg !2277
  %282 = fmul double 4.194304e+06, %281, !dbg !2278
  %283 = fdiv double %279, %282, !dbg !2279
  %284 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 6, !dbg !2280
  store double %283, double* %284, align 16, !dbg !2281
  %285 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 0, !dbg !2282
  %286 = load double, double* %285, align 16, !dbg !2282
  %287 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 3, !dbg !2283
  %288 = load double, double* %287, align 8, !dbg !2283
  %289 = fmul double -4.000000e+00, %288, !dbg !2284
  %290 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 1, !dbg !2285
  %291 = load double, double* %290, align 8, !dbg !2285
  %292 = fdiv double %289, %291, !dbg !2286
  %293 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 4, !dbg !2287
  %294 = load double, double* %293, align 16, !dbg !2287
  %295 = fadd double %292, %294, !dbg !2288
  %296 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 4, !dbg !2289
  %297 = load double, double* %296, align 16, !dbg !2289
  %298 = fdiv double %295, %297, !dbg !2290
  %299 = fadd double %286, %298, !dbg !2291
  %300 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 5, !dbg !2292
  %301 = load double, double* %300, align 8, !dbg !2292
  %302 = fmul double -1.920000e+02, %301, !dbg !2293
  %303 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 3, !dbg !2294
  %304 = load double, double* %303, align 8, !dbg !2294
  %305 = fdiv double %302, %304, !dbg !2295
  %306 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 6, !dbg !2296
  %307 = load double, double* %306, align 16, !dbg !2296
  %308 = fmul double 1.440000e+02, %307, !dbg !2297
  %309 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !2298
  %310 = load double, double* %309, align 16, !dbg !2298
  %311 = fdiv double %308, %310, !dbg !2299
  %312 = fadd double %305, %311, !dbg !2300
  %313 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 8, !dbg !2301
  %314 = load double, double* %313, align 16, !dbg !2301
  %315 = fdiv double %312, %314, !dbg !2302
  %316 = fadd double %299, %315, !dbg !2303
  %317 = load double, double* %10, align 8, !dbg !2304
  %318 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 2, !dbg !2305
  %319 = load double, double* %318, align 16, !dbg !2305
  %320 = fsub double -0.000000e+00, %319, !dbg !2306
  %321 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 2, !dbg !2307
  %322 = load double, double* %321, align 16, !dbg !2307
  %323 = fdiv double %320, %322, !dbg !2308
  %324 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 4, !dbg !2309
  %325 = load double, double* %324, align 16, !dbg !2309
  %326 = fmul double -2.400000e+01, %325, !dbg !2310
  %327 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !2311
  %328 = load double, double* %327, align 16, !dbg !2311
  %329 = fdiv double %326, %328, !dbg !2312
  %330 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 5, !dbg !2313
  %331 = load double, double* %330, align 8, !dbg !2313
  %332 = fmul double 1.200000e+01, %331, !dbg !2314
  %333 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 1, !dbg !2315
  %334 = load double, double* %333, align 8, !dbg !2315
  %335 = fdiv double %332, %334, !dbg !2316
  %336 = fadd double %329, %335, !dbg !2317
  %337 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 6, !dbg !2318
  %338 = load double, double* %337, align 16, !dbg !2318
  %339 = fsub double %336, %338, !dbg !2319
  %340 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 6, !dbg !2320
  %341 = load double, double* %340, align 16, !dbg !2320
  %342 = fdiv double %339, %341, !dbg !2321
  %343 = fadd double %323, %342, !dbg !2322
  %344 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 6, !dbg !2323
  %345 = load double, double* %344, align 16, !dbg !2323
  %346 = fmul double -1.920000e+03, %345, !dbg !2324
  %347 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !2325
  %348 = load double, double* %347, align 16, !dbg !2325
  %349 = fdiv double %346, %348, !dbg !2326
  %350 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 10, !dbg !2327
  %351 = load double, double* %350, align 16, !dbg !2327
  %352 = fdiv double %349, %351, !dbg !2328
  %353 = fadd double %343, %352, !dbg !2329
  %354 = fmul double %317, %353, !dbg !2330
  %355 = fadd double %316, %354, !dbg !2331
  %356 = load double*, double** %11, align 8, !dbg !2332
  store double %355, double* %356, align 8, !dbg !2333
  %357 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 1, !dbg !2334
  %358 = load double, double* %357, align 8, !dbg !2334
  %359 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 1, !dbg !2335
  %360 = load double, double* %359, align 8, !dbg !2335
  %361 = fdiv double %358, %360, !dbg !2336
  %362 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 3, !dbg !2337
  %363 = load double, double* %362, align 8, !dbg !2337
  %364 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !2338
  %365 = load double, double* %364, align 16, !dbg !2338
  %366 = fdiv double %363, %365, !dbg !2339
  %367 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 4, !dbg !2340
  %368 = load double, double* %367, align 16, !dbg !2340
  %369 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 1, !dbg !2341
  %370 = load double, double* %369, align 8, !dbg !2341
  %371 = fdiv double %368, %370, !dbg !2342
  %372 = fsub double %366, %371, !dbg !2343
  %373 = fmul double 8.000000e+00, %372, !dbg !2344
  %374 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 5, !dbg !2345
  %375 = load double, double* %374, align 8, !dbg !2345
  %376 = fadd double %373, %375, !dbg !2346
  %377 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 5, !dbg !2347
  %378 = load double, double* %377, align 8, !dbg !2347
  %379 = fdiv double %376, %378, !dbg !2348
  %380 = fadd double %361, %379, !dbg !2349
  %381 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 5, !dbg !2350
  %382 = load double, double* %381, align 8, !dbg !2350
  %383 = fmul double 3.840000e+02, %382, !dbg !2351
  %384 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !2352
  %385 = load double, double* %384, align 16, !dbg !2352
  %386 = fdiv double %383, %385, !dbg !2353
  %387 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 6, !dbg !2354
  %388 = load double, double* %387, align 16, !dbg !2354
  %389 = fmul double 7.680000e+02, %388, !dbg !2355
  %390 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 3, !dbg !2356
  %391 = load double, double* %390, align 8, !dbg !2356
  %392 = fdiv double %389, %391, !dbg !2357
  %393 = fsub double %386, %392, !dbg !2358
  %394 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 9, !dbg !2359
  %395 = load double, double* %394, align 8, !dbg !2359
  %396 = fdiv double %393, %395, !dbg !2360
  %397 = fadd double %380, %396, !dbg !2361
  %398 = load double, double* %10, align 8, !dbg !2362
  %399 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 2, !dbg !2363
  %400 = load double, double* %399, align 16, !dbg !2363
  %401 = fmul double 2.000000e+00, %400, !dbg !2364
  %402 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 1, !dbg !2365
  %403 = load double, double* %402, align 8, !dbg !2365
  %404 = fdiv double %401, %403, !dbg !2366
  %405 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 3, !dbg !2367
  %406 = load double, double* %405, align 8, !dbg !2367
  %407 = fsub double %404, %406, !dbg !2368
  %408 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 3, !dbg !2369
  %409 = load double, double* %408, align 8, !dbg !2369
  %410 = fdiv double %407, %409, !dbg !2370
  %411 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 4, !dbg !2371
  %412 = load double, double* %411, align 16, !dbg !2371
  %413 = fmul double 4.800000e+01, %412, !dbg !2372
  %414 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 3, !dbg !2373
  %415 = load double, double* %414, align 8, !dbg !2373
  %416 = fdiv double %413, %415, !dbg !2374
  %417 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 5, !dbg !2375
  %418 = load double, double* %417, align 8, !dbg !2375
  %419 = fmul double 7.200000e+01, %418, !dbg !2376
  %420 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !2377
  %421 = load double, double* %420, align 16, !dbg !2377
  %422 = fdiv double %419, %421, !dbg !2378
  %423 = fsub double %416, %422, !dbg !2379
  %424 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 6, !dbg !2380
  %425 = load double, double* %424, align 16, !dbg !2380
  %426 = fmul double 1.800000e+01, %425, !dbg !2381
  %427 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 1, !dbg !2382
  %428 = load double, double* %427, align 8, !dbg !2382
  %429 = fdiv double %426, %428, !dbg !2383
  %430 = fadd double %423, %429, !dbg !2384
  %431 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 7, !dbg !2385
  %432 = load double, double* %431, align 8, !dbg !2385
  %433 = fdiv double %430, %432, !dbg !2386
  %434 = fadd double %410, %433, !dbg !2387
  %435 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 6, !dbg !2388
  %436 = load double, double* %435, align 16, !dbg !2388
  %437 = fmul double 3.840000e+03, %436, !dbg !2389
  %438 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 5, !dbg !2390
  %439 = load double, double* %438, align 8, !dbg !2390
  %440 = fdiv double %437, %439, !dbg !2391
  %441 = getelementptr inbounds [12 x double], [12 x double]* %16, i64 0, i64 11, !dbg !2392
  %442 = load double, double* %441, align 8, !dbg !2392
  %443 = fdiv double %440, %442, !dbg !2393
  %444 = fadd double %434, %443, !dbg !2394
  %445 = fmul double %398, %444, !dbg !2395
  %446 = fadd double %397, %445, !dbg !2396
  %447 = load double*, double** %12, align 8, !dbg !2397
  store double %446, double* %447, align 8, !dbg !2398
  ret i32 0, !dbg !2399
}

declare i32 @gsl_sf_bessel_J0_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_J1_e(double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_conicalP_1_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2400 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
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
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca %struct.gsl_sf_result_struct, align 8
  %40 = alloca %struct.gsl_sf_result_struct, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca i32, align 4
  %50 = alloca double, align 8
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca double, align 8
  %54 = alloca double, align 8
  %55 = alloca %struct.gsl_sf_result_struct, align 8
  %56 = alloca %struct.gsl_sf_result_struct, align 8
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca double, align 8
  %62 = alloca double, align 8
  %63 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2401, metadata !60), !dbg !2402
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2403, metadata !60), !dbg !2404
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !2405, metadata !60), !dbg !2406
  %64 = load double, double* %6, align 8, !dbg !2407
  %65 = fcmp ole double %64, -1.000000e+00, !dbg !2409
  br i1 %65, label %66, label %75, !dbg !2410

; <label>:66:                                     ; preds = %3
  br label %67, !dbg !2411, !llvm.loop !2413

; <label>:67:                                     ; preds = %66
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2414
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !2414
  store double 0x7FF8000000000000, double* %69, align 8, !dbg !2414
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2414
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !2414
  store double 0x7FF8000000000000, double* %71, align 8, !dbg !2414
  br label %72, !dbg !2414, !llvm.loop !2417

; <label>:72:                                     ; preds = %67
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 872, i32 1), !dbg !2419
  store i32 1, i32* %4, align 4, !dbg !2419
  br label %661, !dbg !2419
                                                  ; No predecessors!
  br label %74, !dbg !2422

; <label>:74:                                     ; preds = %73
  br label %661, !dbg !2424

; <label>:75:                                     ; preds = %3
  %76 = load double, double* %5, align 8, !dbg !2425
  %77 = fcmp oeq double %76, 0.000000e+00, !dbg !2427
  br i1 %77, label %78, label %279, !dbg !2428

; <label>:78:                                     ; preds = %75
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !2429, metadata !60), !dbg !2431
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !2432, metadata !60), !dbg !2433
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2434, metadata !60), !dbg !2435
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2436, metadata !60), !dbg !2437
  %79 = load double, double* %6, align 8, !dbg !2438
  %80 = fcmp oeq double %79, 1.000000e+00, !dbg !2440
  br i1 %80, label %81, label %86, !dbg !2441

; <label>:81:                                     ; preds = %78
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2442
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !2444
  store double 0.000000e+00, double* %83, align 8, !dbg !2445
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2446
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !2447
  store double 0.000000e+00, double* %85, align 8, !dbg !2448
  store i32 0, i32* %4, align 4, !dbg !2449
  br label %661, !dbg !2449

; <label>:86:                                     ; preds = %78
  %87 = load double, double* %6, align 8, !dbg !2450
  %88 = fcmp olt double %87, 1.000000e+00, !dbg !2452
  br i1 %88, label %89, label %186, !dbg !2453

; <label>:89:                                     ; preds = %86
  %90 = load double, double* %6, align 8, !dbg !2454
  %91 = fsub double 1.000000e+00, %90, !dbg !2457
  %92 = fcmp olt double %91, 0x3E50000000000000, !dbg !2458
  br i1 %92, label %93, label %121, !dbg !2459

; <label>:93:                                     ; preds = %89
  call void @llvm.dbg.declare(metadata double* %12, metadata !2460, metadata !60), !dbg !2462
  %94 = load double, double* %6, align 8, !dbg !2463
  %95 = fsub double 1.000000e+00, %94, !dbg !2464
  %96 = call double @fabs(double %95) #1, !dbg !2465
  %97 = fadd double 0x3CB0000000000000, %96, !dbg !2466
  %98 = fdiv double 1.000000e+00, %97, !dbg !2467
  %99 = call double @GSL_MAX_DBL(double 1.000000e+00, double %98), !dbg !2468
  store double %99, double* %12, align 8, !dbg !2462
  %100 = load double, double* %6, align 8, !dbg !2470
  %101 = fsub double 1.000000e+00, %100, !dbg !2471
  %102 = call double @sqrt(double %101) #6, !dbg !2472
  %103 = fmul double 0x3FC6A09E667F3BCC, %102, !dbg !2473
  %104 = load double, double* %6, align 8, !dbg !2474
  %105 = fsub double 1.000000e+00, %104, !dbg !2475
  %106 = fmul double 3.125000e-01, %105, !dbg !2476
  %107 = fadd double 1.000000e+00, %106, !dbg !2477
  %108 = fmul double %103, %107, !dbg !2478
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2479
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !2480
  store double %108, double* %110, align 8, !dbg !2481
  %111 = load double, double* %12, align 8, !dbg !2482
  %112 = fmul double %111, 3.000000e+00, !dbg !2483
  %113 = fmul double %112, 0x3CB0000000000000, !dbg !2484
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2485
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !2486
  %116 = load double, double* %115, align 8, !dbg !2486
  %117 = call double @fabs(double %116) #1, !dbg !2487
  %118 = fmul double %113, %117, !dbg !2488
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2489
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 1, !dbg !2490
  store double %118, double* %120, align 8, !dbg !2491
  store i32 0, i32* %4, align 4, !dbg !2492
  br label %661, !dbg !2492

; <label>:121:                                    ; preds = %89
  call void @llvm.dbg.declare(metadata double* %13, metadata !2493, metadata !60), !dbg !2495
  %122 = load double, double* %6, align 8, !dbg !2496
  %123 = call double @acos(double %122) #6, !dbg !2497
  store double %123, double* %13, align 8, !dbg !2495
  call void @llvm.dbg.declare(metadata double* %14, metadata !2498, metadata !60), !dbg !2499
  %124 = load double, double* %13, align 8, !dbg !2500
  %125 = fmul double 5.000000e-01, %124, !dbg !2501
  %126 = call double @sin(double %125) #6, !dbg !2502
  store double %126, double* %14, align 8, !dbg !2499
  call void @llvm.dbg.declare(metadata double* %15, metadata !2503, metadata !60), !dbg !2504
  %127 = load double, double* %14, align 8, !dbg !2505
  %128 = load double, double* %14, align 8, !dbg !2506
  %129 = fmul double %127, %128, !dbg !2507
  %130 = fsub double 1.000000e+00, %129, !dbg !2508
  store double %130, double* %15, align 8, !dbg !2504
  call void @llvm.dbg.declare(metadata double* %16, metadata !2509, metadata !60), !dbg !2510
  %131 = load double, double* %13, align 8, !dbg !2511
  %132 = call double @sin(double %131) #6, !dbg !2512
  store double %132, double* %16, align 8, !dbg !2510
  call void @llvm.dbg.declare(metadata double* %17, metadata !2513, metadata !60), !dbg !2514
  %133 = load double, double* %16, align 8, !dbg !2515
  %134 = fmul double 0x400921FB54442D18, %133, !dbg !2516
  %135 = fdiv double 2.000000e+00, %134, !dbg !2517
  store double %135, double* %17, align 8, !dbg !2514
  %136 = load double, double* %14, align 8, !dbg !2518
  %137 = call i32 @gsl_sf_ellint_Kcomp_e(double %136, i32 0, %struct.gsl_sf_result_struct* %8), !dbg !2519
  store i32 %137, i32* %10, align 4, !dbg !2520
  %138 = load double, double* %14, align 8, !dbg !2521
  %139 = call i32 @gsl_sf_ellint_Ecomp_e(double %138, i32 0, %struct.gsl_sf_result_struct* %9), !dbg !2522
  store i32 %139, i32* %11, align 4, !dbg !2523
  %140 = load double, double* %17, align 8, !dbg !2524
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !2525
  %142 = load double, double* %141, align 8, !dbg !2525
  %143 = load double, double* %15, align 8, !dbg !2526
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2527
  %145 = load double, double* %144, align 8, !dbg !2527
  %146 = fmul double %143, %145, !dbg !2528
  %147 = fsub double %142, %146, !dbg !2529
  %148 = fmul double %140, %147, !dbg !2530
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2531
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 0, !dbg !2532
  store double %148, double* %150, align 8, !dbg !2533
  %151 = load double, double* %17, align 8, !dbg !2534
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !2535
  %153 = load double, double* %152, align 8, !dbg !2535
  %154 = load double, double* %15, align 8, !dbg !2536
  %155 = call double @fabs(double %154) #1, !dbg !2537
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !2538
  %157 = load double, double* %156, align 8, !dbg !2538
  %158 = fmul double %155, %157, !dbg !2539
  %159 = fadd double %153, %158, !dbg !2540
  %160 = fmul double %151, %159, !dbg !2541
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2542
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 1, !dbg !2543
  store double %160, double* %162, align 8, !dbg !2544
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2545
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 0, !dbg !2546
  %165 = load double, double* %164, align 8, !dbg !2546
  %166 = call double @fabs(double %165) #1, !dbg !2547
  %167 = fmul double 0x3CC0000000000000, %166, !dbg !2548
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2549
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 1, !dbg !2550
  %170 = load double, double* %169, align 8, !dbg !2551
  %171 = fadd double %170, %167, !dbg !2551
  store double %171, double* %169, align 8, !dbg !2551
  %172 = load i32, i32* %10, align 4, !dbg !2552
  %173 = icmp ne i32 %172, 0, !dbg !2552
  br i1 %173, label %174, label %176, !dbg !2552

; <label>:174:                                    ; preds = %121
  %175 = load i32, i32* %10, align 4, !dbg !2553
  br label %184, !dbg !2553

; <label>:176:                                    ; preds = %121
  %177 = load i32, i32* %11, align 4, !dbg !2555
  %178 = icmp ne i32 %177, 0, !dbg !2555
  br i1 %178, label %179, label %181, !dbg !2555

; <label>:179:                                    ; preds = %176
  %180 = load i32, i32* %11, align 4, !dbg !2557
  br label %182, !dbg !2557

; <label>:181:                                    ; preds = %176
  br label %182, !dbg !2559

; <label>:182:                                    ; preds = %181, %179
  %183 = phi i32 [ %180, %179 ], [ 0, %181 ], !dbg !2561
  br label %184, !dbg !2561

; <label>:184:                                    ; preds = %182, %174
  %185 = phi i32 [ %175, %174 ], [ %183, %182 ], !dbg !2563
  store i32 %185, i32* %4, align 4, !dbg !2565
  br label %661, !dbg !2565

; <label>:186:                                    ; preds = %86
  %187 = load double, double* %6, align 8, !dbg !2566
  %188 = fsub double %187, 1.000000e+00, !dbg !2569
  %189 = fcmp olt double %188, 0x3E50000000000000, !dbg !2570
  br i1 %189, label %190, label %218, !dbg !2571

; <label>:190:                                    ; preds = %186
  call void @llvm.dbg.declare(metadata double* %18, metadata !2572, metadata !60), !dbg !2574
  %191 = load double, double* %6, align 8, !dbg !2575
  %192 = fsub double 1.000000e+00, %191, !dbg !2576
  %193 = call double @fabs(double %192) #1, !dbg !2577
  %194 = fadd double 0x3CB0000000000000, %193, !dbg !2578
  %195 = fdiv double 1.000000e+00, %194, !dbg !2579
  %196 = call double @GSL_MAX_DBL(double 1.000000e+00, double %195), !dbg !2580
  store double %196, double* %18, align 8, !dbg !2574
  %197 = load double, double* %6, align 8, !dbg !2582
  %198 = fsub double %197, 1.000000e+00, !dbg !2583
  %199 = call double @sqrt(double %198) #6, !dbg !2584
  %200 = fmul double 0xBFC6A09E667F3BCC, %199, !dbg !2585
  %201 = load double, double* %6, align 8, !dbg !2586
  %202 = fsub double %201, 1.000000e+00, !dbg !2587
  %203 = fmul double 3.125000e-01, %202, !dbg !2588
  %204 = fsub double 1.000000e+00, %203, !dbg !2589
  %205 = fmul double %200, %204, !dbg !2590
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2591
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %206, i32 0, i32 0, !dbg !2592
  store double %205, double* %207, align 8, !dbg !2593
  %208 = load double, double* %18, align 8, !dbg !2594
  %209 = fmul double %208, 3.000000e+00, !dbg !2595
  %210 = fmul double %209, 0x3CB0000000000000, !dbg !2596
  %211 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2597
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %211, i32 0, i32 0, !dbg !2598
  %213 = load double, double* %212, align 8, !dbg !2598
  %214 = call double @fabs(double %213) #1, !dbg !2599
  %215 = fmul double %210, %214, !dbg !2600
  %216 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2601
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %216, i32 0, i32 1, !dbg !2602
  store double %215, double* %217, align 8, !dbg !2603
  store i32 0, i32* %4, align 4, !dbg !2604
  br label %661, !dbg !2604

; <label>:218:                                    ; preds = %186
  call void @llvm.dbg.declare(metadata double* %19, metadata !2605, metadata !60), !dbg !2607
  %219 = load double, double* %6, align 8, !dbg !2608
  %220 = call double @acosh(double %219) #6, !dbg !2609
  store double %220, double* %19, align 8, !dbg !2607
  call void @llvm.dbg.declare(metadata double* %20, metadata !2610, metadata !60), !dbg !2611
  %221 = load double, double* %19, align 8, !dbg !2612
  %222 = fmul double 5.000000e-01, %221, !dbg !2613
  %223 = call double @cosh(double %222) #6, !dbg !2614
  store double %223, double* %20, align 8, !dbg !2611
  call void @llvm.dbg.declare(metadata double* %21, metadata !2615, metadata !60), !dbg !2616
  %224 = load double, double* %19, align 8, !dbg !2617
  %225 = fmul double 5.000000e-01, %224, !dbg !2618
  %226 = call double @tanh(double %225) #6, !dbg !2619
  store double %226, double* %21, align 8, !dbg !2616
  call void @llvm.dbg.declare(metadata double* %22, metadata !2620, metadata !60), !dbg !2621
  %227 = load double, double* %19, align 8, !dbg !2622
  %228 = call double @sinh(double %227) #6, !dbg !2623
  store double %228, double* %22, align 8, !dbg !2621
  call void @llvm.dbg.declare(metadata double* %23, metadata !2624, metadata !60), !dbg !2625
  %229 = load double, double* %22, align 8, !dbg !2626
  %230 = fmul double 0x400921FB54442D18, %229, !dbg !2627
  %231 = fdiv double 2.000000e+00, %230, !dbg !2628
  %232 = load double, double* %20, align 8, !dbg !2629
  %233 = fmul double %231, %232, !dbg !2630
  store double %233, double* %23, align 8, !dbg !2625
  %234 = load double, double* %21, align 8, !dbg !2631
  %235 = call i32 @gsl_sf_ellint_Kcomp_e(double %234, i32 0, %struct.gsl_sf_result_struct* %8), !dbg !2632
  store i32 %235, i32* %10, align 4, !dbg !2633
  %236 = load double, double* %21, align 8, !dbg !2634
  %237 = call i32 @gsl_sf_ellint_Ecomp_e(double %236, i32 0, %struct.gsl_sf_result_struct* %9), !dbg !2635
  store i32 %237, i32* %11, align 4, !dbg !2636
  %238 = load double, double* %23, align 8, !dbg !2637
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !2638
  %240 = load double, double* %239, align 8, !dbg !2638
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2639
  %242 = load double, double* %241, align 8, !dbg !2639
  %243 = fsub double %240, %242, !dbg !2640
  %244 = fmul double %238, %243, !dbg !2641
  %245 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2642
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %245, i32 0, i32 0, !dbg !2643
  store double %244, double* %246, align 8, !dbg !2644
  %247 = load double, double* %23, align 8, !dbg !2645
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !2646
  %249 = load double, double* %248, align 8, !dbg !2646
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !2647
  %251 = load double, double* %250, align 8, !dbg !2647
  %252 = fadd double %249, %251, !dbg !2648
  %253 = fmul double %247, %252, !dbg !2649
  %254 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2650
  %255 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %254, i32 0, i32 1, !dbg !2651
  store double %253, double* %255, align 8, !dbg !2652
  %256 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2653
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %256, i32 0, i32 0, !dbg !2654
  %258 = load double, double* %257, align 8, !dbg !2654
  %259 = call double @fabs(double %258) #1, !dbg !2655
  %260 = fmul double 0x3CC0000000000000, %259, !dbg !2656
  %261 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2657
  %262 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %261, i32 0, i32 1, !dbg !2658
  %263 = load double, double* %262, align 8, !dbg !2659
  %264 = fadd double %263, %260, !dbg !2659
  store double %264, double* %262, align 8, !dbg !2659
  %265 = load i32, i32* %10, align 4, !dbg !2660
  %266 = icmp ne i32 %265, 0, !dbg !2660
  br i1 %266, label %267, label %269, !dbg !2660

; <label>:267:                                    ; preds = %218
  %268 = load i32, i32* %10, align 4, !dbg !2661
  br label %277, !dbg !2661

; <label>:269:                                    ; preds = %218
  %270 = load i32, i32* %11, align 4, !dbg !2663
  %271 = icmp ne i32 %270, 0, !dbg !2663
  br i1 %271, label %272, label %274, !dbg !2663

; <label>:272:                                    ; preds = %269
  %273 = load i32, i32* %11, align 4, !dbg !2665
  br label %275, !dbg !2665

; <label>:274:                                    ; preds = %269
  br label %275, !dbg !2667

; <label>:275:                                    ; preds = %274, %272
  %276 = phi i32 [ %273, %272 ], [ 0, %274 ], !dbg !2669
  br label %277, !dbg !2669

; <label>:277:                                    ; preds = %275, %267
  %278 = phi i32 [ %268, %267 ], [ %276, %275 ], !dbg !2671
  store i32 %278, i32* %4, align 4, !dbg !2673
  br label %661, !dbg !2673

; <label>:279:                                    ; preds = %75
  %280 = load double, double* %6, align 8, !dbg !2674
  %281 = fcmp ole double %280, 0.000000e+00, !dbg !2676
  br i1 %281, label %282, label %285, !dbg !2677

; <label>:282:                                    ; preds = %279
  %283 = load double, double* %5, align 8, !dbg !2678
  %284 = fcmp olt double %283, 1.000000e+03, !dbg !2680
  br i1 %284, label %297, label %285, !dbg !2681

; <label>:285:                                    ; preds = %282, %279
  %286 = load double, double* %6, align 8, !dbg !2682
  %287 = fcmp olt double %286, 1.000000e-01, !dbg !2683
  br i1 %287, label %288, label %291, !dbg !2684

; <label>:288:                                    ; preds = %285
  %289 = load double, double* %5, align 8, !dbg !2685
  %290 = fcmp olt double %289, 1.700000e+01, !dbg !2687
  br i1 %290, label %297, label %291, !dbg !2688

; <label>:291:                                    ; preds = %288, %285
  %292 = load double, double* %6, align 8, !dbg !2689
  %293 = fcmp olt double %292, 2.000000e-01, !dbg !2690
  br i1 %293, label %294, label %302, !dbg !2691

; <label>:294:                                    ; preds = %291
  %295 = load double, double* %5, align 8, !dbg !2692
  %296 = fcmp olt double %295, 5.000000e+00, !dbg !2693
  br i1 %296, label %297, label %302, !dbg !2694

; <label>:297:                                    ; preds = %294, %288, %282
  %298 = load double, double* %5, align 8, !dbg !2696
  %299 = load double, double* %6, align 8, !dbg !2698
  %300 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2699
  %301 = call i32 @conicalP_xlt1_hyperg_A(double 1.000000e+00, double %298, double %299, %struct.gsl_sf_result_struct* %300), !dbg !2700
  store i32 %301, i32* %4, align 4, !dbg !2701
  br label %661, !dbg !2701

; <label>:302:                                    ; preds = %294, %291
  %303 = load double, double* %6, align 8, !dbg !2702
  %304 = fcmp ole double %303, 2.000000e-01, !dbg !2704
  br i1 %304, label %305, label %308, !dbg !2705

; <label>:305:                                    ; preds = %302
  %306 = load double, double* %5, align 8, !dbg !2706
  %307 = fcmp olt double %306, 1.700000e+01, !dbg !2708
  br i1 %307, label %314, label %308, !dbg !2709

; <label>:308:                                    ; preds = %305, %302
  %309 = load double, double* %6, align 8, !dbg !2710
  %310 = fcmp olt double %309, 1.500000e+00, !dbg !2711
  br i1 %310, label %311, label %363, !dbg !2712

; <label>:311:                                    ; preds = %308
  %312 = load double, double* %5, align 8, !dbg !2713
  %313 = fcmp olt double %312, 2.000000e+01, !dbg !2715
  br i1 %313, label %314, label %363, !dbg !2716

; <label>:314:                                    ; preds = %311, %305
  call void @llvm.dbg.declare(metadata double* %24, metadata !2717, metadata !60), !dbg !2719
  %315 = load double, double* %6, align 8, !dbg !2720
  %316 = load double, double* %6, align 8, !dbg !2721
  %317 = fmul double %315, %316, !dbg !2722
  %318 = fsub double %317, 1.000000e+00, !dbg !2723
  %319 = call double @fabs(double %318) #1, !dbg !2724
  store double %319, double* %24, align 8, !dbg !2719
  call void @llvm.dbg.declare(metadata double* %25, metadata !2725, metadata !60), !dbg !2726
  %320 = load double, double* %6, align 8, !dbg !2727
  %321 = fsub double 1.000000e+00, %320, !dbg !2727
  %322 = fcmp oge double %321, 0.000000e+00, !dbg !2727
  %323 = select i1 %322, i32 1, i32 -1, !dbg !2727
  %324 = sitofp i32 %323 to double, !dbg !2727
  store double %324, double* %25, align 8, !dbg !2726
  call void @llvm.dbg.declare(metadata double* %26, metadata !2728, metadata !60), !dbg !2729
  %325 = load double, double* %5, align 8, !dbg !2730
  %326 = load double, double* %5, align 8, !dbg !2731
  %327 = fmul double %325, %326, !dbg !2732
  %328 = fadd double %327, 2.500000e-01, !dbg !2733
  %329 = fmul double 5.000000e-01, %328, !dbg !2734
  %330 = load double, double* %25, align 8, !dbg !2735
  %331 = fmul double %329, %330, !dbg !2736
  %332 = load double, double* %24, align 8, !dbg !2737
  %333 = call double @sqrt(double %332) #6, !dbg !2738
  %334 = fmul double %331, %333, !dbg !2739
  store double %334, double* %26, align 8, !dbg !2729
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !2740, metadata !60), !dbg !2741
  call void @llvm.dbg.declare(metadata i32* %28, metadata !2742, metadata !60), !dbg !2743
  %335 = load double, double* %5, align 8, !dbg !2744
  %336 = load double, double* %6, align 8, !dbg !2745
  %337 = fsub double 1.000000e+00, %336, !dbg !2746
  %338 = fdiv double %337, 2.000000e+00, !dbg !2747
  %339 = call i32 @gsl_sf_hyperg_2F1_conj_e(double 1.500000e+00, double %335, double 2.000000e+00, double %338, %struct.gsl_sf_result_struct* %27), !dbg !2748
  store i32 %339, i32* %28, align 4, !dbg !2743
  %340 = load double, double* %26, align 8, !dbg !2749
  %341 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !2750
  %342 = load double, double* %341, align 8, !dbg !2750
  %343 = fmul double %340, %342, !dbg !2751
  %344 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2752
  %345 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %344, i32 0, i32 0, !dbg !2753
  store double %343, double* %345, align 8, !dbg !2754
  %346 = load double, double* %26, align 8, !dbg !2755
  %347 = call double @fabs(double %346) #1, !dbg !2756
  %348 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !2757
  %349 = load double, double* %348, align 8, !dbg !2757
  %350 = fmul double %347, %349, !dbg !2758
  %351 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2759
  %352 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %351, i32 0, i32 1, !dbg !2760
  store double %350, double* %352, align 8, !dbg !2761
  %353 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2762
  %354 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %353, i32 0, i32 0, !dbg !2763
  %355 = load double, double* %354, align 8, !dbg !2763
  %356 = call double @fabs(double %355) #1, !dbg !2764
  %357 = fmul double 0x3CC0000000000000, %356, !dbg !2765
  %358 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2766
  %359 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %358, i32 0, i32 1, !dbg !2767
  %360 = load double, double* %359, align 8, !dbg !2768
  %361 = fadd double %360, %357, !dbg !2768
  store double %361, double* %359, align 8, !dbg !2768
  %362 = load i32, i32* %28, align 4, !dbg !2769
  store i32 %362, i32* %4, align 4, !dbg !2770
  br label %661, !dbg !2770

; <label>:363:                                    ; preds = %311, %308
  %364 = load double, double* %6, align 8, !dbg !2771
  %365 = fcmp ole double 1.500000e+00, %364, !dbg !2773
  br i1 %365, label %366, label %404, !dbg !2774

; <label>:366:                                    ; preds = %363
  %367 = load double, double* %5, align 8, !dbg !2775
  %368 = load double, double* %6, align 8, !dbg !2777
  %369 = fcmp ogt double %368, 2.000000e+01, !dbg !2777
  br i1 %369, label %370, label %372, !dbg !2777

; <label>:370:                                    ; preds = %366
  %371 = load double, double* %6, align 8, !dbg !2778
  br label %373, !dbg !2778

; <label>:372:                                    ; preds = %366
  br label %373, !dbg !2780

; <label>:373:                                    ; preds = %372, %370
  %374 = phi double [ %371, %370 ], [ 2.000000e+01, %372 ], !dbg !2782
  %375 = fcmp olt double %367, %374, !dbg !2784
  br i1 %375, label %376, label %404, !dbg !2785

; <label>:376:                                    ; preds = %373
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !2786, metadata !60), !dbg !2788
  call void @llvm.dbg.declare(metadata double* %30, metadata !2789, metadata !60), !dbg !2790
  call void @llvm.dbg.declare(metadata i32* %31, metadata !2791, metadata !60), !dbg !2792
  %377 = load double, double* %5, align 8, !dbg !2793
  %378 = load double, double* %6, align 8, !dbg !2794
  %379 = call i32 @gsl_sf_conicalP_large_x_e(double 1.000000e+00, double %377, double %378, %struct.gsl_sf_result_struct* %29, double* %30), !dbg !2795
  store i32 %379, i32* %31, align 4, !dbg !2792
  call void @llvm.dbg.declare(metadata i32* %32, metadata !2796, metadata !60), !dbg !2797
  %380 = load double, double* %30, align 8, !dbg !2798
  %381 = load double, double* %30, align 8, !dbg !2799
  %382 = call double @fabs(double %381) #1, !dbg !2800
  %383 = fmul double 0x3CC0000000000000, %382, !dbg !2801
  %384 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !2802
  %385 = load double, double* %384, align 8, !dbg !2802
  %386 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !2803
  %387 = load double, double* %386, align 8, !dbg !2803
  %388 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2804
  %389 = call i32 @gsl_sf_exp_mult_err_e(double %380, double %383, double %385, double %387, %struct.gsl_sf_result_struct* %388), !dbg !2805
  store i32 %389, i32* %32, align 4, !dbg !2797
  %390 = load i32, i32* %32, align 4, !dbg !2807
  %391 = icmp ne i32 %390, 0, !dbg !2807
  br i1 %391, label %392, label %394, !dbg !2807

; <label>:392:                                    ; preds = %376
  %393 = load i32, i32* %32, align 4, !dbg !2808
  br label %402, !dbg !2808

; <label>:394:                                    ; preds = %376
  %395 = load i32, i32* %31, align 4, !dbg !2809
  %396 = icmp ne i32 %395, 0, !dbg !2809
  br i1 %396, label %397, label %399, !dbg !2809

; <label>:397:                                    ; preds = %394
  %398 = load i32, i32* %31, align 4, !dbg !2811
  br label %400, !dbg !2811

; <label>:399:                                    ; preds = %394
  br label %400, !dbg !2813

; <label>:400:                                    ; preds = %399, %397
  %401 = phi i32 [ %398, %397 ], [ 0, %399 ], !dbg !2815
  br label %402, !dbg !2815

; <label>:402:                                    ; preds = %400, %392
  %403 = phi i32 [ %393, %392 ], [ %401, %400 ], !dbg !2817
  store i32 %403, i32* %4, align 4, !dbg !2819
  br label %661, !dbg !2819

; <label>:404:                                    ; preds = %373, %363
  call void @llvm.dbg.declare(metadata double* %33, metadata !2820, metadata !60), !dbg !2822
  call void @llvm.dbg.declare(metadata double* %34, metadata !2823, metadata !60), !dbg !2824
  %405 = load double, double* %6, align 8, !dbg !2825
  %406 = fcmp olt double %405, 1.000000e+00, !dbg !2827
  br i1 %406, label %407, label %527, !dbg !2828

; <label>:407:                                    ; preds = %404
  call void @llvm.dbg.declare(metadata double* %35, metadata !2829, metadata !60), !dbg !2831
  %408 = load double, double* %6, align 8, !dbg !2832
  %409 = fsub double 1.000000e+00, %408, !dbg !2833
  %410 = call double @sqrt(double %409) #6, !dbg !2834
  store double %410, double* %35, align 8, !dbg !2831
  call void @llvm.dbg.declare(metadata double* %36, metadata !2835, metadata !60), !dbg !2836
  %411 = load double, double* %6, align 8, !dbg !2837
  %412 = fadd double 1.000000e+00, %411, !dbg !2838
  %413 = call double @sqrt(double %412) #6, !dbg !2839
  store double %413, double* %36, align 8, !dbg !2836
  call void @llvm.dbg.declare(metadata double* %37, metadata !2840, metadata !60), !dbg !2841
  %414 = load double, double* %6, align 8, !dbg !2842
  %415 = call double @acos(double %414) #6, !dbg !2843
  store double %415, double* %37, align 8, !dbg !2841
  call void @llvm.dbg.declare(metadata double* %38, metadata !2844, metadata !60), !dbg !2845
  %416 = load double, double* %35, align 8, !dbg !2846
  %417 = load double, double* %36, align 8, !dbg !2847
  %418 = fmul double %416, %417, !dbg !2848
  store double %418, double* %38, align 8, !dbg !2845
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %39, metadata !2849, metadata !60), !dbg !2850
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %40, metadata !2851, metadata !60), !dbg !2852
  call void @llvm.dbg.declare(metadata i32* %41, metadata !2853, metadata !60), !dbg !2854
  %419 = load double, double* %37, align 8, !dbg !2855
  %420 = load double, double* %5, align 8, !dbg !2856
  %421 = fmul double %419, %420, !dbg !2857
  %422 = call i32 @gsl_sf_bessel_I0_scaled_e(double %421, %struct.gsl_sf_result_struct* %39), !dbg !2858
  store i32 %422, i32* %41, align 4, !dbg !2854
  call void @llvm.dbg.declare(metadata i32* %42, metadata !2859, metadata !60), !dbg !2860
  %423 = load double, double* %37, align 8, !dbg !2861
  %424 = load double, double* %5, align 8, !dbg !2862
  %425 = fmul double %423, %424, !dbg !2863
  %426 = call i32 @gsl_sf_bessel_I1_scaled_e(double %425, %struct.gsl_sf_result_struct* %40), !dbg !2864
  store i32 %426, i32* %42, align 4, !dbg !2860
  call void @llvm.dbg.declare(metadata i32* %43, metadata !2865, metadata !60), !dbg !2866
  %427 = load i32, i32* %41, align 4, !dbg !2867
  %428 = icmp ne i32 %427, 0, !dbg !2867
  br i1 %428, label %429, label %431, !dbg !2867

; <label>:429:                                    ; preds = %407
  %430 = load i32, i32* %41, align 4, !dbg !2868
  br label %439, !dbg !2868

; <label>:431:                                    ; preds = %407
  %432 = load i32, i32* %42, align 4, !dbg !2870
  %433 = icmp ne i32 %432, 0, !dbg !2870
  br i1 %433, label %434, label %436, !dbg !2870

; <label>:434:                                    ; preds = %431
  %435 = load i32, i32* %42, align 4, !dbg !2872
  br label %437, !dbg !2872

; <label>:436:                                    ; preds = %431
  br label %437, !dbg !2874

; <label>:437:                                    ; preds = %436, %434
  %438 = phi i32 [ %435, %434 ], [ 0, %436 ], !dbg !2876
  br label %439, !dbg !2876

; <label>:439:                                    ; preds = %437, %429
  %440 = phi i32 [ %430, %429 ], [ %438, %437 ], !dbg !2878
  store i32 %440, i32* %43, align 4, !dbg !2880
  call void @llvm.dbg.declare(metadata i32* %44, metadata !2881, metadata !60), !dbg !2882
  %441 = load double, double* %37, align 8, !dbg !2883
  %442 = load double, double* %6, align 8, !dbg !2884
  %443 = load double, double* %38, align 8, !dbg !2885
  %444 = fdiv double %442, %443, !dbg !2886
  %445 = load double, double* %5, align 8, !dbg !2887
  %446 = call i32 @conicalP_1_V(double %441, double %444, double %445, double -1.000000e+00, double* %33, double* %34), !dbg !2888
  store i32 %446, i32* %44, align 4, !dbg !2882
  call void @llvm.dbg.declare(metadata double* %45, metadata !2889, metadata !60), !dbg !2890
  %447 = load double, double* %33, align 8, !dbg !2891
  %448 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !2892
  %449 = load double, double* %448, align 8, !dbg !2892
  %450 = fmul double %447, %449, !dbg !2893
  %451 = load double, double* %34, align 8, !dbg !2894
  %452 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !2895
  %453 = load double, double* %452, align 8, !dbg !2895
  %454 = fmul double %451, %453, !dbg !2896
  %455 = fadd double %450, %454, !dbg !2897
  store double %455, double* %45, align 8, !dbg !2890
  call void @llvm.dbg.declare(metadata double* %46, metadata !2898, metadata !60), !dbg !2899
  %456 = load double, double* %33, align 8, !dbg !2900
  %457 = call double @fabs(double %456) #1, !dbg !2901
  %458 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !2902
  %459 = load double, double* %458, align 8, !dbg !2902
  %460 = fmul double %457, %459, !dbg !2903
  %461 = load double, double* %34, align 8, !dbg !2904
  %462 = call double @fabs(double %461) #1, !dbg !2905
  %463 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !2906
  %464 = load double, double* %463, align 8, !dbg !2906
  %465 = fmul double %462, %464, !dbg !2907
  %466 = fadd double %460, %465, !dbg !2908
  %467 = load double, double* %33, align 8, !dbg !2909
  %468 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !2910
  %469 = load double, double* %468, align 8, !dbg !2910
  %470 = fmul double %467, %469, !dbg !2911
  %471 = call double @fabs(double %470) #1, !dbg !2912
  %472 = fmul double 0x3CC0000000000000, %471, !dbg !2913
  %473 = fadd double %466, %472, !dbg !2914
  %474 = load double, double* %34, align 8, !dbg !2915
  %475 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !2916
  %476 = load double, double* %475, align 8, !dbg !2916
  %477 = fmul double %474, %476, !dbg !2917
  %478 = call double @fabs(double %477) #1, !dbg !2918
  %479 = fmul double 0x3CC0000000000000, %478, !dbg !2919
  %480 = fadd double %473, %479, !dbg !2920
  store double %480, double* %46, align 8, !dbg !2899
  call void @llvm.dbg.declare(metadata double* %47, metadata !2921, metadata !60), !dbg !2922
  %481 = load double, double* %37, align 8, !dbg !2923
  %482 = load double, double* %5, align 8, !dbg !2924
  %483 = fmul double %481, %482, !dbg !2925
  store double %483, double* %47, align 8, !dbg !2922
  call void @llvm.dbg.declare(metadata double* %48, metadata !2926, metadata !60), !dbg !2927
  %484 = load double, double* %37, align 8, !dbg !2928
  %485 = load double, double* %38, align 8, !dbg !2929
  %486 = fdiv double %484, %485, !dbg !2930
  %487 = call double @sqrt(double %486) #6, !dbg !2931
  store double %487, double* %48, align 8, !dbg !2927
  call void @llvm.dbg.declare(metadata i32* %49, metadata !2932, metadata !60), !dbg !2933
  %488 = load double, double* %47, align 8, !dbg !2934
  %489 = load double, double* %47, align 8, !dbg !2935
  %490 = call double @fabs(double %489) #1, !dbg !2936
  %491 = fmul double 0x3CC0000000000000, %490, !dbg !2937
  %492 = load double, double* %48, align 8, !dbg !2938
  %493 = load double, double* %45, align 8, !dbg !2939
  %494 = fmul double %492, %493, !dbg !2940
  %495 = load double, double* %48, align 8, !dbg !2941
  %496 = load double, double* %46, align 8, !dbg !2942
  %497 = fmul double %495, %496, !dbg !2943
  %498 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2944
  %499 = call i32 @gsl_sf_exp_mult_err_e(double %488, double %491, double %494, double %497, %struct.gsl_sf_result_struct* %498), !dbg !2945
  store i32 %499, i32* %49, align 4, !dbg !2933
  %500 = load double, double* %35, align 8, !dbg !2946
  %501 = fdiv double 1.000000e+00, %500, !dbg !2947
  %502 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2948
  %503 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %502, i32 0, i32 1, !dbg !2949
  %504 = load double, double* %503, align 8, !dbg !2950
  %505 = fmul double %504, %501, !dbg !2950
  store double %505, double* %503, align 8, !dbg !2950
  %506 = load i32, i32* %49, align 4, !dbg !2951
  %507 = icmp ne i32 %506, 0, !dbg !2951
  br i1 %507, label %508, label %510, !dbg !2951

; <label>:508:                                    ; preds = %439
  %509 = load i32, i32* %49, align 4, !dbg !2952
  br label %525, !dbg !2952

; <label>:510:                                    ; preds = %439
  %511 = load i32, i32* %44, align 4, !dbg !2953
  %512 = icmp ne i32 %511, 0, !dbg !2953
  br i1 %512, label %513, label %515, !dbg !2953

; <label>:513:                                    ; preds = %510
  %514 = load i32, i32* %44, align 4, !dbg !2954
  br label %523, !dbg !2954

; <label>:515:                                    ; preds = %510
  %516 = load i32, i32* %43, align 4, !dbg !2955
  %517 = icmp ne i32 %516, 0, !dbg !2955
  br i1 %517, label %518, label %520, !dbg !2955

; <label>:518:                                    ; preds = %515
  %519 = load i32, i32* %43, align 4, !dbg !2956
  br label %521, !dbg !2956

; <label>:520:                                    ; preds = %515
  br label %521, !dbg !2957

; <label>:521:                                    ; preds = %520, %518
  %522 = phi i32 [ %519, %518 ], [ 0, %520 ], !dbg !2958
  br label %523, !dbg !2958

; <label>:523:                                    ; preds = %521, %513
  %524 = phi i32 [ %514, %513 ], [ %522, %521 ], !dbg !2960
  br label %525, !dbg !2960

; <label>:525:                                    ; preds = %523, %508
  %526 = phi i32 [ %509, %508 ], [ %524, %523 ], !dbg !2962
  store i32 %526, i32* %4, align 4, !dbg !2964
  br label %661, !dbg !2964

; <label>:527:                                    ; preds = %404
  call void @llvm.dbg.declare(metadata double* %50, metadata !2965, metadata !60), !dbg !2967
  %528 = load double, double* %6, align 8, !dbg !2968
  %529 = fsub double %528, 1.000000e+00, !dbg !2969
  %530 = call double @sqrt(double %529) #6, !dbg !2970
  store double %530, double* %50, align 8, !dbg !2967
  call void @llvm.dbg.declare(metadata double* %51, metadata !2971, metadata !60), !dbg !2972
  %531 = load double, double* %6, align 8, !dbg !2973
  %532 = fadd double %531, 1.000000e+00, !dbg !2974
  %533 = call double @sqrt(double %532) #6, !dbg !2975
  store double %533, double* %51, align 8, !dbg !2972
  call void @llvm.dbg.declare(metadata double* %52, metadata !2976, metadata !60), !dbg !2977
  %534 = load double, double* %50, align 8, !dbg !2978
  %535 = load double, double* %51, align 8, !dbg !2979
  %536 = fmul double %534, %535, !dbg !2980
  store double %536, double* %52, align 8, !dbg !2977
  call void @llvm.dbg.declare(metadata double* %53, metadata !2981, metadata !60), !dbg !2982
  %537 = load double, double* %6, align 8, !dbg !2983
  %538 = load double, double* %52, align 8, !dbg !2984
  %539 = fadd double %537, %538, !dbg !2985
  %540 = call double @log(double %539) #6, !dbg !2986
  store double %540, double* %53, align 8, !dbg !2982
  call void @llvm.dbg.declare(metadata double* %54, metadata !2987, metadata !60), !dbg !2988
  %541 = load double, double* %53, align 8, !dbg !2989
  %542 = load double, double* %5, align 8, !dbg !2990
  %543 = fmul double %541, %542, !dbg !2991
  store double %543, double* %54, align 8, !dbg !2988
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %55, metadata !2992, metadata !60), !dbg !2993
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %56, metadata !2994, metadata !60), !dbg !2995
  call void @llvm.dbg.declare(metadata i32* %57, metadata !2996, metadata !60), !dbg !2997
  %544 = load double, double* %54, align 8, !dbg !2998
  %545 = call i32 @gsl_sf_bessel_J0_e(double %544, %struct.gsl_sf_result_struct* %55), !dbg !2999
  store i32 %545, i32* %57, align 4, !dbg !2997
  call void @llvm.dbg.declare(metadata i32* %58, metadata !3000, metadata !60), !dbg !3001
  %546 = load double, double* %54, align 8, !dbg !3002
  %547 = call i32 @gsl_sf_bessel_J1_e(double %546, %struct.gsl_sf_result_struct* %56), !dbg !3003
  store i32 %547, i32* %58, align 4, !dbg !3001
  call void @llvm.dbg.declare(metadata i32* %59, metadata !3004, metadata !60), !dbg !3005
  %548 = load i32, i32* %57, align 4, !dbg !3006
  %549 = icmp ne i32 %548, 0, !dbg !3006
  br i1 %549, label %550, label %552, !dbg !3006

; <label>:550:                                    ; preds = %527
  %551 = load i32, i32* %57, align 4, !dbg !3007
  br label %560, !dbg !3007

; <label>:552:                                    ; preds = %527
  %553 = load i32, i32* %58, align 4, !dbg !3009
  %554 = icmp ne i32 %553, 0, !dbg !3009
  br i1 %554, label %555, label %557, !dbg !3009

; <label>:555:                                    ; preds = %552
  %556 = load i32, i32* %58, align 4, !dbg !3011
  br label %558, !dbg !3011

; <label>:557:                                    ; preds = %552
  br label %558, !dbg !3013

; <label>:558:                                    ; preds = %557, %555
  %559 = phi i32 [ %556, %555 ], [ 0, %557 ], !dbg !3015
  br label %560, !dbg !3015

; <label>:560:                                    ; preds = %558, %550
  %561 = phi i32 [ %551, %550 ], [ %559, %558 ], !dbg !3017
  store i32 %561, i32* %59, align 4, !dbg !3019
  call void @llvm.dbg.declare(metadata i32* %60, metadata !3020, metadata !60), !dbg !3021
  %562 = load double, double* %53, align 8, !dbg !3022
  %563 = load double, double* %6, align 8, !dbg !3023
  %564 = load double, double* %52, align 8, !dbg !3024
  %565 = fdiv double %563, %564, !dbg !3025
  %566 = load double, double* %5, align 8, !dbg !3026
  %567 = call i32 @conicalP_1_V(double %562, double %565, double %566, double 1.000000e+00, double* %33, double* %34), !dbg !3027
  store i32 %567, i32* %60, align 4, !dbg !3021
  call void @llvm.dbg.declare(metadata double* %61, metadata !3028, metadata !60), !dbg !3029
  %568 = load double, double* %33, align 8, !dbg !3030
  %569 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !3031
  %570 = load double, double* %569, align 8, !dbg !3031
  %571 = fmul double %568, %570, !dbg !3032
  %572 = load double, double* %34, align 8, !dbg !3033
  %573 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !3034
  %574 = load double, double* %573, align 8, !dbg !3034
  %575 = fmul double %572, %574, !dbg !3035
  %576 = fadd double %571, %575, !dbg !3036
  store double %576, double* %61, align 8, !dbg !3029
  call void @llvm.dbg.declare(metadata double* %62, metadata !3037, metadata !60), !dbg !3038
  %577 = load double, double* %33, align 8, !dbg !3039
  %578 = call double @fabs(double %577) #1, !dbg !3040
  %579 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !3041
  %580 = load double, double* %579, align 8, !dbg !3041
  %581 = fmul double %578, %580, !dbg !3042
  %582 = load double, double* %34, align 8, !dbg !3043
  %583 = call double @fabs(double %582) #1, !dbg !3044
  %584 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !3045
  %585 = load double, double* %584, align 8, !dbg !3045
  %586 = fmul double %583, %585, !dbg !3046
  %587 = fadd double %581, %586, !dbg !3047
  %588 = load double, double* %33, align 8, !dbg !3048
  %589 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !3049
  %590 = load double, double* %589, align 8, !dbg !3049
  %591 = fmul double %588, %590, !dbg !3050
  %592 = call double @fabs(double %591) #1, !dbg !3051
  %593 = fmul double 0x3D50000000000000, %592, !dbg !3052
  %594 = fadd double %587, %593, !dbg !3053
  %595 = load double, double* %34, align 8, !dbg !3054
  %596 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !3055
  %597 = load double, double* %596, align 8, !dbg !3055
  %598 = fmul double %595, %597, !dbg !3056
  %599 = call double @fabs(double %598) #1, !dbg !3057
  %600 = fmul double 0x3D50000000000000, %599, !dbg !3058
  %601 = fadd double %594, %600, !dbg !3059
  %602 = load double, double* %54, align 8, !dbg !3060
  %603 = load double, double* %33, align 8, !dbg !3061
  %604 = fmul double %602, %603, !dbg !3062
  %605 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !3063
  %606 = load double, double* %605, align 8, !dbg !3063
  %607 = fmul double %604, %606, !dbg !3064
  %608 = call double @fabs(double %607) #1, !dbg !3065
  %609 = fmul double 0x3CB0000000000000, %608, !dbg !3066
  %610 = fadd double %601, %609, !dbg !3067
  %611 = load double, double* %54, align 8, !dbg !3068
  %612 = load double, double* %34, align 8, !dbg !3069
  %613 = fmul double %611, %612, !dbg !3070
  %614 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !3071
  %615 = load double, double* %614, align 8, !dbg !3071
  %616 = fmul double %613, %615, !dbg !3072
  %617 = call double @fabs(double %616) #1, !dbg !3073
  %618 = fmul double 0x3CB0000000000000, %617, !dbg !3074
  %619 = fadd double %610, %618, !dbg !3075
  store double %619, double* %62, align 8, !dbg !3038
  call void @llvm.dbg.declare(metadata double* %63, metadata !3076, metadata !60), !dbg !3077
  %620 = load double, double* %53, align 8, !dbg !3078
  %621 = load double, double* %52, align 8, !dbg !3079
  %622 = fdiv double %620, %621, !dbg !3080
  %623 = call double @sqrt(double %622) #6, !dbg !3081
  store double %623, double* %63, align 8, !dbg !3077
  %624 = load double, double* %63, align 8, !dbg !3082
  %625 = load double, double* %61, align 8, !dbg !3083
  %626 = fmul double %624, %625, !dbg !3084
  %627 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3085
  %628 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %627, i32 0, i32 0, !dbg !3086
  store double %626, double* %628, align 8, !dbg !3087
  %629 = load double, double* %63, align 8, !dbg !3088
  %630 = load double, double* %62, align 8, !dbg !3089
  %631 = fmul double %629, %630, !dbg !3090
  %632 = load double, double* %51, align 8, !dbg !3091
  %633 = fmul double %631, %632, !dbg !3092
  %634 = load double, double* %50, align 8, !dbg !3093
  %635 = fdiv double %633, %634, !dbg !3094
  %636 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3095
  %637 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %636, i32 0, i32 1, !dbg !3096
  store double %635, double* %637, align 8, !dbg !3097
  %638 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3098
  %639 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %638, i32 0, i32 0, !dbg !3099
  %640 = load double, double* %639, align 8, !dbg !3099
  %641 = call double @fabs(double %640) #1, !dbg !3100
  %642 = fmul double 0x3CD0000000000000, %641, !dbg !3101
  %643 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3102
  %644 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %643, i32 0, i32 1, !dbg !3103
  %645 = load double, double* %644, align 8, !dbg !3104
  %646 = fadd double %645, %642, !dbg !3104
  store double %646, double* %644, align 8, !dbg !3104
  %647 = load i32, i32* %60, align 4, !dbg !3105
  %648 = icmp ne i32 %647, 0, !dbg !3105
  br i1 %648, label %649, label %651, !dbg !3105

; <label>:649:                                    ; preds = %560
  %650 = load i32, i32* %60, align 4, !dbg !3106
  br label %659, !dbg !3106

; <label>:651:                                    ; preds = %560
  %652 = load i32, i32* %59, align 4, !dbg !3107
  %653 = icmp ne i32 %652, 0, !dbg !3107
  br i1 %653, label %654, label %656, !dbg !3107

; <label>:654:                                    ; preds = %651
  %655 = load i32, i32* %59, align 4, !dbg !3108
  br label %657, !dbg !3108

; <label>:656:                                    ; preds = %651
  br label %657, !dbg !3109

; <label>:657:                                    ; preds = %656, %654
  %658 = phi i32 [ %655, %654 ], [ 0, %656 ], !dbg !3110
  br label %659, !dbg !3110

; <label>:659:                                    ; preds = %657, %649
  %660 = phi i32 [ %650, %649 ], [ %658, %657 ], !dbg !3111
  store i32 %660, i32* %4, align 4, !dbg !3112
  br label %661, !dbg !3112

; <label>:661:                                    ; preds = %72, %81, %93, %184, %190, %277, %297, %314, %402, %525, %659, %74
  %662 = load i32, i32* %4, align 4, !dbg !3113
  ret i32 %662, !dbg !3113
}

declare double @GSL_MAX_DBL(double, double) #3

declare i32 @gsl_sf_ellint_Ecomp_e(double, i32, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @sinh(double) #2

; Function Attrs: nounwind uwtable
define internal i32 @conicalP_1_V(double, double, double, double, double*, double*) #0 !dbg !3114 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double, align 8
  %14 = alloca [8 x double], align 16
  %15 = alloca [8 x double], align 16
  %16 = alloca [8 x double], align 16
  %17 = alloca [12 x double], align 16
  %18 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3115, metadata !60), !dbg !3116
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3117, metadata !60), !dbg !3118
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3119, metadata !60), !dbg !3120
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !3121, metadata !60), !dbg !3122
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !3123, metadata !60), !dbg !3124
  store double* %5, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !3125, metadata !60), !dbg !3126
  call void @llvm.dbg.declare(metadata double* %13, metadata !3127, metadata !60), !dbg !3128
  call void @llvm.dbg.declare(metadata [8 x double]* %14, metadata !3129, metadata !60), !dbg !3130
  call void @llvm.dbg.declare(metadata [8 x double]* %15, metadata !3131, metadata !60), !dbg !3132
  call void @llvm.dbg.declare(metadata [8 x double]* %16, metadata !3133, metadata !60), !dbg !3134
  call void @llvm.dbg.declare(metadata [12 x double]* %17, metadata !3135, metadata !60), !dbg !3136
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3137, metadata !60), !dbg !3138
  %19 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 0, !dbg !3139
  store double 1.000000e+00, double* %19, align 16, !dbg !3140
  %20 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 0, !dbg !3141
  store double 1.000000e+00, double* %20, align 16, !dbg !3142
  %21 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 0, !dbg !3143
  store double 1.000000e+00, double* %21, align 16, !dbg !3144
  store i32 1, i32* %18, align 4, !dbg !3145
  br label %22, !dbg !3147

; <label>:22:                                     ; preds = %48, %6
  %23 = load i32, i32* %18, align 4, !dbg !3148
  %24 = icmp sle i32 %23, 7, !dbg !3151
  br i1 %24, label %25, label %51, !dbg !3152

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %18, align 4, !dbg !3153
  %27 = sub nsw i32 %26, 1, !dbg !3155
  %28 = sext i32 %27 to i64, !dbg !3156
  %29 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 %28, !dbg !3156
  %30 = load double, double* %29, align 8, !dbg !3156
  %31 = load double, double* %7, align 8, !dbg !3157
  %32 = fmul double %30, %31, !dbg !3158
  %33 = load i32, i32* %18, align 4, !dbg !3159
  %34 = sext i32 %33 to i64, !dbg !3160
  %35 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 %34, !dbg !3160
  store double %32, double* %35, align 8, !dbg !3161
  %36 = load i32, i32* %18, align 4, !dbg !3162
  %37 = sub nsw i32 %36, 1, !dbg !3163
  %38 = sext i32 %37 to i64, !dbg !3164
  %39 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 %38, !dbg !3164
  %40 = load double, double* %39, align 8, !dbg !3164
  %41 = load double, double* %7, align 8, !dbg !3165
  %42 = load double, double* %8, align 8, !dbg !3166
  %43 = fmul double %41, %42, !dbg !3167
  %44 = fmul double %40, %43, !dbg !3168
  %45 = load i32, i32* %18, align 4, !dbg !3169
  %46 = sext i32 %45 to i64, !dbg !3170
  %47 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 %46, !dbg !3170
  store double %44, double* %47, align 8, !dbg !3171
  br label %48, !dbg !3172

; <label>:48:                                     ; preds = %25
  %49 = load i32, i32* %18, align 4, !dbg !3173
  %50 = add nsw i32 %49, 1, !dbg !3173
  store i32 %50, i32* %18, align 4, !dbg !3173
  br label %22, !dbg !3175, !llvm.loop !3176

; <label>:51:                                     ; preds = %22
  store i32 1, i32* %18, align 4, !dbg !3178
  br label %52, !dbg !3180

; <label>:52:                                     ; preds = %66, %51
  %53 = load i32, i32* %18, align 4, !dbg !3181
  %54 = icmp sle i32 %53, 11, !dbg !3184
  br i1 %54, label %55, label %69, !dbg !3185

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %18, align 4, !dbg !3186
  %57 = sub nsw i32 %56, 1, !dbg !3188
  %58 = sext i32 %57 to i64, !dbg !3189
  %59 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 %58, !dbg !3189
  %60 = load double, double* %59, align 8, !dbg !3189
  %61 = load double, double* %9, align 8, !dbg !3190
  %62 = fmul double %60, %61, !dbg !3191
  %63 = load i32, i32* %18, align 4, !dbg !3192
  %64 = sext i32 %63 to i64, !dbg !3193
  %65 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 %64, !dbg !3193
  store double %62, double* %65, align 8, !dbg !3194
  br label %66, !dbg !3195

; <label>:66:                                     ; preds = %55
  %67 = load i32, i32* %18, align 4, !dbg !3196
  %68 = add nsw i32 %67, 1, !dbg !3196
  store i32 %68, i32* %18, align 4, !dbg !3196
  br label %52, !dbg !3198, !llvm.loop !3199

; <label>:69:                                     ; preds = %52
  store double -1.000000e+00, double* %13, align 8, !dbg !3201
  %70 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3202
  %71 = load double, double* %70, align 8, !dbg !3202
  %72 = fsub double 1.000000e+00, %71, !dbg !3203
  %73 = fmul double 3.000000e+00, %72, !dbg !3204
  %74 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !3205
  %75 = load double, double* %74, align 8, !dbg !3205
  %76 = fmul double 8.000000e+00, %75, !dbg !3206
  %77 = fdiv double %73, %76, !dbg !3207
  %78 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 0, !dbg !3208
  store double %77, double* %78, align 16, !dbg !3209
  %79 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 2, !dbg !3210
  %80 = load double, double* %79, align 16, !dbg !3210
  %81 = fmul double -1.500000e+01, %80, !dbg !3211
  %82 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3212
  %83 = load double, double* %82, align 8, !dbg !3212
  %84 = fmul double 6.000000e+00, %83, !dbg !3213
  %85 = fadd double %81, %84, !dbg !3214
  %86 = fadd double %85, 9.000000e+00, !dbg !3215
  %87 = load double, double* %10, align 8, !dbg !3216
  %88 = fmul double %87, 8.000000e+00, !dbg !3217
  %89 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !3218
  %90 = load double, double* %89, align 16, !dbg !3218
  %91 = fmul double %88, %90, !dbg !3219
  %92 = fadd double %86, %91, !dbg !3220
  %93 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !3221
  %94 = load double, double* %93, align 16, !dbg !3221
  %95 = fmul double 1.280000e+02, %94, !dbg !3222
  %96 = fdiv double %92, %95, !dbg !3223
  %97 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 1, !dbg !3224
  store double %96, double* %97, align 8, !dbg !3225
  %98 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 3, !dbg !3226
  %99 = load double, double* %98, align 8, !dbg !3226
  %100 = fmul double -3.500000e+01, %99, !dbg !3227
  %101 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 2, !dbg !3228
  %102 = load double, double* %101, align 16, !dbg !3228
  %103 = fmul double 1.500000e+01, %102, !dbg !3229
  %104 = fsub double %100, %103, !dbg !3230
  %105 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3231
  %106 = load double, double* %105, align 8, !dbg !3231
  %107 = fmul double 1.500000e+01, %106, !dbg !3232
  %108 = fadd double %104, %107, !dbg !3233
  %109 = fadd double %108, 3.500000e+01, !dbg !3234
  %110 = load double, double* %10, align 8, !dbg !3235
  %111 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !3236
  %112 = load double, double* %111, align 16, !dbg !3236
  %113 = fmul double %110, %112, !dbg !3237
  %114 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3238
  %115 = load double, double* %114, align 8, !dbg !3238
  %116 = fmul double 3.200000e+01, %115, !dbg !3239
  %117 = fadd double %116, 8.000000e+00, !dbg !3240
  %118 = fmul double %113, %117, !dbg !3241
  %119 = fadd double %109, %118, !dbg !3242
  %120 = fmul double 3.000000e+00, %119, !dbg !3243
  %121 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 3, !dbg !3244
  %122 = load double, double* %121, align 8, !dbg !3244
  %123 = fmul double 1.024000e+03, %122, !dbg !3245
  %124 = fdiv double %120, %123, !dbg !3246
  %125 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !3247
  store double %124, double* %125, align 16, !dbg !3248
  %126 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 4, !dbg !3249
  %127 = load double, double* %126, align 16, !dbg !3249
  %128 = fmul double -4.725000e+03, %127, !dbg !3250
  %129 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 3, !dbg !3251
  %130 = load double, double* %129, align 8, !dbg !3251
  %131 = fmul double 6.300000e+03, %130, !dbg !3252
  %132 = fsub double %128, %131, !dbg !3253
  %133 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 2, !dbg !3254
  %134 = load double, double* %133, align 16, !dbg !3254
  %135 = fmul double 3.150000e+03, %134, !dbg !3255
  %136 = fsub double %132, %135, !dbg !3256
  %137 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3257
  %138 = load double, double* %137, align 8, !dbg !3257
  %139 = fmul double 3.780000e+03, %138, !dbg !3258
  %140 = fadd double %136, %139, !dbg !3259
  %141 = fadd double %140, 1.039500e+04, !dbg !3260
  %142 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 4, !dbg !3261
  %143 = load double, double* %142, align 16, !dbg !3261
  %144 = fmul double 1.216000e+03, %143, !dbg !3262
  %145 = fsub double %141, %144, !dbg !3263
  %146 = load double, double* %10, align 8, !dbg !3264
  %147 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !3265
  %148 = load double, double* %147, align 16, !dbg !3265
  %149 = fmul double %146, %148, !dbg !3266
  %150 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 2, !dbg !3267
  %151 = load double, double* %150, align 16, !dbg !3267
  %152 = fmul double 6.000000e+03, %151, !dbg !3268
  %153 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3269
  %154 = load double, double* %153, align 8, !dbg !3269
  %155 = fmul double 5.760000e+03, %154, !dbg !3270
  %156 = fadd double %152, %155, !dbg !3271
  %157 = fadd double %156, 1.680000e+03, !dbg !3272
  %158 = fmul double %149, %157, !dbg !3273
  %159 = fadd double %145, %158, !dbg !3274
  %160 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 4, !dbg !3275
  %161 = load double, double* %160, align 16, !dbg !3275
  %162 = fmul double 3.276800e+04, %161, !dbg !3276
  %163 = fdiv double %159, %162, !dbg !3277
  %164 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 3, !dbg !3278
  store double %163, double* %164, align 8, !dbg !3279
  %165 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 5, !dbg !3280
  %166 = load double, double* %165, align 8, !dbg !3280
  %167 = fmul double -1.039500e+04, %166, !dbg !3281
  %168 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 4, !dbg !3282
  %169 = load double, double* %168, align 16, !dbg !3282
  %170 = fmul double 2.362500e+04, %169, !dbg !3283
  %171 = fsub double %167, %170, !dbg !3284
  %172 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 3, !dbg !3285
  %173 = load double, double* %172, align 8, !dbg !3285
  %174 = fmul double 2.835000e+04, %173, !dbg !3286
  %175 = fsub double %171, %174, !dbg !3287
  %176 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 2, !dbg !3288
  %177 = load double, double* %176, align 16, !dbg !3288
  %178 = fmul double 1.485000e+04, %177, !dbg !3289
  %179 = fsub double %175, %178, !dbg !3290
  %180 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3291
  %181 = load double, double* %180, align 8, !dbg !3291
  %182 = fmul double 1.930500e+04, %181, !dbg !3292
  %183 = fadd double %179, %182, !dbg !3293
  %184 = fadd double %183, 5.791500e+04, !dbg !3294
  %185 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 4, !dbg !3295
  %186 = load double, double* %185, align 16, !dbg !3295
  %187 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3296
  %188 = load double, double* %187, align 8, !dbg !3296
  %189 = fmul double 6.336000e+03, %188, !dbg !3297
  %190 = fadd double %189, 6.080000e+03, !dbg !3298
  %191 = fmul double %186, %190, !dbg !3299
  %192 = fsub double %184, %191, !dbg !3300
  %193 = load double, double* %10, align 8, !dbg !3301
  %194 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !3302
  %195 = load double, double* %194, align 16, !dbg !3302
  %196 = fmul double %193, %195, !dbg !3303
  %197 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 3, !dbg !3304
  %198 = load double, double* %197, align 8, !dbg !3304
  %199 = fmul double 1.680000e+04, %198, !dbg !3305
  %200 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 2, !dbg !3306
  %201 = load double, double* %200, align 16, !dbg !3306
  %202 = fmul double 3.000000e+04, %201, !dbg !3307
  %203 = fadd double %199, %202, !dbg !3308
  %204 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3309
  %205 = load double, double* %204, align 8, !dbg !3309
  %206 = fmul double 2.592000e+04, %205, !dbg !3310
  %207 = fadd double %203, %206, !dbg !3311
  %208 = fadd double %207, 7.920000e+03, !dbg !3312
  %209 = fmul double %196, %208, !dbg !3313
  %210 = fadd double %192, %209, !dbg !3314
  %211 = fmul double 7.000000e+00, %210, !dbg !3315
  %212 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 5, !dbg !3316
  %213 = load double, double* %212, align 8, !dbg !3316
  %214 = fmul double 2.621440e+05, %213, !dbg !3317
  %215 = fdiv double %211, %214, !dbg !3318
  %216 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !3319
  store double %215, double* %216, align 16, !dbg !3320
  %217 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 6, !dbg !3321
  %218 = load double, double* %217, align 16, !dbg !3321
  %219 = fmul double -2.837835e+06, %218, !dbg !3322
  %220 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 5, !dbg !3323
  %221 = load double, double* %220, align 8, !dbg !3323
  %222 = fmul double 9.168390e+06, %221, !dbg !3324
  %223 = fsub double %219, %222, !dbg !3325
  %224 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 4, !dbg !3326
  %225 = load double, double* %224, align 16, !dbg !3326
  %226 = fmul double 0x416F3A33A0000000, %225, !dbg !3327
  %227 = fsub double %223, %226, !dbg !3328
  %228 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 3, !dbg !3329
  %229 = load double, double* %228, align 8, !dbg !3329
  %230 = fmul double 1.891890e+07, %229, !dbg !3330
  %231 = fsub double %227, %230, !dbg !3331
  %232 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 2, !dbg !3332
  %233 = load double, double* %232, align 16, !dbg !3332
  %234 = fmul double 0x416354CAA0000000, %233, !dbg !3333
  %235 = fsub double %231, %234, !dbg !3334
  %236 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3335
  %237 = load double, double* %236, align 8, !dbg !3335
  %238 = fmul double 1.378377e+07, %237, !dbg !3336
  %239 = fadd double %235, %238, !dbg !3337
  %240 = fadd double %239, 0x4184D032E8000000, !dbg !3338
  %241 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 4, !dbg !3339
  %242 = load double, double* %241, align 16, !dbg !3339
  %243 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 2, !dbg !3340
  %244 = load double, double* %243, align 16, !dbg !3340
  %245 = fmul double 3.044160e+06, %244, !dbg !3341
  %246 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3342
  %247 = load double, double* %246, align 8, !dbg !3342
  %248 = fmul double 5.588352e+06, %247, !dbg !3343
  %249 = fadd double %245, %248, !dbg !3344
  %250 = fadd double %249, 4.213440e+06, !dbg !3345
  %251 = fmul double %242, %250, !dbg !3346
  %252 = fsub double %240, %251, !dbg !3347
  %253 = load double, double* %10, align 8, !dbg !3348
  %254 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !3349
  %255 = load double, double* %254, align 16, !dbg !3349
  %256 = fmul double %253, %255, !dbg !3350
  %257 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 4, !dbg !3351
  %258 = load double, double* %257, align 16, !dbg !3351
  %259 = fmul double 5.556600e+06, %258, !dbg !3352
  %260 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 3, !dbg !3353
  %261 = load double, double* %260, align 8, !dbg !3353
  %262 = fmul double 1.481760e+07, %261, !dbg !3354
  %263 = fadd double %259, %262, !dbg !3355
  %264 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 2, !dbg !3356
  %265 = load double, double* %264, align 16, !dbg !3356
  %266 = fmul double 2.079000e+07, %265, !dbg !3357
  %267 = fadd double %263, %266, !dbg !3358
  %268 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 0, i64 1, !dbg !3359
  %269 = load double, double* %268, align 8, !dbg !3359
  %270 = fmul double 1.729728e+07, %269, !dbg !3360
  %271 = fadd double %267, %270, !dbg !3361
  %272 = fadd double %271, 5.405400e+06, !dbg !3362
  %273 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 4, !dbg !3363
  %274 = load double, double* %273, align 16, !dbg !3363
  %275 = fmul double 3.230720e+05, %274, !dbg !3364
  %276 = fadd double %272, %275, !dbg !3365
  %277 = fmul double %256, %276, !dbg !3366
  %278 = fadd double %252, %277, !dbg !3367
  %279 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 6, !dbg !3368
  %280 = load double, double* %279, align 16, !dbg !3368
  %281 = fmul double 4.194304e+06, %280, !dbg !3369
  %282 = fdiv double %278, %281, !dbg !3370
  %283 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 5, !dbg !3371
  store double %282, double* %283, align 8, !dbg !3372
  %284 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 6, !dbg !3373
  store double 0.000000e+00, double* %284, align 16, !dbg !3374
  %285 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 0, !dbg !3375
  %286 = load double, double* %285, align 16, !dbg !3375
  %287 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 3, !dbg !3376
  %288 = load double, double* %287, align 8, !dbg !3376
  %289 = fmul double -4.000000e+00, %288, !dbg !3377
  %290 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !3378
  %291 = load double, double* %290, align 8, !dbg !3378
  %292 = fdiv double %289, %291, !dbg !3379
  %293 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !3380
  %294 = load double, double* %293, align 16, !dbg !3380
  %295 = fadd double %292, %294, !dbg !3381
  %296 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 4, !dbg !3382
  %297 = load double, double* %296, align 16, !dbg !3382
  %298 = fdiv double %295, %297, !dbg !3383
  %299 = fadd double %286, %298, !dbg !3384
  %300 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 5, !dbg !3385
  %301 = load double, double* %300, align 8, !dbg !3385
  %302 = fmul double -1.920000e+02, %301, !dbg !3386
  %303 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 3, !dbg !3387
  %304 = load double, double* %303, align 8, !dbg !3387
  %305 = fdiv double %302, %304, !dbg !3388
  %306 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 6, !dbg !3389
  %307 = load double, double* %306, align 16, !dbg !3389
  %308 = fmul double 1.440000e+02, %307, !dbg !3390
  %309 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !3391
  %310 = load double, double* %309, align 16, !dbg !3391
  %311 = fdiv double %308, %310, !dbg !3392
  %312 = fadd double %305, %311, !dbg !3393
  %313 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 8, !dbg !3394
  %314 = load double, double* %313, align 16, !dbg !3394
  %315 = fdiv double %312, %314, !dbg !3395
  %316 = fadd double %299, %315, !dbg !3396
  %317 = load double, double* %10, align 8, !dbg !3397
  %318 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !3398
  %319 = load double, double* %318, align 16, !dbg !3398
  %320 = fsub double -0.000000e+00, %319, !dbg !3399
  %321 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 2, !dbg !3400
  %322 = load double, double* %321, align 16, !dbg !3400
  %323 = fdiv double %320, %322, !dbg !3401
  %324 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !3402
  %325 = load double, double* %324, align 16, !dbg !3402
  %326 = fmul double -2.400000e+01, %325, !dbg !3403
  %327 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !3404
  %328 = load double, double* %327, align 16, !dbg !3404
  %329 = fdiv double %326, %328, !dbg !3405
  %330 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 5, !dbg !3406
  %331 = load double, double* %330, align 8, !dbg !3406
  %332 = fmul double 1.200000e+01, %331, !dbg !3407
  %333 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !3408
  %334 = load double, double* %333, align 8, !dbg !3408
  %335 = fdiv double %332, %334, !dbg !3409
  %336 = fadd double %329, %335, !dbg !3410
  %337 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 6, !dbg !3411
  %338 = load double, double* %337, align 16, !dbg !3411
  %339 = fsub double %336, %338, !dbg !3412
  %340 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 6, !dbg !3413
  %341 = load double, double* %340, align 16, !dbg !3413
  %342 = fdiv double %339, %341, !dbg !3414
  %343 = fadd double %323, %342, !dbg !3415
  %344 = fmul double %317, %343, !dbg !3416
  %345 = fadd double %316, %344, !dbg !3417
  %346 = load double*, double** %11, align 8, !dbg !3418
  store double %345, double* %346, align 8, !dbg !3419
  %347 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 1, !dbg !3420
  %348 = load double, double* %347, align 8, !dbg !3420
  %349 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 1, !dbg !3421
  %350 = load double, double* %349, align 8, !dbg !3421
  %351 = fdiv double %348, %350, !dbg !3422
  %352 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 3, !dbg !3423
  %353 = load double, double* %352, align 8, !dbg !3423
  %354 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !3424
  %355 = load double, double* %354, align 16, !dbg !3424
  %356 = fdiv double %353, %355, !dbg !3425
  %357 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !3426
  %358 = load double, double* %357, align 16, !dbg !3426
  %359 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !3427
  %360 = load double, double* %359, align 8, !dbg !3427
  %361 = fdiv double %358, %360, !dbg !3428
  %362 = fsub double %356, %361, !dbg !3429
  %363 = fmul double 8.000000e+00, %362, !dbg !3430
  %364 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 5, !dbg !3431
  %365 = load double, double* %364, align 8, !dbg !3431
  %366 = fadd double %363, %365, !dbg !3432
  %367 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 5, !dbg !3433
  %368 = load double, double* %367, align 8, !dbg !3433
  %369 = fdiv double %366, %368, !dbg !3434
  %370 = fadd double %351, %369, !dbg !3435
  %371 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 5, !dbg !3436
  %372 = load double, double* %371, align 8, !dbg !3436
  %373 = fmul double 3.840000e+02, %372, !dbg !3437
  %374 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 4, !dbg !3438
  %375 = load double, double* %374, align 16, !dbg !3438
  %376 = fdiv double %373, %375, !dbg !3439
  %377 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 6, !dbg !3440
  %378 = load double, double* %377, align 16, !dbg !3440
  %379 = fmul double 7.680000e+02, %378, !dbg !3441
  %380 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 3, !dbg !3442
  %381 = load double, double* %380, align 8, !dbg !3442
  %382 = fdiv double %379, %381, !dbg !3443
  %383 = fsub double %376, %382, !dbg !3444
  %384 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 9, !dbg !3445
  %385 = load double, double* %384, align 8, !dbg !3445
  %386 = fdiv double %383, %385, !dbg !3446
  %387 = fadd double %370, %386, !dbg !3447
  %388 = load double, double* %10, align 8, !dbg !3448
  %389 = load double, double* %13, align 8, !dbg !3449
  %390 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 1, !dbg !3450
  %391 = load double, double* %390, align 8, !dbg !3450
  %392 = fmul double %389, %391, !dbg !3451
  %393 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 2, !dbg !3452
  %394 = load double, double* %393, align 16, !dbg !3452
  %395 = fmul double 2.000000e+00, %394, !dbg !3453
  %396 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !3454
  %397 = load double, double* %396, align 8, !dbg !3454
  %398 = fdiv double %395, %397, !dbg !3455
  %399 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 3, !dbg !3456
  %400 = load double, double* %399, align 8, !dbg !3456
  %401 = fsub double %398, %400, !dbg !3457
  %402 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 3, !dbg !3458
  %403 = load double, double* %402, align 8, !dbg !3458
  %404 = fdiv double %401, %403, !dbg !3459
  %405 = fadd double %392, %404, !dbg !3460
  %406 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 4, !dbg !3461
  %407 = load double, double* %406, align 16, !dbg !3461
  %408 = fmul double 4.800000e+01, %407, !dbg !3462
  %409 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 3, !dbg !3463
  %410 = load double, double* %409, align 8, !dbg !3463
  %411 = fdiv double %408, %410, !dbg !3464
  %412 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 5, !dbg !3465
  %413 = load double, double* %412, align 8, !dbg !3465
  %414 = fmul double 7.200000e+01, %413, !dbg !3466
  %415 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 2, !dbg !3467
  %416 = load double, double* %415, align 16, !dbg !3467
  %417 = fdiv double %414, %416, !dbg !3468
  %418 = fsub double %411, %417, !dbg !3469
  %419 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 6, !dbg !3470
  %420 = load double, double* %419, align 16, !dbg !3470
  %421 = fmul double 1.800000e+01, %420, !dbg !3471
  %422 = getelementptr inbounds [8 x double], [8 x double]* %15, i64 0, i64 1, !dbg !3472
  %423 = load double, double* %422, align 8, !dbg !3472
  %424 = fdiv double %421, %423, !dbg !3473
  %425 = fadd double %418, %424, !dbg !3474
  %426 = getelementptr inbounds [12 x double], [12 x double]* %17, i64 0, i64 7, !dbg !3475
  %427 = load double, double* %426, align 8, !dbg !3475
  %428 = fdiv double %425, %427, !dbg !3476
  %429 = fadd double %405, %428, !dbg !3477
  %430 = fmul double %388, %429, !dbg !3478
  %431 = fadd double %387, %430, !dbg !3479
  %432 = load double*, double** %12, align 8, !dbg !3480
  store double %431, double* %432, align 8, !dbg !3481
  ret i32 0, !dbg !3482
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_conicalP_half_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !3483 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
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
  %18 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !3484, metadata !60), !dbg !3485
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3486, metadata !60), !dbg !3487
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !3488, metadata !60), !dbg !3489
  %19 = load double, double* %6, align 8, !dbg !3490
  %20 = fcmp ole double %19, -1.000000e+00, !dbg !3492
  br i1 %20, label %21, label %30, !dbg !3493

; <label>:21:                                     ; preds = %3
  br label %22, !dbg !3494, !llvm.loop !3496

; <label>:22:                                     ; preds = %21
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3497
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !3497
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !3497
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3497
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !3497
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !3497
  br label %27, !dbg !3497, !llvm.loop !3500

; <label>:27:                                     ; preds = %22
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1017, i32 1), !dbg !3502
  store i32 1, i32* %4, align 4, !dbg !3502
  br label %143, !dbg !3502
                                                  ; No predecessors!
  br label %29, !dbg !3505

; <label>:29:                                     ; preds = %28
  br label %143, !dbg !3507

; <label>:30:                                     ; preds = %3
  %31 = load double, double* %6, align 8, !dbg !3508
  %32 = fcmp olt double %31, 1.000000e+00, !dbg !3510
  br i1 %32, label %33, label %79, !dbg !3511

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %8, metadata !3512, metadata !60), !dbg !3514
  %34 = load double, double* %6, align 8, !dbg !3515
  %35 = call double @fabs(double %34) #1, !dbg !3516
  %36 = fsub double 1.000000e+00, %35, !dbg !3517
  %37 = call double @fabs(double %36) #1, !dbg !3518
  %38 = fadd double 0x3CB0000000000000, %37, !dbg !3520
  %39 = fdiv double 1.000000e+00, %38, !dbg !3521
  %40 = fadd double 1.000000e+00, %39, !dbg !3522
  store double %40, double* %8, align 8, !dbg !3514
  call void @llvm.dbg.declare(metadata double* %9, metadata !3523, metadata !60), !dbg !3524
  %41 = load double, double* %6, align 8, !dbg !3525
  %42 = call double @acos(double %41) #6, !dbg !3526
  store double %42, double* %9, align 8, !dbg !3524
  call void @llvm.dbg.declare(metadata double* %10, metadata !3527, metadata !60), !dbg !3528
  %43 = load double, double* %6, align 8, !dbg !3529
  %44 = fsub double 1.000000e+00, %43, !dbg !3530
  %45 = call double @sqrt(double %44) #6, !dbg !3531
  %46 = load double, double* %6, align 8, !dbg !3532
  %47 = fadd double 1.000000e+00, %46, !dbg !3533
  %48 = call double @sqrt(double %47) #6, !dbg !3534
  %49 = fmul double %45, %48, !dbg !3535
  %50 = call double @sqrt(double %49) #6, !dbg !3536
  store double %50, double* %10, align 8, !dbg !3528
  %51 = load double, double* %10, align 8, !dbg !3538
  %52 = fdiv double 0x3FE9884533D43651, %51, !dbg !3539
  %53 = load double, double* %9, align 8, !dbg !3540
  %54 = load double, double* %5, align 8, !dbg !3541
  %55 = fmul double %53, %54, !dbg !3542
  %56 = call double @cosh(double %55) #6, !dbg !3543
  %57 = fmul double %52, %56, !dbg !3544
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3545
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !3546
  store double %57, double* %59, align 8, !dbg !3547
  %60 = load double, double* %8, align 8, !dbg !3548
  %61 = fmul double %60, 3.000000e+00, !dbg !3549
  %62 = fmul double %61, 0x3CB0000000000000, !dbg !3550
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3551
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !3552
  %65 = load double, double* %64, align 8, !dbg !3552
  %66 = call double @fabs(double %65) #1, !dbg !3553
  %67 = fmul double %62, %66, !dbg !3554
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3555
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 1, !dbg !3556
  store double %67, double* %69, align 8, !dbg !3557
  %70 = load double, double* %9, align 8, !dbg !3558
  %71 = load double, double* %5, align 8, !dbg !3559
  %72 = fmul double %70, %71, !dbg !3560
  %73 = call double @fabs(double %72) #1, !dbg !3561
  %74 = fadd double %73, 1.000000e+00, !dbg !3562
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3563
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !3564
  %77 = load double, double* %76, align 8, !dbg !3565
  %78 = fmul double %77, %74, !dbg !3565
  store double %78, double* %76, align 8, !dbg !3565
  store i32 0, i32* %4, align 4, !dbg !3566
  br label %143, !dbg !3566

; <label>:79:                                     ; preds = %30
  %80 = load double, double* %6, align 8, !dbg !3567
  %81 = fcmp oeq double %80, 1.000000e+00, !dbg !3569
  br i1 %81, label %82, label %87, !dbg !3570

; <label>:82:                                     ; preds = %79
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3571
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !3573
  store double 0.000000e+00, double* %84, align 8, !dbg !3574
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3575
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !3576
  store double 0.000000e+00, double* %86, align 8, !dbg !3577
  store i32 0, i32* %4, align 4, !dbg !3578
  br label %143, !dbg !3578

; <label>:87:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata double* %11, metadata !3579, metadata !60), !dbg !3581
  %88 = load double, double* %6, align 8, !dbg !3582
  %89 = call double @fabs(double %88) #1, !dbg !3583
  %90 = fsub double 1.000000e+00, %89, !dbg !3584
  %91 = call double @fabs(double %90) #1, !dbg !3585
  %92 = fadd double 0x3CB0000000000000, %91, !dbg !3587
  %93 = fdiv double 1.000000e+00, %92, !dbg !3588
  %94 = fadd double 1.000000e+00, %93, !dbg !3589
  store double %94, double* %11, align 8, !dbg !3581
  call void @llvm.dbg.declare(metadata double* %12, metadata !3590, metadata !60), !dbg !3591
  %95 = load double, double* %6, align 8, !dbg !3592
  %96 = fsub double %95, 1.000000e+00, !dbg !3593
  %97 = call double @sqrt(double %96) #6, !dbg !3594
  %98 = load double, double* %6, align 8, !dbg !3595
  %99 = fadd double %98, 1.000000e+00, !dbg !3596
  %100 = call double @sqrt(double %99) #6, !dbg !3597
  %101 = fmul double %97, %100, !dbg !3598
  store double %101, double* %12, align 8, !dbg !3591
  call void @llvm.dbg.declare(metadata double* %13, metadata !3599, metadata !60), !dbg !3600
  %102 = load double, double* %6, align 8, !dbg !3601
  %103 = load double, double* %12, align 8, !dbg !3602
  %104 = fadd double %102, %103, !dbg !3603
  %105 = call double @log(double %104) #6, !dbg !3604
  store double %105, double* %13, align 8, !dbg !3600
  call void @llvm.dbg.declare(metadata double* %14, metadata !3605, metadata !60), !dbg !3606
  %106 = load double, double* %12, align 8, !dbg !3607
  %107 = call double @sqrt(double %106) #6, !dbg !3608
  store double %107, double* %14, align 8, !dbg !3606
  call void @llvm.dbg.declare(metadata double* %15, metadata !3609, metadata !60), !dbg !3610
  %108 = load double, double* %5, align 8, !dbg !3611
  %109 = load double, double* %13, align 8, !dbg !3612
  %110 = fmul double %108, %109, !dbg !3613
  store double %110, double* %15, align 8, !dbg !3610
  call void @llvm.dbg.declare(metadata double* %16, metadata !3614, metadata !60), !dbg !3615
  %111 = load double, double* %15, align 8, !dbg !3616
  %112 = call double @fabs(double %111) #1, !dbg !3617
  %113 = fmul double 0x3CC0000000000000, %112, !dbg !3618
  store double %113, double* %16, align 8, !dbg !3615
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !3619, metadata !60), !dbg !3620
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3621, metadata !60), !dbg !3622
  %114 = load double, double* %15, align 8, !dbg !3623
  %115 = load double, double* %16, align 8, !dbg !3624
  %116 = call i32 @gsl_sf_cos_err_e(double %114, double %115, %struct.gsl_sf_result_struct* %17), !dbg !3625
  store i32 %116, i32* %18, align 4, !dbg !3622
  %117 = load double, double* %14, align 8, !dbg !3626
  %118 = fdiv double 0x3FE9884533D43651, %117, !dbg !3627
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !3628
  %120 = load double, double* %119, align 8, !dbg !3628
  %121 = fmul double %118, %120, !dbg !3629
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3630
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !3631
  store double %121, double* %123, align 8, !dbg !3632
  %124 = load double, double* %11, align 8, !dbg !3633
  %125 = fmul double %124, 0x3FE9884533D43651, !dbg !3634
  %126 = load double, double* %14, align 8, !dbg !3635
  %127 = fdiv double %125, %126, !dbg !3636
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !3637
  %129 = load double, double* %128, align 8, !dbg !3637
  %130 = fmul double %127, %129, !dbg !3638
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3639
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 1, !dbg !3640
  store double %130, double* %132, align 8, !dbg !3641
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3642
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 0, !dbg !3643
  %135 = load double, double* %134, align 8, !dbg !3643
  %136 = call double @fabs(double %135) #1, !dbg !3644
  %137 = fmul double 0x3CD0000000000000, %136, !dbg !3645
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3646
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 1, !dbg !3647
  %140 = load double, double* %139, align 8, !dbg !3648
  %141 = fadd double %140, %137, !dbg !3648
  store double %141, double* %139, align 8, !dbg !3648
  %142 = load i32, i32* %18, align 4, !dbg !3649
  store i32 %142, i32* %4, align 4, !dbg !3650
  br label %143, !dbg !3650

; <label>:143:                                    ; preds = %27, %33, %82, %87, %29
  %144 = load i32, i32* %4, align 4, !dbg !3651
  ret i32 %144, !dbg !3651
}

declare i32 @gsl_sf_cos_err_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_conicalP_mhalf_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !3652 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
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
  %18 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !3653, metadata !60), !dbg !3654
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3655, metadata !60), !dbg !3656
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !3657, metadata !60), !dbg !3658
  %19 = load double, double* %6, align 8, !dbg !3659
  %20 = fcmp ole double %19, -1.000000e+00, !dbg !3661
  br i1 %20, label %21, label %30, !dbg !3662

; <label>:21:                                     ; preds = %3
  br label %22, !dbg !3663, !llvm.loop !3665

; <label>:22:                                     ; preds = %21
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3666
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !3666
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !3666
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3666
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !3666
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !3666
  br label %27, !dbg !3666, !llvm.loop !3669

; <label>:27:                                     ; preds = %22
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1060, i32 1), !dbg !3671
  store i32 1, i32* %4, align 4, !dbg !3671
  br label %189, !dbg !3671
                                                  ; No predecessors!
  br label %29, !dbg !3674

; <label>:29:                                     ; preds = %28
  br label %189, !dbg !3676

; <label>:30:                                     ; preds = %3
  %31 = load double, double* %6, align 8, !dbg !3677
  %32 = fcmp olt double %31, 1.000000e+00, !dbg !3679
  br i1 %32, label %33, label %112, !dbg !3680

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %8, metadata !3681, metadata !60), !dbg !3683
  %34 = load double, double* %6, align 8, !dbg !3684
  %35 = call double @acos(double %34) #6, !dbg !3685
  store double %35, double* %8, align 8, !dbg !3683
  call void @llvm.dbg.declare(metadata double* %9, metadata !3686, metadata !60), !dbg !3687
  %36 = load double, double* %6, align 8, !dbg !3688
  %37 = fsub double 1.000000e+00, %36, !dbg !3689
  %38 = call double @sqrt(double %37) #6, !dbg !3690
  %39 = load double, double* %6, align 8, !dbg !3691
  %40 = fadd double 1.000000e+00, %39, !dbg !3692
  %41 = call double @sqrt(double %40) #6, !dbg !3693
  %42 = fmul double %38, %41, !dbg !3695
  %43 = call double @sqrt(double %42) #6, !dbg !3696
  store double %43, double* %9, align 8, !dbg !3687
  call void @llvm.dbg.declare(metadata double* %10, metadata !3698, metadata !60), !dbg !3699
  %44 = load double, double* %8, align 8, !dbg !3700
  %45 = load double, double* %5, align 8, !dbg !3701
  %46 = fmul double %44, %45, !dbg !3702
  store double %46, double* %10, align 8, !dbg !3699
  call void @llvm.dbg.declare(metadata double* %11, metadata !3703, metadata !60), !dbg !3704
  %47 = load double, double* %6, align 8, !dbg !3705
  %48 = call double @fabs(double %47) #1, !dbg !3706
  %49 = fsub double 1.000000e+00, %48, !dbg !3707
  %50 = call double @fabs(double %49) #1, !dbg !3708
  %51 = fadd double 0x3CB0000000000000, %50, !dbg !3709
  %52 = fdiv double 1.000000e+00, %51, !dbg !3710
  %53 = fadd double 1.000000e+00, %52, !dbg !3711
  store double %53, double* %11, align 8, !dbg !3704
  %54 = load double, double* %10, align 8, !dbg !3712
  %55 = call double @fabs(double %54) #1, !dbg !3714
  %56 = fcmp olt double %55, 0x3E50000000000000, !dbg !3715
  br i1 %56, label %57, label %76, !dbg !3716

; <label>:57:                                     ; preds = %33
  %58 = load double, double* %9, align 8, !dbg !3717
  %59 = fdiv double 0x3FE9884533D43651, %58, !dbg !3719
  %60 = load double, double* %8, align 8, !dbg !3720
  %61 = fmul double %59, %60, !dbg !3721
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3722
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !3723
  store double %61, double* %63, align 8, !dbg !3724
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3725
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !3726
  %66 = load double, double* %65, align 8, !dbg !3726
  %67 = call double @fabs(double %66) #1, !dbg !3727
  %68 = fmul double 0x3CC0000000000000, %67, !dbg !3728
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3729
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !3730
  store double %68, double* %70, align 8, !dbg !3731
  %71 = load double, double* %11, align 8, !dbg !3732
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3733
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !3734
  %74 = load double, double* %73, align 8, !dbg !3735
  %75 = fmul double %74, %71, !dbg !3735
  store double %75, double* %73, align 8, !dbg !3735
  br label %111, !dbg !3736

; <label>:76:                                     ; preds = %33
  %77 = load double, double* %9, align 8, !dbg !3737
  %78 = load double, double* %5, align 8, !dbg !3739
  %79 = fmul double %77, %78, !dbg !3740
  %80 = fdiv double 0x3FE9884533D43651, %79, !dbg !3741
  %81 = load double, double* %10, align 8, !dbg !3742
  %82 = call double @sinh(double %81) #6, !dbg !3743
  %83 = fmul double %80, %82, !dbg !3744
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3745
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !3746
  store double %83, double* %85, align 8, !dbg !3747
  %86 = load double, double* %10, align 8, !dbg !3748
  %87 = call double @fabs(double %86) #1, !dbg !3749
  %88 = fadd double %87, 1.000000e+00, !dbg !3750
  %89 = fmul double 0x3CB0000000000000, %88, !dbg !3751
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3752
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !3753
  %92 = load double, double* %91, align 8, !dbg !3753
  %93 = call double @fabs(double %92) #1, !dbg !3754
  %94 = fmul double %89, %93, !dbg !3756
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3757
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !3758
  store double %94, double* %96, align 8, !dbg !3759
  %97 = load double, double* %11, align 8, !dbg !3760
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3761
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 1, !dbg !3762
  %100 = load double, double* %99, align 8, !dbg !3763
  %101 = fmul double %100, %97, !dbg !3763
  store double %101, double* %99, align 8, !dbg !3763
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3764
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !3765
  %104 = load double, double* %103, align 8, !dbg !3765
  %105 = call double @fabs(double %104) #1, !dbg !3766
  %106 = fmul double 0x3CC0000000000000, %105, !dbg !3767
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3768
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !3769
  %109 = load double, double* %108, align 8, !dbg !3770
  %110 = fadd double %109, %106, !dbg !3770
  store double %110, double* %108, align 8, !dbg !3770
  br label %111

; <label>:111:                                    ; preds = %76, %57
  store i32 0, i32* %4, align 4, !dbg !3771
  br label %189, !dbg !3771

; <label>:112:                                    ; preds = %30
  %113 = load double, double* %6, align 8, !dbg !3772
  %114 = fcmp oeq double %113, 1.000000e+00, !dbg !3774
  br i1 %114, label %115, label %120, !dbg !3775

; <label>:115:                                    ; preds = %112
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3776
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !3778
  store double 0.000000e+00, double* %117, align 8, !dbg !3779
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3780
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !3781
  store double 0.000000e+00, double* %119, align 8, !dbg !3782
  store i32 0, i32* %4, align 4, !dbg !3783
  br label %189, !dbg !3783

; <label>:120:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata double* %12, metadata !3784, metadata !60), !dbg !3786
  %121 = load double, double* %6, align 8, !dbg !3787
  %122 = fsub double %121, 1.000000e+00, !dbg !3788
  %123 = call double @sqrt(double %122) #6, !dbg !3789
  %124 = load double, double* %6, align 8, !dbg !3790
  %125 = fadd double %124, 1.000000e+00, !dbg !3791
  %126 = call double @sqrt(double %125) #6, !dbg !3792
  %127 = fmul double %123, %126, !dbg !3794
  store double %127, double* %12, align 8, !dbg !3786
  call void @llvm.dbg.declare(metadata double* %13, metadata !3795, metadata !60), !dbg !3796
  %128 = load double, double* %6, align 8, !dbg !3797
  %129 = load double, double* %12, align 8, !dbg !3798
  %130 = fadd double %128, %129, !dbg !3799
  %131 = call double @log(double %130) #6, !dbg !3800
  store double %131, double* %13, align 8, !dbg !3796
  call void @llvm.dbg.declare(metadata double* %14, metadata !3801, metadata !60), !dbg !3802
  %132 = load double, double* %12, align 8, !dbg !3803
  %133 = call double @sqrt(double %132) #6, !dbg !3804
  store double %133, double* %14, align 8, !dbg !3802
  call void @llvm.dbg.declare(metadata double* %15, metadata !3805, metadata !60), !dbg !3806
  %134 = load double, double* %5, align 8, !dbg !3807
  %135 = load double, double* %13, align 8, !dbg !3808
  %136 = fmul double %134, %135, !dbg !3809
  store double %136, double* %15, align 8, !dbg !3806
  call void @llvm.dbg.declare(metadata double* %16, metadata !3810, metadata !60), !dbg !3811
  %137 = load double, double* %15, align 8, !dbg !3812
  %138 = call double @fabs(double %137) #1, !dbg !3813
  %139 = fmul double 0x3CC0000000000000, %138, !dbg !3814
  store double %139, double* %16, align 8, !dbg !3811
  %140 = load double, double* %15, align 8, !dbg !3815
  %141 = fcmp olt double %140, 0x3E50000000000000, !dbg !3817
  br i1 %141, label %142, label %156, !dbg !3818

; <label>:142:                                    ; preds = %120
  %143 = load double, double* %14, align 8, !dbg !3819
  %144 = fdiv double 0x3FE9884533D43651, %143, !dbg !3821
  %145 = load double, double* %13, align 8, !dbg !3822
  %146 = fmul double %144, %145, !dbg !3823
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3824
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 0, !dbg !3825
  store double %146, double* %148, align 8, !dbg !3826
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3827
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 0, !dbg !3828
  %151 = load double, double* %150, align 8, !dbg !3828
  %152 = call double @fabs(double %151) #1, !dbg !3829
  %153 = fmul double 0x3CC0000000000000, %152, !dbg !3830
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3831
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %154, i32 0, i32 1, !dbg !3832
  store double %153, double* %155, align 8, !dbg !3833
  store i32 0, i32* %4, align 4, !dbg !3834
  br label %189, !dbg !3834

; <label>:156:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !3835, metadata !60), !dbg !3837
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3838, metadata !60), !dbg !3839
  %157 = load double, double* %15, align 8, !dbg !3840
  %158 = load double, double* %16, align 8, !dbg !3841
  %159 = call i32 @gsl_sf_sin_err_e(double %157, double %158, %struct.gsl_sf_result_struct* %17), !dbg !3842
  store i32 %159, i32* %18, align 4, !dbg !3839
  %160 = load double, double* %14, align 8, !dbg !3843
  %161 = load double, double* %5, align 8, !dbg !3844
  %162 = fmul double %160, %161, !dbg !3845
  %163 = fdiv double 0x3FE9884533D43651, %162, !dbg !3846
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !3847
  %165 = load double, double* %164, align 8, !dbg !3847
  %166 = fmul double %163, %165, !dbg !3848
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3849
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !3850
  store double %166, double* %168, align 8, !dbg !3851
  %169 = load double, double* %14, align 8, !dbg !3852
  %170 = load double, double* %5, align 8, !dbg !3853
  %171 = fmul double %169, %170, !dbg !3854
  %172 = call double @fabs(double %171) #1, !dbg !3855
  %173 = fdiv double 0x3FE9884533D43651, %172, !dbg !3856
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !3857
  %175 = load double, double* %174, align 8, !dbg !3857
  %176 = fmul double %173, %175, !dbg !3858
  %177 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3859
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %177, i32 0, i32 1, !dbg !3860
  store double %176, double* %178, align 8, !dbg !3861
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3862
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %179, i32 0, i32 0, !dbg !3863
  %181 = load double, double* %180, align 8, !dbg !3863
  %182 = call double @fabs(double %181) #1, !dbg !3864
  %183 = fmul double 0x3CC8000000000000, %182, !dbg !3865
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !3866
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 1, !dbg !3867
  %186 = load double, double* %185, align 8, !dbg !3868
  %187 = fadd double %186, %183, !dbg !3868
  store double %187, double* %185, align 8, !dbg !3868
  %188 = load i32, i32* %18, align 4, !dbg !3869
  store i32 %188, i32* %4, align 4, !dbg !3870
  br label %189, !dbg !3870

; <label>:189:                                    ; preds = %27, %111, %115, %142, %156, %29
  %190 = load i32, i32* %4, align 4, !dbg !3871
  ret i32 %190, !dbg !3871
}

declare i32 @gsl_sf_sin_err_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_conicalP_sph_reg_e(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !3872 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca %struct.gsl_sf_result_struct, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  %39 = alloca double, align 8
  %40 = alloca %struct.gsl_sf_result_struct, align 8
  %41 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3875, metadata !60), !dbg !3876
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3877, metadata !60), !dbg !3878
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3879, metadata !60), !dbg !3880
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !3881, metadata !60), !dbg !3882
  %42 = load double, double* %8, align 8, !dbg !3883
  %43 = fcmp ole double %42, -1.000000e+00, !dbg !3885
  br i1 %43, label %47, label %44, !dbg !3886

; <label>:44:                                     ; preds = %4
  %45 = load i32, i32* %6, align 4, !dbg !3887
  %46 = icmp slt i32 %45, -1, !dbg !3889
  br i1 %46, label %47, label %56, !dbg !3890

; <label>:47:                                     ; preds = %44, %4
  br label %48, !dbg !3891, !llvm.loop !3893

; <label>:48:                                     ; preds = %47
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3894
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !3894
  store double 0x7FF8000000000000, double* %50, align 8, !dbg !3894
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3894
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !3894
  store double 0x7FF8000000000000, double* %52, align 8, !dbg !3894
  br label %53, !dbg !3894, !llvm.loop !3897

; <label>:53:                                     ; preds = %48
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1117, i32 1), !dbg !3899
  store i32 1, i32* %5, align 4, !dbg !3899
  br label %464, !dbg !3899
                                                  ; No predecessors!
  br label %55, !dbg !3902

; <label>:55:                                     ; preds = %54
  br label %464, !dbg !3904

; <label>:56:                                     ; preds = %44
  %57 = load i32, i32* %6, align 4, !dbg !3905
  %58 = icmp eq i32 %57, -1, !dbg !3907
  br i1 %58, label %59, label %64, !dbg !3908

; <label>:59:                                     ; preds = %56
  %60 = load double, double* %7, align 8, !dbg !3909
  %61 = load double, double* %8, align 8, !dbg !3911
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3912
  %63 = call i32 @gsl_sf_conicalP_half_e(double %60, double %61, %struct.gsl_sf_result_struct* %62), !dbg !3913
  store i32 %63, i32* %5, align 4, !dbg !3914
  br label %464, !dbg !3914

; <label>:64:                                     ; preds = %56
  %65 = load i32, i32* %6, align 4, !dbg !3915
  %66 = icmp eq i32 %65, 0, !dbg !3917
  br i1 %66, label %67, label %72, !dbg !3918

; <label>:67:                                     ; preds = %64
  %68 = load double, double* %7, align 8, !dbg !3919
  %69 = load double, double* %8, align 8, !dbg !3921
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3922
  %71 = call i32 @gsl_sf_conicalP_mhalf_e(double %68, double %69, %struct.gsl_sf_result_struct* %70), !dbg !3923
  store i32 %71, i32* %5, align 4, !dbg !3924
  br label %464, !dbg !3924

; <label>:72:                                     ; preds = %64
  %73 = load double, double* %8, align 8, !dbg !3925
  %74 = fcmp oeq double %73, 1.000000e+00, !dbg !3927
  br i1 %74, label %75, label %80, !dbg !3928

; <label>:75:                                     ; preds = %72
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3929
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !3931
  store double 0.000000e+00, double* %77, align 8, !dbg !3932
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3933
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !3934
  store double 0.000000e+00, double* %79, align 8, !dbg !3935
  store i32 0, i32* %5, align 4, !dbg !3936
  br label %464, !dbg !3936

; <label>:80:                                     ; preds = %72
  %81 = load double, double* %8, align 8, !dbg !3937
  %82 = fcmp olt double %81, 0.000000e+00, !dbg !3939
  br i1 %82, label %83, label %176, !dbg !3940

; <label>:83:                                     ; preds = %80
  call void @llvm.dbg.declare(metadata double* %10, metadata !3941, metadata !60), !dbg !3943
  %84 = load double, double* %8, align 8, !dbg !3944
  %85 = load double, double* %8, align 8, !dbg !3945
  %86 = fmul double %84, %85, !dbg !3946
  %87 = fsub double 1.000000e+00, %86, !dbg !3947
  %88 = call double @sqrt(double %87) #6, !dbg !3948
  %89 = fdiv double 1.000000e+00, %88, !dbg !3949
  store double %89, double* %10, align 8, !dbg !3943
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !3950, metadata !60), !dbg !3951
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !3952, metadata !60), !dbg !3953
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3954, metadata !60), !dbg !3955
  %90 = load double, double* %7, align 8, !dbg !3956
  %91 = load double, double* %8, align 8, !dbg !3957
  %92 = call i32 @gsl_sf_conicalP_half_e(double %90, double %91, %struct.gsl_sf_result_struct* %11), !dbg !3958
  store i32 %92, i32* %13, align 4, !dbg !3955
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3959, metadata !60), !dbg !3960
  %93 = load double, double* %7, align 8, !dbg !3961
  %94 = load double, double* %8, align 8, !dbg !3962
  %95 = call i32 @gsl_sf_conicalP_mhalf_e(double %93, double %94, %struct.gsl_sf_result_struct* %12), !dbg !3963
  store i32 %95, i32* %14, align 4, !dbg !3960
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3964, metadata !60), !dbg !3965
  %96 = load i32, i32* %13, align 4, !dbg !3966
  %97 = icmp ne i32 %96, 0, !dbg !3966
  br i1 %97, label %98, label %100, !dbg !3966

; <label>:98:                                     ; preds = %83
  %99 = load i32, i32* %13, align 4, !dbg !3967
  br label %108, !dbg !3967

; <label>:100:                                    ; preds = %83
  %101 = load i32, i32* %14, align 4, !dbg !3969
  %102 = icmp ne i32 %101, 0, !dbg !3969
  br i1 %102, label %103, label %105, !dbg !3969

; <label>:103:                                    ; preds = %100
  %104 = load i32, i32* %14, align 4, !dbg !3971
  br label %106, !dbg !3971

; <label>:105:                                    ; preds = %100
  br label %106, !dbg !3973

; <label>:106:                                    ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ], !dbg !3975
  br label %108, !dbg !3975

; <label>:108:                                    ; preds = %106, %98
  %109 = phi i32 [ %99, %98 ], [ %107, %106 ], !dbg !3977
  store i32 %109, i32* %15, align 4, !dbg !3979
  call void @llvm.dbg.declare(metadata double* %16, metadata !3980, metadata !60), !dbg !3981
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !3982
  %111 = load double, double* %110, align 8, !dbg !3982
  store double %111, double* %16, align 8, !dbg !3981
  call void @llvm.dbg.declare(metadata double* %17, metadata !3983, metadata !60), !dbg !3984
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !3985
  %113 = load double, double* %112, align 8, !dbg !3985
  store double %113, double* %17, align 8, !dbg !3984
  call void @llvm.dbg.declare(metadata double* %18, metadata !3986, metadata !60), !dbg !3987
  call void @llvm.dbg.declare(metadata i32* %19, metadata !3988, metadata !60), !dbg !3989
  store i32 0, i32* %19, align 4, !dbg !3990
  br label %114, !dbg !3992

; <label>:114:                                    ; preds = %146, %108
  %115 = load i32, i32* %19, align 4, !dbg !3993
  %116 = load i32, i32* %6, align 4, !dbg !3996
  %117 = icmp slt i32 %115, %116, !dbg !3997
  br i1 %117, label %118, label %149, !dbg !3998

; <label>:118:                                    ; preds = %114
  call void @llvm.dbg.declare(metadata double* %20, metadata !3999, metadata !60), !dbg !4001
  %119 = load i32, i32* %19, align 4, !dbg !4002
  %120 = sitofp i32 %119 to double, !dbg !4002
  %121 = fadd double %120, 1.000000e+00, !dbg !4003
  %122 = load i32, i32* %19, align 4, !dbg !4004
  %123 = sitofp i32 %122 to double, !dbg !4004
  %124 = fadd double %123, 1.000000e+00, !dbg !4005
  %125 = fmul double %121, %124, !dbg !4006
  %126 = load double, double* %7, align 8, !dbg !4007
  %127 = load double, double* %7, align 8, !dbg !4008
  %128 = fmul double %126, %127, !dbg !4009
  %129 = fadd double %125, %128, !dbg !4010
  store double %129, double* %20, align 8, !dbg !4001
  %130 = load double, double* %16, align 8, !dbg !4011
  %131 = load i32, i32* %19, align 4, !dbg !4012
  %132 = sitofp i32 %131 to double, !dbg !4012
  %133 = fmul double 2.000000e+00, %132, !dbg !4013
  %134 = fadd double %133, 1.000000e+00, !dbg !4014
  %135 = load double, double* %10, align 8, !dbg !4015
  %136 = fmul double %134, %135, !dbg !4016
  %137 = load double, double* %8, align 8, !dbg !4017
  %138 = fmul double %136, %137, !dbg !4018
  %139 = load double, double* %17, align 8, !dbg !4019
  %140 = fmul double %138, %139, !dbg !4020
  %141 = fsub double %130, %140, !dbg !4021
  %142 = load double, double* %20, align 8, !dbg !4022
  %143 = fdiv double %141, %142, !dbg !4023
  store double %143, double* %18, align 8, !dbg !4024
  %144 = load double, double* %17, align 8, !dbg !4025
  store double %144, double* %16, align 8, !dbg !4026
  %145 = load double, double* %18, align 8, !dbg !4027
  store double %145, double* %17, align 8, !dbg !4028
  br label %146, !dbg !4029

; <label>:146:                                    ; preds = %118
  %147 = load i32, i32* %19, align 4, !dbg !4030
  %148 = add nsw i32 %147, 1, !dbg !4030
  store i32 %148, i32* %19, align 4, !dbg !4030
  br label %114, !dbg !4032, !llvm.loop !4033

; <label>:149:                                    ; preds = %114
  %150 = load double, double* %17, align 8, !dbg !4035
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4036
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 0, !dbg !4037
  store double %150, double* %152, align 8, !dbg !4038
  %153 = load i32, i32* %6, align 4, !dbg !4039
  %154 = sitofp i32 %153 to double, !dbg !4039
  %155 = fmul double 5.000000e-01, %154, !dbg !4040
  %156 = fadd double %155, 1.000000e+00, !dbg !4041
  %157 = fmul double %156, 0x3CB0000000000000, !dbg !4042
  %158 = load double, double* %17, align 8, !dbg !4043
  %159 = call double @fabs(double %158) #1, !dbg !4044
  %160 = fmul double %157, %159, !dbg !4045
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4046
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 1, !dbg !4047
  store double %160, double* %162, align 8, !dbg !4048
  %163 = load i32, i32* %6, align 4, !dbg !4049
  %164 = sitofp i32 %163 to double, !dbg !4049
  %165 = fmul double 0x3CB0000000000000, %164, !dbg !4050
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4051
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 0, !dbg !4052
  %168 = load double, double* %167, align 8, !dbg !4052
  %169 = call double @fabs(double %168) #1, !dbg !4053
  %170 = fmul double %165, %169, !dbg !4054
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4055
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !4056
  %173 = load double, double* %172, align 8, !dbg !4057
  %174 = fadd double %173, %170, !dbg !4057
  store double %174, double* %172, align 8, !dbg !4057
  %175 = load i32, i32* %15, align 4, !dbg !4058
  store i32 %175, i32* %5, align 4, !dbg !4059
  br label %464, !dbg !4059

; <label>:176:                                    ; preds = %80
  %177 = load double, double* %8, align 8, !dbg !4060
  %178 = fcmp olt double %177, 1.000000e+00, !dbg !4062
  br i1 %178, label %179, label %290, !dbg !4063

; <label>:179:                                    ; preds = %176
  call void @llvm.dbg.declare(metadata double* %21, metadata !4064, metadata !60), !dbg !4066
  %180 = load double, double* %8, align 8, !dbg !4067
  %181 = load double, double* %8, align 8, !dbg !4068
  %182 = fsub double 1.000000e+00, %181, !dbg !4069
  %183 = call double @sqrt(double %182) #6, !dbg !4070
  %184 = load double, double* %8, align 8, !dbg !4071
  %185 = fadd double 1.000000e+00, %184, !dbg !4072
  %186 = call double @sqrt(double %185) #6, !dbg !4073
  %187 = fmul double %183, %186, !dbg !4075
  %188 = fdiv double %180, %187, !dbg !4076
  store double %188, double* %21, align 8, !dbg !4066
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !4077, metadata !60), !dbg !4078
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !4079, metadata !60), !dbg !4080
  call void @llvm.dbg.declare(metadata i32* %24, metadata !4081, metadata !60), !dbg !4082
  %189 = load i32, i32* %6, align 4, !dbg !4083
  %190 = load double, double* %7, align 8, !dbg !4084
  %191 = load double, double* %8, align 8, !dbg !4085
  %192 = call i32 @conicalP_negmu_xlt1_CF1(double 5.000000e-01, i32 %189, double %190, double %191, %struct.gsl_sf_result_struct* %22), !dbg !4086
  store i32 %192, i32* %24, align 4, !dbg !4082
  call void @llvm.dbg.declare(metadata i32* %25, metadata !4087, metadata !60), !dbg !4088
  %193 = load double, double* %7, align 8, !dbg !4089
  %194 = load double, double* %8, align 8, !dbg !4090
  %195 = call i32 @gsl_sf_conicalP_half_e(double %193, double %194, %struct.gsl_sf_result_struct* %23), !dbg !4091
  store i32 %195, i32* %25, align 4, !dbg !4088
  call void @llvm.dbg.declare(metadata double* %26, metadata !4092, metadata !60), !dbg !4093
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !4094
  %197 = load double, double* %196, align 8, !dbg !4094
  %198 = fmul double %197, 0x2000000000000000, !dbg !4095
  store double %198, double* %26, align 8, !dbg !4093
  call void @llvm.dbg.declare(metadata double* %27, metadata !4096, metadata !60), !dbg !4097
  store double 0x2000000000000000, double* %27, align 8, !dbg !4097
  call void @llvm.dbg.declare(metadata double* %28, metadata !4098, metadata !60), !dbg !4099
  call void @llvm.dbg.declare(metadata i32* %29, metadata !4100, metadata !60), !dbg !4101
  %199 = load i32, i32* %6, align 4, !dbg !4102
  store i32 %199, i32* %29, align 4, !dbg !4104
  br label %200, !dbg !4105

; <label>:200:                                    ; preds = %229, %179
  %201 = load i32, i32* %29, align 4, !dbg !4106
  %202 = icmp sge i32 %201, 0, !dbg !4109
  br i1 %202, label %203, label %232, !dbg !4110

; <label>:203:                                    ; preds = %200
  call void @llvm.dbg.declare(metadata double* %30, metadata !4111, metadata !60), !dbg !4113
  %204 = load i32, i32* %29, align 4, !dbg !4114
  %205 = sitofp i32 %204 to double, !dbg !4114
  %206 = fadd double %205, 1.000000e+00, !dbg !4115
  %207 = load i32, i32* %29, align 4, !dbg !4116
  %208 = sitofp i32 %207 to double, !dbg !4116
  %209 = fadd double %208, 1.000000e+00, !dbg !4117
  %210 = fmul double %206, %209, !dbg !4118
  %211 = load double, double* %7, align 8, !dbg !4119
  %212 = load double, double* %7, align 8, !dbg !4120
  %213 = fmul double %211, %212, !dbg !4121
  %214 = fadd double %210, %213, !dbg !4122
  store double %214, double* %30, align 8, !dbg !4113
  %215 = load i32, i32* %29, align 4, !dbg !4123
  %216 = sitofp i32 %215 to double, !dbg !4123
  %217 = fmul double 2.000000e+00, %216, !dbg !4124
  %218 = fadd double %217, 1.000000e+00, !dbg !4125
  %219 = load double, double* %21, align 8, !dbg !4126
  %220 = fmul double %218, %219, !dbg !4127
  %221 = load double, double* %27, align 8, !dbg !4128
  %222 = fmul double %220, %221, !dbg !4129
  %223 = load double, double* %30, align 8, !dbg !4130
  %224 = load double, double* %26, align 8, !dbg !4131
  %225 = fmul double %223, %224, !dbg !4132
  %226 = fadd double %222, %225, !dbg !4133
  store double %226, double* %28, align 8, !dbg !4134
  %227 = load double, double* %27, align 8, !dbg !4135
  store double %227, double* %26, align 8, !dbg !4136
  %228 = load double, double* %28, align 8, !dbg !4137
  store double %228, double* %27, align 8, !dbg !4138
  br label %229, !dbg !4139

; <label>:229:                                    ; preds = %203
  %230 = load i32, i32* %29, align 4, !dbg !4140
  %231 = add nsw i32 %230, -1, !dbg !4140
  store i32 %231, i32* %29, align 4, !dbg !4140
  br label %200, !dbg !4142, !llvm.loop !4143

; <label>:232:                                    ; preds = %200
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !4145
  %234 = load double, double* %233, align 8, !dbg !4145
  %235 = fmul double 0x2000000000000000, %234, !dbg !4146
  %236 = load double, double* %27, align 8, !dbg !4147
  %237 = fdiv double %235, %236, !dbg !4148
  %238 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4149
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %238, i32 0, i32 0, !dbg !4150
  store double %237, double* %239, align 8, !dbg !4151
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !4152
  %241 = load double, double* %240, align 8, !dbg !4152
  %242 = fmul double 0x2000000000000000, %241, !dbg !4153
  %243 = load double, double* %27, align 8, !dbg !4154
  %244 = call double @fabs(double %243) #1, !dbg !4155
  %245 = fdiv double %242, %244, !dbg !4156
  %246 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4157
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %246, i32 0, i32 1, !dbg !4158
  store double %245, double* %247, align 8, !dbg !4159
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !4160
  %249 = load double, double* %248, align 8, !dbg !4160
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !4161
  %251 = load double, double* %250, align 8, !dbg !4161
  %252 = fdiv double %249, %251, !dbg !4162
  %253 = call double @fabs(double %252) #1, !dbg !4163
  %254 = load i32, i32* %6, align 4, !dbg !4164
  %255 = sitofp i32 %254 to double, !dbg !4164
  %256 = fadd double %255, 1.000000e+00, !dbg !4165
  %257 = fmul double %253, %256, !dbg !4166
  %258 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4167
  %259 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %258, i32 0, i32 0, !dbg !4168
  %260 = load double, double* %259, align 8, !dbg !4168
  %261 = call double @fabs(double %260) #1, !dbg !4169
  %262 = fmul double %257, %261, !dbg !4170
  %263 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4171
  %264 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %263, i32 0, i32 1, !dbg !4172
  %265 = load double, double* %264, align 8, !dbg !4173
  %266 = fadd double %265, %262, !dbg !4173
  store double %266, double* %264, align 8, !dbg !4173
  %267 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4174
  %268 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %267, i32 0, i32 0, !dbg !4175
  %269 = load double, double* %268, align 8, !dbg !4175
  %270 = call double @fabs(double %269) #1, !dbg !4176
  %271 = fmul double 0x3CC0000000000000, %270, !dbg !4177
  %272 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4178
  %273 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %272, i32 0, i32 1, !dbg !4179
  %274 = load double, double* %273, align 8, !dbg !4180
  %275 = fadd double %274, %271, !dbg !4180
  store double %275, double* %273, align 8, !dbg !4180
  %276 = load i32, i32* %25, align 4, !dbg !4181
  %277 = icmp ne i32 %276, 0, !dbg !4181
  br i1 %277, label %278, label %280, !dbg !4181

; <label>:278:                                    ; preds = %232
  %279 = load i32, i32* %25, align 4, !dbg !4182
  br label %288, !dbg !4182

; <label>:280:                                    ; preds = %232
  %281 = load i32, i32* %24, align 4, !dbg !4183
  %282 = icmp ne i32 %281, 0, !dbg !4183
  br i1 %282, label %283, label %285, !dbg !4183

; <label>:283:                                    ; preds = %280
  %284 = load i32, i32* %24, align 4, !dbg !4185
  br label %286, !dbg !4185

; <label>:285:                                    ; preds = %280
  br label %286, !dbg !4187

; <label>:286:                                    ; preds = %285, %283
  %287 = phi i32 [ %284, %283 ], [ 0, %285 ], !dbg !4189
  br label %288, !dbg !4189

; <label>:288:                                    ; preds = %286, %278
  %289 = phi i32 [ %279, %278 ], [ %287, %286 ], !dbg !4191
  store i32 %289, i32* %5, align 4, !dbg !4193
  br label %464, !dbg !4193

; <label>:290:                                    ; preds = %176
  %291 = load double, double* %8, align 8, !dbg !4194
  %292 = fcmp oeq double %291, 1.000000e+00, !dbg !4196
  br i1 %292, label %293, label %298, !dbg !4197

; <label>:293:                                    ; preds = %290
  %294 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4198
  %295 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %294, i32 0, i32 0, !dbg !4200
  store double 0.000000e+00, double* %295, align 8, !dbg !4201
  %296 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4202
  %297 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %296, i32 0, i32 1, !dbg !4203
  store double 0.000000e+00, double* %297, align 8, !dbg !4204
  store i32 0, i32* %5, align 4, !dbg !4205
  br label %464, !dbg !4205

; <label>:298:                                    ; preds = %290
  call void @llvm.dbg.declare(metadata double* %31, metadata !4206, metadata !60), !dbg !4208
  %299 = load double, double* %8, align 8, !dbg !4209
  %300 = load double, double* %8, align 8, !dbg !4210
  %301 = fsub double %300, 1.000000e+00, !dbg !4211
  %302 = load double, double* %8, align 8, !dbg !4212
  %303 = fadd double %302, 1.000000e+00, !dbg !4213
  %304 = fmul double %301, %303, !dbg !4214
  %305 = call double @sqrt(double %304) #6, !dbg !4215
  %306 = fdiv double %299, %305, !dbg !4216
  store double %306, double* %31, align 8, !dbg !4208
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %32, metadata !4217, metadata !60), !dbg !4218
  call void @llvm.dbg.declare(metadata i32* %33, metadata !4219, metadata !60), !dbg !4220
  %307 = load i32, i32* %6, align 4, !dbg !4221
  %308 = load double, double* %7, align 8, !dbg !4222
  %309 = load double, double* %8, align 8, !dbg !4223
  %310 = call i32 @conicalP_negmu_xgt1_CF1(double 5.000000e-01, i32 %307, double %308, double %309, %struct.gsl_sf_result_struct* %32), !dbg !4224
  store i32 %310, i32* %33, align 4, !dbg !4220
  call void @llvm.dbg.declare(metadata i32* %34, metadata !4225, metadata !60), !dbg !4226
  call void @llvm.dbg.declare(metadata double* %35, metadata !4227, metadata !60), !dbg !4228
  %311 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !4229
  %312 = load double, double* %311, align 8, !dbg !4229
  %313 = fmul double %312, 0x2000000000000000, !dbg !4230
  store double %313, double* %35, align 8, !dbg !4228
  call void @llvm.dbg.declare(metadata double* %36, metadata !4231, metadata !60), !dbg !4232
  store double 0x2000000000000000, double* %36, align 8, !dbg !4232
  call void @llvm.dbg.declare(metadata double* %37, metadata !4233, metadata !60), !dbg !4234
  call void @llvm.dbg.declare(metadata i32* %38, metadata !4235, metadata !60), !dbg !4236
  %314 = load i32, i32* %6, align 4, !dbg !4237
  store i32 %314, i32* %38, align 4, !dbg !4239
  br label %315, !dbg !4240

; <label>:315:                                    ; preds = %344, %298
  %316 = load i32, i32* %38, align 4, !dbg !4241
  %317 = icmp sge i32 %316, 0, !dbg !4244
  br i1 %317, label %318, label %347, !dbg !4245

; <label>:318:                                    ; preds = %315
  call void @llvm.dbg.declare(metadata double* %39, metadata !4246, metadata !60), !dbg !4248
  %319 = load i32, i32* %38, align 4, !dbg !4249
  %320 = sitofp i32 %319 to double, !dbg !4249
  %321 = fadd double %320, 1.000000e+00, !dbg !4250
  %322 = load i32, i32* %38, align 4, !dbg !4251
  %323 = sitofp i32 %322 to double, !dbg !4251
  %324 = fadd double %323, 1.000000e+00, !dbg !4252
  %325 = fmul double %321, %324, !dbg !4253
  %326 = load double, double* %7, align 8, !dbg !4254
  %327 = load double, double* %7, align 8, !dbg !4255
  %328 = fmul double %326, %327, !dbg !4256
  %329 = fadd double %325, %328, !dbg !4257
  store double %329, double* %39, align 8, !dbg !4248
  %330 = load i32, i32* %38, align 4, !dbg !4258
  %331 = sitofp i32 %330 to double, !dbg !4258
  %332 = fmul double 2.000000e+00, %331, !dbg !4259
  %333 = fadd double %332, 1.000000e+00, !dbg !4260
  %334 = load double, double* %31, align 8, !dbg !4261
  %335 = fmul double %333, %334, !dbg !4262
  %336 = load double, double* %36, align 8, !dbg !4263
  %337 = fmul double %335, %336, !dbg !4264
  %338 = load double, double* %39, align 8, !dbg !4265
  %339 = load double, double* %35, align 8, !dbg !4266
  %340 = fmul double %338, %339, !dbg !4267
  %341 = fsub double %337, %340, !dbg !4268
  store double %341, double* %37, align 8, !dbg !4269
  %342 = load double, double* %36, align 8, !dbg !4270
  store double %342, double* %35, align 8, !dbg !4271
  %343 = load double, double* %37, align 8, !dbg !4272
  store double %343, double* %36, align 8, !dbg !4273
  br label %344, !dbg !4274

; <label>:344:                                    ; preds = %318
  %345 = load i32, i32* %38, align 4, !dbg !4275
  %346 = add nsw i32 %345, -1, !dbg !4275
  store i32 %346, i32* %38, align 4, !dbg !4275
  br label %315, !dbg !4277, !llvm.loop !4278

; <label>:347:                                    ; preds = %315
  %348 = load double, double* %36, align 8, !dbg !4280
  %349 = call double @fabs(double %348) #1, !dbg !4282
  %350 = load double, double* %35, align 8, !dbg !4283
  %351 = call double @fabs(double %350) #1, !dbg !4284
  %352 = fcmp ogt double %349, %351, !dbg !4286
  br i1 %352, label %353, label %401, !dbg !4287

; <label>:353:                                    ; preds = %347
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %40, metadata !4288, metadata !60), !dbg !4290
  %354 = load double, double* %7, align 8, !dbg !4291
  %355 = load double, double* %8, align 8, !dbg !4292
  %356 = call i32 @gsl_sf_conicalP_half_e(double %354, double %355, %struct.gsl_sf_result_struct* %40), !dbg !4293
  store i32 %356, i32* %34, align 4, !dbg !4294
  %357 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !4295
  %358 = load double, double* %357, align 8, !dbg !4295
  %359 = fmul double 0x2000000000000000, %358, !dbg !4296
  %360 = load double, double* %36, align 8, !dbg !4297
  %361 = fdiv double %359, %360, !dbg !4298
  %362 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4299
  %363 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %362, i32 0, i32 0, !dbg !4300
  store double %361, double* %363, align 8, !dbg !4301
  %364 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !4302
  %365 = load double, double* %364, align 8, !dbg !4302
  %366 = fmul double 0x2010000000000000, %365, !dbg !4303
  %367 = load double, double* %36, align 8, !dbg !4304
  %368 = call double @fabs(double %367) #1, !dbg !4305
  %369 = fdiv double %366, %368, !dbg !4306
  %370 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4307
  %371 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %370, i32 0, i32 1, !dbg !4308
  store double %369, double* %371, align 8, !dbg !4309
  %372 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !4310
  %373 = load double, double* %372, align 8, !dbg !4310
  %374 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !4311
  %375 = load double, double* %374, align 8, !dbg !4311
  %376 = fdiv double %373, %375, !dbg !4312
  %377 = call double @fabs(double %376) #1, !dbg !4313
  %378 = fmul double 2.000000e+00, %377, !dbg !4314
  %379 = load i32, i32* %6, align 4, !dbg !4315
  %380 = sitofp i32 %379 to double, !dbg !4315
  %381 = fadd double %380, 1.000000e+00, !dbg !4316
  %382 = fmul double %378, %381, !dbg !4317
  %383 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4318
  %384 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %383, i32 0, i32 0, !dbg !4319
  %385 = load double, double* %384, align 8, !dbg !4319
  %386 = call double @fabs(double %385) #1, !dbg !4320
  %387 = fmul double %382, %386, !dbg !4322
  %388 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4323
  %389 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %388, i32 0, i32 1, !dbg !4324
  %390 = load double, double* %389, align 8, !dbg !4325
  %391 = fadd double %390, %387, !dbg !4325
  store double %391, double* %389, align 8, !dbg !4325
  %392 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4326
  %393 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %392, i32 0, i32 0, !dbg !4327
  %394 = load double, double* %393, align 8, !dbg !4327
  %395 = call double @fabs(double %394) #1, !dbg !4328
  %396 = fmul double 0x3CC0000000000000, %395, !dbg !4329
  %397 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4330
  %398 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %397, i32 0, i32 1, !dbg !4331
  %399 = load double, double* %398, align 8, !dbg !4332
  %400 = fadd double %399, %396, !dbg !4332
  store double %400, double* %398, align 8, !dbg !4332
  br label %449, !dbg !4333

; <label>:401:                                    ; preds = %347
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %41, metadata !4334, metadata !60), !dbg !4336
  %402 = load double, double* %7, align 8, !dbg !4337
  %403 = load double, double* %8, align 8, !dbg !4338
  %404 = call i32 @gsl_sf_conicalP_mhalf_e(double %402, double %403, %struct.gsl_sf_result_struct* %41), !dbg !4339
  store i32 %404, i32* %34, align 4, !dbg !4340
  %405 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !4341
  %406 = load double, double* %405, align 8, !dbg !4341
  %407 = fmul double 0x2000000000000000, %406, !dbg !4342
  %408 = load double, double* %35, align 8, !dbg !4343
  %409 = fdiv double %407, %408, !dbg !4344
  %410 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4345
  %411 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %410, i32 0, i32 0, !dbg !4346
  store double %409, double* %411, align 8, !dbg !4347
  %412 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !4348
  %413 = load double, double* %412, align 8, !dbg !4348
  %414 = fmul double 0x2010000000000000, %413, !dbg !4349
  %415 = load double, double* %35, align 8, !dbg !4350
  %416 = call double @fabs(double %415) #1, !dbg !4351
  %417 = fdiv double %414, %416, !dbg !4352
  %418 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4353
  %419 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %418, i32 0, i32 1, !dbg !4354
  store double %417, double* %419, align 8, !dbg !4355
  %420 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !4356
  %421 = load double, double* %420, align 8, !dbg !4356
  %422 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !4357
  %423 = load double, double* %422, align 8, !dbg !4357
  %424 = fdiv double %421, %423, !dbg !4358
  %425 = call double @fabs(double %424) #1, !dbg !4359
  %426 = fmul double 2.000000e+00, %425, !dbg !4360
  %427 = load i32, i32* %6, align 4, !dbg !4361
  %428 = sitofp i32 %427 to double, !dbg !4361
  %429 = fadd double %428, 1.000000e+00, !dbg !4362
  %430 = fmul double %426, %429, !dbg !4363
  %431 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4364
  %432 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %431, i32 0, i32 0, !dbg !4365
  %433 = load double, double* %432, align 8, !dbg !4365
  %434 = call double @fabs(double %433) #1, !dbg !4366
  %435 = fmul double %430, %434, !dbg !4368
  %436 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4369
  %437 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %436, i32 0, i32 1, !dbg !4370
  %438 = load double, double* %437, align 8, !dbg !4371
  %439 = fadd double %438, %435, !dbg !4371
  store double %439, double* %437, align 8, !dbg !4371
  %440 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4372
  %441 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %440, i32 0, i32 0, !dbg !4373
  %442 = load double, double* %441, align 8, !dbg !4373
  %443 = call double @fabs(double %442) #1, !dbg !4374
  %444 = fmul double 0x3CC0000000000000, %443, !dbg !4375
  %445 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4376
  %446 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %445, i32 0, i32 1, !dbg !4377
  %447 = load double, double* %446, align 8, !dbg !4378
  %448 = fadd double %447, %444, !dbg !4378
  store double %448, double* %446, align 8, !dbg !4378
  br label %449

; <label>:449:                                    ; preds = %401, %353
  %450 = load i32, i32* %34, align 4, !dbg !4379
  %451 = icmp ne i32 %450, 0, !dbg !4379
  br i1 %451, label %452, label %454, !dbg !4379

; <label>:452:                                    ; preds = %449
  %453 = load i32, i32* %34, align 4, !dbg !4380
  br label %462, !dbg !4380

; <label>:454:                                    ; preds = %449
  %455 = load i32, i32* %33, align 4, !dbg !4382
  %456 = icmp ne i32 %455, 0, !dbg !4382
  br i1 %456, label %457, label %459, !dbg !4382

; <label>:457:                                    ; preds = %454
  %458 = load i32, i32* %33, align 4, !dbg !4384
  br label %460, !dbg !4384

; <label>:459:                                    ; preds = %454
  br label %460, !dbg !4386

; <label>:460:                                    ; preds = %459, %457
  %461 = phi i32 [ %458, %457 ], [ 0, %459 ], !dbg !4388
  br label %462, !dbg !4388

; <label>:462:                                    ; preds = %460, %452
  %463 = phi i32 [ %453, %452 ], [ %461, %460 ], !dbg !4390
  store i32 %463, i32* %5, align 4, !dbg !4392
  br label %464, !dbg !4392

; <label>:464:                                    ; preds = %53, %59, %67, %75, %149, %288, %293, %462, %55
  %465 = load i32, i32* %5, align 4, !dbg !4393
  ret i32 %465, !dbg !4393
}

; Function Attrs: nounwind uwtable
define internal i32 @conicalP_negmu_xlt1_CF1(double, i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4394 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !4397, metadata !60), !dbg !4398
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4399, metadata !60), !dbg !4400
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !4401, metadata !60), !dbg !4402
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !4403, metadata !60), !dbg !4404
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !4405, metadata !60), !dbg !4406
  call void @llvm.dbg.declare(metadata double* %12, metadata !4407, metadata !60), !dbg !4408
  store double 0x5FEFFFFFFFFFFFFF, double* %12, align 8, !dbg !4408
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4409, metadata !60), !dbg !4410
  store i32 5000, i32* %13, align 4, !dbg !4410
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4411, metadata !60), !dbg !4412
  store i32 1, i32* %14, align 4, !dbg !4412
  call void @llvm.dbg.declare(metadata double* %15, metadata !4413, metadata !60), !dbg !4414
  %29 = load double, double* %10, align 8, !dbg !4415
  %30 = load double, double* %10, align 8, !dbg !4416
  %31 = fsub double 1.000000e+00, %30, !dbg !4417
  %32 = call double @sqrt(double %31) #6, !dbg !4418
  %33 = load double, double* %10, align 8, !dbg !4419
  %34 = fadd double 1.000000e+00, %33, !dbg !4420
  %35 = call double @sqrt(double %34) #6, !dbg !4421
  %36 = fmul double %32, %35, !dbg !4423
  %37 = fdiv double %29, %36, !dbg !4424
  store double %37, double* %15, align 8, !dbg !4414
  call void @llvm.dbg.declare(metadata double* %16, metadata !4425, metadata !60), !dbg !4426
  store double 1.000000e+00, double* %16, align 8, !dbg !4426
  call void @llvm.dbg.declare(metadata double* %17, metadata !4427, metadata !60), !dbg !4428
  store double 0.000000e+00, double* %17, align 8, !dbg !4428
  call void @llvm.dbg.declare(metadata double* %18, metadata !4429, metadata !60), !dbg !4430
  store double 0.000000e+00, double* %18, align 8, !dbg !4430
  call void @llvm.dbg.declare(metadata double* %19, metadata !4431, metadata !60), !dbg !4432
  store double 1.000000e+00, double* %19, align 8, !dbg !4432
  call void @llvm.dbg.declare(metadata double* %20, metadata !4433, metadata !60), !dbg !4434
  store double 1.000000e+00, double* %20, align 8, !dbg !4434
  call void @llvm.dbg.declare(metadata double* %21, metadata !4435, metadata !60), !dbg !4436
  %38 = load double, double* %7, align 8, !dbg !4437
  %39 = load i32, i32* %8, align 4, !dbg !4438
  %40 = sitofp i32 %39 to double, !dbg !4438
  %41 = fadd double %38, %40, !dbg !4439
  %42 = fadd double %41, 1.000000e+00, !dbg !4440
  %43 = fmul double 2.000000e+00, %42, !dbg !4441
  %44 = load double, double* %15, align 8, !dbg !4442
  %45 = fmul double %43, %44, !dbg !4443
  store double %45, double* %21, align 8, !dbg !4436
  call void @llvm.dbg.declare(metadata double* %22, metadata !4444, metadata !60), !dbg !4445
  %46 = load double, double* %21, align 8, !dbg !4446
  %47 = load double, double* %18, align 8, !dbg !4447
  %48 = fmul double %46, %47, !dbg !4448
  %49 = load double, double* %20, align 8, !dbg !4449
  %50 = load double, double* %16, align 8, !dbg !4450
  %51 = fmul double %49, %50, !dbg !4451
  %52 = fadd double %48, %51, !dbg !4452
  store double %52, double* %22, align 8, !dbg !4445
  call void @llvm.dbg.declare(metadata double* %23, metadata !4453, metadata !60), !dbg !4454
  %53 = load double, double* %21, align 8, !dbg !4455
  %54 = load double, double* %19, align 8, !dbg !4456
  %55 = fmul double %53, %54, !dbg !4457
  %56 = load double, double* %20, align 8, !dbg !4458
  %57 = load double, double* %17, align 8, !dbg !4459
  %58 = fmul double %56, %57, !dbg !4460
  %59 = fadd double %55, %58, !dbg !4461
  store double %59, double* %23, align 8, !dbg !4454
  call void @llvm.dbg.declare(metadata double* %24, metadata !4462, metadata !60), !dbg !4463
  call void @llvm.dbg.declare(metadata double* %25, metadata !4464, metadata !60), !dbg !4465
  call void @llvm.dbg.declare(metadata double* %26, metadata !4466, metadata !60), !dbg !4467
  %60 = load double, double* %22, align 8, !dbg !4468
  %61 = load double, double* %23, align 8, !dbg !4469
  %62 = fdiv double %60, %61, !dbg !4470
  store double %62, double* %26, align 8, !dbg !4467
  br label %63, !dbg !4471

; <label>:63:                                     ; preds = %151, %5
  %64 = load i32, i32* %14, align 4, !dbg !4472
  %65 = icmp slt i32 %64, 5000, !dbg !4473
  br i1 %65, label %66, label %152, !dbg !4474

; <label>:66:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata double* %27, metadata !4475, metadata !60), !dbg !4477
  call void @llvm.dbg.declare(metadata double* %28, metadata !4478, metadata !60), !dbg !4479
  %67 = load i32, i32* %14, align 4, !dbg !4480
  %68 = add nsw i32 %67, 1, !dbg !4480
  store i32 %68, i32* %14, align 4, !dbg !4480
  %69 = load double, double* %18, align 8, !dbg !4481
  store double %69, double* %16, align 8, !dbg !4482
  %70 = load double, double* %19, align 8, !dbg !4483
  store double %70, double* %17, align 8, !dbg !4484
  %71 = load double, double* %22, align 8, !dbg !4485
  store double %71, double* %18, align 8, !dbg !4486
  %72 = load double, double* %23, align 8, !dbg !4487
  store double %72, double* %19, align 8, !dbg !4488
  %73 = load double, double* %9, align 8, !dbg !4489
  %74 = load double, double* %9, align 8, !dbg !4490
  %75 = fmul double %73, %74, !dbg !4491
  %76 = load double, double* %7, align 8, !dbg !4492
  %77 = fsub double %76, 5.000000e-01, !dbg !4493
  %78 = load i32, i32* %8, align 4, !dbg !4494
  %79 = sitofp i32 %78 to double, !dbg !4494
  %80 = fadd double %77, %79, !dbg !4495
  %81 = load i32, i32* %14, align 4, !dbg !4496
  %82 = sitofp i32 %81 to double, !dbg !4496
  %83 = fadd double %80, %82, !dbg !4497
  %84 = load double, double* %7, align 8, !dbg !4498
  %85 = fsub double %84, 5.000000e-01, !dbg !4499
  %86 = load i32, i32* %8, align 4, !dbg !4500
  %87 = sitofp i32 %86 to double, !dbg !4500
  %88 = fadd double %85, %87, !dbg !4501
  %89 = load i32, i32* %14, align 4, !dbg !4502
  %90 = sitofp i32 %89 to double, !dbg !4502
  %91 = fadd double %88, %90, !dbg !4503
  %92 = fmul double %83, %91, !dbg !4504
  %93 = fadd double %75, %92, !dbg !4505
  store double %93, double* %24, align 8, !dbg !4506
  %94 = load i32, i32* %8, align 4, !dbg !4507
  %95 = sitofp i32 %94 to double, !dbg !4507
  %96 = load double, double* %7, align 8, !dbg !4508
  %97 = fadd double %95, %96, !dbg !4509
  %98 = load i32, i32* %14, align 4, !dbg !4510
  %99 = sitofp i32 %98 to double, !dbg !4510
  %100 = fadd double %97, %99, !dbg !4511
  %101 = fmul double 2.000000e+00, %100, !dbg !4512
  %102 = load double, double* %15, align 8, !dbg !4513
  %103 = fmul double %101, %102, !dbg !4514
  store double %103, double* %25, align 8, !dbg !4515
  %104 = load double, double* %25, align 8, !dbg !4516
  %105 = load double, double* %18, align 8, !dbg !4517
  %106 = fmul double %104, %105, !dbg !4518
  %107 = load double, double* %24, align 8, !dbg !4519
  %108 = load double, double* %16, align 8, !dbg !4520
  %109 = fmul double %107, %108, !dbg !4521
  %110 = fadd double %106, %109, !dbg !4522
  store double %110, double* %22, align 8, !dbg !4523
  %111 = load double, double* %25, align 8, !dbg !4524
  %112 = load double, double* %19, align 8, !dbg !4525
  %113 = fmul double %111, %112, !dbg !4526
  %114 = load double, double* %24, align 8, !dbg !4527
  %115 = load double, double* %17, align 8, !dbg !4528
  %116 = fmul double %114, %115, !dbg !4529
  %117 = fadd double %113, %116, !dbg !4530
  store double %117, double* %23, align 8, !dbg !4531
  %118 = load double, double* %22, align 8, !dbg !4532
  %119 = call double @fabs(double %118) #1, !dbg !4534
  %120 = fcmp ogt double %119, 0x5FEFFFFFFFFFFFFF, !dbg !4535
  br i1 %120, label %125, label %121, !dbg !4536

; <label>:121:                                    ; preds = %66
  %122 = load double, double* %23, align 8, !dbg !4537
  %123 = call double @fabs(double %122) #1, !dbg !4539
  %124 = fcmp ogt double %123, 0x5FEFFFFFFFFFFFFF, !dbg !4540
  br i1 %124, label %125, label %138, !dbg !4541

; <label>:125:                                    ; preds = %121, %66
  %126 = load double, double* %22, align 8, !dbg !4542
  %127 = fdiv double %126, 0x5FEFFFFFFFFFFFFF, !dbg !4542
  store double %127, double* %22, align 8, !dbg !4542
  %128 = load double, double* %23, align 8, !dbg !4544
  %129 = fdiv double %128, 0x5FEFFFFFFFFFFFFF, !dbg !4544
  store double %129, double* %23, align 8, !dbg !4544
  %130 = load double, double* %18, align 8, !dbg !4545
  %131 = fdiv double %130, 0x5FEFFFFFFFFFFFFF, !dbg !4545
  store double %131, double* %18, align 8, !dbg !4545
  %132 = load double, double* %19, align 8, !dbg !4546
  %133 = fdiv double %132, 0x5FEFFFFFFFFFFFFF, !dbg !4546
  store double %133, double* %19, align 8, !dbg !4546
  %134 = load double, double* %16, align 8, !dbg !4547
  %135 = fdiv double %134, 0x5FEFFFFFFFFFFFFF, !dbg !4547
  store double %135, double* %16, align 8, !dbg !4547
  %136 = load double, double* %17, align 8, !dbg !4548
  %137 = fdiv double %136, 0x5FEFFFFFFFFFFFFF, !dbg !4548
  store double %137, double* %17, align 8, !dbg !4548
  br label %138, !dbg !4549

; <label>:138:                                    ; preds = %125, %121
  %139 = load double, double* %26, align 8, !dbg !4550
  store double %139, double* %27, align 8, !dbg !4551
  %140 = load double, double* %22, align 8, !dbg !4552
  %141 = load double, double* %23, align 8, !dbg !4553
  %142 = fdiv double %140, %141, !dbg !4554
  store double %142, double* %26, align 8, !dbg !4555
  %143 = load double, double* %27, align 8, !dbg !4556
  %144 = load double, double* %26, align 8, !dbg !4557
  %145 = fdiv double %143, %144, !dbg !4558
  store double %145, double* %28, align 8, !dbg !4559
  %146 = load double, double* %28, align 8, !dbg !4560
  %147 = fsub double %146, 1.000000e+00, !dbg !4562
  %148 = call double @fabs(double %147) #1, !dbg !4563
  %149 = fcmp olt double %148, 0x3CC0000000000000, !dbg !4564
  br i1 %149, label %150, label %151, !dbg !4565

; <label>:150:                                    ; preds = %138
  br label %152, !dbg !4566

; <label>:151:                                    ; preds = %138
  br label %63, !dbg !4568, !llvm.loop !4570

; <label>:152:                                    ; preds = %150, %63
  %153 = load double, double* %26, align 8, !dbg !4571
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !4572
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %154, i32 0, i32 0, !dbg !4573
  store double %153, double* %155, align 8, !dbg !4574
  %156 = load i32, i32* %14, align 4, !dbg !4575
  %157 = sitofp i32 %156 to double, !dbg !4575
  %158 = call double @sqrt(double %157) #6, !dbg !4576
  %159 = fadd double %158, 1.000000e+00, !dbg !4577
  %160 = fmul double 0x3CD0000000000000, %159, !dbg !4578
  %161 = load double, double* %26, align 8, !dbg !4579
  %162 = call double @fabs(double %161) #1, !dbg !4580
  %163 = fmul double %160, %162, !dbg !4581
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !4582
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 1, !dbg !4583
  store double %163, double* %165, align 8, !dbg !4584
  %166 = load i32, i32* %14, align 4, !dbg !4585
  %167 = icmp sge i32 %166, 5000, !dbg !4587
  br i1 %167, label %168, label %171, !dbg !4588

; <label>:168:                                    ; preds = %152
  br label %169, !dbg !4589, !llvm.loop !4590

; <label>:169:                                    ; preds = %168
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 108, i32 11), !dbg !4591
  store i32 11, i32* %6, align 4, !dbg !4591
  br label %172, !dbg !4591
                                                  ; No predecessors!
  br label %172, !dbg !4594

; <label>:171:                                    ; preds = %152
  store i32 0, i32* %6, align 4, !dbg !4596
  br label %172, !dbg !4596

; <label>:172:                                    ; preds = %169, %171, %170
  %173 = load i32, i32* %6, align 4, !dbg !4597
  ret i32 %173, !dbg !4597
}

; Function Attrs: nounwind uwtable
define internal i32 @conicalP_negmu_xgt1_CF1(double, i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4598 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !4599, metadata !60), !dbg !4600
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4601, metadata !60), !dbg !4602
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !4603, metadata !60), !dbg !4604
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !4605, metadata !60), !dbg !4606
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !4607, metadata !60), !dbg !4608
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4609, metadata !60), !dbg !4610
  store i32 20000, i32* %12, align 4, !dbg !4610
  call void @llvm.dbg.declare(metadata double* %13, metadata !4611, metadata !60), !dbg !4612
  %22 = load double, double* %10, align 8, !dbg !4613
  %23 = load double, double* %10, align 8, !dbg !4614
  %24 = fmul double %22, %23, !dbg !4615
  %25 = fdiv double 1.000000e+00, %24, !dbg !4616
  %26 = fsub double 1.000000e+00, %25, !dbg !4617
  store double %26, double* %13, align 8, !dbg !4612
  call void @llvm.dbg.declare(metadata double* %14, metadata !4618, metadata !60), !dbg !4619
  %27 = load double, double* %10, align 8, !dbg !4620
  %28 = fsub double %27, 1.000000e+00, !dbg !4621
  %29 = call double @sqrt(double %28) #6, !dbg !4622
  %30 = load double, double* %10, align 8, !dbg !4623
  %31 = fadd double %30, 1.000000e+00, !dbg !4624
  %32 = call double @sqrt(double %31) #6, !dbg !4625
  %33 = fmul double %29, %32, !dbg !4627
  %34 = load double, double* %10, align 8, !dbg !4628
  %35 = load i32, i32* %8, align 4, !dbg !4629
  %36 = sitofp i32 %35 to double, !dbg !4629
  %37 = load double, double* %7, align 8, !dbg !4630
  %38 = fadd double %36, %37, !dbg !4631
  %39 = fadd double %38, 1.000000e+00, !dbg !4632
  %40 = fmul double 2.000000e+00, %39, !dbg !4633
  %41 = fmul double %34, %40, !dbg !4634
  %42 = fdiv double %33, %41, !dbg !4635
  store double %42, double* %14, align 8, !dbg !4619
  call void @llvm.dbg.declare(metadata double* %15, metadata !4636, metadata !60), !dbg !4637
  store double 1.000000e+00, double* %15, align 8, !dbg !4637
  call void @llvm.dbg.declare(metadata double* %16, metadata !4638, metadata !60), !dbg !4639
  store double 1.000000e+00, double* %16, align 8, !dbg !4639
  call void @llvm.dbg.declare(metadata double* %17, metadata !4640, metadata !60), !dbg !4641
  store double 0.000000e+00, double* %17, align 8, !dbg !4641
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4642, metadata !60), !dbg !4643
  store i32 1, i32* %18, align 4, !dbg !4644
  br label %43, !dbg !4646

; <label>:43:                                     ; preds = %103, %5
  %44 = load i32, i32* %18, align 4, !dbg !4647
  %45 = icmp slt i32 %44, 20000, !dbg !4650
  br i1 %45, label %46, label %106, !dbg !4651

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata double* %19, metadata !4652, metadata !60), !dbg !4654
  %47 = load i32, i32* %8, align 4, !dbg !4655
  %48 = sitofp i32 %47 to double, !dbg !4655
  %49 = load double, double* %7, align 8, !dbg !4656
  %50 = fadd double %48, %49, !dbg !4657
  %51 = load i32, i32* %18, align 4, !dbg !4658
  %52 = sitofp i32 %51 to double, !dbg !4658
  %53 = fadd double %50, %52, !dbg !4659
  %54 = fmul double 2.000000e+00, %53, !dbg !4660
  store double %54, double* %19, align 8, !dbg !4654
  call void @llvm.dbg.declare(metadata double* %20, metadata !4661, metadata !60), !dbg !4662
  %55 = load i32, i32* %8, align 4, !dbg !4663
  %56 = sitofp i32 %55 to double, !dbg !4663
  %57 = load double, double* %7, align 8, !dbg !4664
  %58 = fadd double %56, %57, !dbg !4665
  %59 = fsub double %58, 5.000000e-01, !dbg !4666
  %60 = fadd double %59, 1.000000e+00, !dbg !4667
  %61 = load i32, i32* %18, align 4, !dbg !4668
  %62 = sitofp i32 %61 to double, !dbg !4668
  %63 = fadd double %60, %62, !dbg !4669
  store double %63, double* %20, align 8, !dbg !4662
  call void @llvm.dbg.declare(metadata double* %21, metadata !4670, metadata !60), !dbg !4671
  %64 = load double, double* %9, align 8, !dbg !4672
  %65 = load double, double* %9, align 8, !dbg !4673
  %66 = fmul double %64, %65, !dbg !4674
  %67 = load double, double* %20, align 8, !dbg !4675
  %68 = load double, double* %20, align 8, !dbg !4676
  %69 = fmul double %67, %68, !dbg !4677
  %70 = fadd double %66, %69, !dbg !4678
  %71 = fsub double -0.000000e+00, %70, !dbg !4679
  %72 = load double, double* %19, align 8, !dbg !4680
  %73 = load double, double* %19, align 8, !dbg !4681
  %74 = fadd double %73, 2.000000e+00, !dbg !4682
  %75 = fmul double %72, %74, !dbg !4683
  %76 = fdiv double %71, %75, !dbg !4684
  %77 = load double, double* %13, align 8, !dbg !4685
  %78 = fmul double %76, %77, !dbg !4686
  store double %78, double* %21, align 8, !dbg !4671
  %79 = load double, double* %21, align 8, !dbg !4687
  %80 = fsub double -0.000000e+00, %79, !dbg !4688
  %81 = load double, double* %17, align 8, !dbg !4689
  %82 = fadd double 1.000000e+00, %81, !dbg !4690
  %83 = fmul double %80, %82, !dbg !4691
  %84 = load double, double* %21, align 8, !dbg !4692
  %85 = load double, double* %17, align 8, !dbg !4693
  %86 = fadd double 1.000000e+00, %85, !dbg !4694
  %87 = fmul double %84, %86, !dbg !4695
  %88 = fadd double 1.000000e+00, %87, !dbg !4696
  %89 = fdiv double %83, %88, !dbg !4697
  store double %89, double* %17, align 8, !dbg !4698
  %90 = load double, double* %17, align 8, !dbg !4699
  %91 = load double, double* %15, align 8, !dbg !4700
  %92 = fmul double %91, %90, !dbg !4700
  store double %92, double* %15, align 8, !dbg !4700
  %93 = load double, double* %15, align 8, !dbg !4701
  %94 = load double, double* %16, align 8, !dbg !4702
  %95 = fadd double %94, %93, !dbg !4702
  store double %95, double* %16, align 8, !dbg !4702
  %96 = load double, double* %15, align 8, !dbg !4703
  %97 = load double, double* %16, align 8, !dbg !4705
  %98 = fdiv double %96, %97, !dbg !4706
  %99 = call double @fabs(double %98) #1, !dbg !4707
  %100 = fcmp olt double %99, 0x3CB0000000000000, !dbg !4708
  br i1 %100, label %101, label %102, !dbg !4709

; <label>:101:                                    ; preds = %46
  br label %106, !dbg !4710

; <label>:102:                                    ; preds = %46
  br label %103, !dbg !4712

; <label>:103:                                    ; preds = %102
  %104 = load i32, i32* %18, align 4, !dbg !4713
  %105 = add nsw i32 %104, 1, !dbg !4713
  store i32 %105, i32* %18, align 4, !dbg !4713
  br label %43, !dbg !4715, !llvm.loop !4716

; <label>:106:                                    ; preds = %101, %43
  %107 = load double, double* %14, align 8, !dbg !4718
  %108 = load double, double* %16, align 8, !dbg !4719
  %109 = fmul double %107, %108, !dbg !4720
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !4721
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !4722
  store double %109, double* %111, align 8, !dbg !4723
  %112 = load double, double* %14, align 8, !dbg !4724
  %113 = load double, double* %15, align 8, !dbg !4725
  %114 = fmul double %112, %113, !dbg !4726
  %115 = call double @fabs(double %114) #1, !dbg !4727
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !4728
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !4729
  store double %115, double* %117, align 8, !dbg !4730
  %118 = load i32, i32* %18, align 4, !dbg !4731
  %119 = sitofp i32 %118 to double, !dbg !4731
  %120 = call double @sqrt(double %119) #6, !dbg !4732
  %121 = fadd double %120, 1.000000e+00, !dbg !4733
  %122 = fmul double 0x3CC0000000000000, %121, !dbg !4734
  %123 = load double, double* %14, align 8, !dbg !4735
  %124 = load double, double* %16, align 8, !dbg !4736
  %125 = fmul double %123, %124, !dbg !4737
  %126 = call double @fabs(double %125) #1, !dbg !4738
  %127 = fmul double %122, %126, !dbg !4739
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !4740
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !4741
  %130 = load double, double* %129, align 8, !dbg !4742
  %131 = fadd double %130, %127, !dbg !4742
  store double %131, double* %129, align 8, !dbg !4742
  %132 = load i32, i32* %18, align 4, !dbg !4743
  %133 = icmp sge i32 %132, 20000, !dbg !4745
  br i1 %133, label %134, label %137, !dbg !4746

; <label>:134:                                    ; preds = %106
  br label %135, !dbg !4747, !llvm.loop !4748

; <label>:135:                                    ; preds = %134
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 147, i32 11), !dbg !4749
  store i32 11, i32* %6, align 4, !dbg !4749
  br label %138, !dbg !4749
                                                  ; No predecessors!
  br label %138, !dbg !4752

; <label>:137:                                    ; preds = %106
  store i32 0, i32* %6, align 4, !dbg !4754
  br label %138, !dbg !4754

; <label>:138:                                    ; preds = %135, %137, %136
  %139 = load i32, i32* %6, align 4, !dbg !4755
  ret i32 %139, !dbg !4755
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_conicalP_cyl_reg_e(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4756 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca %struct.gsl_sf_result_struct, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  %39 = alloca double, align 8
  %40 = alloca %struct.gsl_sf_result_struct, align 8
  %41 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4757, metadata !60), !dbg !4758
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !4759, metadata !60), !dbg !4760
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !4761, metadata !60), !dbg !4762
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !4763, metadata !60), !dbg !4764
  %42 = load double, double* %8, align 8, !dbg !4765
  %43 = fcmp ole double %42, -1.000000e+00, !dbg !4767
  br i1 %43, label %47, label %44, !dbg !4768

; <label>:44:                                     ; preds = %4
  %45 = load i32, i32* %6, align 4, !dbg !4769
  %46 = icmp slt i32 %45, -1, !dbg !4771
  br i1 %46, label %47, label %56, !dbg !4772

; <label>:47:                                     ; preds = %44, %4
  br label %48, !dbg !4773, !llvm.loop !4775

; <label>:48:                                     ; preds = %47
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4776
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !4776
  store double 0x7FF8000000000000, double* %50, align 8, !dbg !4776
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4776
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !4776
  store double 0x7FF8000000000000, double* %52, align 8, !dbg !4776
  br label %53, !dbg !4776, !llvm.loop !4779

; <label>:53:                                     ; preds = %48
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1233, i32 1), !dbg !4781
  store i32 1, i32* %5, align 4, !dbg !4781
  br label %458, !dbg !4781
                                                  ; No predecessors!
  br label %55, !dbg !4784

; <label>:55:                                     ; preds = %54
  br label %458, !dbg !4786

; <label>:56:                                     ; preds = %44
  %57 = load i32, i32* %6, align 4, !dbg !4787
  %58 = icmp eq i32 %57, -1, !dbg !4789
  br i1 %58, label %59, label %64, !dbg !4790

; <label>:59:                                     ; preds = %56
  %60 = load double, double* %7, align 8, !dbg !4791
  %61 = load double, double* %8, align 8, !dbg !4793
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4794
  %63 = call i32 @gsl_sf_conicalP_1_e(double %60, double %61, %struct.gsl_sf_result_struct* %62), !dbg !4795
  store i32 %63, i32* %5, align 4, !dbg !4796
  br label %458, !dbg !4796

; <label>:64:                                     ; preds = %56
  %65 = load i32, i32* %6, align 4, !dbg !4797
  %66 = icmp eq i32 %65, 0, !dbg !4799
  br i1 %66, label %67, label %72, !dbg !4800

; <label>:67:                                     ; preds = %64
  %68 = load double, double* %7, align 8, !dbg !4801
  %69 = load double, double* %8, align 8, !dbg !4803
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4804
  %71 = call i32 @gsl_sf_conicalP_0_e(double %68, double %69, %struct.gsl_sf_result_struct* %70), !dbg !4805
  store i32 %71, i32* %5, align 4, !dbg !4806
  br label %458, !dbg !4806

; <label>:72:                                     ; preds = %64
  %73 = load double, double* %8, align 8, !dbg !4807
  %74 = fcmp oeq double %73, 1.000000e+00, !dbg !4809
  br i1 %74, label %75, label %80, !dbg !4810

; <label>:75:                                     ; preds = %72
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4811
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !4813
  store double 0.000000e+00, double* %77, align 8, !dbg !4814
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4815
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !4816
  store double 0.000000e+00, double* %79, align 8, !dbg !4817
  store i32 0, i32* %5, align 4, !dbg !4818
  br label %458, !dbg !4818

; <label>:80:                                     ; preds = %72
  %81 = load double, double* %8, align 8, !dbg !4819
  %82 = fcmp olt double %81, 0.000000e+00, !dbg !4821
  br i1 %82, label %83, label %171, !dbg !4822

; <label>:83:                                     ; preds = %80
  call void @llvm.dbg.declare(metadata double* %10, metadata !4823, metadata !60), !dbg !4825
  %84 = load double, double* %8, align 8, !dbg !4826
  %85 = load double, double* %8, align 8, !dbg !4827
  %86 = fmul double %84, %85, !dbg !4828
  %87 = fsub double 1.000000e+00, %86, !dbg !4829
  %88 = call double @sqrt(double %87) #6, !dbg !4830
  %89 = fdiv double 1.000000e+00, %88, !dbg !4831
  store double %89, double* %10, align 8, !dbg !4825
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !4832, metadata !60), !dbg !4833
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !4834, metadata !60), !dbg !4835
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4836, metadata !60), !dbg !4837
  %90 = load double, double* %7, align 8, !dbg !4838
  %91 = load double, double* %8, align 8, !dbg !4839
  %92 = call i32 @gsl_sf_conicalP_1_e(double %90, double %91, %struct.gsl_sf_result_struct* %11), !dbg !4840
  store i32 %92, i32* %13, align 4, !dbg !4837
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4841, metadata !60), !dbg !4842
  %93 = load double, double* %7, align 8, !dbg !4843
  %94 = load double, double* %8, align 8, !dbg !4844
  %95 = call i32 @gsl_sf_conicalP_0_e(double %93, double %94, %struct.gsl_sf_result_struct* %12), !dbg !4845
  store i32 %95, i32* %14, align 4, !dbg !4842
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4846, metadata !60), !dbg !4847
  %96 = load i32, i32* %13, align 4, !dbg !4848
  %97 = icmp ne i32 %96, 0, !dbg !4848
  br i1 %97, label %98, label %100, !dbg !4848

; <label>:98:                                     ; preds = %83
  %99 = load i32, i32* %13, align 4, !dbg !4849
  br label %108, !dbg !4849

; <label>:100:                                    ; preds = %83
  %101 = load i32, i32* %14, align 4, !dbg !4851
  %102 = icmp ne i32 %101, 0, !dbg !4851
  br i1 %102, label %103, label %105, !dbg !4851

; <label>:103:                                    ; preds = %100
  %104 = load i32, i32* %14, align 4, !dbg !4853
  br label %106, !dbg !4853

; <label>:105:                                    ; preds = %100
  br label %106, !dbg !4855

; <label>:106:                                    ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ], !dbg !4857
  br label %108, !dbg !4857

; <label>:108:                                    ; preds = %106, %98
  %109 = phi i32 [ %99, %98 ], [ %107, %106 ], !dbg !4859
  store i32 %109, i32* %15, align 4, !dbg !4861
  call void @llvm.dbg.declare(metadata double* %16, metadata !4862, metadata !60), !dbg !4863
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !4864
  %111 = load double, double* %110, align 8, !dbg !4864
  store double %111, double* %16, align 8, !dbg !4863
  call void @llvm.dbg.declare(metadata double* %17, metadata !4865, metadata !60), !dbg !4866
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !4867
  %113 = load double, double* %112, align 8, !dbg !4867
  store double %113, double* %17, align 8, !dbg !4866
  call void @llvm.dbg.declare(metadata double* %18, metadata !4868, metadata !60), !dbg !4869
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4870, metadata !60), !dbg !4871
  store i32 0, i32* %19, align 4, !dbg !4872
  br label %114, !dbg !4874

; <label>:114:                                    ; preds = %145, %108
  %115 = load i32, i32* %19, align 4, !dbg !4875
  %116 = load i32, i32* %6, align 4, !dbg !4878
  %117 = icmp slt i32 %115, %116, !dbg !4879
  br i1 %117, label %118, label %148, !dbg !4880

; <label>:118:                                    ; preds = %114
  call void @llvm.dbg.declare(metadata double* %20, metadata !4881, metadata !60), !dbg !4883
  %119 = load i32, i32* %19, align 4, !dbg !4884
  %120 = sitofp i32 %119 to double, !dbg !4884
  %121 = fadd double %120, 5.000000e-01, !dbg !4885
  %122 = load i32, i32* %19, align 4, !dbg !4886
  %123 = sitofp i32 %122 to double, !dbg !4886
  %124 = fadd double %123, 5.000000e-01, !dbg !4887
  %125 = fmul double %121, %124, !dbg !4888
  %126 = load double, double* %7, align 8, !dbg !4889
  %127 = load double, double* %7, align 8, !dbg !4890
  %128 = fmul double %126, %127, !dbg !4891
  %129 = fadd double %125, %128, !dbg !4892
  store double %129, double* %20, align 8, !dbg !4883
  %130 = load double, double* %16, align 8, !dbg !4893
  %131 = load i32, i32* %19, align 4, !dbg !4894
  %132 = sitofp i32 %131 to double, !dbg !4894
  %133 = fmul double 2.000000e+00, %132, !dbg !4895
  %134 = load double, double* %10, align 8, !dbg !4896
  %135 = fmul double %133, %134, !dbg !4897
  %136 = load double, double* %8, align 8, !dbg !4898
  %137 = fmul double %135, %136, !dbg !4899
  %138 = load double, double* %17, align 8, !dbg !4900
  %139 = fmul double %137, %138, !dbg !4901
  %140 = fsub double %130, %139, !dbg !4902
  %141 = load double, double* %20, align 8, !dbg !4903
  %142 = fdiv double %140, %141, !dbg !4904
  store double %142, double* %18, align 8, !dbg !4905
  %143 = load double, double* %17, align 8, !dbg !4906
  store double %143, double* %16, align 8, !dbg !4907
  %144 = load double, double* %18, align 8, !dbg !4908
  store double %144, double* %17, align 8, !dbg !4909
  br label %145, !dbg !4910

; <label>:145:                                    ; preds = %118
  %146 = load i32, i32* %19, align 4, !dbg !4911
  %147 = add nsw i32 %146, 1, !dbg !4911
  store i32 %147, i32* %19, align 4, !dbg !4911
  br label %114, !dbg !4913, !llvm.loop !4914

; <label>:148:                                    ; preds = %114
  %149 = load double, double* %17, align 8, !dbg !4916
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4917
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !4918
  store double %149, double* %151, align 8, !dbg !4919
  %152 = load i32, i32* %6, align 4, !dbg !4920
  %153 = sitofp i32 %152 to double, !dbg !4920
  %154 = fadd double %153, 2.000000e+00, !dbg !4921
  %155 = fmul double %154, 0x3CB0000000000000, !dbg !4922
  %156 = load double, double* %17, align 8, !dbg !4923
  %157 = call double @fabs(double %156) #1, !dbg !4924
  %158 = fmul double %155, %157, !dbg !4925
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4926
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 1, !dbg !4927
  store double %158, double* %160, align 8, !dbg !4928
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4929
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !4930
  %163 = load double, double* %162, align 8, !dbg !4930
  %164 = call double @fabs(double %163) #1, !dbg !4931
  %165 = fmul double 0x3CC0000000000000, %164, !dbg !4932
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4933
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 1, !dbg !4934
  %168 = load double, double* %167, align 8, !dbg !4935
  %169 = fadd double %168, %165, !dbg !4935
  store double %169, double* %167, align 8, !dbg !4935
  %170 = load i32, i32* %15, align 4, !dbg !4936
  store i32 %170, i32* %5, align 4, !dbg !4937
  br label %458, !dbg !4937

; <label>:171:                                    ; preds = %80
  %172 = load double, double* %8, align 8, !dbg !4938
  %173 = fcmp olt double %172, 1.000000e+00, !dbg !4940
  br i1 %173, label %174, label %285, !dbg !4941

; <label>:174:                                    ; preds = %171
  call void @llvm.dbg.declare(metadata double* %21, metadata !4942, metadata !60), !dbg !4944
  %175 = load double, double* %8, align 8, !dbg !4945
  %176 = load double, double* %8, align 8, !dbg !4946
  %177 = fsub double 1.000000e+00, %176, !dbg !4947
  %178 = call double @sqrt(double %177) #6, !dbg !4948
  %179 = load double, double* %8, align 8, !dbg !4949
  %180 = fadd double 1.000000e+00, %179, !dbg !4950
  %181 = call double @sqrt(double %180) #6, !dbg !4951
  %182 = fmul double %178, %181, !dbg !4953
  %183 = fdiv double %175, %182, !dbg !4954
  store double %183, double* %21, align 8, !dbg !4944
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !4955, metadata !60), !dbg !4956
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !4957, metadata !60), !dbg !4958
  call void @llvm.dbg.declare(metadata i32* %24, metadata !4959, metadata !60), !dbg !4960
  %184 = load i32, i32* %6, align 4, !dbg !4961
  %185 = load double, double* %7, align 8, !dbg !4962
  %186 = load double, double* %8, align 8, !dbg !4963
  %187 = call i32 @conicalP_negmu_xlt1_CF1(double 0.000000e+00, i32 %184, double %185, double %186, %struct.gsl_sf_result_struct* %22), !dbg !4964
  store i32 %187, i32* %24, align 4, !dbg !4960
  call void @llvm.dbg.declare(metadata i32* %25, metadata !4965, metadata !60), !dbg !4966
  %188 = load double, double* %7, align 8, !dbg !4967
  %189 = load double, double* %8, align 8, !dbg !4968
  %190 = call i32 @gsl_sf_conicalP_0_e(double %188, double %189, %struct.gsl_sf_result_struct* %23), !dbg !4969
  store i32 %190, i32* %25, align 4, !dbg !4966
  call void @llvm.dbg.declare(metadata double* %26, metadata !4970, metadata !60), !dbg !4971
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !4972
  %192 = load double, double* %191, align 8, !dbg !4972
  %193 = fmul double %192, 0x2000000000000000, !dbg !4973
  store double %193, double* %26, align 8, !dbg !4971
  call void @llvm.dbg.declare(metadata double* %27, metadata !4974, metadata !60), !dbg !4975
  store double 0x2000000000000000, double* %27, align 8, !dbg !4975
  call void @llvm.dbg.declare(metadata double* %28, metadata !4976, metadata !60), !dbg !4977
  call void @llvm.dbg.declare(metadata i32* %29, metadata !4978, metadata !60), !dbg !4979
  %194 = load i32, i32* %6, align 4, !dbg !4980
  store i32 %194, i32* %29, align 4, !dbg !4982
  br label %195, !dbg !4983

; <label>:195:                                    ; preds = %223, %174
  %196 = load i32, i32* %29, align 4, !dbg !4984
  %197 = icmp sgt i32 %196, 0, !dbg !4987
  br i1 %197, label %198, label %226, !dbg !4988

; <label>:198:                                    ; preds = %195
  call void @llvm.dbg.declare(metadata double* %30, metadata !4989, metadata !60), !dbg !4991
  %199 = load i32, i32* %29, align 4, !dbg !4992
  %200 = sitofp i32 %199 to double, !dbg !4992
  %201 = fadd double %200, 5.000000e-01, !dbg !4993
  %202 = load i32, i32* %29, align 4, !dbg !4994
  %203 = sitofp i32 %202 to double, !dbg !4994
  %204 = fadd double %203, 5.000000e-01, !dbg !4995
  %205 = fmul double %201, %204, !dbg !4996
  %206 = load double, double* %7, align 8, !dbg !4997
  %207 = load double, double* %7, align 8, !dbg !4998
  %208 = fmul double %206, %207, !dbg !4999
  %209 = fadd double %205, %208, !dbg !5000
  store double %209, double* %30, align 8, !dbg !4991
  %210 = load i32, i32* %29, align 4, !dbg !5001
  %211 = sitofp i32 %210 to double, !dbg !5001
  %212 = fmul double 2.000000e+00, %211, !dbg !5002
  %213 = load double, double* %21, align 8, !dbg !5003
  %214 = fmul double %212, %213, !dbg !5004
  %215 = load double, double* %27, align 8, !dbg !5005
  %216 = fmul double %214, %215, !dbg !5006
  %217 = load double, double* %30, align 8, !dbg !5007
  %218 = load double, double* %26, align 8, !dbg !5008
  %219 = fmul double %217, %218, !dbg !5009
  %220 = fadd double %216, %219, !dbg !5010
  store double %220, double* %28, align 8, !dbg !5011
  %221 = load double, double* %27, align 8, !dbg !5012
  store double %221, double* %26, align 8, !dbg !5013
  %222 = load double, double* %28, align 8, !dbg !5014
  store double %222, double* %27, align 8, !dbg !5015
  br label %223, !dbg !5016

; <label>:223:                                    ; preds = %198
  %224 = load i32, i32* %29, align 4, !dbg !5017
  %225 = add nsw i32 %224, -1, !dbg !5017
  store i32 %225, i32* %29, align 4, !dbg !5017
  br label %195, !dbg !5019, !llvm.loop !5020

; <label>:226:                                    ; preds = %195
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !5022
  %228 = load double, double* %227, align 8, !dbg !5022
  %229 = fmul double 0x2000000000000000, %228, !dbg !5023
  %230 = load double, double* %27, align 8, !dbg !5024
  %231 = fdiv double %229, %230, !dbg !5025
  %232 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5026
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %232, i32 0, i32 0, !dbg !5027
  store double %231, double* %233, align 8, !dbg !5028
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !5029
  %235 = load double, double* %234, align 8, !dbg !5029
  %236 = fmul double 0x2010000000000000, %235, !dbg !5030
  %237 = load double, double* %27, align 8, !dbg !5031
  %238 = call double @fabs(double %237) #1, !dbg !5032
  %239 = fdiv double %236, %238, !dbg !5033
  %240 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5034
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %240, i32 0, i32 1, !dbg !5035
  store double %239, double* %241, align 8, !dbg !5036
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !5037
  %243 = load double, double* %242, align 8, !dbg !5037
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !5038
  %245 = load double, double* %244, align 8, !dbg !5038
  %246 = fdiv double %243, %245, !dbg !5039
  %247 = call double @fabs(double %246) #1, !dbg !5040
  %248 = fmul double 2.000000e+00, %247, !dbg !5041
  %249 = load i32, i32* %6, align 4, !dbg !5042
  %250 = sitofp i32 %249 to double, !dbg !5042
  %251 = fadd double %250, 1.000000e+00, !dbg !5043
  %252 = fmul double %248, %251, !dbg !5044
  %253 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5045
  %254 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %253, i32 0, i32 0, !dbg !5046
  %255 = load double, double* %254, align 8, !dbg !5046
  %256 = call double @fabs(double %255) #1, !dbg !5047
  %257 = fmul double %252, %256, !dbg !5048
  %258 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5049
  %259 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %258, i32 0, i32 1, !dbg !5050
  %260 = load double, double* %259, align 8, !dbg !5051
  %261 = fadd double %260, %257, !dbg !5051
  store double %261, double* %259, align 8, !dbg !5051
  %262 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5052
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %262, i32 0, i32 0, !dbg !5053
  %264 = load double, double* %263, align 8, !dbg !5053
  %265 = call double @fabs(double %264) #1, !dbg !5054
  %266 = fmul double 0x3CC0000000000000, %265, !dbg !5055
  %267 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5056
  %268 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %267, i32 0, i32 1, !dbg !5057
  %269 = load double, double* %268, align 8, !dbg !5058
  %270 = fadd double %269, %266, !dbg !5058
  store double %270, double* %268, align 8, !dbg !5058
  %271 = load i32, i32* %25, align 4, !dbg !5059
  %272 = icmp ne i32 %271, 0, !dbg !5059
  br i1 %272, label %273, label %275, !dbg !5059

; <label>:273:                                    ; preds = %226
  %274 = load i32, i32* %25, align 4, !dbg !5060
  br label %283, !dbg !5060

; <label>:275:                                    ; preds = %226
  %276 = load i32, i32* %24, align 4, !dbg !5061
  %277 = icmp ne i32 %276, 0, !dbg !5061
  br i1 %277, label %278, label %280, !dbg !5061

; <label>:278:                                    ; preds = %275
  %279 = load i32, i32* %24, align 4, !dbg !5063
  br label %281, !dbg !5063

; <label>:280:                                    ; preds = %275
  br label %281, !dbg !5065

; <label>:281:                                    ; preds = %280, %278
  %282 = phi i32 [ %279, %278 ], [ 0, %280 ], !dbg !5067
  br label %283, !dbg !5067

; <label>:283:                                    ; preds = %281, %273
  %284 = phi i32 [ %274, %273 ], [ %282, %281 ], !dbg !5069
  store i32 %284, i32* %5, align 4, !dbg !5071
  br label %458, !dbg !5071

; <label>:285:                                    ; preds = %171
  %286 = load double, double* %8, align 8, !dbg !5072
  %287 = fcmp oeq double %286, 1.000000e+00, !dbg !5074
  br i1 %287, label %288, label %293, !dbg !5075

; <label>:288:                                    ; preds = %285
  %289 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5076
  %290 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %289, i32 0, i32 0, !dbg !5078
  store double 0.000000e+00, double* %290, align 8, !dbg !5079
  %291 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5080
  %292 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %291, i32 0, i32 1, !dbg !5081
  store double 0.000000e+00, double* %292, align 8, !dbg !5082
  store i32 0, i32* %5, align 4, !dbg !5083
  br label %458, !dbg !5083

; <label>:293:                                    ; preds = %285
  call void @llvm.dbg.declare(metadata double* %31, metadata !5084, metadata !60), !dbg !5086
  %294 = load double, double* %8, align 8, !dbg !5087
  %295 = load double, double* %8, align 8, !dbg !5088
  %296 = fsub double %295, 1.000000e+00, !dbg !5089
  %297 = load double, double* %8, align 8, !dbg !5090
  %298 = fadd double %297, 1.000000e+00, !dbg !5091
  %299 = fmul double %296, %298, !dbg !5092
  %300 = call double @sqrt(double %299) #6, !dbg !5093
  %301 = fdiv double %294, %300, !dbg !5094
  store double %301, double* %31, align 8, !dbg !5086
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %32, metadata !5095, metadata !60), !dbg !5096
  call void @llvm.dbg.declare(metadata i32* %33, metadata !5097, metadata !60), !dbg !5098
  %302 = load i32, i32* %6, align 4, !dbg !5099
  %303 = load double, double* %7, align 8, !dbg !5100
  %304 = load double, double* %8, align 8, !dbg !5101
  %305 = call i32 @conicalP_negmu_xgt1_CF1(double 0.000000e+00, i32 %302, double %303, double %304, %struct.gsl_sf_result_struct* %32), !dbg !5102
  store i32 %305, i32* %33, align 4, !dbg !5098
  call void @llvm.dbg.declare(metadata i32* %34, metadata !5103, metadata !60), !dbg !5104
  call void @llvm.dbg.declare(metadata double* %35, metadata !5105, metadata !60), !dbg !5106
  %306 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5107
  %307 = load double, double* %306, align 8, !dbg !5107
  %308 = fmul double %307, 0x2000000000000000, !dbg !5108
  store double %308, double* %35, align 8, !dbg !5106
  call void @llvm.dbg.declare(metadata double* %36, metadata !5109, metadata !60), !dbg !5110
  store double 0x2000000000000000, double* %36, align 8, !dbg !5110
  call void @llvm.dbg.declare(metadata double* %37, metadata !5111, metadata !60), !dbg !5112
  call void @llvm.dbg.declare(metadata i32* %38, metadata !5113, metadata !60), !dbg !5114
  %309 = load i32, i32* %6, align 4, !dbg !5115
  store i32 %309, i32* %38, align 4, !dbg !5117
  br label %310, !dbg !5118

; <label>:310:                                    ; preds = %338, %293
  %311 = load i32, i32* %38, align 4, !dbg !5119
  %312 = icmp sgt i32 %311, -1, !dbg !5122
  br i1 %312, label %313, label %341, !dbg !5123

; <label>:313:                                    ; preds = %310
  call void @llvm.dbg.declare(metadata double* %39, metadata !5124, metadata !60), !dbg !5126
  %314 = load i32, i32* %38, align 4, !dbg !5127
  %315 = sitofp i32 %314 to double, !dbg !5127
  %316 = fadd double %315, 5.000000e-01, !dbg !5128
  %317 = load i32, i32* %38, align 4, !dbg !5129
  %318 = sitofp i32 %317 to double, !dbg !5129
  %319 = fadd double %318, 5.000000e-01, !dbg !5130
  %320 = fmul double %316, %319, !dbg !5131
  %321 = load double, double* %7, align 8, !dbg !5132
  %322 = load double, double* %7, align 8, !dbg !5133
  %323 = fmul double %321, %322, !dbg !5134
  %324 = fadd double %320, %323, !dbg !5135
  store double %324, double* %39, align 8, !dbg !5126
  %325 = load i32, i32* %38, align 4, !dbg !5136
  %326 = sitofp i32 %325 to double, !dbg !5136
  %327 = fmul double 2.000000e+00, %326, !dbg !5137
  %328 = load double, double* %31, align 8, !dbg !5138
  %329 = fmul double %327, %328, !dbg !5139
  %330 = load double, double* %36, align 8, !dbg !5140
  %331 = fmul double %329, %330, !dbg !5141
  %332 = load double, double* %39, align 8, !dbg !5142
  %333 = load double, double* %35, align 8, !dbg !5143
  %334 = fmul double %332, %333, !dbg !5144
  %335 = fsub double %331, %334, !dbg !5145
  store double %335, double* %37, align 8, !dbg !5146
  %336 = load double, double* %36, align 8, !dbg !5147
  store double %336, double* %35, align 8, !dbg !5148
  %337 = load double, double* %37, align 8, !dbg !5149
  store double %337, double* %36, align 8, !dbg !5150
  br label %338, !dbg !5151

; <label>:338:                                    ; preds = %313
  %339 = load i32, i32* %38, align 4, !dbg !5152
  %340 = add nsw i32 %339, -1, !dbg !5152
  store i32 %340, i32* %38, align 4, !dbg !5152
  br label %310, !dbg !5154, !llvm.loop !5155

; <label>:341:                                    ; preds = %310
  %342 = load double, double* %36, align 8, !dbg !5157
  %343 = call double @fabs(double %342) #1, !dbg !5159
  %344 = load double, double* %35, align 8, !dbg !5160
  %345 = call double @fabs(double %344) #1, !dbg !5161
  %346 = fcmp ogt double %343, %345, !dbg !5163
  br i1 %346, label %347, label %395, !dbg !5164

; <label>:347:                                    ; preds = %341
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %40, metadata !5165, metadata !60), !dbg !5167
  %348 = load double, double* %7, align 8, !dbg !5168
  %349 = load double, double* %8, align 8, !dbg !5169
  %350 = call i32 @gsl_sf_conicalP_1_e(double %348, double %349, %struct.gsl_sf_result_struct* %40), !dbg !5170
  store i32 %350, i32* %34, align 4, !dbg !5171
  %351 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !5172
  %352 = load double, double* %351, align 8, !dbg !5172
  %353 = fmul double 0x2000000000000000, %352, !dbg !5173
  %354 = load double, double* %36, align 8, !dbg !5174
  %355 = fdiv double %353, %354, !dbg !5175
  %356 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5176
  %357 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %356, i32 0, i32 0, !dbg !5177
  store double %355, double* %357, align 8, !dbg !5178
  %358 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !5179
  %359 = load double, double* %358, align 8, !dbg !5179
  %360 = fmul double 0x2010000000000000, %359, !dbg !5180
  %361 = load double, double* %36, align 8, !dbg !5181
  %362 = call double @fabs(double %361) #1, !dbg !5182
  %363 = fdiv double %360, %362, !dbg !5183
  %364 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5184
  %365 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %364, i32 0, i32 1, !dbg !5185
  store double %363, double* %365, align 8, !dbg !5186
  %366 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !5187
  %367 = load double, double* %366, align 8, !dbg !5187
  %368 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5188
  %369 = load double, double* %368, align 8, !dbg !5188
  %370 = fdiv double %367, %369, !dbg !5189
  %371 = call double @fabs(double %370) #1, !dbg !5190
  %372 = fmul double 2.000000e+00, %371, !dbg !5191
  %373 = load i32, i32* %6, align 4, !dbg !5192
  %374 = sitofp i32 %373 to double, !dbg !5192
  %375 = fadd double %374, 2.000000e+00, !dbg !5193
  %376 = fmul double %372, %375, !dbg !5194
  %377 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5195
  %378 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %377, i32 0, i32 0, !dbg !5196
  %379 = load double, double* %378, align 8, !dbg !5196
  %380 = call double @fabs(double %379) #1, !dbg !5197
  %381 = fmul double %376, %380, !dbg !5199
  %382 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5200
  %383 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %382, i32 0, i32 1, !dbg !5201
  %384 = load double, double* %383, align 8, !dbg !5202
  %385 = fadd double %384, %381, !dbg !5202
  store double %385, double* %383, align 8, !dbg !5202
  %386 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5203
  %387 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %386, i32 0, i32 0, !dbg !5204
  %388 = load double, double* %387, align 8, !dbg !5204
  %389 = call double @fabs(double %388) #1, !dbg !5205
  %390 = fmul double 0x3CC0000000000000, %389, !dbg !5206
  %391 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5207
  %392 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %391, i32 0, i32 1, !dbg !5208
  %393 = load double, double* %392, align 8, !dbg !5209
  %394 = fadd double %393, %390, !dbg !5209
  store double %394, double* %392, align 8, !dbg !5209
  br label %443, !dbg !5210

; <label>:395:                                    ; preds = %341
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %41, metadata !5211, metadata !60), !dbg !5213
  %396 = load double, double* %7, align 8, !dbg !5214
  %397 = load double, double* %8, align 8, !dbg !5215
  %398 = call i32 @gsl_sf_conicalP_0_e(double %396, double %397, %struct.gsl_sf_result_struct* %41), !dbg !5216
  store i32 %398, i32* %34, align 4, !dbg !5217
  %399 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !5218
  %400 = load double, double* %399, align 8, !dbg !5218
  %401 = fmul double 0x2000000000000000, %400, !dbg !5219
  %402 = load double, double* %35, align 8, !dbg !5220
  %403 = fdiv double %401, %402, !dbg !5221
  %404 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5222
  %405 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %404, i32 0, i32 0, !dbg !5223
  store double %403, double* %405, align 8, !dbg !5224
  %406 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !5225
  %407 = load double, double* %406, align 8, !dbg !5225
  %408 = fmul double 0x2010000000000000, %407, !dbg !5226
  %409 = load double, double* %35, align 8, !dbg !5227
  %410 = call double @fabs(double %409) #1, !dbg !5228
  %411 = fdiv double %408, %410, !dbg !5229
  %412 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5230
  %413 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %412, i32 0, i32 1, !dbg !5231
  store double %411, double* %413, align 8, !dbg !5232
  %414 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !5233
  %415 = load double, double* %414, align 8, !dbg !5233
  %416 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5234
  %417 = load double, double* %416, align 8, !dbg !5234
  %418 = fdiv double %415, %417, !dbg !5235
  %419 = call double @fabs(double %418) #1, !dbg !5236
  %420 = fmul double 2.000000e+00, %419, !dbg !5237
  %421 = load i32, i32* %6, align 4, !dbg !5238
  %422 = sitofp i32 %421 to double, !dbg !5238
  %423 = fadd double %422, 2.000000e+00, !dbg !5239
  %424 = fmul double %420, %423, !dbg !5240
  %425 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5241
  %426 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %425, i32 0, i32 0, !dbg !5242
  %427 = load double, double* %426, align 8, !dbg !5242
  %428 = call double @fabs(double %427) #1, !dbg !5243
  %429 = fmul double %424, %428, !dbg !5245
  %430 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5246
  %431 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %430, i32 0, i32 1, !dbg !5247
  %432 = load double, double* %431, align 8, !dbg !5248
  %433 = fadd double %432, %429, !dbg !5248
  store double %433, double* %431, align 8, !dbg !5248
  %434 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5249
  %435 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %434, i32 0, i32 0, !dbg !5250
  %436 = load double, double* %435, align 8, !dbg !5250
  %437 = call double @fabs(double %436) #1, !dbg !5251
  %438 = fmul double 0x3CC0000000000000, %437, !dbg !5252
  %439 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5253
  %440 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %439, i32 0, i32 1, !dbg !5254
  %441 = load double, double* %440, align 8, !dbg !5255
  %442 = fadd double %441, %438, !dbg !5255
  store double %442, double* %440, align 8, !dbg !5255
  br label %443

; <label>:443:                                    ; preds = %395, %347
  %444 = load i32, i32* %34, align 4, !dbg !5256
  %445 = icmp ne i32 %444, 0, !dbg !5256
  br i1 %445, label %446, label %448, !dbg !5256

; <label>:446:                                    ; preds = %443
  %447 = load i32, i32* %34, align 4, !dbg !5257
  br label %456, !dbg !5257

; <label>:448:                                    ; preds = %443
  %449 = load i32, i32* %33, align 4, !dbg !5259
  %450 = icmp ne i32 %449, 0, !dbg !5259
  br i1 %450, label %451, label %453, !dbg !5259

; <label>:451:                                    ; preds = %448
  %452 = load i32, i32* %33, align 4, !dbg !5261
  br label %454, !dbg !5261

; <label>:453:                                    ; preds = %448
  br label %454, !dbg !5263

; <label>:454:                                    ; preds = %453, %451
  %455 = phi i32 [ %452, %451 ], [ 0, %453 ], !dbg !5265
  br label %456, !dbg !5265

; <label>:456:                                    ; preds = %454, %446
  %457 = phi i32 [ %447, %446 ], [ %455, %454 ], !dbg !5267
  store i32 %457, i32* %5, align 4, !dbg !5269
  br label %458, !dbg !5269

; <label>:458:                                    ; preds = %53, %59, %67, %75, %148, %283, %288, %456, %55
  %459 = load i32, i32* %5, align 4, !dbg !5270
  ret i32 %459, !dbg !5270
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_conicalP_0(double, double) #0 !dbg !5271 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !5274, metadata !60), !dbg !5275
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !5276, metadata !60), !dbg !5277
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !5278, metadata !60), !dbg !5279
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5280, metadata !60), !dbg !5279
  %8 = load double, double* %4, align 8, !dbg !5279
  %9 = load double, double* %5, align 8, !dbg !5279
  %10 = call i32 @gsl_sf_conicalP_0_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !5279
  store i32 %10, i32* %7, align 4, !dbg !5279
  %11 = load i32, i32* %7, align 4, !dbg !5281
  %12 = icmp ne i32 %11, 0, !dbg !5281
  br i1 %12, label %13, label %19, !dbg !5279

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !5283, !llvm.loop !5286

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !5288
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1348, i32 %15), !dbg !5288
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !5288
  %17 = load double, double* %16, align 8, !dbg !5288
  store double %17, double* %3, align 8, !dbg !5288
  br label %22, !dbg !5288
                                                  ; No predecessors!
  br label %19, !dbg !5291

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !5293
  %21 = load double, double* %20, align 8, !dbg !5293
  store double %21, double* %3, align 8, !dbg !5293
  br label %22, !dbg !5293

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !5295
  ret double %23, !dbg !5295
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_conicalP_1(double, double) #0 !dbg !5296 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !5297, metadata !60), !dbg !5298
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !5299, metadata !60), !dbg !5300
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !5301, metadata !60), !dbg !5302
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5303, metadata !60), !dbg !5302
  %8 = load double, double* %4, align 8, !dbg !5302
  %9 = load double, double* %5, align 8, !dbg !5302
  %10 = call i32 @gsl_sf_conicalP_1_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !5302
  store i32 %10, i32* %7, align 4, !dbg !5302
  %11 = load i32, i32* %7, align 4, !dbg !5304
  %12 = icmp ne i32 %11, 0, !dbg !5304
  br i1 %12, label %13, label %19, !dbg !5302

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !5306, !llvm.loop !5309

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !5311
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1353, i32 %15), !dbg !5311
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !5311
  %17 = load double, double* %16, align 8, !dbg !5311
  store double %17, double* %3, align 8, !dbg !5311
  br label %22, !dbg !5311
                                                  ; No predecessors!
  br label %19, !dbg !5314

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !5316
  %21 = load double, double* %20, align 8, !dbg !5316
  store double %21, double* %3, align 8, !dbg !5316
  br label %22, !dbg !5316

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !5318
  ret double %23, !dbg !5318
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_conicalP_half(double, double) #0 !dbg !5319 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !5320, metadata !60), !dbg !5321
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !5322, metadata !60), !dbg !5323
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !5324, metadata !60), !dbg !5325
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5326, metadata !60), !dbg !5325
  %8 = load double, double* %4, align 8, !dbg !5325
  %9 = load double, double* %5, align 8, !dbg !5325
  %10 = call i32 @gsl_sf_conicalP_half_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !5325
  store i32 %10, i32* %7, align 4, !dbg !5325
  %11 = load i32, i32* %7, align 4, !dbg !5327
  %12 = icmp ne i32 %11, 0, !dbg !5327
  br i1 %12, label %13, label %19, !dbg !5325

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !5329, !llvm.loop !5332

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !5334
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1358, i32 %15), !dbg !5334
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !5334
  %17 = load double, double* %16, align 8, !dbg !5334
  store double %17, double* %3, align 8, !dbg !5334
  br label %22, !dbg !5334
                                                  ; No predecessors!
  br label %19, !dbg !5337

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !5339
  %21 = load double, double* %20, align 8, !dbg !5339
  store double %21, double* %3, align 8, !dbg !5339
  br label %22, !dbg !5339

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !5341
  ret double %23, !dbg !5341
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_conicalP_mhalf(double, double) #0 !dbg !5342 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !5343, metadata !60), !dbg !5344
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !5345, metadata !60), !dbg !5346
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !5347, metadata !60), !dbg !5348
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5349, metadata !60), !dbg !5348
  %8 = load double, double* %4, align 8, !dbg !5348
  %9 = load double, double* %5, align 8, !dbg !5348
  %10 = call i32 @gsl_sf_conicalP_mhalf_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !5348
  store i32 %10, i32* %7, align 4, !dbg !5348
  %11 = load i32, i32* %7, align 4, !dbg !5350
  %12 = icmp ne i32 %11, 0, !dbg !5350
  br i1 %12, label %13, label %19, !dbg !5348

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !5352, !llvm.loop !5355

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !5357
  call void @gsl_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1363, i32 %15), !dbg !5357
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !5357
  %17 = load double, double* %16, align 8, !dbg !5357
  store double %17, double* %3, align 8, !dbg !5357
  br label %22, !dbg !5357
                                                  ; No predecessors!
  br label %19, !dbg !5360

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !5362
  %21 = load double, double* %20, align 8, !dbg !5362
  store double %21, double* %3, align 8, !dbg !5362
  br label %22, !dbg !5362

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !5364
  ret double %23, !dbg !5364
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_conicalP_sph_reg(i32, double, double) #0 !dbg !5365 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5368, metadata !60), !dbg !5369
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !5370, metadata !60), !dbg !5371
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !5372, metadata !60), !dbg !5373
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !5374, metadata !60), !dbg !5375
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5376, metadata !60), !dbg !5375
  %10 = load i32, i32* %5, align 4, !dbg !5375
  %11 = load double, double* %6, align 8, !dbg !5375
  %12 = load double, double* %7, align 8, !dbg !5375
  %13 = call i32 @gsl_sf_conicalP_sph_reg_e(i32 %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !5375
  store i32 %13, i32* %9, align 4, !dbg !5375
  %14 = load i32, i32* %9, align 4, !dbg !5377
  %15 = icmp ne i32 %14, 0, !dbg !5377
  br i1 %15, label %16, label %22, !dbg !5375

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !5379, !llvm.loop !5382

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !5384
  call void @gsl_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1368, i32 %18), !dbg !5384
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !5384
  %20 = load double, double* %19, align 8, !dbg !5384
  store double %20, double* %4, align 8, !dbg !5384
  br label %25, !dbg !5384
                                                  ; No predecessors!
  br label %22, !dbg !5387

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !5389
  %24 = load double, double* %23, align 8, !dbg !5389
  store double %24, double* %4, align 8, !dbg !5389
  br label %25, !dbg !5389

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !5391
  ret double %26, !dbg !5391
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_conicalP_cyl_reg(i32, double, double) #0 !dbg !5392 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5393, metadata !60), !dbg !5394
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !5395, metadata !60), !dbg !5396
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !5397, metadata !60), !dbg !5398
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !5399, metadata !60), !dbg !5400
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5401, metadata !60), !dbg !5400
  %10 = load i32, i32* %5, align 4, !dbg !5400
  %11 = load double, double* %6, align 8, !dbg !5400
  %12 = load double, double* %7, align 8, !dbg !5400
  %13 = call i32 @gsl_sf_conicalP_cyl_reg_e(i32 %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !5400
  store i32 %13, i32* %9, align 4, !dbg !5400
  %14 = load i32, i32* %9, align 4, !dbg !5402
  %15 = icmp ne i32 %14, 0, !dbg !5402
  br i1 %15, label %16, label %22, !dbg !5400

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !5404, !llvm.loop !5407

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !5409
  call void @gsl_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1373, i32 %18), !dbg !5409
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !5409
  %20 = load double, double* %19, align 8, !dbg !5409
  store double %20, double* %4, align 8, !dbg !5409
  br label %25, !dbg !5409
                                                  ; No predecessors!
  br label %22, !dbg !5412

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !5414
  %24 = load double, double* %23, align 8, !dbg !5414
  store double %24, double* %4, align 8, !dbg !5414
  br label %25, !dbg !5414

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !5416
  ret double %26, !dbg !5416
}

; Function Attrs: nounwind
declare double @tan(double) #2

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "legendre_con.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_conicalP_xlt1_large_neg_mu_e", scope: !1, file: !1, line: 215, type: !46, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !49, !50, !57}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !52, line: 41, baseType: !53)
!52 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !52, line: 37, size: 128, align: 64, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !52, line: 38, baseType: !49, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !53, file: !52, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!58 = !{}
!59 = !DILocalVariable(name: "mu", arg: 1, scope: !45, file: !1, line: 215, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 215, column: 44, scope: !45)
!62 = !DILocalVariable(name: "tau", arg: 2, scope: !45, file: !1, line: 215, type: !49)
!63 = !DILocation(line: 215, column: 55, scope: !45)
!64 = !DILocalVariable(name: "x", arg: 3, scope: !45, file: !1, line: 215, type: !49)
!65 = !DILocation(line: 215, column: 67, scope: !45)
!66 = !DILocalVariable(name: "result", arg: 4, scope: !45, file: !1, line: 216, type: !50)
!67 = !DILocation(line: 216, column: 56, scope: !45)
!68 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !45, file: !1, line: 216, type: !57)
!69 = !DILocation(line: 216, column: 73, scope: !45)
!70 = !DILocalVariable(name: "beta", scope: !45, file: !1, line: 218, type: !49)
!71 = !DILocation(line: 218, column: 10, scope: !45)
!72 = !DILocation(line: 218, column: 18, scope: !45)
!73 = !DILocation(line: 218, column: 22, scope: !45)
!74 = !DILocation(line: 218, column: 21, scope: !45)
!75 = !DILocalVariable(name: "beta2", scope: !45, file: !1, line: 219, type: !49)
!76 = !DILocation(line: 219, column: 10, scope: !45)
!77 = !DILocation(line: 219, column: 18, scope: !45)
!78 = !DILocation(line: 219, column: 23, scope: !45)
!79 = !DILocation(line: 219, column: 22, scope: !45)
!80 = !DILocalVariable(name: "S", scope: !45, file: !1, line: 220, type: !49)
!81 = !DILocation(line: 220, column: 10, scope: !45)
!82 = !DILocation(line: 220, column: 18, scope: !45)
!83 = !DILocation(line: 220, column: 35, scope: !45)
!84 = !DILocation(line: 220, column: 34, scope: !45)
!85 = !DILocation(line: 220, column: 47, scope: !45)
!86 = !DILocation(line: 220, column: 46, scope: !45)
!87 = !DILocation(line: 220, column: 41, scope: !45)
!88 = !DILocation(line: 220, column: 25, scope: !45)
!89 = !DILocation(line: 220, column: 23, scope: !45)
!90 = !DILocalVariable(name: "p", scope: !45, file: !1, line: 221, type: !49)
!91 = !DILocation(line: 221, column: 10, scope: !45)
!92 = !DILocation(line: 221, column: 18, scope: !45)
!93 = !DILocation(line: 221, column: 25, scope: !45)
!94 = !DILocation(line: 221, column: 36, scope: !45)
!95 = !DILocation(line: 221, column: 38, scope: !45)
!96 = !DILocation(line: 221, column: 37, scope: !45)
!97 = !DILocation(line: 221, column: 35, scope: !45)
!98 = !DILocation(line: 221, column: 30, scope: !45)
!99 = !DILocation(line: 221, column: 41, scope: !45)
!100 = !DILocation(line: 221, column: 20, scope: !45)
!101 = !DILocation(line: 221, column: 19, scope: !45)
!102 = !DILocalVariable(name: "lg_mup1", scope: !45, file: !1, line: 222, type: !51)
!103 = !DILocation(line: 222, column: 17, scope: !45)
!104 = !DILocalVariable(name: "lg_stat", scope: !45, file: !1, line: 223, type: !48)
!105 = !DILocation(line: 223, column: 7, scope: !45)
!106 = !DILocation(line: 223, column: 34, scope: !45)
!107 = !DILocation(line: 223, column: 36, scope: !45)
!108 = !DILocation(line: 223, column: 17, scope: !45)
!109 = !DILocalVariable(name: "ln_pre_1", scope: !45, file: !1, line: 224, type: !49)
!110 = !DILocation(line: 224, column: 10, scope: !45)
!111 = !DILocation(line: 224, column: 26, scope: !45)
!112 = !DILocation(line: 224, column: 25, scope: !45)
!113 = !DILocation(line: 224, column: 30, scope: !45)
!114 = !DILocation(line: 224, column: 42, scope: !45)
!115 = !DILocation(line: 224, column: 41, scope: !45)
!116 = !DILocation(line: 224, column: 34, scope: !45)
!117 = !DILocation(line: 224, column: 32, scope: !45)
!118 = !DILocation(line: 224, column: 60, scope: !45)
!119 = !DILocation(line: 224, column: 59, scope: !45)
!120 = !DILocation(line: 224, column: 68, scope: !45)
!121 = !DILocation(line: 224, column: 67, scope: !45)
!122 = !DILocation(line: 224, column: 62, scope: !45)
!123 = !DILocation(line: 224, column: 51, scope: !124)
!124 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 1)
!125 = !DILocation(line: 224, column: 49, scope: !45)
!126 = !DILocation(line: 224, column: 28, scope: !45)
!127 = !DILocation(line: 224, column: 83, scope: !45)
!128 = !DILocation(line: 224, column: 73, scope: !45)
!129 = !DILocalVariable(name: "ln_pre_2", scope: !45, file: !1, line: 225, type: !49)
!130 = !DILocation(line: 225, column: 10, scope: !45)
!131 = !DILocation(line: 225, column: 39, scope: !45)
!132 = !DILocation(line: 225, column: 50, scope: !45)
!133 = !DILocation(line: 225, column: 49, scope: !45)
!134 = !DILocation(line: 225, column: 44, scope: !45)
!135 = !DILocation(line: 225, column: 37, scope: !45)
!136 = !DILocation(line: 225, column: 29, scope: !45)
!137 = !DILocation(line: 225, column: 27, scope: !45)
!138 = !DILocalVariable(name: "ln_pre_3", scope: !45, file: !1, line: 226, type: !49)
!139 = !DILocation(line: 226, column: 10, scope: !45)
!140 = !DILocation(line: 226, column: 22, scope: !45)
!141 = !DILocation(line: 226, column: 21, scope: !45)
!142 = !DILocation(line: 226, column: 33, scope: !45)
!143 = !DILocation(line: 226, column: 35, scope: !45)
!144 = !DILocation(line: 226, column: 34, scope: !45)
!145 = !DILocation(line: 226, column: 28, scope: !45)
!146 = !DILocation(line: 226, column: 26, scope: !45)
!147 = !DILocalVariable(name: "ln_pre", scope: !45, file: !1, line: 227, type: !49)
!148 = !DILocation(line: 227, column: 10, scope: !45)
!149 = !DILocation(line: 227, column: 19, scope: !45)
!150 = !DILocation(line: 227, column: 30, scope: !45)
!151 = !DILocation(line: 227, column: 28, scope: !45)
!152 = !DILocation(line: 227, column: 41, scope: !45)
!153 = !DILocation(line: 227, column: 39, scope: !45)
!154 = !DILocalVariable(name: "sum", scope: !45, file: !1, line: 228, type: !49)
!155 = !DILocation(line: 228, column: 10, scope: !45)
!156 = !DILocation(line: 228, column: 33, scope: !45)
!157 = !DILocation(line: 228, column: 40, scope: !45)
!158 = !DILocation(line: 228, column: 24, scope: !45)
!159 = !DILocation(line: 228, column: 43, scope: !45)
!160 = !DILocation(line: 228, column: 42, scope: !45)
!161 = !DILocation(line: 228, column: 22, scope: !45)
!162 = !DILocation(line: 228, column: 57, scope: !45)
!163 = !DILocation(line: 228, column: 64, scope: !45)
!164 = !DILocation(line: 228, column: 48, scope: !124)
!165 = !DILocation(line: 228, column: 68, scope: !45)
!166 = !DILocation(line: 228, column: 71, scope: !45)
!167 = !DILocation(line: 228, column: 70, scope: !45)
!168 = !DILocation(line: 228, column: 66, scope: !45)
!169 = !DILocation(line: 228, column: 46, scope: !45)
!170 = !DILocation(line: 230, column: 6, scope: !171)
!171 = distinct !DILexicalBlock(scope: !45, file: !1, line: 230, column: 6)
!172 = !DILocation(line: 230, column: 10, scope: !171)
!173 = !DILocation(line: 230, column: 6, scope: !45)
!174 = !DILocation(line: 231, column: 5, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 230, column: 18)
!176 = !DILocation(line: 231, column: 13, scope: !175)
!177 = !DILocation(line: 231, column: 17, scope: !175)
!178 = !DILocation(line: 232, column: 5, scope: !175)
!179 = !DILocation(line: 232, column: 13, scope: !175)
!180 = !DILocation(line: 232, column: 17, scope: !175)
!181 = !DILocation(line: 233, column: 6, scope: !175)
!182 = !DILocation(line: 233, column: 20, scope: !175)
!183 = !DILocation(line: 234, column: 5, scope: !175)
!184 = !DILocalVariable(name: "stat_e", scope: !185, file: !1, line: 237, type: !48)
!185 = distinct !DILexicalBlock(scope: !171, file: !1, line: 236, column: 8)
!186 = !DILocation(line: 237, column: 9, scope: !185)
!187 = !DILocation(line: 237, column: 36, scope: !185)
!188 = !DILocation(line: 237, column: 44, scope: !185)
!189 = !DILocation(line: 237, column: 49, scope: !185)
!190 = !DILocation(line: 237, column: 18, scope: !185)
!191 = !DILocation(line: 238, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !185, file: !1, line: 238, column: 8)
!193 = !DILocation(line: 238, column: 15, scope: !192)
!194 = !DILocation(line: 238, column: 8, scope: !185)
!195 = !DILocation(line: 239, column: 21, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 238, column: 31)
!197 = !DILocation(line: 239, column: 7, scope: !196)
!198 = !DILocation(line: 239, column: 15, scope: !196)
!199 = !DILocation(line: 239, column: 19, scope: !196)
!200 = !DILocation(line: 240, column: 50, scope: !196)
!201 = !DILocation(line: 240, column: 45, scope: !196)
!202 = !DILocation(line: 240, column: 43, scope: !196)
!203 = !DILocation(line: 240, column: 7, scope: !196)
!204 = !DILocation(line: 240, column: 15, scope: !196)
!205 = !DILocation(line: 240, column: 19, scope: !196)
!206 = !DILocation(line: 241, column: 24, scope: !196)
!207 = !DILocation(line: 241, column: 8, scope: !196)
!208 = !DILocation(line: 241, column: 22, scope: !196)
!209 = !DILocation(line: 242, column: 5, scope: !196)
!210 = !DILocation(line: 244, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !192, file: !1, line: 243, column: 10)
!212 = !DILocation(line: 244, column: 22, scope: !211)
!213 = !DILocation(line: 246, column: 12, scope: !185)
!214 = !DILocation(line: 246, column: 5, scope: !185)
!215 = !DILocation(line: 248, column: 1, scope: !45)
!216 = distinct !DISubprogram(name: "olver_U1", scope: !1, file: !1, line: 158, type: !217, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!217 = !DISubroutineType(types: !218)
!218 = !{!49, !49, !49}
!219 = !DILocalVariable(name: "beta2", arg: 1, scope: !216, file: !1, line: 158, type: !49)
!220 = !DILocation(line: 158, column: 31, scope: !216)
!221 = !DILocalVariable(name: "p", arg: 2, scope: !216, file: !1, line: 158, type: !49)
!222 = !DILocation(line: 158, column: 45, scope: !216)
!223 = !DILocation(line: 160, column: 11, scope: !216)
!224 = !DILocation(line: 160, column: 12, scope: !216)
!225 = !DILocation(line: 160, column: 29, scope: !216)
!226 = !DILocation(line: 160, column: 28, scope: !216)
!227 = !DILocation(line: 160, column: 23, scope: !216)
!228 = !DILocation(line: 160, column: 17, scope: !216)
!229 = !DILocation(line: 160, column: 46, scope: !216)
!230 = !DILocation(line: 160, column: 63, scope: !216)
!231 = !DILocation(line: 160, column: 62, scope: !216)
!232 = !DILocation(line: 160, column: 70, scope: !216)
!233 = !DILocation(line: 160, column: 69, scope: !216)
!234 = !DILocation(line: 160, column: 64, scope: !216)
!235 = !DILocation(line: 160, column: 57, scope: !216)
!236 = !DILocation(line: 160, column: 51, scope: !216)
!237 = !DILocation(line: 160, column: 44, scope: !216)
!238 = !DILocation(line: 160, column: 37, scope: !216)
!239 = !DILocation(line: 160, column: 3, scope: !216)
!240 = distinct !DISubprogram(name: "olver_U2", scope: !1, file: !1, line: 164, type: !217, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!241 = !DILocalVariable(name: "beta2", arg: 1, scope: !240, file: !1, line: 164, type: !49)
!242 = !DILocation(line: 164, column: 31, scope: !240)
!243 = !DILocalVariable(name: "p", arg: 2, scope: !240, file: !1, line: 164, type: !49)
!244 = !DILocation(line: 164, column: 45, scope: !240)
!245 = !DILocalVariable(name: "beta4", scope: !240, file: !1, line: 166, type: !49)
!246 = !DILocation(line: 166, column: 10, scope: !240)
!247 = !DILocation(line: 166, column: 18, scope: !240)
!248 = !DILocation(line: 166, column: 24, scope: !240)
!249 = !DILocation(line: 166, column: 23, scope: !240)
!250 = !DILocalVariable(name: "p2", scope: !240, file: !1, line: 167, type: !49)
!251 = !DILocation(line: 167, column: 10, scope: !240)
!252 = !DILocation(line: 167, column: 18, scope: !240)
!253 = !DILocation(line: 167, column: 20, scope: !240)
!254 = !DILocation(line: 167, column: 19, scope: !240)
!255 = !DILocalVariable(name: "poly1", scope: !240, file: !1, line: 168, type: !49)
!256 = !DILocation(line: 168, column: 10, scope: !240)
!257 = !DILocation(line: 168, column: 23, scope: !240)
!258 = !DILocation(line: 168, column: 22, scope: !240)
!259 = !DILocation(line: 168, column: 36, scope: !240)
!260 = !DILocation(line: 168, column: 35, scope: !240)
!261 = !DILocation(line: 168, column: 29, scope: !240)
!262 = !DILocation(line: 168, column: 42, scope: !240)
!263 = !DILocalVariable(name: "poly2", scope: !240, file: !1, line: 169, type: !49)
!264 = !DILocation(line: 169, column: 10, scope: !240)
!265 = !DILocation(line: 169, column: 23, scope: !240)
!266 = !DILocation(line: 169, column: 22, scope: !240)
!267 = !DILocation(line: 169, column: 36, scope: !240)
!268 = !DILocation(line: 169, column: 35, scope: !240)
!269 = !DILocation(line: 169, column: 29, scope: !240)
!270 = !DILocation(line: 169, column: 42, scope: !240)
!271 = !DILocalVariable(name: "poly3", scope: !240, file: !1, line: 170, type: !49)
!272 = !DILocation(line: 170, column: 10, scope: !240)
!273 = !DILocation(line: 170, column: 18, scope: !240)
!274 = !DILocation(line: 170, column: 24, scope: !240)
!275 = !DILocation(line: 170, column: 23, scope: !240)
!276 = !DILocation(line: 170, column: 33, scope: !240)
!277 = !DILocation(line: 170, column: 32, scope: !240)
!278 = !DILocation(line: 170, column: 39, scope: !240)
!279 = !DILocation(line: 170, column: 54, scope: !240)
!280 = !DILocation(line: 170, column: 53, scope: !240)
!281 = !DILocation(line: 170, column: 57, scope: !240)
!282 = !DILocation(line: 170, column: 62, scope: !240)
!283 = !DILocation(line: 170, column: 55, scope: !240)
!284 = !DILocation(line: 170, column: 47, scope: !240)
!285 = !DILocation(line: 170, column: 76, scope: !240)
!286 = !DILocation(line: 170, column: 75, scope: !240)
!287 = !DILocation(line: 170, column: 82, scope: !240)
!288 = !DILocation(line: 170, column: 81, scope: !240)
!289 = !DILocation(line: 170, column: 92, scope: !240)
!290 = !DILocation(line: 170, column: 90, scope: !240)
!291 = !DILocation(line: 170, column: 84, scope: !240)
!292 = !DILocation(line: 170, column: 68, scope: !240)
!293 = !DILocation(line: 170, column: 26, scope: !240)
!294 = !DILocation(line: 171, column: 15, scope: !240)
!295 = !DILocation(line: 171, column: 14, scope: !240)
!296 = !DILocation(line: 171, column: 31, scope: !240)
!297 = !DILocation(line: 171, column: 30, scope: !240)
!298 = !DILocation(line: 171, column: 25, scope: !240)
!299 = !DILocation(line: 171, column: 17, scope: !240)
!300 = !DILocation(line: 171, column: 42, scope: !240)
!301 = !DILocation(line: 171, column: 50, scope: !240)
!302 = !DILocation(line: 171, column: 48, scope: !240)
!303 = !DILocation(line: 171, column: 58, scope: !240)
!304 = !DILocation(line: 171, column: 56, scope: !240)
!305 = !DILocation(line: 171, column: 39, scope: !240)
!306 = !DILocation(line: 171, column: 3, scope: !240)
!307 = distinct !DISubprogram(name: "gsl_sf_conicalP_xgt1_neg_mu_largetau_e", scope: !1, file: !1, line: 306, type: !308, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!308 = !DISubroutineType(types: !309)
!309 = !{!48, !310, !310, !310, !49, !50, !57}
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!311 = !DILocalVariable(name: "mu", arg: 1, scope: !307, file: !1, line: 306, type: !310)
!312 = !DILocation(line: 306, column: 53, scope: !307)
!313 = !DILocalVariable(name: "tau", arg: 2, scope: !307, file: !1, line: 306, type: !310)
!314 = !DILocation(line: 306, column: 70, scope: !307)
!315 = !DILocalVariable(name: "x", arg: 3, scope: !307, file: !1, line: 307, type: !310)
!316 = !DILocation(line: 307, column: 56, scope: !307)
!317 = !DILocalVariable(name: "acosh_x", arg: 4, scope: !307, file: !1, line: 307, type: !49)
!318 = !DILocation(line: 307, column: 66, scope: !307)
!319 = !DILocalVariable(name: "result", arg: 5, scope: !307, file: !1, line: 308, type: !50)
!320 = !DILocation(line: 308, column: 59, scope: !307)
!321 = !DILocalVariable(name: "ln_multiplier", arg: 6, scope: !307, file: !1, line: 308, type: !57)
!322 = !DILocation(line: 308, column: 76, scope: !307)
!323 = !DILocalVariable(name: "xi", scope: !307, file: !1, line: 310, type: !49)
!324 = !DILocation(line: 310, column: 10, scope: !307)
!325 = !DILocation(line: 310, column: 15, scope: !307)
!326 = !DILocalVariable(name: "ln_xi_pre", scope: !307, file: !1, line: 311, type: !49)
!327 = !DILocation(line: 311, column: 10, scope: !307)
!328 = !DILocalVariable(name: "ln_pre", scope: !307, file: !1, line: 312, type: !49)
!329 = !DILocation(line: 312, column: 10, scope: !307)
!330 = !DILocalVariable(name: "sumA", scope: !307, file: !1, line: 313, type: !49)
!331 = !DILocation(line: 313, column: 10, scope: !307)
!332 = !DILocalVariable(name: "sumB", scope: !307, file: !1, line: 313, type: !49)
!333 = !DILocation(line: 313, column: 16, scope: !307)
!334 = !DILocalVariable(name: "sum", scope: !307, file: !1, line: 313, type: !49)
!335 = !DILocation(line: 313, column: 22, scope: !307)
!336 = !DILocalVariable(name: "arg", scope: !307, file: !1, line: 314, type: !49)
!337 = !DILocation(line: 314, column: 10, scope: !307)
!338 = !DILocalVariable(name: "J_mup1", scope: !307, file: !1, line: 315, type: !51)
!339 = !DILocation(line: 315, column: 17, scope: !307)
!340 = !DILocalVariable(name: "J_mu", scope: !307, file: !1, line: 316, type: !51)
!341 = !DILocation(line: 316, column: 17, scope: !307)
!342 = !DILocalVariable(name: "J_mum1", scope: !307, file: !1, line: 317, type: !49)
!343 = !DILocation(line: 317, column: 10, scope: !307)
!344 = !DILocation(line: 319, column: 6, scope: !345)
!345 = distinct !DILexicalBlock(scope: !307, file: !1, line: 319, column: 6)
!346 = !DILocation(line: 319, column: 9, scope: !345)
!347 = !DILocation(line: 319, column: 6, scope: !307)
!348 = !DILocation(line: 320, column: 18, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !1, line: 319, column: 34)
!350 = !DILocation(line: 320, column: 17, scope: !349)
!351 = !DILocation(line: 320, column: 21, scope: !349)
!352 = !DILocation(line: 320, column: 20, scope: !349)
!353 = !DILocation(line: 320, column: 23, scope: !349)
!354 = !DILocation(line: 320, column: 15, scope: !349)
!355 = !DILocation(line: 321, column: 3, scope: !349)
!356 = !DILocalVariable(name: "lnshxi", scope: !357, file: !1, line: 323, type: !51)
!357 = distinct !DILexicalBlock(scope: !345, file: !1, line: 322, column: 8)
!358 = !DILocation(line: 323, column: 19, scope: !357)
!359 = !DILocation(line: 324, column: 21, scope: !357)
!360 = !DILocation(line: 324, column: 5, scope: !357)
!361 = !DILocation(line: 325, column: 21, scope: !357)
!362 = !DILocation(line: 325, column: 17, scope: !357)
!363 = !DILocation(line: 325, column: 34, scope: !357)
!364 = !DILocation(line: 325, column: 25, scope: !357)
!365 = !DILocation(line: 325, column: 15, scope: !357)
!366 = !DILocation(line: 328, column: 16, scope: !307)
!367 = !DILocation(line: 328, column: 15, scope: !307)
!368 = !DILocation(line: 328, column: 28, scope: !307)
!369 = !DILocation(line: 328, column: 35, scope: !307)
!370 = !DILocation(line: 328, column: 31, scope: !307)
!371 = !DILocation(line: 328, column: 30, scope: !307)
!372 = !DILocation(line: 328, column: 26, scope: !307)
!373 = !DILocation(line: 328, column: 10, scope: !307)
!374 = !DILocation(line: 330, column: 9, scope: !307)
!375 = !DILocation(line: 330, column: 13, scope: !307)
!376 = !DILocation(line: 330, column: 12, scope: !307)
!377 = !DILocation(line: 330, column: 7, scope: !307)
!378 = !DILocation(line: 332, column: 23, scope: !307)
!379 = !DILocation(line: 332, column: 26, scope: !307)
!380 = !DILocation(line: 332, column: 35, scope: !307)
!381 = !DILocation(line: 332, column: 3, scope: !307)
!382 = !DILocation(line: 333, column: 23, scope: !307)
!383 = !DILocation(line: 333, column: 35, scope: !307)
!384 = !DILocation(line: 333, column: 3, scope: !307)
!385 = !DILocation(line: 334, column: 20, scope: !307)
!386 = !DILocation(line: 334, column: 12, scope: !307)
!387 = !DILocation(line: 334, column: 30, scope: !307)
!388 = !DILocation(line: 334, column: 29, scope: !307)
!389 = !DILocation(line: 334, column: 33, scope: !307)
!390 = !DILocation(line: 334, column: 32, scope: !307)
!391 = !DILocation(line: 334, column: 42, scope: !307)
!392 = !DILocation(line: 334, column: 36, scope: !307)
!393 = !DILocation(line: 334, column: 24, scope: !307)
!394 = !DILocation(line: 334, column: 10, scope: !307)
!395 = !DILocation(line: 336, column: 29, scope: !307)
!396 = !DILocation(line: 336, column: 28, scope: !307)
!397 = !DILocation(line: 336, column: 33, scope: !307)
!398 = !DILocation(line: 336, column: 37, scope: !307)
!399 = !DILocation(line: 336, column: 16, scope: !307)
!400 = !DILocation(line: 336, column: 41, scope: !307)
!401 = !DILocation(line: 336, column: 45, scope: !307)
!402 = !DILocation(line: 336, column: 44, scope: !307)
!403 = !DILocation(line: 336, column: 39, scope: !307)
!404 = !DILocation(line: 336, column: 14, scope: !307)
!405 = !DILocation(line: 336, column: 8, scope: !307)
!406 = !DILocation(line: 337, column: 23, scope: !307)
!407 = !DILocation(line: 337, column: 22, scope: !307)
!408 = !DILocation(line: 337, column: 27, scope: !307)
!409 = !DILocation(line: 337, column: 10, scope: !307)
!410 = !DILocation(line: 337, column: 8, scope: !307)
!411 = !DILocation(line: 338, column: 15, scope: !307)
!412 = !DILocation(line: 338, column: 21, scope: !307)
!413 = !DILocation(line: 338, column: 19, scope: !307)
!414 = !DILocation(line: 338, column: 28, scope: !307)
!415 = !DILocation(line: 338, column: 31, scope: !307)
!416 = !DILocation(line: 338, column: 30, scope: !307)
!417 = !DILocation(line: 338, column: 37, scope: !307)
!418 = !DILocation(line: 338, column: 35, scope: !307)
!419 = !DILocation(line: 338, column: 46, scope: !307)
!420 = !DILocation(line: 338, column: 44, scope: !307)
!421 = !DILocation(line: 338, column: 26, scope: !307)
!422 = !DILocation(line: 338, column: 8, scope: !307)
!423 = !DILocation(line: 340, column: 6, scope: !424)
!424 = distinct !DILexicalBlock(scope: !307, file: !1, line: 340, column: 6)
!425 = !DILocation(line: 340, column: 10, scope: !424)
!426 = !DILocation(line: 340, column: 6, scope: !307)
!427 = !DILocation(line: 341, column: 5, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !1, line: 340, column: 18)
!429 = !DILocation(line: 341, column: 13, scope: !428)
!430 = !DILocation(line: 341, column: 17, scope: !428)
!431 = !DILocation(line: 342, column: 5, scope: !428)
!432 = !DILocation(line: 342, column: 13, scope: !428)
!433 = !DILocation(line: 342, column: 17, scope: !428)
!434 = !DILocation(line: 343, column: 6, scope: !428)
!435 = !DILocation(line: 343, column: 20, scope: !428)
!436 = !DILocation(line: 344, column: 5, scope: !428)
!437 = !DILocalVariable(name: "stat_e", scope: !438, file: !1, line: 347, type: !48)
!438 = distinct !DILexicalBlock(scope: !424, file: !1, line: 346, column: 8)
!439 = !DILocation(line: 347, column: 9, scope: !438)
!440 = !DILocation(line: 347, column: 36, scope: !438)
!441 = !DILocation(line: 347, column: 44, scope: !438)
!442 = !DILocation(line: 347, column: 49, scope: !438)
!443 = !DILocation(line: 347, column: 18, scope: !438)
!444 = !DILocation(line: 348, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !438, file: !1, line: 348, column: 8)
!446 = !DILocation(line: 348, column: 15, scope: !445)
!447 = !DILocation(line: 348, column: 8, scope: !438)
!448 = !DILocation(line: 349, column: 21, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !1, line: 348, column: 31)
!450 = !DILocation(line: 349, column: 7, scope: !449)
!451 = !DILocation(line: 349, column: 15, scope: !449)
!452 = !DILocation(line: 349, column: 19, scope: !449)
!453 = !DILocation(line: 350, column: 50, scope: !449)
!454 = !DILocation(line: 350, column: 45, scope: !449)
!455 = !DILocation(line: 350, column: 43, scope: !449)
!456 = !DILocation(line: 350, column: 7, scope: !449)
!457 = !DILocation(line: 350, column: 15, scope: !449)
!458 = !DILocation(line: 350, column: 19, scope: !449)
!459 = !DILocation(line: 351, column: 24, scope: !449)
!460 = !DILocation(line: 351, column: 8, scope: !449)
!461 = !DILocation(line: 351, column: 22, scope: !449)
!462 = !DILocation(line: 352, column: 5, scope: !449)
!463 = !DILocation(line: 354, column: 8, scope: !464)
!464 = distinct !DILexicalBlock(scope: !445, file: !1, line: 353, column: 10)
!465 = !DILocation(line: 354, column: 22, scope: !464)
!466 = !DILocation(line: 356, column: 5, scope: !438)
!467 = !DILocation(line: 358, column: 1, scope: !307)
!468 = distinct !DISubprogram(name: "olver_A1_xi", scope: !1, file: !1, line: 262, type: !469, isLocal: true, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!469 = !DISubroutineType(types: !470)
!470 = !{!49, !49, !49, !49}
!471 = !DILocalVariable(name: "mu", arg: 1, scope: !468, file: !1, line: 262, type: !49)
!472 = !DILocation(line: 262, column: 34, scope: !468)
!473 = !DILocalVariable(name: "xi", arg: 2, scope: !468, file: !1, line: 262, type: !49)
!474 = !DILocation(line: 262, column: 45, scope: !468)
!475 = !DILocalVariable(name: "x", arg: 3, scope: !468, file: !1, line: 262, type: !49)
!476 = !DILocation(line: 262, column: 56, scope: !468)
!477 = !DILocalVariable(name: "B", scope: !468, file: !1, line: 264, type: !49)
!478 = !DILocation(line: 264, column: 10, scope: !468)
!479 = !DILocation(line: 264, column: 26, scope: !468)
!480 = !DILocation(line: 264, column: 30, scope: !468)
!481 = !DILocation(line: 264, column: 14, scope: !468)
!482 = !DILocalVariable(name: "psi", scope: !468, file: !1, line: 265, type: !49)
!483 = !DILocation(line: 265, column: 10, scope: !468)
!484 = !DILocation(line: 266, column: 11, scope: !485)
!485 = distinct !DILexicalBlock(scope: !468, file: !1, line: 266, column: 6)
!486 = !DILocation(line: 266, column: 13, scope: !485)
!487 = !DILocation(line: 266, column: 6, scope: !485)
!488 = !DILocation(line: 266, column: 20, scope: !485)
!489 = !DILocation(line: 266, column: 6, scope: !468)
!490 = !DILocalVariable(name: "y", scope: !491, file: !1, line: 267, type: !49)
!491 = distinct !DILexicalBlock(scope: !485, file: !1, line: 266, column: 45)
!492 = !DILocation(line: 267, column: 12, scope: !491)
!493 = !DILocation(line: 267, column: 16, scope: !491)
!494 = !DILocation(line: 267, column: 18, scope: !491)
!495 = !DILocalVariable(name: "s", scope: !491, file: !1, line: 268, type: !49)
!496 = !DILocation(line: 268, column: 12, scope: !491)
!497 = !DILocation(line: 268, column: 27, scope: !491)
!498 = !DILocation(line: 268, column: 41, scope: !491)
!499 = !DILocation(line: 268, column: 72, scope: !491)
!500 = !DILocation(line: 268, column: 71, scope: !491)
!501 = !DILocation(line: 268, column: 56, scope: !491)
!502 = !DILocation(line: 268, column: 43, scope: !491)
!503 = !DILocation(line: 268, column: 39, scope: !491)
!504 = !DILocation(line: 268, column: 28, scope: !491)
!505 = !DILocation(line: 268, column: 25, scope: !491)
!506 = !DILocation(line: 269, column: 16, scope: !491)
!507 = !DILocation(line: 269, column: 15, scope: !491)
!508 = !DILocation(line: 269, column: 19, scope: !491)
!509 = !DILocation(line: 269, column: 18, scope: !491)
!510 = !DILocation(line: 269, column: 22, scope: !491)
!511 = !DILocation(line: 269, column: 28, scope: !491)
!512 = !DILocation(line: 269, column: 36, scope: !491)
!513 = !DILocation(line: 269, column: 34, scope: !491)
!514 = !DILocation(line: 269, column: 9, scope: !491)
!515 = !DILocation(line: 270, column: 3, scope: !491)
!516 = !DILocation(line: 272, column: 16, scope: !517)
!517 = distinct !DILexicalBlock(scope: !485, file: !1, line: 271, column: 8)
!518 = !DILocation(line: 272, column: 15, scope: !517)
!519 = !DILocation(line: 272, column: 19, scope: !517)
!520 = !DILocation(line: 272, column: 18, scope: !517)
!521 = !DILocation(line: 272, column: 22, scope: !517)
!522 = !DILocation(line: 272, column: 28, scope: !517)
!523 = !DILocation(line: 272, column: 42, scope: !517)
!524 = !DILocation(line: 272, column: 44, scope: !517)
!525 = !DILocation(line: 272, column: 43, scope: !517)
!526 = !DILocation(line: 272, column: 45, scope: !517)
!527 = !DILocation(line: 272, column: 40, scope: !517)
!528 = !DILocation(line: 272, column: 58, scope: !517)
!529 = !DILocation(line: 272, column: 61, scope: !517)
!530 = !DILocation(line: 272, column: 60, scope: !517)
!531 = !DILocation(line: 272, column: 56, scope: !517)
!532 = !DILocation(line: 272, column: 51, scope: !517)
!533 = !DILocation(line: 272, column: 34, scope: !517)
!534 = !DILocation(line: 272, column: 9, scope: !517)
!535 = !DILocation(line: 274, column: 14, scope: !468)
!536 = !DILocation(line: 274, column: 13, scope: !468)
!537 = !DILocation(line: 274, column: 17, scope: !468)
!538 = !DILocation(line: 274, column: 16, scope: !468)
!539 = !DILocation(line: 274, column: 20, scope: !468)
!540 = !DILocation(line: 274, column: 19, scope: !468)
!541 = !DILocation(line: 274, column: 22, scope: !468)
!542 = !DILocation(line: 274, column: 21, scope: !468)
!543 = !DILocation(line: 274, column: 27, scope: !468)
!544 = !DILocation(line: 274, column: 29, scope: !468)
!545 = !DILocation(line: 274, column: 35, scope: !468)
!546 = !DILocation(line: 274, column: 34, scope: !468)
!547 = !DILocation(line: 274, column: 24, scope: !468)
!548 = !DILocation(line: 274, column: 39, scope: !468)
!549 = !DILocation(line: 274, column: 37, scope: !468)
!550 = !DILocation(line: 274, column: 45, scope: !468)
!551 = !DILocation(line: 274, column: 47, scope: !468)
!552 = !DILocation(line: 274, column: 60, scope: !468)
!553 = !DILocation(line: 274, column: 63, scope: !468)
!554 = !DILocation(line: 274, column: 62, scope: !468)
!555 = !DILocation(line: 274, column: 58, scope: !468)
!556 = !DILocation(line: 274, column: 51, scope: !468)
!557 = !DILocation(line: 274, column: 43, scope: !468)
!558 = !DILocation(line: 274, column: 3, scope: !468)
!559 = distinct !DISubprogram(name: "olver_B0_xi", scope: !1, file: !1, line: 257, type: !217, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!560 = !DILocalVariable(name: "mu", arg: 1, scope: !559, file: !1, line: 257, type: !49)
!561 = !DILocation(line: 257, column: 34, scope: !559)
!562 = !DILocalVariable(name: "xi", arg: 2, scope: !559, file: !1, line: 257, type: !49)
!563 = !DILocation(line: 257, column: 45, scope: !559)
!564 = !DILocation(line: 259, column: 21, scope: !559)
!565 = !DILocation(line: 259, column: 20, scope: !559)
!566 = !DILocation(line: 259, column: 24, scope: !559)
!567 = !DILocation(line: 259, column: 23, scope: !559)
!568 = !DILocation(line: 259, column: 15, scope: !559)
!569 = !DILocation(line: 259, column: 33, scope: !559)
!570 = !DILocation(line: 259, column: 32, scope: !559)
!571 = !DILocation(line: 259, column: 27, scope: !559)
!572 = !DILocation(line: 259, column: 49, scope: !559)
!573 = !DILocation(line: 259, column: 44, scope: !559)
!574 = !DILocation(line: 259, column: 43, scope: !559)
!575 = !DILocation(line: 259, column: 59, scope: !559)
!576 = !DILocation(line: 259, column: 58, scope: !559)
!577 = !DILocation(line: 259, column: 53, scope: !559)
!578 = !DILocation(line: 259, column: 37, scope: !559)
!579 = !DILocation(line: 259, column: 3, scope: !559)
!580 = distinct !DISubprogram(name: "gsl_sf_conicalP_xlt1_neg_mu_largetau_e", scope: !1, file: !1, line: 368, type: !581, isLocal: false, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!581 = !DISubroutineType(types: !582)
!582 = !{!48, !310, !310, !310, !310, !50, !57}
!583 = !DILocalVariable(name: "mu", arg: 1, scope: !580, file: !1, line: 368, type: !310)
!584 = !DILocation(line: 368, column: 53, scope: !580)
!585 = !DILocalVariable(name: "tau", arg: 2, scope: !580, file: !1, line: 368, type: !310)
!586 = !DILocation(line: 368, column: 70, scope: !580)
!587 = !DILocalVariable(name: "x", arg: 3, scope: !580, file: !1, line: 369, type: !310)
!588 = !DILocation(line: 369, column: 56, scope: !580)
!589 = !DILocalVariable(name: "acos_x", arg: 4, scope: !580, file: !1, line: 369, type: !310)
!590 = !DILocation(line: 369, column: 72, scope: !580)
!591 = !DILocalVariable(name: "result", arg: 5, scope: !580, file: !1, line: 370, type: !50)
!592 = !DILocation(line: 370, column: 59, scope: !580)
!593 = !DILocalVariable(name: "ln_multiplier", arg: 6, scope: !580, file: !1, line: 370, type: !57)
!594 = !DILocation(line: 370, column: 76, scope: !580)
!595 = !DILocalVariable(name: "theta", scope: !580, file: !1, line: 372, type: !49)
!596 = !DILocation(line: 372, column: 10, scope: !580)
!597 = !DILocation(line: 372, column: 18, scope: !580)
!598 = !DILocalVariable(name: "ln_th_pre", scope: !580, file: !1, line: 373, type: !49)
!599 = !DILocation(line: 373, column: 10, scope: !580)
!600 = !DILocalVariable(name: "ln_pre", scope: !580, file: !1, line: 374, type: !49)
!601 = !DILocation(line: 374, column: 10, scope: !580)
!602 = !DILocalVariable(name: "sumA", scope: !580, file: !1, line: 375, type: !49)
!603 = !DILocation(line: 375, column: 10, scope: !580)
!604 = !DILocalVariable(name: "sumB", scope: !580, file: !1, line: 375, type: !49)
!605 = !DILocation(line: 375, column: 16, scope: !580)
!606 = !DILocalVariable(name: "sum", scope: !580, file: !1, line: 375, type: !49)
!607 = !DILocation(line: 375, column: 22, scope: !580)
!608 = !DILocalVariable(name: "sumerr", scope: !580, file: !1, line: 375, type: !49)
!609 = !DILocation(line: 375, column: 27, scope: !580)
!610 = !DILocalVariable(name: "arg", scope: !580, file: !1, line: 376, type: !49)
!611 = !DILocation(line: 376, column: 10, scope: !580)
!612 = !DILocalVariable(name: "I_mup1", scope: !580, file: !1, line: 377, type: !51)
!613 = !DILocation(line: 377, column: 17, scope: !580)
!614 = !DILocalVariable(name: "I_mu", scope: !580, file: !1, line: 377, type: !51)
!615 = !DILocation(line: 377, column: 25, scope: !580)
!616 = !DILocalVariable(name: "I_mum1", scope: !580, file: !1, line: 378, type: !49)
!617 = !DILocation(line: 378, column: 10, scope: !580)
!618 = !DILocation(line: 380, column: 6, scope: !619)
!619 = distinct !DILexicalBlock(scope: !580, file: !1, line: 380, column: 6)
!620 = !DILocation(line: 380, column: 12, scope: !619)
!621 = !DILocation(line: 380, column: 6, scope: !580)
!622 = !DILocation(line: 381, column: 17, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !1, line: 380, column: 37)
!624 = !DILocation(line: 381, column: 23, scope: !623)
!625 = !DILocation(line: 381, column: 22, scope: !623)
!626 = !DILocation(line: 381, column: 28, scope: !623)
!627 = !DILocation(line: 381, column: 15, scope: !623)
!628 = !DILocation(line: 382, column: 3, scope: !623)
!629 = !DILocation(line: 384, column: 21, scope: !630)
!630 = distinct !DILexicalBlock(scope: !619, file: !1, line: 383, column: 8)
!631 = !DILocation(line: 384, column: 31, scope: !630)
!632 = !DILocation(line: 384, column: 27, scope: !630)
!633 = !DILocation(line: 384, column: 26, scope: !630)
!634 = !DILocation(line: 384, column: 17, scope: !635)
!635 = !DILexicalBlockFile(scope: !630, file: !1, discriminator: 1)
!636 = !DILocation(line: 384, column: 15, scope: !630)
!637 = !DILocation(line: 387, column: 18, scope: !580)
!638 = !DILocation(line: 387, column: 16, scope: !580)
!639 = !DILocation(line: 387, column: 30, scope: !580)
!640 = !DILocation(line: 387, column: 39, scope: !580)
!641 = !DILocation(line: 387, column: 35, scope: !580)
!642 = !DILocation(line: 387, column: 33, scope: !580)
!643 = !DILocation(line: 387, column: 28, scope: !580)
!644 = !DILocation(line: 387, column: 10, scope: !580)
!645 = !DILocation(line: 389, column: 9, scope: !580)
!646 = !DILocation(line: 389, column: 13, scope: !580)
!647 = !DILocation(line: 389, column: 12, scope: !580)
!648 = !DILocation(line: 389, column: 7, scope: !580)
!649 = !DILocation(line: 390, column: 23, scope: !580)
!650 = !DILocation(line: 390, column: 26, scope: !580)
!651 = !DILocation(line: 390, column: 35, scope: !580)
!652 = !DILocation(line: 390, column: 3, scope: !580)
!653 = !DILocation(line: 391, column: 23, scope: !580)
!654 = !DILocation(line: 391, column: 35, scope: !580)
!655 = !DILocation(line: 391, column: 3, scope: !580)
!656 = !DILocation(line: 392, column: 19, scope: !580)
!657 = !DILocation(line: 392, column: 29, scope: !580)
!658 = !DILocation(line: 392, column: 28, scope: !580)
!659 = !DILocation(line: 392, column: 32, scope: !580)
!660 = !DILocation(line: 392, column: 31, scope: !580)
!661 = !DILocation(line: 392, column: 43, scope: !580)
!662 = !DILocation(line: 392, column: 36, scope: !580)
!663 = !DILocation(line: 392, column: 23, scope: !580)
!664 = !DILocation(line: 392, column: 10, scope: !580)
!665 = !DILocation(line: 394, column: 29, scope: !580)
!666 = !DILocation(line: 394, column: 28, scope: !580)
!667 = !DILocation(line: 394, column: 33, scope: !580)
!668 = !DILocation(line: 394, column: 40, scope: !580)
!669 = !DILocation(line: 394, column: 16, scope: !580)
!670 = !DILocation(line: 394, column: 44, scope: !580)
!671 = !DILocation(line: 394, column: 48, scope: !580)
!672 = !DILocation(line: 394, column: 47, scope: !580)
!673 = !DILocation(line: 394, column: 42, scope: !580)
!674 = !DILocation(line: 394, column: 14, scope: !580)
!675 = !DILocation(line: 394, column: 8, scope: !580)
!676 = !DILocation(line: 395, column: 23, scope: !580)
!677 = !DILocation(line: 395, column: 22, scope: !580)
!678 = !DILocation(line: 395, column: 27, scope: !580)
!679 = !DILocation(line: 395, column: 10, scope: !580)
!680 = !DILocation(line: 395, column: 8, scope: !580)
!681 = !DILocation(line: 396, column: 15, scope: !580)
!682 = !DILocation(line: 396, column: 21, scope: !580)
!683 = !DILocation(line: 396, column: 19, scope: !580)
!684 = !DILocation(line: 396, column: 28, scope: !580)
!685 = !DILocation(line: 396, column: 34, scope: !580)
!686 = !DILocation(line: 396, column: 33, scope: !580)
!687 = !DILocation(line: 396, column: 40, scope: !580)
!688 = !DILocation(line: 396, column: 38, scope: !580)
!689 = !DILocation(line: 396, column: 49, scope: !580)
!690 = !DILocation(line: 396, column: 47, scope: !580)
!691 = !DILocation(line: 396, column: 26, scope: !580)
!692 = !DILocation(line: 396, column: 8, scope: !580)
!693 = !DILocation(line: 397, column: 23, scope: !580)
!694 = !DILocation(line: 397, column: 29, scope: !580)
!695 = !DILocation(line: 397, column: 27, scope: !580)
!696 = !DILocation(line: 397, column: 13, scope: !580)
!697 = !DILocation(line: 397, column: 11, scope: !580)
!698 = !DILocation(line: 398, column: 25, scope: !580)
!699 = !DILocation(line: 398, column: 31, scope: !580)
!700 = !DILocation(line: 398, column: 29, scope: !580)
!701 = !DILocation(line: 398, column: 37, scope: !580)
!702 = !DILocation(line: 398, column: 36, scope: !580)
!703 = !DILocation(line: 398, column: 43, scope: !580)
!704 = !DILocation(line: 398, column: 41, scope: !580)
!705 = !DILocation(line: 398, column: 13, scope: !580)
!706 = !DILocation(line: 398, column: 10, scope: !580)
!707 = !DILocation(line: 399, column: 23, scope: !580)
!708 = !DILocation(line: 399, column: 31, scope: !580)
!709 = !DILocation(line: 399, column: 29, scope: !580)
!710 = !DILocation(line: 399, column: 37, scope: !580)
!711 = !DILocation(line: 399, column: 36, scope: !580)
!712 = !DILocation(line: 399, column: 43, scope: !580)
!713 = !DILocation(line: 399, column: 41, scope: !580)
!714 = !DILocation(line: 399, column: 48, scope: !580)
!715 = !DILocation(line: 399, column: 56, scope: !580)
!716 = !DILocation(line: 399, column: 54, scope: !580)
!717 = !DILocation(line: 399, column: 59, scope: !580)
!718 = !DILocation(line: 399, column: 58, scope: !580)
!719 = !DILocation(line: 399, column: 13, scope: !580)
!720 = !DILocation(line: 399, column: 10, scope: !580)
!721 = !DILocation(line: 401, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !580, file: !1, line: 401, column: 6)
!723 = !DILocation(line: 401, column: 10, scope: !722)
!724 = !DILocation(line: 401, column: 6, scope: !580)
!725 = !DILocation(line: 402, column: 5, scope: !726)
!726 = distinct !DILexicalBlock(scope: !722, file: !1, line: 401, column: 18)
!727 = !DILocation(line: 402, column: 13, scope: !726)
!728 = !DILocation(line: 402, column: 17, scope: !726)
!729 = !DILocation(line: 403, column: 5, scope: !726)
!730 = !DILocation(line: 403, column: 13, scope: !726)
!731 = !DILocation(line: 403, column: 17, scope: !726)
!732 = !DILocation(line: 404, column: 6, scope: !726)
!733 = !DILocation(line: 404, column: 20, scope: !726)
!734 = !DILocation(line: 405, column: 5, scope: !726)
!735 = !DILocalVariable(name: "stat_e", scope: !736, file: !1, line: 408, type: !48)
!736 = distinct !DILexicalBlock(scope: !722, file: !1, line: 407, column: 8)
!737 = !DILocation(line: 408, column: 9, scope: !736)
!738 = !DILocation(line: 408, column: 36, scope: !736)
!739 = !DILocation(line: 408, column: 44, scope: !736)
!740 = !DILocation(line: 408, column: 49, scope: !736)
!741 = !DILocation(line: 408, column: 18, scope: !736)
!742 = !DILocation(line: 409, column: 8, scope: !743)
!743 = distinct !DILexicalBlock(scope: !736, file: !1, line: 409, column: 8)
!744 = !DILocation(line: 409, column: 15, scope: !743)
!745 = !DILocation(line: 409, column: 8, scope: !736)
!746 = !DILocation(line: 410, column: 22, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !1, line: 409, column: 31)
!748 = !DILocation(line: 410, column: 7, scope: !747)
!749 = !DILocation(line: 410, column: 15, scope: !747)
!750 = !DILocation(line: 410, column: 20, scope: !747)
!751 = !DILocation(line: 411, column: 22, scope: !747)
!752 = !DILocation(line: 411, column: 7, scope: !747)
!753 = !DILocation(line: 411, column: 15, scope: !747)
!754 = !DILocation(line: 411, column: 20, scope: !747)
!755 = !DILocation(line: 412, column: 45, scope: !747)
!756 = !DILocation(line: 412, column: 40, scope: !747)
!757 = !DILocation(line: 412, column: 38, scope: !747)
!758 = !DILocation(line: 412, column: 7, scope: !747)
!759 = !DILocation(line: 412, column: 15, scope: !747)
!760 = !DILocation(line: 412, column: 19, scope: !747)
!761 = !DILocation(line: 413, column: 24, scope: !747)
!762 = !DILocation(line: 413, column: 8, scope: !747)
!763 = !DILocation(line: 413, column: 22, scope: !747)
!764 = !DILocation(line: 414, column: 5, scope: !747)
!765 = !DILocation(line: 416, column: 8, scope: !766)
!766 = distinct !DILexicalBlock(scope: !743, file: !1, line: 415, column: 10)
!767 = !DILocation(line: 416, column: 22, scope: !766)
!768 = !DILocation(line: 418, column: 5, scope: !736)
!769 = !DILocation(line: 420, column: 1, scope: !580)
!770 = distinct !DISubprogram(name: "olver_A1_th", scope: !1, file: !1, line: 283, type: !469, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!771 = !DILocalVariable(name: "mu", arg: 1, scope: !770, file: !1, line: 283, type: !49)
!772 = !DILocation(line: 283, column: 34, scope: !770)
!773 = !DILocalVariable(name: "theta", arg: 2, scope: !770, file: !1, line: 283, type: !49)
!774 = !DILocation(line: 283, column: 45, scope: !770)
!775 = !DILocalVariable(name: "x", arg: 3, scope: !770, file: !1, line: 283, type: !49)
!776 = !DILocation(line: 283, column: 59, scope: !770)
!777 = !DILocalVariable(name: "B", scope: !770, file: !1, line: 285, type: !49)
!778 = !DILocation(line: 285, column: 10, scope: !770)
!779 = !DILocation(line: 285, column: 26, scope: !770)
!780 = !DILocation(line: 285, column: 30, scope: !770)
!781 = !DILocation(line: 285, column: 14, scope: !770)
!782 = !DILocalVariable(name: "psi", scope: !770, file: !1, line: 286, type: !49)
!783 = !DILocation(line: 286, column: 10, scope: !770)
!784 = !DILocation(line: 287, column: 11, scope: !785)
!785 = distinct !DILexicalBlock(scope: !770, file: !1, line: 287, column: 6)
!786 = !DILocation(line: 287, column: 13, scope: !785)
!787 = !DILocation(line: 287, column: 6, scope: !785)
!788 = !DILocation(line: 287, column: 20, scope: !785)
!789 = !DILocation(line: 287, column: 6, scope: !770)
!790 = !DILocalVariable(name: "y", scope: !791, file: !1, line: 288, type: !49)
!791 = distinct !DILexicalBlock(scope: !785, file: !1, line: 287, column: 45)
!792 = !DILocation(line: 288, column: 12, scope: !791)
!793 = !DILocation(line: 288, column: 22, scope: !791)
!794 = !DILocation(line: 288, column: 20, scope: !791)
!795 = !DILocalVariable(name: "s", scope: !791, file: !1, line: 289, type: !49)
!796 = !DILocation(line: 289, column: 12, scope: !791)
!797 = !DILocation(line: 289, column: 27, scope: !791)
!798 = !DILocation(line: 289, column: 41, scope: !791)
!799 = !DILocation(line: 289, column: 72, scope: !791)
!800 = !DILocation(line: 289, column: 71, scope: !791)
!801 = !DILocation(line: 289, column: 56, scope: !791)
!802 = !DILocation(line: 289, column: 43, scope: !791)
!803 = !DILocation(line: 289, column: 39, scope: !791)
!804 = !DILocation(line: 289, column: 28, scope: !791)
!805 = !DILocation(line: 289, column: 25, scope: !791)
!806 = !DILocation(line: 290, column: 16, scope: !791)
!807 = !DILocation(line: 290, column: 15, scope: !791)
!808 = !DILocation(line: 290, column: 19, scope: !791)
!809 = !DILocation(line: 290, column: 18, scope: !791)
!810 = !DILocation(line: 290, column: 22, scope: !791)
!811 = !DILocation(line: 290, column: 28, scope: !791)
!812 = !DILocation(line: 290, column: 36, scope: !791)
!813 = !DILocation(line: 290, column: 34, scope: !791)
!814 = !DILocation(line: 290, column: 9, scope: !791)
!815 = !DILocation(line: 291, column: 3, scope: !791)
!816 = !DILocation(line: 293, column: 16, scope: !817)
!817 = distinct !DILexicalBlock(scope: !785, file: !1, line: 292, column: 8)
!818 = !DILocation(line: 293, column: 15, scope: !817)
!819 = !DILocation(line: 293, column: 19, scope: !817)
!820 = !DILocation(line: 293, column: 18, scope: !817)
!821 = !DILocation(line: 293, column: 22, scope: !817)
!822 = !DILocation(line: 293, column: 28, scope: !817)
!823 = !DILocation(line: 293, column: 42, scope: !817)
!824 = !DILocation(line: 293, column: 44, scope: !817)
!825 = !DILocation(line: 293, column: 43, scope: !817)
!826 = !DILocation(line: 293, column: 45, scope: !817)
!827 = !DILocation(line: 293, column: 40, scope: !817)
!828 = !DILocation(line: 293, column: 58, scope: !817)
!829 = !DILocation(line: 293, column: 64, scope: !817)
!830 = !DILocation(line: 293, column: 63, scope: !817)
!831 = !DILocation(line: 293, column: 56, scope: !817)
!832 = !DILocation(line: 293, column: 51, scope: !817)
!833 = !DILocation(line: 293, column: 34, scope: !817)
!834 = !DILocation(line: 293, column: 9, scope: !817)
!835 = !DILocation(line: 295, column: 15, scope: !770)
!836 = !DILocation(line: 295, column: 14, scope: !770)
!837 = !DILocation(line: 295, column: 21, scope: !770)
!838 = !DILocation(line: 295, column: 20, scope: !770)
!839 = !DILocation(line: 295, column: 27, scope: !770)
!840 = !DILocation(line: 295, column: 26, scope: !770)
!841 = !DILocation(line: 295, column: 29, scope: !770)
!842 = !DILocation(line: 295, column: 28, scope: !770)
!843 = !DILocation(line: 295, column: 34, scope: !770)
!844 = !DILocation(line: 295, column: 36, scope: !770)
!845 = !DILocation(line: 295, column: 42, scope: !770)
!846 = !DILocation(line: 295, column: 41, scope: !770)
!847 = !DILocation(line: 295, column: 31, scope: !770)
!848 = !DILocation(line: 295, column: 46, scope: !770)
!849 = !DILocation(line: 295, column: 44, scope: !770)
!850 = !DILocation(line: 295, column: 52, scope: !770)
!851 = !DILocation(line: 295, column: 54, scope: !770)
!852 = !DILocation(line: 295, column: 67, scope: !770)
!853 = !DILocation(line: 295, column: 70, scope: !770)
!854 = !DILocation(line: 295, column: 69, scope: !770)
!855 = !DILocation(line: 295, column: 65, scope: !770)
!856 = !DILocation(line: 295, column: 58, scope: !770)
!857 = !DILocation(line: 295, column: 50, scope: !770)
!858 = !DILocation(line: 295, column: 3, scope: !770)
!859 = distinct !DISubprogram(name: "olver_B0_th", scope: !1, file: !1, line: 278, type: !217, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!860 = !DILocalVariable(name: "mu", arg: 1, scope: !859, file: !1, line: 278, type: !49)
!861 = !DILocation(line: 278, column: 34, scope: !859)
!862 = !DILocalVariable(name: "theta", arg: 2, scope: !859, file: !1, line: 278, type: !49)
!863 = !DILocation(line: 278, column: 45, scope: !859)
!864 = !DILocation(line: 280, column: 22, scope: !859)
!865 = !DILocation(line: 280, column: 21, scope: !859)
!866 = !DILocation(line: 280, column: 25, scope: !859)
!867 = !DILocation(line: 280, column: 24, scope: !859)
!868 = !DILocation(line: 280, column: 16, scope: !859)
!869 = !DILocation(line: 280, column: 10, scope: !859)
!870 = !DILocation(line: 280, column: 34, scope: !859)
!871 = !DILocation(line: 280, column: 33, scope: !859)
!872 = !DILocation(line: 280, column: 28, scope: !859)
!873 = !DILocation(line: 280, column: 52, scope: !859)
!874 = !DILocation(line: 280, column: 48, scope: !859)
!875 = !DILocation(line: 280, column: 47, scope: !859)
!876 = !DILocation(line: 280, column: 65, scope: !859)
!877 = !DILocation(line: 280, column: 64, scope: !859)
!878 = !DILocation(line: 280, column: 59, scope: !859)
!879 = !DILocation(line: 280, column: 41, scope: !859)
!880 = !DILocation(line: 280, column: 3, scope: !859)
!881 = distinct !DISubprogram(name: "gsl_sf_conicalP_large_x_e", scope: !1, file: !1, line: 483, type: !882, isLocal: false, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!882 = !DISubroutineType(types: !883)
!883 = !{!48, !310, !310, !310, !50, !57}
!884 = !DILocalVariable(name: "mu", arg: 1, scope: !881, file: !1, line: 483, type: !310)
!885 = !DILocation(line: 483, column: 40, scope: !881)
!886 = !DILocalVariable(name: "tau", arg: 2, scope: !881, file: !1, line: 483, type: !310)
!887 = !DILocation(line: 483, column: 57, scope: !881)
!888 = !DILocalVariable(name: "x", arg: 3, scope: !881, file: !1, line: 483, type: !310)
!889 = !DILocation(line: 483, column: 75, scope: !881)
!890 = !DILocalVariable(name: "result", arg: 4, scope: !881, file: !1, line: 484, type: !50)
!891 = !DILocation(line: 484, column: 46, scope: !881)
!892 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !881, file: !1, line: 484, type: !57)
!893 = !DILocation(line: 484, column: 63, scope: !881)
!894 = !DILocalVariable(name: "y", scope: !881, file: !1, line: 488, type: !49)
!895 = !DILocation(line: 488, column: 10, scope: !881)
!896 = !DILocation(line: 488, column: 16, scope: !881)
!897 = !DILocation(line: 488, column: 18, scope: !881)
!898 = !DILocation(line: 488, column: 48, scope: !899)
!899 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 1)
!900 = !DILocation(line: 488, column: 50, scope: !899)
!901 = !DILocation(line: 488, column: 49, scope: !899)
!902 = !DILocation(line: 488, column: 46, scope: !899)
!903 = !DILocation(line: 488, column: 16, scope: !899)
!904 = !DILocation(line: 488, column: 16, scope: !905)
!905 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 2)
!906 = !DILocation(line: 488, column: 16, scope: !907)
!907 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 3)
!908 = !DILocation(line: 488, column: 10, scope: !907)
!909 = !DILocalVariable(name: "reF", scope: !881, file: !1, line: 489, type: !49)
!910 = !DILocation(line: 489, column: 10, scope: !881)
!911 = !DILocalVariable(name: "imF", scope: !881, file: !1, line: 489, type: !49)
!912 = !DILocation(line: 489, column: 15, scope: !881)
!913 = !DILocalVariable(name: "stat_F", scope: !881, file: !1, line: 490, type: !48)
!914 = !DILocation(line: 490, column: 7, scope: !881)
!915 = !DILocation(line: 490, column: 40, scope: !881)
!916 = !DILocation(line: 490, column: 44, scope: !881)
!917 = !DILocation(line: 490, column: 49, scope: !881)
!918 = !DILocation(line: 490, column: 16, scope: !881)
!919 = !DILocalVariable(name: "lgr_num", scope: !881, file: !1, line: 495, type: !51)
!920 = !DILocation(line: 495, column: 17, scope: !881)
!921 = !DILocalVariable(name: "lgth_num", scope: !881, file: !1, line: 495, type: !51)
!922 = !DILocation(line: 495, column: 26, scope: !881)
!923 = !DILocalVariable(name: "lgr_den", scope: !881, file: !1, line: 496, type: !51)
!924 = !DILocation(line: 496, column: 17, scope: !881)
!925 = !DILocalVariable(name: "lgth_den", scope: !881, file: !1, line: 496, type: !51)
!926 = !DILocation(line: 496, column: 26, scope: !881)
!927 = !DILocalVariable(name: "stat_gn", scope: !881, file: !1, line: 497, type: !48)
!928 = !DILocation(line: 497, column: 7, scope: !881)
!929 = !DILocation(line: 497, column: 46, scope: !881)
!930 = !DILocation(line: 497, column: 17, scope: !881)
!931 = !DILocalVariable(name: "stat_gd", scope: !881, file: !1, line: 498, type: !48)
!932 = !DILocation(line: 498, column: 7, scope: !881)
!933 = !DILocation(line: 498, column: 46, scope: !881)
!934 = !DILocation(line: 498, column: 45, scope: !881)
!935 = !DILocation(line: 498, column: 49, scope: !881)
!936 = !DILocation(line: 498, column: 17, scope: !881)
!937 = !DILocalVariable(name: "angle", scope: !881, file: !1, line: 500, type: !49)
!938 = !DILocation(line: 500, column: 10, scope: !881)
!939 = !DILocation(line: 500, column: 27, scope: !881)
!940 = !DILocation(line: 500, column: 42, scope: !881)
!941 = !DILocation(line: 500, column: 31, scope: !881)
!942 = !DILocation(line: 500, column: 54, scope: !881)
!943 = !DILocation(line: 500, column: 58, scope: !881)
!944 = !DILocation(line: 500, column: 48, scope: !881)
!945 = !DILocation(line: 500, column: 46, scope: !881)
!946 = !DILocalVariable(name: "lnx", scope: !881, file: !1, line: 502, type: !49)
!947 = !DILocation(line: 502, column: 10, scope: !881)
!948 = !DILocation(line: 502, column: 22, scope: !881)
!949 = !DILocation(line: 502, column: 18, scope: !881)
!950 = !DILocalVariable(name: "lnxp1", scope: !881, file: !1, line: 503, type: !49)
!951 = !DILocation(line: 503, column: 10, scope: !881)
!952 = !DILocation(line: 503, column: 22, scope: !881)
!953 = !DILocation(line: 503, column: 23, scope: !881)
!954 = !DILocation(line: 503, column: 18, scope: !881)
!955 = !DILocalVariable(name: "lnxm1", scope: !881, file: !1, line: 504, type: !49)
!956 = !DILocation(line: 504, column: 10, scope: !881)
!957 = !DILocation(line: 504, column: 22, scope: !881)
!958 = !DILocation(line: 504, column: 23, scope: !881)
!959 = !DILocation(line: 504, column: 18, scope: !881)
!960 = !DILocalVariable(name: "lnpre_const", scope: !881, file: !1, line: 505, type: !49)
!961 = !DILocation(line: 505, column: 10, scope: !881)
!962 = !DILocalVariable(name: "lnpre_comm", scope: !881, file: !1, line: 506, type: !49)
!963 = !DILocation(line: 506, column: 10, scope: !881)
!964 = !DILocation(line: 506, column: 24, scope: !881)
!965 = !DILocation(line: 506, column: 26, scope: !881)
!966 = !DILocation(line: 506, column: 32, scope: !881)
!967 = !DILocation(line: 506, column: 31, scope: !881)
!968 = !DILocation(line: 506, column: 42, scope: !881)
!969 = !DILocation(line: 506, column: 41, scope: !881)
!970 = !DILocation(line: 506, column: 46, scope: !881)
!971 = !DILocation(line: 506, column: 54, scope: !881)
!972 = !DILocation(line: 506, column: 52, scope: !881)
!973 = !DILocation(line: 506, column: 44, scope: !881)
!974 = !DILocation(line: 506, column: 36, scope: !881)
!975 = !DILocalVariable(name: "lnpre_err", scope: !881, file: !1, line: 507, type: !49)
!976 = !DILocation(line: 507, column: 10, scope: !881)
!977 = !DILocation(line: 508, column: 49, scope: !881)
!978 = !DILocation(line: 508, column: 51, scope: !881)
!979 = !DILocation(line: 508, column: 57, scope: !881)
!980 = !DILocation(line: 508, column: 56, scope: !881)
!981 = !DILocation(line: 508, column: 43, scope: !881)
!982 = !DILocation(line: 508, column: 41, scope: !881)
!983 = !DILocation(line: 508, column: 23, scope: !881)
!984 = !DILocation(line: 509, column: 52, scope: !881)
!985 = !DILocation(line: 509, column: 51, scope: !881)
!986 = !DILocation(line: 509, column: 43, scope: !881)
!987 = !DILocation(line: 509, column: 41, scope: !881)
!988 = !DILocation(line: 509, column: 62, scope: !881)
!989 = !DILocation(line: 509, column: 57, scope: !899)
!990 = !DILocation(line: 509, column: 74, scope: !881)
!991 = !DILocation(line: 509, column: 69, scope: !905)
!992 = !DILocation(line: 509, column: 68, scope: !881)
!993 = !DILocation(line: 509, column: 55, scope: !881)
!994 = !DILocation(line: 509, column: 23, scope: !881)
!995 = !DILocalVariable(name: "cos_result", scope: !881, file: !1, line: 513, type: !51)
!996 = !DILocation(line: 513, column: 17, scope: !881)
!997 = !DILocalVariable(name: "stat_cos", scope: !881, file: !1, line: 514, type: !48)
!998 = !DILocation(line: 514, column: 7, scope: !881)
!999 = !DILocation(line: 514, column: 31, scope: !881)
!1000 = !DILocation(line: 514, column: 39, scope: !881)
!1001 = !DILocation(line: 514, column: 48, scope: !881)
!1002 = !DILocation(line: 514, column: 44, scope: !881)
!1003 = !DILocation(line: 514, column: 51, scope: !881)
!1004 = !DILocation(line: 514, column: 42, scope: !881)
!1005 = !DILocation(line: 514, column: 37, scope: !881)
!1006 = !DILocation(line: 514, column: 18, scope: !899)
!1007 = !DILocalVariable(name: "status", scope: !881, file: !1, line: 515, type: !48)
!1008 = !DILocation(line: 515, column: 7, scope: !881)
!1009 = !DILocation(line: 515, column: 16, scope: !881)
!1010 = !DILocation(line: 515, column: 16, scope: !899)
!1011 = !DILocation(line: 515, column: 16, scope: !905)
!1012 = !DILocation(line: 515, column: 16, scope: !907)
!1013 = !DILocation(line: 515, column: 16, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 4)
!1015 = !DILocation(line: 515, column: 16, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 5)
!1017 = !DILocation(line: 515, column: 16, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 6)
!1019 = !DILocation(line: 515, column: 16, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 7)
!1021 = !DILocation(line: 515, column: 16, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 8)
!1023 = !DILocation(line: 515, column: 16, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 9)
!1025 = !DILocation(line: 515, column: 16, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 10)
!1027 = !DILocation(line: 515, column: 16, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 11)
!1029 = !DILocation(line: 515, column: 16, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 12)
!1031 = !DILocation(line: 515, column: 7, scope: !1030)
!1032 = !DILocation(line: 516, column: 17, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !881, file: !1, line: 516, column: 6)
!1034 = !DILocation(line: 516, column: 21, scope: !1033)
!1035 = !DILocation(line: 516, column: 6, scope: !881)
!1036 = !DILocation(line: 517, column: 5, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 516, column: 29)
!1038 = !DILocation(line: 517, column: 13, scope: !1037)
!1039 = !DILocation(line: 517, column: 17, scope: !1037)
!1040 = !DILocation(line: 518, column: 5, scope: !1037)
!1041 = !DILocation(line: 518, column: 13, scope: !1037)
!1042 = !DILocation(line: 518, column: 17, scope: !1037)
!1043 = !DILocation(line: 519, column: 12, scope: !1037)
!1044 = !DILocation(line: 519, column: 5, scope: !1037)
!1045 = !DILocalVariable(name: "lnFf_val", scope: !1046, file: !1, line: 522, type: !49)
!1046 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 521, column: 8)
!1047 = !DILocation(line: 522, column: 12, scope: !1046)
!1048 = !DILocation(line: 522, column: 31, scope: !1046)
!1049 = !DILocation(line: 522, column: 35, scope: !1046)
!1050 = !DILocation(line: 522, column: 34, scope: !1046)
!1051 = !DILocation(line: 522, column: 39, scope: !1046)
!1052 = !DILocation(line: 522, column: 43, scope: !1046)
!1053 = !DILocation(line: 522, column: 42, scope: !1046)
!1054 = !DILocation(line: 522, column: 38, scope: !1046)
!1055 = !DILocation(line: 522, column: 27, scope: !1046)
!1056 = !DILocation(line: 522, column: 26, scope: !1046)
!1057 = !DILocation(line: 522, column: 58, scope: !1046)
!1058 = !DILocation(line: 522, column: 48, scope: !1046)
!1059 = !DILocation(line: 522, column: 72, scope: !1046)
!1060 = !DILocation(line: 522, column: 62, scope: !1046)
!1061 = !DILocalVariable(name: "lnFf_err", scope: !1046, file: !1, line: 523, type: !49)
!1062 = !DILocation(line: 523, column: 12, scope: !1046)
!1063 = !DILocation(line: 523, column: 31, scope: !1046)
!1064 = !DILocation(line: 523, column: 45, scope: !1046)
!1065 = !DILocation(line: 523, column: 35, scope: !1046)
!1066 = !DILocation(line: 523, column: 74, scope: !1046)
!1067 = !DILocation(line: 523, column: 69, scope: !1046)
!1068 = !DILocation(line: 523, column: 67, scope: !1046)
!1069 = !DILocation(line: 523, column: 49, scope: !1046)
!1070 = !DILocalVariable(name: "lnnoc_val", scope: !1046, file: !1, line: 524, type: !49)
!1071 = !DILocation(line: 524, column: 12, scope: !1046)
!1072 = !DILocation(line: 524, column: 24, scope: !1046)
!1073 = !DILocation(line: 524, column: 38, scope: !1046)
!1074 = !DILocation(line: 524, column: 36, scope: !1046)
!1075 = !DILocation(line: 524, column: 51, scope: !1046)
!1076 = !DILocation(line: 524, column: 49, scope: !1046)
!1077 = !DILocalVariable(name: "lnnoc_err", scope: !1046, file: !1, line: 525, type: !49)
!1078 = !DILocation(line: 525, column: 12, scope: !1046)
!1079 = !DILocation(line: 525, column: 24, scope: !1046)
!1080 = !DILocation(line: 525, column: 36, scope: !1046)
!1081 = !DILocation(line: 525, column: 34, scope: !1046)
!1082 = !DILocation(line: 525, column: 70, scope: !1046)
!1083 = !DILocation(line: 525, column: 65, scope: !1046)
!1084 = !DILocation(line: 525, column: 63, scope: !1046)
!1085 = !DILocation(line: 525, column: 45, scope: !1046)
!1086 = !DILocalVariable(name: "stat_e", scope: !1046, file: !1, line: 526, type: !48)
!1087 = !DILocation(line: 526, column: 9, scope: !1046)
!1088 = !DILocation(line: 526, column: 40, scope: !1046)
!1089 = !DILocation(line: 526, column: 51, scope: !1046)
!1090 = !DILocation(line: 527, column: 54, scope: !1046)
!1091 = !DILocation(line: 527, column: 70, scope: !1046)
!1092 = !DILocation(line: 528, column: 43, scope: !1046)
!1093 = !DILocation(line: 526, column: 18, scope: !1046)
!1094 = !DILocation(line: 529, column: 8, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 529, column: 8)
!1096 = !DILocation(line: 529, column: 15, scope: !1095)
!1097 = !DILocation(line: 529, column: 8, scope: !1046)
!1098 = !DILocation(line: 530, column: 8, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 529, column: 31)
!1100 = !DILocation(line: 530, column: 22, scope: !1099)
!1101 = !DILocation(line: 531, column: 5, scope: !1099)
!1102 = !DILocation(line: 533, column: 33, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 532, column: 10)
!1104 = !DILocation(line: 533, column: 7, scope: !1103)
!1105 = !DILocation(line: 533, column: 15, scope: !1103)
!1106 = !DILocation(line: 533, column: 20, scope: !1103)
!1107 = !DILocation(line: 534, column: 33, scope: !1103)
!1108 = !DILocation(line: 534, column: 7, scope: !1103)
!1109 = !DILocation(line: 534, column: 15, scope: !1103)
!1110 = !DILocation(line: 534, column: 20, scope: !1103)
!1111 = !DILocation(line: 535, column: 51, scope: !1103)
!1112 = !DILocation(line: 535, column: 59, scope: !1103)
!1113 = !DILocation(line: 535, column: 46, scope: !1103)
!1114 = !DILocation(line: 535, column: 44, scope: !1103)
!1115 = !DILocation(line: 535, column: 7, scope: !1103)
!1116 = !DILocation(line: 535, column: 15, scope: !1103)
!1117 = !DILocation(line: 535, column: 19, scope: !1103)
!1118 = !DILocation(line: 536, column: 24, scope: !1103)
!1119 = !DILocation(line: 536, column: 8, scope: !1103)
!1120 = !DILocation(line: 536, column: 22, scope: !1103)
!1121 = !DILocation(line: 538, column: 12, scope: !1046)
!1122 = !DILocation(line: 538, column: 5, scope: !1046)
!1123 = !DILocation(line: 540, column: 1, scope: !881)
!1124 = distinct !DISubprogram(name: "conicalP_hyperg_large_x", scope: !1, file: !1, line: 432, type: !1125, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!48, !310, !310, !310, !57, !57}
!1127 = !DILocalVariable(name: "mu", arg: 1, scope: !1124, file: !1, line: 432, type: !310)
!1128 = !DILocation(line: 432, column: 38, scope: !1124)
!1129 = !DILocalVariable(name: "tau", arg: 2, scope: !1124, file: !1, line: 432, type: !310)
!1130 = !DILocation(line: 432, column: 55, scope: !1124)
!1131 = !DILocalVariable(name: "y", arg: 3, scope: !1124, file: !1, line: 432, type: !310)
!1132 = !DILocation(line: 432, column: 73, scope: !1124)
!1133 = !DILocalVariable(name: "reF", arg: 4, scope: !1124, file: !1, line: 433, type: !57)
!1134 = !DILocation(line: 433, column: 34, scope: !1124)
!1135 = !DILocalVariable(name: "imF", arg: 5, scope: !1124, file: !1, line: 433, type: !57)
!1136 = !DILocation(line: 433, column: 48, scope: !1124)
!1137 = !DILocalVariable(name: "kmax", scope: !1124, file: !1, line: 435, type: !1138)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!1139 = !DILocation(line: 435, column: 13, scope: !1124)
!1140 = !DILocalVariable(name: "re_a", scope: !1124, file: !1, line: 436, type: !310)
!1141 = !DILocation(line: 436, column: 16, scope: !1124)
!1142 = !DILocation(line: 436, column: 34, scope: !1124)
!1143 = !DILocation(line: 436, column: 33, scope: !1124)
!1144 = !DILocation(line: 436, column: 28, scope: !1124)
!1145 = !DILocalVariable(name: "re_b", scope: !1124, file: !1, line: 437, type: !310)
!1146 = !DILocation(line: 437, column: 16, scope: !1124)
!1147 = !DILocation(line: 437, column: 34, scope: !1124)
!1148 = !DILocation(line: 437, column: 33, scope: !1124)
!1149 = !DILocation(line: 437, column: 28, scope: !1124)
!1150 = !DILocalVariable(name: "re_c", scope: !1124, file: !1, line: 438, type: !310)
!1151 = !DILocation(line: 438, column: 16, scope: !1124)
!1152 = !DILocalVariable(name: "im_a", scope: !1124, file: !1, line: 439, type: !310)
!1153 = !DILocation(line: 439, column: 16, scope: !1124)
!1154 = !DILocation(line: 439, column: 28, scope: !1124)
!1155 = !DILocation(line: 439, column: 27, scope: !1124)
!1156 = !DILocalVariable(name: "im_b", scope: !1124, file: !1, line: 440, type: !310)
!1157 = !DILocation(line: 440, column: 16, scope: !1124)
!1158 = !DILocation(line: 440, column: 28, scope: !1124)
!1159 = !DILocation(line: 440, column: 27, scope: !1124)
!1160 = !DILocalVariable(name: "im_c", scope: !1124, file: !1, line: 441, type: !310)
!1161 = !DILocation(line: 441, column: 16, scope: !1124)
!1162 = !DILocation(line: 441, column: 24, scope: !1124)
!1163 = !DILocation(line: 441, column: 23, scope: !1124)
!1164 = !DILocalVariable(name: "re_sum", scope: !1124, file: !1, line: 443, type: !49)
!1165 = !DILocation(line: 443, column: 10, scope: !1124)
!1166 = !DILocalVariable(name: "im_sum", scope: !1124, file: !1, line: 444, type: !49)
!1167 = !DILocation(line: 444, column: 10, scope: !1124)
!1168 = !DILocalVariable(name: "re_term", scope: !1124, file: !1, line: 445, type: !49)
!1169 = !DILocation(line: 445, column: 10, scope: !1124)
!1170 = !DILocalVariable(name: "im_term", scope: !1124, file: !1, line: 446, type: !49)
!1171 = !DILocation(line: 446, column: 10, scope: !1124)
!1172 = !DILocalVariable(name: "k", scope: !1124, file: !1, line: 447, type: !48)
!1173 = !DILocation(line: 447, column: 7, scope: !1124)
!1174 = !DILocation(line: 449, column: 8, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 449, column: 3)
!1176 = !DILocation(line: 449, column: 7, scope: !1175)
!1177 = !DILocation(line: 449, column: 12, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !1, discriminator: 1)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 449, column: 3)
!1180 = !DILocation(line: 449, column: 13, scope: !1178)
!1181 = !DILocation(line: 449, column: 3, scope: !1178)
!1182 = !DILocalVariable(name: "re_ak", scope: !1183, file: !1, line: 450, type: !49)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 449, column: 26)
!1184 = !DILocation(line: 450, column: 12, scope: !1183)
!1185 = !DILocation(line: 450, column: 20, scope: !1183)
!1186 = !DILocation(line: 450, column: 27, scope: !1183)
!1187 = !DILocation(line: 450, column: 25, scope: !1183)
!1188 = !DILocation(line: 450, column: 29, scope: !1183)
!1189 = !DILocalVariable(name: "re_bk", scope: !1183, file: !1, line: 451, type: !49)
!1190 = !DILocation(line: 451, column: 12, scope: !1183)
!1191 = !DILocation(line: 451, column: 20, scope: !1183)
!1192 = !DILocation(line: 451, column: 27, scope: !1183)
!1193 = !DILocation(line: 451, column: 25, scope: !1183)
!1194 = !DILocation(line: 451, column: 29, scope: !1183)
!1195 = !DILocalVariable(name: "re_ck", scope: !1183, file: !1, line: 452, type: !49)
!1196 = !DILocation(line: 452, column: 12, scope: !1183)
!1197 = !DILocation(line: 452, column: 27, scope: !1183)
!1198 = !DILocation(line: 452, column: 25, scope: !1183)
!1199 = !DILocation(line: 452, column: 29, scope: !1183)
!1200 = !DILocalVariable(name: "im_ak", scope: !1183, file: !1, line: 453, type: !49)
!1201 = !DILocation(line: 453, column: 12, scope: !1183)
!1202 = !DILocation(line: 453, column: 20, scope: !1183)
!1203 = !DILocalVariable(name: "im_bk", scope: !1183, file: !1, line: 454, type: !49)
!1204 = !DILocation(line: 454, column: 12, scope: !1183)
!1205 = !DILocation(line: 454, column: 20, scope: !1183)
!1206 = !DILocalVariable(name: "im_ck", scope: !1183, file: !1, line: 455, type: !49)
!1207 = !DILocation(line: 455, column: 12, scope: !1183)
!1208 = !DILocation(line: 455, column: 20, scope: !1183)
!1209 = !DILocalVariable(name: "den", scope: !1183, file: !1, line: 456, type: !49)
!1210 = !DILocation(line: 456, column: 12, scope: !1183)
!1211 = !DILocation(line: 456, column: 18, scope: !1183)
!1212 = !DILocation(line: 456, column: 24, scope: !1183)
!1213 = !DILocation(line: 456, column: 23, scope: !1183)
!1214 = !DILocation(line: 456, column: 32, scope: !1183)
!1215 = !DILocation(line: 456, column: 38, scope: !1183)
!1216 = !DILocation(line: 456, column: 37, scope: !1183)
!1217 = !DILocation(line: 456, column: 30, scope: !1183)
!1218 = !DILocalVariable(name: "re_multiplier", scope: !1183, file: !1, line: 457, type: !49)
!1219 = !DILocation(line: 457, column: 12, scope: !1183)
!1220 = !DILocation(line: 457, column: 30, scope: !1183)
!1221 = !DILocation(line: 457, column: 36, scope: !1183)
!1222 = !DILocation(line: 457, column: 35, scope: !1183)
!1223 = !DILocation(line: 457, column: 44, scope: !1183)
!1224 = !DILocation(line: 457, column: 50, scope: !1183)
!1225 = !DILocation(line: 457, column: 49, scope: !1183)
!1226 = !DILocation(line: 457, column: 42, scope: !1183)
!1227 = !DILocation(line: 457, column: 57, scope: !1183)
!1228 = !DILocation(line: 457, column: 56, scope: !1183)
!1229 = !DILocation(line: 457, column: 65, scope: !1183)
!1230 = !DILocation(line: 457, column: 72, scope: !1183)
!1231 = !DILocation(line: 457, column: 78, scope: !1183)
!1232 = !DILocation(line: 457, column: 77, scope: !1183)
!1233 = !DILocation(line: 457, column: 86, scope: !1183)
!1234 = !DILocation(line: 457, column: 92, scope: !1183)
!1235 = !DILocation(line: 457, column: 91, scope: !1183)
!1236 = !DILocation(line: 457, column: 84, scope: !1183)
!1237 = !DILocation(line: 457, column: 70, scope: !1183)
!1238 = !DILocation(line: 457, column: 63, scope: !1183)
!1239 = !DILocation(line: 457, column: 102, scope: !1183)
!1240 = !DILocation(line: 457, column: 100, scope: !1183)
!1241 = !DILocalVariable(name: "im_multiplier", scope: !1183, file: !1, line: 458, type: !49)
!1242 = !DILocation(line: 458, column: 12, scope: !1183)
!1243 = !DILocation(line: 458, column: 30, scope: !1183)
!1244 = !DILocation(line: 458, column: 36, scope: !1183)
!1245 = !DILocation(line: 458, column: 35, scope: !1183)
!1246 = !DILocation(line: 458, column: 44, scope: !1183)
!1247 = !DILocation(line: 458, column: 50, scope: !1183)
!1248 = !DILocation(line: 458, column: 49, scope: !1183)
!1249 = !DILocation(line: 458, column: 42, scope: !1183)
!1250 = !DILocation(line: 458, column: 57, scope: !1183)
!1251 = !DILocation(line: 458, column: 56, scope: !1183)
!1252 = !DILocation(line: 458, column: 65, scope: !1183)
!1253 = !DILocation(line: 458, column: 72, scope: !1183)
!1254 = !DILocation(line: 458, column: 78, scope: !1183)
!1255 = !DILocation(line: 458, column: 77, scope: !1183)
!1256 = !DILocation(line: 458, column: 86, scope: !1183)
!1257 = !DILocation(line: 458, column: 92, scope: !1183)
!1258 = !DILocation(line: 458, column: 91, scope: !1183)
!1259 = !DILocation(line: 458, column: 84, scope: !1183)
!1260 = !DILocation(line: 458, column: 70, scope: !1183)
!1261 = !DILocation(line: 458, column: 63, scope: !1183)
!1262 = !DILocation(line: 458, column: 102, scope: !1183)
!1263 = !DILocation(line: 458, column: 100, scope: !1183)
!1264 = !DILocalVariable(name: "re_tmp", scope: !1183, file: !1, line: 459, type: !49)
!1265 = !DILocation(line: 459, column: 12, scope: !1183)
!1266 = !DILocation(line: 459, column: 21, scope: !1183)
!1267 = !DILocation(line: 459, column: 35, scope: !1183)
!1268 = !DILocation(line: 459, column: 34, scope: !1183)
!1269 = !DILocation(line: 459, column: 45, scope: !1183)
!1270 = !DILocation(line: 459, column: 59, scope: !1183)
!1271 = !DILocation(line: 459, column: 58, scope: !1183)
!1272 = !DILocation(line: 459, column: 43, scope: !1183)
!1273 = !DILocalVariable(name: "im_tmp", scope: !1183, file: !1, line: 460, type: !49)
!1274 = !DILocation(line: 460, column: 12, scope: !1183)
!1275 = !DILocation(line: 460, column: 21, scope: !1183)
!1276 = !DILocation(line: 460, column: 35, scope: !1183)
!1277 = !DILocation(line: 460, column: 34, scope: !1183)
!1278 = !DILocation(line: 460, column: 45, scope: !1183)
!1279 = !DILocation(line: 460, column: 59, scope: !1183)
!1280 = !DILocation(line: 460, column: 58, scope: !1183)
!1281 = !DILocation(line: 460, column: 43, scope: !1183)
!1282 = !DILocalVariable(name: "asum", scope: !1183, file: !1, line: 461, type: !49)
!1283 = !DILocation(line: 461, column: 12, scope: !1183)
!1284 = !DILocation(line: 461, column: 24, scope: !1183)
!1285 = !DILocation(line: 461, column: 19, scope: !1183)
!1286 = !DILocation(line: 461, column: 39, scope: !1183)
!1287 = !DILocation(line: 461, column: 34, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1183, file: !1, discriminator: 1)
!1289 = !DILocation(line: 461, column: 32, scope: !1183)
!1290 = !DILocation(line: 462, column: 15, scope: !1183)
!1291 = !DILocation(line: 462, column: 17, scope: !1183)
!1292 = !DILocation(line: 462, column: 16, scope: !1183)
!1293 = !DILocation(line: 462, column: 21, scope: !1183)
!1294 = !DILocation(line: 462, column: 19, scope: !1183)
!1295 = !DILocation(line: 462, column: 13, scope: !1183)
!1296 = !DILocation(line: 463, column: 15, scope: !1183)
!1297 = !DILocation(line: 463, column: 17, scope: !1183)
!1298 = !DILocation(line: 463, column: 16, scope: !1183)
!1299 = !DILocation(line: 463, column: 21, scope: !1183)
!1300 = !DILocation(line: 463, column: 19, scope: !1183)
!1301 = !DILocation(line: 463, column: 13, scope: !1183)
!1302 = !DILocation(line: 464, column: 13, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 464, column: 8)
!1304 = !DILocation(line: 464, column: 21, scope: !1303)
!1305 = !DILocation(line: 464, column: 20, scope: !1303)
!1306 = !DILocation(line: 464, column: 8, scope: !1303)
!1307 = !DILocation(line: 464, column: 27, scope: !1303)
!1308 = !DILocation(line: 464, column: 45, scope: !1303)
!1309 = !DILocation(line: 464, column: 53, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 1)
!1311 = !DILocation(line: 464, column: 61, scope: !1310)
!1312 = !DILocation(line: 464, column: 60, scope: !1310)
!1313 = !DILocation(line: 464, column: 48, scope: !1310)
!1314 = !DILocation(line: 464, column: 67, scope: !1310)
!1315 = !DILocation(line: 464, column: 8, scope: !1310)
!1316 = !DILocation(line: 464, column: 86, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 2)
!1318 = !DILocation(line: 465, column: 15, scope: !1183)
!1319 = !DILocation(line: 465, column: 12, scope: !1183)
!1320 = !DILocation(line: 466, column: 15, scope: !1183)
!1321 = !DILocation(line: 466, column: 12, scope: !1183)
!1322 = !DILocation(line: 467, column: 3, scope: !1183)
!1323 = !DILocation(line: 449, column: 22, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1179, file: !1, discriminator: 2)
!1325 = !DILocation(line: 449, column: 3, scope: !1324)
!1326 = distinct !{!1326, !1327}
!1327 = !DILocation(line: 449, column: 3, scope: !1124)
!1328 = !DILocation(line: 469, column: 10, scope: !1124)
!1329 = !DILocation(line: 469, column: 4, scope: !1124)
!1330 = !DILocation(line: 469, column: 8, scope: !1124)
!1331 = !DILocation(line: 470, column: 10, scope: !1124)
!1332 = !DILocation(line: 470, column: 4, scope: !1124)
!1333 = !DILocation(line: 470, column: 8, scope: !1124)
!1334 = !DILocation(line: 472, column: 6, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 472, column: 6)
!1336 = !DILocation(line: 472, column: 8, scope: !1335)
!1337 = !DILocation(line: 472, column: 6, scope: !1124)
!1338 = !DILocation(line: 473, column: 5, scope: !1335)
!1339 = distinct !{!1339, !1338}
!1340 = !DILocation(line: 473, column: 5, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1342, file: !1, discriminator: 1)
!1342 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 473, column: 5)
!1343 = !DILocation(line: 473, column: 5, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1342, file: !1, discriminator: 2)
!1345 = !DILocation(line: 475, column: 5, scope: !1335)
!1346 = !DILocation(line: 476, column: 1, scope: !1124)
!1347 = distinct !DISubprogram(name: "gsl_sf_conicalP_0_e", scope: !1, file: !1, line: 766, type: !1348, isLocal: false, isDefinition: true, scopeLine: 767, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!48, !310, !310, !50}
!1350 = !DILocalVariable(name: "lambda", arg: 1, scope: !1347, file: !1, line: 766, type: !310)
!1351 = !DILocation(line: 766, column: 34, scope: !1347)
!1352 = !DILocalVariable(name: "x", arg: 2, scope: !1347, file: !1, line: 766, type: !310)
!1353 = !DILocation(line: 766, column: 55, scope: !1347)
!1354 = !DILocalVariable(name: "result", arg: 3, scope: !1347, file: !1, line: 766, type: !50)
!1355 = !DILocation(line: 766, column: 74, scope: !1347)
!1356 = !DILocation(line: 770, column: 6, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1347, file: !1, line: 770, column: 6)
!1358 = !DILocation(line: 770, column: 8, scope: !1357)
!1359 = !DILocation(line: 770, column: 6, scope: !1347)
!1360 = !DILocation(line: 771, column: 5, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 770, column: 17)
!1362 = distinct !{!1362, !1360}
!1363 = !DILocation(line: 771, column: 5, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !1, discriminator: 1)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 771, column: 5)
!1366 = distinct !{!1366, !1367}
!1367 = !DILocation(line: 771, column: 5, scope: !1365)
!1368 = !DILocation(line: 771, column: 5, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1370, file: !1, discriminator: 2)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 771, column: 5)
!1371 = !DILocation(line: 771, column: 5, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1365, file: !1, discriminator: 3)
!1373 = !DILocation(line: 772, column: 3, scope: !1361)
!1374 = !DILocation(line: 773, column: 11, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 773, column: 11)
!1376 = !DILocation(line: 773, column: 13, scope: !1375)
!1377 = !DILocation(line: 773, column: 11, scope: !1357)
!1378 = !DILocation(line: 774, column: 5, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 773, column: 21)
!1380 = !DILocation(line: 774, column: 13, scope: !1379)
!1381 = !DILocation(line: 774, column: 17, scope: !1379)
!1382 = !DILocation(line: 775, column: 5, scope: !1379)
!1383 = !DILocation(line: 775, column: 13, scope: !1379)
!1384 = !DILocation(line: 775, column: 17, scope: !1379)
!1385 = !DILocation(line: 776, column: 5, scope: !1379)
!1386 = !DILocation(line: 778, column: 11, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 778, column: 11)
!1388 = !DILocation(line: 778, column: 18, scope: !1387)
!1389 = !DILocation(line: 778, column: 11, scope: !1375)
!1390 = !DILocalVariable(name: "K", scope: !1391, file: !1, line: 779, type: !51)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !1, line: 778, column: 26)
!1392 = !DILocation(line: 779, column: 19, scope: !1391)
!1393 = !DILocalVariable(name: "stat_K", scope: !1391, file: !1, line: 780, type: !48)
!1394 = !DILocation(line: 780, column: 9, scope: !1391)
!1395 = !DILocation(line: 781, column: 8, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 781, column: 8)
!1397 = !DILocation(line: 781, column: 10, scope: !1396)
!1398 = !DILocation(line: 781, column: 8, scope: !1391)
!1399 = !DILocalVariable(name: "th", scope: !1400, file: !1, line: 782, type: !310)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 781, column: 17)
!1401 = !DILocation(line: 782, column: 20, scope: !1400)
!1402 = !DILocation(line: 782, column: 30, scope: !1400)
!1403 = !DILocation(line: 782, column: 25, scope: !1400)
!1404 = !DILocalVariable(name: "s", scope: !1400, file: !1, line: 783, type: !310)
!1405 = !DILocation(line: 783, column: 20, scope: !1400)
!1406 = !DILocation(line: 783, column: 33, scope: !1400)
!1407 = !DILocation(line: 783, column: 32, scope: !1400)
!1408 = !DILocation(line: 783, column: 25, scope: !1400)
!1409 = !DILocation(line: 784, column: 38, scope: !1400)
!1410 = !DILocation(line: 784, column: 16, scope: !1400)
!1411 = !DILocation(line: 784, column: 14, scope: !1400)
!1412 = !DILocation(line: 785, column: 35, scope: !1400)
!1413 = !DILocation(line: 785, column: 31, scope: !1400)
!1414 = !DILocation(line: 785, column: 7, scope: !1400)
!1415 = !DILocation(line: 785, column: 15, scope: !1400)
!1416 = !DILocation(line: 785, column: 20, scope: !1400)
!1417 = !DILocation(line: 786, column: 35, scope: !1400)
!1418 = !DILocation(line: 786, column: 31, scope: !1400)
!1419 = !DILocation(line: 786, column: 7, scope: !1400)
!1420 = !DILocation(line: 786, column: 15, scope: !1400)
!1421 = !DILocation(line: 786, column: 20, scope: !1400)
!1422 = !DILocation(line: 787, column: 51, scope: !1400)
!1423 = !DILocation(line: 787, column: 59, scope: !1400)
!1424 = !DILocation(line: 787, column: 46, scope: !1400)
!1425 = !DILocation(line: 787, column: 44, scope: !1400)
!1426 = !DILocation(line: 787, column: 7, scope: !1400)
!1427 = !DILocation(line: 787, column: 15, scope: !1400)
!1428 = !DILocation(line: 787, column: 19, scope: !1400)
!1429 = !DILocation(line: 788, column: 14, scope: !1400)
!1430 = !DILocation(line: 788, column: 7, scope: !1400)
!1431 = !DILocalVariable(name: "xi", scope: !1432, file: !1, line: 791, type: !310)
!1432 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 790, column: 10)
!1433 = !DILocation(line: 791, column: 20, scope: !1432)
!1434 = !DILocation(line: 791, column: 31, scope: !1432)
!1435 = !DILocation(line: 791, column: 25, scope: !1432)
!1436 = !DILocalVariable(name: "c", scope: !1432, file: !1, line: 792, type: !310)
!1437 = !DILocation(line: 792, column: 20, scope: !1432)
!1438 = !DILocation(line: 792, column: 34, scope: !1432)
!1439 = !DILocation(line: 792, column: 33, scope: !1432)
!1440 = !DILocation(line: 792, column: 25, scope: !1432)
!1441 = !DILocalVariable(name: "t", scope: !1432, file: !1, line: 793, type: !310)
!1442 = !DILocation(line: 793, column: 20, scope: !1432)
!1443 = !DILocation(line: 793, column: 34, scope: !1432)
!1444 = !DILocation(line: 793, column: 33, scope: !1432)
!1445 = !DILocation(line: 793, column: 25, scope: !1432)
!1446 = !DILocation(line: 794, column: 38, scope: !1432)
!1447 = !DILocation(line: 794, column: 16, scope: !1432)
!1448 = !DILocation(line: 794, column: 14, scope: !1432)
!1449 = !DILocation(line: 795, column: 33, scope: !1432)
!1450 = !DILocation(line: 795, column: 31, scope: !1432)
!1451 = !DILocation(line: 795, column: 39, scope: !1432)
!1452 = !DILocation(line: 795, column: 35, scope: !1432)
!1453 = !DILocation(line: 795, column: 7, scope: !1432)
!1454 = !DILocation(line: 795, column: 15, scope: !1432)
!1455 = !DILocation(line: 795, column: 20, scope: !1432)
!1456 = !DILocation(line: 796, column: 33, scope: !1432)
!1457 = !DILocation(line: 796, column: 31, scope: !1432)
!1458 = !DILocation(line: 796, column: 39, scope: !1432)
!1459 = !DILocation(line: 796, column: 35, scope: !1432)
!1460 = !DILocation(line: 796, column: 7, scope: !1432)
!1461 = !DILocation(line: 796, column: 15, scope: !1432)
!1462 = !DILocation(line: 796, column: 20, scope: !1432)
!1463 = !DILocation(line: 797, column: 51, scope: !1432)
!1464 = !DILocation(line: 797, column: 59, scope: !1432)
!1465 = !DILocation(line: 797, column: 46, scope: !1432)
!1466 = !DILocation(line: 797, column: 44, scope: !1432)
!1467 = !DILocation(line: 797, column: 7, scope: !1432)
!1468 = !DILocation(line: 797, column: 15, scope: !1432)
!1469 = !DILocation(line: 797, column: 19, scope: !1432)
!1470 = !DILocation(line: 798, column: 14, scope: !1432)
!1471 = !DILocation(line: 798, column: 7, scope: !1432)
!1472 = !DILocation(line: 801, column: 15, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1387, file: !1, line: 801, column: 14)
!1474 = !DILocation(line: 801, column: 17, scope: !1473)
!1475 = !DILocation(line: 801, column: 24, scope: !1473)
!1476 = !DILocation(line: 801, column: 27, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1473, file: !1, discriminator: 1)
!1478 = !DILocation(line: 801, column: 34, scope: !1477)
!1479 = !DILocation(line: 802, column: 11, scope: !1473)
!1480 = !DILocation(line: 802, column: 15, scope: !1477)
!1481 = !DILocation(line: 802, column: 17, scope: !1477)
!1482 = !DILocation(line: 802, column: 24, scope: !1477)
!1483 = !DILocation(line: 802, column: 27, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1473, file: !1, discriminator: 2)
!1485 = !DILocation(line: 802, column: 34, scope: !1484)
!1486 = !DILocation(line: 803, column: 11, scope: !1473)
!1487 = !DILocation(line: 803, column: 15, scope: !1477)
!1488 = !DILocation(line: 803, column: 17, scope: !1477)
!1489 = !DILocation(line: 803, column: 24, scope: !1477)
!1490 = !DILocation(line: 803, column: 27, scope: !1484)
!1491 = !DILocation(line: 803, column: 34, scope: !1484)
!1492 = !DILocation(line: 801, column: 14, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1387, file: !1, discriminator: 2)
!1494 = !DILocation(line: 805, column: 40, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1473, file: !1, line: 804, column: 7)
!1496 = !DILocation(line: 805, column: 48, scope: !1495)
!1497 = !DILocation(line: 805, column: 51, scope: !1495)
!1498 = !DILocation(line: 805, column: 12, scope: !1495)
!1499 = !DILocation(line: 805, column: 5, scope: !1495)
!1500 = !DILocation(line: 807, column: 15, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1473, file: !1, line: 807, column: 14)
!1502 = !DILocation(line: 807, column: 17, scope: !1501)
!1503 = !DILocation(line: 807, column: 24, scope: !1501)
!1504 = !DILocation(line: 807, column: 27, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1501, file: !1, discriminator: 1)
!1506 = !DILocation(line: 807, column: 34, scope: !1505)
!1507 = !DILocation(line: 808, column: 11, scope: !1501)
!1508 = !DILocation(line: 808, column: 15, scope: !1505)
!1509 = !DILocation(line: 808, column: 17, scope: !1505)
!1510 = !DILocation(line: 808, column: 24, scope: !1505)
!1511 = !DILocation(line: 808, column: 27, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1501, file: !1, discriminator: 2)
!1513 = !DILocation(line: 808, column: 34, scope: !1512)
!1514 = !DILocation(line: 807, column: 14, scope: !1484)
!1515 = !DILocation(line: 810, column: 42, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 809, column: 7)
!1517 = !DILocation(line: 810, column: 60, scope: !1516)
!1518 = !DILocation(line: 810, column: 59, scope: !1516)
!1519 = !DILocation(line: 810, column: 62, scope: !1516)
!1520 = !DILocation(line: 810, column: 66, scope: !1516)
!1521 = !DILocation(line: 810, column: 12, scope: !1516)
!1522 = !DILocation(line: 810, column: 5, scope: !1516)
!1523 = !DILocation(line: 812, column: 17, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 812, column: 11)
!1525 = !DILocation(line: 812, column: 15, scope: !1524)
!1526 = !DILocation(line: 812, column: 19, scope: !1524)
!1527 = !DILocation(line: 812, column: 22, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1524, file: !1, discriminator: 1)
!1529 = !DILocation(line: 812, column: 31, scope: !1528)
!1530 = !DILocation(line: 812, column: 31, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1524, file: !1, discriminator: 2)
!1532 = !DILocation(line: 812, column: 31, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1524, file: !1, discriminator: 3)
!1534 = !DILocation(line: 812, column: 31, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1524, file: !1, discriminator: 4)
!1536 = !DILocation(line: 812, column: 29, scope: !1535)
!1537 = !DILocation(line: 812, column: 11, scope: !1535)
!1538 = !DILocalVariable(name: "P", scope: !1539, file: !1, line: 813, type: !51)
!1539 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 812, column: 48)
!1540 = !DILocation(line: 813, column: 19, scope: !1539)
!1541 = !DILocalVariable(name: "lm", scope: !1539, file: !1, line: 814, type: !49)
!1542 = !DILocation(line: 814, column: 12, scope: !1539)
!1543 = !DILocalVariable(name: "stat_P", scope: !1539, file: !1, line: 815, type: !48)
!1544 = !DILocation(line: 815, column: 9, scope: !1539)
!1545 = !DILocation(line: 815, column: 49, scope: !1539)
!1546 = !DILocation(line: 815, column: 57, scope: !1539)
!1547 = !DILocation(line: 815, column: 18, scope: !1539)
!1548 = !DILocalVariable(name: "stat_e", scope: !1539, file: !1, line: 818, type: !48)
!1549 = !DILocation(line: 818, column: 9, scope: !1539)
!1550 = !DILocation(line: 818, column: 40, scope: !1539)
!1551 = !DILocation(line: 818, column: 71, scope: !1539)
!1552 = !DILocation(line: 818, column: 66, scope: !1539)
!1553 = !DILocation(line: 818, column: 64, scope: !1539)
!1554 = !DILocation(line: 819, column: 45, scope: !1539)
!1555 = !DILocation(line: 819, column: 52, scope: !1539)
!1556 = !DILocation(line: 820, column: 43, scope: !1539)
!1557 = !DILocation(line: 818, column: 18, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1539, file: !1, discriminator: 1)
!1559 = !DILocation(line: 821, column: 12, scope: !1539)
!1560 = !DILocation(line: 821, column: 12, scope: !1558)
!1561 = !DILocation(line: 821, column: 12, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1539, file: !1, discriminator: 2)
!1563 = !DILocation(line: 821, column: 12, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1539, file: !1, discriminator: 3)
!1565 = !DILocation(line: 821, column: 12, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1539, file: !1, discriminator: 4)
!1567 = !DILocation(line: 821, column: 12, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1539, file: !1, discriminator: 5)
!1569 = !DILocation(line: 821, column: 12, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1539, file: !1, discriminator: 6)
!1571 = !DILocation(line: 821, column: 5, scope: !1570)
!1572 = !DILocalVariable(name: "V0", scope: !1573, file: !1, line: 824, type: !49)
!1573 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 823, column: 8)
!1574 = !DILocation(line: 824, column: 12, scope: !1573)
!1575 = !DILocalVariable(name: "V1", scope: !1573, file: !1, line: 824, type: !49)
!1576 = !DILocation(line: 824, column: 16, scope: !1573)
!1577 = !DILocation(line: 825, column: 8, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !1, line: 825, column: 8)
!1579 = !DILocation(line: 825, column: 10, scope: !1578)
!1580 = !DILocation(line: 825, column: 8, scope: !1573)
!1581 = !DILocalVariable(name: "th", scope: !1582, file: !1, line: 826, type: !49)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 825, column: 17)
!1583 = !DILocation(line: 826, column: 14, scope: !1582)
!1584 = !DILocation(line: 826, column: 25, scope: !1582)
!1585 = !DILocation(line: 826, column: 20, scope: !1582)
!1586 = !DILocalVariable(name: "sth", scope: !1582, file: !1, line: 827, type: !49)
!1587 = !DILocation(line: 827, column: 14, scope: !1582)
!1588 = !DILocation(line: 827, column: 29, scope: !1582)
!1589 = !DILocation(line: 827, column: 31, scope: !1582)
!1590 = !DILocation(line: 827, column: 30, scope: !1582)
!1591 = !DILocation(line: 827, column: 28, scope: !1582)
!1592 = !DILocation(line: 827, column: 20, scope: !1582)
!1593 = !DILocalVariable(name: "I0", scope: !1582, file: !1, line: 828, type: !51)
!1594 = !DILocation(line: 828, column: 21, scope: !1582)
!1595 = !DILocalVariable(name: "I1", scope: !1582, file: !1, line: 828, type: !51)
!1596 = !DILocation(line: 828, column: 25, scope: !1582)
!1597 = !DILocalVariable(name: "stat_I0", scope: !1582, file: !1, line: 829, type: !48)
!1598 = !DILocation(line: 829, column: 11, scope: !1582)
!1599 = !DILocation(line: 829, column: 47, scope: !1582)
!1600 = !DILocation(line: 829, column: 52, scope: !1582)
!1601 = !DILocation(line: 829, column: 50, scope: !1582)
!1602 = !DILocation(line: 829, column: 21, scope: !1582)
!1603 = !DILocalVariable(name: "stat_I1", scope: !1582, file: !1, line: 830, type: !48)
!1604 = !DILocation(line: 830, column: 11, scope: !1582)
!1605 = !DILocation(line: 830, column: 47, scope: !1582)
!1606 = !DILocation(line: 830, column: 52, scope: !1582)
!1607 = !DILocation(line: 830, column: 50, scope: !1582)
!1608 = !DILocation(line: 830, column: 21, scope: !1582)
!1609 = !DILocalVariable(name: "stat_I", scope: !1582, file: !1, line: 831, type: !48)
!1610 = !DILocation(line: 831, column: 11, scope: !1582)
!1611 = !DILocation(line: 831, column: 21, scope: !1582)
!1612 = !DILocation(line: 831, column: 21, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 1)
!1614 = !DILocation(line: 831, column: 21, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 2)
!1616 = !DILocation(line: 831, column: 21, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 3)
!1618 = !DILocation(line: 831, column: 21, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 4)
!1620 = !DILocation(line: 831, column: 21, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 5)
!1622 = !DILocation(line: 831, column: 21, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 6)
!1624 = !DILocation(line: 831, column: 11, scope: !1623)
!1625 = !DILocalVariable(name: "stat_V", scope: !1582, file: !1, line: 832, type: !48)
!1626 = !DILocation(line: 832, column: 11, scope: !1582)
!1627 = !DILocation(line: 832, column: 34, scope: !1582)
!1628 = !DILocation(line: 832, column: 38, scope: !1582)
!1629 = !DILocation(line: 832, column: 40, scope: !1582)
!1630 = !DILocation(line: 832, column: 39, scope: !1582)
!1631 = !DILocation(line: 832, column: 45, scope: !1582)
!1632 = !DILocation(line: 832, column: 21, scope: !1582)
!1633 = !DILocalVariable(name: "bessterm", scope: !1582, file: !1, line: 833, type: !49)
!1634 = !DILocation(line: 833, column: 14, scope: !1582)
!1635 = !DILocation(line: 833, column: 25, scope: !1582)
!1636 = !DILocation(line: 833, column: 33, scope: !1582)
!1637 = !DILocation(line: 833, column: 28, scope: !1582)
!1638 = !DILocation(line: 833, column: 39, scope: !1582)
!1639 = !DILocation(line: 833, column: 47, scope: !1582)
!1640 = !DILocation(line: 833, column: 42, scope: !1582)
!1641 = !DILocation(line: 833, column: 37, scope: !1582)
!1642 = !DILocalVariable(name: "besserr", scope: !1582, file: !1, line: 834, type: !49)
!1643 = !DILocation(line: 834, column: 14, scope: !1582)
!1644 = !DILocation(line: 834, column: 30, scope: !1582)
!1645 = !DILocation(line: 834, column: 25, scope: !1582)
!1646 = !DILocation(line: 834, column: 39, scope: !1582)
!1647 = !DILocation(line: 834, column: 34, scope: !1582)
!1648 = !DILocation(line: 834, column: 50, scope: !1582)
!1649 = !DILocation(line: 834, column: 45, scope: !1613)
!1650 = !DILocation(line: 834, column: 59, scope: !1582)
!1651 = !DILocation(line: 834, column: 54, scope: !1582)
!1652 = !DILocation(line: 834, column: 43, scope: !1582)
!1653 = !DILocalVariable(name: "arg1", scope: !1582, file: !1, line: 835, type: !49)
!1654 = !DILocation(line: 835, column: 14, scope: !1582)
!1655 = !DILocation(line: 835, column: 21, scope: !1582)
!1656 = !DILocation(line: 835, column: 24, scope: !1582)
!1657 = !DILocation(line: 835, column: 23, scope: !1582)
!1658 = !DILocalVariable(name: "sqts", scope: !1582, file: !1, line: 836, type: !49)
!1659 = !DILocation(line: 836, column: 14, scope: !1582)
!1660 = !DILocation(line: 836, column: 26, scope: !1582)
!1661 = !DILocation(line: 836, column: 29, scope: !1582)
!1662 = !DILocation(line: 836, column: 28, scope: !1582)
!1663 = !DILocation(line: 836, column: 21, scope: !1582)
!1664 = !DILocalVariable(name: "stat_e", scope: !1582, file: !1, line: 837, type: !48)
!1665 = !DILocation(line: 837, column: 11, scope: !1582)
!1666 = !DILocation(line: 837, column: 42, scope: !1582)
!1667 = !DILocation(line: 837, column: 77, scope: !1582)
!1668 = !DILocation(line: 837, column: 72, scope: !1582)
!1669 = !DILocation(line: 837, column: 70, scope: !1582)
!1670 = !DILocation(line: 838, column: 45, scope: !1582)
!1671 = !DILocation(line: 838, column: 52, scope: !1582)
!1672 = !DILocation(line: 838, column: 50, scope: !1582)
!1673 = !DILocation(line: 838, column: 62, scope: !1582)
!1674 = !DILocation(line: 838, column: 69, scope: !1582)
!1675 = !DILocation(line: 838, column: 67, scope: !1582)
!1676 = !DILocation(line: 839, column: 45, scope: !1582)
!1677 = !DILocation(line: 837, column: 20, scope: !1613)
!1678 = !DILocation(line: 840, column: 14, scope: !1582)
!1679 = !DILocation(line: 840, column: 14, scope: !1613)
!1680 = !DILocation(line: 840, column: 14, scope: !1615)
!1681 = !DILocation(line: 840, column: 14, scope: !1617)
!1682 = !DILocation(line: 840, column: 14, scope: !1619)
!1683 = !DILocation(line: 840, column: 14, scope: !1621)
!1684 = !DILocation(line: 840, column: 14, scope: !1623)
!1685 = !DILocation(line: 840, column: 14, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 7)
!1687 = !DILocation(line: 840, column: 14, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 8)
!1689 = !DILocation(line: 840, column: 14, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 9)
!1691 = !DILocation(line: 840, column: 7, scope: !1690)
!1692 = !DILocalVariable(name: "sh", scope: !1693, file: !1, line: 843, type: !49)
!1693 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 842, column: 10)
!1694 = !DILocation(line: 843, column: 14, scope: !1693)
!1695 = !DILocation(line: 843, column: 24, scope: !1693)
!1696 = !DILocation(line: 843, column: 25, scope: !1693)
!1697 = !DILocation(line: 843, column: 19, scope: !1693)
!1698 = !DILocation(line: 843, column: 36, scope: !1693)
!1699 = !DILocation(line: 843, column: 37, scope: !1693)
!1700 = !DILocation(line: 843, column: 31, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1693, file: !1, discriminator: 1)
!1702 = !DILocation(line: 843, column: 30, scope: !1693)
!1703 = !DILocalVariable(name: "xi", scope: !1693, file: !1, line: 844, type: !49)
!1704 = !DILocation(line: 844, column: 14, scope: !1693)
!1705 = !DILocation(line: 844, column: 23, scope: !1693)
!1706 = !DILocation(line: 844, column: 27, scope: !1693)
!1707 = !DILocation(line: 844, column: 25, scope: !1693)
!1708 = !DILocation(line: 844, column: 19, scope: !1693)
!1709 = !DILocalVariable(name: "J0", scope: !1693, file: !1, line: 845, type: !51)
!1710 = !DILocation(line: 845, column: 21, scope: !1693)
!1711 = !DILocalVariable(name: "J1", scope: !1693, file: !1, line: 845, type: !51)
!1712 = !DILocation(line: 845, column: 25, scope: !1693)
!1713 = !DILocalVariable(name: "stat_J0", scope: !1693, file: !1, line: 846, type: !48)
!1714 = !DILocation(line: 846, column: 11, scope: !1693)
!1715 = !DILocation(line: 846, column: 40, scope: !1693)
!1716 = !DILocation(line: 846, column: 45, scope: !1693)
!1717 = !DILocation(line: 846, column: 43, scope: !1693)
!1718 = !DILocation(line: 846, column: 21, scope: !1693)
!1719 = !DILocalVariable(name: "stat_J1", scope: !1693, file: !1, line: 847, type: !48)
!1720 = !DILocation(line: 847, column: 11, scope: !1693)
!1721 = !DILocation(line: 847, column: 40, scope: !1693)
!1722 = !DILocation(line: 847, column: 45, scope: !1693)
!1723 = !DILocation(line: 847, column: 43, scope: !1693)
!1724 = !DILocation(line: 847, column: 21, scope: !1693)
!1725 = !DILocalVariable(name: "stat_J", scope: !1693, file: !1, line: 848, type: !48)
!1726 = !DILocation(line: 848, column: 11, scope: !1693)
!1727 = !DILocation(line: 848, column: 21, scope: !1693)
!1728 = !DILocation(line: 848, column: 21, scope: !1701)
!1729 = !DILocation(line: 848, column: 21, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1693, file: !1, discriminator: 2)
!1731 = !DILocation(line: 848, column: 21, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1693, file: !1, discriminator: 3)
!1733 = !DILocation(line: 848, column: 21, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1693, file: !1, discriminator: 4)
!1735 = !DILocation(line: 848, column: 21, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1693, file: !1, discriminator: 5)
!1737 = !DILocation(line: 848, column: 21, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1693, file: !1, discriminator: 6)
!1739 = !DILocation(line: 848, column: 11, scope: !1738)
!1740 = !DILocalVariable(name: "stat_V", scope: !1693, file: !1, line: 849, type: !48)
!1741 = !DILocation(line: 849, column: 11, scope: !1693)
!1742 = !DILocation(line: 849, column: 34, scope: !1693)
!1743 = !DILocation(line: 849, column: 38, scope: !1693)
!1744 = !DILocation(line: 849, column: 40, scope: !1693)
!1745 = !DILocation(line: 849, column: 39, scope: !1693)
!1746 = !DILocation(line: 849, column: 44, scope: !1693)
!1747 = !DILocation(line: 849, column: 21, scope: !1693)
!1748 = !DILocalVariable(name: "bessterm", scope: !1693, file: !1, line: 850, type: !49)
!1749 = !DILocation(line: 850, column: 14, scope: !1693)
!1750 = !DILocation(line: 850, column: 25, scope: !1693)
!1751 = !DILocation(line: 850, column: 33, scope: !1693)
!1752 = !DILocation(line: 850, column: 28, scope: !1693)
!1753 = !DILocation(line: 850, column: 39, scope: !1693)
!1754 = !DILocation(line: 850, column: 47, scope: !1693)
!1755 = !DILocation(line: 850, column: 42, scope: !1693)
!1756 = !DILocation(line: 850, column: 37, scope: !1693)
!1757 = !DILocalVariable(name: "besserr", scope: !1693, file: !1, line: 851, type: !49)
!1758 = !DILocation(line: 851, column: 14, scope: !1693)
!1759 = !DILocation(line: 851, column: 30, scope: !1693)
!1760 = !DILocation(line: 851, column: 25, scope: !1693)
!1761 = !DILocation(line: 851, column: 39, scope: !1693)
!1762 = !DILocation(line: 851, column: 34, scope: !1693)
!1763 = !DILocation(line: 851, column: 50, scope: !1693)
!1764 = !DILocation(line: 851, column: 45, scope: !1701)
!1765 = !DILocation(line: 851, column: 59, scope: !1693)
!1766 = !DILocation(line: 851, column: 54, scope: !1693)
!1767 = !DILocation(line: 851, column: 43, scope: !1693)
!1768 = !DILocalVariable(name: "pre_val", scope: !1693, file: !1, line: 852, type: !49)
!1769 = !DILocation(line: 852, column: 14, scope: !1693)
!1770 = !DILocation(line: 852, column: 29, scope: !1693)
!1771 = !DILocation(line: 852, column: 32, scope: !1693)
!1772 = !DILocation(line: 852, column: 31, scope: !1693)
!1773 = !DILocation(line: 852, column: 24, scope: !1693)
!1774 = !DILocalVariable(name: "pre_err", scope: !1693, file: !1, line: 853, type: !49)
!1775 = !DILocation(line: 853, column: 14, scope: !1693)
!1776 = !DILocation(line: 853, column: 35, scope: !1693)
!1777 = !DILocation(line: 853, column: 30, scope: !1693)
!1778 = !DILocation(line: 853, column: 28, scope: !1693)
!1779 = !DILocation(line: 854, column: 22, scope: !1693)
!1780 = !DILocation(line: 854, column: 32, scope: !1693)
!1781 = !DILocation(line: 854, column: 30, scope: !1693)
!1782 = !DILocation(line: 854, column: 7, scope: !1693)
!1783 = !DILocation(line: 854, column: 15, scope: !1693)
!1784 = !DILocation(line: 854, column: 20, scope: !1693)
!1785 = !DILocation(line: 855, column: 22, scope: !1693)
!1786 = !DILocation(line: 855, column: 32, scope: !1693)
!1787 = !DILocation(line: 855, column: 30, scope: !1693)
!1788 = !DILocation(line: 855, column: 7, scope: !1693)
!1789 = !DILocation(line: 855, column: 15, scope: !1693)
!1790 = !DILocation(line: 855, column: 20, scope: !1693)
!1791 = !DILocation(line: 856, column: 22, scope: !1693)
!1792 = !DILocation(line: 856, column: 37, scope: !1693)
!1793 = !DILocation(line: 856, column: 32, scope: !1693)
!1794 = !DILocation(line: 856, column: 30, scope: !1693)
!1795 = !DILocation(line: 856, column: 7, scope: !1693)
!1796 = !DILocation(line: 856, column: 15, scope: !1693)
!1797 = !DILocation(line: 856, column: 19, scope: !1693)
!1798 = !DILocation(line: 857, column: 51, scope: !1693)
!1799 = !DILocation(line: 857, column: 59, scope: !1693)
!1800 = !DILocation(line: 857, column: 46, scope: !1693)
!1801 = !DILocation(line: 857, column: 44, scope: !1693)
!1802 = !DILocation(line: 857, column: 7, scope: !1693)
!1803 = !DILocation(line: 857, column: 15, scope: !1693)
!1804 = !DILocation(line: 857, column: 19, scope: !1693)
!1805 = !DILocation(line: 858, column: 14, scope: !1693)
!1806 = !DILocation(line: 858, column: 14, scope: !1701)
!1807 = !DILocation(line: 858, column: 14, scope: !1730)
!1808 = !DILocation(line: 858, column: 14, scope: !1732)
!1809 = !DILocation(line: 858, column: 14, scope: !1734)
!1810 = !DILocation(line: 858, column: 14, scope: !1736)
!1811 = !DILocation(line: 858, column: 14, scope: !1738)
!1812 = !DILocation(line: 858, column: 7, scope: !1738)
!1813 = !DILocation(line: 861, column: 1, scope: !1347)
!1814 = distinct !DISubprogram(name: "conicalP_xlt1_hyperg_A", scope: !1, file: !1, line: 554, type: !1815, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!48, !49, !49, !49, !50}
!1817 = !DILocalVariable(name: "mu", arg: 1, scope: !1814, file: !1, line: 554, type: !49)
!1818 = !DILocation(line: 554, column: 31, scope: !1814)
!1819 = !DILocalVariable(name: "tau", arg: 2, scope: !1814, file: !1, line: 554, type: !49)
!1820 = !DILocation(line: 554, column: 42, scope: !1814)
!1821 = !DILocalVariable(name: "x", arg: 3, scope: !1814, file: !1, line: 554, type: !49)
!1822 = !DILocation(line: 554, column: 54, scope: !1814)
!1823 = !DILocalVariable(name: "result", arg: 4, scope: !1814, file: !1, line: 554, type: !50)
!1824 = !DILocation(line: 554, column: 73, scope: !1814)
!1825 = !DILocalVariable(name: "x2", scope: !1814, file: !1, line: 556, type: !49)
!1826 = !DILocation(line: 556, column: 10, scope: !1814)
!1827 = !DILocation(line: 556, column: 15, scope: !1814)
!1828 = !DILocation(line: 556, column: 17, scope: !1814)
!1829 = !DILocation(line: 556, column: 16, scope: !1814)
!1830 = !DILocalVariable(name: "err_amp", scope: !1814, file: !1, line: 557, type: !49)
!1831 = !DILocation(line: 557, column: 10, scope: !1814)
!1832 = !DILocation(line: 557, column: 63, scope: !1814)
!1833 = !DILocation(line: 557, column: 58, scope: !1814)
!1834 = !DILocation(line: 557, column: 57, scope: !1814)
!1835 = !DILocation(line: 557, column: 49, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1814, file: !1, discriminator: 1)
!1837 = !DILocation(line: 557, column: 47, scope: !1814)
!1838 = !DILocation(line: 557, column: 29, scope: !1814)
!1839 = !DILocation(line: 557, column: 24, scope: !1814)
!1840 = !DILocalVariable(name: "pre_val", scope: !1814, file: !1, line: 558, type: !49)
!1841 = !DILocation(line: 558, column: 10, scope: !1814)
!1842 = !DILocation(line: 558, column: 46, scope: !1814)
!1843 = !DILocation(line: 558, column: 45, scope: !1814)
!1844 = !DILocation(line: 558, column: 39, scope: !1814)
!1845 = !DILocation(line: 558, column: 38, scope: !1814)
!1846 = !DILocation(line: 558, column: 51, scope: !1814)
!1847 = !DILocation(line: 558, column: 31, scope: !1836)
!1848 = !DILocation(line: 558, column: 29, scope: !1814)
!1849 = !DILocalVariable(name: "pre_err", scope: !1814, file: !1, line: 559, type: !49)
!1850 = !DILocation(line: 559, column: 10, scope: !1814)
!1851 = !DILocation(line: 559, column: 20, scope: !1814)
!1852 = !DILocation(line: 559, column: 28, scope: !1814)
!1853 = !DILocation(line: 559, column: 54, scope: !1814)
!1854 = !DILocation(line: 559, column: 49, scope: !1814)
!1855 = !DILocation(line: 559, column: 57, scope: !1814)
!1856 = !DILocation(line: 559, column: 46, scope: !1814)
!1857 = !DILocation(line: 559, column: 70, scope: !1814)
!1858 = !DILocation(line: 559, column: 65, scope: !1836)
!1859 = !DILocation(line: 559, column: 63, scope: !1814)
!1860 = !DILocalVariable(name: "ln_g1", scope: !1814, file: !1, line: 560, type: !51)
!1861 = !DILocation(line: 560, column: 17, scope: !1814)
!1862 = !DILocalVariable(name: "ln_g2", scope: !1814, file: !1, line: 560, type: !51)
!1863 = !DILocation(line: 560, column: 24, scope: !1814)
!1864 = !DILocalVariable(name: "arg_g1", scope: !1814, file: !1, line: 560, type: !51)
!1865 = !DILocation(line: 560, column: 31, scope: !1814)
!1866 = !DILocalVariable(name: "arg_g2", scope: !1814, file: !1, line: 560, type: !51)
!1867 = !DILocation(line: 560, column: 39, scope: !1814)
!1868 = !DILocalVariable(name: "F1", scope: !1814, file: !1, line: 561, type: !51)
!1869 = !DILocation(line: 561, column: 17, scope: !1814)
!1870 = !DILocalVariable(name: "F2", scope: !1814, file: !1, line: 561, type: !51)
!1871 = !DILocation(line: 561, column: 21, scope: !1814)
!1872 = !DILocalVariable(name: "pre1", scope: !1814, file: !1, line: 562, type: !51)
!1873 = !DILocation(line: 562, column: 17, scope: !1814)
!1874 = !DILocalVariable(name: "pre2", scope: !1814, file: !1, line: 562, type: !51)
!1875 = !DILocation(line: 562, column: 23, scope: !1814)
!1876 = !DILocalVariable(name: "t1_val", scope: !1814, file: !1, line: 563, type: !49)
!1877 = !DILocation(line: 563, column: 10, scope: !1814)
!1878 = !DILocalVariable(name: "t1_err", scope: !1814, file: !1, line: 563, type: !49)
!1879 = !DILocation(line: 563, column: 18, scope: !1814)
!1880 = !DILocalVariable(name: "t2_val", scope: !1814, file: !1, line: 564, type: !49)
!1881 = !DILocation(line: 564, column: 10, scope: !1814)
!1882 = !DILocalVariable(name: "t2_err", scope: !1814, file: !1, line: 564, type: !49)
!1883 = !DILocation(line: 564, column: 18, scope: !1814)
!1884 = !DILocalVariable(name: "stat_F1", scope: !1814, file: !1, line: 566, type: !48)
!1885 = !DILocation(line: 566, column: 7, scope: !1814)
!1886 = !DILocation(line: 566, column: 53, scope: !1814)
!1887 = !DILocation(line: 566, column: 52, scope: !1814)
!1888 = !DILocation(line: 566, column: 47, scope: !1814)
!1889 = !DILocation(line: 566, column: 61, scope: !1814)
!1890 = !DILocation(line: 566, column: 60, scope: !1814)
!1891 = !DILocation(line: 566, column: 71, scope: !1814)
!1892 = !DILocation(line: 566, column: 17, scope: !1814)
!1893 = !DILocalVariable(name: "stat_F2", scope: !1814, file: !1, line: 567, type: !48)
!1894 = !DILocation(line: 567, column: 7, scope: !1814)
!1895 = !DILocation(line: 567, column: 53, scope: !1814)
!1896 = !DILocation(line: 567, column: 52, scope: !1814)
!1897 = !DILocation(line: 567, column: 47, scope: !1814)
!1898 = !DILocation(line: 567, column: 61, scope: !1814)
!1899 = !DILocation(line: 567, column: 60, scope: !1814)
!1900 = !DILocation(line: 567, column: 71, scope: !1814)
!1901 = !DILocation(line: 567, column: 17, scope: !1814)
!1902 = !DILocalVariable(name: "status", scope: !1814, file: !1, line: 568, type: !48)
!1903 = !DILocation(line: 568, column: 7, scope: !1814)
!1904 = !DILocation(line: 568, column: 16, scope: !1814)
!1905 = !DILocation(line: 568, column: 16, scope: !1836)
!1906 = !DILocation(line: 568, column: 16, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1814, file: !1, discriminator: 2)
!1908 = !DILocation(line: 568, column: 16, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1814, file: !1, discriminator: 3)
!1910 = !DILocation(line: 568, column: 16, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1814, file: !1, discriminator: 4)
!1912 = !DILocation(line: 568, column: 16, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1814, file: !1, discriminator: 5)
!1914 = !DILocation(line: 568, column: 16, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1814, file: !1, discriminator: 6)
!1916 = !DILocation(line: 568, column: 7, scope: !1915)
!1917 = !DILocation(line: 570, column: 39, scope: !1814)
!1918 = !DILocation(line: 570, column: 38, scope: !1814)
!1919 = !DILocation(line: 570, column: 33, scope: !1814)
!1920 = !DILocation(line: 570, column: 48, scope: !1814)
!1921 = !DILocation(line: 570, column: 47, scope: !1814)
!1922 = !DILocation(line: 570, column: 3, scope: !1814)
!1923 = !DILocation(line: 571, column: 39, scope: !1814)
!1924 = !DILocation(line: 571, column: 38, scope: !1814)
!1925 = !DILocation(line: 571, column: 33, scope: !1814)
!1926 = !DILocation(line: 571, column: 48, scope: !1814)
!1927 = !DILocation(line: 571, column: 47, scope: !1814)
!1928 = !DILocation(line: 571, column: 3, scope: !1814)
!1929 = !DILocation(line: 573, column: 31, scope: !1814)
!1930 = !DILocation(line: 573, column: 24, scope: !1814)
!1931 = !DILocation(line: 573, column: 46, scope: !1814)
!1932 = !DILocation(line: 573, column: 39, scope: !1814)
!1933 = !DILocation(line: 573, column: 3, scope: !1814)
!1934 = !DILocation(line: 574, column: 31, scope: !1814)
!1935 = !DILocation(line: 574, column: 24, scope: !1814)
!1936 = !DILocation(line: 574, column: 46, scope: !1814)
!1937 = !DILocation(line: 574, column: 39, scope: !1814)
!1938 = !DILocation(line: 574, column: 3, scope: !1814)
!1939 = !DILocation(line: 575, column: 20, scope: !1814)
!1940 = !DILocation(line: 575, column: 19, scope: !1814)
!1941 = !DILocation(line: 575, column: 8, scope: !1814)
!1942 = !DILocation(line: 575, column: 12, scope: !1814)
!1943 = !DILocation(line: 576, column: 25, scope: !1814)
!1944 = !DILocation(line: 576, column: 20, scope: !1814)
!1945 = !DILocation(line: 576, column: 19, scope: !1814)
!1946 = !DILocation(line: 576, column: 8, scope: !1814)
!1947 = !DILocation(line: 576, column: 12, scope: !1814)
!1948 = !DILocation(line: 577, column: 44, scope: !1814)
!1949 = !DILocation(line: 577, column: 34, scope: !1814)
!1950 = !DILocation(line: 577, column: 32, scope: !1814)
!1951 = !DILocation(line: 577, column: 8, scope: !1814)
!1952 = !DILocation(line: 577, column: 12, scope: !1814)
!1953 = !DILocation(line: 579, column: 17, scope: !1814)
!1954 = !DILocation(line: 579, column: 26, scope: !1814)
!1955 = !DILocation(line: 579, column: 21, scope: !1814)
!1956 = !DILocation(line: 579, column: 10, scope: !1814)
!1957 = !DILocation(line: 580, column: 22, scope: !1814)
!1958 = !DILocation(line: 580, column: 12, scope: !1814)
!1959 = !DILocation(line: 580, column: 32, scope: !1814)
!1960 = !DILocation(line: 580, column: 27, scope: !1814)
!1961 = !DILocation(line: 580, column: 43, scope: !1814)
!1962 = !DILocation(line: 580, column: 57, scope: !1814)
!1963 = !DILocation(line: 580, column: 49, scope: !1836)
!1964 = !DILocation(line: 580, column: 47, scope: !1814)
!1965 = !DILocation(line: 580, column: 36, scope: !1814)
!1966 = !DILocation(line: 580, column: 10, scope: !1814)
!1967 = !DILocation(line: 581, column: 17, scope: !1814)
!1968 = !DILocation(line: 581, column: 26, scope: !1814)
!1969 = !DILocation(line: 581, column: 21, scope: !1814)
!1970 = !DILocation(line: 581, column: 10, scope: !1814)
!1971 = !DILocation(line: 582, column: 22, scope: !1814)
!1972 = !DILocation(line: 582, column: 12, scope: !1814)
!1973 = !DILocation(line: 582, column: 32, scope: !1814)
!1974 = !DILocation(line: 582, column: 27, scope: !1814)
!1975 = !DILocation(line: 582, column: 43, scope: !1814)
!1976 = !DILocation(line: 582, column: 57, scope: !1814)
!1977 = !DILocation(line: 582, column: 49, scope: !1836)
!1978 = !DILocation(line: 582, column: 47, scope: !1814)
!1979 = !DILocation(line: 582, column: 36, scope: !1814)
!1980 = !DILocation(line: 582, column: 10, scope: !1814)
!1981 = !DILocation(line: 584, column: 18, scope: !1814)
!1982 = !DILocation(line: 584, column: 29, scope: !1814)
!1983 = !DILocation(line: 584, column: 38, scope: !1814)
!1984 = !DILocation(line: 584, column: 36, scope: !1814)
!1985 = !DILocation(line: 584, column: 26, scope: !1814)
!1986 = !DILocation(line: 584, column: 3, scope: !1814)
!1987 = !DILocation(line: 584, column: 11, scope: !1814)
!1988 = !DILocation(line: 584, column: 16, scope: !1814)
!1989 = !DILocation(line: 585, column: 18, scope: !1814)
!1990 = !DILocation(line: 585, column: 29, scope: !1814)
!1991 = !DILocation(line: 585, column: 38, scope: !1814)
!1992 = !DILocation(line: 585, column: 36, scope: !1814)
!1993 = !DILocation(line: 585, column: 26, scope: !1814)
!1994 = !DILocation(line: 585, column: 3, scope: !1814)
!1995 = !DILocation(line: 585, column: 11, scope: !1814)
!1996 = !DILocation(line: 585, column: 16, scope: !1814)
!1997 = !DILocation(line: 586, column: 18, scope: !1814)
!1998 = !DILocation(line: 586, column: 33, scope: !1814)
!1999 = !DILocation(line: 586, column: 42, scope: !1814)
!2000 = !DILocation(line: 586, column: 40, scope: !1814)
!2001 = !DILocation(line: 586, column: 28, scope: !1814)
!2002 = !DILocation(line: 586, column: 26, scope: !1814)
!2003 = !DILocation(line: 586, column: 3, scope: !1814)
!2004 = !DILocation(line: 586, column: 11, scope: !1814)
!2005 = !DILocation(line: 586, column: 15, scope: !1814)
!2006 = !DILocation(line: 587, column: 47, scope: !1814)
!2007 = !DILocation(line: 587, column: 55, scope: !1814)
!2008 = !DILocation(line: 587, column: 42, scope: !1814)
!2009 = !DILocation(line: 587, column: 40, scope: !1814)
!2010 = !DILocation(line: 587, column: 3, scope: !1814)
!2011 = !DILocation(line: 587, column: 11, scope: !1814)
!2012 = !DILocation(line: 587, column: 15, scope: !1814)
!2013 = !DILocation(line: 589, column: 10, scope: !1814)
!2014 = !DILocation(line: 589, column: 3, scope: !1814)
!2015 = distinct !DISubprogram(name: "conicalP_0_V", scope: !1, file: !1, line: 647, type: !2016, isLocal: true, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!48, !310, !310, !310, !310, !57, !57}
!2018 = !DILocalVariable(name: "t", arg: 1, scope: !2015, file: !1, line: 647, type: !310)
!2019 = !DILocation(line: 647, column: 27, scope: !2015)
!2020 = !DILocalVariable(name: "f", arg: 2, scope: !2015, file: !1, line: 647, type: !310)
!2021 = !DILocation(line: 647, column: 43, scope: !2015)
!2022 = !DILocalVariable(name: "tau", arg: 3, scope: !2015, file: !1, line: 647, type: !310)
!2023 = !DILocation(line: 647, column: 59, scope: !2015)
!2024 = !DILocalVariable(name: "sgn", arg: 4, scope: !2015, file: !1, line: 647, type: !310)
!2025 = !DILocation(line: 647, column: 77, scope: !2015)
!2026 = !DILocalVariable(name: "V0", arg: 5, scope: !2015, file: !1, line: 648, type: !57)
!2027 = !DILocation(line: 648, column: 23, scope: !2015)
!2028 = !DILocalVariable(name: "V1", arg: 6, scope: !2015, file: !1, line: 648, type: !57)
!2029 = !DILocation(line: 648, column: 36, scope: !2015)
!2030 = !DILocalVariable(name: "C", scope: !2015, file: !1, line: 650, type: !2031)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, align: 64, elements: !2032)
!2032 = !{!2033}
!2033 = !DISubrange(count: 8)
!2034 = !DILocation(line: 650, column: 10, scope: !2015)
!2035 = !DILocalVariable(name: "T", scope: !2015, file: !1, line: 651, type: !2031)
!2036 = !DILocation(line: 651, column: 10, scope: !2015)
!2037 = !DILocalVariable(name: "H", scope: !2015, file: !1, line: 652, type: !2031)
!2038 = !DILocation(line: 652, column: 10, scope: !2015)
!2039 = !DILocalVariable(name: "V", scope: !2015, file: !1, line: 653, type: !2040)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, align: 64, elements: !2041)
!2041 = !{!2042}
!2042 = !DISubrange(count: 12)
!2043 = !DILocation(line: 653, column: 10, scope: !2015)
!2044 = !DILocalVariable(name: "i", scope: !2015, file: !1, line: 654, type: !48)
!2045 = !DILocation(line: 654, column: 7, scope: !2015)
!2046 = !DILocation(line: 655, column: 3, scope: !2015)
!2047 = !DILocation(line: 655, column: 8, scope: !2015)
!2048 = !DILocation(line: 656, column: 3, scope: !2015)
!2049 = !DILocation(line: 656, column: 8, scope: !2015)
!2050 = !DILocation(line: 657, column: 3, scope: !2015)
!2051 = !DILocation(line: 657, column: 8, scope: !2015)
!2052 = !DILocation(line: 658, column: 8, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 658, column: 3)
!2054 = !DILocation(line: 658, column: 7, scope: !2053)
!2055 = !DILocation(line: 658, column: 12, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2057, file: !1, discriminator: 1)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !1, line: 658, column: 3)
!2058 = !DILocation(line: 658, column: 13, scope: !2056)
!2059 = !DILocation(line: 658, column: 3, scope: !2056)
!2060 = !DILocation(line: 659, column: 14, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 658, column: 23)
!2062 = !DILocation(line: 659, column: 15, scope: !2061)
!2063 = !DILocation(line: 659, column: 12, scope: !2061)
!2064 = !DILocation(line: 659, column: 21, scope: !2061)
!2065 = !DILocation(line: 659, column: 19, scope: !2061)
!2066 = !DILocation(line: 659, column: 7, scope: !2061)
!2067 = !DILocation(line: 659, column: 5, scope: !2061)
!2068 = !DILocation(line: 659, column: 10, scope: !2061)
!2069 = !DILocation(line: 660, column: 14, scope: !2061)
!2070 = !DILocation(line: 660, column: 15, scope: !2061)
!2071 = !DILocation(line: 660, column: 12, scope: !2061)
!2072 = !DILocation(line: 660, column: 22, scope: !2061)
!2073 = !DILocation(line: 660, column: 24, scope: !2061)
!2074 = !DILocation(line: 660, column: 23, scope: !2061)
!2075 = !DILocation(line: 660, column: 19, scope: !2061)
!2076 = !DILocation(line: 660, column: 7, scope: !2061)
!2077 = !DILocation(line: 660, column: 5, scope: !2061)
!2078 = !DILocation(line: 660, column: 10, scope: !2061)
!2079 = !DILocation(line: 661, column: 3, scope: !2061)
!2080 = !DILocation(line: 658, column: 19, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2057, file: !1, discriminator: 2)
!2082 = !DILocation(line: 658, column: 3, scope: !2081)
!2083 = distinct !{!2083, !2084}
!2084 = !DILocation(line: 658, column: 3, scope: !2015)
!2085 = !DILocation(line: 662, column: 8, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 662, column: 3)
!2087 = !DILocation(line: 662, column: 7, scope: !2086)
!2088 = !DILocation(line: 662, column: 12, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 1)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !1, line: 662, column: 3)
!2091 = !DILocation(line: 662, column: 13, scope: !2089)
!2092 = !DILocation(line: 662, column: 3, scope: !2089)
!2093 = !DILocation(line: 663, column: 14, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 662, column: 24)
!2095 = !DILocation(line: 663, column: 15, scope: !2094)
!2096 = !DILocation(line: 663, column: 12, scope: !2094)
!2097 = !DILocation(line: 663, column: 21, scope: !2094)
!2098 = !DILocation(line: 663, column: 19, scope: !2094)
!2099 = !DILocation(line: 663, column: 7, scope: !2094)
!2100 = !DILocation(line: 663, column: 5, scope: !2094)
!2101 = !DILocation(line: 663, column: 10, scope: !2094)
!2102 = !DILocation(line: 664, column: 3, scope: !2094)
!2103 = !DILocation(line: 662, column: 20, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2090, file: !1, discriminator: 2)
!2105 = !DILocation(line: 662, column: 3, scope: !2104)
!2106 = distinct !{!2106, !2107}
!2107 = !DILocation(line: 662, column: 3, scope: !2015)
!2108 = !DILocation(line: 666, column: 3, scope: !2015)
!2109 = !DILocation(line: 666, column: 8, scope: !2015)
!2110 = !DILocation(line: 667, column: 11, scope: !2015)
!2111 = !DILocation(line: 667, column: 15, scope: !2015)
!2112 = !DILocation(line: 667, column: 26, scope: !2015)
!2113 = !DILocation(line: 667, column: 25, scope: !2015)
!2114 = !DILocation(line: 667, column: 20, scope: !2015)
!2115 = !DILocation(line: 667, column: 3, scope: !2015)
!2116 = !DILocation(line: 667, column: 8, scope: !2015)
!2117 = !DILocation(line: 668, column: 15, scope: !2015)
!2118 = !DILocation(line: 668, column: 14, scope: !2015)
!2119 = !DILocation(line: 668, column: 26, scope: !2015)
!2120 = !DILocation(line: 668, column: 25, scope: !2015)
!2121 = !DILocation(line: 668, column: 20, scope: !2015)
!2122 = !DILocation(line: 668, column: 31, scope: !2015)
!2123 = !DILocation(line: 668, column: 40, scope: !2015)
!2124 = !DILocation(line: 668, column: 43, scope: !2015)
!2125 = !DILocation(line: 668, column: 48, scope: !2015)
!2126 = !DILocation(line: 668, column: 47, scope: !2015)
!2127 = !DILocation(line: 668, column: 38, scope: !2015)
!2128 = !DILocation(line: 668, column: 61, scope: !2015)
!2129 = !DILocation(line: 668, column: 60, scope: !2015)
!2130 = !DILocation(line: 668, column: 53, scope: !2015)
!2131 = !DILocation(line: 668, column: 3, scope: !2015)
!2132 = !DILocation(line: 668, column: 8, scope: !2015)
!2133 = !DILocation(line: 669, column: 20, scope: !2015)
!2134 = !DILocation(line: 669, column: 19, scope: !2015)
!2135 = !DILocation(line: 669, column: 32, scope: !2015)
!2136 = !DILocation(line: 669, column: 31, scope: !2015)
!2137 = !DILocation(line: 669, column: 25, scope: !2015)
!2138 = !DILocation(line: 669, column: 44, scope: !2015)
!2139 = !DILocation(line: 669, column: 43, scope: !2015)
!2140 = !DILocation(line: 669, column: 37, scope: !2015)
!2141 = !DILocation(line: 669, column: 49, scope: !2015)
!2142 = !DILocation(line: 669, column: 58, scope: !2015)
!2143 = !DILocation(line: 669, column: 62, scope: !2015)
!2144 = !DILocation(line: 669, column: 61, scope: !2015)
!2145 = !DILocation(line: 669, column: 73, scope: !2015)
!2146 = !DILocation(line: 669, column: 72, scope: !2015)
!2147 = !DILocation(line: 669, column: 77, scope: !2015)
!2148 = !DILocation(line: 669, column: 66, scope: !2015)
!2149 = !DILocation(line: 669, column: 56, scope: !2015)
!2150 = !DILocation(line: 669, column: 13, scope: !2015)
!2151 = !DILocation(line: 669, column: 93, scope: !2015)
!2152 = !DILocation(line: 669, column: 92, scope: !2015)
!2153 = !DILocation(line: 669, column: 84, scope: !2015)
!2154 = !DILocation(line: 669, column: 3, scope: !2015)
!2155 = !DILocation(line: 669, column: 8, scope: !2015)
!2156 = !DILocation(line: 670, column: 21, scope: !2015)
!2157 = !DILocation(line: 670, column: 20, scope: !2015)
!2158 = !DILocation(line: 670, column: 35, scope: !2015)
!2159 = !DILocation(line: 670, column: 34, scope: !2015)
!2160 = !DILocation(line: 670, column: 26, scope: !2015)
!2161 = !DILocation(line: 670, column: 49, scope: !2015)
!2162 = !DILocation(line: 670, column: 48, scope: !2015)
!2163 = !DILocation(line: 670, column: 40, scope: !2015)
!2164 = !DILocation(line: 670, column: 63, scope: !2015)
!2165 = !DILocation(line: 670, column: 62, scope: !2015)
!2166 = !DILocation(line: 670, column: 54, scope: !2015)
!2167 = !DILocation(line: 670, column: 68, scope: !2015)
!2168 = !DILocation(line: 671, column: 23, scope: !2015)
!2169 = !DILocation(line: 671, column: 22, scope: !2015)
!2170 = !DILocation(line: 671, column: 15, scope: !2015)
!2171 = !DILocation(line: 671, column: 30, scope: !2015)
!2172 = !DILocation(line: 671, column: 34, scope: !2015)
!2173 = !DILocation(line: 671, column: 33, scope: !2015)
!2174 = !DILocation(line: 671, column: 46, scope: !2015)
!2175 = !DILocation(line: 671, column: 45, scope: !2015)
!2176 = !DILocation(line: 671, column: 58, scope: !2015)
!2177 = !DILocation(line: 671, column: 57, scope: !2015)
!2178 = !DILocation(line: 671, column: 50, scope: !2015)
!2179 = !DILocation(line: 671, column: 62, scope: !2015)
!2180 = !DILocation(line: 671, column: 38, scope: !2015)
!2181 = !DILocation(line: 671, column: 28, scope: !2015)
!2182 = !DILocation(line: 670, column: 13, scope: !2015)
!2183 = !DILocation(line: 672, column: 28, scope: !2015)
!2184 = !DILocation(line: 672, column: 27, scope: !2015)
!2185 = !DILocation(line: 672, column: 17, scope: !2015)
!2186 = !DILocation(line: 670, column: 3, scope: !2015)
!2187 = !DILocation(line: 670, column: 8, scope: !2015)
!2188 = !DILocation(line: 673, column: 23, scope: !2015)
!2189 = !DILocation(line: 673, column: 22, scope: !2015)
!2190 = !DILocation(line: 673, column: 38, scope: !2015)
!2191 = !DILocation(line: 673, column: 37, scope: !2015)
!2192 = !DILocation(line: 673, column: 28, scope: !2015)
!2193 = !DILocation(line: 673, column: 53, scope: !2015)
!2194 = !DILocation(line: 673, column: 52, scope: !2015)
!2195 = !DILocation(line: 673, column: 43, scope: !2015)
!2196 = !DILocation(line: 673, column: 68, scope: !2015)
!2197 = !DILocation(line: 673, column: 67, scope: !2015)
!2198 = !DILocation(line: 673, column: 58, scope: !2015)
!2199 = !DILocation(line: 674, column: 26, scope: !2015)
!2200 = !DILocation(line: 674, column: 25, scope: !2015)
!2201 = !DILocation(line: 674, column: 16, scope: !2015)
!2202 = !DILocation(line: 674, column: 31, scope: !2015)
!2203 = !DILocation(line: 674, column: 44, scope: !2015)
!2204 = !DILocation(line: 674, column: 57, scope: !2015)
!2205 = !DILocation(line: 674, column: 56, scope: !2015)
!2206 = !DILocation(line: 674, column: 61, scope: !2015)
!2207 = !DILocation(line: 674, column: 48, scope: !2015)
!2208 = !DILocation(line: 674, column: 42, scope: !2015)
!2209 = !DILocation(line: 675, column: 18, scope: !2015)
!2210 = !DILocation(line: 675, column: 22, scope: !2015)
!2211 = !DILocation(line: 675, column: 21, scope: !2015)
!2212 = !DILocation(line: 675, column: 35, scope: !2015)
!2213 = !DILocation(line: 675, column: 34, scope: !2015)
!2214 = !DILocation(line: 675, column: 48, scope: !2015)
!2215 = !DILocation(line: 675, column: 47, scope: !2015)
!2216 = !DILocation(line: 675, column: 39, scope: !2015)
!2217 = !DILocation(line: 675, column: 61, scope: !2015)
!2218 = !DILocation(line: 675, column: 60, scope: !2015)
!2219 = !DILocation(line: 675, column: 52, scope: !2015)
!2220 = !DILocation(line: 675, column: 65, scope: !2015)
!2221 = !DILocation(line: 675, column: 26, scope: !2015)
!2222 = !DILocation(line: 675, column: 16, scope: !2015)
!2223 = !DILocation(line: 673, column: 14, scope: !2015)
!2224 = !DILocation(line: 676, column: 30, scope: !2015)
!2225 = !DILocation(line: 676, column: 29, scope: !2015)
!2226 = !DILocation(line: 676, column: 18, scope: !2015)
!2227 = !DILocation(line: 673, column: 3, scope: !2015)
!2228 = !DILocation(line: 673, column: 8, scope: !2015)
!2229 = !DILocation(line: 677, column: 25, scope: !2015)
!2230 = !DILocation(line: 677, column: 24, scope: !2015)
!2231 = !DILocation(line: 677, column: 42, scope: !2015)
!2232 = !DILocation(line: 677, column: 41, scope: !2015)
!2233 = !DILocation(line: 677, column: 30, scope: !2015)
!2234 = !DILocation(line: 677, column: 59, scope: !2015)
!2235 = !DILocation(line: 677, column: 58, scope: !2015)
!2236 = !DILocation(line: 677, column: 47, scope: !2015)
!2237 = !DILocation(line: 677, column: 76, scope: !2015)
!2238 = !DILocation(line: 677, column: 75, scope: !2015)
!2239 = !DILocation(line: 677, column: 64, scope: !2015)
!2240 = !DILocation(line: 678, column: 28, scope: !2015)
!2241 = !DILocation(line: 678, column: 27, scope: !2015)
!2242 = !DILocation(line: 678, column: 16, scope: !2015)
!2243 = !DILocation(line: 678, column: 45, scope: !2015)
!2244 = !DILocation(line: 678, column: 44, scope: !2015)
!2245 = !DILocation(line: 678, column: 33, scope: !2015)
!2246 = !DILocation(line: 678, column: 50, scope: !2015)
!2247 = !DILocation(line: 679, column: 18, scope: !2015)
!2248 = !DILocation(line: 679, column: 33, scope: !2015)
!2249 = !DILocation(line: 679, column: 32, scope: !2015)
!2250 = !DILocation(line: 679, column: 47, scope: !2015)
!2251 = !DILocation(line: 679, column: 46, scope: !2015)
!2252 = !DILocation(line: 679, column: 37, scope: !2015)
!2253 = !DILocation(line: 679, column: 51, scope: !2015)
!2254 = !DILocation(line: 679, column: 22, scope: !2015)
!2255 = !DILocation(line: 679, column: 16, scope: !2015)
!2256 = !DILocation(line: 680, column: 18, scope: !2015)
!2257 = !DILocation(line: 680, column: 22, scope: !2015)
!2258 = !DILocation(line: 680, column: 21, scope: !2015)
!2259 = !DILocation(line: 680, column: 37, scope: !2015)
!2260 = !DILocation(line: 680, column: 36, scope: !2015)
!2261 = !DILocation(line: 680, column: 54, scope: !2015)
!2262 = !DILocation(line: 680, column: 53, scope: !2015)
!2263 = !DILocation(line: 680, column: 42, scope: !2015)
!2264 = !DILocation(line: 680, column: 71, scope: !2015)
!2265 = !DILocation(line: 680, column: 70, scope: !2015)
!2266 = !DILocation(line: 680, column: 59, scope: !2015)
!2267 = !DILocation(line: 681, column: 38, scope: !2015)
!2268 = !DILocation(line: 681, column: 37, scope: !2015)
!2269 = !DILocation(line: 681, column: 26, scope: !2015)
!2270 = !DILocation(line: 681, column: 43, scope: !2015)
!2271 = !DILocation(line: 681, column: 65, scope: !2015)
!2272 = !DILocation(line: 681, column: 64, scope: !2015)
!2273 = !DILocation(line: 681, column: 55, scope: !2015)
!2274 = !DILocation(line: 680, column: 26, scope: !2015)
!2275 = !DILocation(line: 680, column: 16, scope: !2015)
!2276 = !DILocation(line: 677, column: 14, scope: !2015)
!2277 = !DILocation(line: 683, column: 31, scope: !2015)
!2278 = !DILocation(line: 683, column: 30, scope: !2015)
!2279 = !DILocation(line: 683, column: 18, scope: !2015)
!2280 = !DILocation(line: 677, column: 3, scope: !2015)
!2281 = !DILocation(line: 677, column: 8, scope: !2015)
!2282 = !DILocation(line: 685, column: 9, scope: !2015)
!2283 = !DILocation(line: 685, column: 22, scope: !2015)
!2284 = !DILocation(line: 685, column: 21, scope: !2015)
!2285 = !DILocation(line: 685, column: 27, scope: !2015)
!2286 = !DILocation(line: 685, column: 26, scope: !2015)
!2287 = !DILocation(line: 685, column: 32, scope: !2015)
!2288 = !DILocation(line: 685, column: 31, scope: !2015)
!2289 = !DILocation(line: 685, column: 38, scope: !2015)
!2290 = !DILocation(line: 685, column: 37, scope: !2015)
!2291 = !DILocation(line: 685, column: 14, scope: !2015)
!2292 = !DILocation(line: 686, column: 24, scope: !2015)
!2293 = !DILocation(line: 686, column: 23, scope: !2015)
!2294 = !DILocation(line: 686, column: 29, scope: !2015)
!2295 = !DILocation(line: 686, column: 28, scope: !2015)
!2296 = !DILocation(line: 686, column: 40, scope: !2015)
!2297 = !DILocation(line: 686, column: 39, scope: !2015)
!2298 = !DILocation(line: 686, column: 45, scope: !2015)
!2299 = !DILocation(line: 686, column: 44, scope: !2015)
!2300 = !DILocation(line: 686, column: 33, scope: !2015)
!2301 = !DILocation(line: 686, column: 51, scope: !2015)
!2302 = !DILocation(line: 686, column: 50, scope: !2015)
!2303 = !DILocation(line: 686, column: 14, scope: !2015)
!2304 = !DILocation(line: 687, column: 16, scope: !2015)
!2305 = !DILocation(line: 687, column: 24, scope: !2015)
!2306 = !DILocation(line: 687, column: 23, scope: !2015)
!2307 = !DILocation(line: 687, column: 29, scope: !2015)
!2308 = !DILocation(line: 687, column: 28, scope: !2015)
!2309 = !DILocation(line: 688, column: 32, scope: !2015)
!2310 = !DILocation(line: 688, column: 31, scope: !2015)
!2311 = !DILocation(line: 688, column: 37, scope: !2015)
!2312 = !DILocation(line: 688, column: 36, scope: !2015)
!2313 = !DILocation(line: 688, column: 47, scope: !2015)
!2314 = !DILocation(line: 688, column: 46, scope: !2015)
!2315 = !DILocation(line: 688, column: 52, scope: !2015)
!2316 = !DILocation(line: 688, column: 51, scope: !2015)
!2317 = !DILocation(line: 688, column: 41, scope: !2015)
!2318 = !DILocation(line: 688, column: 57, scope: !2015)
!2319 = !DILocation(line: 688, column: 56, scope: !2015)
!2320 = !DILocation(line: 688, column: 63, scope: !2015)
!2321 = !DILocation(line: 688, column: 62, scope: !2015)
!2322 = !DILocation(line: 688, column: 23, scope: !2015)
!2323 = !DILocation(line: 689, column: 34, scope: !2015)
!2324 = !DILocation(line: 689, column: 33, scope: !2015)
!2325 = !DILocation(line: 689, column: 39, scope: !2015)
!2326 = !DILocation(line: 689, column: 38, scope: !2015)
!2327 = !DILocation(line: 689, column: 45, scope: !2015)
!2328 = !DILocation(line: 689, column: 44, scope: !2015)
!2329 = !DILocation(line: 689, column: 23, scope: !2015)
!2330 = !DILocation(line: 687, column: 20, scope: !2015)
!2331 = !DILocation(line: 687, column: 14, scope: !2015)
!2332 = !DILocation(line: 685, column: 4, scope: !2015)
!2333 = !DILocation(line: 685, column: 7, scope: !2015)
!2334 = !DILocation(line: 691, column: 9, scope: !2015)
!2335 = !DILocation(line: 691, column: 14, scope: !2015)
!2336 = !DILocation(line: 691, column: 13, scope: !2015)
!2337 = !DILocation(line: 691, column: 27, scope: !2015)
!2338 = !DILocation(line: 691, column: 32, scope: !2015)
!2339 = !DILocation(line: 691, column: 31, scope: !2015)
!2340 = !DILocation(line: 691, column: 37, scope: !2015)
!2341 = !DILocation(line: 691, column: 42, scope: !2015)
!2342 = !DILocation(line: 691, column: 41, scope: !2015)
!2343 = !DILocation(line: 691, column: 36, scope: !2015)
!2344 = !DILocation(line: 691, column: 25, scope: !2015)
!2345 = !DILocation(line: 691, column: 48, scope: !2015)
!2346 = !DILocation(line: 691, column: 47, scope: !2015)
!2347 = !DILocation(line: 691, column: 54, scope: !2015)
!2348 = !DILocation(line: 691, column: 53, scope: !2015)
!2349 = !DILocation(line: 691, column: 19, scope: !2015)
!2350 = !DILocation(line: 692, column: 28, scope: !2015)
!2351 = !DILocation(line: 692, column: 27, scope: !2015)
!2352 = !DILocation(line: 692, column: 33, scope: !2015)
!2353 = !DILocation(line: 692, column: 32, scope: !2015)
!2354 = !DILocation(line: 692, column: 46, scope: !2015)
!2355 = !DILocation(line: 692, column: 45, scope: !2015)
!2356 = !DILocation(line: 692, column: 51, scope: !2015)
!2357 = !DILocation(line: 692, column: 50, scope: !2015)
!2358 = !DILocation(line: 692, column: 38, scope: !2015)
!2359 = !DILocation(line: 692, column: 57, scope: !2015)
!2360 = !DILocation(line: 692, column: 56, scope: !2015)
!2361 = !DILocation(line: 692, column: 19, scope: !2015)
!2362 = !DILocation(line: 693, column: 21, scope: !2015)
!2363 = !DILocation(line: 693, column: 33, scope: !2015)
!2364 = !DILocation(line: 693, column: 32, scope: !2015)
!2365 = !DILocation(line: 693, column: 38, scope: !2015)
!2366 = !DILocation(line: 693, column: 37, scope: !2015)
!2367 = !DILocation(line: 693, column: 43, scope: !2015)
!2368 = !DILocation(line: 693, column: 42, scope: !2015)
!2369 = !DILocation(line: 693, column: 49, scope: !2015)
!2370 = !DILocation(line: 693, column: 48, scope: !2015)
!2371 = !DILocation(line: 694, column: 36, scope: !2015)
!2372 = !DILocation(line: 694, column: 35, scope: !2015)
!2373 = !DILocation(line: 694, column: 41, scope: !2015)
!2374 = !DILocation(line: 694, column: 40, scope: !2015)
!2375 = !DILocation(line: 694, column: 51, scope: !2015)
!2376 = !DILocation(line: 694, column: 50, scope: !2015)
!2377 = !DILocation(line: 694, column: 56, scope: !2015)
!2378 = !DILocation(line: 694, column: 55, scope: !2015)
!2379 = !DILocation(line: 694, column: 45, scope: !2015)
!2380 = !DILocation(line: 694, column: 68, scope: !2015)
!2381 = !DILocation(line: 694, column: 67, scope: !2015)
!2382 = !DILocation(line: 694, column: 73, scope: !2015)
!2383 = !DILocation(line: 694, column: 72, scope: !2015)
!2384 = !DILocation(line: 694, column: 61, scope: !2015)
!2385 = !DILocation(line: 694, column: 79, scope: !2015)
!2386 = !DILocation(line: 694, column: 78, scope: !2015)
!2387 = !DILocation(line: 694, column: 28, scope: !2015)
!2388 = !DILocation(line: 695, column: 38, scope: !2015)
!2389 = !DILocation(line: 695, column: 37, scope: !2015)
!2390 = !DILocation(line: 695, column: 43, scope: !2015)
!2391 = !DILocation(line: 695, column: 42, scope: !2015)
!2392 = !DILocation(line: 695, column: 49, scope: !2015)
!2393 = !DILocation(line: 695, column: 48, scope: !2015)
!2394 = !DILocation(line: 695, column: 28, scope: !2015)
!2395 = !DILocation(line: 693, column: 25, scope: !2015)
!2396 = !DILocation(line: 693, column: 19, scope: !2015)
!2397 = !DILocation(line: 691, column: 4, scope: !2015)
!2398 = !DILocation(line: 691, column: 7, scope: !2015)
!2399 = !DILocation(line: 698, column: 3, scope: !2015)
!2400 = distinct !DISubprogram(name: "gsl_sf_conicalP_1_e", scope: !1, file: !1, line: 867, type: !1348, isLocal: false, isDefinition: true, scopeLine: 868, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2401 = !DILocalVariable(name: "lambda", arg: 1, scope: !2400, file: !1, line: 867, type: !310)
!2402 = !DILocation(line: 867, column: 34, scope: !2400)
!2403 = !DILocalVariable(name: "x", arg: 2, scope: !2400, file: !1, line: 867, type: !310)
!2404 = !DILocation(line: 867, column: 55, scope: !2400)
!2405 = !DILocalVariable(name: "result", arg: 3, scope: !2400, file: !1, line: 867, type: !50)
!2406 = !DILocation(line: 867, column: 74, scope: !2400)
!2407 = !DILocation(line: 871, column: 6, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2400, file: !1, line: 871, column: 6)
!2409 = !DILocation(line: 871, column: 8, scope: !2408)
!2410 = !DILocation(line: 871, column: 6, scope: !2400)
!2411 = !DILocation(line: 872, column: 5, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !1, line: 871, column: 17)
!2413 = distinct !{!2413, !2411}
!2414 = !DILocation(line: 872, column: 5, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2416, file: !1, discriminator: 1)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !1, line: 872, column: 5)
!2417 = distinct !{!2417, !2418}
!2418 = !DILocation(line: 872, column: 5, scope: !2416)
!2419 = !DILocation(line: 872, column: 5, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2421, file: !1, discriminator: 2)
!2421 = distinct !DILexicalBlock(scope: !2416, file: !1, line: 872, column: 5)
!2422 = !DILocation(line: 872, column: 5, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2416, file: !1, discriminator: 3)
!2424 = !DILocation(line: 873, column: 3, scope: !2412)
!2425 = !DILocation(line: 874, column: 11, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2408, file: !1, line: 874, column: 11)
!2427 = !DILocation(line: 874, column: 18, scope: !2426)
!2428 = !DILocation(line: 874, column: 11, scope: !2408)
!2429 = !DILocalVariable(name: "K", scope: !2430, file: !1, line: 875, type: !51)
!2430 = distinct !DILexicalBlock(scope: !2426, file: !1, line: 874, column: 26)
!2431 = !DILocation(line: 875, column: 19, scope: !2430)
!2432 = !DILocalVariable(name: "E", scope: !2430, file: !1, line: 875, type: !51)
!2433 = !DILocation(line: 875, column: 22, scope: !2430)
!2434 = !DILocalVariable(name: "stat_K", scope: !2430, file: !1, line: 876, type: !48)
!2435 = !DILocation(line: 876, column: 9, scope: !2430)
!2436 = !DILocalVariable(name: "stat_E", scope: !2430, file: !1, line: 876, type: !48)
!2437 = !DILocation(line: 876, column: 17, scope: !2430)
!2438 = !DILocation(line: 877, column: 8, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2430, file: !1, line: 877, column: 8)
!2440 = !DILocation(line: 877, column: 10, scope: !2439)
!2441 = !DILocation(line: 877, column: 8, scope: !2430)
!2442 = !DILocation(line: 878, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 877, column: 18)
!2444 = !DILocation(line: 878, column: 15, scope: !2443)
!2445 = !DILocation(line: 878, column: 19, scope: !2443)
!2446 = !DILocation(line: 879, column: 7, scope: !2443)
!2447 = !DILocation(line: 879, column: 15, scope: !2443)
!2448 = !DILocation(line: 879, column: 19, scope: !2443)
!2449 = !DILocation(line: 880, column: 7, scope: !2443)
!2450 = !DILocation(line: 882, column: 13, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 882, column: 13)
!2452 = !DILocation(line: 882, column: 15, scope: !2451)
!2453 = !DILocation(line: 882, column: 13, scope: !2439)
!2454 = !DILocation(line: 883, column: 14, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !1, line: 883, column: 10)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 882, column: 22)
!2457 = !DILocation(line: 883, column: 13, scope: !2455)
!2458 = !DILocation(line: 883, column: 16, scope: !2455)
!2459 = !DILocation(line: 883, column: 10, scope: !2456)
!2460 = !DILocalVariable(name: "err_amp", scope: !2461, file: !1, line: 884, type: !49)
!2461 = distinct !DILexicalBlock(scope: !2455, file: !1, line: 883, column: 40)
!2462 = !DILocation(line: 884, column: 16, scope: !2461)
!2463 = !DILocation(line: 884, column: 75, scope: !2461)
!2464 = !DILocation(line: 884, column: 74, scope: !2461)
!2465 = !DILocation(line: 884, column: 66, scope: !2461)
!2466 = !DILocation(line: 884, column: 64, scope: !2461)
!2467 = !DILocation(line: 884, column: 46, scope: !2461)
!2468 = !DILocation(line: 884, column: 26, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2461, file: !1, discriminator: 1)
!2470 = !DILocation(line: 885, column: 47, scope: !2461)
!2471 = !DILocation(line: 885, column: 46, scope: !2461)
!2472 = !DILocation(line: 885, column: 38, scope: !2461)
!2473 = !DILocation(line: 885, column: 36, scope: !2461)
!2474 = !DILocation(line: 885, column: 75, scope: !2461)
!2475 = !DILocation(line: 885, column: 74, scope: !2461)
!2476 = !DILocation(line: 885, column: 68, scope: !2461)
!2477 = !DILocation(line: 885, column: 57, scope: !2461)
!2478 = !DILocation(line: 885, column: 50, scope: !2461)
!2479 = !DILocation(line: 885, column: 9, scope: !2461)
!2480 = !DILocation(line: 885, column: 17, scope: !2461)
!2481 = !DILocation(line: 885, column: 21, scope: !2461)
!2482 = !DILocation(line: 886, column: 23, scope: !2461)
!2483 = !DILocation(line: 886, column: 31, scope: !2461)
!2484 = !DILocation(line: 886, column: 37, scope: !2461)
!2485 = !DILocation(line: 886, column: 62, scope: !2461)
!2486 = !DILocation(line: 886, column: 70, scope: !2461)
!2487 = !DILocation(line: 886, column: 57, scope: !2461)
!2488 = !DILocation(line: 886, column: 55, scope: !2461)
!2489 = !DILocation(line: 886, column: 9, scope: !2461)
!2490 = !DILocation(line: 886, column: 17, scope: !2461)
!2491 = !DILocation(line: 886, column: 21, scope: !2461)
!2492 = !DILocation(line: 887, column: 9, scope: !2461)
!2493 = !DILocalVariable(name: "th", scope: !2494, file: !1, line: 890, type: !310)
!2494 = distinct !DILexicalBlock(scope: !2455, file: !1, line: 889, column: 12)
!2495 = !DILocation(line: 890, column: 22, scope: !2494)
!2496 = !DILocation(line: 890, column: 32, scope: !2494)
!2497 = !DILocation(line: 890, column: 27, scope: !2494)
!2498 = !DILocalVariable(name: "s", scope: !2494, file: !1, line: 891, type: !310)
!2499 = !DILocation(line: 891, column: 22, scope: !2494)
!2500 = !DILocation(line: 891, column: 35, scope: !2494)
!2501 = !DILocation(line: 891, column: 34, scope: !2494)
!2502 = !DILocation(line: 891, column: 27, scope: !2494)
!2503 = !DILocalVariable(name: "c2", scope: !2494, file: !1, line: 892, type: !310)
!2504 = !DILocation(line: 892, column: 22, scope: !2494)
!2505 = !DILocation(line: 892, column: 33, scope: !2494)
!2506 = !DILocation(line: 892, column: 35, scope: !2494)
!2507 = !DILocation(line: 892, column: 34, scope: !2494)
!2508 = !DILocation(line: 892, column: 31, scope: !2494)
!2509 = !DILocalVariable(name: "sth", scope: !2494, file: !1, line: 893, type: !310)
!2510 = !DILocation(line: 893, column: 22, scope: !2494)
!2511 = !DILocation(line: 893, column: 32, scope: !2494)
!2512 = !DILocation(line: 893, column: 28, scope: !2494)
!2513 = !DILocalVariable(name: "pre", scope: !2494, file: !1, line: 894, type: !310)
!2514 = !DILocation(line: 894, column: 22, scope: !2494)
!2515 = !DILocation(line: 894, column: 38, scope: !2494)
!2516 = !DILocation(line: 894, column: 37, scope: !2494)
!2517 = !DILocation(line: 894, column: 31, scope: !2494)
!2518 = !DILocation(line: 895, column: 40, scope: !2494)
!2519 = !DILocation(line: 895, column: 18, scope: !2494)
!2520 = !DILocation(line: 895, column: 16, scope: !2494)
!2521 = !DILocation(line: 896, column: 40, scope: !2494)
!2522 = !DILocation(line: 896, column: 18, scope: !2494)
!2523 = !DILocation(line: 896, column: 16, scope: !2494)
!2524 = !DILocation(line: 897, column: 24, scope: !2494)
!2525 = !DILocation(line: 897, column: 33, scope: !2494)
!2526 = !DILocation(line: 897, column: 39, scope: !2494)
!2527 = !DILocation(line: 897, column: 46, scope: !2494)
!2528 = !DILocation(line: 897, column: 42, scope: !2494)
!2529 = !DILocation(line: 897, column: 37, scope: !2494)
!2530 = !DILocation(line: 897, column: 28, scope: !2494)
!2531 = !DILocation(line: 897, column: 9, scope: !2494)
!2532 = !DILocation(line: 897, column: 17, scope: !2494)
!2533 = !DILocation(line: 897, column: 22, scope: !2494)
!2534 = !DILocation(line: 898, column: 24, scope: !2494)
!2535 = !DILocation(line: 898, column: 33, scope: !2494)
!2536 = !DILocation(line: 898, column: 44, scope: !2494)
!2537 = !DILocation(line: 898, column: 39, scope: !2494)
!2538 = !DILocation(line: 898, column: 52, scope: !2494)
!2539 = !DILocation(line: 898, column: 48, scope: !2494)
!2540 = !DILocation(line: 898, column: 37, scope: !2494)
!2541 = !DILocation(line: 898, column: 28, scope: !2494)
!2542 = !DILocation(line: 898, column: 9, scope: !2494)
!2543 = !DILocation(line: 898, column: 17, scope: !2494)
!2544 = !DILocation(line: 898, column: 22, scope: !2494)
!2545 = !DILocation(line: 899, column: 53, scope: !2494)
!2546 = !DILocation(line: 899, column: 61, scope: !2494)
!2547 = !DILocation(line: 899, column: 48, scope: !2494)
!2548 = !DILocation(line: 899, column: 46, scope: !2494)
!2549 = !DILocation(line: 899, column: 9, scope: !2494)
!2550 = !DILocation(line: 899, column: 17, scope: !2494)
!2551 = !DILocation(line: 899, column: 21, scope: !2494)
!2552 = !DILocation(line: 900, column: 16, scope: !2494)
!2553 = !DILocation(line: 900, column: 16, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2494, file: !1, discriminator: 1)
!2555 = !DILocation(line: 900, column: 16, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !2494, file: !1, discriminator: 2)
!2557 = !DILocation(line: 900, column: 16, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2494, file: !1, discriminator: 3)
!2559 = !DILocation(line: 900, column: 16, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !2494, file: !1, discriminator: 4)
!2561 = !DILocation(line: 900, column: 16, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2494, file: !1, discriminator: 5)
!2563 = !DILocation(line: 900, column: 16, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2494, file: !1, discriminator: 6)
!2565 = !DILocation(line: 900, column: 9, scope: !2564)
!2566 = !DILocation(line: 904, column: 10, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !1, line: 904, column: 10)
!2568 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 903, column: 10)
!2569 = !DILocation(line: 904, column: 11, scope: !2567)
!2570 = !DILocation(line: 904, column: 16, scope: !2567)
!2571 = !DILocation(line: 904, column: 10, scope: !2568)
!2572 = !DILocalVariable(name: "err_amp", scope: !2573, file: !1, line: 905, type: !49)
!2573 = distinct !DILexicalBlock(scope: !2567, file: !1, line: 904, column: 40)
!2574 = !DILocation(line: 905, column: 16, scope: !2573)
!2575 = !DILocation(line: 905, column: 75, scope: !2573)
!2576 = !DILocation(line: 905, column: 74, scope: !2573)
!2577 = !DILocation(line: 905, column: 66, scope: !2573)
!2578 = !DILocation(line: 905, column: 64, scope: !2573)
!2579 = !DILocation(line: 905, column: 46, scope: !2573)
!2580 = !DILocation(line: 905, column: 26, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2573, file: !1, discriminator: 1)
!2582 = !DILocation(line: 906, column: 44, scope: !2573)
!2583 = !DILocation(line: 906, column: 45, scope: !2573)
!2584 = !DILocation(line: 906, column: 39, scope: !2573)
!2585 = !DILocation(line: 906, column: 37, scope: !2573)
!2586 = !DILocation(line: 906, column: 72, scope: !2573)
!2587 = !DILocation(line: 906, column: 73, scope: !2573)
!2588 = !DILocation(line: 906, column: 69, scope: !2573)
!2589 = !DILocation(line: 906, column: 58, scope: !2573)
!2590 = !DILocation(line: 906, column: 51, scope: !2573)
!2591 = !DILocation(line: 906, column: 9, scope: !2573)
!2592 = !DILocation(line: 906, column: 17, scope: !2573)
!2593 = !DILocation(line: 906, column: 21, scope: !2573)
!2594 = !DILocation(line: 907, column: 23, scope: !2573)
!2595 = !DILocation(line: 907, column: 31, scope: !2573)
!2596 = !DILocation(line: 907, column: 37, scope: !2573)
!2597 = !DILocation(line: 907, column: 62, scope: !2573)
!2598 = !DILocation(line: 907, column: 70, scope: !2573)
!2599 = !DILocation(line: 907, column: 57, scope: !2573)
!2600 = !DILocation(line: 907, column: 55, scope: !2573)
!2601 = !DILocation(line: 907, column: 9, scope: !2573)
!2602 = !DILocation(line: 907, column: 17, scope: !2573)
!2603 = !DILocation(line: 907, column: 21, scope: !2573)
!2604 = !DILocation(line: 908, column: 9, scope: !2573)
!2605 = !DILocalVariable(name: "xi", scope: !2606, file: !1, line: 911, type: !310)
!2606 = distinct !DILexicalBlock(scope: !2567, file: !1, line: 910, column: 12)
!2607 = !DILocation(line: 911, column: 22, scope: !2606)
!2608 = !DILocation(line: 911, column: 33, scope: !2606)
!2609 = !DILocation(line: 911, column: 27, scope: !2606)
!2610 = !DILocalVariable(name: "c", scope: !2606, file: !1, line: 912, type: !310)
!2611 = !DILocation(line: 912, column: 22, scope: !2606)
!2612 = !DILocation(line: 912, column: 36, scope: !2606)
!2613 = !DILocation(line: 912, column: 35, scope: !2606)
!2614 = !DILocation(line: 912, column: 27, scope: !2606)
!2615 = !DILocalVariable(name: "t", scope: !2606, file: !1, line: 913, type: !310)
!2616 = !DILocation(line: 913, column: 22, scope: !2606)
!2617 = !DILocation(line: 913, column: 36, scope: !2606)
!2618 = !DILocation(line: 913, column: 35, scope: !2606)
!2619 = !DILocation(line: 913, column: 27, scope: !2606)
!2620 = !DILocalVariable(name: "sxi", scope: !2606, file: !1, line: 914, type: !310)
!2621 = !DILocation(line: 914, column: 22, scope: !2606)
!2622 = !DILocation(line: 914, column: 33, scope: !2606)
!2623 = !DILocation(line: 914, column: 28, scope: !2606)
!2624 = !DILocalVariable(name: "pre", scope: !2606, file: !1, line: 915, type: !310)
!2625 = !DILocation(line: 915, column: 22, scope: !2606)
!2626 = !DILocation(line: 915, column: 38, scope: !2606)
!2627 = !DILocation(line: 915, column: 37, scope: !2606)
!2628 = !DILocation(line: 915, column: 31, scope: !2606)
!2629 = !DILocation(line: 915, column: 45, scope: !2606)
!2630 = !DILocation(line: 915, column: 43, scope: !2606)
!2631 = !DILocation(line: 916, column: 40, scope: !2606)
!2632 = !DILocation(line: 916, column: 18, scope: !2606)
!2633 = !DILocation(line: 916, column: 16, scope: !2606)
!2634 = !DILocation(line: 917, column: 40, scope: !2606)
!2635 = !DILocation(line: 917, column: 18, scope: !2606)
!2636 = !DILocation(line: 917, column: 16, scope: !2606)
!2637 = !DILocation(line: 918, column: 24, scope: !2606)
!2638 = !DILocation(line: 918, column: 33, scope: !2606)
!2639 = !DILocation(line: 918, column: 41, scope: !2606)
!2640 = !DILocation(line: 918, column: 37, scope: !2606)
!2641 = !DILocation(line: 918, column: 28, scope: !2606)
!2642 = !DILocation(line: 918, column: 9, scope: !2606)
!2643 = !DILocation(line: 918, column: 17, scope: !2606)
!2644 = !DILocation(line: 918, column: 22, scope: !2606)
!2645 = !DILocation(line: 919, column: 24, scope: !2606)
!2646 = !DILocation(line: 919, column: 33, scope: !2606)
!2647 = !DILocation(line: 919, column: 41, scope: !2606)
!2648 = !DILocation(line: 919, column: 37, scope: !2606)
!2649 = !DILocation(line: 919, column: 28, scope: !2606)
!2650 = !DILocation(line: 919, column: 9, scope: !2606)
!2651 = !DILocation(line: 919, column: 17, scope: !2606)
!2652 = !DILocation(line: 919, column: 22, scope: !2606)
!2653 = !DILocation(line: 920, column: 53, scope: !2606)
!2654 = !DILocation(line: 920, column: 61, scope: !2606)
!2655 = !DILocation(line: 920, column: 48, scope: !2606)
!2656 = !DILocation(line: 920, column: 46, scope: !2606)
!2657 = !DILocation(line: 920, column: 9, scope: !2606)
!2658 = !DILocation(line: 920, column: 17, scope: !2606)
!2659 = !DILocation(line: 920, column: 21, scope: !2606)
!2660 = !DILocation(line: 921, column: 16, scope: !2606)
!2661 = !DILocation(line: 921, column: 16, scope: !2662)
!2662 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 1)
!2663 = !DILocation(line: 921, column: 16, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 2)
!2665 = !DILocation(line: 921, column: 16, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 3)
!2667 = !DILocation(line: 921, column: 16, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 4)
!2669 = !DILocation(line: 921, column: 16, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 5)
!2671 = !DILocation(line: 921, column: 16, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2606, file: !1, discriminator: 6)
!2673 = !DILocation(line: 921, column: 9, scope: !2672)
!2674 = !DILocation(line: 925, column: 15, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2426, file: !1, line: 925, column: 14)
!2676 = !DILocation(line: 925, column: 17, scope: !2675)
!2677 = !DILocation(line: 925, column: 24, scope: !2675)
!2678 = !DILocation(line: 925, column: 27, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2675, file: !1, discriminator: 1)
!2680 = !DILocation(line: 925, column: 34, scope: !2679)
!2681 = !DILocation(line: 926, column: 11, scope: !2675)
!2682 = !DILocation(line: 926, column: 15, scope: !2679)
!2683 = !DILocation(line: 926, column: 17, scope: !2679)
!2684 = !DILocation(line: 926, column: 24, scope: !2679)
!2685 = !DILocation(line: 926, column: 27, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2675, file: !1, discriminator: 2)
!2687 = !DILocation(line: 926, column: 34, scope: !2686)
!2688 = !DILocation(line: 927, column: 11, scope: !2675)
!2689 = !DILocation(line: 927, column: 15, scope: !2679)
!2690 = !DILocation(line: 927, column: 17, scope: !2679)
!2691 = !DILocation(line: 927, column: 24, scope: !2679)
!2692 = !DILocation(line: 927, column: 27, scope: !2686)
!2693 = !DILocation(line: 927, column: 34, scope: !2686)
!2694 = !DILocation(line: 925, column: 14, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2426, file: !1, discriminator: 2)
!2696 = !DILocation(line: 929, column: 40, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2675, file: !1, line: 928, column: 7)
!2698 = !DILocation(line: 929, column: 48, scope: !2697)
!2699 = !DILocation(line: 929, column: 51, scope: !2697)
!2700 = !DILocation(line: 929, column: 12, scope: !2697)
!2701 = !DILocation(line: 929, column: 5, scope: !2697)
!2702 = !DILocation(line: 931, column: 15, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2675, file: !1, line: 931, column: 14)
!2704 = !DILocation(line: 931, column: 17, scope: !2703)
!2705 = !DILocation(line: 931, column: 24, scope: !2703)
!2706 = !DILocation(line: 931, column: 27, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2703, file: !1, discriminator: 1)
!2708 = !DILocation(line: 931, column: 34, scope: !2707)
!2709 = !DILocation(line: 932, column: 11, scope: !2703)
!2710 = !DILocation(line: 932, column: 15, scope: !2707)
!2711 = !DILocation(line: 932, column: 17, scope: !2707)
!2712 = !DILocation(line: 932, column: 24, scope: !2707)
!2713 = !DILocation(line: 932, column: 27, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2703, file: !1, discriminator: 2)
!2715 = !DILocation(line: 932, column: 34, scope: !2714)
!2716 = !DILocation(line: 931, column: 14, scope: !2686)
!2717 = !DILocalVariable(name: "arg", scope: !2718, file: !1, line: 934, type: !310)
!2718 = distinct !DILexicalBlock(scope: !2703, file: !1, line: 933, column: 7)
!2719 = !DILocation(line: 934, column: 18, scope: !2718)
!2720 = !DILocation(line: 934, column: 29, scope: !2718)
!2721 = !DILocation(line: 934, column: 31, scope: !2718)
!2722 = !DILocation(line: 934, column: 30, scope: !2718)
!2723 = !DILocation(line: 934, column: 33, scope: !2718)
!2724 = !DILocation(line: 934, column: 24, scope: !2718)
!2725 = !DILocalVariable(name: "sgn", scope: !2718, file: !1, line: 935, type: !310)
!2726 = !DILocation(line: 935, column: 18, scope: !2718)
!2727 = !DILocation(line: 935, column: 24, scope: !2718)
!2728 = !DILocalVariable(name: "pre", scope: !2718, file: !1, line: 936, type: !310)
!2729 = !DILocation(line: 936, column: 18, scope: !2718)
!2730 = !DILocation(line: 936, column: 29, scope: !2718)
!2731 = !DILocation(line: 936, column: 36, scope: !2718)
!2732 = !DILocation(line: 936, column: 35, scope: !2718)
!2733 = !DILocation(line: 936, column: 43, scope: !2718)
!2734 = !DILocation(line: 936, column: 27, scope: !2718)
!2735 = !DILocation(line: 936, column: 53, scope: !2718)
!2736 = !DILocation(line: 936, column: 51, scope: !2718)
!2737 = !DILocation(line: 936, column: 64, scope: !2718)
!2738 = !DILocation(line: 936, column: 59, scope: !2718)
!2739 = !DILocation(line: 936, column: 57, scope: !2718)
!2740 = !DILocalVariable(name: "F", scope: !2718, file: !1, line: 937, type: !51)
!2741 = !DILocation(line: 937, column: 19, scope: !2718)
!2742 = !DILocalVariable(name: "stat_F", scope: !2718, file: !1, line: 938, type: !48)
!2743 = !DILocation(line: 938, column: 9, scope: !2718)
!2744 = !DILocation(line: 938, column: 48, scope: !2718)
!2745 = !DILocation(line: 938, column: 66, scope: !2718)
!2746 = !DILocation(line: 938, column: 65, scope: !2718)
!2747 = !DILocation(line: 938, column: 68, scope: !2718)
!2748 = !DILocation(line: 938, column: 18, scope: !2718)
!2749 = !DILocation(line: 939, column: 20, scope: !2718)
!2750 = !DILocation(line: 939, column: 28, scope: !2718)
!2751 = !DILocation(line: 939, column: 24, scope: !2718)
!2752 = !DILocation(line: 939, column: 5, scope: !2718)
!2753 = !DILocation(line: 939, column: 13, scope: !2718)
!2754 = !DILocation(line: 939, column: 18, scope: !2718)
!2755 = !DILocation(line: 940, column: 25, scope: !2718)
!2756 = !DILocation(line: 940, column: 20, scope: !2718)
!2757 = !DILocation(line: 940, column: 34, scope: !2718)
!2758 = !DILocation(line: 940, column: 30, scope: !2718)
!2759 = !DILocation(line: 940, column: 5, scope: !2718)
!2760 = !DILocation(line: 940, column: 13, scope: !2718)
!2761 = !DILocation(line: 940, column: 18, scope: !2718)
!2762 = !DILocation(line: 941, column: 49, scope: !2718)
!2763 = !DILocation(line: 941, column: 57, scope: !2718)
!2764 = !DILocation(line: 941, column: 44, scope: !2718)
!2765 = !DILocation(line: 941, column: 42, scope: !2718)
!2766 = !DILocation(line: 941, column: 5, scope: !2718)
!2767 = !DILocation(line: 941, column: 13, scope: !2718)
!2768 = !DILocation(line: 941, column: 17, scope: !2718)
!2769 = !DILocation(line: 942, column: 12, scope: !2718)
!2770 = !DILocation(line: 942, column: 5, scope: !2718)
!2771 = !DILocation(line: 944, column: 18, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2703, file: !1, line: 944, column: 11)
!2773 = !DILocation(line: 944, column: 15, scope: !2772)
!2774 = !DILocation(line: 944, column: 20, scope: !2772)
!2775 = !DILocation(line: 944, column: 23, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2772, file: !1, discriminator: 1)
!2777 = !DILocation(line: 944, column: 32, scope: !2776)
!2778 = !DILocation(line: 944, column: 32, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2772, file: !1, discriminator: 2)
!2780 = !DILocation(line: 944, column: 32, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2772, file: !1, discriminator: 3)
!2782 = !DILocation(line: 944, column: 32, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2772, file: !1, discriminator: 4)
!2784 = !DILocation(line: 944, column: 30, scope: !2783)
!2785 = !DILocation(line: 944, column: 11, scope: !2783)
!2786 = !DILocalVariable(name: "P", scope: !2787, file: !1, line: 945, type: !51)
!2787 = distinct !DILexicalBlock(scope: !2772, file: !1, line: 944, column: 49)
!2788 = !DILocation(line: 945, column: 19, scope: !2787)
!2789 = !DILocalVariable(name: "lm", scope: !2787, file: !1, line: 946, type: !49)
!2790 = !DILocation(line: 946, column: 12, scope: !2787)
!2791 = !DILocalVariable(name: "stat_P", scope: !2787, file: !1, line: 947, type: !48)
!2792 = !DILocation(line: 947, column: 9, scope: !2787)
!2793 = !DILocation(line: 947, column: 49, scope: !2787)
!2794 = !DILocation(line: 947, column: 57, scope: !2787)
!2795 = !DILocation(line: 947, column: 18, scope: !2787)
!2796 = !DILocalVariable(name: "stat_e", scope: !2787, file: !1, line: 950, type: !48)
!2797 = !DILocation(line: 950, column: 9, scope: !2787)
!2798 = !DILocation(line: 950, column: 40, scope: !2787)
!2799 = !DILocation(line: 950, column: 73, scope: !2787)
!2800 = !DILocation(line: 950, column: 68, scope: !2787)
!2801 = !DILocation(line: 950, column: 66, scope: !2787)
!2802 = !DILocation(line: 951, column: 45, scope: !2787)
!2803 = !DILocation(line: 951, column: 52, scope: !2787)
!2804 = !DILocation(line: 952, column: 43, scope: !2787)
!2805 = !DILocation(line: 950, column: 18, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2787, file: !1, discriminator: 1)
!2807 = !DILocation(line: 953, column: 12, scope: !2787)
!2808 = !DILocation(line: 953, column: 12, scope: !2806)
!2809 = !DILocation(line: 953, column: 12, scope: !2810)
!2810 = !DILexicalBlockFile(scope: !2787, file: !1, discriminator: 2)
!2811 = !DILocation(line: 953, column: 12, scope: !2812)
!2812 = !DILexicalBlockFile(scope: !2787, file: !1, discriminator: 3)
!2813 = !DILocation(line: 953, column: 12, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2787, file: !1, discriminator: 4)
!2815 = !DILocation(line: 953, column: 12, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2787, file: !1, discriminator: 5)
!2817 = !DILocation(line: 953, column: 12, scope: !2818)
!2818 = !DILexicalBlockFile(scope: !2787, file: !1, discriminator: 6)
!2819 = !DILocation(line: 953, column: 5, scope: !2818)
!2820 = !DILocalVariable(name: "V0", scope: !2821, file: !1, line: 956, type: !49)
!2821 = distinct !DILexicalBlock(scope: !2772, file: !1, line: 955, column: 8)
!2822 = !DILocation(line: 956, column: 12, scope: !2821)
!2823 = !DILocalVariable(name: "V1", scope: !2821, file: !1, line: 956, type: !49)
!2824 = !DILocation(line: 956, column: 16, scope: !2821)
!2825 = !DILocation(line: 957, column: 8, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2821, file: !1, line: 957, column: 8)
!2827 = !DILocation(line: 957, column: 10, scope: !2826)
!2828 = !DILocation(line: 957, column: 8, scope: !2821)
!2829 = !DILocalVariable(name: "sqrt_1mx", scope: !2830, file: !1, line: 958, type: !310)
!2830 = distinct !DILexicalBlock(scope: !2826, file: !1, line: 957, column: 17)
!2831 = !DILocation(line: 958, column: 20, scope: !2830)
!2832 = !DILocation(line: 958, column: 42, scope: !2830)
!2833 = !DILocation(line: 958, column: 40, scope: !2830)
!2834 = !DILocation(line: 958, column: 31, scope: !2830)
!2835 = !DILocalVariable(name: "sqrt_1px", scope: !2830, file: !1, line: 959, type: !310)
!2836 = !DILocation(line: 959, column: 20, scope: !2830)
!2837 = !DILocation(line: 959, column: 42, scope: !2830)
!2838 = !DILocation(line: 959, column: 40, scope: !2830)
!2839 = !DILocation(line: 959, column: 31, scope: !2830)
!2840 = !DILocalVariable(name: "th", scope: !2830, file: !1, line: 960, type: !310)
!2841 = !DILocation(line: 960, column: 20, scope: !2830)
!2842 = !DILocation(line: 960, column: 31, scope: !2830)
!2843 = !DILocation(line: 960, column: 26, scope: !2830)
!2844 = !DILocalVariable(name: "sth", scope: !2830, file: !1, line: 961, type: !310)
!2845 = !DILocation(line: 961, column: 20, scope: !2830)
!2846 = !DILocation(line: 961, column: 26, scope: !2830)
!2847 = !DILocation(line: 961, column: 37, scope: !2830)
!2848 = !DILocation(line: 961, column: 35, scope: !2830)
!2849 = !DILocalVariable(name: "I0", scope: !2830, file: !1, line: 962, type: !51)
!2850 = !DILocation(line: 962, column: 21, scope: !2830)
!2851 = !DILocalVariable(name: "I1", scope: !2830, file: !1, line: 962, type: !51)
!2852 = !DILocation(line: 962, column: 25, scope: !2830)
!2853 = !DILocalVariable(name: "stat_I0", scope: !2830, file: !1, line: 963, type: !48)
!2854 = !DILocation(line: 963, column: 11, scope: !2830)
!2855 = !DILocation(line: 963, column: 47, scope: !2830)
!2856 = !DILocation(line: 963, column: 52, scope: !2830)
!2857 = !DILocation(line: 963, column: 50, scope: !2830)
!2858 = !DILocation(line: 963, column: 21, scope: !2830)
!2859 = !DILocalVariable(name: "stat_I1", scope: !2830, file: !1, line: 964, type: !48)
!2860 = !DILocation(line: 964, column: 11, scope: !2830)
!2861 = !DILocation(line: 964, column: 47, scope: !2830)
!2862 = !DILocation(line: 964, column: 52, scope: !2830)
!2863 = !DILocation(line: 964, column: 50, scope: !2830)
!2864 = !DILocation(line: 964, column: 21, scope: !2830)
!2865 = !DILocalVariable(name: "stat_I", scope: !2830, file: !1, line: 965, type: !48)
!2866 = !DILocation(line: 965, column: 11, scope: !2830)
!2867 = !DILocation(line: 965, column: 21, scope: !2830)
!2868 = !DILocation(line: 965, column: 21, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 1)
!2870 = !DILocation(line: 965, column: 21, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 2)
!2872 = !DILocation(line: 965, column: 21, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 3)
!2874 = !DILocation(line: 965, column: 21, scope: !2875)
!2875 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 4)
!2876 = !DILocation(line: 965, column: 21, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 5)
!2878 = !DILocation(line: 965, column: 21, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 6)
!2880 = !DILocation(line: 965, column: 11, scope: !2879)
!2881 = !DILocalVariable(name: "stat_V", scope: !2830, file: !1, line: 966, type: !48)
!2882 = !DILocation(line: 966, column: 11, scope: !2830)
!2883 = !DILocation(line: 966, column: 34, scope: !2830)
!2884 = !DILocation(line: 966, column: 38, scope: !2830)
!2885 = !DILocation(line: 966, column: 40, scope: !2830)
!2886 = !DILocation(line: 966, column: 39, scope: !2830)
!2887 = !DILocation(line: 966, column: 45, scope: !2830)
!2888 = !DILocation(line: 966, column: 21, scope: !2830)
!2889 = !DILocalVariable(name: "bessterm", scope: !2830, file: !1, line: 967, type: !49)
!2890 = !DILocation(line: 967, column: 14, scope: !2830)
!2891 = !DILocation(line: 967, column: 25, scope: !2830)
!2892 = !DILocation(line: 967, column: 33, scope: !2830)
!2893 = !DILocation(line: 967, column: 28, scope: !2830)
!2894 = !DILocation(line: 967, column: 39, scope: !2830)
!2895 = !DILocation(line: 967, column: 47, scope: !2830)
!2896 = !DILocation(line: 967, column: 42, scope: !2830)
!2897 = !DILocation(line: 967, column: 37, scope: !2830)
!2898 = !DILocalVariable(name: "besserr", scope: !2830, file: !1, line: 968, type: !49)
!2899 = !DILocation(line: 968, column: 14, scope: !2830)
!2900 = !DILocation(line: 968, column: 31, scope: !2830)
!2901 = !DILocation(line: 968, column: 26, scope: !2830)
!2902 = !DILocation(line: 968, column: 40, scope: !2830)
!2903 = !DILocation(line: 968, column: 35, scope: !2830)
!2904 = !DILocation(line: 968, column: 51, scope: !2830)
!2905 = !DILocation(line: 968, column: 46, scope: !2869)
!2906 = !DILocation(line: 968, column: 60, scope: !2830)
!2907 = !DILocation(line: 968, column: 55, scope: !2830)
!2908 = !DILocation(line: 968, column: 44, scope: !2830)
!2909 = !DILocation(line: 969, column: 55, scope: !2830)
!2910 = !DILocation(line: 969, column: 63, scope: !2830)
!2911 = !DILocation(line: 969, column: 58, scope: !2830)
!2912 = !DILocation(line: 969, column: 50, scope: !2830)
!2913 = !DILocation(line: 969, column: 48, scope: !2830)
!2914 = !DILocation(line: 969, column: 24, scope: !2830)
!2915 = !DILocation(line: 970, column: 55, scope: !2830)
!2916 = !DILocation(line: 970, column: 63, scope: !2830)
!2917 = !DILocation(line: 970, column: 58, scope: !2830)
!2918 = !DILocation(line: 970, column: 50, scope: !2830)
!2919 = !DILocation(line: 970, column: 48, scope: !2830)
!2920 = !DILocation(line: 970, column: 24, scope: !2830)
!2921 = !DILocalVariable(name: "arg1", scope: !2830, file: !1, line: 971, type: !49)
!2922 = !DILocation(line: 971, column: 14, scope: !2830)
!2923 = !DILocation(line: 971, column: 21, scope: !2830)
!2924 = !DILocation(line: 971, column: 26, scope: !2830)
!2925 = !DILocation(line: 971, column: 24, scope: !2830)
!2926 = !DILocalVariable(name: "sqts", scope: !2830, file: !1, line: 972, type: !49)
!2927 = !DILocation(line: 972, column: 14, scope: !2830)
!2928 = !DILocation(line: 972, column: 26, scope: !2830)
!2929 = !DILocation(line: 972, column: 29, scope: !2830)
!2930 = !DILocation(line: 972, column: 28, scope: !2830)
!2931 = !DILocation(line: 972, column: 21, scope: !2830)
!2932 = !DILocalVariable(name: "stat_e", scope: !2830, file: !1, line: 973, type: !48)
!2933 = !DILocation(line: 973, column: 11, scope: !2830)
!2934 = !DILocation(line: 973, column: 42, scope: !2830)
!2935 = !DILocation(line: 973, column: 77, scope: !2830)
!2936 = !DILocation(line: 973, column: 72, scope: !2830)
!2937 = !DILocation(line: 973, column: 70, scope: !2830)
!2938 = !DILocation(line: 974, column: 45, scope: !2830)
!2939 = !DILocation(line: 974, column: 52, scope: !2830)
!2940 = !DILocation(line: 974, column: 50, scope: !2830)
!2941 = !DILocation(line: 974, column: 62, scope: !2830)
!2942 = !DILocation(line: 974, column: 69, scope: !2830)
!2943 = !DILocation(line: 974, column: 67, scope: !2830)
!2944 = !DILocation(line: 975, column: 45, scope: !2830)
!2945 = !DILocation(line: 973, column: 20, scope: !2869)
!2946 = !DILocation(line: 976, column: 26, scope: !2830)
!2947 = !DILocation(line: 976, column: 25, scope: !2830)
!2948 = !DILocation(line: 976, column: 7, scope: !2830)
!2949 = !DILocation(line: 976, column: 15, scope: !2830)
!2950 = !DILocation(line: 976, column: 19, scope: !2830)
!2951 = !DILocation(line: 977, column: 14, scope: !2830)
!2952 = !DILocation(line: 977, column: 14, scope: !2869)
!2953 = !DILocation(line: 977, column: 14, scope: !2871)
!2954 = !DILocation(line: 977, column: 14, scope: !2873)
!2955 = !DILocation(line: 977, column: 14, scope: !2875)
!2956 = !DILocation(line: 977, column: 14, scope: !2877)
!2957 = !DILocation(line: 977, column: 14, scope: !2879)
!2958 = !DILocation(line: 977, column: 14, scope: !2959)
!2959 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 7)
!2960 = !DILocation(line: 977, column: 14, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 8)
!2962 = !DILocation(line: 977, column: 14, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2830, file: !1, discriminator: 9)
!2964 = !DILocation(line: 977, column: 7, scope: !2963)
!2965 = !DILocalVariable(name: "sqrt_xm1", scope: !2966, file: !1, line: 980, type: !310)
!2966 = distinct !DILexicalBlock(scope: !2826, file: !1, line: 979, column: 10)
!2967 = !DILocation(line: 980, column: 20, scope: !2966)
!2968 = !DILocation(line: 980, column: 36, scope: !2966)
!2969 = !DILocation(line: 980, column: 38, scope: !2966)
!2970 = !DILocation(line: 980, column: 31, scope: !2966)
!2971 = !DILocalVariable(name: "sqrt_xp1", scope: !2966, file: !1, line: 981, type: !310)
!2972 = !DILocation(line: 981, column: 20, scope: !2966)
!2973 = !DILocation(line: 981, column: 36, scope: !2966)
!2974 = !DILocation(line: 981, column: 38, scope: !2966)
!2975 = !DILocation(line: 981, column: 31, scope: !2966)
!2976 = !DILocalVariable(name: "sh", scope: !2966, file: !1, line: 982, type: !310)
!2977 = !DILocation(line: 982, column: 20, scope: !2966)
!2978 = !DILocation(line: 982, column: 25, scope: !2966)
!2979 = !DILocation(line: 982, column: 36, scope: !2966)
!2980 = !DILocation(line: 982, column: 34, scope: !2966)
!2981 = !DILocalVariable(name: "xi", scope: !2966, file: !1, line: 983, type: !310)
!2982 = !DILocation(line: 983, column: 20, scope: !2966)
!2983 = !DILocation(line: 983, column: 29, scope: !2966)
!2984 = !DILocation(line: 983, column: 33, scope: !2966)
!2985 = !DILocation(line: 983, column: 31, scope: !2966)
!2986 = !DILocation(line: 983, column: 25, scope: !2966)
!2987 = !DILocalVariable(name: "xi_lam", scope: !2966, file: !1, line: 984, type: !310)
!2988 = !DILocation(line: 984, column: 20, scope: !2966)
!2989 = !DILocation(line: 984, column: 29, scope: !2966)
!2990 = !DILocation(line: 984, column: 34, scope: !2966)
!2991 = !DILocation(line: 984, column: 32, scope: !2966)
!2992 = !DILocalVariable(name: "J0", scope: !2966, file: !1, line: 985, type: !51)
!2993 = !DILocation(line: 985, column: 21, scope: !2966)
!2994 = !DILocalVariable(name: "J1", scope: !2966, file: !1, line: 985, type: !51)
!2995 = !DILocation(line: 985, column: 25, scope: !2966)
!2996 = !DILocalVariable(name: "stat_J0", scope: !2966, file: !1, line: 986, type: !1138)
!2997 = !DILocation(line: 986, column: 17, scope: !2966)
!2998 = !DILocation(line: 986, column: 46, scope: !2966)
!2999 = !DILocation(line: 986, column: 27, scope: !2966)
!3000 = !DILocalVariable(name: "stat_J1", scope: !2966, file: !1, line: 987, type: !1138)
!3001 = !DILocation(line: 987, column: 17, scope: !2966)
!3002 = !DILocation(line: 987, column: 46, scope: !2966)
!3003 = !DILocation(line: 987, column: 27, scope: !2966)
!3004 = !DILocalVariable(name: "stat_J", scope: !2966, file: !1, line: 988, type: !1138)
!3005 = !DILocation(line: 988, column: 17, scope: !2966)
!3006 = !DILocation(line: 988, column: 27, scope: !2966)
!3007 = !DILocation(line: 988, column: 27, scope: !3008)
!3008 = !DILexicalBlockFile(scope: !2966, file: !1, discriminator: 1)
!3009 = !DILocation(line: 988, column: 27, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !2966, file: !1, discriminator: 2)
!3011 = !DILocation(line: 988, column: 27, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !2966, file: !1, discriminator: 3)
!3013 = !DILocation(line: 988, column: 27, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !2966, file: !1, discriminator: 4)
!3015 = !DILocation(line: 988, column: 27, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !2966, file: !1, discriminator: 5)
!3017 = !DILocation(line: 988, column: 27, scope: !3018)
!3018 = !DILexicalBlockFile(scope: !2966, file: !1, discriminator: 6)
!3019 = !DILocation(line: 988, column: 17, scope: !3018)
!3020 = !DILocalVariable(name: "stat_V", scope: !2966, file: !1, line: 989, type: !1138)
!3021 = !DILocation(line: 989, column: 17, scope: !2966)
!3022 = !DILocation(line: 989, column: 40, scope: !2966)
!3023 = !DILocation(line: 989, column: 44, scope: !2966)
!3024 = !DILocation(line: 989, column: 46, scope: !2966)
!3025 = !DILocation(line: 989, column: 45, scope: !2966)
!3026 = !DILocation(line: 989, column: 50, scope: !2966)
!3027 = !DILocation(line: 989, column: 27, scope: !2966)
!3028 = !DILocalVariable(name: "bessterm", scope: !2966, file: !1, line: 990, type: !310)
!3029 = !DILocation(line: 990, column: 20, scope: !2966)
!3030 = !DILocation(line: 990, column: 31, scope: !2966)
!3031 = !DILocation(line: 990, column: 39, scope: !2966)
!3032 = !DILocation(line: 990, column: 34, scope: !2966)
!3033 = !DILocation(line: 990, column: 45, scope: !2966)
!3034 = !DILocation(line: 990, column: 53, scope: !2966)
!3035 = !DILocation(line: 990, column: 48, scope: !2966)
!3036 = !DILocation(line: 990, column: 43, scope: !2966)
!3037 = !DILocalVariable(name: "besserr", scope: !2966, file: !1, line: 991, type: !310)
!3038 = !DILocation(line: 991, column: 20, scope: !2966)
!3039 = !DILocation(line: 991, column: 36, scope: !2966)
!3040 = !DILocation(line: 991, column: 31, scope: !2966)
!3041 = !DILocation(line: 991, column: 45, scope: !2966)
!3042 = !DILocation(line: 991, column: 40, scope: !2966)
!3043 = !DILocation(line: 991, column: 56, scope: !2966)
!3044 = !DILocation(line: 991, column: 51, scope: !3008)
!3045 = !DILocation(line: 991, column: 65, scope: !2966)
!3046 = !DILocation(line: 991, column: 60, scope: !2966)
!3047 = !DILocation(line: 991, column: 49, scope: !2966)
!3048 = !DILocation(line: 992, column: 63, scope: !2966)
!3049 = !DILocation(line: 992, column: 71, scope: !2966)
!3050 = !DILocation(line: 992, column: 66, scope: !2966)
!3051 = !DILocation(line: 992, column: 58, scope: !2966)
!3052 = !DILocation(line: 992, column: 56, scope: !2966)
!3053 = !DILocation(line: 992, column: 24, scope: !2966)
!3054 = !DILocation(line: 993, column: 63, scope: !2966)
!3055 = !DILocation(line: 993, column: 71, scope: !2966)
!3056 = !DILocation(line: 993, column: 66, scope: !2966)
!3057 = !DILocation(line: 993, column: 58, scope: !2966)
!3058 = !DILocation(line: 993, column: 56, scope: !2966)
!3059 = !DILocation(line: 993, column: 24, scope: !2966)
!3060 = !DILocation(line: 994, column: 49, scope: !2966)
!3061 = !DILocation(line: 994, column: 58, scope: !2966)
!3062 = !DILocation(line: 994, column: 56, scope: !2966)
!3063 = !DILocation(line: 994, column: 66, scope: !2966)
!3064 = !DILocation(line: 994, column: 61, scope: !2966)
!3065 = !DILocation(line: 994, column: 44, scope: !2966)
!3066 = !DILocation(line: 994, column: 42, scope: !2966)
!3067 = !DILocation(line: 994, column: 24, scope: !2966)
!3068 = !DILocation(line: 995, column: 49, scope: !2966)
!3069 = !DILocation(line: 995, column: 58, scope: !2966)
!3070 = !DILocation(line: 995, column: 56, scope: !2966)
!3071 = !DILocation(line: 995, column: 66, scope: !2966)
!3072 = !DILocation(line: 995, column: 61, scope: !2966)
!3073 = !DILocation(line: 995, column: 44, scope: !2966)
!3074 = !DILocation(line: 995, column: 42, scope: !2966)
!3075 = !DILocation(line: 995, column: 24, scope: !2966)
!3076 = !DILocalVariable(name: "pre", scope: !2966, file: !1, line: 996, type: !310)
!3077 = !DILocation(line: 996, column: 20, scope: !2966)
!3078 = !DILocation(line: 996, column: 31, scope: !2966)
!3079 = !DILocation(line: 996, column: 34, scope: !2966)
!3080 = !DILocation(line: 996, column: 33, scope: !2966)
!3081 = !DILocation(line: 996, column: 26, scope: !2966)
!3082 = !DILocation(line: 997, column: 22, scope: !2966)
!3083 = !DILocation(line: 997, column: 28, scope: !2966)
!3084 = !DILocation(line: 997, column: 26, scope: !2966)
!3085 = !DILocation(line: 997, column: 7, scope: !2966)
!3086 = !DILocation(line: 997, column: 15, scope: !2966)
!3087 = !DILocation(line: 997, column: 20, scope: !2966)
!3088 = !DILocation(line: 998, column: 22, scope: !2966)
!3089 = !DILocation(line: 998, column: 28, scope: !2966)
!3090 = !DILocation(line: 998, column: 26, scope: !2966)
!3091 = !DILocation(line: 998, column: 38, scope: !2966)
!3092 = !DILocation(line: 998, column: 36, scope: !2966)
!3093 = !DILocation(line: 998, column: 49, scope: !2966)
!3094 = !DILocation(line: 998, column: 47, scope: !2966)
!3095 = !DILocation(line: 998, column: 7, scope: !2966)
!3096 = !DILocation(line: 998, column: 15, scope: !2966)
!3097 = !DILocation(line: 998, column: 20, scope: !2966)
!3098 = !DILocation(line: 999, column: 51, scope: !2966)
!3099 = !DILocation(line: 999, column: 59, scope: !2966)
!3100 = !DILocation(line: 999, column: 46, scope: !2966)
!3101 = !DILocation(line: 999, column: 44, scope: !2966)
!3102 = !DILocation(line: 999, column: 7, scope: !2966)
!3103 = !DILocation(line: 999, column: 15, scope: !2966)
!3104 = !DILocation(line: 999, column: 19, scope: !2966)
!3105 = !DILocation(line: 1000, column: 14, scope: !2966)
!3106 = !DILocation(line: 1000, column: 14, scope: !3008)
!3107 = !DILocation(line: 1000, column: 14, scope: !3010)
!3108 = !DILocation(line: 1000, column: 14, scope: !3012)
!3109 = !DILocation(line: 1000, column: 14, scope: !3014)
!3110 = !DILocation(line: 1000, column: 14, scope: !3016)
!3111 = !DILocation(line: 1000, column: 14, scope: !3018)
!3112 = !DILocation(line: 1000, column: 7, scope: !3018)
!3113 = !DILocation(line: 1003, column: 1, scope: !2400)
!3114 = distinct !DISubprogram(name: "conicalP_1_V", scope: !1, file: !1, line: 706, type: !2016, isLocal: true, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!3115 = !DILocalVariable(name: "t", arg: 1, scope: !3114, file: !1, line: 706, type: !310)
!3116 = !DILocation(line: 706, column: 27, scope: !3114)
!3117 = !DILocalVariable(name: "f", arg: 2, scope: !3114, file: !1, line: 706, type: !310)
!3118 = !DILocation(line: 706, column: 43, scope: !3114)
!3119 = !DILocalVariable(name: "tau", arg: 3, scope: !3114, file: !1, line: 706, type: !310)
!3120 = !DILocation(line: 706, column: 59, scope: !3114)
!3121 = !DILocalVariable(name: "sgn", arg: 4, scope: !3114, file: !1, line: 706, type: !310)
!3122 = !DILocation(line: 706, column: 77, scope: !3114)
!3123 = !DILocalVariable(name: "V0", arg: 5, scope: !3114, file: !1, line: 707, type: !57)
!3124 = !DILocation(line: 707, column: 23, scope: !3114)
!3125 = !DILocalVariable(name: "V1", arg: 6, scope: !3114, file: !1, line: 707, type: !57)
!3126 = !DILocation(line: 707, column: 36, scope: !3114)
!3127 = !DILocalVariable(name: "Cm1", scope: !3114, file: !1, line: 709, type: !49)
!3128 = !DILocation(line: 709, column: 10, scope: !3114)
!3129 = !DILocalVariable(name: "C", scope: !3114, file: !1, line: 710, type: !2031)
!3130 = !DILocation(line: 710, column: 10, scope: !3114)
!3131 = !DILocalVariable(name: "T", scope: !3114, file: !1, line: 711, type: !2031)
!3132 = !DILocation(line: 711, column: 10, scope: !3114)
!3133 = !DILocalVariable(name: "H", scope: !3114, file: !1, line: 712, type: !2031)
!3134 = !DILocation(line: 712, column: 10, scope: !3114)
!3135 = !DILocalVariable(name: "V", scope: !3114, file: !1, line: 713, type: !2040)
!3136 = !DILocation(line: 713, column: 10, scope: !3114)
!3137 = !DILocalVariable(name: "i", scope: !3114, file: !1, line: 714, type: !48)
!3138 = !DILocation(line: 714, column: 7, scope: !3114)
!3139 = !DILocation(line: 715, column: 3, scope: !3114)
!3140 = !DILocation(line: 715, column: 8, scope: !3114)
!3141 = !DILocation(line: 716, column: 3, scope: !3114)
!3142 = !DILocation(line: 716, column: 8, scope: !3114)
!3143 = !DILocation(line: 717, column: 3, scope: !3114)
!3144 = !DILocation(line: 717, column: 8, scope: !3114)
!3145 = !DILocation(line: 718, column: 8, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3114, file: !1, line: 718, column: 3)
!3147 = !DILocation(line: 718, column: 7, scope: !3146)
!3148 = !DILocation(line: 718, column: 12, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3150, file: !1, discriminator: 1)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !1, line: 718, column: 3)
!3151 = !DILocation(line: 718, column: 13, scope: !3149)
!3152 = !DILocation(line: 718, column: 3, scope: !3149)
!3153 = !DILocation(line: 719, column: 14, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3150, file: !1, line: 718, column: 23)
!3155 = !DILocation(line: 719, column: 15, scope: !3154)
!3156 = !DILocation(line: 719, column: 12, scope: !3154)
!3157 = !DILocation(line: 719, column: 21, scope: !3154)
!3158 = !DILocation(line: 719, column: 19, scope: !3154)
!3159 = !DILocation(line: 719, column: 7, scope: !3154)
!3160 = !DILocation(line: 719, column: 5, scope: !3154)
!3161 = !DILocation(line: 719, column: 10, scope: !3154)
!3162 = !DILocation(line: 720, column: 14, scope: !3154)
!3163 = !DILocation(line: 720, column: 15, scope: !3154)
!3164 = !DILocation(line: 720, column: 12, scope: !3154)
!3165 = !DILocation(line: 720, column: 22, scope: !3154)
!3166 = !DILocation(line: 720, column: 24, scope: !3154)
!3167 = !DILocation(line: 720, column: 23, scope: !3154)
!3168 = !DILocation(line: 720, column: 19, scope: !3154)
!3169 = !DILocation(line: 720, column: 7, scope: !3154)
!3170 = !DILocation(line: 720, column: 5, scope: !3154)
!3171 = !DILocation(line: 720, column: 10, scope: !3154)
!3172 = !DILocation(line: 721, column: 3, scope: !3154)
!3173 = !DILocation(line: 718, column: 19, scope: !3174)
!3174 = !DILexicalBlockFile(scope: !3150, file: !1, discriminator: 2)
!3175 = !DILocation(line: 718, column: 3, scope: !3174)
!3176 = distinct !{!3176, !3177}
!3177 = !DILocation(line: 718, column: 3, scope: !3114)
!3178 = !DILocation(line: 722, column: 8, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3114, file: !1, line: 722, column: 3)
!3180 = !DILocation(line: 722, column: 7, scope: !3179)
!3181 = !DILocation(line: 722, column: 12, scope: !3182)
!3182 = !DILexicalBlockFile(scope: !3183, file: !1, discriminator: 1)
!3183 = distinct !DILexicalBlock(scope: !3179, file: !1, line: 722, column: 3)
!3184 = !DILocation(line: 722, column: 13, scope: !3182)
!3185 = !DILocation(line: 722, column: 3, scope: !3182)
!3186 = !DILocation(line: 723, column: 14, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3183, file: !1, line: 722, column: 24)
!3188 = !DILocation(line: 723, column: 15, scope: !3187)
!3189 = !DILocation(line: 723, column: 12, scope: !3187)
!3190 = !DILocation(line: 723, column: 21, scope: !3187)
!3191 = !DILocation(line: 723, column: 19, scope: !3187)
!3192 = !DILocation(line: 723, column: 7, scope: !3187)
!3193 = !DILocation(line: 723, column: 5, scope: !3187)
!3194 = !DILocation(line: 723, column: 10, scope: !3187)
!3195 = !DILocation(line: 724, column: 3, scope: !3187)
!3196 = !DILocation(line: 722, column: 20, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !3183, file: !1, discriminator: 2)
!3198 = !DILocation(line: 722, column: 3, scope: !3197)
!3199 = distinct !{!3199, !3200}
!3200 = !DILocation(line: 722, column: 3, scope: !3114)
!3201 = !DILocation(line: 726, column: 8, scope: !3114)
!3202 = !DILocation(line: 727, column: 19, scope: !3114)
!3203 = !DILocation(line: 727, column: 18, scope: !3114)
!3204 = !DILocation(line: 727, column: 13, scope: !3114)
!3205 = !DILocation(line: 727, column: 30, scope: !3114)
!3206 = !DILocation(line: 727, column: 29, scope: !3114)
!3207 = !DILocation(line: 727, column: 24, scope: !3114)
!3208 = !DILocation(line: 727, column: 3, scope: !3114)
!3209 = !DILocation(line: 727, column: 8, scope: !3114)
!3210 = !DILocation(line: 728, column: 17, scope: !3114)
!3211 = !DILocation(line: 728, column: 16, scope: !3114)
!3212 = !DILocation(line: 728, column: 26, scope: !3114)
!3213 = !DILocation(line: 728, column: 25, scope: !3114)
!3214 = !DILocation(line: 728, column: 21, scope: !3114)
!3215 = !DILocation(line: 728, column: 30, scope: !3114)
!3216 = !DILocation(line: 728, column: 35, scope: !3114)
!3217 = !DILocation(line: 728, column: 38, scope: !3114)
!3218 = !DILocation(line: 728, column: 43, scope: !3114)
!3219 = !DILocation(line: 728, column: 42, scope: !3114)
!3220 = !DILocation(line: 728, column: 34, scope: !3114)
!3221 = !DILocation(line: 728, column: 56, scope: !3114)
!3222 = !DILocation(line: 728, column: 55, scope: !3114)
!3223 = !DILocation(line: 728, column: 48, scope: !3114)
!3224 = !DILocation(line: 728, column: 3, scope: !3114)
!3225 = !DILocation(line: 728, column: 8, scope: !3114)
!3226 = !DILocation(line: 729, column: 21, scope: !3114)
!3227 = !DILocation(line: 729, column: 20, scope: !3114)
!3228 = !DILocation(line: 729, column: 33, scope: !3114)
!3229 = !DILocation(line: 729, column: 32, scope: !3114)
!3230 = !DILocation(line: 729, column: 26, scope: !3114)
!3231 = !DILocation(line: 729, column: 45, scope: !3114)
!3232 = !DILocation(line: 729, column: 44, scope: !3114)
!3233 = !DILocation(line: 729, column: 38, scope: !3114)
!3234 = !DILocation(line: 729, column: 50, scope: !3114)
!3235 = !DILocation(line: 729, column: 59, scope: !3114)
!3236 = !DILocation(line: 729, column: 63, scope: !3114)
!3237 = !DILocation(line: 729, column: 62, scope: !3114)
!3238 = !DILocation(line: 729, column: 74, scope: !3114)
!3239 = !DILocation(line: 729, column: 73, scope: !3114)
!3240 = !DILocation(line: 729, column: 78, scope: !3114)
!3241 = !DILocation(line: 729, column: 67, scope: !3114)
!3242 = !DILocation(line: 729, column: 57, scope: !3114)
!3243 = !DILocation(line: 729, column: 13, scope: !3114)
!3244 = !DILocation(line: 729, column: 93, scope: !3114)
!3245 = !DILocation(line: 729, column: 92, scope: !3114)
!3246 = !DILocation(line: 729, column: 84, scope: !3114)
!3247 = !DILocation(line: 729, column: 3, scope: !3114)
!3248 = !DILocation(line: 729, column: 8, scope: !3114)
!3249 = !DILocation(line: 730, column: 19, scope: !3114)
!3250 = !DILocation(line: 730, column: 18, scope: !3114)
!3251 = !DILocation(line: 730, column: 33, scope: !3114)
!3252 = !DILocation(line: 730, column: 32, scope: !3114)
!3253 = !DILocation(line: 730, column: 24, scope: !3114)
!3254 = !DILocation(line: 730, column: 47, scope: !3114)
!3255 = !DILocation(line: 730, column: 46, scope: !3114)
!3256 = !DILocation(line: 730, column: 38, scope: !3114)
!3257 = !DILocation(line: 730, column: 61, scope: !3114)
!3258 = !DILocation(line: 730, column: 60, scope: !3114)
!3259 = !DILocation(line: 730, column: 52, scope: !3114)
!3260 = !DILocation(line: 730, column: 66, scope: !3114)
!3261 = !DILocation(line: 731, column: 19, scope: !3114)
!3262 = !DILocation(line: 731, column: 18, scope: !3114)
!3263 = !DILocation(line: 731, column: 11, scope: !3114)
!3264 = !DILocation(line: 731, column: 26, scope: !3114)
!3265 = !DILocation(line: 731, column: 30, scope: !3114)
!3266 = !DILocation(line: 731, column: 29, scope: !3114)
!3267 = !DILocation(line: 731, column: 43, scope: !3114)
!3268 = !DILocation(line: 731, column: 42, scope: !3114)
!3269 = !DILocation(line: 731, column: 55, scope: !3114)
!3270 = !DILocation(line: 731, column: 54, scope: !3114)
!3271 = !DILocation(line: 731, column: 47, scope: !3114)
!3272 = !DILocation(line: 731, column: 59, scope: !3114)
!3273 = !DILocation(line: 731, column: 34, scope: !3114)
!3274 = !DILocation(line: 731, column: 24, scope: !3114)
!3275 = !DILocation(line: 731, column: 80, scope: !3114)
!3276 = !DILocation(line: 731, column: 79, scope: !3114)
!3277 = !DILocation(line: 731, column: 69, scope: !3114)
!3278 = !DILocation(line: 730, column: 3, scope: !3114)
!3279 = !DILocation(line: 730, column: 8, scope: !3114)
!3280 = !DILocation(line: 732, column: 24, scope: !3114)
!3281 = !DILocation(line: 732, column: 23, scope: !3114)
!3282 = !DILocation(line: 732, column: 39, scope: !3114)
!3283 = !DILocation(line: 732, column: 38, scope: !3114)
!3284 = !DILocation(line: 732, column: 29, scope: !3114)
!3285 = !DILocation(line: 732, column: 54, scope: !3114)
!3286 = !DILocation(line: 732, column: 53, scope: !3114)
!3287 = !DILocation(line: 732, column: 44, scope: !3114)
!3288 = !DILocation(line: 732, column: 69, scope: !3114)
!3289 = !DILocation(line: 732, column: 68, scope: !3114)
!3290 = !DILocation(line: 732, column: 59, scope: !3114)
!3291 = !DILocation(line: 733, column: 24, scope: !3114)
!3292 = !DILocation(line: 733, column: 23, scope: !3114)
!3293 = !DILocation(line: 733, column: 15, scope: !3114)
!3294 = !DILocation(line: 733, column: 29, scope: !3114)
!3295 = !DILocation(line: 733, column: 41, scope: !3114)
!3296 = !DILocation(line: 733, column: 54, scope: !3114)
!3297 = !DILocation(line: 733, column: 53, scope: !3114)
!3298 = !DILocation(line: 733, column: 58, scope: !3114)
!3299 = !DILocation(line: 733, column: 45, scope: !3114)
!3300 = !DILocation(line: 733, column: 39, scope: !3114)
!3301 = !DILocation(line: 734, column: 17, scope: !3114)
!3302 = !DILocation(line: 734, column: 21, scope: !3114)
!3303 = !DILocation(line: 734, column: 20, scope: !3114)
!3304 = !DILocation(line: 734, column: 35, scope: !3114)
!3305 = !DILocation(line: 734, column: 34, scope: !3114)
!3306 = !DILocation(line: 734, column: 50, scope: !3114)
!3307 = !DILocation(line: 734, column: 49, scope: !3114)
!3308 = !DILocation(line: 734, column: 40, scope: !3114)
!3309 = !DILocation(line: 734, column: 65, scope: !3114)
!3310 = !DILocation(line: 734, column: 64, scope: !3114)
!3311 = !DILocation(line: 734, column: 55, scope: !3114)
!3312 = !DILocation(line: 734, column: 70, scope: !3114)
!3313 = !DILocation(line: 734, column: 25, scope: !3114)
!3314 = !DILocation(line: 734, column: 15, scope: !3114)
!3315 = !DILocation(line: 732, column: 13, scope: !3114)
!3316 = !DILocation(line: 735, column: 29, scope: !3114)
!3317 = !DILocation(line: 735, column: 28, scope: !3114)
!3318 = !DILocation(line: 735, column: 17, scope: !3114)
!3319 = !DILocation(line: 732, column: 3, scope: !3114)
!3320 = !DILocation(line: 732, column: 8, scope: !3114)
!3321 = !DILocation(line: 736, column: 22, scope: !3114)
!3322 = !DILocation(line: 736, column: 21, scope: !3114)
!3323 = !DILocation(line: 736, column: 39, scope: !3114)
!3324 = !DILocation(line: 736, column: 38, scope: !3114)
!3325 = !DILocation(line: 736, column: 27, scope: !3114)
!3326 = !DILocation(line: 736, column: 57, scope: !3114)
!3327 = !DILocation(line: 736, column: 56, scope: !3114)
!3328 = !DILocation(line: 736, column: 44, scope: !3114)
!3329 = !DILocation(line: 736, column: 73, scope: !3114)
!3330 = !DILocation(line: 736, column: 72, scope: !3114)
!3331 = !DILocation(line: 736, column: 62, scope: !3114)
!3332 = !DILocation(line: 737, column: 23, scope: !3114)
!3333 = !DILocation(line: 737, column: 22, scope: !3114)
!3334 = !DILocation(line: 737, column: 11, scope: !3114)
!3335 = !DILocation(line: 737, column: 41, scope: !3114)
!3336 = !DILocation(line: 737, column: 40, scope: !3114)
!3337 = !DILocation(line: 737, column: 28, scope: !3114)
!3338 = !DILocation(line: 737, column: 46, scope: !3114)
!3339 = !DILocation(line: 738, column: 12, scope: !3114)
!3340 = !DILocation(line: 738, column: 28, scope: !3114)
!3341 = !DILocation(line: 738, column: 27, scope: !3114)
!3342 = !DILocation(line: 738, column: 45, scope: !3114)
!3343 = !DILocation(line: 738, column: 44, scope: !3114)
!3344 = !DILocation(line: 738, column: 33, scope: !3114)
!3345 = !DILocation(line: 738, column: 50, scope: !3114)
!3346 = !DILocation(line: 738, column: 16, scope: !3114)
!3347 = !DILocation(line: 738, column: 11, scope: !3114)
!3348 = !DILocation(line: 739, column: 12, scope: !3114)
!3349 = !DILocation(line: 739, column: 16, scope: !3114)
!3350 = !DILocation(line: 739, column: 15, scope: !3114)
!3351 = !DILocation(line: 739, column: 32, scope: !3114)
!3352 = !DILocation(line: 739, column: 31, scope: !3114)
!3353 = !DILocation(line: 739, column: 50, scope: !3114)
!3354 = !DILocation(line: 739, column: 49, scope: !3114)
!3355 = !DILocation(line: 739, column: 37, scope: !3114)
!3356 = !DILocation(line: 739, column: 68, scope: !3114)
!3357 = !DILocation(line: 739, column: 67, scope: !3114)
!3358 = !DILocation(line: 739, column: 55, scope: !3114)
!3359 = !DILocation(line: 740, column: 35, scope: !3114)
!3360 = !DILocation(line: 740, column: 34, scope: !3114)
!3361 = !DILocation(line: 740, column: 22, scope: !3114)
!3362 = !DILocation(line: 740, column: 40, scope: !3114)
!3363 = !DILocation(line: 740, column: 63, scope: !3114)
!3364 = !DILocation(line: 740, column: 62, scope: !3114)
!3365 = !DILocation(line: 740, column: 52, scope: !3114)
!3366 = !DILocation(line: 739, column: 20, scope: !3114)
!3367 = !DILocation(line: 739, column: 11, scope: !3114)
!3368 = !DILocation(line: 742, column: 26, scope: !3114)
!3369 = !DILocation(line: 742, column: 25, scope: !3114)
!3370 = !DILocation(line: 742, column: 13, scope: !3114)
!3371 = !DILocation(line: 736, column: 3, scope: !3114)
!3372 = !DILocation(line: 736, column: 8, scope: !3114)
!3373 = !DILocation(line: 743, column: 3, scope: !3114)
!3374 = !DILocation(line: 743, column: 8, scope: !3114)
!3375 = !DILocation(line: 745, column: 9, scope: !3114)
!3376 = !DILocation(line: 745, column: 22, scope: !3114)
!3377 = !DILocation(line: 745, column: 21, scope: !3114)
!3378 = !DILocation(line: 745, column: 27, scope: !3114)
!3379 = !DILocation(line: 745, column: 26, scope: !3114)
!3380 = !DILocation(line: 745, column: 32, scope: !3114)
!3381 = !DILocation(line: 745, column: 31, scope: !3114)
!3382 = !DILocation(line: 745, column: 38, scope: !3114)
!3383 = !DILocation(line: 745, column: 37, scope: !3114)
!3384 = !DILocation(line: 745, column: 14, scope: !3114)
!3385 = !DILocation(line: 746, column: 24, scope: !3114)
!3386 = !DILocation(line: 746, column: 23, scope: !3114)
!3387 = !DILocation(line: 746, column: 29, scope: !3114)
!3388 = !DILocation(line: 746, column: 28, scope: !3114)
!3389 = !DILocation(line: 746, column: 40, scope: !3114)
!3390 = !DILocation(line: 746, column: 39, scope: !3114)
!3391 = !DILocation(line: 746, column: 45, scope: !3114)
!3392 = !DILocation(line: 746, column: 44, scope: !3114)
!3393 = !DILocation(line: 746, column: 33, scope: !3114)
!3394 = !DILocation(line: 746, column: 51, scope: !3114)
!3395 = !DILocation(line: 746, column: 50, scope: !3114)
!3396 = !DILocation(line: 746, column: 14, scope: !3114)
!3397 = !DILocation(line: 747, column: 16, scope: !3114)
!3398 = !DILocation(line: 747, column: 24, scope: !3114)
!3399 = !DILocation(line: 747, column: 23, scope: !3114)
!3400 = !DILocation(line: 747, column: 29, scope: !3114)
!3401 = !DILocation(line: 747, column: 28, scope: !3114)
!3402 = !DILocation(line: 748, column: 32, scope: !3114)
!3403 = !DILocation(line: 748, column: 31, scope: !3114)
!3404 = !DILocation(line: 748, column: 37, scope: !3114)
!3405 = !DILocation(line: 748, column: 36, scope: !3114)
!3406 = !DILocation(line: 748, column: 47, scope: !3114)
!3407 = !DILocation(line: 748, column: 46, scope: !3114)
!3408 = !DILocation(line: 748, column: 52, scope: !3114)
!3409 = !DILocation(line: 748, column: 51, scope: !3114)
!3410 = !DILocation(line: 748, column: 41, scope: !3114)
!3411 = !DILocation(line: 748, column: 57, scope: !3114)
!3412 = !DILocation(line: 748, column: 56, scope: !3114)
!3413 = !DILocation(line: 748, column: 63, scope: !3114)
!3414 = !DILocation(line: 748, column: 62, scope: !3114)
!3415 = !DILocation(line: 748, column: 23, scope: !3114)
!3416 = !DILocation(line: 747, column: 20, scope: !3114)
!3417 = !DILocation(line: 747, column: 14, scope: !3114)
!3418 = !DILocation(line: 745, column: 4, scope: !3114)
!3419 = !DILocation(line: 745, column: 7, scope: !3114)
!3420 = !DILocation(line: 750, column: 9, scope: !3114)
!3421 = !DILocation(line: 750, column: 14, scope: !3114)
!3422 = !DILocation(line: 750, column: 13, scope: !3114)
!3423 = !DILocation(line: 750, column: 27, scope: !3114)
!3424 = !DILocation(line: 750, column: 32, scope: !3114)
!3425 = !DILocation(line: 750, column: 31, scope: !3114)
!3426 = !DILocation(line: 750, column: 37, scope: !3114)
!3427 = !DILocation(line: 750, column: 42, scope: !3114)
!3428 = !DILocation(line: 750, column: 41, scope: !3114)
!3429 = !DILocation(line: 750, column: 36, scope: !3114)
!3430 = !DILocation(line: 750, column: 25, scope: !3114)
!3431 = !DILocation(line: 750, column: 48, scope: !3114)
!3432 = !DILocation(line: 750, column: 47, scope: !3114)
!3433 = !DILocation(line: 750, column: 54, scope: !3114)
!3434 = !DILocation(line: 750, column: 53, scope: !3114)
!3435 = !DILocation(line: 750, column: 19, scope: !3114)
!3436 = !DILocation(line: 751, column: 28, scope: !3114)
!3437 = !DILocation(line: 751, column: 27, scope: !3114)
!3438 = !DILocation(line: 751, column: 33, scope: !3114)
!3439 = !DILocation(line: 751, column: 32, scope: !3114)
!3440 = !DILocation(line: 751, column: 46, scope: !3114)
!3441 = !DILocation(line: 751, column: 45, scope: !3114)
!3442 = !DILocation(line: 751, column: 51, scope: !3114)
!3443 = !DILocation(line: 751, column: 50, scope: !3114)
!3444 = !DILocation(line: 751, column: 38, scope: !3114)
!3445 = !DILocation(line: 751, column: 57, scope: !3114)
!3446 = !DILocation(line: 751, column: 56, scope: !3114)
!3447 = !DILocation(line: 751, column: 19, scope: !3114)
!3448 = !DILocation(line: 752, column: 21, scope: !3114)
!3449 = !DILocation(line: 752, column: 28, scope: !3114)
!3450 = !DILocation(line: 752, column: 32, scope: !3114)
!3451 = !DILocation(line: 752, column: 31, scope: !3114)
!3452 = !DILocation(line: 752, column: 44, scope: !3114)
!3453 = !DILocation(line: 752, column: 43, scope: !3114)
!3454 = !DILocation(line: 752, column: 49, scope: !3114)
!3455 = !DILocation(line: 752, column: 48, scope: !3114)
!3456 = !DILocation(line: 752, column: 54, scope: !3114)
!3457 = !DILocation(line: 752, column: 53, scope: !3114)
!3458 = !DILocation(line: 752, column: 60, scope: !3114)
!3459 = !DILocation(line: 752, column: 59, scope: !3114)
!3460 = !DILocation(line: 752, column: 37, scope: !3114)
!3461 = !DILocation(line: 753, column: 36, scope: !3114)
!3462 = !DILocation(line: 753, column: 35, scope: !3114)
!3463 = !DILocation(line: 753, column: 41, scope: !3114)
!3464 = !DILocation(line: 753, column: 40, scope: !3114)
!3465 = !DILocation(line: 753, column: 51, scope: !3114)
!3466 = !DILocation(line: 753, column: 50, scope: !3114)
!3467 = !DILocation(line: 753, column: 56, scope: !3114)
!3468 = !DILocation(line: 753, column: 55, scope: !3114)
!3469 = !DILocation(line: 753, column: 45, scope: !3114)
!3470 = !DILocation(line: 753, column: 68, scope: !3114)
!3471 = !DILocation(line: 753, column: 67, scope: !3114)
!3472 = !DILocation(line: 753, column: 73, scope: !3114)
!3473 = !DILocation(line: 753, column: 72, scope: !3114)
!3474 = !DILocation(line: 753, column: 61, scope: !3114)
!3475 = !DILocation(line: 753, column: 79, scope: !3114)
!3476 = !DILocation(line: 753, column: 78, scope: !3114)
!3477 = !DILocation(line: 753, column: 28, scope: !3114)
!3478 = !DILocation(line: 752, column: 25, scope: !3114)
!3479 = !DILocation(line: 752, column: 19, scope: !3114)
!3480 = !DILocation(line: 750, column: 4, scope: !3114)
!3481 = !DILocation(line: 750, column: 7, scope: !3114)
!3482 = !DILocation(line: 756, column: 3, scope: !3114)
!3483 = distinct !DISubprogram(name: "gsl_sf_conicalP_half_e", scope: !1, file: !1, line: 1010, type: !1348, isLocal: false, isDefinition: true, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!3484 = !DILocalVariable(name: "lambda", arg: 1, scope: !3483, file: !1, line: 1010, type: !310)
!3485 = !DILocation(line: 1010, column: 41, scope: !3483)
!3486 = !DILocalVariable(name: "x", arg: 2, scope: !3483, file: !1, line: 1010, type: !310)
!3487 = !DILocation(line: 1010, column: 62, scope: !3483)
!3488 = !DILocalVariable(name: "result", arg: 3, scope: !3483, file: !1, line: 1011, type: !50)
!3489 = !DILocation(line: 1011, column: 47, scope: !3483)
!3490 = !DILocation(line: 1016, column: 6, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3483, file: !1, line: 1016, column: 6)
!3492 = !DILocation(line: 1016, column: 8, scope: !3491)
!3493 = !DILocation(line: 1016, column: 6, scope: !3483)
!3494 = !DILocation(line: 1017, column: 5, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3491, file: !1, line: 1016, column: 17)
!3496 = distinct !{!3496, !3494}
!3497 = !DILocation(line: 1017, column: 5, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !3499, file: !1, discriminator: 1)
!3499 = distinct !DILexicalBlock(scope: !3495, file: !1, line: 1017, column: 5)
!3500 = distinct !{!3500, !3501}
!3501 = !DILocation(line: 1017, column: 5, scope: !3499)
!3502 = !DILocation(line: 1017, column: 5, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3504, file: !1, discriminator: 2)
!3504 = distinct !DILexicalBlock(scope: !3499, file: !1, line: 1017, column: 5)
!3505 = !DILocation(line: 1017, column: 5, scope: !3506)
!3506 = !DILexicalBlockFile(scope: !3499, file: !1, discriminator: 3)
!3507 = !DILocation(line: 1018, column: 3, scope: !3495)
!3508 = !DILocation(line: 1019, column: 11, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3491, file: !1, line: 1019, column: 11)
!3510 = !DILocation(line: 1019, column: 13, scope: !3509)
!3511 = !DILocation(line: 1019, column: 11, scope: !3491)
!3512 = !DILocalVariable(name: "err_amp", scope: !3513, file: !1, line: 1020, type: !49)
!3513 = distinct !DILexicalBlock(scope: !3509, file: !1, line: 1019, column: 20)
!3514 = !DILocation(line: 1020, column: 12, scope: !3513)
!3515 = !DILocation(line: 1020, column: 65, scope: !3513)
!3516 = !DILocation(line: 1020, column: 60, scope: !3513)
!3517 = !DILocation(line: 1020, column: 59, scope: !3513)
!3518 = !DILocation(line: 1020, column: 51, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3513, file: !1, discriminator: 1)
!3520 = !DILocation(line: 1020, column: 49, scope: !3513)
!3521 = !DILocation(line: 1020, column: 31, scope: !3513)
!3522 = !DILocation(line: 1020, column: 26, scope: !3513)
!3523 = !DILocalVariable(name: "ac", scope: !3513, file: !1, line: 1021, type: !49)
!3524 = !DILocation(line: 1021, column: 12, scope: !3513)
!3525 = !DILocation(line: 1021, column: 23, scope: !3513)
!3526 = !DILocation(line: 1021, column: 18, scope: !3513)
!3527 = !DILocalVariable(name: "den", scope: !3513, file: !1, line: 1022, type: !49)
!3528 = !DILocation(line: 1022, column: 12, scope: !3513)
!3529 = !DILocation(line: 1022, column: 32, scope: !3513)
!3530 = !DILocation(line: 1022, column: 31, scope: !3513)
!3531 = !DILocation(line: 1022, column: 23, scope: !3513)
!3532 = !DILocation(line: 1022, column: 44, scope: !3513)
!3533 = !DILocation(line: 1022, column: 43, scope: !3513)
!3534 = !DILocation(line: 1022, column: 35, scope: !3519)
!3535 = !DILocation(line: 1022, column: 34, scope: !3513)
!3536 = !DILocation(line: 1022, column: 18, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !3513, file: !1, discriminator: 2)
!3538 = !DILocation(line: 1023, column: 36, scope: !3513)
!3539 = !DILocation(line: 1023, column: 34, scope: !3513)
!3540 = !DILocation(line: 1023, column: 47, scope: !3513)
!3541 = !DILocation(line: 1023, column: 52, scope: !3513)
!3542 = !DILocation(line: 1023, column: 50, scope: !3513)
!3543 = !DILocation(line: 1023, column: 42, scope: !3513)
!3544 = !DILocation(line: 1023, column: 40, scope: !3513)
!3545 = !DILocation(line: 1023, column: 5, scope: !3513)
!3546 = !DILocation(line: 1023, column: 13, scope: !3513)
!3547 = !DILocation(line: 1023, column: 18, scope: !3513)
!3548 = !DILocation(line: 1024, column: 20, scope: !3513)
!3549 = !DILocation(line: 1024, column: 28, scope: !3513)
!3550 = !DILocation(line: 1024, column: 34, scope: !3513)
!3551 = !DILocation(line: 1024, column: 59, scope: !3513)
!3552 = !DILocation(line: 1024, column: 67, scope: !3513)
!3553 = !DILocation(line: 1024, column: 54, scope: !3513)
!3554 = !DILocation(line: 1024, column: 52, scope: !3513)
!3555 = !DILocation(line: 1024, column: 5, scope: !3513)
!3556 = !DILocation(line: 1024, column: 13, scope: !3513)
!3557 = !DILocation(line: 1024, column: 18, scope: !3513)
!3558 = !DILocation(line: 1025, column: 25, scope: !3513)
!3559 = !DILocation(line: 1025, column: 30, scope: !3513)
!3560 = !DILocation(line: 1025, column: 28, scope: !3513)
!3561 = !DILocation(line: 1025, column: 20, scope: !3513)
!3562 = !DILocation(line: 1025, column: 38, scope: !3513)
!3563 = !DILocation(line: 1025, column: 5, scope: !3513)
!3564 = !DILocation(line: 1025, column: 13, scope: !3513)
!3565 = !DILocation(line: 1025, column: 17, scope: !3513)
!3566 = !DILocation(line: 1026, column: 5, scope: !3513)
!3567 = !DILocation(line: 1028, column: 11, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3509, file: !1, line: 1028, column: 11)
!3569 = !DILocation(line: 1028, column: 13, scope: !3568)
!3570 = !DILocation(line: 1028, column: 11, scope: !3509)
!3571 = !DILocation(line: 1029, column: 5, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3568, file: !1, line: 1028, column: 21)
!3573 = !DILocation(line: 1029, column: 13, scope: !3572)
!3574 = !DILocation(line: 1029, column: 17, scope: !3572)
!3575 = !DILocation(line: 1030, column: 5, scope: !3572)
!3576 = !DILocation(line: 1030, column: 13, scope: !3572)
!3577 = !DILocation(line: 1030, column: 17, scope: !3572)
!3578 = !DILocation(line: 1031, column: 5, scope: !3572)
!3579 = !DILocalVariable(name: "err_amp", scope: !3580, file: !1, line: 1035, type: !49)
!3580 = distinct !DILexicalBlock(scope: !3568, file: !1, line: 1033, column: 8)
!3581 = !DILocation(line: 1035, column: 12, scope: !3580)
!3582 = !DILocation(line: 1035, column: 65, scope: !3580)
!3583 = !DILocation(line: 1035, column: 60, scope: !3580)
!3584 = !DILocation(line: 1035, column: 59, scope: !3580)
!3585 = !DILocation(line: 1035, column: 51, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3580, file: !1, discriminator: 1)
!3587 = !DILocation(line: 1035, column: 49, scope: !3580)
!3588 = !DILocation(line: 1035, column: 31, scope: !3580)
!3589 = !DILocation(line: 1035, column: 26, scope: !3580)
!3590 = !DILocalVariable(name: "sq_term", scope: !3580, file: !1, line: 1036, type: !49)
!3591 = !DILocation(line: 1036, column: 12, scope: !3580)
!3592 = !DILocation(line: 1036, column: 27, scope: !3580)
!3593 = !DILocation(line: 1036, column: 28, scope: !3580)
!3594 = !DILocation(line: 1036, column: 22, scope: !3580)
!3595 = !DILocation(line: 1036, column: 39, scope: !3580)
!3596 = !DILocation(line: 1036, column: 40, scope: !3580)
!3597 = !DILocation(line: 1036, column: 34, scope: !3586)
!3598 = !DILocation(line: 1036, column: 33, scope: !3580)
!3599 = !DILocalVariable(name: "ln_term", scope: !3580, file: !1, line: 1037, type: !49)
!3600 = !DILocation(line: 1037, column: 12, scope: !3580)
!3601 = !DILocation(line: 1037, column: 26, scope: !3580)
!3602 = !DILocation(line: 1037, column: 30, scope: !3580)
!3603 = !DILocation(line: 1037, column: 28, scope: !3580)
!3604 = !DILocation(line: 1037, column: 22, scope: !3580)
!3605 = !DILocalVariable(name: "den", scope: !3580, file: !1, line: 1038, type: !49)
!3606 = !DILocation(line: 1038, column: 12, scope: !3580)
!3607 = !DILocation(line: 1038, column: 23, scope: !3580)
!3608 = !DILocation(line: 1038, column: 18, scope: !3580)
!3609 = !DILocalVariable(name: "carg_val", scope: !3580, file: !1, line: 1039, type: !49)
!3610 = !DILocation(line: 1039, column: 12, scope: !3580)
!3611 = !DILocation(line: 1039, column: 23, scope: !3580)
!3612 = !DILocation(line: 1039, column: 32, scope: !3580)
!3613 = !DILocation(line: 1039, column: 30, scope: !3580)
!3614 = !DILocalVariable(name: "carg_err", scope: !3580, file: !1, line: 1040, type: !49)
!3615 = !DILocation(line: 1040, column: 12, scope: !3580)
!3616 = !DILocation(line: 1040, column: 52, scope: !3580)
!3617 = !DILocation(line: 1040, column: 47, scope: !3580)
!3618 = !DILocation(line: 1040, column: 45, scope: !3580)
!3619 = !DILocalVariable(name: "cos_result", scope: !3580, file: !1, line: 1041, type: !51)
!3620 = !DILocation(line: 1041, column: 19, scope: !3580)
!3621 = !DILocalVariable(name: "stat_cos", scope: !3580, file: !1, line: 1042, type: !48)
!3622 = !DILocation(line: 1042, column: 9, scope: !3580)
!3623 = !DILocation(line: 1042, column: 37, scope: !3580)
!3624 = !DILocation(line: 1042, column: 47, scope: !3580)
!3625 = !DILocation(line: 1042, column: 20, scope: !3580)
!3626 = !DILocation(line: 1043, column: 36, scope: !3580)
!3627 = !DILocation(line: 1043, column: 34, scope: !3580)
!3628 = !DILocation(line: 1043, column: 53, scope: !3580)
!3629 = !DILocation(line: 1043, column: 40, scope: !3580)
!3630 = !DILocation(line: 1043, column: 5, scope: !3580)
!3631 = !DILocation(line: 1043, column: 13, scope: !3580)
!3632 = !DILocation(line: 1043, column: 18, scope: !3580)
!3633 = !DILocation(line: 1044, column: 20, scope: !3580)
!3634 = !DILocation(line: 1044, column: 28, scope: !3580)
!3635 = !DILocation(line: 1044, column: 46, scope: !3580)
!3636 = !DILocation(line: 1044, column: 44, scope: !3580)
!3637 = !DILocation(line: 1044, column: 63, scope: !3580)
!3638 = !DILocation(line: 1044, column: 50, scope: !3580)
!3639 = !DILocation(line: 1044, column: 5, scope: !3580)
!3640 = !DILocation(line: 1044, column: 13, scope: !3580)
!3641 = !DILocation(line: 1044, column: 18, scope: !3580)
!3642 = !DILocation(line: 1045, column: 49, scope: !3580)
!3643 = !DILocation(line: 1045, column: 57, scope: !3580)
!3644 = !DILocation(line: 1045, column: 44, scope: !3580)
!3645 = !DILocation(line: 1045, column: 42, scope: !3580)
!3646 = !DILocation(line: 1045, column: 5, scope: !3580)
!3647 = !DILocation(line: 1045, column: 13, scope: !3580)
!3648 = !DILocation(line: 1045, column: 17, scope: !3580)
!3649 = !DILocation(line: 1046, column: 12, scope: !3580)
!3650 = !DILocation(line: 1046, column: 5, scope: !3580)
!3651 = !DILocation(line: 1048, column: 1, scope: !3483)
!3652 = distinct !DISubprogram(name: "gsl_sf_conicalP_mhalf_e", scope: !1, file: !1, line: 1055, type: !1348, isLocal: false, isDefinition: true, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!3653 = !DILocalVariable(name: "lambda", arg: 1, scope: !3652, file: !1, line: 1055, type: !310)
!3654 = !DILocation(line: 1055, column: 42, scope: !3652)
!3655 = !DILocalVariable(name: "x", arg: 2, scope: !3652, file: !1, line: 1055, type: !310)
!3656 = !DILocation(line: 1055, column: 63, scope: !3652)
!3657 = !DILocalVariable(name: "result", arg: 3, scope: !3652, file: !1, line: 1055, type: !50)
!3658 = !DILocation(line: 1055, column: 82, scope: !3652)
!3659 = !DILocation(line: 1059, column: 6, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3652, file: !1, line: 1059, column: 6)
!3661 = !DILocation(line: 1059, column: 8, scope: !3660)
!3662 = !DILocation(line: 1059, column: 6, scope: !3652)
!3663 = !DILocation(line: 1060, column: 5, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3660, file: !1, line: 1059, column: 17)
!3665 = distinct !{!3665, !3663}
!3666 = !DILocation(line: 1060, column: 5, scope: !3667)
!3667 = !DILexicalBlockFile(scope: !3668, file: !1, discriminator: 1)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !1, line: 1060, column: 5)
!3669 = distinct !{!3669, !3670}
!3670 = !DILocation(line: 1060, column: 5, scope: !3668)
!3671 = !DILocation(line: 1060, column: 5, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !3673, file: !1, discriminator: 2)
!3673 = distinct !DILexicalBlock(scope: !3668, file: !1, line: 1060, column: 5)
!3674 = !DILocation(line: 1060, column: 5, scope: !3675)
!3675 = !DILexicalBlockFile(scope: !3668, file: !1, discriminator: 3)
!3676 = !DILocation(line: 1061, column: 3, scope: !3664)
!3677 = !DILocation(line: 1062, column: 11, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3660, file: !1, line: 1062, column: 11)
!3679 = !DILocation(line: 1062, column: 13, scope: !3678)
!3680 = !DILocation(line: 1062, column: 11, scope: !3660)
!3681 = !DILocalVariable(name: "ac", scope: !3682, file: !1, line: 1063, type: !49)
!3682 = distinct !DILexicalBlock(scope: !3678, file: !1, line: 1062, column: 20)
!3683 = !DILocation(line: 1063, column: 12, scope: !3682)
!3684 = !DILocation(line: 1063, column: 23, scope: !3682)
!3685 = !DILocation(line: 1063, column: 18, scope: !3682)
!3686 = !DILocalVariable(name: "den", scope: !3682, file: !1, line: 1064, type: !49)
!3687 = !DILocation(line: 1064, column: 12, scope: !3682)
!3688 = !DILocation(line: 1064, column: 32, scope: !3682)
!3689 = !DILocation(line: 1064, column: 31, scope: !3682)
!3690 = !DILocation(line: 1064, column: 23, scope: !3682)
!3691 = !DILocation(line: 1064, column: 44, scope: !3682)
!3692 = !DILocation(line: 1064, column: 43, scope: !3682)
!3693 = !DILocation(line: 1064, column: 35, scope: !3694)
!3694 = !DILexicalBlockFile(scope: !3682, file: !1, discriminator: 1)
!3695 = !DILocation(line: 1064, column: 34, scope: !3682)
!3696 = !DILocation(line: 1064, column: 18, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !3682, file: !1, discriminator: 2)
!3698 = !DILocalVariable(name: "arg", scope: !3682, file: !1, line: 1065, type: !49)
!3699 = !DILocation(line: 1065, column: 12, scope: !3682)
!3700 = !DILocation(line: 1065, column: 18, scope: !3682)
!3701 = !DILocation(line: 1065, column: 23, scope: !3682)
!3702 = !DILocation(line: 1065, column: 21, scope: !3682)
!3703 = !DILocalVariable(name: "err_amp", scope: !3682, file: !1, line: 1066, type: !49)
!3704 = !DILocation(line: 1066, column: 12, scope: !3682)
!3705 = !DILocation(line: 1066, column: 65, scope: !3682)
!3706 = !DILocation(line: 1066, column: 60, scope: !3682)
!3707 = !DILocation(line: 1066, column: 59, scope: !3682)
!3708 = !DILocation(line: 1066, column: 51, scope: !3694)
!3709 = !DILocation(line: 1066, column: 49, scope: !3682)
!3710 = !DILocation(line: 1066, column: 31, scope: !3682)
!3711 = !DILocation(line: 1066, column: 26, scope: !3682)
!3712 = !DILocation(line: 1067, column: 13, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3682, file: !1, line: 1067, column: 8)
!3714 = !DILocation(line: 1067, column: 8, scope: !3713)
!3715 = !DILocation(line: 1067, column: 18, scope: !3713)
!3716 = !DILocation(line: 1067, column: 8, scope: !3682)
!3717 = !DILocation(line: 1068, column: 38, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3713, file: !1, line: 1067, column: 42)
!3719 = !DILocation(line: 1068, column: 36, scope: !3718)
!3720 = !DILocation(line: 1068, column: 44, scope: !3718)
!3721 = !DILocation(line: 1068, column: 42, scope: !3718)
!3722 = !DILocation(line: 1068, column: 7, scope: !3718)
!3723 = !DILocation(line: 1068, column: 15, scope: !3718)
!3724 = !DILocation(line: 1068, column: 20, scope: !3718)
!3725 = !DILocation(line: 1069, column: 51, scope: !3718)
!3726 = !DILocation(line: 1069, column: 59, scope: !3718)
!3727 = !DILocation(line: 1069, column: 46, scope: !3718)
!3728 = !DILocation(line: 1069, column: 44, scope: !3718)
!3729 = !DILocation(line: 1069, column: 7, scope: !3718)
!3730 = !DILocation(line: 1069, column: 15, scope: !3718)
!3731 = !DILocation(line: 1069, column: 20, scope: !3718)
!3732 = !DILocation(line: 1070, column: 22, scope: !3718)
!3733 = !DILocation(line: 1070, column: 7, scope: !3718)
!3734 = !DILocation(line: 1070, column: 15, scope: !3718)
!3735 = !DILocation(line: 1070, column: 19, scope: !3718)
!3736 = !DILocation(line: 1071, column: 5, scope: !3718)
!3737 = !DILocation(line: 1073, column: 39, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3713, file: !1, line: 1072, column: 10)
!3739 = !DILocation(line: 1073, column: 43, scope: !3738)
!3740 = !DILocation(line: 1073, column: 42, scope: !3738)
!3741 = !DILocation(line: 1073, column: 36, scope: !3738)
!3742 = !DILocation(line: 1073, column: 58, scope: !3738)
!3743 = !DILocation(line: 1073, column: 53, scope: !3738)
!3744 = !DILocation(line: 1073, column: 51, scope: !3738)
!3745 = !DILocation(line: 1073, column: 7, scope: !3738)
!3746 = !DILocation(line: 1073, column: 15, scope: !3738)
!3747 = !DILocation(line: 1073, column: 20, scope: !3738)
!3748 = !DILocation(line: 1074, column: 46, scope: !3738)
!3749 = !DILocation(line: 1074, column: 41, scope: !3738)
!3750 = !DILocation(line: 1074, column: 50, scope: !3738)
!3751 = !DILocation(line: 1074, column: 38, scope: !3738)
!3752 = !DILocation(line: 1074, column: 63, scope: !3738)
!3753 = !DILocation(line: 1074, column: 71, scope: !3738)
!3754 = !DILocation(line: 1074, column: 58, scope: !3755)
!3755 = !DILexicalBlockFile(scope: !3738, file: !1, discriminator: 1)
!3756 = !DILocation(line: 1074, column: 56, scope: !3738)
!3757 = !DILocation(line: 1074, column: 7, scope: !3738)
!3758 = !DILocation(line: 1074, column: 15, scope: !3738)
!3759 = !DILocation(line: 1074, column: 20, scope: !3738)
!3760 = !DILocation(line: 1075, column: 22, scope: !3738)
!3761 = !DILocation(line: 1075, column: 7, scope: !3738)
!3762 = !DILocation(line: 1075, column: 15, scope: !3738)
!3763 = !DILocation(line: 1075, column: 19, scope: !3738)
!3764 = !DILocation(line: 1076, column: 51, scope: !3738)
!3765 = !DILocation(line: 1076, column: 59, scope: !3738)
!3766 = !DILocation(line: 1076, column: 46, scope: !3738)
!3767 = !DILocation(line: 1076, column: 44, scope: !3738)
!3768 = !DILocation(line: 1076, column: 7, scope: !3738)
!3769 = !DILocation(line: 1076, column: 15, scope: !3738)
!3770 = !DILocation(line: 1076, column: 19, scope: !3738)
!3771 = !DILocation(line: 1078, column: 5, scope: !3682)
!3772 = !DILocation(line: 1080, column: 11, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3678, file: !1, line: 1080, column: 11)
!3774 = !DILocation(line: 1080, column: 13, scope: !3773)
!3775 = !DILocation(line: 1080, column: 11, scope: !3678)
!3776 = !DILocation(line: 1081, column: 5, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3773, file: !1, line: 1080, column: 21)
!3778 = !DILocation(line: 1081, column: 13, scope: !3777)
!3779 = !DILocation(line: 1081, column: 17, scope: !3777)
!3780 = !DILocation(line: 1082, column: 5, scope: !3777)
!3781 = !DILocation(line: 1082, column: 13, scope: !3777)
!3782 = !DILocation(line: 1082, column: 17, scope: !3777)
!3783 = !DILocation(line: 1083, column: 5, scope: !3777)
!3784 = !DILocalVariable(name: "sq_term", scope: !3785, file: !1, line: 1087, type: !49)
!3785 = distinct !DILexicalBlock(scope: !3773, file: !1, line: 1085, column: 8)
!3786 = !DILocation(line: 1087, column: 12, scope: !3785)
!3787 = !DILocation(line: 1087, column: 27, scope: !3785)
!3788 = !DILocation(line: 1087, column: 28, scope: !3785)
!3789 = !DILocation(line: 1087, column: 22, scope: !3785)
!3790 = !DILocation(line: 1087, column: 39, scope: !3785)
!3791 = !DILocation(line: 1087, column: 40, scope: !3785)
!3792 = !DILocation(line: 1087, column: 34, scope: !3793)
!3793 = !DILexicalBlockFile(scope: !3785, file: !1, discriminator: 1)
!3794 = !DILocation(line: 1087, column: 33, scope: !3785)
!3795 = !DILocalVariable(name: "ln_term", scope: !3785, file: !1, line: 1088, type: !49)
!3796 = !DILocation(line: 1088, column: 12, scope: !3785)
!3797 = !DILocation(line: 1088, column: 26, scope: !3785)
!3798 = !DILocation(line: 1088, column: 30, scope: !3785)
!3799 = !DILocation(line: 1088, column: 28, scope: !3785)
!3800 = !DILocation(line: 1088, column: 22, scope: !3785)
!3801 = !DILocalVariable(name: "den", scope: !3785, file: !1, line: 1089, type: !49)
!3802 = !DILocation(line: 1089, column: 12, scope: !3785)
!3803 = !DILocation(line: 1089, column: 23, scope: !3785)
!3804 = !DILocation(line: 1089, column: 18, scope: !3785)
!3805 = !DILocalVariable(name: "arg_val", scope: !3785, file: !1, line: 1090, type: !49)
!3806 = !DILocation(line: 1090, column: 12, scope: !3785)
!3807 = !DILocation(line: 1090, column: 22, scope: !3785)
!3808 = !DILocation(line: 1090, column: 31, scope: !3785)
!3809 = !DILocation(line: 1090, column: 29, scope: !3785)
!3810 = !DILocalVariable(name: "arg_err", scope: !3785, file: !1, line: 1091, type: !49)
!3811 = !DILocation(line: 1091, column: 12, scope: !3785)
!3812 = !DILocation(line: 1091, column: 51, scope: !3785)
!3813 = !DILocation(line: 1091, column: 46, scope: !3785)
!3814 = !DILocation(line: 1091, column: 44, scope: !3785)
!3815 = !DILocation(line: 1092, column: 8, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3785, file: !1, line: 1092, column: 8)
!3817 = !DILocation(line: 1092, column: 16, scope: !3816)
!3818 = !DILocation(line: 1092, column: 8, scope: !3785)
!3819 = !DILocation(line: 1093, column: 37, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3816, file: !1, line: 1092, column: 40)
!3821 = !DILocation(line: 1093, column: 35, scope: !3820)
!3822 = !DILocation(line: 1093, column: 43, scope: !3820)
!3823 = !DILocation(line: 1093, column: 41, scope: !3820)
!3824 = !DILocation(line: 1093, column: 7, scope: !3820)
!3825 = !DILocation(line: 1093, column: 15, scope: !3820)
!3826 = !DILocation(line: 1093, column: 19, scope: !3820)
!3827 = !DILocation(line: 1094, column: 50, scope: !3820)
!3828 = !DILocation(line: 1094, column: 58, scope: !3820)
!3829 = !DILocation(line: 1094, column: 45, scope: !3820)
!3830 = !DILocation(line: 1094, column: 43, scope: !3820)
!3831 = !DILocation(line: 1094, column: 7, scope: !3820)
!3832 = !DILocation(line: 1094, column: 15, scope: !3820)
!3833 = !DILocation(line: 1094, column: 19, scope: !3820)
!3834 = !DILocation(line: 1095, column: 7, scope: !3820)
!3835 = !DILocalVariable(name: "sin_result", scope: !3836, file: !1, line: 1098, type: !51)
!3836 = distinct !DILexicalBlock(scope: !3816, file: !1, line: 1097, column: 10)
!3837 = !DILocation(line: 1098, column: 21, scope: !3836)
!3838 = !DILocalVariable(name: "stat_sin", scope: !3836, file: !1, line: 1099, type: !48)
!3839 = !DILocation(line: 1099, column: 11, scope: !3836)
!3840 = !DILocation(line: 1099, column: 39, scope: !3836)
!3841 = !DILocation(line: 1099, column: 48, scope: !3836)
!3842 = !DILocation(line: 1099, column: 22, scope: !3836)
!3843 = !DILocation(line: 1100, column: 39, scope: !3836)
!3844 = !DILocation(line: 1100, column: 43, scope: !3836)
!3845 = !DILocation(line: 1100, column: 42, scope: !3836)
!3846 = !DILocation(line: 1100, column: 36, scope: !3836)
!3847 = !DILocation(line: 1100, column: 64, scope: !3836)
!3848 = !DILocation(line: 1100, column: 51, scope: !3836)
!3849 = !DILocation(line: 1100, column: 7, scope: !3836)
!3850 = !DILocation(line: 1100, column: 15, scope: !3836)
!3851 = !DILocation(line: 1100, column: 20, scope: !3836)
!3852 = !DILocation(line: 1101, column: 43, scope: !3836)
!3853 = !DILocation(line: 1101, column: 47, scope: !3836)
!3854 = !DILocation(line: 1101, column: 46, scope: !3836)
!3855 = !DILocation(line: 1101, column: 38, scope: !3836)
!3856 = !DILocation(line: 1101, column: 36, scope: !3836)
!3857 = !DILocation(line: 1101, column: 68, scope: !3836)
!3858 = !DILocation(line: 1101, column: 55, scope: !3836)
!3859 = !DILocation(line: 1101, column: 7, scope: !3836)
!3860 = !DILocation(line: 1101, column: 15, scope: !3836)
!3861 = !DILocation(line: 1101, column: 20, scope: !3836)
!3862 = !DILocation(line: 1102, column: 51, scope: !3836)
!3863 = !DILocation(line: 1102, column: 59, scope: !3836)
!3864 = !DILocation(line: 1102, column: 46, scope: !3836)
!3865 = !DILocation(line: 1102, column: 44, scope: !3836)
!3866 = !DILocation(line: 1102, column: 7, scope: !3836)
!3867 = !DILocation(line: 1102, column: 15, scope: !3836)
!3868 = !DILocation(line: 1102, column: 19, scope: !3836)
!3869 = !DILocation(line: 1103, column: 14, scope: !3836)
!3870 = !DILocation(line: 1103, column: 7, scope: !3836)
!3871 = !DILocation(line: 1106, column: 1, scope: !3652)
!3872 = distinct !DISubprogram(name: "gsl_sf_conicalP_sph_reg_e", scope: !1, file: !1, line: 1109, type: !3873, isLocal: false, isDefinition: true, scopeLine: 1113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!48, !1138, !310, !310, !50}
!3875 = !DILocalVariable(name: "l", arg: 1, scope: !3872, file: !1, line: 1109, type: !1138)
!3876 = !DILocation(line: 1109, column: 41, scope: !3872)
!3877 = !DILocalVariable(name: "lambda", arg: 2, scope: !3872, file: !1, line: 1109, type: !310)
!3878 = !DILocation(line: 1109, column: 57, scope: !3872)
!3879 = !DILocalVariable(name: "x", arg: 3, scope: !3872, file: !1, line: 1110, type: !310)
!3880 = !DILocation(line: 1110, column: 47, scope: !3872)
!3881 = !DILocalVariable(name: "result", arg: 4, scope: !3872, file: !1, line: 1111, type: !50)
!3882 = !DILocation(line: 1111, column: 50, scope: !3872)
!3883 = !DILocation(line: 1116, column: 6, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3872, file: !1, line: 1116, column: 6)
!3885 = !DILocation(line: 1116, column: 8, scope: !3884)
!3886 = !DILocation(line: 1116, column: 16, scope: !3884)
!3887 = !DILocation(line: 1116, column: 19, scope: !3888)
!3888 = !DILexicalBlockFile(scope: !3884, file: !1, discriminator: 1)
!3889 = !DILocation(line: 1116, column: 21, scope: !3888)
!3890 = !DILocation(line: 1116, column: 6, scope: !3888)
!3891 = !DILocation(line: 1117, column: 5, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3884, file: !1, line: 1116, column: 27)
!3893 = distinct !{!3893, !3891}
!3894 = !DILocation(line: 1117, column: 5, scope: !3895)
!3895 = !DILexicalBlockFile(scope: !3896, file: !1, discriminator: 1)
!3896 = distinct !DILexicalBlock(scope: !3892, file: !1, line: 1117, column: 5)
!3897 = distinct !{!3897, !3898}
!3898 = !DILocation(line: 1117, column: 5, scope: !3896)
!3899 = !DILocation(line: 1117, column: 5, scope: !3900)
!3900 = !DILexicalBlockFile(scope: !3901, file: !1, discriminator: 2)
!3901 = distinct !DILexicalBlock(scope: !3896, file: !1, line: 1117, column: 5)
!3902 = !DILocation(line: 1117, column: 5, scope: !3903)
!3903 = !DILexicalBlockFile(scope: !3896, file: !1, discriminator: 3)
!3904 = !DILocation(line: 1118, column: 3, scope: !3892)
!3905 = !DILocation(line: 1119, column: 11, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3884, file: !1, line: 1119, column: 11)
!3907 = !DILocation(line: 1119, column: 13, scope: !3906)
!3908 = !DILocation(line: 1119, column: 11, scope: !3884)
!3909 = !DILocation(line: 1120, column: 35, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3906, file: !1, line: 1119, column: 20)
!3911 = !DILocation(line: 1120, column: 43, scope: !3910)
!3912 = !DILocation(line: 1120, column: 46, scope: !3910)
!3913 = !DILocation(line: 1120, column: 12, scope: !3910)
!3914 = !DILocation(line: 1120, column: 5, scope: !3910)
!3915 = !DILocation(line: 1122, column: 11, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3906, file: !1, line: 1122, column: 11)
!3917 = !DILocation(line: 1122, column: 13, scope: !3916)
!3918 = !DILocation(line: 1122, column: 11, scope: !3906)
!3919 = !DILocation(line: 1123, column: 36, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3916, file: !1, line: 1122, column: 19)
!3921 = !DILocation(line: 1123, column: 44, scope: !3920)
!3922 = !DILocation(line: 1123, column: 47, scope: !3920)
!3923 = !DILocation(line: 1123, column: 12, scope: !3920)
!3924 = !DILocation(line: 1123, column: 5, scope: !3920)
!3925 = !DILocation(line: 1125, column: 11, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3916, file: !1, line: 1125, column: 11)
!3927 = !DILocation(line: 1125, column: 13, scope: !3926)
!3928 = !DILocation(line: 1125, column: 11, scope: !3916)
!3929 = !DILocation(line: 1126, column: 5, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3926, file: !1, line: 1125, column: 21)
!3931 = !DILocation(line: 1126, column: 13, scope: !3930)
!3932 = !DILocation(line: 1126, column: 17, scope: !3930)
!3933 = !DILocation(line: 1127, column: 5, scope: !3930)
!3934 = !DILocation(line: 1127, column: 13, scope: !3930)
!3935 = !DILocation(line: 1127, column: 17, scope: !3930)
!3936 = !DILocation(line: 1128, column: 5, scope: !3930)
!3937 = !DILocation(line: 1130, column: 11, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3926, file: !1, line: 1130, column: 11)
!3939 = !DILocation(line: 1130, column: 13, scope: !3938)
!3940 = !DILocation(line: 1130, column: 11, scope: !3926)
!3941 = !DILocalVariable(name: "c", scope: !3942, file: !1, line: 1131, type: !49)
!3942 = distinct !DILexicalBlock(scope: !3938, file: !1, line: 1130, column: 20)
!3943 = !DILocation(line: 1131, column: 12, scope: !3942)
!3944 = !DILocation(line: 1131, column: 29, scope: !3942)
!3945 = !DILocation(line: 1131, column: 31, scope: !3942)
!3946 = !DILocation(line: 1131, column: 30, scope: !3942)
!3947 = !DILocation(line: 1131, column: 28, scope: !3942)
!3948 = !DILocation(line: 1131, column: 20, scope: !3942)
!3949 = !DILocation(line: 1131, column: 19, scope: !3942)
!3950 = !DILocalVariable(name: "r_Pellm1", scope: !3942, file: !1, line: 1132, type: !51)
!3951 = !DILocation(line: 1132, column: 19, scope: !3942)
!3952 = !DILocalVariable(name: "r_Pell", scope: !3942, file: !1, line: 1133, type: !51)
!3953 = !DILocation(line: 1133, column: 19, scope: !3942)
!3954 = !DILocalVariable(name: "stat_0", scope: !3942, file: !1, line: 1134, type: !48)
!3955 = !DILocation(line: 1134, column: 9, scope: !3942)
!3956 = !DILocation(line: 1134, column: 41, scope: !3942)
!3957 = !DILocation(line: 1134, column: 49, scope: !3942)
!3958 = !DILocation(line: 1134, column: 18, scope: !3942)
!3959 = !DILocalVariable(name: "stat_1", scope: !3942, file: !1, line: 1135, type: !48)
!3960 = !DILocation(line: 1135, column: 9, scope: !3942)
!3961 = !DILocation(line: 1135, column: 42, scope: !3942)
!3962 = !DILocation(line: 1135, column: 50, scope: !3942)
!3963 = !DILocation(line: 1135, column: 18, scope: !3942)
!3964 = !DILocalVariable(name: "stat_P", scope: !3942, file: !1, line: 1136, type: !48)
!3965 = !DILocation(line: 1136, column: 9, scope: !3942)
!3966 = !DILocation(line: 1136, column: 18, scope: !3942)
!3967 = !DILocation(line: 1136, column: 18, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3942, file: !1, discriminator: 1)
!3969 = !DILocation(line: 1136, column: 18, scope: !3970)
!3970 = !DILexicalBlockFile(scope: !3942, file: !1, discriminator: 2)
!3971 = !DILocation(line: 1136, column: 18, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !3942, file: !1, discriminator: 3)
!3973 = !DILocation(line: 1136, column: 18, scope: !3974)
!3974 = !DILexicalBlockFile(scope: !3942, file: !1, discriminator: 4)
!3975 = !DILocation(line: 1136, column: 18, scope: !3976)
!3976 = !DILexicalBlockFile(scope: !3942, file: !1, discriminator: 5)
!3977 = !DILocation(line: 1136, column: 18, scope: !3978)
!3978 = !DILexicalBlockFile(scope: !3942, file: !1, discriminator: 6)
!3979 = !DILocation(line: 1136, column: 9, scope: !3978)
!3980 = !DILocalVariable(name: "Pellm1", scope: !3942, file: !1, line: 1137, type: !49)
!3981 = !DILocation(line: 1137, column: 12, scope: !3942)
!3982 = !DILocation(line: 1137, column: 30, scope: !3942)
!3983 = !DILocalVariable(name: "Pell", scope: !3942, file: !1, line: 1138, type: !49)
!3984 = !DILocation(line: 1138, column: 12, scope: !3942)
!3985 = !DILocation(line: 1138, column: 28, scope: !3942)
!3986 = !DILocalVariable(name: "Pellp1", scope: !3942, file: !1, line: 1139, type: !49)
!3987 = !DILocation(line: 1139, column: 12, scope: !3942)
!3988 = !DILocalVariable(name: "ell", scope: !3942, file: !1, line: 1140, type: !48)
!3989 = !DILocation(line: 1140, column: 9, scope: !3942)
!3990 = !DILocation(line: 1142, column: 12, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3942, file: !1, line: 1142, column: 5)
!3992 = !DILocation(line: 1142, column: 9, scope: !3991)
!3993 = !DILocation(line: 1142, column: 16, scope: !3994)
!3994 = !DILexicalBlockFile(scope: !3995, file: !1, discriminator: 1)
!3995 = distinct !DILexicalBlock(scope: !3991, file: !1, line: 1142, column: 5)
!3996 = !DILocation(line: 1142, column: 20, scope: !3994)
!3997 = !DILocation(line: 1142, column: 19, scope: !3994)
!3998 = !DILocation(line: 1142, column: 5, scope: !3994)
!3999 = !DILocalVariable(name: "d", scope: !4000, file: !1, line: 1143, type: !49)
!4000 = distinct !DILexicalBlock(scope: !3995, file: !1, line: 1142, column: 30)
!4001 = !DILocation(line: 1143, column: 14, scope: !4000)
!4002 = !DILocation(line: 1143, column: 19, scope: !4000)
!4003 = !DILocation(line: 1143, column: 22, scope: !4000)
!4004 = !DILocation(line: 1143, column: 29, scope: !4000)
!4005 = !DILocation(line: 1143, column: 32, scope: !4000)
!4006 = !DILocation(line: 1143, column: 27, scope: !4000)
!4007 = !DILocation(line: 1143, column: 40, scope: !4000)
!4008 = !DILocation(line: 1143, column: 47, scope: !4000)
!4009 = !DILocation(line: 1143, column: 46, scope: !4000)
!4010 = !DILocation(line: 1143, column: 38, scope: !4000)
!4011 = !DILocation(line: 1144, column: 17, scope: !4000)
!4012 = !DILocation(line: 1144, column: 31, scope: !4000)
!4013 = !DILocation(line: 1144, column: 30, scope: !4000)
!4014 = !DILocation(line: 1144, column: 34, scope: !4000)
!4015 = !DILocation(line: 1144, column: 40, scope: !4000)
!4016 = !DILocation(line: 1144, column: 39, scope: !4000)
!4017 = !DILocation(line: 1144, column: 42, scope: !4000)
!4018 = !DILocation(line: 1144, column: 41, scope: !4000)
!4019 = !DILocation(line: 1144, column: 46, scope: !4000)
!4020 = !DILocation(line: 1144, column: 44, scope: !4000)
!4021 = !DILocation(line: 1144, column: 24, scope: !4000)
!4022 = !DILocation(line: 1144, column: 54, scope: !4000)
!4023 = !DILocation(line: 1144, column: 52, scope: !4000)
!4024 = !DILocation(line: 1144, column: 14, scope: !4000)
!4025 = !DILocation(line: 1145, column: 16, scope: !4000)
!4026 = !DILocation(line: 1145, column: 14, scope: !4000)
!4027 = !DILocation(line: 1146, column: 16, scope: !4000)
!4028 = !DILocation(line: 1146, column: 14, scope: !4000)
!4029 = !DILocation(line: 1147, column: 5, scope: !4000)
!4030 = !DILocation(line: 1142, column: 26, scope: !4031)
!4031 = !DILexicalBlockFile(scope: !3995, file: !1, discriminator: 2)
!4032 = !DILocation(line: 1142, column: 5, scope: !4031)
!4033 = distinct !{!4033, !4034}
!4034 = !DILocation(line: 1142, column: 5, scope: !3942)
!4035 = !DILocation(line: 1149, column: 20, scope: !3942)
!4036 = !DILocation(line: 1149, column: 5, scope: !3942)
!4037 = !DILocation(line: 1149, column: 13, scope: !3942)
!4038 = !DILocation(line: 1149, column: 18, scope: !3942)
!4039 = !DILocation(line: 1150, column: 25, scope: !3942)
!4040 = !DILocation(line: 1150, column: 24, scope: !3942)
!4041 = !DILocation(line: 1150, column: 27, scope: !3942)
!4042 = !DILocation(line: 1150, column: 34, scope: !3942)
!4043 = !DILocation(line: 1150, column: 59, scope: !3942)
!4044 = !DILocation(line: 1150, column: 54, scope: !3942)
!4045 = !DILocation(line: 1150, column: 52, scope: !3942)
!4046 = !DILocation(line: 1150, column: 5, scope: !3942)
!4047 = !DILocation(line: 1150, column: 13, scope: !3942)
!4048 = !DILocation(line: 1150, column: 18, scope: !3942)
!4049 = !DILocation(line: 1151, column: 38, scope: !3942)
!4050 = !DILocation(line: 1151, column: 36, scope: !3942)
!4051 = !DILocation(line: 1151, column: 47, scope: !3942)
!4052 = !DILocation(line: 1151, column: 55, scope: !3942)
!4053 = !DILocation(line: 1151, column: 42, scope: !3942)
!4054 = !DILocation(line: 1151, column: 40, scope: !3942)
!4055 = !DILocation(line: 1151, column: 5, scope: !3942)
!4056 = !DILocation(line: 1151, column: 13, scope: !3942)
!4057 = !DILocation(line: 1151, column: 17, scope: !3942)
!4058 = !DILocation(line: 1152, column: 12, scope: !3942)
!4059 = !DILocation(line: 1152, column: 5, scope: !3942)
!4060 = !DILocation(line: 1154, column: 11, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !3938, file: !1, line: 1154, column: 11)
!4062 = !DILocation(line: 1154, column: 13, scope: !4061)
!4063 = !DILocation(line: 1154, column: 11, scope: !3938)
!4064 = !DILocalVariable(name: "xi", scope: !4065, file: !1, line: 1155, type: !310)
!4065 = distinct !DILexicalBlock(scope: !4061, file: !1, line: 1154, column: 20)
!4066 = !DILocation(line: 1155, column: 18, scope: !4065)
!4067 = !DILocation(line: 1155, column: 23, scope: !4065)
!4068 = !DILocation(line: 1155, column: 35, scope: !4065)
!4069 = !DILocation(line: 1155, column: 34, scope: !4065)
!4070 = !DILocation(line: 1155, column: 26, scope: !4065)
!4071 = !DILocation(line: 1155, column: 47, scope: !4065)
!4072 = !DILocation(line: 1155, column: 46, scope: !4065)
!4073 = !DILocation(line: 1155, column: 38, scope: !4074)
!4074 = !DILexicalBlockFile(scope: !4065, file: !1, discriminator: 1)
!4075 = !DILocation(line: 1155, column: 37, scope: !4065)
!4076 = !DILocation(line: 1155, column: 24, scope: !4065)
!4077 = !DILocalVariable(name: "rat", scope: !4065, file: !1, line: 1156, type: !51)
!4078 = !DILocation(line: 1156, column: 19, scope: !4065)
!4079 = !DILocalVariable(name: "Phf", scope: !4065, file: !1, line: 1157, type: !51)
!4080 = !DILocation(line: 1157, column: 19, scope: !4065)
!4081 = !DILocalVariable(name: "stat_CF1", scope: !4065, file: !1, line: 1158, type: !48)
!4082 = !DILocation(line: 1158, column: 9, scope: !4065)
!4083 = !DILocation(line: 1158, column: 49, scope: !4065)
!4084 = !DILocation(line: 1158, column: 52, scope: !4065)
!4085 = !DILocation(line: 1158, column: 60, scope: !4065)
!4086 = !DILocation(line: 1158, column: 20, scope: !4065)
!4087 = !DILocalVariable(name: "stat_Phf", scope: !4065, file: !1, line: 1159, type: !48)
!4088 = !DILocation(line: 1159, column: 9, scope: !4065)
!4089 = !DILocation(line: 1159, column: 43, scope: !4065)
!4090 = !DILocation(line: 1159, column: 51, scope: !4065)
!4091 = !DILocation(line: 1159, column: 20, scope: !4065)
!4092 = !DILocalVariable(name: "Pellp1", scope: !4065, file: !1, line: 1160, type: !49)
!4093 = !DILocation(line: 1160, column: 12, scope: !4065)
!4094 = !DILocation(line: 1160, column: 25, scope: !4065)
!4095 = !DILocation(line: 1160, column: 29, scope: !4065)
!4096 = !DILocalVariable(name: "Pell", scope: !4065, file: !1, line: 1161, type: !49)
!4097 = !DILocation(line: 1161, column: 12, scope: !4065)
!4098 = !DILocalVariable(name: "Pellm1", scope: !4065, file: !1, line: 1162, type: !49)
!4099 = !DILocation(line: 1162, column: 12, scope: !4065)
!4100 = !DILocalVariable(name: "ell", scope: !4065, file: !1, line: 1163, type: !48)
!4101 = !DILocation(line: 1163, column: 9, scope: !4065)
!4102 = !DILocation(line: 1165, column: 13, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4065, file: !1, line: 1165, column: 5)
!4104 = !DILocation(line: 1165, column: 12, scope: !4103)
!4105 = !DILocation(line: 1165, column: 9, scope: !4103)
!4106 = !DILocation(line: 1165, column: 16, scope: !4107)
!4107 = !DILexicalBlockFile(scope: !4108, file: !1, discriminator: 1)
!4108 = distinct !DILexicalBlock(scope: !4103, file: !1, line: 1165, column: 5)
!4109 = !DILocation(line: 1165, column: 19, scope: !4107)
!4110 = !DILocation(line: 1165, column: 5, scope: !4107)
!4111 = !DILocalVariable(name: "d", scope: !4112, file: !1, line: 1166, type: !49)
!4112 = distinct !DILexicalBlock(scope: !4108, file: !1, line: 1165, column: 31)
!4113 = !DILocation(line: 1166, column: 14, scope: !4112)
!4114 = !DILocation(line: 1166, column: 19, scope: !4112)
!4115 = !DILocation(line: 1166, column: 22, scope: !4112)
!4116 = !DILocation(line: 1166, column: 29, scope: !4112)
!4117 = !DILocation(line: 1166, column: 32, scope: !4112)
!4118 = !DILocation(line: 1166, column: 27, scope: !4112)
!4119 = !DILocation(line: 1166, column: 40, scope: !4112)
!4120 = !DILocation(line: 1166, column: 47, scope: !4112)
!4121 = !DILocation(line: 1166, column: 46, scope: !4112)
!4122 = !DILocation(line: 1166, column: 38, scope: !4112)
!4123 = !DILocation(line: 1167, column: 21, scope: !4112)
!4124 = !DILocation(line: 1167, column: 20, scope: !4112)
!4125 = !DILocation(line: 1167, column: 24, scope: !4112)
!4126 = !DILocation(line: 1167, column: 30, scope: !4112)
!4127 = !DILocation(line: 1167, column: 29, scope: !4112)
!4128 = !DILocation(line: 1167, column: 35, scope: !4112)
!4129 = !DILocation(line: 1167, column: 33, scope: !4112)
!4130 = !DILocation(line: 1167, column: 42, scope: !4112)
!4131 = !DILocation(line: 1167, column: 46, scope: !4112)
!4132 = !DILocation(line: 1167, column: 44, scope: !4112)
!4133 = !DILocation(line: 1167, column: 40, scope: !4112)
!4134 = !DILocation(line: 1167, column: 14, scope: !4112)
!4135 = !DILocation(line: 1168, column: 16, scope: !4112)
!4136 = !DILocation(line: 1168, column: 14, scope: !4112)
!4137 = !DILocation(line: 1169, column: 16, scope: !4112)
!4138 = !DILocation(line: 1169, column: 14, scope: !4112)
!4139 = !DILocation(line: 1170, column: 5, scope: !4112)
!4140 = !DILocation(line: 1165, column: 27, scope: !4141)
!4141 = !DILexicalBlockFile(scope: !4108, file: !1, discriminator: 2)
!4142 = !DILocation(line: 1165, column: 5, scope: !4141)
!4143 = distinct !{!4143, !4144}
!4144 = !DILocation(line: 1165, column: 5, scope: !4065)
!4145 = !DILocation(line: 1172, column: 43, scope: !4065)
!4146 = !DILocation(line: 1172, column: 37, scope: !4065)
!4147 = !DILocation(line: 1172, column: 49, scope: !4065)
!4148 = !DILocation(line: 1172, column: 47, scope: !4065)
!4149 = !DILocation(line: 1172, column: 5, scope: !4065)
!4150 = !DILocation(line: 1172, column: 13, scope: !4065)
!4151 = !DILocation(line: 1172, column: 18, scope: !4065)
!4152 = !DILocation(line: 1173, column: 43, scope: !4065)
!4153 = !DILocation(line: 1173, column: 37, scope: !4065)
!4154 = !DILocation(line: 1173, column: 54, scope: !4065)
!4155 = !DILocation(line: 1173, column: 49, scope: !4065)
!4156 = !DILocation(line: 1173, column: 47, scope: !4065)
!4157 = !DILocation(line: 1173, column: 5, scope: !4065)
!4158 = !DILocation(line: 1173, column: 13, scope: !4065)
!4159 = !DILocation(line: 1173, column: 18, scope: !4065)
!4160 = !DILocation(line: 1174, column: 29, scope: !4065)
!4161 = !DILocation(line: 1174, column: 37, scope: !4065)
!4162 = !DILocation(line: 1174, column: 32, scope: !4065)
!4163 = !DILocation(line: 1174, column: 20, scope: !4065)
!4164 = !DILocation(line: 1174, column: 45, scope: !4065)
!4165 = !DILocation(line: 1174, column: 47, scope: !4065)
!4166 = !DILocation(line: 1174, column: 42, scope: !4065)
!4167 = !DILocation(line: 1174, column: 61, scope: !4065)
!4168 = !DILocation(line: 1174, column: 69, scope: !4065)
!4169 = !DILocation(line: 1174, column: 56, scope: !4074)
!4170 = !DILocation(line: 1174, column: 54, scope: !4065)
!4171 = !DILocation(line: 1174, column: 5, scope: !4065)
!4172 = !DILocation(line: 1174, column: 13, scope: !4065)
!4173 = !DILocation(line: 1174, column: 17, scope: !4065)
!4174 = !DILocation(line: 1175, column: 49, scope: !4065)
!4175 = !DILocation(line: 1175, column: 57, scope: !4065)
!4176 = !DILocation(line: 1175, column: 44, scope: !4065)
!4177 = !DILocation(line: 1175, column: 42, scope: !4065)
!4178 = !DILocation(line: 1175, column: 5, scope: !4065)
!4179 = !DILocation(line: 1175, column: 13, scope: !4065)
!4180 = !DILocation(line: 1175, column: 17, scope: !4065)
!4181 = !DILocation(line: 1177, column: 12, scope: !4065)
!4182 = !DILocation(line: 1177, column: 12, scope: !4074)
!4183 = !DILocation(line: 1177, column: 12, scope: !4184)
!4184 = !DILexicalBlockFile(scope: !4065, file: !1, discriminator: 2)
!4185 = !DILocation(line: 1177, column: 12, scope: !4186)
!4186 = !DILexicalBlockFile(scope: !4065, file: !1, discriminator: 3)
!4187 = !DILocation(line: 1177, column: 12, scope: !4188)
!4188 = !DILexicalBlockFile(scope: !4065, file: !1, discriminator: 4)
!4189 = !DILocation(line: 1177, column: 12, scope: !4190)
!4190 = !DILexicalBlockFile(scope: !4065, file: !1, discriminator: 5)
!4191 = !DILocation(line: 1177, column: 12, scope: !4192)
!4192 = !DILexicalBlockFile(scope: !4065, file: !1, discriminator: 6)
!4193 = !DILocation(line: 1177, column: 5, scope: !4192)
!4194 = !DILocation(line: 1179, column: 11, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4061, file: !1, line: 1179, column: 11)
!4196 = !DILocation(line: 1179, column: 13, scope: !4195)
!4197 = !DILocation(line: 1179, column: 11, scope: !4061)
!4198 = !DILocation(line: 1180, column: 5, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4195, file: !1, line: 1179, column: 21)
!4200 = !DILocation(line: 1180, column: 13, scope: !4199)
!4201 = !DILocation(line: 1180, column: 17, scope: !4199)
!4202 = !DILocation(line: 1181, column: 5, scope: !4199)
!4203 = !DILocation(line: 1181, column: 13, scope: !4199)
!4204 = !DILocation(line: 1181, column: 17, scope: !4199)
!4205 = !DILocation(line: 1182, column: 5, scope: !4199)
!4206 = !DILocalVariable(name: "xi", scope: !4207, file: !1, line: 1187, type: !310)
!4207 = distinct !DILexicalBlock(scope: !4195, file: !1, line: 1184, column: 8)
!4208 = !DILocation(line: 1187, column: 18, scope: !4207)
!4209 = !DILocation(line: 1187, column: 23, scope: !4207)
!4210 = !DILocation(line: 1187, column: 31, scope: !4207)
!4211 = !DILocation(line: 1187, column: 32, scope: !4207)
!4212 = !DILocation(line: 1187, column: 39, scope: !4207)
!4213 = !DILocation(line: 1187, column: 40, scope: !4207)
!4214 = !DILocation(line: 1187, column: 37, scope: !4207)
!4215 = !DILocation(line: 1187, column: 25, scope: !4207)
!4216 = !DILocation(line: 1187, column: 24, scope: !4207)
!4217 = !DILocalVariable(name: "rat", scope: !4207, file: !1, line: 1188, type: !51)
!4218 = !DILocation(line: 1188, column: 19, scope: !4207)
!4219 = !DILocalVariable(name: "stat_CF1", scope: !4207, file: !1, line: 1189, type: !48)
!4220 = !DILocation(line: 1189, column: 9, scope: !4207)
!4221 = !DILocation(line: 1189, column: 49, scope: !4207)
!4222 = !DILocation(line: 1189, column: 52, scope: !4207)
!4223 = !DILocation(line: 1189, column: 60, scope: !4207)
!4224 = !DILocation(line: 1189, column: 20, scope: !4207)
!4225 = !DILocalVariable(name: "stat_P", scope: !4207, file: !1, line: 1190, type: !48)
!4226 = !DILocation(line: 1190, column: 9, scope: !4207)
!4227 = !DILocalVariable(name: "Pellp1", scope: !4207, file: !1, line: 1191, type: !49)
!4228 = !DILocation(line: 1191, column: 12, scope: !4207)
!4229 = !DILocation(line: 1191, column: 25, scope: !4207)
!4230 = !DILocation(line: 1191, column: 29, scope: !4207)
!4231 = !DILocalVariable(name: "Pell", scope: !4207, file: !1, line: 1192, type: !49)
!4232 = !DILocation(line: 1192, column: 12, scope: !4207)
!4233 = !DILocalVariable(name: "Pellm1", scope: !4207, file: !1, line: 1193, type: !49)
!4234 = !DILocation(line: 1193, column: 12, scope: !4207)
!4235 = !DILocalVariable(name: "ell", scope: !4207, file: !1, line: 1194, type: !48)
!4236 = !DILocation(line: 1194, column: 9, scope: !4207)
!4237 = !DILocation(line: 1196, column: 13, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4207, file: !1, line: 1196, column: 5)
!4239 = !DILocation(line: 1196, column: 12, scope: !4238)
!4240 = !DILocation(line: 1196, column: 9, scope: !4238)
!4241 = !DILocation(line: 1196, column: 16, scope: !4242)
!4242 = !DILexicalBlockFile(scope: !4243, file: !1, discriminator: 1)
!4243 = distinct !DILexicalBlock(scope: !4238, file: !1, line: 1196, column: 5)
!4244 = !DILocation(line: 1196, column: 19, scope: !4242)
!4245 = !DILocation(line: 1196, column: 5, scope: !4242)
!4246 = !DILocalVariable(name: "d", scope: !4247, file: !1, line: 1197, type: !49)
!4247 = distinct !DILexicalBlock(scope: !4243, file: !1, line: 1196, column: 31)
!4248 = !DILocation(line: 1197, column: 14, scope: !4247)
!4249 = !DILocation(line: 1197, column: 19, scope: !4247)
!4250 = !DILocation(line: 1197, column: 22, scope: !4247)
!4251 = !DILocation(line: 1197, column: 29, scope: !4247)
!4252 = !DILocation(line: 1197, column: 32, scope: !4247)
!4253 = !DILocation(line: 1197, column: 27, scope: !4247)
!4254 = !DILocation(line: 1197, column: 40, scope: !4247)
!4255 = !DILocation(line: 1197, column: 47, scope: !4247)
!4256 = !DILocation(line: 1197, column: 46, scope: !4247)
!4257 = !DILocation(line: 1197, column: 38, scope: !4247)
!4258 = !DILocation(line: 1198, column: 21, scope: !4247)
!4259 = !DILocation(line: 1198, column: 20, scope: !4247)
!4260 = !DILocation(line: 1198, column: 24, scope: !4247)
!4261 = !DILocation(line: 1198, column: 30, scope: !4247)
!4262 = !DILocation(line: 1198, column: 29, scope: !4247)
!4263 = !DILocation(line: 1198, column: 35, scope: !4247)
!4264 = !DILocation(line: 1198, column: 33, scope: !4247)
!4265 = !DILocation(line: 1198, column: 42, scope: !4247)
!4266 = !DILocation(line: 1198, column: 46, scope: !4247)
!4267 = !DILocation(line: 1198, column: 44, scope: !4247)
!4268 = !DILocation(line: 1198, column: 40, scope: !4247)
!4269 = !DILocation(line: 1198, column: 14, scope: !4247)
!4270 = !DILocation(line: 1199, column: 16, scope: !4247)
!4271 = !DILocation(line: 1199, column: 14, scope: !4247)
!4272 = !DILocation(line: 1200, column: 16, scope: !4247)
!4273 = !DILocation(line: 1200, column: 14, scope: !4247)
!4274 = !DILocation(line: 1201, column: 5, scope: !4247)
!4275 = !DILocation(line: 1196, column: 27, scope: !4276)
!4276 = !DILexicalBlockFile(scope: !4243, file: !1, discriminator: 2)
!4277 = !DILocation(line: 1196, column: 5, scope: !4276)
!4278 = distinct !{!4278, !4279}
!4279 = !DILocation(line: 1196, column: 5, scope: !4207)
!4280 = !DILocation(line: 1203, column: 13, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4207, file: !1, line: 1203, column: 8)
!4282 = !DILocation(line: 1203, column: 8, scope: !4281)
!4283 = !DILocation(line: 1203, column: 26, scope: !4281)
!4284 = !DILocation(line: 1203, column: 21, scope: !4285)
!4285 = !DILexicalBlockFile(scope: !4281, file: !1, discriminator: 1)
!4286 = !DILocation(line: 1203, column: 19, scope: !4281)
!4287 = !DILocation(line: 1203, column: 8, scope: !4207)
!4288 = !DILocalVariable(name: "Phf", scope: !4289, file: !1, line: 1204, type: !51)
!4289 = distinct !DILexicalBlock(scope: !4281, file: !1, line: 1203, column: 34)
!4290 = !DILocation(line: 1204, column: 21, scope: !4289)
!4291 = !DILocation(line: 1205, column: 39, scope: !4289)
!4292 = !DILocation(line: 1205, column: 47, scope: !4289)
!4293 = !DILocation(line: 1205, column: 16, scope: !4289)
!4294 = !DILocation(line: 1205, column: 14, scope: !4289)
!4295 = !DILocation(line: 1206, column: 51, scope: !4289)
!4296 = !DILocation(line: 1206, column: 45, scope: !4289)
!4297 = !DILocation(line: 1206, column: 57, scope: !4289)
!4298 = !DILocation(line: 1206, column: 55, scope: !4289)
!4299 = !DILocation(line: 1206, column: 7, scope: !4289)
!4300 = !DILocation(line: 1206, column: 15, scope: !4289)
!4301 = !DILocation(line: 1206, column: 20, scope: !4289)
!4302 = !DILocation(line: 1207, column: 51, scope: !4289)
!4303 = !DILocation(line: 1207, column: 45, scope: !4289)
!4304 = !DILocation(line: 1207, column: 62, scope: !4289)
!4305 = !DILocation(line: 1207, column: 57, scope: !4289)
!4306 = !DILocation(line: 1207, column: 55, scope: !4289)
!4307 = !DILocation(line: 1207, column: 7, scope: !4289)
!4308 = !DILocation(line: 1207, column: 15, scope: !4289)
!4309 = !DILocation(line: 1207, column: 20, scope: !4289)
!4310 = !DILocation(line: 1208, column: 37, scope: !4289)
!4311 = !DILocation(line: 1208, column: 45, scope: !4289)
!4312 = !DILocation(line: 1208, column: 40, scope: !4289)
!4313 = !DILocation(line: 1208, column: 28, scope: !4289)
!4314 = !DILocation(line: 1208, column: 26, scope: !4289)
!4315 = !DILocation(line: 1208, column: 53, scope: !4289)
!4316 = !DILocation(line: 1208, column: 55, scope: !4289)
!4317 = !DILocation(line: 1208, column: 50, scope: !4289)
!4318 = !DILocation(line: 1208, column: 69, scope: !4289)
!4319 = !DILocation(line: 1208, column: 77, scope: !4289)
!4320 = !DILocation(line: 1208, column: 64, scope: !4321)
!4321 = !DILexicalBlockFile(scope: !4289, file: !1, discriminator: 1)
!4322 = !DILocation(line: 1208, column: 62, scope: !4289)
!4323 = !DILocation(line: 1208, column: 7, scope: !4289)
!4324 = !DILocation(line: 1208, column: 15, scope: !4289)
!4325 = !DILocation(line: 1208, column: 19, scope: !4289)
!4326 = !DILocation(line: 1209, column: 51, scope: !4289)
!4327 = !DILocation(line: 1209, column: 59, scope: !4289)
!4328 = !DILocation(line: 1209, column: 46, scope: !4289)
!4329 = !DILocation(line: 1209, column: 44, scope: !4289)
!4330 = !DILocation(line: 1209, column: 7, scope: !4289)
!4331 = !DILocation(line: 1209, column: 15, scope: !4289)
!4332 = !DILocation(line: 1209, column: 19, scope: !4289)
!4333 = !DILocation(line: 1210, column: 5, scope: !4289)
!4334 = !DILocalVariable(name: "Pmhf", scope: !4335, file: !1, line: 1212, type: !51)
!4335 = distinct !DILexicalBlock(scope: !4281, file: !1, line: 1211, column: 10)
!4336 = !DILocation(line: 1212, column: 21, scope: !4335)
!4337 = !DILocation(line: 1213, column: 40, scope: !4335)
!4338 = !DILocation(line: 1213, column: 48, scope: !4335)
!4339 = !DILocation(line: 1213, column: 16, scope: !4335)
!4340 = !DILocation(line: 1213, column: 14, scope: !4335)
!4341 = !DILocation(line: 1214, column: 52, scope: !4335)
!4342 = !DILocation(line: 1214, column: 45, scope: !4335)
!4343 = !DILocation(line: 1214, column: 58, scope: !4335)
!4344 = !DILocation(line: 1214, column: 56, scope: !4335)
!4345 = !DILocation(line: 1214, column: 7, scope: !4335)
!4346 = !DILocation(line: 1214, column: 15, scope: !4335)
!4347 = !DILocation(line: 1214, column: 20, scope: !4335)
!4348 = !DILocation(line: 1215, column: 52, scope: !4335)
!4349 = !DILocation(line: 1215, column: 45, scope: !4335)
!4350 = !DILocation(line: 1215, column: 63, scope: !4335)
!4351 = !DILocation(line: 1215, column: 58, scope: !4335)
!4352 = !DILocation(line: 1215, column: 56, scope: !4335)
!4353 = !DILocation(line: 1215, column: 7, scope: !4335)
!4354 = !DILocation(line: 1215, column: 15, scope: !4335)
!4355 = !DILocation(line: 1215, column: 20, scope: !4335)
!4356 = !DILocation(line: 1216, column: 37, scope: !4335)
!4357 = !DILocation(line: 1216, column: 45, scope: !4335)
!4358 = !DILocation(line: 1216, column: 40, scope: !4335)
!4359 = !DILocation(line: 1216, column: 28, scope: !4335)
!4360 = !DILocation(line: 1216, column: 26, scope: !4335)
!4361 = !DILocation(line: 1216, column: 53, scope: !4335)
!4362 = !DILocation(line: 1216, column: 55, scope: !4335)
!4363 = !DILocation(line: 1216, column: 50, scope: !4335)
!4364 = !DILocation(line: 1216, column: 69, scope: !4335)
!4365 = !DILocation(line: 1216, column: 77, scope: !4335)
!4366 = !DILocation(line: 1216, column: 64, scope: !4367)
!4367 = !DILexicalBlockFile(scope: !4335, file: !1, discriminator: 1)
!4368 = !DILocation(line: 1216, column: 62, scope: !4335)
!4369 = !DILocation(line: 1216, column: 7, scope: !4335)
!4370 = !DILocation(line: 1216, column: 15, scope: !4335)
!4371 = !DILocation(line: 1216, column: 19, scope: !4335)
!4372 = !DILocation(line: 1217, column: 51, scope: !4335)
!4373 = !DILocation(line: 1217, column: 59, scope: !4335)
!4374 = !DILocation(line: 1217, column: 46, scope: !4335)
!4375 = !DILocation(line: 1217, column: 44, scope: !4335)
!4376 = !DILocation(line: 1217, column: 7, scope: !4335)
!4377 = !DILocation(line: 1217, column: 15, scope: !4335)
!4378 = !DILocation(line: 1217, column: 19, scope: !4335)
!4379 = !DILocation(line: 1220, column: 12, scope: !4207)
!4380 = !DILocation(line: 1220, column: 12, scope: !4381)
!4381 = !DILexicalBlockFile(scope: !4207, file: !1, discriminator: 1)
!4382 = !DILocation(line: 1220, column: 12, scope: !4383)
!4383 = !DILexicalBlockFile(scope: !4207, file: !1, discriminator: 2)
!4384 = !DILocation(line: 1220, column: 12, scope: !4385)
!4385 = !DILexicalBlockFile(scope: !4207, file: !1, discriminator: 3)
!4386 = !DILocation(line: 1220, column: 12, scope: !4387)
!4387 = !DILexicalBlockFile(scope: !4207, file: !1, discriminator: 4)
!4388 = !DILocation(line: 1220, column: 12, scope: !4389)
!4389 = !DILexicalBlockFile(scope: !4207, file: !1, discriminator: 5)
!4390 = !DILocation(line: 1220, column: 12, scope: !4391)
!4391 = !DILexicalBlockFile(scope: !4207, file: !1, discriminator: 6)
!4392 = !DILocation(line: 1220, column: 5, scope: !4391)
!4393 = !DILocation(line: 1222, column: 1, scope: !3872)
!4394 = distinct !DISubprogram(name: "conicalP_negmu_xlt1_CF1", scope: !1, file: !1, line: 57, type: !4395, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!48, !310, !1138, !310, !310, !50}
!4397 = !DILocalVariable(name: "mu", arg: 1, scope: !4394, file: !1, line: 57, type: !310)
!4398 = !DILocation(line: 57, column: 38, scope: !4394)
!4399 = !DILocalVariable(name: "ell", arg: 2, scope: !4394, file: !1, line: 57, type: !1138)
!4400 = !DILocation(line: 57, column: 52, scope: !4394)
!4401 = !DILocalVariable(name: "tau", arg: 3, scope: !4394, file: !1, line: 57, type: !310)
!4402 = !DILocation(line: 57, column: 70, scope: !4394)
!4403 = !DILocalVariable(name: "x", arg: 4, scope: !4394, file: !1, line: 58, type: !310)
!4404 = !DILocation(line: 58, column: 38, scope: !4394)
!4405 = !DILocalVariable(name: "result", arg: 5, scope: !4394, file: !1, line: 58, type: !50)
!4406 = !DILocation(line: 58, column: 57, scope: !4394)
!4407 = !DILocalVariable(name: "RECUR_BIG", scope: !4394, file: !1, line: 60, type: !310)
!4408 = !DILocation(line: 60, column: 16, scope: !4394)
!4409 = !DILocalVariable(name: "maxiter", scope: !4394, file: !1, line: 61, type: !1138)
!4410 = !DILocation(line: 61, column: 13, scope: !4394)
!4411 = !DILocalVariable(name: "n", scope: !4394, file: !1, line: 62, type: !48)
!4412 = !DILocation(line: 62, column: 7, scope: !4394)
!4413 = !DILocalVariable(name: "xi", scope: !4394, file: !1, line: 63, type: !49)
!4414 = !DILocation(line: 63, column: 10, scope: !4394)
!4415 = !DILocation(line: 63, column: 15, scope: !4394)
!4416 = !DILocation(line: 63, column: 27, scope: !4394)
!4417 = !DILocation(line: 63, column: 26, scope: !4394)
!4418 = !DILocation(line: 63, column: 18, scope: !4394)
!4419 = !DILocation(line: 63, column: 39, scope: !4394)
!4420 = !DILocation(line: 63, column: 38, scope: !4394)
!4421 = !DILocation(line: 63, column: 30, scope: !4422)
!4422 = !DILexicalBlockFile(scope: !4394, file: !1, discriminator: 1)
!4423 = !DILocation(line: 63, column: 29, scope: !4394)
!4424 = !DILocation(line: 63, column: 16, scope: !4394)
!4425 = !DILocalVariable(name: "Anm2", scope: !4394, file: !1, line: 64, type: !49)
!4426 = !DILocation(line: 64, column: 10, scope: !4394)
!4427 = !DILocalVariable(name: "Bnm2", scope: !4394, file: !1, line: 65, type: !49)
!4428 = !DILocation(line: 65, column: 10, scope: !4394)
!4429 = !DILocalVariable(name: "Anm1", scope: !4394, file: !1, line: 66, type: !49)
!4430 = !DILocation(line: 66, column: 10, scope: !4394)
!4431 = !DILocalVariable(name: "Bnm1", scope: !4394, file: !1, line: 67, type: !49)
!4432 = !DILocation(line: 67, column: 10, scope: !4394)
!4433 = !DILocalVariable(name: "a1", scope: !4394, file: !1, line: 68, type: !49)
!4434 = !DILocation(line: 68, column: 10, scope: !4394)
!4435 = !DILocalVariable(name: "b1", scope: !4394, file: !1, line: 69, type: !49)
!4436 = !DILocation(line: 69, column: 10, scope: !4394)
!4437 = !DILocation(line: 69, column: 20, scope: !4394)
!4438 = !DILocation(line: 69, column: 25, scope: !4394)
!4439 = !DILocation(line: 69, column: 23, scope: !4394)
!4440 = !DILocation(line: 69, column: 29, scope: !4394)
!4441 = !DILocation(line: 69, column: 18, scope: !4394)
!4442 = !DILocation(line: 69, column: 38, scope: !4394)
!4443 = !DILocation(line: 69, column: 36, scope: !4394)
!4444 = !DILocalVariable(name: "An", scope: !4394, file: !1, line: 70, type: !49)
!4445 = !DILocation(line: 70, column: 10, scope: !4394)
!4446 = !DILocation(line: 70, column: 15, scope: !4394)
!4447 = !DILocation(line: 70, column: 18, scope: !4394)
!4448 = !DILocation(line: 70, column: 17, scope: !4394)
!4449 = !DILocation(line: 70, column: 25, scope: !4394)
!4450 = !DILocation(line: 70, column: 28, scope: !4394)
!4451 = !DILocation(line: 70, column: 27, scope: !4394)
!4452 = !DILocation(line: 70, column: 23, scope: !4394)
!4453 = !DILocalVariable(name: "Bn", scope: !4394, file: !1, line: 71, type: !49)
!4454 = !DILocation(line: 71, column: 10, scope: !4394)
!4455 = !DILocation(line: 71, column: 15, scope: !4394)
!4456 = !DILocation(line: 71, column: 18, scope: !4394)
!4457 = !DILocation(line: 71, column: 17, scope: !4394)
!4458 = !DILocation(line: 71, column: 25, scope: !4394)
!4459 = !DILocation(line: 71, column: 28, scope: !4394)
!4460 = !DILocation(line: 71, column: 27, scope: !4394)
!4461 = !DILocation(line: 71, column: 23, scope: !4394)
!4462 = !DILocalVariable(name: "an", scope: !4394, file: !1, line: 72, type: !49)
!4463 = !DILocation(line: 72, column: 10, scope: !4394)
!4464 = !DILocalVariable(name: "bn", scope: !4394, file: !1, line: 72, type: !49)
!4465 = !DILocation(line: 72, column: 14, scope: !4394)
!4466 = !DILocalVariable(name: "fn", scope: !4394, file: !1, line: 73, type: !49)
!4467 = !DILocation(line: 73, column: 10, scope: !4394)
!4468 = !DILocation(line: 73, column: 15, scope: !4394)
!4469 = !DILocation(line: 73, column: 18, scope: !4394)
!4470 = !DILocation(line: 73, column: 17, scope: !4394)
!4471 = !DILocation(line: 75, column: 3, scope: !4394)
!4472 = !DILocation(line: 75, column: 9, scope: !4422)
!4473 = !DILocation(line: 75, column: 11, scope: !4422)
!4474 = !DILocation(line: 75, column: 3, scope: !4422)
!4475 = !DILocalVariable(name: "old_fn", scope: !4476, file: !1, line: 76, type: !49)
!4476 = distinct !DILexicalBlock(scope: !4394, file: !1, line: 75, column: 22)
!4477 = !DILocation(line: 76, column: 12, scope: !4476)
!4478 = !DILocalVariable(name: "del", scope: !4476, file: !1, line: 77, type: !49)
!4479 = !DILocation(line: 77, column: 12, scope: !4476)
!4480 = !DILocation(line: 78, column: 6, scope: !4476)
!4481 = !DILocation(line: 79, column: 12, scope: !4476)
!4482 = !DILocation(line: 79, column: 10, scope: !4476)
!4483 = !DILocation(line: 80, column: 12, scope: !4476)
!4484 = !DILocation(line: 80, column: 10, scope: !4476)
!4485 = !DILocation(line: 81, column: 12, scope: !4476)
!4486 = !DILocation(line: 81, column: 10, scope: !4476)
!4487 = !DILocation(line: 82, column: 12, scope: !4476)
!4488 = !DILocation(line: 82, column: 10, scope: !4476)
!4489 = !DILocation(line: 83, column: 10, scope: !4476)
!4490 = !DILocation(line: 83, column: 14, scope: !4476)
!4491 = !DILocation(line: 83, column: 13, scope: !4476)
!4492 = !DILocation(line: 83, column: 21, scope: !4476)
!4493 = !DILocation(line: 83, column: 24, scope: !4476)
!4494 = !DILocation(line: 83, column: 32, scope: !4476)
!4495 = !DILocation(line: 83, column: 30, scope: !4476)
!4496 = !DILocation(line: 83, column: 38, scope: !4476)
!4497 = !DILocation(line: 83, column: 36, scope: !4476)
!4498 = !DILocation(line: 83, column: 42, scope: !4476)
!4499 = !DILocation(line: 83, column: 45, scope: !4476)
!4500 = !DILocation(line: 83, column: 53, scope: !4476)
!4501 = !DILocation(line: 83, column: 51, scope: !4476)
!4502 = !DILocation(line: 83, column: 59, scope: !4476)
!4503 = !DILocation(line: 83, column: 57, scope: !4476)
!4504 = !DILocation(line: 83, column: 40, scope: !4476)
!4505 = !DILocation(line: 83, column: 18, scope: !4476)
!4506 = !DILocation(line: 83, column: 8, scope: !4476)
!4507 = !DILocation(line: 84, column: 15, scope: !4476)
!4508 = !DILocation(line: 84, column: 21, scope: !4476)
!4509 = !DILocation(line: 84, column: 19, scope: !4476)
!4510 = !DILocation(line: 84, column: 26, scope: !4476)
!4511 = !DILocation(line: 84, column: 24, scope: !4476)
!4512 = !DILocation(line: 84, column: 13, scope: !4476)
!4513 = !DILocation(line: 84, column: 31, scope: !4476)
!4514 = !DILocation(line: 84, column: 29, scope: !4476)
!4515 = !DILocation(line: 84, column: 8, scope: !4476)
!4516 = !DILocation(line: 85, column: 10, scope: !4476)
!4517 = !DILocation(line: 85, column: 13, scope: !4476)
!4518 = !DILocation(line: 85, column: 12, scope: !4476)
!4519 = !DILocation(line: 85, column: 20, scope: !4476)
!4520 = !DILocation(line: 85, column: 23, scope: !4476)
!4521 = !DILocation(line: 85, column: 22, scope: !4476)
!4522 = !DILocation(line: 85, column: 18, scope: !4476)
!4523 = !DILocation(line: 85, column: 8, scope: !4476)
!4524 = !DILocation(line: 86, column: 10, scope: !4476)
!4525 = !DILocation(line: 86, column: 13, scope: !4476)
!4526 = !DILocation(line: 86, column: 12, scope: !4476)
!4527 = !DILocation(line: 86, column: 20, scope: !4476)
!4528 = !DILocation(line: 86, column: 23, scope: !4476)
!4529 = !DILocation(line: 86, column: 22, scope: !4476)
!4530 = !DILocation(line: 86, column: 18, scope: !4476)
!4531 = !DILocation(line: 86, column: 8, scope: !4476)
!4532 = !DILocation(line: 88, column: 13, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4476, file: !1, line: 88, column: 8)
!4534 = !DILocation(line: 88, column: 8, scope: !4533)
!4535 = !DILocation(line: 88, column: 17, scope: !4533)
!4536 = !DILocation(line: 88, column: 29, scope: !4533)
!4537 = !DILocation(line: 88, column: 37, scope: !4538)
!4538 = !DILexicalBlockFile(scope: !4533, file: !1, discriminator: 1)
!4539 = !DILocation(line: 88, column: 32, scope: !4538)
!4540 = !DILocation(line: 88, column: 41, scope: !4538)
!4541 = !DILocation(line: 88, column: 8, scope: !4538)
!4542 = !DILocation(line: 89, column: 10, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4533, file: !1, line: 88, column: 54)
!4544 = !DILocation(line: 90, column: 10, scope: !4543)
!4545 = !DILocation(line: 91, column: 12, scope: !4543)
!4546 = !DILocation(line: 92, column: 12, scope: !4543)
!4547 = !DILocation(line: 93, column: 12, scope: !4543)
!4548 = !DILocation(line: 94, column: 12, scope: !4543)
!4549 = !DILocation(line: 95, column: 5, scope: !4543)
!4550 = !DILocation(line: 97, column: 14, scope: !4476)
!4551 = !DILocation(line: 97, column: 12, scope: !4476)
!4552 = !DILocation(line: 98, column: 10, scope: !4476)
!4553 = !DILocation(line: 98, column: 13, scope: !4476)
!4554 = !DILocation(line: 98, column: 12, scope: !4476)
!4555 = !DILocation(line: 98, column: 8, scope: !4476)
!4556 = !DILocation(line: 99, column: 11, scope: !4476)
!4557 = !DILocation(line: 99, column: 18, scope: !4476)
!4558 = !DILocation(line: 99, column: 17, scope: !4476)
!4559 = !DILocation(line: 99, column: 9, scope: !4476)
!4560 = !DILocation(line: 101, column: 13, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4476, file: !1, line: 101, column: 8)
!4562 = !DILocation(line: 101, column: 17, scope: !4561)
!4563 = !DILocation(line: 101, column: 8, scope: !4561)
!4564 = !DILocation(line: 101, column: 24, scope: !4561)
!4565 = !DILocation(line: 101, column: 8, scope: !4476)
!4566 = !DILocation(line: 101, column: 47, scope: !4567)
!4567 = !DILexicalBlockFile(scope: !4561, file: !1, discriminator: 1)
!4568 = !DILocation(line: 75, column: 3, scope: !4569)
!4569 = !DILexicalBlockFile(scope: !4394, file: !1, discriminator: 2)
!4570 = distinct !{!4570, !4471}
!4571 = !DILocation(line: 104, column: 17, scope: !4394)
!4572 = !DILocation(line: 104, column: 3, scope: !4394)
!4573 = !DILocation(line: 104, column: 11, scope: !4394)
!4574 = !DILocation(line: 104, column: 15, scope: !4394)
!4575 = !DILocation(line: 105, column: 47, scope: !4394)
!4576 = !DILocation(line: 105, column: 42, scope: !4394)
!4577 = !DILocation(line: 105, column: 50, scope: !4394)
!4578 = !DILocation(line: 105, column: 39, scope: !4394)
!4579 = !DILocation(line: 105, column: 64, scope: !4394)
!4580 = !DILocation(line: 105, column: 59, scope: !4422)
!4581 = !DILocation(line: 105, column: 57, scope: !4394)
!4582 = !DILocation(line: 105, column: 3, scope: !4394)
!4583 = !DILocation(line: 105, column: 11, scope: !4394)
!4584 = !DILocation(line: 105, column: 15, scope: !4394)
!4585 = !DILocation(line: 107, column: 6, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4394, file: !1, line: 107, column: 6)
!4587 = !DILocation(line: 107, column: 8, scope: !4586)
!4588 = !DILocation(line: 107, column: 6, scope: !4394)
!4589 = !DILocation(line: 108, column: 5, scope: !4586)
!4590 = distinct !{!4590, !4589}
!4591 = !DILocation(line: 108, column: 5, scope: !4592)
!4592 = !DILexicalBlockFile(scope: !4593, file: !1, discriminator: 1)
!4593 = distinct !DILexicalBlock(scope: !4586, file: !1, line: 108, column: 5)
!4594 = !DILocation(line: 108, column: 5, scope: !4595)
!4595 = !DILexicalBlockFile(scope: !4593, file: !1, discriminator: 2)
!4596 = !DILocation(line: 110, column: 5, scope: !4586)
!4597 = !DILocation(line: 111, column: 1, scope: !4394)
!4598 = distinct !DISubprogram(name: "conicalP_negmu_xgt1_CF1", scope: !1, file: !1, line: 121, type: !4395, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!4599 = !DILocalVariable(name: "mu", arg: 1, scope: !4598, file: !1, line: 121, type: !310)
!4600 = !DILocation(line: 121, column: 38, scope: !4598)
!4601 = !DILocalVariable(name: "ell", arg: 2, scope: !4598, file: !1, line: 121, type: !1138)
!4602 = !DILocation(line: 121, column: 52, scope: !4598)
!4603 = !DILocalVariable(name: "tau", arg: 3, scope: !4598, file: !1, line: 121, type: !310)
!4604 = !DILocation(line: 121, column: 70, scope: !4598)
!4605 = !DILocalVariable(name: "x", arg: 4, scope: !4598, file: !1, line: 122, type: !310)
!4606 = !DILocation(line: 122, column: 38, scope: !4598)
!4607 = !DILocalVariable(name: "result", arg: 5, scope: !4598, file: !1, line: 122, type: !50)
!4608 = !DILocation(line: 122, column: 57, scope: !4598)
!4609 = !DILocalVariable(name: "maxk", scope: !4598, file: !1, line: 124, type: !1138)
!4610 = !DILocation(line: 124, column: 13, scope: !4598)
!4611 = !DILocalVariable(name: "gamma", scope: !4598, file: !1, line: 125, type: !310)
!4612 = !DILocation(line: 125, column: 16, scope: !4598)
!4613 = !DILocation(line: 125, column: 33, scope: !4598)
!4614 = !DILocation(line: 125, column: 35, scope: !4598)
!4615 = !DILocation(line: 125, column: 34, scope: !4598)
!4616 = !DILocation(line: 125, column: 31, scope: !4598)
!4617 = !DILocation(line: 125, column: 27, scope: !4598)
!4618 = !DILocalVariable(name: "pre", scope: !4598, file: !1, line: 126, type: !310)
!4619 = !DILocation(line: 126, column: 16, scope: !4598)
!4620 = !DILocation(line: 126, column: 27, scope: !4598)
!4621 = !DILocation(line: 126, column: 28, scope: !4598)
!4622 = !DILocation(line: 126, column: 22, scope: !4598)
!4623 = !DILocation(line: 126, column: 39, scope: !4598)
!4624 = !DILocation(line: 126, column: 40, scope: !4598)
!4625 = !DILocation(line: 126, column: 34, scope: !4626)
!4626 = !DILexicalBlockFile(scope: !4598, file: !1, discriminator: 1)
!4627 = !DILocation(line: 126, column: 33, scope: !4598)
!4628 = !DILocation(line: 126, column: 49, scope: !4598)
!4629 = !DILocation(line: 126, column: 57, scope: !4598)
!4630 = !DILocation(line: 126, column: 61, scope: !4598)
!4631 = !DILocation(line: 126, column: 60, scope: !4598)
!4632 = !DILocation(line: 126, column: 63, scope: !4598)
!4633 = !DILocation(line: 126, column: 55, scope: !4598)
!4634 = !DILocation(line: 126, column: 50, scope: !4598)
!4635 = !DILocation(line: 126, column: 46, scope: !4598)
!4636 = !DILocalVariable(name: "tk", scope: !4598, file: !1, line: 127, type: !49)
!4637 = !DILocation(line: 127, column: 10, scope: !4598)
!4638 = !DILocalVariable(name: "sum", scope: !4598, file: !1, line: 128, type: !49)
!4639 = !DILocation(line: 128, column: 10, scope: !4598)
!4640 = !DILocalVariable(name: "rhok", scope: !4598, file: !1, line: 129, type: !49)
!4641 = !DILocation(line: 129, column: 10, scope: !4598)
!4642 = !DILocalVariable(name: "k", scope: !4598, file: !1, line: 130, type: !48)
!4643 = !DILocation(line: 130, column: 7, scope: !4598)
!4644 = !DILocation(line: 132, column: 8, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4598, file: !1, line: 132, column: 3)
!4646 = !DILocation(line: 132, column: 7, scope: !4645)
!4647 = !DILocation(line: 132, column: 12, scope: !4648)
!4648 = !DILexicalBlockFile(scope: !4649, file: !1, discriminator: 1)
!4649 = distinct !DILexicalBlock(scope: !4645, file: !1, line: 132, column: 3)
!4650 = !DILocation(line: 132, column: 13, scope: !4648)
!4651 = !DILocation(line: 132, column: 3, scope: !4648)
!4652 = !DILocalVariable(name: "tlk", scope: !4653, file: !1, line: 133, type: !49)
!4653 = distinct !DILexicalBlock(scope: !4649, file: !1, line: 132, column: 25)
!4654 = !DILocation(line: 133, column: 12, scope: !4653)
!4655 = !DILocation(line: 133, column: 23, scope: !4653)
!4656 = !DILocation(line: 133, column: 29, scope: !4653)
!4657 = !DILocation(line: 133, column: 27, scope: !4653)
!4658 = !DILocation(line: 133, column: 34, scope: !4653)
!4659 = !DILocation(line: 133, column: 32, scope: !4653)
!4660 = !DILocation(line: 133, column: 21, scope: !4653)
!4661 = !DILocalVariable(name: "l1k", scope: !4653, file: !1, line: 134, type: !49)
!4662 = !DILocation(line: 134, column: 12, scope: !4653)
!4663 = !DILocation(line: 134, column: 19, scope: !4653)
!4664 = !DILocation(line: 134, column: 25, scope: !4653)
!4665 = !DILocation(line: 134, column: 23, scope: !4653)
!4666 = !DILocation(line: 134, column: 28, scope: !4653)
!4667 = !DILocation(line: 134, column: 34, scope: !4653)
!4668 = !DILocation(line: 134, column: 42, scope: !4653)
!4669 = !DILocation(line: 134, column: 40, scope: !4653)
!4670 = !DILocalVariable(name: "ak", scope: !4653, file: !1, line: 135, type: !49)
!4671 = !DILocation(line: 135, column: 12, scope: !4653)
!4672 = !DILocation(line: 135, column: 19, scope: !4653)
!4673 = !DILocation(line: 135, column: 23, scope: !4653)
!4674 = !DILocation(line: 135, column: 22, scope: !4653)
!4675 = !DILocation(line: 135, column: 29, scope: !4653)
!4676 = !DILocation(line: 135, column: 33, scope: !4653)
!4677 = !DILocation(line: 135, column: 32, scope: !4653)
!4678 = !DILocation(line: 135, column: 27, scope: !4653)
!4679 = !DILocation(line: 135, column: 17, scope: !4653)
!4680 = !DILocation(line: 135, column: 39, scope: !4653)
!4681 = !DILocation(line: 135, column: 44, scope: !4653)
!4682 = !DILocation(line: 135, column: 47, scope: !4653)
!4683 = !DILocation(line: 135, column: 42, scope: !4653)
!4684 = !DILocation(line: 135, column: 37, scope: !4653)
!4685 = !DILocation(line: 135, column: 56, scope: !4653)
!4686 = !DILocation(line: 135, column: 54, scope: !4653)
!4687 = !DILocation(line: 136, column: 13, scope: !4653)
!4688 = !DILocation(line: 136, column: 12, scope: !4653)
!4689 = !DILocation(line: 136, column: 23, scope: !4653)
!4690 = !DILocation(line: 136, column: 21, scope: !4653)
!4691 = !DILocation(line: 136, column: 15, scope: !4653)
!4692 = !DILocation(line: 136, column: 36, scope: !4653)
!4693 = !DILocation(line: 136, column: 46, scope: !4653)
!4694 = !DILocation(line: 136, column: 44, scope: !4653)
!4695 = !DILocation(line: 136, column: 38, scope: !4653)
!4696 = !DILocation(line: 136, column: 34, scope: !4653)
!4697 = !DILocation(line: 136, column: 28, scope: !4653)
!4698 = !DILocation(line: 136, column: 10, scope: !4653)
!4699 = !DILocation(line: 137, column: 12, scope: !4653)
!4700 = !DILocation(line: 137, column: 9, scope: !4653)
!4701 = !DILocation(line: 138, column: 12, scope: !4653)
!4702 = !DILocation(line: 138, column: 9, scope: !4653)
!4703 = !DILocation(line: 139, column: 13, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4653, file: !1, line: 139, column: 8)
!4705 = !DILocation(line: 139, column: 16, scope: !4704)
!4706 = !DILocation(line: 139, column: 15, scope: !4704)
!4707 = !DILocation(line: 139, column: 8, scope: !4704)
!4708 = !DILocation(line: 139, column: 21, scope: !4704)
!4709 = !DILocation(line: 139, column: 8, scope: !4653)
!4710 = !DILocation(line: 139, column: 40, scope: !4711)
!4711 = !DILexicalBlockFile(scope: !4704, file: !1, discriminator: 1)
!4712 = !DILocation(line: 140, column: 3, scope: !4653)
!4713 = !DILocation(line: 132, column: 21, scope: !4714)
!4714 = !DILexicalBlockFile(scope: !4649, file: !1, discriminator: 2)
!4715 = !DILocation(line: 132, column: 3, scope: !4714)
!4716 = distinct !{!4716, !4717}
!4717 = !DILocation(line: 132, column: 3, scope: !4598)
!4718 = !DILocation(line: 142, column: 18, scope: !4598)
!4719 = !DILocation(line: 142, column: 24, scope: !4598)
!4720 = !DILocation(line: 142, column: 22, scope: !4598)
!4721 = !DILocation(line: 142, column: 3, scope: !4598)
!4722 = !DILocation(line: 142, column: 11, scope: !4598)
!4723 = !DILocation(line: 142, column: 16, scope: !4598)
!4724 = !DILocation(line: 143, column: 23, scope: !4598)
!4725 = !DILocation(line: 143, column: 29, scope: !4598)
!4726 = !DILocation(line: 143, column: 27, scope: !4598)
!4727 = !DILocation(line: 143, column: 18, scope: !4598)
!4728 = !DILocation(line: 143, column: 3, scope: !4598)
!4729 = !DILocation(line: 143, column: 11, scope: !4598)
!4730 = !DILocation(line: 143, column: 16, scope: !4598)
!4731 = !DILocation(line: 144, column: 48, scope: !4598)
!4732 = !DILocation(line: 144, column: 43, scope: !4598)
!4733 = !DILocation(line: 144, column: 51, scope: !4598)
!4734 = !DILocation(line: 144, column: 40, scope: !4598)
!4735 = !DILocation(line: 144, column: 65, scope: !4598)
!4736 = !DILocation(line: 144, column: 69, scope: !4598)
!4737 = !DILocation(line: 144, column: 68, scope: !4598)
!4738 = !DILocation(line: 144, column: 60, scope: !4626)
!4739 = !DILocation(line: 144, column: 58, scope: !4598)
!4740 = !DILocation(line: 144, column: 3, scope: !4598)
!4741 = !DILocation(line: 144, column: 11, scope: !4598)
!4742 = !DILocation(line: 144, column: 15, scope: !4598)
!4743 = !DILocation(line: 146, column: 6, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4598, file: !1, line: 146, column: 6)
!4745 = !DILocation(line: 146, column: 8, scope: !4744)
!4746 = !DILocation(line: 146, column: 6, scope: !4598)
!4747 = !DILocation(line: 147, column: 5, scope: !4744)
!4748 = distinct !{!4748, !4747}
!4749 = !DILocation(line: 147, column: 5, scope: !4750)
!4750 = !DILexicalBlockFile(scope: !4751, file: !1, discriminator: 1)
!4751 = distinct !DILexicalBlock(scope: !4744, file: !1, line: 147, column: 5)
!4752 = !DILocation(line: 147, column: 5, scope: !4753)
!4753 = !DILexicalBlockFile(scope: !4751, file: !1, discriminator: 2)
!4754 = !DILocation(line: 149, column: 5, scope: !4744)
!4755 = !DILocation(line: 150, column: 1, scope: !4598)
!4756 = distinct !DISubprogram(name: "gsl_sf_conicalP_cyl_reg_e", scope: !1, file: !1, line: 1225, type: !3873, isLocal: false, isDefinition: true, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!4757 = !DILocalVariable(name: "m", arg: 1, scope: !4756, file: !1, line: 1225, type: !1138)
!4758 = !DILocation(line: 1225, column: 41, scope: !4756)
!4759 = !DILocalVariable(name: "lambda", arg: 2, scope: !4756, file: !1, line: 1225, type: !310)
!4760 = !DILocation(line: 1225, column: 57, scope: !4756)
!4761 = !DILocalVariable(name: "x", arg: 3, scope: !4756, file: !1, line: 1226, type: !310)
!4762 = !DILocation(line: 1226, column: 47, scope: !4756)
!4763 = !DILocalVariable(name: "result", arg: 4, scope: !4756, file: !1, line: 1227, type: !50)
!4764 = !DILocation(line: 1227, column: 50, scope: !4756)
!4765 = !DILocation(line: 1232, column: 6, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4756, file: !1, line: 1232, column: 6)
!4767 = !DILocation(line: 1232, column: 8, scope: !4766)
!4768 = !DILocation(line: 1232, column: 16, scope: !4766)
!4769 = !DILocation(line: 1232, column: 19, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !4766, file: !1, discriminator: 1)
!4771 = !DILocation(line: 1232, column: 21, scope: !4770)
!4772 = !DILocation(line: 1232, column: 6, scope: !4770)
!4773 = !DILocation(line: 1233, column: 5, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4766, file: !1, line: 1232, column: 27)
!4775 = distinct !{!4775, !4773}
!4776 = !DILocation(line: 1233, column: 5, scope: !4777)
!4777 = !DILexicalBlockFile(scope: !4778, file: !1, discriminator: 1)
!4778 = distinct !DILexicalBlock(scope: !4774, file: !1, line: 1233, column: 5)
!4779 = distinct !{!4779, !4780}
!4780 = !DILocation(line: 1233, column: 5, scope: !4778)
!4781 = !DILocation(line: 1233, column: 5, scope: !4782)
!4782 = !DILexicalBlockFile(scope: !4783, file: !1, discriminator: 2)
!4783 = distinct !DILexicalBlock(scope: !4778, file: !1, line: 1233, column: 5)
!4784 = !DILocation(line: 1233, column: 5, scope: !4785)
!4785 = !DILexicalBlockFile(scope: !4778, file: !1, discriminator: 3)
!4786 = !DILocation(line: 1234, column: 3, scope: !4774)
!4787 = !DILocation(line: 1235, column: 11, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4766, file: !1, line: 1235, column: 11)
!4789 = !DILocation(line: 1235, column: 13, scope: !4788)
!4790 = !DILocation(line: 1235, column: 11, scope: !4766)
!4791 = !DILocation(line: 1236, column: 32, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4788, file: !1, line: 1235, column: 20)
!4793 = !DILocation(line: 1236, column: 40, scope: !4792)
!4794 = !DILocation(line: 1236, column: 43, scope: !4792)
!4795 = !DILocation(line: 1236, column: 12, scope: !4792)
!4796 = !DILocation(line: 1236, column: 5, scope: !4792)
!4797 = !DILocation(line: 1238, column: 11, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4788, file: !1, line: 1238, column: 11)
!4799 = !DILocation(line: 1238, column: 13, scope: !4798)
!4800 = !DILocation(line: 1238, column: 11, scope: !4788)
!4801 = !DILocation(line: 1239, column: 32, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4798, file: !1, line: 1238, column: 19)
!4803 = !DILocation(line: 1239, column: 40, scope: !4802)
!4804 = !DILocation(line: 1239, column: 43, scope: !4802)
!4805 = !DILocation(line: 1239, column: 12, scope: !4802)
!4806 = !DILocation(line: 1239, column: 5, scope: !4802)
!4807 = !DILocation(line: 1241, column: 11, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4798, file: !1, line: 1241, column: 11)
!4809 = !DILocation(line: 1241, column: 13, scope: !4808)
!4810 = !DILocation(line: 1241, column: 11, scope: !4798)
!4811 = !DILocation(line: 1242, column: 5, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4808, file: !1, line: 1241, column: 21)
!4813 = !DILocation(line: 1242, column: 13, scope: !4812)
!4814 = !DILocation(line: 1242, column: 17, scope: !4812)
!4815 = !DILocation(line: 1243, column: 5, scope: !4812)
!4816 = !DILocation(line: 1243, column: 13, scope: !4812)
!4817 = !DILocation(line: 1243, column: 17, scope: !4812)
!4818 = !DILocation(line: 1244, column: 5, scope: !4812)
!4819 = !DILocation(line: 1246, column: 11, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4808, file: !1, line: 1246, column: 11)
!4821 = !DILocation(line: 1246, column: 13, scope: !4820)
!4822 = !DILocation(line: 1246, column: 11, scope: !4808)
!4823 = !DILocalVariable(name: "c", scope: !4824, file: !1, line: 1247, type: !49)
!4824 = distinct !DILexicalBlock(scope: !4820, file: !1, line: 1246, column: 20)
!4825 = !DILocation(line: 1247, column: 12, scope: !4824)
!4826 = !DILocation(line: 1247, column: 29, scope: !4824)
!4827 = !DILocation(line: 1247, column: 31, scope: !4824)
!4828 = !DILocation(line: 1247, column: 30, scope: !4824)
!4829 = !DILocation(line: 1247, column: 28, scope: !4824)
!4830 = !DILocation(line: 1247, column: 20, scope: !4824)
!4831 = !DILocation(line: 1247, column: 19, scope: !4824)
!4832 = !DILocalVariable(name: "r_Pkm1", scope: !4824, file: !1, line: 1248, type: !51)
!4833 = !DILocation(line: 1248, column: 19, scope: !4824)
!4834 = !DILocalVariable(name: "r_Pk", scope: !4824, file: !1, line: 1249, type: !51)
!4835 = !DILocation(line: 1249, column: 19, scope: !4824)
!4836 = !DILocalVariable(name: "stat_0", scope: !4824, file: !1, line: 1250, type: !48)
!4837 = !DILocation(line: 1250, column: 9, scope: !4824)
!4838 = !DILocation(line: 1250, column: 38, scope: !4824)
!4839 = !DILocation(line: 1250, column: 46, scope: !4824)
!4840 = !DILocation(line: 1250, column: 18, scope: !4824)
!4841 = !DILocalVariable(name: "stat_1", scope: !4824, file: !1, line: 1251, type: !48)
!4842 = !DILocation(line: 1251, column: 9, scope: !4824)
!4843 = !DILocation(line: 1251, column: 38, scope: !4824)
!4844 = !DILocation(line: 1251, column: 46, scope: !4824)
!4845 = !DILocation(line: 1251, column: 18, scope: !4824)
!4846 = !DILocalVariable(name: "stat_P", scope: !4824, file: !1, line: 1252, type: !48)
!4847 = !DILocation(line: 1252, column: 9, scope: !4824)
!4848 = !DILocation(line: 1252, column: 18, scope: !4824)
!4849 = !DILocation(line: 1252, column: 18, scope: !4850)
!4850 = !DILexicalBlockFile(scope: !4824, file: !1, discriminator: 1)
!4851 = !DILocation(line: 1252, column: 18, scope: !4852)
!4852 = !DILexicalBlockFile(scope: !4824, file: !1, discriminator: 2)
!4853 = !DILocation(line: 1252, column: 18, scope: !4854)
!4854 = !DILexicalBlockFile(scope: !4824, file: !1, discriminator: 3)
!4855 = !DILocation(line: 1252, column: 18, scope: !4856)
!4856 = !DILexicalBlockFile(scope: !4824, file: !1, discriminator: 4)
!4857 = !DILocation(line: 1252, column: 18, scope: !4858)
!4858 = !DILexicalBlockFile(scope: !4824, file: !1, discriminator: 5)
!4859 = !DILocation(line: 1252, column: 18, scope: !4860)
!4860 = !DILexicalBlockFile(scope: !4824, file: !1, discriminator: 6)
!4861 = !DILocation(line: 1252, column: 9, scope: !4860)
!4862 = !DILocalVariable(name: "Pkm1", scope: !4824, file: !1, line: 1253, type: !49)
!4863 = !DILocation(line: 1253, column: 12, scope: !4824)
!4864 = !DILocation(line: 1253, column: 26, scope: !4824)
!4865 = !DILocalVariable(name: "Pk", scope: !4824, file: !1, line: 1254, type: !49)
!4866 = !DILocation(line: 1254, column: 12, scope: !4824)
!4867 = !DILocation(line: 1254, column: 24, scope: !4824)
!4868 = !DILocalVariable(name: "Pkp1", scope: !4824, file: !1, line: 1255, type: !49)
!4869 = !DILocation(line: 1255, column: 12, scope: !4824)
!4870 = !DILocalVariable(name: "k", scope: !4824, file: !1, line: 1256, type: !48)
!4871 = !DILocation(line: 1256, column: 9, scope: !4824)
!4872 = !DILocation(line: 1258, column: 10, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4824, file: !1, line: 1258, column: 5)
!4874 = !DILocation(line: 1258, column: 9, scope: !4873)
!4875 = !DILocation(line: 1258, column: 14, scope: !4876)
!4876 = !DILexicalBlockFile(scope: !4877, file: !1, discriminator: 1)
!4877 = distinct !DILexicalBlock(scope: !4873, file: !1, line: 1258, column: 5)
!4878 = !DILocation(line: 1258, column: 16, scope: !4876)
!4879 = !DILocation(line: 1258, column: 15, scope: !4876)
!4880 = !DILocation(line: 1258, column: 5, scope: !4876)
!4881 = !DILocalVariable(name: "d", scope: !4882, file: !1, line: 1259, type: !49)
!4882 = distinct !DILexicalBlock(scope: !4877, file: !1, line: 1258, column: 24)
!4883 = !DILocation(line: 1259, column: 14, scope: !4882)
!4884 = !DILocation(line: 1259, column: 19, scope: !4882)
!4885 = !DILocation(line: 1259, column: 20, scope: !4882)
!4886 = !DILocation(line: 1259, column: 27, scope: !4882)
!4887 = !DILocation(line: 1259, column: 28, scope: !4882)
!4888 = !DILocation(line: 1259, column: 25, scope: !4882)
!4889 = !DILocation(line: 1259, column: 36, scope: !4882)
!4890 = !DILocation(line: 1259, column: 43, scope: !4882)
!4891 = !DILocation(line: 1259, column: 42, scope: !4882)
!4892 = !DILocation(line: 1259, column: 34, scope: !4882)
!4893 = !DILocation(line: 1260, column: 15, scope: !4882)
!4894 = !DILocation(line: 1260, column: 26, scope: !4882)
!4895 = !DILocation(line: 1260, column: 25, scope: !4882)
!4896 = !DILocation(line: 1260, column: 28, scope: !4882)
!4897 = !DILocation(line: 1260, column: 27, scope: !4882)
!4898 = !DILocation(line: 1260, column: 30, scope: !4882)
!4899 = !DILocation(line: 1260, column: 29, scope: !4882)
!4900 = !DILocation(line: 1260, column: 34, scope: !4882)
!4901 = !DILocation(line: 1260, column: 32, scope: !4882)
!4902 = !DILocation(line: 1260, column: 20, scope: !4882)
!4903 = !DILocation(line: 1260, column: 40, scope: !4882)
!4904 = !DILocation(line: 1260, column: 38, scope: !4882)
!4905 = !DILocation(line: 1260, column: 12, scope: !4882)
!4906 = !DILocation(line: 1261, column: 14, scope: !4882)
!4907 = !DILocation(line: 1261, column: 12, scope: !4882)
!4908 = !DILocation(line: 1262, column: 14, scope: !4882)
!4909 = !DILocation(line: 1262, column: 12, scope: !4882)
!4910 = !DILocation(line: 1263, column: 5, scope: !4882)
!4911 = !DILocation(line: 1258, column: 20, scope: !4912)
!4912 = !DILexicalBlockFile(scope: !4877, file: !1, discriminator: 2)
!4913 = !DILocation(line: 1258, column: 5, scope: !4912)
!4914 = distinct !{!4914, !4915}
!4915 = !DILocation(line: 1258, column: 5, scope: !4824)
!4916 = !DILocation(line: 1265, column: 20, scope: !4824)
!4917 = !DILocation(line: 1265, column: 5, scope: !4824)
!4918 = !DILocation(line: 1265, column: 13, scope: !4824)
!4919 = !DILocation(line: 1265, column: 18, scope: !4824)
!4920 = !DILocation(line: 1266, column: 21, scope: !4824)
!4921 = !DILocation(line: 1266, column: 23, scope: !4824)
!4922 = !DILocation(line: 1266, column: 30, scope: !4824)
!4923 = !DILocation(line: 1266, column: 55, scope: !4824)
!4924 = !DILocation(line: 1266, column: 50, scope: !4824)
!4925 = !DILocation(line: 1266, column: 48, scope: !4824)
!4926 = !DILocation(line: 1266, column: 5, scope: !4824)
!4927 = !DILocation(line: 1266, column: 13, scope: !4824)
!4928 = !DILocation(line: 1266, column: 18, scope: !4824)
!4929 = !DILocation(line: 1267, column: 49, scope: !4824)
!4930 = !DILocation(line: 1267, column: 57, scope: !4824)
!4931 = !DILocation(line: 1267, column: 44, scope: !4824)
!4932 = !DILocation(line: 1267, column: 42, scope: !4824)
!4933 = !DILocation(line: 1267, column: 5, scope: !4824)
!4934 = !DILocation(line: 1267, column: 13, scope: !4824)
!4935 = !DILocation(line: 1267, column: 17, scope: !4824)
!4936 = !DILocation(line: 1269, column: 12, scope: !4824)
!4937 = !DILocation(line: 1269, column: 5, scope: !4824)
!4938 = !DILocation(line: 1271, column: 11, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4820, file: !1, line: 1271, column: 11)
!4940 = !DILocation(line: 1271, column: 13, scope: !4939)
!4941 = !DILocation(line: 1271, column: 11, scope: !4820)
!4942 = !DILocalVariable(name: "xi", scope: !4943, file: !1, line: 1272, type: !310)
!4943 = distinct !DILexicalBlock(scope: !4939, file: !1, line: 1271, column: 20)
!4944 = !DILocation(line: 1272, column: 18, scope: !4943)
!4945 = !DILocation(line: 1272, column: 23, scope: !4943)
!4946 = !DILocation(line: 1272, column: 35, scope: !4943)
!4947 = !DILocation(line: 1272, column: 34, scope: !4943)
!4948 = !DILocation(line: 1272, column: 26, scope: !4943)
!4949 = !DILocation(line: 1272, column: 47, scope: !4943)
!4950 = !DILocation(line: 1272, column: 46, scope: !4943)
!4951 = !DILocation(line: 1272, column: 38, scope: !4952)
!4952 = !DILexicalBlockFile(scope: !4943, file: !1, discriminator: 1)
!4953 = !DILocation(line: 1272, column: 37, scope: !4943)
!4954 = !DILocation(line: 1272, column: 24, scope: !4943)
!4955 = !DILocalVariable(name: "rat", scope: !4943, file: !1, line: 1273, type: !51)
!4956 = !DILocation(line: 1273, column: 19, scope: !4943)
!4957 = !DILocalVariable(name: "P0", scope: !4943, file: !1, line: 1274, type: !51)
!4958 = !DILocation(line: 1274, column: 19, scope: !4943)
!4959 = !DILocalVariable(name: "stat_CF1", scope: !4943, file: !1, line: 1275, type: !48)
!4960 = !DILocation(line: 1275, column: 9, scope: !4943)
!4961 = !DILocation(line: 1275, column: 49, scope: !4943)
!4962 = !DILocation(line: 1275, column: 52, scope: !4943)
!4963 = !DILocation(line: 1275, column: 60, scope: !4943)
!4964 = !DILocation(line: 1275, column: 20, scope: !4943)
!4965 = !DILocalVariable(name: "stat_P0", scope: !4943, file: !1, line: 1276, type: !48)
!4966 = !DILocation(line: 1276, column: 9, scope: !4943)
!4967 = !DILocation(line: 1276, column: 40, scope: !4943)
!4968 = !DILocation(line: 1276, column: 48, scope: !4943)
!4969 = !DILocation(line: 1276, column: 20, scope: !4943)
!4970 = !DILocalVariable(name: "Pkp1", scope: !4943, file: !1, line: 1277, type: !49)
!4971 = !DILocation(line: 1277, column: 12, scope: !4943)
!4972 = !DILocation(line: 1277, column: 23, scope: !4943)
!4973 = !DILocation(line: 1277, column: 27, scope: !4943)
!4974 = !DILocalVariable(name: "Pk", scope: !4943, file: !1, line: 1278, type: !49)
!4975 = !DILocation(line: 1278, column: 12, scope: !4943)
!4976 = !DILocalVariable(name: "Pkm1", scope: !4943, file: !1, line: 1279, type: !49)
!4977 = !DILocation(line: 1279, column: 12, scope: !4943)
!4978 = !DILocalVariable(name: "k", scope: !4943, file: !1, line: 1280, type: !48)
!4979 = !DILocation(line: 1280, column: 9, scope: !4943)
!4980 = !DILocation(line: 1282, column: 11, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4943, file: !1, line: 1282, column: 5)
!4982 = !DILocation(line: 1282, column: 10, scope: !4981)
!4983 = !DILocation(line: 1282, column: 9, scope: !4981)
!4984 = !DILocation(line: 1282, column: 14, scope: !4985)
!4985 = !DILexicalBlockFile(scope: !4986, file: !1, discriminator: 1)
!4986 = distinct !DILexicalBlock(scope: !4981, file: !1, line: 1282, column: 5)
!4987 = !DILocation(line: 1282, column: 15, scope: !4985)
!4988 = !DILocation(line: 1282, column: 5, scope: !4985)
!4989 = !DILocalVariable(name: "d", scope: !4990, file: !1, line: 1283, type: !49)
!4990 = distinct !DILexicalBlock(scope: !4986, file: !1, line: 1282, column: 24)
!4991 = !DILocation(line: 1283, column: 14, scope: !4990)
!4992 = !DILocation(line: 1283, column: 19, scope: !4990)
!4993 = !DILocation(line: 1283, column: 20, scope: !4990)
!4994 = !DILocation(line: 1283, column: 27, scope: !4990)
!4995 = !DILocation(line: 1283, column: 28, scope: !4990)
!4996 = !DILocation(line: 1283, column: 25, scope: !4990)
!4997 = !DILocation(line: 1283, column: 36, scope: !4990)
!4998 = !DILocation(line: 1283, column: 43, scope: !4990)
!4999 = !DILocation(line: 1283, column: 42, scope: !4990)
!5000 = !DILocation(line: 1283, column: 34, scope: !4990)
!5001 = !DILocation(line: 1284, column: 18, scope: !4990)
!5002 = !DILocation(line: 1284, column: 17, scope: !4990)
!5003 = !DILocation(line: 1284, column: 20, scope: !4990)
!5004 = !DILocation(line: 1284, column: 19, scope: !4990)
!5005 = !DILocation(line: 1284, column: 25, scope: !4990)
!5006 = !DILocation(line: 1284, column: 23, scope: !4990)
!5007 = !DILocation(line: 1284, column: 30, scope: !4990)
!5008 = !DILocation(line: 1284, column: 34, scope: !4990)
!5009 = !DILocation(line: 1284, column: 32, scope: !4990)
!5010 = !DILocation(line: 1284, column: 28, scope: !4990)
!5011 = !DILocation(line: 1284, column: 12, scope: !4990)
!5012 = !DILocation(line: 1285, column: 14, scope: !4990)
!5013 = !DILocation(line: 1285, column: 12, scope: !4990)
!5014 = !DILocation(line: 1286, column: 14, scope: !4990)
!5015 = !DILocation(line: 1286, column: 12, scope: !4990)
!5016 = !DILocation(line: 1287, column: 5, scope: !4990)
!5017 = !DILocation(line: 1282, column: 20, scope: !5018)
!5018 = !DILexicalBlockFile(scope: !4986, file: !1, discriminator: 2)
!5019 = !DILocation(line: 1282, column: 5, scope: !5018)
!5020 = distinct !{!5020, !5021}
!5021 = !DILocation(line: 1282, column: 5, scope: !4943)
!5022 = !DILocation(line: 1289, column: 42, scope: !4943)
!5023 = !DILocation(line: 1289, column: 37, scope: !4943)
!5024 = !DILocation(line: 1289, column: 48, scope: !4943)
!5025 = !DILocation(line: 1289, column: 46, scope: !4943)
!5026 = !DILocation(line: 1289, column: 5, scope: !4943)
!5027 = !DILocation(line: 1289, column: 13, scope: !4943)
!5028 = !DILocation(line: 1289, column: 18, scope: !4943)
!5029 = !DILocation(line: 1290, column: 48, scope: !4943)
!5030 = !DILocation(line: 1290, column: 43, scope: !4943)
!5031 = !DILocation(line: 1290, column: 59, scope: !4943)
!5032 = !DILocation(line: 1290, column: 54, scope: !4943)
!5033 = !DILocation(line: 1290, column: 52, scope: !4943)
!5034 = !DILocation(line: 1290, column: 5, scope: !4943)
!5035 = !DILocation(line: 1290, column: 13, scope: !4943)
!5036 = !DILocation(line: 1290, column: 18, scope: !4943)
!5037 = !DILocation(line: 1291, column: 35, scope: !4943)
!5038 = !DILocation(line: 1291, column: 43, scope: !4943)
!5039 = !DILocation(line: 1291, column: 38, scope: !4943)
!5040 = !DILocation(line: 1291, column: 26, scope: !4943)
!5041 = !DILocation(line: 1291, column: 24, scope: !4943)
!5042 = !DILocation(line: 1291, column: 51, scope: !4943)
!5043 = !DILocation(line: 1291, column: 53, scope: !4943)
!5044 = !DILocation(line: 1291, column: 48, scope: !4943)
!5045 = !DILocation(line: 1291, column: 67, scope: !4943)
!5046 = !DILocation(line: 1291, column: 75, scope: !4943)
!5047 = !DILocation(line: 1291, column: 62, scope: !4952)
!5048 = !DILocation(line: 1291, column: 60, scope: !4943)
!5049 = !DILocation(line: 1291, column: 5, scope: !4943)
!5050 = !DILocation(line: 1291, column: 13, scope: !4943)
!5051 = !DILocation(line: 1291, column: 17, scope: !4943)
!5052 = !DILocation(line: 1292, column: 49, scope: !4943)
!5053 = !DILocation(line: 1292, column: 57, scope: !4943)
!5054 = !DILocation(line: 1292, column: 44, scope: !4943)
!5055 = !DILocation(line: 1292, column: 42, scope: !4943)
!5056 = !DILocation(line: 1292, column: 5, scope: !4943)
!5057 = !DILocation(line: 1292, column: 13, scope: !4943)
!5058 = !DILocation(line: 1292, column: 17, scope: !4943)
!5059 = !DILocation(line: 1294, column: 12, scope: !4943)
!5060 = !DILocation(line: 1294, column: 12, scope: !4952)
!5061 = !DILocation(line: 1294, column: 12, scope: !5062)
!5062 = !DILexicalBlockFile(scope: !4943, file: !1, discriminator: 2)
!5063 = !DILocation(line: 1294, column: 12, scope: !5064)
!5064 = !DILexicalBlockFile(scope: !4943, file: !1, discriminator: 3)
!5065 = !DILocation(line: 1294, column: 12, scope: !5066)
!5066 = !DILexicalBlockFile(scope: !4943, file: !1, discriminator: 4)
!5067 = !DILocation(line: 1294, column: 12, scope: !5068)
!5068 = !DILexicalBlockFile(scope: !4943, file: !1, discriminator: 5)
!5069 = !DILocation(line: 1294, column: 12, scope: !5070)
!5070 = !DILexicalBlockFile(scope: !4943, file: !1, discriminator: 6)
!5071 = !DILocation(line: 1294, column: 5, scope: !5070)
!5072 = !DILocation(line: 1296, column: 11, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !4939, file: !1, line: 1296, column: 11)
!5074 = !DILocation(line: 1296, column: 13, scope: !5073)
!5075 = !DILocation(line: 1296, column: 11, scope: !4939)
!5076 = !DILocation(line: 1297, column: 5, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5073, file: !1, line: 1296, column: 21)
!5078 = !DILocation(line: 1297, column: 13, scope: !5077)
!5079 = !DILocation(line: 1297, column: 17, scope: !5077)
!5080 = !DILocation(line: 1298, column: 5, scope: !5077)
!5081 = !DILocation(line: 1298, column: 13, scope: !5077)
!5082 = !DILocation(line: 1298, column: 17, scope: !5077)
!5083 = !DILocation(line: 1299, column: 5, scope: !5077)
!5084 = !DILocalVariable(name: "xi", scope: !5085, file: !1, line: 1304, type: !310)
!5085 = distinct !DILexicalBlock(scope: !5073, file: !1, line: 1301, column: 8)
!5086 = !DILocation(line: 1304, column: 18, scope: !5085)
!5087 = !DILocation(line: 1304, column: 23, scope: !5085)
!5088 = !DILocation(line: 1304, column: 31, scope: !5085)
!5089 = !DILocation(line: 1304, column: 32, scope: !5085)
!5090 = !DILocation(line: 1304, column: 39, scope: !5085)
!5091 = !DILocation(line: 1304, column: 40, scope: !5085)
!5092 = !DILocation(line: 1304, column: 37, scope: !5085)
!5093 = !DILocation(line: 1304, column: 25, scope: !5085)
!5094 = !DILocation(line: 1304, column: 24, scope: !5085)
!5095 = !DILocalVariable(name: "rat", scope: !5085, file: !1, line: 1305, type: !51)
!5096 = !DILocation(line: 1305, column: 19, scope: !5085)
!5097 = !DILocalVariable(name: "stat_CF1", scope: !5085, file: !1, line: 1306, type: !48)
!5098 = !DILocation(line: 1306, column: 9, scope: !5085)
!5099 = !DILocation(line: 1306, column: 49, scope: !5085)
!5100 = !DILocation(line: 1306, column: 52, scope: !5085)
!5101 = !DILocation(line: 1306, column: 60, scope: !5085)
!5102 = !DILocation(line: 1306, column: 20, scope: !5085)
!5103 = !DILocalVariable(name: "stat_P", scope: !5085, file: !1, line: 1307, type: !48)
!5104 = !DILocation(line: 1307, column: 9, scope: !5085)
!5105 = !DILocalVariable(name: "Pkp1", scope: !5085, file: !1, line: 1308, type: !49)
!5106 = !DILocation(line: 1308, column: 12, scope: !5085)
!5107 = !DILocation(line: 1308, column: 23, scope: !5085)
!5108 = !DILocation(line: 1308, column: 27, scope: !5085)
!5109 = !DILocalVariable(name: "Pk", scope: !5085, file: !1, line: 1309, type: !49)
!5110 = !DILocation(line: 1309, column: 12, scope: !5085)
!5111 = !DILocalVariable(name: "Pkm1", scope: !5085, file: !1, line: 1310, type: !49)
!5112 = !DILocation(line: 1310, column: 12, scope: !5085)
!5113 = !DILocalVariable(name: "k", scope: !5085, file: !1, line: 1311, type: !48)
!5114 = !DILocation(line: 1311, column: 9, scope: !5085)
!5115 = !DILocation(line: 1313, column: 11, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5085, file: !1, line: 1313, column: 5)
!5117 = !DILocation(line: 1313, column: 10, scope: !5116)
!5118 = !DILocation(line: 1313, column: 9, scope: !5116)
!5119 = !DILocation(line: 1313, column: 14, scope: !5120)
!5120 = !DILexicalBlockFile(scope: !5121, file: !1, discriminator: 1)
!5121 = distinct !DILexicalBlock(scope: !5116, file: !1, line: 1313, column: 5)
!5122 = !DILocation(line: 1313, column: 15, scope: !5120)
!5123 = !DILocation(line: 1313, column: 5, scope: !5120)
!5124 = !DILocalVariable(name: "d", scope: !5125, file: !1, line: 1314, type: !49)
!5125 = distinct !DILexicalBlock(scope: !5121, file: !1, line: 1313, column: 25)
!5126 = !DILocation(line: 1314, column: 14, scope: !5125)
!5127 = !DILocation(line: 1314, column: 19, scope: !5125)
!5128 = !DILocation(line: 1314, column: 20, scope: !5125)
!5129 = !DILocation(line: 1314, column: 27, scope: !5125)
!5130 = !DILocation(line: 1314, column: 28, scope: !5125)
!5131 = !DILocation(line: 1314, column: 25, scope: !5125)
!5132 = !DILocation(line: 1314, column: 36, scope: !5125)
!5133 = !DILocation(line: 1314, column: 43, scope: !5125)
!5134 = !DILocation(line: 1314, column: 42, scope: !5125)
!5135 = !DILocation(line: 1314, column: 34, scope: !5125)
!5136 = !DILocation(line: 1315, column: 18, scope: !5125)
!5137 = !DILocation(line: 1315, column: 17, scope: !5125)
!5138 = !DILocation(line: 1315, column: 20, scope: !5125)
!5139 = !DILocation(line: 1315, column: 19, scope: !5125)
!5140 = !DILocation(line: 1315, column: 25, scope: !5125)
!5141 = !DILocation(line: 1315, column: 23, scope: !5125)
!5142 = !DILocation(line: 1315, column: 30, scope: !5125)
!5143 = !DILocation(line: 1315, column: 34, scope: !5125)
!5144 = !DILocation(line: 1315, column: 32, scope: !5125)
!5145 = !DILocation(line: 1315, column: 28, scope: !5125)
!5146 = !DILocation(line: 1315, column: 12, scope: !5125)
!5147 = !DILocation(line: 1316, column: 14, scope: !5125)
!5148 = !DILocation(line: 1316, column: 12, scope: !5125)
!5149 = !DILocation(line: 1317, column: 14, scope: !5125)
!5150 = !DILocation(line: 1317, column: 12, scope: !5125)
!5151 = !DILocation(line: 1318, column: 5, scope: !5125)
!5152 = !DILocation(line: 1313, column: 21, scope: !5153)
!5153 = !DILexicalBlockFile(scope: !5121, file: !1, discriminator: 2)
!5154 = !DILocation(line: 1313, column: 5, scope: !5153)
!5155 = distinct !{!5155, !5156}
!5156 = !DILocation(line: 1313, column: 5, scope: !5085)
!5157 = !DILocation(line: 1320, column: 13, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5085, file: !1, line: 1320, column: 8)
!5159 = !DILocation(line: 1320, column: 8, scope: !5158)
!5160 = !DILocation(line: 1320, column: 24, scope: !5158)
!5161 = !DILocation(line: 1320, column: 19, scope: !5162)
!5162 = !DILexicalBlockFile(scope: !5158, file: !1, discriminator: 1)
!5163 = !DILocation(line: 1320, column: 17, scope: !5158)
!5164 = !DILocation(line: 1320, column: 8, scope: !5085)
!5165 = !DILocalVariable(name: "P1", scope: !5166, file: !1, line: 1321, type: !51)
!5166 = distinct !DILexicalBlock(scope: !5158, file: !1, line: 1320, column: 30)
!5167 = !DILocation(line: 1321, column: 21, scope: !5166)
!5168 = !DILocation(line: 1322, column: 36, scope: !5166)
!5169 = !DILocation(line: 1322, column: 44, scope: !5166)
!5170 = !DILocation(line: 1322, column: 16, scope: !5166)
!5171 = !DILocation(line: 1322, column: 14, scope: !5166)
!5172 = !DILocation(line: 1323, column: 44, scope: !5166)
!5173 = !DILocation(line: 1323, column: 39, scope: !5166)
!5174 = !DILocation(line: 1323, column: 50, scope: !5166)
!5175 = !DILocation(line: 1323, column: 48, scope: !5166)
!5176 = !DILocation(line: 1323, column: 7, scope: !5166)
!5177 = !DILocation(line: 1323, column: 15, scope: !5166)
!5178 = !DILocation(line: 1323, column: 20, scope: !5166)
!5179 = !DILocation(line: 1324, column: 50, scope: !5166)
!5180 = !DILocation(line: 1324, column: 45, scope: !5166)
!5181 = !DILocation(line: 1324, column: 61, scope: !5166)
!5182 = !DILocation(line: 1324, column: 56, scope: !5166)
!5183 = !DILocation(line: 1324, column: 54, scope: !5166)
!5184 = !DILocation(line: 1324, column: 7, scope: !5166)
!5185 = !DILocation(line: 1324, column: 15, scope: !5166)
!5186 = !DILocation(line: 1324, column: 20, scope: !5166)
!5187 = !DILocation(line: 1325, column: 37, scope: !5166)
!5188 = !DILocation(line: 1325, column: 45, scope: !5166)
!5189 = !DILocation(line: 1325, column: 40, scope: !5166)
!5190 = !DILocation(line: 1325, column: 28, scope: !5166)
!5191 = !DILocation(line: 1325, column: 26, scope: !5166)
!5192 = !DILocation(line: 1325, column: 53, scope: !5166)
!5193 = !DILocation(line: 1325, column: 54, scope: !5166)
!5194 = !DILocation(line: 1325, column: 50, scope: !5166)
!5195 = !DILocation(line: 1325, column: 67, scope: !5166)
!5196 = !DILocation(line: 1325, column: 75, scope: !5166)
!5197 = !DILocation(line: 1325, column: 62, scope: !5198)
!5198 = !DILexicalBlockFile(scope: !5166, file: !1, discriminator: 1)
!5199 = !DILocation(line: 1325, column: 60, scope: !5166)
!5200 = !DILocation(line: 1325, column: 7, scope: !5166)
!5201 = !DILocation(line: 1325, column: 15, scope: !5166)
!5202 = !DILocation(line: 1325, column: 19, scope: !5166)
!5203 = !DILocation(line: 1326, column: 51, scope: !5166)
!5204 = !DILocation(line: 1326, column: 59, scope: !5166)
!5205 = !DILocation(line: 1326, column: 46, scope: !5166)
!5206 = !DILocation(line: 1326, column: 44, scope: !5166)
!5207 = !DILocation(line: 1326, column: 7, scope: !5166)
!5208 = !DILocation(line: 1326, column: 15, scope: !5166)
!5209 = !DILocation(line: 1326, column: 19, scope: !5166)
!5210 = !DILocation(line: 1327, column: 5, scope: !5166)
!5211 = !DILocalVariable(name: "P0", scope: !5212, file: !1, line: 1329, type: !51)
!5212 = distinct !DILexicalBlock(scope: !5158, file: !1, line: 1328, column: 10)
!5213 = !DILocation(line: 1329, column: 21, scope: !5212)
!5214 = !DILocation(line: 1330, column: 36, scope: !5212)
!5215 = !DILocation(line: 1330, column: 44, scope: !5212)
!5216 = !DILocation(line: 1330, column: 16, scope: !5212)
!5217 = !DILocation(line: 1330, column: 14, scope: !5212)
!5218 = !DILocation(line: 1331, column: 44, scope: !5212)
!5219 = !DILocation(line: 1331, column: 39, scope: !5212)
!5220 = !DILocation(line: 1331, column: 50, scope: !5212)
!5221 = !DILocation(line: 1331, column: 48, scope: !5212)
!5222 = !DILocation(line: 1331, column: 7, scope: !5212)
!5223 = !DILocation(line: 1331, column: 15, scope: !5212)
!5224 = !DILocation(line: 1331, column: 20, scope: !5212)
!5225 = !DILocation(line: 1332, column: 50, scope: !5212)
!5226 = !DILocation(line: 1332, column: 45, scope: !5212)
!5227 = !DILocation(line: 1332, column: 61, scope: !5212)
!5228 = !DILocation(line: 1332, column: 56, scope: !5212)
!5229 = !DILocation(line: 1332, column: 54, scope: !5212)
!5230 = !DILocation(line: 1332, column: 7, scope: !5212)
!5231 = !DILocation(line: 1332, column: 15, scope: !5212)
!5232 = !DILocation(line: 1332, column: 20, scope: !5212)
!5233 = !DILocation(line: 1333, column: 37, scope: !5212)
!5234 = !DILocation(line: 1333, column: 45, scope: !5212)
!5235 = !DILocation(line: 1333, column: 40, scope: !5212)
!5236 = !DILocation(line: 1333, column: 28, scope: !5212)
!5237 = !DILocation(line: 1333, column: 26, scope: !5212)
!5238 = !DILocation(line: 1333, column: 53, scope: !5212)
!5239 = !DILocation(line: 1333, column: 54, scope: !5212)
!5240 = !DILocation(line: 1333, column: 50, scope: !5212)
!5241 = !DILocation(line: 1333, column: 67, scope: !5212)
!5242 = !DILocation(line: 1333, column: 75, scope: !5212)
!5243 = !DILocation(line: 1333, column: 62, scope: !5244)
!5244 = !DILexicalBlockFile(scope: !5212, file: !1, discriminator: 1)
!5245 = !DILocation(line: 1333, column: 60, scope: !5212)
!5246 = !DILocation(line: 1333, column: 7, scope: !5212)
!5247 = !DILocation(line: 1333, column: 15, scope: !5212)
!5248 = !DILocation(line: 1333, column: 19, scope: !5212)
!5249 = !DILocation(line: 1334, column: 51, scope: !5212)
!5250 = !DILocation(line: 1334, column: 59, scope: !5212)
!5251 = !DILocation(line: 1334, column: 46, scope: !5212)
!5252 = !DILocation(line: 1334, column: 44, scope: !5212)
!5253 = !DILocation(line: 1334, column: 7, scope: !5212)
!5254 = !DILocation(line: 1334, column: 15, scope: !5212)
!5255 = !DILocation(line: 1334, column: 19, scope: !5212)
!5256 = !DILocation(line: 1337, column: 12, scope: !5085)
!5257 = !DILocation(line: 1337, column: 12, scope: !5258)
!5258 = !DILexicalBlockFile(scope: !5085, file: !1, discriminator: 1)
!5259 = !DILocation(line: 1337, column: 12, scope: !5260)
!5260 = !DILexicalBlockFile(scope: !5085, file: !1, discriminator: 2)
!5261 = !DILocation(line: 1337, column: 12, scope: !5262)
!5262 = !DILexicalBlockFile(scope: !5085, file: !1, discriminator: 3)
!5263 = !DILocation(line: 1337, column: 12, scope: !5264)
!5264 = !DILexicalBlockFile(scope: !5085, file: !1, discriminator: 4)
!5265 = !DILocation(line: 1337, column: 12, scope: !5266)
!5266 = !DILexicalBlockFile(scope: !5085, file: !1, discriminator: 5)
!5267 = !DILocation(line: 1337, column: 12, scope: !5268)
!5268 = !DILexicalBlockFile(scope: !5085, file: !1, discriminator: 6)
!5269 = !DILocation(line: 1337, column: 5, scope: !5268)
!5270 = !DILocation(line: 1339, column: 1, scope: !4756)
!5271 = distinct !DISubprogram(name: "gsl_sf_conicalP_0", scope: !1, file: !1, line: 1346, type: !5272, isLocal: false, isDefinition: true, scopeLine: 1347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!49, !310, !310}
!5274 = !DILocalVariable(name: "lambda", arg: 1, scope: !5271, file: !1, line: 1346, type: !310)
!5275 = !DILocation(line: 1346, column: 39, scope: !5271)
!5276 = !DILocalVariable(name: "x", arg: 2, scope: !5271, file: !1, line: 1346, type: !310)
!5277 = !DILocation(line: 1346, column: 60, scope: !5271)
!5278 = !DILocalVariable(name: "result", scope: !5271, file: !1, line: 1348, type: !51)
!5279 = !DILocation(line: 1348, column: 3, scope: !5271)
!5280 = !DILocalVariable(name: "status", scope: !5271, file: !1, line: 1348, type: !48)
!5281 = !DILocation(line: 1348, column: 3, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5271, file: !1, line: 1348, column: 3)
!5283 = !DILocation(line: 1348, column: 3, scope: !5284)
!5284 = !DILexicalBlockFile(scope: !5285, file: !1, discriminator: 1)
!5285 = distinct !DILexicalBlock(scope: !5282, file: !1, line: 1348, column: 3)
!5286 = distinct !{!5286, !5287}
!5287 = !DILocation(line: 1348, column: 3, scope: !5285)
!5288 = !DILocation(line: 1348, column: 3, scope: !5289)
!5289 = !DILexicalBlockFile(scope: !5290, file: !1, discriminator: 2)
!5290 = distinct !DILexicalBlock(scope: !5285, file: !1, line: 1348, column: 3)
!5291 = !DILocation(line: 1348, column: 3, scope: !5292)
!5292 = !DILexicalBlockFile(scope: !5285, file: !1, discriminator: 3)
!5293 = !DILocation(line: 1348, column: 3, scope: !5294)
!5294 = !DILexicalBlockFile(scope: !5271, file: !1, discriminator: 4)
!5295 = !DILocation(line: 1349, column: 1, scope: !5271)
!5296 = distinct !DISubprogram(name: "gsl_sf_conicalP_1", scope: !1, file: !1, line: 1351, type: !5272, isLocal: false, isDefinition: true, scopeLine: 1352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!5297 = !DILocalVariable(name: "lambda", arg: 1, scope: !5296, file: !1, line: 1351, type: !310)
!5298 = !DILocation(line: 1351, column: 39, scope: !5296)
!5299 = !DILocalVariable(name: "x", arg: 2, scope: !5296, file: !1, line: 1351, type: !310)
!5300 = !DILocation(line: 1351, column: 60, scope: !5296)
!5301 = !DILocalVariable(name: "result", scope: !5296, file: !1, line: 1353, type: !51)
!5302 = !DILocation(line: 1353, column: 3, scope: !5296)
!5303 = !DILocalVariable(name: "status", scope: !5296, file: !1, line: 1353, type: !48)
!5304 = !DILocation(line: 1353, column: 3, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5296, file: !1, line: 1353, column: 3)
!5306 = !DILocation(line: 1353, column: 3, scope: !5307)
!5307 = !DILexicalBlockFile(scope: !5308, file: !1, discriminator: 1)
!5308 = distinct !DILexicalBlock(scope: !5305, file: !1, line: 1353, column: 3)
!5309 = distinct !{!5309, !5310}
!5310 = !DILocation(line: 1353, column: 3, scope: !5308)
!5311 = !DILocation(line: 1353, column: 3, scope: !5312)
!5312 = !DILexicalBlockFile(scope: !5313, file: !1, discriminator: 2)
!5313 = distinct !DILexicalBlock(scope: !5308, file: !1, line: 1353, column: 3)
!5314 = !DILocation(line: 1353, column: 3, scope: !5315)
!5315 = !DILexicalBlockFile(scope: !5308, file: !1, discriminator: 3)
!5316 = !DILocation(line: 1353, column: 3, scope: !5317)
!5317 = !DILexicalBlockFile(scope: !5296, file: !1, discriminator: 4)
!5318 = !DILocation(line: 1354, column: 1, scope: !5296)
!5319 = distinct !DISubprogram(name: "gsl_sf_conicalP_half", scope: !1, file: !1, line: 1356, type: !5272, isLocal: false, isDefinition: true, scopeLine: 1357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!5320 = !DILocalVariable(name: "lambda", arg: 1, scope: !5319, file: !1, line: 1356, type: !310)
!5321 = !DILocation(line: 1356, column: 42, scope: !5319)
!5322 = !DILocalVariable(name: "x", arg: 2, scope: !5319, file: !1, line: 1356, type: !310)
!5323 = !DILocation(line: 1356, column: 63, scope: !5319)
!5324 = !DILocalVariable(name: "result", scope: !5319, file: !1, line: 1358, type: !51)
!5325 = !DILocation(line: 1358, column: 3, scope: !5319)
!5326 = !DILocalVariable(name: "status", scope: !5319, file: !1, line: 1358, type: !48)
!5327 = !DILocation(line: 1358, column: 3, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5319, file: !1, line: 1358, column: 3)
!5329 = !DILocation(line: 1358, column: 3, scope: !5330)
!5330 = !DILexicalBlockFile(scope: !5331, file: !1, discriminator: 1)
!5331 = distinct !DILexicalBlock(scope: !5328, file: !1, line: 1358, column: 3)
!5332 = distinct !{!5332, !5333}
!5333 = !DILocation(line: 1358, column: 3, scope: !5331)
!5334 = !DILocation(line: 1358, column: 3, scope: !5335)
!5335 = !DILexicalBlockFile(scope: !5336, file: !1, discriminator: 2)
!5336 = distinct !DILexicalBlock(scope: !5331, file: !1, line: 1358, column: 3)
!5337 = !DILocation(line: 1358, column: 3, scope: !5338)
!5338 = !DILexicalBlockFile(scope: !5331, file: !1, discriminator: 3)
!5339 = !DILocation(line: 1358, column: 3, scope: !5340)
!5340 = !DILexicalBlockFile(scope: !5319, file: !1, discriminator: 4)
!5341 = !DILocation(line: 1359, column: 1, scope: !5319)
!5342 = distinct !DISubprogram(name: "gsl_sf_conicalP_mhalf", scope: !1, file: !1, line: 1361, type: !5272, isLocal: false, isDefinition: true, scopeLine: 1362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!5343 = !DILocalVariable(name: "lambda", arg: 1, scope: !5342, file: !1, line: 1361, type: !310)
!5344 = !DILocation(line: 1361, column: 43, scope: !5342)
!5345 = !DILocalVariable(name: "x", arg: 2, scope: !5342, file: !1, line: 1361, type: !310)
!5346 = !DILocation(line: 1361, column: 64, scope: !5342)
!5347 = !DILocalVariable(name: "result", scope: !5342, file: !1, line: 1363, type: !51)
!5348 = !DILocation(line: 1363, column: 3, scope: !5342)
!5349 = !DILocalVariable(name: "status", scope: !5342, file: !1, line: 1363, type: !48)
!5350 = !DILocation(line: 1363, column: 3, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5342, file: !1, line: 1363, column: 3)
!5352 = !DILocation(line: 1363, column: 3, scope: !5353)
!5353 = !DILexicalBlockFile(scope: !5354, file: !1, discriminator: 1)
!5354 = distinct !DILexicalBlock(scope: !5351, file: !1, line: 1363, column: 3)
!5355 = distinct !{!5355, !5356}
!5356 = !DILocation(line: 1363, column: 3, scope: !5354)
!5357 = !DILocation(line: 1363, column: 3, scope: !5358)
!5358 = !DILexicalBlockFile(scope: !5359, file: !1, discriminator: 2)
!5359 = distinct !DILexicalBlock(scope: !5354, file: !1, line: 1363, column: 3)
!5360 = !DILocation(line: 1363, column: 3, scope: !5361)
!5361 = !DILexicalBlockFile(scope: !5354, file: !1, discriminator: 3)
!5362 = !DILocation(line: 1363, column: 3, scope: !5363)
!5363 = !DILexicalBlockFile(scope: !5342, file: !1, discriminator: 4)
!5364 = !DILocation(line: 1364, column: 1, scope: !5342)
!5365 = distinct !DISubprogram(name: "gsl_sf_conicalP_sph_reg", scope: !1, file: !1, line: 1366, type: !5366, isLocal: false, isDefinition: true, scopeLine: 1367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!5366 = !DISubroutineType(types: !5367)
!5367 = !{!49, !1138, !310, !310}
!5368 = !DILocalVariable(name: "l", arg: 1, scope: !5365, file: !1, line: 1366, type: !1138)
!5369 = !DILocation(line: 1366, column: 42, scope: !5365)
!5370 = !DILocalVariable(name: "lambda", arg: 2, scope: !5365, file: !1, line: 1366, type: !310)
!5371 = !DILocation(line: 1366, column: 58, scope: !5365)
!5372 = !DILocalVariable(name: "x", arg: 3, scope: !5365, file: !1, line: 1366, type: !310)
!5373 = !DILocation(line: 1366, column: 79, scope: !5365)
!5374 = !DILocalVariable(name: "result", scope: !5365, file: !1, line: 1368, type: !51)
!5375 = !DILocation(line: 1368, column: 3, scope: !5365)
!5376 = !DILocalVariable(name: "status", scope: !5365, file: !1, line: 1368, type: !48)
!5377 = !DILocation(line: 1368, column: 3, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5365, file: !1, line: 1368, column: 3)
!5379 = !DILocation(line: 1368, column: 3, scope: !5380)
!5380 = !DILexicalBlockFile(scope: !5381, file: !1, discriminator: 1)
!5381 = distinct !DILexicalBlock(scope: !5378, file: !1, line: 1368, column: 3)
!5382 = distinct !{!5382, !5383}
!5383 = !DILocation(line: 1368, column: 3, scope: !5381)
!5384 = !DILocation(line: 1368, column: 3, scope: !5385)
!5385 = !DILexicalBlockFile(scope: !5386, file: !1, discriminator: 2)
!5386 = distinct !DILexicalBlock(scope: !5381, file: !1, line: 1368, column: 3)
!5387 = !DILocation(line: 1368, column: 3, scope: !5388)
!5388 = !DILexicalBlockFile(scope: !5381, file: !1, discriminator: 3)
!5389 = !DILocation(line: 1368, column: 3, scope: !5390)
!5390 = !DILexicalBlockFile(scope: !5365, file: !1, discriminator: 4)
!5391 = !DILocation(line: 1369, column: 1, scope: !5365)
!5392 = distinct !DISubprogram(name: "gsl_sf_conicalP_cyl_reg", scope: !1, file: !1, line: 1371, type: !5366, isLocal: false, isDefinition: true, scopeLine: 1372, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!5393 = !DILocalVariable(name: "m", arg: 1, scope: !5392, file: !1, line: 1371, type: !1138)
!5394 = !DILocation(line: 1371, column: 42, scope: !5392)
!5395 = !DILocalVariable(name: "lambda", arg: 2, scope: !5392, file: !1, line: 1371, type: !310)
!5396 = !DILocation(line: 1371, column: 58, scope: !5392)
!5397 = !DILocalVariable(name: "x", arg: 3, scope: !5392, file: !1, line: 1371, type: !310)
!5398 = !DILocation(line: 1371, column: 79, scope: !5392)
!5399 = !DILocalVariable(name: "result", scope: !5392, file: !1, line: 1373, type: !51)
!5400 = !DILocation(line: 1373, column: 3, scope: !5392)
!5401 = !DILocalVariable(name: "status", scope: !5392, file: !1, line: 1373, type: !48)
!5402 = !DILocation(line: 1373, column: 3, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5392, file: !1, line: 1373, column: 3)
!5404 = !DILocation(line: 1373, column: 3, scope: !5405)
!5405 = !DILexicalBlockFile(scope: !5406, file: !1, discriminator: 1)
!5406 = distinct !DILexicalBlock(scope: !5403, file: !1, line: 1373, column: 3)
!5407 = distinct !{!5407, !5408}
!5408 = !DILocation(line: 1373, column: 3, scope: !5406)
!5409 = !DILocation(line: 1373, column: 3, scope: !5410)
!5410 = !DILexicalBlockFile(scope: !5411, file: !1, discriminator: 2)
!5411 = distinct !DILexicalBlock(scope: !5406, file: !1, line: 1373, column: 3)
!5412 = !DILocation(line: 1373, column: 3, scope: !5413)
!5413 = !DILexicalBlockFile(scope: !5406, file: !1, discriminator: 3)
!5414 = !DILocation(line: 1373, column: 3, scope: !5415)
!5415 = !DILexicalBlockFile(scope: !5392, file: !1, discriminator: 4)
!5416 = !DILocation(line: 1374, column: 1, scope: !5392)
