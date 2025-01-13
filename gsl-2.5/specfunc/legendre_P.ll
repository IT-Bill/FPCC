; ModuleID = 'legendre_P.c'
source_filename = "legendre_P.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"x is outside [-1,1]\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"./legendre_source.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"csphase has invalid value\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"x cannot equal 1 or -1 for derivative computation\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_array(i32, i64, double, double*) #0 !dbg !54 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !68, metadata !69), !dbg !70
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !71, metadata !69), !dbg !72
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !73, metadata !69), !dbg !74
  store double* %3, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !75, metadata !69), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %9, metadata !77, metadata !69), !dbg !78
  %10 = load i32, i32* %5, align 4, !dbg !79
  %11 = load i64, i64* %6, align 8, !dbg !80
  %12 = load double, double* %7, align 8, !dbg !81
  %13 = load double*, double** %8, align 8, !dbg !82
  %14 = call i32 @gsl_sf_legendre_array_e(i32 %10, i64 %11, double %12, double 1.000000e+00, double* %13), !dbg !83
  store i32 %14, i32* %9, align 4, !dbg !78
  %15 = load i32, i32* %9, align 4, !dbg !84
  ret i32 %15, !dbg !85
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_array_e(i32, i64, double, double, double*) #0 !dbg !86 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca double*, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !89, metadata !69), !dbg !90
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !91, metadata !69), !dbg !92
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !93, metadata !69), !dbg !94
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !95, metadata !69), !dbg !96
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !97, metadata !69), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %12, metadata !99, metadata !69), !dbg !100
  call void @llvm.dbg.declare(metadata i64* %13, metadata !101, metadata !69), !dbg !102
  %21 = load i64, i64* %8, align 8, !dbg !103
  %22 = call i64 @gsl_sf_legendre_nlm(i64 %21), !dbg !104
  store i64 %22, i64* %13, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata i64* %14, metadata !105, metadata !69), !dbg !106
  call void @llvm.dbg.declare(metadata double* %15, metadata !107, metadata !69), !dbg !108
  store double 0.000000e+00, double* %15, align 8, !dbg !108
  call void @llvm.dbg.declare(metadata double* %16, metadata !109, metadata !69), !dbg !110
  store double 0.000000e+00, double* %16, align 8, !dbg !110
  %23 = load i32, i32* %7, align 4, !dbg !111
  %24 = icmp eq i32 %23, 3, !dbg !113
  br i1 %24, label %25, label %31, !dbg !114

; <label>:25:                                     ; preds = %5
  %26 = load i64, i64* %8, align 8, !dbg !115
  %27 = load double, double* %9, align 8, !dbg !117
  %28 = load double, double* %10, align 8, !dbg !118
  %29 = load double*, double** %11, align 8, !dbg !119
  %30 = call i32 @legendre_array_none_e(i64 %26, double %27, double %28, double* %29), !dbg !120
  store i32 %30, i32* %12, align 4, !dbg !121
  br label %37, !dbg !122

; <label>:31:                                     ; preds = %5
  %32 = load i64, i64* %8, align 8, !dbg !123
  %33 = load double, double* %9, align 8, !dbg !125
  %34 = load double, double* %10, align 8, !dbg !126
  %35 = load double*, double** %11, align 8, !dbg !127
  %36 = call i32 @legendre_array_schmidt_e(i64 %32, double %33, double %34, double* %35), !dbg !128
  store i32 %36, i32* %12, align 4, !dbg !129
  br label %37

; <label>:37:                                     ; preds = %31, %25
  store i64 0, i64* %14, align 8, !dbg !130
  br label %38, !dbg !132

; <label>:38:                                     ; preds = %43, %37
  %39 = load i64, i64* %14, align 8, !dbg !133
  %40 = load i64, i64* %13, align 8, !dbg !136
  %41 = icmp ult i64 %39, %40, !dbg !137
  br i1 %41, label %42, label %46, !dbg !138

; <label>:42:                                     ; preds = %38
  br label %43, !dbg !139

; <label>:43:                                     ; preds = %42
  %44 = load i64, i64* %14, align 8, !dbg !141
  %45 = add i64 %44, 1, !dbg !141
  store i64 %45, i64* %14, align 8, !dbg !141
  br label %38, !dbg !143, !llvm.loop !144

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* %7, align 4, !dbg !146
  %48 = icmp eq i32 %47, 0, !dbg !148
  br i1 %48, label %52, label %49, !dbg !149

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %7, align 4, !dbg !150
  %51 = icmp eq i32 %50, 3, !dbg !152
  br i1 %51, label %52, label %54, !dbg !153

; <label>:52:                                     ; preds = %49, %46
  %53 = load i32, i32* %12, align 4, !dbg !154
  store i32 %53, i32* %6, align 4, !dbg !156
  br label %122, !dbg !156

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %7, align 4, !dbg !157
  %56 = icmp eq i32 %55, 1, !dbg !159
  br i1 %56, label %57, label %62, !dbg !160

; <label>:57:                                     ; preds = %54
  %58 = call double @sqrt(double 0x402921FB54442D18) #5, !dbg !161
  %59 = fdiv double 1.000000e+00, %58, !dbg !163
  store double %59, double* %15, align 8, !dbg !164
  %60 = call double @sqrt(double 0x403921FB54442D18) #5, !dbg !165
  %61 = fdiv double 1.000000e+00, %60, !dbg !166
  store double %61, double* %16, align 8, !dbg !167
  br label %71, !dbg !168

; <label>:62:                                     ; preds = %54
  %63 = load i32, i32* %7, align 4, !dbg !169
  %64 = icmp eq i32 %63, 2, !dbg !171
  br i1 %64, label %65, label %70, !dbg !172

; <label>:65:                                     ; preds = %62
  %66 = call double @sqrt(double 2.000000e+00) #5, !dbg !173
  %67 = fdiv double 1.000000e+00, %66, !dbg !175
  store double %67, double* %15, align 8, !dbg !176
  %68 = call double @sqrt(double 4.000000e+00) #5, !dbg !177
  %69 = fdiv double 1.000000e+00, %68, !dbg !178
  store double %69, double* %16, align 8, !dbg !179
  br label %70, !dbg !180

; <label>:70:                                     ; preds = %65, %62
  br label %71

; <label>:71:                                     ; preds = %70, %57
  br label %72

; <label>:72:                                     ; preds = %71
  call void @llvm.dbg.declare(metadata i64* %17, metadata !181, metadata !69), !dbg !183
  call void @llvm.dbg.declare(metadata i64* %18, metadata !184, metadata !69), !dbg !185
  call void @llvm.dbg.declare(metadata i64* %19, metadata !186, metadata !69), !dbg !187
  store i64 1, i64* %19, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata double** %20, metadata !188, metadata !69), !dbg !189
  %73 = load i64, i64* %13, align 8, !dbg !190
  %74 = load double*, double** %11, align 8, !dbg !191
  %75 = getelementptr inbounds double, double* %74, i64 %73, !dbg !191
  store double* %75, double** %20, align 8, !dbg !189
  store i64 0, i64* %17, align 8, !dbg !192
  br label %76, !dbg !194

; <label>:76:                                     ; preds = %117, %72
  %77 = load i64, i64* %17, align 8, !dbg !195
  %78 = load i64, i64* %8, align 8, !dbg !198
  %79 = icmp ule i64 %77, %78, !dbg !199
  br i1 %79, label %80, label %120, !dbg !200

; <label>:80:                                     ; preds = %76
  %81 = load i64, i64* %19, align 8, !dbg !201
  %82 = load double*, double** %20, align 8, !dbg !203
  %83 = getelementptr inbounds double, double* %82, i64 %81, !dbg !203
  %84 = load double, double* %83, align 8, !dbg !203
  %85 = load double, double* %15, align 8, !dbg !204
  %86 = fmul double %84, %85, !dbg !205
  %87 = load i64, i64* %17, align 8, !dbg !206
  %88 = call i64 @gsl_sf_legendre_array_index(i64 %87, i64 0), !dbg !207
  %89 = load double*, double** %11, align 8, !dbg !208
  %90 = getelementptr inbounds double, double* %89, i64 %88, !dbg !208
  %91 = load double, double* %90, align 8, !dbg !209
  %92 = fmul double %91, %86, !dbg !209
  store double %92, double* %90, align 8, !dbg !209
  store i64 1, i64* %18, align 8, !dbg !210
  br label %93, !dbg !212

; <label>:93:                                     ; preds = %111, %80
  %94 = load i64, i64* %18, align 8, !dbg !213
  %95 = load i64, i64* %17, align 8, !dbg !216
  %96 = icmp ule i64 %94, %95, !dbg !217
  br i1 %96, label %97, label %114, !dbg !218

; <label>:97:                                     ; preds = %93
  %98 = load i64, i64* %19, align 8, !dbg !219
  %99 = load double*, double** %20, align 8, !dbg !221
  %100 = getelementptr inbounds double, double* %99, i64 %98, !dbg !221
  %101 = load double, double* %100, align 8, !dbg !221
  %102 = load double, double* %16, align 8, !dbg !222
  %103 = fmul double %101, %102, !dbg !223
  %104 = load i64, i64* %17, align 8, !dbg !224
  %105 = load i64, i64* %18, align 8, !dbg !225
  %106 = call i64 @gsl_sf_legendre_array_index(i64 %104, i64 %105), !dbg !226
  %107 = load double*, double** %11, align 8, !dbg !227
  %108 = getelementptr inbounds double, double* %107, i64 %106, !dbg !227
  %109 = load double, double* %108, align 8, !dbg !228
  %110 = fmul double %109, %103, !dbg !228
  store double %110, double* %108, align 8, !dbg !228
  br label %111, !dbg !229

; <label>:111:                                    ; preds = %97
  %112 = load i64, i64* %18, align 8, !dbg !230
  %113 = add i64 %112, 1, !dbg !230
  store i64 %113, i64* %18, align 8, !dbg !230
  br label %93, !dbg !232, !llvm.loop !233

; <label>:114:                                    ; preds = %93
  %115 = load i64, i64* %19, align 8, !dbg !235
  %116 = add i64 %115, 2, !dbg !235
  store i64 %116, i64* %19, align 8, !dbg !235
  br label %117, !dbg !236

; <label>:117:                                    ; preds = %114
  %118 = load i64, i64* %17, align 8, !dbg !237
  %119 = add i64 %118, 1, !dbg !237
  store i64 %119, i64* %17, align 8, !dbg !237
  br label %76, !dbg !239, !llvm.loop !240

; <label>:120:                                    ; preds = %76
  %121 = load i32, i32* %12, align 4, !dbg !242
  store i32 %121, i32* %6, align 4, !dbg !243
  br label %122, !dbg !243

; <label>:122:                                    ; preds = %120, %52
  %123 = load i32, i32* %6, align 4, !dbg !244
  ret i32 %123, !dbg !244
}

; Function Attrs: nounwind uwtable
define i64 @gsl_sf_legendre_nlm(i64) #0 !dbg !245 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !248, metadata !69), !dbg !249
  %3 = load i64, i64* %2, align 8, !dbg !250
  %4 = add i64 %3, 1, !dbg !251
  %5 = load i64, i64* %2, align 8, !dbg !252
  %6 = add i64 %5, 2, !dbg !253
  %7 = mul i64 %4, %6, !dbg !254
  %8 = udiv i64 %7, 2, !dbg !255
  ret i64 %8, !dbg !256
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_array_none_e(i64, double, double, double*) #0 !dbg !257 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i64 %0, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !260, metadata !69), !dbg !261
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !262, metadata !69), !dbg !263
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !264, metadata !69), !dbg !265
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !266, metadata !69), !dbg !267
  %20 = load double, double* %7, align 8, !dbg !268
  %21 = fcmp ogt double %20, 1.000000e+00, !dbg !270
  br i1 %21, label %25, label %22, !dbg !271

; <label>:22:                                     ; preds = %4
  %23 = load double, double* %7, align 8, !dbg !272
  %24 = fcmp olt double %23, -1.000000e+00, !dbg !274
  br i1 %24, label %25, label %28, !dbg !275

; <label>:25:                                     ; preds = %22, %4
  br label %26, !dbg !276, !llvm.loop !278

; <label>:26:                                     ; preds = %25
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 430, i32 1), !dbg !279
  store i32 1, i32* %5, align 4, !dbg !279
  br label %193, !dbg !279
                                                  ; No predecessors!
  br label %193, !dbg !282

; <label>:28:                                     ; preds = %22
  %29 = load double, double* %8, align 8, !dbg !283
  %30 = fcmp une double %29, 1.000000e+00, !dbg !285
  br i1 %30, label %31, label %37, !dbg !286

; <label>:31:                                     ; preds = %28
  %32 = load double, double* %8, align 8, !dbg !287
  %33 = fcmp une double %32, -1.000000e+00, !dbg !289
  br i1 %33, label %34, label %37, !dbg !290

; <label>:34:                                     ; preds = %31
  br label %35, !dbg !291, !llvm.loop !293

; <label>:35:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 440, i32 1), !dbg !294
  store i32 1, i32* %5, align 4, !dbg !294
  br label %193, !dbg !294
                                                  ; No predecessors!
  br label %192, !dbg !297

; <label>:37:                                     ; preds = %31, %28
  call void @llvm.dbg.declare(metadata double* %10, metadata !298, metadata !69), !dbg !300
  %38 = load double, double* %7, align 8, !dbg !301
  %39 = fsub double 1.000000e+00, %38, !dbg !302
  %40 = load double, double* %7, align 8, !dbg !303
  %41 = fadd double 1.000000e+00, %40, !dbg !304
  %42 = fmul double %39, %41, !dbg !305
  %43 = call double @sqrt(double %42) #5, !dbg !306
  store double %43, double* %10, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata i64* %11, metadata !307, metadata !69), !dbg !308
  call void @llvm.dbg.declare(metadata i64* %12, metadata !309, metadata !69), !dbg !310
  call void @llvm.dbg.declare(metadata i64* %13, metadata !311, metadata !69), !dbg !312
  call void @llvm.dbg.declare(metadata i64* %14, metadata !313, metadata !69), !dbg !314
  call void @llvm.dbg.declare(metadata double* %15, metadata !315, metadata !69), !dbg !316
  call void @llvm.dbg.declare(metadata double* %16, metadata !317, metadata !69), !dbg !318
  call void @llvm.dbg.declare(metadata double* %17, metadata !319, metadata !69), !dbg !320
  call void @llvm.dbg.declare(metadata double* %18, metadata !321, metadata !69), !dbg !322
  call void @llvm.dbg.declare(metadata double* %19, metadata !323, metadata !69), !dbg !324
  store double 1.000000e+00, double* %18, align 8, !dbg !325
  %44 = load double, double* %7, align 8, !dbg !326
  store double %44, double* %17, align 8, !dbg !327
  %45 = load double, double* %18, align 8, !dbg !328
  %46 = load double*, double** %9, align 8, !dbg !329
  %47 = getelementptr inbounds double, double* %46, i64 0, !dbg !329
  store double %45, double* %47, align 8, !dbg !330
  %48 = load i64, i64* %6, align 8, !dbg !331
  %49 = icmp eq i64 %48, 0, !dbg !333
  br i1 %49, label %50, label %51, !dbg !334

; <label>:50:                                     ; preds = %37
  store i32 0, i32* %5, align 4, !dbg !335
  br label %193, !dbg !335

; <label>:51:                                     ; preds = %37
  %52 = load double, double* %17, align 8, !dbg !336
  %53 = load double*, double** %9, align 8, !dbg !337
  %54 = getelementptr inbounds double, double* %53, i64 1, !dbg !337
  store double %52, double* %54, align 8, !dbg !338
  store i64 1, i64* %13, align 8, !dbg !339
  store i64 2, i64* %11, align 8, !dbg !340
  br label %55, !dbg !342

; <label>:55:                                     ; preds = %86, %51
  %56 = load i64, i64* %11, align 8, !dbg !343
  %57 = load i64, i64* %6, align 8, !dbg !346
  %58 = icmp ule i64 %56, %57, !dbg !347
  br i1 %58, label %59, label %89, !dbg !348

; <label>:59:                                     ; preds = %55
  %60 = load i64, i64* %11, align 8, !dbg !349
  %61 = load i64, i64* %13, align 8, !dbg !351
  %62 = add i64 %61, %60, !dbg !351
  store i64 %62, i64* %13, align 8, !dbg !351
  %63 = load i64, i64* %11, align 8, !dbg !352
  %64 = mul i64 2, %63, !dbg !353
  %65 = sub i64 %64, 1, !dbg !354
  %66 = uitofp i64 %65 to double, !dbg !355
  %67 = load double, double* %7, align 8, !dbg !356
  %68 = fmul double %66, %67, !dbg !357
  %69 = load double, double* %17, align 8, !dbg !358
  %70 = fmul double %68, %69, !dbg !359
  %71 = load i64, i64* %11, align 8, !dbg !360
  %72 = sub i64 %71, 1, !dbg !361
  %73 = uitofp i64 %72 to double, !dbg !362
  %74 = load double, double* %18, align 8, !dbg !363
  %75 = fmul double %73, %74, !dbg !364
  %76 = fsub double %70, %75, !dbg !365
  %77 = load i64, i64* %11, align 8, !dbg !366
  %78 = uitofp i64 %77 to double, !dbg !367
  %79 = fdiv double %76, %78, !dbg !368
  store double %79, double* %15, align 8, !dbg !369
  %80 = load double, double* %15, align 8, !dbg !370
  %81 = load i64, i64* %13, align 8, !dbg !371
  %82 = load double*, double** %9, align 8, !dbg !372
  %83 = getelementptr inbounds double, double* %82, i64 %81, !dbg !372
  store double %80, double* %83, align 8, !dbg !373
  %84 = load double, double* %17, align 8, !dbg !374
  store double %84, double* %18, align 8, !dbg !375
  %85 = load double, double* %15, align 8, !dbg !376
  store double %85, double* %17, align 8, !dbg !377
  br label %86, !dbg !378

; <label>:86:                                     ; preds = %59
  %87 = load i64, i64* %11, align 8, !dbg !379
  %88 = add i64 %87, 1, !dbg !379
  store i64 %88, i64* %11, align 8, !dbg !379
  br label %55, !dbg !381, !llvm.loop !382

; <label>:89:                                     ; preds = %55
  store double 1.000000e+00, double* %16, align 8, !dbg !384
  store double -1.000000e+00, double* %19, align 8, !dbg !385
  store i64 0, i64* %14, align 8, !dbg !386
  store i64 1, i64* %12, align 8, !dbg !387
  br label %90, !dbg !389

; <label>:90:                                     ; preds = %171, %89
  %91 = load i64, i64* %12, align 8, !dbg !390
  %92 = load i64, i64* %6, align 8, !dbg !393
  %93 = sub i64 %92, 1, !dbg !394
  %94 = icmp ule i64 %91, %93, !dbg !395
  br i1 %94, label %95, label %174, !dbg !396

; <label>:95:                                     ; preds = %90
  %96 = load i64, i64* %12, align 8, !dbg !397
  %97 = add i64 %96, 1, !dbg !399
  %98 = load i64, i64* %14, align 8, !dbg !400
  %99 = add i64 %98, %97, !dbg !400
  store i64 %99, i64* %14, align 8, !dbg !400
  %100 = load double, double* %19, align 8, !dbg !401
  %101 = fadd double %100, 2.000000e+00, !dbg !401
  store double %101, double* %19, align 8, !dbg !401
  %102 = load double, double* %8, align 8, !dbg !402
  %103 = load double, double* %10, align 8, !dbg !403
  %104 = fmul double %102, %103, !dbg !404
  %105 = load double, double* %19, align 8, !dbg !405
  %106 = fmul double %104, %105, !dbg !406
  %107 = load double, double* %16, align 8, !dbg !407
  %108 = fmul double %107, %106, !dbg !407
  store double %108, double* %16, align 8, !dbg !407
  %109 = load double, double* %16, align 8, !dbg !408
  %110 = load i64, i64* %14, align 8, !dbg !409
  %111 = load double*, double** %9, align 8, !dbg !410
  %112 = getelementptr inbounds double, double* %111, i64 %110, !dbg !410
  store double %109, double* %112, align 8, !dbg !411
  %113 = load double, double* %16, align 8, !dbg !412
  store double %113, double* %18, align 8, !dbg !413
  %114 = load i64, i64* %14, align 8, !dbg !414
  %115 = load i64, i64* %12, align 8, !dbg !415
  %116 = add i64 %114, %115, !dbg !416
  %117 = add i64 %116, 1, !dbg !417
  store i64 %117, i64* %13, align 8, !dbg !418
  %118 = load double, double* %7, align 8, !dbg !419
  %119 = load double, double* %16, align 8, !dbg !420
  %120 = fmul double %118, %119, !dbg !421
  %121 = load i64, i64* %12, align 8, !dbg !422
  %122 = mul i64 2, %121, !dbg !423
  %123 = add i64 %122, 1, !dbg !424
  %124 = uitofp i64 %123 to double, !dbg !425
  %125 = fmul double %120, %124, !dbg !426
  store double %125, double* %17, align 8, !dbg !427
  %126 = load double, double* %17, align 8, !dbg !428
  %127 = load i64, i64* %13, align 8, !dbg !429
  %128 = load double*, double** %9, align 8, !dbg !430
  %129 = getelementptr inbounds double, double* %128, i64 %127, !dbg !430
  store double %126, double* %129, align 8, !dbg !431
  %130 = load i64, i64* %12, align 8, !dbg !432
  %131 = add i64 %130, 2, !dbg !434
  store i64 %131, i64* %11, align 8, !dbg !435
  br label %132, !dbg !436

; <label>:132:                                    ; preds = %167, %95
  %133 = load i64, i64* %11, align 8, !dbg !437
  %134 = load i64, i64* %6, align 8, !dbg !440
  %135 = icmp ule i64 %133, %134, !dbg !441
  br i1 %135, label %136, label %170, !dbg !442

; <label>:136:                                    ; preds = %132
  %137 = load i64, i64* %11, align 8, !dbg !443
  %138 = load i64, i64* %13, align 8, !dbg !445
  %139 = add i64 %138, %137, !dbg !445
  store i64 %139, i64* %13, align 8, !dbg !445
  %140 = load i64, i64* %11, align 8, !dbg !446
  %141 = mul i64 2, %140, !dbg !447
  %142 = sub i64 %141, 1, !dbg !448
  %143 = uitofp i64 %142 to double, !dbg !449
  %144 = load double, double* %7, align 8, !dbg !450
  %145 = fmul double %143, %144, !dbg !451
  %146 = load double, double* %17, align 8, !dbg !452
  %147 = fmul double %145, %146, !dbg !453
  %148 = load i64, i64* %11, align 8, !dbg !454
  %149 = load i64, i64* %12, align 8, !dbg !455
  %150 = add i64 %148, %149, !dbg !456
  %151 = sub i64 %150, 1, !dbg !457
  %152 = uitofp i64 %151 to double, !dbg !458
  %153 = load double, double* %18, align 8, !dbg !459
  %154 = fmul double %152, %153, !dbg !460
  %155 = fsub double %147, %154, !dbg !461
  %156 = load i64, i64* %11, align 8, !dbg !462
  %157 = load i64, i64* %12, align 8, !dbg !463
  %158 = sub i64 %156, %157, !dbg !464
  %159 = uitofp i64 %158 to double, !dbg !465
  %160 = fdiv double %155, %159, !dbg !466
  store double %160, double* %15, align 8, !dbg !467
  %161 = load double, double* %15, align 8, !dbg !468
  %162 = load i64, i64* %13, align 8, !dbg !469
  %163 = load double*, double** %9, align 8, !dbg !470
  %164 = getelementptr inbounds double, double* %163, i64 %162, !dbg !470
  store double %161, double* %164, align 8, !dbg !471
  %165 = load double, double* %17, align 8, !dbg !472
  store double %165, double* %18, align 8, !dbg !473
  %166 = load double, double* %15, align 8, !dbg !474
  store double %166, double* %17, align 8, !dbg !475
  br label %167, !dbg !476

; <label>:167:                                    ; preds = %136
  %168 = load i64, i64* %11, align 8, !dbg !477
  %169 = add i64 %168, 1, !dbg !477
  store i64 %169, i64* %11, align 8, !dbg !477
  br label %132, !dbg !479, !llvm.loop !480

; <label>:170:                                    ; preds = %132
  br label %171, !dbg !482

; <label>:171:                                    ; preds = %170
  %172 = load i64, i64* %12, align 8, !dbg !483
  %173 = add i64 %172, 1, !dbg !483
  store i64 %173, i64* %12, align 8, !dbg !483
  br label %90, !dbg !485, !llvm.loop !486

; <label>:174:                                    ; preds = %90
  %175 = load i64, i64* %12, align 8, !dbg !488
  %176 = add i64 %175, 1, !dbg !489
  %177 = load i64, i64* %14, align 8, !dbg !490
  %178 = add i64 %177, %176, !dbg !490
  store i64 %178, i64* %14, align 8, !dbg !490
  %179 = load double, double* %19, align 8, !dbg !491
  %180 = fadd double %179, 2.000000e+00, !dbg !491
  store double %180, double* %19, align 8, !dbg !491
  %181 = load double, double* %8, align 8, !dbg !492
  %182 = load double, double* %10, align 8, !dbg !493
  %183 = fmul double %181, %182, !dbg !494
  %184 = load double, double* %19, align 8, !dbg !495
  %185 = fmul double %183, %184, !dbg !496
  %186 = load double, double* %16, align 8, !dbg !497
  %187 = fmul double %186, %185, !dbg !497
  store double %187, double* %16, align 8, !dbg !497
  %188 = load double, double* %16, align 8, !dbg !498
  %189 = load i64, i64* %14, align 8, !dbg !499
  %190 = load double*, double** %9, align 8, !dbg !500
  %191 = getelementptr inbounds double, double* %190, i64 %189, !dbg !500
  store double %188, double* %191, align 8, !dbg !501
  store i32 0, i32* %5, align 4, !dbg !502
  br label %193, !dbg !502

; <label>:192:                                    ; preds = %36
  br label %193

; <label>:193:                                    ; preds = %26, %35, %50, %174, %192, %27
  %194 = load i32, i32* %5, align 4, !dbg !503
  ret i32 %194, !dbg !503
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_array_schmidt_e(i64, double, double, double*) #0 !dbg !504 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i64, align 8
  %22 = alloca double*, align 8
  %23 = alloca double, align 8
  store i64 %0, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !505, metadata !69), !dbg !506
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !507, metadata !69), !dbg !508
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !509, metadata !69), !dbg !510
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !511, metadata !69), !dbg !512
  %24 = load double, double* %7, align 8, !dbg !513
  %25 = fcmp ogt double %24, 1.000000e+00, !dbg !515
  br i1 %25, label %29, label %26, !dbg !516

; <label>:26:                                     ; preds = %4
  %27 = load double, double* %7, align 8, !dbg !517
  %28 = fcmp olt double %27, -1.000000e+00, !dbg !519
  br i1 %28, label %29, label %32, !dbg !520

; <label>:29:                                     ; preds = %26, %4
  br label %30, !dbg !521, !llvm.loop !523

; <label>:30:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 222, i32 1), !dbg !524
  store i32 1, i32* %5, align 4, !dbg !524
  br label %265, !dbg !524
                                                  ; No predecessors!
  br label %265, !dbg !527

; <label>:32:                                     ; preds = %26
  %33 = load double, double* %8, align 8, !dbg !528
  %34 = fcmp une double %33, 1.000000e+00, !dbg !530
  br i1 %34, label %35, label %41, !dbg !531

; <label>:35:                                     ; preds = %32
  %36 = load double, double* %8, align 8, !dbg !532
  %37 = fcmp une double %36, -1.000000e+00, !dbg !534
  br i1 %37, label %38, label %41, !dbg !535

; <label>:38:                                     ; preds = %35
  br label %39, !dbg !536, !llvm.loop !538

; <label>:39:                                     ; preds = %38
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 232, i32 1), !dbg !539
  store i32 1, i32* %5, align 4, !dbg !539
  br label %265, !dbg !539
                                                  ; No predecessors!
  br label %264, !dbg !542

; <label>:41:                                     ; preds = %35, %32
  call void @llvm.dbg.declare(metadata double* %10, metadata !543, metadata !69), !dbg !545
  store double 1.000000e-280, double* %10, align 8, !dbg !545
  call void @llvm.dbg.declare(metadata double* %11, metadata !546, metadata !69), !dbg !547
  %42 = load double, double* %7, align 8, !dbg !548
  %43 = fsub double 1.000000e+00, %42, !dbg !549
  %44 = load double, double* %7, align 8, !dbg !550
  %45 = fadd double 1.000000e+00, %44, !dbg !551
  %46 = fmul double %43, %45, !dbg !552
  %47 = call double @sqrt(double %46) #5, !dbg !553
  store double %47, double* %11, align 8, !dbg !547
  call void @llvm.dbg.declare(metadata i64* %12, metadata !554, metadata !69), !dbg !555
  call void @llvm.dbg.declare(metadata i64* %13, metadata !556, metadata !69), !dbg !557
  call void @llvm.dbg.declare(metadata i64* %14, metadata !558, metadata !69), !dbg !559
  call void @llvm.dbg.declare(metadata i64* %15, metadata !560, metadata !69), !dbg !561
  call void @llvm.dbg.declare(metadata double* %16, metadata !562, metadata !69), !dbg !563
  call void @llvm.dbg.declare(metadata double* %17, metadata !564, metadata !69), !dbg !565
  call void @llvm.dbg.declare(metadata double* %18, metadata !566, metadata !69), !dbg !567
  call void @llvm.dbg.declare(metadata double* %19, metadata !568, metadata !69), !dbg !569
  call void @llvm.dbg.declare(metadata double* %20, metadata !570, metadata !69), !dbg !571
  call void @llvm.dbg.declare(metadata i64* %21, metadata !572, metadata !69), !dbg !573
  %48 = load i64, i64* %6, align 8, !dbg !574
  %49 = call i64 @gsl_sf_legendre_nlm(i64 %48), !dbg !575
  store i64 %49, i64* %21, align 8, !dbg !573
  call void @llvm.dbg.declare(metadata double** %22, metadata !576, metadata !69), !dbg !577
  %50 = load i64, i64* %21, align 8, !dbg !578
  %51 = load double*, double** %9, align 8, !dbg !579
  %52 = getelementptr inbounds double, double* %51, i64 %50, !dbg !579
  store double* %52, double** %22, align 8, !dbg !577
  %53 = load i64, i64* %6, align 8, !dbg !580
  %54 = load double*, double** %22, align 8, !dbg !581
  call void @legendre_sqrts(i64 %53, double* %54), !dbg !582
  store double 1.000000e+00, double* %20, align 8, !dbg !583
  %55 = load double, double* %7, align 8, !dbg !584
  store double %55, double* %19, align 8, !dbg !585
  %56 = load double, double* %20, align 8, !dbg !586
  %57 = load double*, double** %9, align 8, !dbg !587
  %58 = getelementptr inbounds double, double* %57, i64 0, !dbg !587
  store double %56, double* %58, align 8, !dbg !588
  %59 = load i64, i64* %6, align 8, !dbg !589
  %60 = icmp eq i64 %59, 0, !dbg !591
  br i1 %60, label %61, label %62, !dbg !592

; <label>:61:                                     ; preds = %41
  store i32 0, i32* %5, align 4, !dbg !593
  br label %265, !dbg !593

; <label>:62:                                     ; preds = %41
  %63 = load double, double* %19, align 8, !dbg !594
  %64 = load double*, double** %9, align 8, !dbg !595
  %65 = getelementptr inbounds double, double* %64, i64 1, !dbg !595
  store double %63, double* %65, align 8, !dbg !596
  store i64 1, i64* %14, align 8, !dbg !597
  store i64 2, i64* %12, align 8, !dbg !598
  br label %66, !dbg !600

; <label>:66:                                     ; preds = %94, %62
  %67 = load i64, i64* %12, align 8, !dbg !601
  %68 = load i64, i64* %6, align 8, !dbg !604
  %69 = icmp ule i64 %67, %68, !dbg !605
  br i1 %69, label %70, label %97, !dbg !606

; <label>:70:                                     ; preds = %66
  call void @llvm.dbg.declare(metadata double* %23, metadata !607, metadata !69), !dbg !609
  %71 = load i64, i64* %12, align 8, !dbg !610
  %72 = uitofp i64 %71 to double, !dbg !611
  %73 = fdiv double 1.000000e+00, %72, !dbg !612
  store double %73, double* %23, align 8, !dbg !609
  %74 = load i64, i64* %12, align 8, !dbg !613
  %75 = load i64, i64* %14, align 8, !dbg !614
  %76 = add i64 %75, %74, !dbg !614
  store i64 %76, i64* %14, align 8, !dbg !614
  %77 = load double, double* %23, align 8, !dbg !615
  %78 = fsub double 2.000000e+00, %77, !dbg !616
  %79 = load double, double* %7, align 8, !dbg !617
  %80 = fmul double %78, %79, !dbg !618
  %81 = load double, double* %19, align 8, !dbg !619
  %82 = fmul double %80, %81, !dbg !620
  %83 = load double, double* %23, align 8, !dbg !621
  %84 = fsub double 1.000000e+00, %83, !dbg !622
  %85 = load double, double* %20, align 8, !dbg !623
  %86 = fmul double %84, %85, !dbg !624
  %87 = fsub double %82, %86, !dbg !625
  store double %87, double* %16, align 8, !dbg !626
  %88 = load double, double* %16, align 8, !dbg !627
  %89 = load i64, i64* %14, align 8, !dbg !628
  %90 = load double*, double** %9, align 8, !dbg !629
  %91 = getelementptr inbounds double, double* %90, i64 %89, !dbg !629
  store double %88, double* %91, align 8, !dbg !630
  %92 = load double, double* %19, align 8, !dbg !631
  store double %92, double* %20, align 8, !dbg !632
  %93 = load double, double* %16, align 8, !dbg !633
  store double %93, double* %19, align 8, !dbg !634
  br label %94, !dbg !635

; <label>:94:                                     ; preds = %70
  %95 = load i64, i64* %12, align 8, !dbg !636
  %96 = add i64 %95, 1, !dbg !636
  store i64 %96, i64* %12, align 8, !dbg !636
  br label %66, !dbg !638, !llvm.loop !639

; <label>:97:                                     ; preds = %66
  %98 = call double @sqrt(double 2.000000e+00) #5, !dbg !641
  %99 = fmul double %98, 1.000000e-280, !dbg !642
  store double %99, double* %17, align 8, !dbg !643
  store double 1.000000e+280, double* %18, align 8, !dbg !644
  store i64 0, i64* %15, align 8, !dbg !645
  store i64 1, i64* %13, align 8, !dbg !646
  br label %100, !dbg !648

; <label>:100:                                    ; preds = %231, %97
  %101 = load i64, i64* %13, align 8, !dbg !649
  %102 = load i64, i64* %6, align 8, !dbg !652
  %103 = icmp ult i64 %101, %102, !dbg !653
  br i1 %103, label %104, label %234, !dbg !654

; <label>:104:                                    ; preds = %100
  %105 = load double, double* %11, align 8, !dbg !655
  %106 = load double, double* %18, align 8, !dbg !657
  %107 = fmul double %106, %105, !dbg !657
  store double %107, double* %18, align 8, !dbg !657
  %108 = load i64, i64* %13, align 8, !dbg !658
  %109 = add i64 %108, 1, !dbg !659
  %110 = load i64, i64* %15, align 8, !dbg !660
  %111 = add i64 %110, %109, !dbg !660
  store i64 %111, i64* %15, align 8, !dbg !660
  %112 = load double, double* %8, align 8, !dbg !661
  %113 = load i64, i64* %13, align 8, !dbg !662
  %114 = mul i64 2, %113, !dbg !663
  %115 = sub i64 %114, 1, !dbg !664
  %116 = load double*, double** %22, align 8, !dbg !665
  %117 = getelementptr inbounds double, double* %116, i64 %115, !dbg !665
  %118 = load double, double* %117, align 8, !dbg !665
  %119 = fmul double %112, %118, !dbg !666
  %120 = load i64, i64* %13, align 8, !dbg !667
  %121 = mul i64 2, %120, !dbg !668
  %122 = load double*, double** %22, align 8, !dbg !669
  %123 = getelementptr inbounds double, double* %122, i64 %121, !dbg !669
  %124 = load double, double* %123, align 8, !dbg !669
  %125 = fdiv double %119, %124, !dbg !670
  %126 = load double, double* %17, align 8, !dbg !671
  %127 = fmul double %126, %125, !dbg !671
  store double %127, double* %17, align 8, !dbg !671
  %128 = load double, double* %17, align 8, !dbg !672
  %129 = load double, double* %18, align 8, !dbg !673
  %130 = fmul double %128, %129, !dbg !674
  %131 = load i64, i64* %15, align 8, !dbg !675
  %132 = load double*, double** %9, align 8, !dbg !676
  %133 = getelementptr inbounds double, double* %132, i64 %131, !dbg !676
  store double %130, double* %133, align 8, !dbg !677
  %134 = load double, double* %17, align 8, !dbg !678
  store double %134, double* %20, align 8, !dbg !679
  %135 = load i64, i64* %15, align 8, !dbg !680
  %136 = load i64, i64* %13, align 8, !dbg !681
  %137 = add i64 %135, %136, !dbg !682
  %138 = add i64 %137, 1, !dbg !683
  store i64 %138, i64* %14, align 8, !dbg !684
  %139 = load double, double* %7, align 8, !dbg !685
  %140 = load i64, i64* %13, align 8, !dbg !686
  %141 = mul i64 2, %140, !dbg !687
  %142 = add i64 %141, 1, !dbg !688
  %143 = load double*, double** %22, align 8, !dbg !689
  %144 = getelementptr inbounds double, double* %143, i64 %142, !dbg !689
  %145 = load double, double* %144, align 8, !dbg !689
  %146 = fmul double %139, %145, !dbg !690
  %147 = load double, double* %20, align 8, !dbg !691
  %148 = fmul double %146, %147, !dbg !692
  store double %148, double* %19, align 8, !dbg !693
  %149 = load double, double* %19, align 8, !dbg !694
  %150 = load double, double* %18, align 8, !dbg !695
  %151 = fmul double %149, %150, !dbg !696
  %152 = load i64, i64* %14, align 8, !dbg !697
  %153 = load double*, double** %9, align 8, !dbg !698
  %154 = getelementptr inbounds double, double* %153, i64 %152, !dbg !698
  store double %151, double* %154, align 8, !dbg !699
  %155 = load i64, i64* %13, align 8, !dbg !700
  %156 = add i64 %155, 2, !dbg !702
  store i64 %156, i64* %12, align 8, !dbg !703
  br label %157, !dbg !704

; <label>:157:                                    ; preds = %227, %104
  %158 = load i64, i64* %12, align 8, !dbg !705
  %159 = load i64, i64* %6, align 8, !dbg !708
  %160 = icmp ule i64 %158, %159, !dbg !709
  br i1 %160, label %161, label %230, !dbg !710

; <label>:161:                                    ; preds = %157
  %162 = load i64, i64* %12, align 8, !dbg !711
  %163 = load i64, i64* %14, align 8, !dbg !713
  %164 = add i64 %163, %162, !dbg !713
  store i64 %164, i64* %14, align 8, !dbg !713
  %165 = load i64, i64* %12, align 8, !dbg !714
  %166 = mul i64 2, %165, !dbg !715
  %167 = sub i64 %166, 1, !dbg !716
  %168 = uitofp i64 %167 to double, !dbg !717
  %169 = load i64, i64* %12, align 8, !dbg !718
  %170 = load i64, i64* %13, align 8, !dbg !719
  %171 = add i64 %169, %170, !dbg !720
  %172 = load double*, double** %22, align 8, !dbg !721
  %173 = getelementptr inbounds double, double* %172, i64 %171, !dbg !721
  %174 = load double, double* %173, align 8, !dbg !721
  %175 = fdiv double %168, %174, !dbg !722
  %176 = load i64, i64* %12, align 8, !dbg !723
  %177 = load i64, i64* %13, align 8, !dbg !724
  %178 = sub i64 %176, %177, !dbg !725
  %179 = load double*, double** %22, align 8, !dbg !726
  %180 = getelementptr inbounds double, double* %179, i64 %178, !dbg !726
  %181 = load double, double* %180, align 8, !dbg !726
  %182 = fdiv double %175, %181, !dbg !727
  %183 = load double, double* %7, align 8, !dbg !728
  %184 = fmul double %182, %183, !dbg !729
  %185 = load double, double* %19, align 8, !dbg !730
  %186 = fmul double %184, %185, !dbg !731
  %187 = load i64, i64* %12, align 8, !dbg !732
  %188 = load i64, i64* %13, align 8, !dbg !733
  %189 = sub i64 %187, %188, !dbg !734
  %190 = sub i64 %189, 1, !dbg !735
  %191 = load double*, double** %22, align 8, !dbg !736
  %192 = getelementptr inbounds double, double* %191, i64 %190, !dbg !736
  %193 = load double, double* %192, align 8, !dbg !736
  %194 = load i64, i64* %12, align 8, !dbg !737
  %195 = load i64, i64* %13, align 8, !dbg !738
  %196 = add i64 %194, %195, !dbg !739
  %197 = sub i64 %196, 1, !dbg !740
  %198 = load double*, double** %22, align 8, !dbg !741
  %199 = getelementptr inbounds double, double* %198, i64 %197, !dbg !741
  %200 = load double, double* %199, align 8, !dbg !741
  %201 = fmul double %193, %200, !dbg !742
  %202 = load i64, i64* %12, align 8, !dbg !743
  %203 = load i64, i64* %13, align 8, !dbg !744
  %204 = add i64 %202, %203, !dbg !745
  %205 = load double*, double** %22, align 8, !dbg !746
  %206 = getelementptr inbounds double, double* %205, i64 %204, !dbg !746
  %207 = load double, double* %206, align 8, !dbg !746
  %208 = fdiv double %201, %207, !dbg !747
  %209 = load i64, i64* %12, align 8, !dbg !748
  %210 = load i64, i64* %13, align 8, !dbg !749
  %211 = sub i64 %209, %210, !dbg !750
  %212 = load double*, double** %22, align 8, !dbg !751
  %213 = getelementptr inbounds double, double* %212, i64 %211, !dbg !751
  %214 = load double, double* %213, align 8, !dbg !751
  %215 = fdiv double %208, %214, !dbg !752
  %216 = load double, double* %20, align 8, !dbg !753
  %217 = fmul double %215, %216, !dbg !754
  %218 = fsub double %186, %217, !dbg !755
  store double %218, double* %16, align 8, !dbg !756
  %219 = load double, double* %16, align 8, !dbg !757
  %220 = load double, double* %18, align 8, !dbg !758
  %221 = fmul double %219, %220, !dbg !759
  %222 = load i64, i64* %14, align 8, !dbg !760
  %223 = load double*, double** %9, align 8, !dbg !761
  %224 = getelementptr inbounds double, double* %223, i64 %222, !dbg !761
  store double %221, double* %224, align 8, !dbg !762
  %225 = load double, double* %19, align 8, !dbg !763
  store double %225, double* %20, align 8, !dbg !764
  %226 = load double, double* %16, align 8, !dbg !765
  store double %226, double* %19, align 8, !dbg !766
  br label %227, !dbg !767

; <label>:227:                                    ; preds = %161
  %228 = load i64, i64* %12, align 8, !dbg !768
  %229 = add i64 %228, 1, !dbg !768
  store i64 %229, i64* %12, align 8, !dbg !768
  br label %157, !dbg !770, !llvm.loop !771

; <label>:230:                                    ; preds = %157
  br label %231, !dbg !773

; <label>:231:                                    ; preds = %230
  %232 = load i64, i64* %13, align 8, !dbg !774
  %233 = add i64 %232, 1, !dbg !774
  store i64 %233, i64* %13, align 8, !dbg !774
  br label %100, !dbg !776, !llvm.loop !777

; <label>:234:                                    ; preds = %100
  %235 = load double, double* %11, align 8, !dbg !779
  %236 = load double, double* %18, align 8, !dbg !780
  %237 = fmul double %236, %235, !dbg !780
  store double %237, double* %18, align 8, !dbg !780
  %238 = load i64, i64* %13, align 8, !dbg !781
  %239 = add i64 %238, 1, !dbg !782
  %240 = load i64, i64* %15, align 8, !dbg !783
  %241 = add i64 %240, %239, !dbg !783
  store i64 %241, i64* %15, align 8, !dbg !783
  %242 = load double, double* %8, align 8, !dbg !784
  %243 = load i64, i64* %6, align 8, !dbg !785
  %244 = mul i64 2, %243, !dbg !786
  %245 = sub i64 %244, 1, !dbg !787
  %246 = load double*, double** %22, align 8, !dbg !788
  %247 = getelementptr inbounds double, double* %246, i64 %245, !dbg !788
  %248 = load double, double* %247, align 8, !dbg !788
  %249 = fmul double %242, %248, !dbg !789
  %250 = load i64, i64* %6, align 8, !dbg !790
  %251 = mul i64 2, %250, !dbg !791
  %252 = load double*, double** %22, align 8, !dbg !792
  %253 = getelementptr inbounds double, double* %252, i64 %251, !dbg !792
  %254 = load double, double* %253, align 8, !dbg !792
  %255 = fdiv double %249, %254, !dbg !793
  %256 = load double, double* %17, align 8, !dbg !794
  %257 = fmul double %256, %255, !dbg !794
  store double %257, double* %17, align 8, !dbg !794
  %258 = load double, double* %17, align 8, !dbg !795
  %259 = load double, double* %18, align 8, !dbg !796
  %260 = fmul double %258, %259, !dbg !797
  %261 = load i64, i64* %15, align 8, !dbg !798
  %262 = load double*, double** %9, align 8, !dbg !799
  %263 = getelementptr inbounds double, double* %262, i64 %261, !dbg !799
  store double %260, double* %263, align 8, !dbg !800
  store i32 0, i32* %5, align 4, !dbg !801
  br label %265, !dbg !801

; <label>:264:                                    ; preds = %40
  br label %265

; <label>:265:                                    ; preds = %30, %39, %61, %234, %264, %31
  %266 = load i32, i32* %5, align 4, !dbg !802
  ret i32 %266, !dbg !802
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define i64 @gsl_sf_legendre_array_index(i64, i64) #0 !dbg !803 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !806, metadata !69), !dbg !807
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !808, metadata !69), !dbg !809
  %5 = load i64, i64* %3, align 8, !dbg !810
  %6 = load i64, i64* %3, align 8, !dbg !811
  %7 = add i64 %6, 1, !dbg !812
  %8 = mul i64 %5, %7, !dbg !813
  %9 = udiv i64 %8, 2, !dbg !814
  %10 = load i64, i64* %4, align 8, !dbg !815
  %11 = add i64 %9, %10, !dbg !816
  ret i64 %11, !dbg !817
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_deriv_array(i32, i64, double, double*, double*) #0 !dbg !818 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !821, metadata !69), !dbg !822
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !823, metadata !69), !dbg !824
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !825, metadata !69), !dbg !826
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !827, metadata !69), !dbg !828
  store double* %4, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !829, metadata !69), !dbg !828
  call void @llvm.dbg.declare(metadata i32* %11, metadata !830, metadata !69), !dbg !831
  %12 = load i32, i32* %6, align 4, !dbg !832
  %13 = load i64, i64* %7, align 8, !dbg !833
  %14 = load double, double* %8, align 8, !dbg !834
  %15 = load double*, double** %9, align 8, !dbg !835
  %16 = load double*, double** %10, align 8, !dbg !835
  %17 = call i32 @gsl_sf_legendre_deriv_array_e(i32 %12, i64 %13, double %14, double 1.000000e+00, double* %15, double* %16), !dbg !836
  store i32 %17, i32* %11, align 4, !dbg !831
  %18 = load i32, i32* %11, align 4, !dbg !837
  ret i32 %18, !dbg !838
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_deriv_array_e(i32, i64, double, double, double*, double*) #0 !dbg !839 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca double*, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !842, metadata !69), !dbg !843
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !844, metadata !69), !dbg !845
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !846, metadata !69), !dbg !847
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !848, metadata !69), !dbg !849
  store double* %4, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !850, metadata !69), !dbg !851
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !852, metadata !69), !dbg !851
  call void @llvm.dbg.declare(metadata i32* %14, metadata !853, metadata !69), !dbg !854
  call void @llvm.dbg.declare(metadata i64* %15, metadata !855, metadata !69), !dbg !856
  %25 = load i64, i64* %9, align 8, !dbg !857
  %26 = call i64 @gsl_sf_legendre_nlm(i64 %25), !dbg !858
  store i64 %26, i64* %15, align 8, !dbg !856
  call void @llvm.dbg.declare(metadata i64* %16, metadata !859, metadata !69), !dbg !860
  call void @llvm.dbg.declare(metadata double* %17, metadata !861, metadata !69), !dbg !862
  %27 = load double, double* %10, align 8, !dbg !863
  %28 = fsub double 1.000000e+00, %27, !dbg !864
  %29 = load double, double* %10, align 8, !dbg !865
  %30 = fadd double 1.000000e+00, %29, !dbg !866
  %31 = fmul double %28, %30, !dbg !867
  %32 = call double @sqrt(double %31) #5, !dbg !868
  store double %32, double* %17, align 8, !dbg !862
  call void @llvm.dbg.declare(metadata double* %18, metadata !869, metadata !69), !dbg !870
  %33 = load double, double* %17, align 8, !dbg !871
  %34 = fdiv double 1.000000e+00, %33, !dbg !872
  store double %34, double* %18, align 8, !dbg !870
  call void @llvm.dbg.declare(metadata double* %19, metadata !873, metadata !69), !dbg !874
  store double 0.000000e+00, double* %19, align 8, !dbg !874
  call void @llvm.dbg.declare(metadata double* %20, metadata !875, metadata !69), !dbg !876
  store double 0.000000e+00, double* %20, align 8, !dbg !876
  %35 = load i32, i32* %8, align 4, !dbg !877
  %36 = icmp eq i32 %35, 3, !dbg !879
  br i1 %36, label %37, label %44, !dbg !880

; <label>:37:                                     ; preds = %6
  %38 = load i64, i64* %9, align 8, !dbg !881
  %39 = load double, double* %10, align 8, !dbg !883
  %40 = load double, double* %11, align 8, !dbg !884
  %41 = load double*, double** %12, align 8, !dbg !885
  %42 = load double*, double** %13, align 8, !dbg !885
  %43 = call i32 @legendre_deriv_array_none_e(i64 %38, double %39, double %40, double* %41, double* %42), !dbg !886
  store i32 %43, i32* %14, align 4, !dbg !887
  br label %51, !dbg !888

; <label>:44:                                     ; preds = %6
  %45 = load i64, i64* %9, align 8, !dbg !889
  %46 = load double, double* %10, align 8, !dbg !891
  %47 = load double, double* %11, align 8, !dbg !892
  %48 = load double*, double** %12, align 8, !dbg !893
  %49 = load double*, double** %13, align 8, !dbg !893
  %50 = call i32 @legendre_deriv_array_schmidt_e(i64 %45, double %46, double %47, double* %48, double* %49), !dbg !894
  store i32 %50, i32* %14, align 4, !dbg !895
  br label %51

; <label>:51:                                     ; preds = %44, %37
  store i64 0, i64* %16, align 8, !dbg !896
  br label %52, !dbg !898

; <label>:52:                                     ; preds = %64, %51
  %53 = load i64, i64* %16, align 8, !dbg !899
  %54 = load i64, i64* %15, align 8, !dbg !902
  %55 = icmp ult i64 %53, %54, !dbg !903
  br i1 %55, label %56, label %67, !dbg !904

; <label>:56:                                     ; preds = %52
  %57 = load double, double* %18, align 8, !dbg !905
  %58 = fsub double -0.000000e+00, %57, !dbg !907
  %59 = load i64, i64* %16, align 8, !dbg !908
  %60 = load double*, double** %13, align 8, !dbg !909
  %61 = getelementptr inbounds double, double* %60, i64 %59, !dbg !909
  %62 = load double, double* %61, align 8, !dbg !910
  %63 = fmul double %62, %58, !dbg !910
  store double %63, double* %61, align 8, !dbg !910
  br label %64, !dbg !911

; <label>:64:                                     ; preds = %56
  %65 = load i64, i64* %16, align 8, !dbg !912
  %66 = add i64 %65, 1, !dbg !912
  store i64 %66, i64* %16, align 8, !dbg !912
  br label %52, !dbg !914, !llvm.loop !915

; <label>:67:                                     ; preds = %52
  %68 = load i32, i32* %8, align 4, !dbg !917
  %69 = icmp eq i32 %68, 0, !dbg !919
  br i1 %69, label %73, label %70, !dbg !920

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %8, align 4, !dbg !921
  %72 = icmp eq i32 %71, 3, !dbg !923
  br i1 %72, label %73, label %75, !dbg !924

; <label>:73:                                     ; preds = %70, %67
  %74 = load i32, i32* %14, align 4, !dbg !925
  store i32 %74, i32* %7, align 4, !dbg !927
  br label %168, !dbg !927

; <label>:75:                                     ; preds = %70
  %76 = load i32, i32* %8, align 4, !dbg !928
  %77 = icmp eq i32 %76, 1, !dbg !930
  br i1 %77, label %78, label %83, !dbg !931

; <label>:78:                                     ; preds = %75
  %79 = call double @sqrt(double 0x402921FB54442D18) #5, !dbg !932
  %80 = fdiv double 1.000000e+00, %79, !dbg !934
  store double %80, double* %19, align 8, !dbg !935
  %81 = call double @sqrt(double 0x403921FB54442D18) #5, !dbg !936
  %82 = fdiv double 1.000000e+00, %81, !dbg !937
  store double %82, double* %20, align 8, !dbg !938
  br label %92, !dbg !939

; <label>:83:                                     ; preds = %75
  %84 = load i32, i32* %8, align 4, !dbg !940
  %85 = icmp eq i32 %84, 2, !dbg !942
  br i1 %85, label %86, label %91, !dbg !943

; <label>:86:                                     ; preds = %83
  %87 = call double @sqrt(double 2.000000e+00) #5, !dbg !944
  %88 = fdiv double 1.000000e+00, %87, !dbg !946
  store double %88, double* %19, align 8, !dbg !947
  %89 = call double @sqrt(double 4.000000e+00) #5, !dbg !948
  %90 = fdiv double 1.000000e+00, %89, !dbg !949
  store double %90, double* %20, align 8, !dbg !950
  br label %91, !dbg !951

; <label>:91:                                     ; preds = %86, %83
  br label %92

; <label>:92:                                     ; preds = %91, %78
  br label %93

; <label>:93:                                     ; preds = %92
  call void @llvm.dbg.declare(metadata i64* %21, metadata !952, metadata !69), !dbg !954
  call void @llvm.dbg.declare(metadata i64* %22, metadata !955, metadata !69), !dbg !956
  call void @llvm.dbg.declare(metadata i64* %23, metadata !957, metadata !69), !dbg !958
  store i64 1, i64* %23, align 8, !dbg !958
  call void @llvm.dbg.declare(metadata double** %24, metadata !959, metadata !69), !dbg !960
  %94 = load i64, i64* %15, align 8, !dbg !961
  %95 = load double*, double** %12, align 8, !dbg !962
  %96 = getelementptr inbounds double, double* %95, i64 %94, !dbg !962
  store double* %96, double** %24, align 8, !dbg !960
  store i64 0, i64* %21, align 8, !dbg !963
  br label %97, !dbg !965

; <label>:97:                                     ; preds = %163, %93
  %98 = load i64, i64* %21, align 8, !dbg !966
  %99 = load i64, i64* %9, align 8, !dbg !969
  %100 = icmp ule i64 %98, %99, !dbg !970
  br i1 %100, label %101, label %166, !dbg !971

; <label>:101:                                    ; preds = %97
  %102 = load i64, i64* %23, align 8, !dbg !972
  %103 = load double*, double** %24, align 8, !dbg !974
  %104 = getelementptr inbounds double, double* %103, i64 %102, !dbg !974
  %105 = load double, double* %104, align 8, !dbg !974
  %106 = load double, double* %19, align 8, !dbg !975
  %107 = fmul double %105, %106, !dbg !976
  %108 = load i64, i64* %21, align 8, !dbg !977
  %109 = call i64 @gsl_sf_legendre_array_index(i64 %108, i64 0), !dbg !978
  %110 = load double*, double** %12, align 8, !dbg !979
  %111 = getelementptr inbounds double, double* %110, i64 %109, !dbg !979
  %112 = load double, double* %111, align 8, !dbg !980
  %113 = fmul double %112, %107, !dbg !980
  store double %113, double* %111, align 8, !dbg !980
  %114 = load i64, i64* %23, align 8, !dbg !981
  %115 = load double*, double** %24, align 8, !dbg !982
  %116 = getelementptr inbounds double, double* %115, i64 %114, !dbg !982
  %117 = load double, double* %116, align 8, !dbg !982
  %118 = load double, double* %19, align 8, !dbg !983
  %119 = fmul double %117, %118, !dbg !984
  %120 = load i64, i64* %21, align 8, !dbg !985
  %121 = call i64 @gsl_sf_legendre_array_index(i64 %120, i64 0), !dbg !986
  %122 = load double*, double** %13, align 8, !dbg !987
  %123 = getelementptr inbounds double, double* %122, i64 %121, !dbg !987
  %124 = load double, double* %123, align 8, !dbg !988
  %125 = fmul double %124, %119, !dbg !988
  store double %125, double* %123, align 8, !dbg !988
  store i64 1, i64* %22, align 8, !dbg !989
  br label %126, !dbg !991

; <label>:126:                                    ; preds = %157, %101
  %127 = load i64, i64* %22, align 8, !dbg !992
  %128 = load i64, i64* %21, align 8, !dbg !995
  %129 = icmp ule i64 %127, %128, !dbg !996
  br i1 %129, label %130, label %160, !dbg !997

; <label>:130:                                    ; preds = %126
  %131 = load i64, i64* %23, align 8, !dbg !998
  %132 = load double*, double** %24, align 8, !dbg !1000
  %133 = getelementptr inbounds double, double* %132, i64 %131, !dbg !1000
  %134 = load double, double* %133, align 8, !dbg !1000
  %135 = load double, double* %20, align 8, !dbg !1001
  %136 = fmul double %134, %135, !dbg !1002
  %137 = load i64, i64* %21, align 8, !dbg !1003
  %138 = load i64, i64* %22, align 8, !dbg !1004
  %139 = call i64 @gsl_sf_legendre_array_index(i64 %137, i64 %138), !dbg !1005
  %140 = load double*, double** %12, align 8, !dbg !1006
  %141 = getelementptr inbounds double, double* %140, i64 %139, !dbg !1006
  %142 = load double, double* %141, align 8, !dbg !1007
  %143 = fmul double %142, %136, !dbg !1007
  store double %143, double* %141, align 8, !dbg !1007
  %144 = load i64, i64* %23, align 8, !dbg !1008
  %145 = load double*, double** %24, align 8, !dbg !1009
  %146 = getelementptr inbounds double, double* %145, i64 %144, !dbg !1009
  %147 = load double, double* %146, align 8, !dbg !1009
  %148 = load double, double* %20, align 8, !dbg !1010
  %149 = fmul double %147, %148, !dbg !1011
  %150 = load i64, i64* %21, align 8, !dbg !1012
  %151 = load i64, i64* %22, align 8, !dbg !1013
  %152 = call i64 @gsl_sf_legendre_array_index(i64 %150, i64 %151), !dbg !1014
  %153 = load double*, double** %13, align 8, !dbg !1015
  %154 = getelementptr inbounds double, double* %153, i64 %152, !dbg !1015
  %155 = load double, double* %154, align 8, !dbg !1016
  %156 = fmul double %155, %149, !dbg !1016
  store double %156, double* %154, align 8, !dbg !1016
  br label %157, !dbg !1017

; <label>:157:                                    ; preds = %130
  %158 = load i64, i64* %22, align 8, !dbg !1018
  %159 = add i64 %158, 1, !dbg !1018
  store i64 %159, i64* %22, align 8, !dbg !1018
  br label %126, !dbg !1020, !llvm.loop !1021

; <label>:160:                                    ; preds = %126
  %161 = load i64, i64* %23, align 8, !dbg !1023
  %162 = add i64 %161, 2, !dbg !1023
  store i64 %162, i64* %23, align 8, !dbg !1023
  br label %163, !dbg !1024

; <label>:163:                                    ; preds = %160
  %164 = load i64, i64* %21, align 8, !dbg !1025
  %165 = add i64 %164, 1, !dbg !1025
  store i64 %165, i64* %21, align 8, !dbg !1025
  br label %97, !dbg !1027, !llvm.loop !1028

; <label>:166:                                    ; preds = %97
  %167 = load i32, i32* %14, align 4, !dbg !1030
  store i32 %167, i32* %7, align 4, !dbg !1031
  br label %168, !dbg !1031

; <label>:168:                                    ; preds = %166, %73
  %169 = load i32, i32* %7, align 4, !dbg !1032
  ret i32 %169, !dbg !1032
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_deriv_array_none_e(i64, double, double, double*, double*) #0 !dbg !1033 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  store i64 %0, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1036, metadata !69), !dbg !1037
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1038, metadata !69), !dbg !1039
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1040, metadata !69), !dbg !1041
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !1042, metadata !69), !dbg !1043
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !1044, metadata !69), !dbg !1043
  %24 = load double, double* %8, align 8, !dbg !1045
  %25 = fcmp ogt double %24, 1.000000e+00, !dbg !1047
  br i1 %25, label %29, label %26, !dbg !1048

; <label>:26:                                     ; preds = %5
  %27 = load double, double* %8, align 8, !dbg !1049
  %28 = fcmp olt double %27, -1.000000e+00, !dbg !1051
  br i1 %28, label %29, label %32, !dbg !1052

; <label>:29:                                     ; preds = %26, %5
  br label %30, !dbg !1053, !llvm.loop !1055

; <label>:30:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 430, i32 1), !dbg !1056
  store i32 1, i32* %6, align 4, !dbg !1056
  br label %289, !dbg !1056
                                                  ; No predecessors!
  br label %289, !dbg !1059

; <label>:32:                                     ; preds = %26
  %33 = load double, double* %8, align 8, !dbg !1060
  %34 = call double @fabs(double %33) #1, !dbg !1062
  %35 = fcmp oeq double %34, 1.000000e+00, !dbg !1063
  br i1 %35, label %36, label %39, !dbg !1064

; <label>:36:                                     ; preds = %32
  br label %37, !dbg !1065, !llvm.loop !1067

; <label>:37:                                     ; preds = %36
  call void @gsl_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 435, i32 1), !dbg !1068
  store i32 1, i32* %6, align 4, !dbg !1068
  br label %289, !dbg !1068
                                                  ; No predecessors!
  br label %288, !dbg !1071

; <label>:39:                                     ; preds = %32
  %40 = load double, double* %9, align 8, !dbg !1072
  %41 = fcmp une double %40, 1.000000e+00, !dbg !1074
  br i1 %41, label %42, label %48, !dbg !1075

; <label>:42:                                     ; preds = %39
  %43 = load double, double* %9, align 8, !dbg !1076
  %44 = fcmp une double %43, -1.000000e+00, !dbg !1078
  br i1 %44, label %45, label %48, !dbg !1079

; <label>:45:                                     ; preds = %42
  br label %46, !dbg !1080, !llvm.loop !1082

; <label>:46:                                     ; preds = %45
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 440, i32 1), !dbg !1083
  store i32 1, i32* %6, align 4, !dbg !1083
  br label %289, !dbg !1083
                                                  ; No predecessors!
  br label %287, !dbg !1086

; <label>:48:                                     ; preds = %42, %39
  call void @llvm.dbg.declare(metadata double* %12, metadata !1087, metadata !69), !dbg !1089
  %49 = load double, double* %8, align 8, !dbg !1090
  %50 = fsub double 1.000000e+00, %49, !dbg !1091
  %51 = load double, double* %8, align 8, !dbg !1092
  %52 = fadd double 1.000000e+00, %51, !dbg !1093
  %53 = fmul double %50, %52, !dbg !1094
  %54 = call double @sqrt(double %53) #5, !dbg !1095
  store double %54, double* %12, align 8, !dbg !1089
  call void @llvm.dbg.declare(metadata double* %13, metadata !1096, metadata !69), !dbg !1097
  %55 = load double, double* %12, align 8, !dbg !1098
  %56 = fdiv double 1.000000e+00, %55, !dbg !1099
  store double %56, double* %13, align 8, !dbg !1097
  call void @llvm.dbg.declare(metadata double* %14, metadata !1100, metadata !69), !dbg !1101
  %57 = load double, double* %8, align 8, !dbg !1102
  %58 = load double, double* %13, align 8, !dbg !1103
  %59 = fmul double %57, %58, !dbg !1104
  store double %59, double* %14, align 8, !dbg !1101
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1105, metadata !69), !dbg !1106
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1107, metadata !69), !dbg !1108
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1109, metadata !69), !dbg !1110
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1111, metadata !69), !dbg !1112
  call void @llvm.dbg.declare(metadata double* %19, metadata !1113, metadata !69), !dbg !1114
  call void @llvm.dbg.declare(metadata double* %20, metadata !1115, metadata !69), !dbg !1116
  call void @llvm.dbg.declare(metadata double* %21, metadata !1117, metadata !69), !dbg !1118
  call void @llvm.dbg.declare(metadata double* %22, metadata !1119, metadata !69), !dbg !1120
  call void @llvm.dbg.declare(metadata double* %23, metadata !1121, metadata !69), !dbg !1122
  store double 1.000000e+00, double* %22, align 8, !dbg !1123
  %60 = load double, double* %8, align 8, !dbg !1124
  store double %60, double* %21, align 8, !dbg !1125
  %61 = load double, double* %22, align 8, !dbg !1126
  %62 = load double*, double** %10, align 8, !dbg !1127
  %63 = getelementptr inbounds double, double* %62, i64 0, !dbg !1127
  store double %61, double* %63, align 8, !dbg !1128
  %64 = load double*, double** %11, align 8, !dbg !1129
  %65 = getelementptr inbounds double, double* %64, i64 0, !dbg !1129
  store double 0.000000e+00, double* %65, align 8, !dbg !1130
  %66 = load i64, i64* %7, align 8, !dbg !1131
  %67 = icmp eq i64 %66, 0, !dbg !1133
  br i1 %67, label %68, label %69, !dbg !1134

; <label>:68:                                     ; preds = %48
  store i32 0, i32* %6, align 4, !dbg !1135
  br label %289, !dbg !1135

; <label>:69:                                     ; preds = %48
  %70 = load double, double* %21, align 8, !dbg !1136
  %71 = load double*, double** %10, align 8, !dbg !1137
  %72 = getelementptr inbounds double, double* %71, i64 1, !dbg !1137
  store double %70, double* %72, align 8, !dbg !1138
  %73 = load double, double* %12, align 8, !dbg !1139
  %74 = fsub double -0.000000e+00, %73, !dbg !1140
  %75 = load double*, double** %11, align 8, !dbg !1141
  %76 = getelementptr inbounds double, double* %75, i64 1, !dbg !1141
  store double %74, double* %76, align 8, !dbg !1142
  store i64 1, i64* %17, align 8, !dbg !1143
  store i64 2, i64* %15, align 8, !dbg !1144
  br label %77, !dbg !1146

; <label>:77:                                     ; preds = %122, %69
  %78 = load i64, i64* %15, align 8, !dbg !1147
  %79 = load i64, i64* %7, align 8, !dbg !1150
  %80 = icmp ule i64 %78, %79, !dbg !1151
  br i1 %80, label %81, label %125, !dbg !1152

; <label>:81:                                     ; preds = %77
  %82 = load i64, i64* %15, align 8, !dbg !1153
  %83 = load i64, i64* %17, align 8, !dbg !1155
  %84 = add i64 %83, %82, !dbg !1155
  store i64 %84, i64* %17, align 8, !dbg !1155
  %85 = load i64, i64* %15, align 8, !dbg !1156
  %86 = mul i64 2, %85, !dbg !1157
  %87 = sub i64 %86, 1, !dbg !1158
  %88 = uitofp i64 %87 to double, !dbg !1159
  %89 = load double, double* %8, align 8, !dbg !1160
  %90 = fmul double %88, %89, !dbg !1161
  %91 = load double, double* %21, align 8, !dbg !1162
  %92 = fmul double %90, %91, !dbg !1163
  %93 = load i64, i64* %15, align 8, !dbg !1164
  %94 = sub i64 %93, 1, !dbg !1165
  %95 = uitofp i64 %94 to double, !dbg !1166
  %96 = load double, double* %22, align 8, !dbg !1167
  %97 = fmul double %95, %96, !dbg !1168
  %98 = fsub double %92, %97, !dbg !1169
  %99 = load i64, i64* %15, align 8, !dbg !1170
  %100 = uitofp i64 %99 to double, !dbg !1171
  %101 = fdiv double %98, %100, !dbg !1172
  store double %101, double* %19, align 8, !dbg !1173
  %102 = load double, double* %19, align 8, !dbg !1174
  %103 = load i64, i64* %17, align 8, !dbg !1175
  %104 = load double*, double** %10, align 8, !dbg !1176
  %105 = getelementptr inbounds double, double* %104, i64 %103, !dbg !1176
  store double %102, double* %105, align 8, !dbg !1177
  %106 = load i64, i64* %15, align 8, !dbg !1178
  %107 = uitofp i64 %106 to double, !dbg !1179
  %108 = fsub double -0.000000e+00, %107, !dbg !1180
  %109 = load double, double* %21, align 8, !dbg !1181
  %110 = load double, double* %8, align 8, !dbg !1182
  %111 = load double, double* %19, align 8, !dbg !1183
  %112 = fmul double %110, %111, !dbg !1184
  %113 = fsub double %109, %112, !dbg !1185
  %114 = fmul double %108, %113, !dbg !1186
  %115 = load double, double* %13, align 8, !dbg !1187
  %116 = fmul double %114, %115, !dbg !1188
  %117 = load i64, i64* %17, align 8, !dbg !1189
  %118 = load double*, double** %11, align 8, !dbg !1190
  %119 = getelementptr inbounds double, double* %118, i64 %117, !dbg !1190
  store double %116, double* %119, align 8, !dbg !1191
  %120 = load double, double* %21, align 8, !dbg !1192
  store double %120, double* %22, align 8, !dbg !1193
  %121 = load double, double* %19, align 8, !dbg !1194
  store double %121, double* %21, align 8, !dbg !1195
  br label %122, !dbg !1196

; <label>:122:                                    ; preds = %81
  %123 = load i64, i64* %15, align 8, !dbg !1197
  %124 = add i64 %123, 1, !dbg !1197
  store i64 %124, i64* %15, align 8, !dbg !1197
  br label %77, !dbg !1199, !llvm.loop !1200

; <label>:125:                                    ; preds = %77
  store double 1.000000e+00, double* %20, align 8, !dbg !1202
  store double -1.000000e+00, double* %23, align 8, !dbg !1203
  store i64 0, i64* %18, align 8, !dbg !1204
  store i64 1, i64* %16, align 8, !dbg !1205
  br label %126, !dbg !1207

; <label>:126:                                    ; preds = %255, %125
  %127 = load i64, i64* %16, align 8, !dbg !1208
  %128 = load i64, i64* %7, align 8, !dbg !1211
  %129 = sub i64 %128, 1, !dbg !1212
  %130 = icmp ule i64 %127, %129, !dbg !1213
  br i1 %130, label %131, label %258, !dbg !1214

; <label>:131:                                    ; preds = %126
  %132 = load i64, i64* %16, align 8, !dbg !1215
  %133 = add i64 %132, 1, !dbg !1217
  %134 = load i64, i64* %18, align 8, !dbg !1218
  %135 = add i64 %134, %133, !dbg !1218
  store i64 %135, i64* %18, align 8, !dbg !1218
  %136 = load double, double* %23, align 8, !dbg !1219
  %137 = fadd double %136, 2.000000e+00, !dbg !1219
  store double %137, double* %23, align 8, !dbg !1219
  %138 = load double, double* %9, align 8, !dbg !1220
  %139 = load double, double* %12, align 8, !dbg !1221
  %140 = fmul double %138, %139, !dbg !1222
  %141 = load double, double* %23, align 8, !dbg !1223
  %142 = fmul double %140, %141, !dbg !1224
  %143 = load double, double* %20, align 8, !dbg !1225
  %144 = fmul double %143, %142, !dbg !1225
  store double %144, double* %20, align 8, !dbg !1225
  %145 = load double, double* %20, align 8, !dbg !1226
  %146 = load i64, i64* %18, align 8, !dbg !1227
  %147 = load double*, double** %10, align 8, !dbg !1228
  %148 = getelementptr inbounds double, double* %147, i64 %146, !dbg !1228
  store double %145, double* %148, align 8, !dbg !1229
  %149 = load i64, i64* %16, align 8, !dbg !1230
  %150 = uitofp i64 %149 to double, !dbg !1230
  %151 = load double, double* %14, align 8, !dbg !1231
  %152 = fmul double %150, %151, !dbg !1232
  %153 = load double, double* %20, align 8, !dbg !1233
  %154 = fmul double %152, %153, !dbg !1234
  %155 = load i64, i64* %18, align 8, !dbg !1235
  %156 = load double*, double** %11, align 8, !dbg !1236
  %157 = getelementptr inbounds double, double* %156, i64 %155, !dbg !1236
  store double %154, double* %157, align 8, !dbg !1237
  %158 = load double, double* %20, align 8, !dbg !1238
  store double %158, double* %22, align 8, !dbg !1239
  %159 = load i64, i64* %18, align 8, !dbg !1240
  %160 = load i64, i64* %16, align 8, !dbg !1241
  %161 = add i64 %159, %160, !dbg !1242
  %162 = add i64 %161, 1, !dbg !1243
  store i64 %162, i64* %17, align 8, !dbg !1244
  %163 = load double, double* %8, align 8, !dbg !1245
  %164 = load double, double* %20, align 8, !dbg !1246
  %165 = fmul double %163, %164, !dbg !1247
  %166 = load i64, i64* %16, align 8, !dbg !1248
  %167 = mul i64 2, %166, !dbg !1249
  %168 = add i64 %167, 1, !dbg !1250
  %169 = uitofp i64 %168 to double, !dbg !1251
  %170 = fmul double %165, %169, !dbg !1252
  store double %170, double* %21, align 8, !dbg !1253
  %171 = load double, double* %21, align 8, !dbg !1254
  %172 = load i64, i64* %17, align 8, !dbg !1255
  %173 = load double*, double** %10, align 8, !dbg !1256
  %174 = getelementptr inbounds double, double* %173, i64 %172, !dbg !1256
  store double %171, double* %174, align 8, !dbg !1257
  %175 = load double, double* %13, align 8, !dbg !1258
  %176 = fsub double -0.000000e+00, %175, !dbg !1259
  %177 = load i64, i64* %16, align 8, !dbg !1260
  %178 = mul i64 2, %177, !dbg !1261
  %179 = add i64 %178, 1, !dbg !1262
  %180 = uitofp i64 %179 to double, !dbg !1263
  %181 = load double, double* %20, align 8, !dbg !1264
  %182 = fmul double %180, %181, !dbg !1265
  %183 = load i64, i64* %16, align 8, !dbg !1266
  %184 = add i64 %183, 1, !dbg !1267
  %185 = uitofp i64 %184 to double, !dbg !1268
  %186 = load double, double* %8, align 8, !dbg !1269
  %187 = fmul double %185, %186, !dbg !1270
  %188 = load double, double* %21, align 8, !dbg !1271
  %189 = fmul double %187, %188, !dbg !1272
  %190 = fsub double %182, %189, !dbg !1273
  %191 = fmul double %176, %190, !dbg !1274
  %192 = load i64, i64* %17, align 8, !dbg !1275
  %193 = load double*, double** %11, align 8, !dbg !1276
  %194 = getelementptr inbounds double, double* %193, i64 %192, !dbg !1276
  store double %191, double* %194, align 8, !dbg !1277
  %195 = load i64, i64* %16, align 8, !dbg !1278
  %196 = add i64 %195, 2, !dbg !1280
  store i64 %196, i64* %15, align 8, !dbg !1281
  br label %197, !dbg !1282

; <label>:197:                                    ; preds = %251, %131
  %198 = load i64, i64* %15, align 8, !dbg !1283
  %199 = load i64, i64* %7, align 8, !dbg !1286
  %200 = icmp ule i64 %198, %199, !dbg !1287
  br i1 %200, label %201, label %254, !dbg !1288

; <label>:201:                                    ; preds = %197
  %202 = load i64, i64* %15, align 8, !dbg !1289
  %203 = load i64, i64* %17, align 8, !dbg !1291
  %204 = add i64 %203, %202, !dbg !1291
  store i64 %204, i64* %17, align 8, !dbg !1291
  %205 = load i64, i64* %15, align 8, !dbg !1292
  %206 = mul i64 2, %205, !dbg !1293
  %207 = sub i64 %206, 1, !dbg !1294
  %208 = uitofp i64 %207 to double, !dbg !1295
  %209 = load double, double* %8, align 8, !dbg !1296
  %210 = fmul double %208, %209, !dbg !1297
  %211 = load double, double* %21, align 8, !dbg !1298
  %212 = fmul double %210, %211, !dbg !1299
  %213 = load i64, i64* %15, align 8, !dbg !1300
  %214 = load i64, i64* %16, align 8, !dbg !1301
  %215 = add i64 %213, %214, !dbg !1302
  %216 = sub i64 %215, 1, !dbg !1303
  %217 = uitofp i64 %216 to double, !dbg !1304
  %218 = load double, double* %22, align 8, !dbg !1305
  %219 = fmul double %217, %218, !dbg !1306
  %220 = fsub double %212, %219, !dbg !1307
  %221 = load i64, i64* %15, align 8, !dbg !1308
  %222 = load i64, i64* %16, align 8, !dbg !1309
  %223 = sub i64 %221, %222, !dbg !1310
  %224 = uitofp i64 %223 to double, !dbg !1311
  %225 = fdiv double %220, %224, !dbg !1312
  store double %225, double* %19, align 8, !dbg !1313
  %226 = load double, double* %19, align 8, !dbg !1314
  %227 = load i64, i64* %17, align 8, !dbg !1315
  %228 = load double*, double** %10, align 8, !dbg !1316
  %229 = getelementptr inbounds double, double* %228, i64 %227, !dbg !1316
  store double %226, double* %229, align 8, !dbg !1317
  %230 = load double, double* %13, align 8, !dbg !1318
  %231 = fsub double -0.000000e+00, %230, !dbg !1319
  %232 = load i64, i64* %15, align 8, !dbg !1320
  %233 = load i64, i64* %16, align 8, !dbg !1321
  %234 = add i64 %232, %233, !dbg !1322
  %235 = uitofp i64 %234 to double, !dbg !1323
  %236 = load double, double* %21, align 8, !dbg !1324
  %237 = fmul double %235, %236, !dbg !1325
  %238 = load i64, i64* %15, align 8, !dbg !1326
  %239 = uitofp i64 %238 to double, !dbg !1326
  %240 = load double, double* %8, align 8, !dbg !1327
  %241 = fmul double %239, %240, !dbg !1328
  %242 = load double, double* %19, align 8, !dbg !1329
  %243 = fmul double %241, %242, !dbg !1330
  %244 = fsub double %237, %243, !dbg !1331
  %245 = fmul double %231, %244, !dbg !1332
  %246 = load i64, i64* %17, align 8, !dbg !1333
  %247 = load double*, double** %11, align 8, !dbg !1334
  %248 = getelementptr inbounds double, double* %247, i64 %246, !dbg !1334
  store double %245, double* %248, align 8, !dbg !1335
  %249 = load double, double* %21, align 8, !dbg !1336
  store double %249, double* %22, align 8, !dbg !1337
  %250 = load double, double* %19, align 8, !dbg !1338
  store double %250, double* %21, align 8, !dbg !1339
  br label %251, !dbg !1340

; <label>:251:                                    ; preds = %201
  %252 = load i64, i64* %15, align 8, !dbg !1341
  %253 = add i64 %252, 1, !dbg !1341
  store i64 %253, i64* %15, align 8, !dbg !1341
  br label %197, !dbg !1343, !llvm.loop !1344

; <label>:254:                                    ; preds = %197
  br label %255, !dbg !1346

; <label>:255:                                    ; preds = %254
  %256 = load i64, i64* %16, align 8, !dbg !1347
  %257 = add i64 %256, 1, !dbg !1347
  store i64 %257, i64* %16, align 8, !dbg !1347
  br label %126, !dbg !1349, !llvm.loop !1350

; <label>:258:                                    ; preds = %126
  %259 = load i64, i64* %16, align 8, !dbg !1352
  %260 = add i64 %259, 1, !dbg !1353
  %261 = load i64, i64* %18, align 8, !dbg !1354
  %262 = add i64 %261, %260, !dbg !1354
  store i64 %262, i64* %18, align 8, !dbg !1354
  %263 = load double, double* %23, align 8, !dbg !1355
  %264 = fadd double %263, 2.000000e+00, !dbg !1355
  store double %264, double* %23, align 8, !dbg !1355
  %265 = load double, double* %9, align 8, !dbg !1356
  %266 = load double, double* %12, align 8, !dbg !1357
  %267 = fmul double %265, %266, !dbg !1358
  %268 = load double, double* %23, align 8, !dbg !1359
  %269 = fmul double %267, %268, !dbg !1360
  %270 = load double, double* %20, align 8, !dbg !1361
  %271 = fmul double %270, %269, !dbg !1361
  store double %271, double* %20, align 8, !dbg !1361
  %272 = load double, double* %20, align 8, !dbg !1362
  %273 = load i64, i64* %18, align 8, !dbg !1363
  %274 = load double*, double** %10, align 8, !dbg !1364
  %275 = getelementptr inbounds double, double* %274, i64 %273, !dbg !1364
  store double %272, double* %275, align 8, !dbg !1365
  %276 = load i64, i64* %7, align 8, !dbg !1366
  %277 = uitofp i64 %276 to double, !dbg !1366
  %278 = load double, double* %8, align 8, !dbg !1367
  %279 = fmul double %277, %278, !dbg !1368
  %280 = load double, double* %20, align 8, !dbg !1369
  %281 = fmul double %279, %280, !dbg !1370
  %282 = load double, double* %13, align 8, !dbg !1371
  %283 = fmul double %281, %282, !dbg !1372
  %284 = load i64, i64* %18, align 8, !dbg !1373
  %285 = load double*, double** %11, align 8, !dbg !1374
  %286 = getelementptr inbounds double, double* %285, i64 %284, !dbg !1374
  store double %283, double* %286, align 8, !dbg !1375
  store i32 0, i32* %6, align 4, !dbg !1376
  br label %289, !dbg !1376

; <label>:287:                                    ; preds = %47
  br label %288

; <label>:288:                                    ; preds = %287, %38
  br label %289

; <label>:289:                                    ; preds = %30, %37, %46, %68, %258, %288, %31
  %290 = load i32, i32* %6, align 4, !dbg !1377
  ret i32 %290, !dbg !1377
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_deriv_array_schmidt_e(i64, double, double, double*, double*) #0 !dbg !1378 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i64, align 8
  %26 = alloca double*, align 8
  %27 = alloca double, align 8
  store i64 %0, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1379, metadata !69), !dbg !1380
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1381, metadata !69), !dbg !1382
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1383, metadata !69), !dbg !1384
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !1385, metadata !69), !dbg !1386
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !1387, metadata !69), !dbg !1386
  %28 = load double, double* %8, align 8, !dbg !1388
  %29 = fcmp ogt double %28, 1.000000e+00, !dbg !1390
  br i1 %29, label %33, label %30, !dbg !1391

; <label>:30:                                     ; preds = %5
  %31 = load double, double* %8, align 8, !dbg !1392
  %32 = fcmp olt double %31, -1.000000e+00, !dbg !1394
  br i1 %32, label %33, label %36, !dbg !1395

; <label>:33:                                     ; preds = %30, %5
  br label %34, !dbg !1396, !llvm.loop !1398

; <label>:34:                                     ; preds = %33
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 222, i32 1), !dbg !1399
  store i32 1, i32* %6, align 4, !dbg !1399
  br label %387, !dbg !1399
                                                  ; No predecessors!
  br label %387, !dbg !1402

; <label>:36:                                     ; preds = %30
  %37 = load double, double* %8, align 8, !dbg !1403
  %38 = call double @fabs(double %37) #1, !dbg !1405
  %39 = fcmp oeq double %38, 1.000000e+00, !dbg !1406
  br i1 %39, label %40, label %43, !dbg !1407

; <label>:40:                                     ; preds = %36
  br label %41, !dbg !1408, !llvm.loop !1410

; <label>:41:                                     ; preds = %40
  call void @gsl_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 227, i32 1), !dbg !1411
  store i32 1, i32* %6, align 4, !dbg !1411
  br label %387, !dbg !1411
                                                  ; No predecessors!
  br label %386, !dbg !1414

; <label>:43:                                     ; preds = %36
  %44 = load double, double* %9, align 8, !dbg !1415
  %45 = fcmp une double %44, 1.000000e+00, !dbg !1417
  br i1 %45, label %46, label %52, !dbg !1418

; <label>:46:                                     ; preds = %43
  %47 = load double, double* %9, align 8, !dbg !1419
  %48 = fcmp une double %47, -1.000000e+00, !dbg !1421
  br i1 %48, label %49, label %52, !dbg !1422

; <label>:49:                                     ; preds = %46
  br label %50, !dbg !1423, !llvm.loop !1425

; <label>:50:                                     ; preds = %49
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 232, i32 1), !dbg !1426
  store i32 1, i32* %6, align 4, !dbg !1426
  br label %387, !dbg !1426
                                                  ; No predecessors!
  br label %385, !dbg !1429

; <label>:52:                                     ; preds = %46, %43
  call void @llvm.dbg.declare(metadata double* %12, metadata !1430, metadata !69), !dbg !1432
  store double 1.000000e-280, double* %12, align 8, !dbg !1432
  call void @llvm.dbg.declare(metadata double* %13, metadata !1433, metadata !69), !dbg !1434
  %53 = load double, double* %8, align 8, !dbg !1435
  %54 = fsub double 1.000000e+00, %53, !dbg !1436
  %55 = load double, double* %8, align 8, !dbg !1437
  %56 = fadd double 1.000000e+00, %55, !dbg !1438
  %57 = fmul double %54, %56, !dbg !1439
  %58 = call double @sqrt(double %57) #5, !dbg !1440
  store double %58, double* %13, align 8, !dbg !1434
  call void @llvm.dbg.declare(metadata double* %14, metadata !1441, metadata !69), !dbg !1442
  %59 = load double, double* %13, align 8, !dbg !1443
  %60 = fdiv double 1.000000e+00, %59, !dbg !1444
  store double %60, double* %14, align 8, !dbg !1442
  call void @llvm.dbg.declare(metadata double* %15, metadata !1445, metadata !69), !dbg !1446
  %61 = load double, double* %8, align 8, !dbg !1447
  %62 = load double, double* %14, align 8, !dbg !1448
  %63 = fmul double %61, %62, !dbg !1449
  store double %63, double* %15, align 8, !dbg !1446
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1450, metadata !69), !dbg !1451
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1452, metadata !69), !dbg !1453
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1454, metadata !69), !dbg !1455
  call void @llvm.dbg.declare(metadata i64* %19, metadata !1456, metadata !69), !dbg !1457
  call void @llvm.dbg.declare(metadata double* %20, metadata !1458, metadata !69), !dbg !1459
  call void @llvm.dbg.declare(metadata double* %21, metadata !1460, metadata !69), !dbg !1461
  call void @llvm.dbg.declare(metadata double* %22, metadata !1462, metadata !69), !dbg !1463
  call void @llvm.dbg.declare(metadata double* %23, metadata !1464, metadata !69), !dbg !1465
  call void @llvm.dbg.declare(metadata double* %24, metadata !1466, metadata !69), !dbg !1467
  call void @llvm.dbg.declare(metadata i64* %25, metadata !1468, metadata !69), !dbg !1469
  %64 = load i64, i64* %7, align 8, !dbg !1470
  %65 = call i64 @gsl_sf_legendre_nlm(i64 %64), !dbg !1471
  store i64 %65, i64* %25, align 8, !dbg !1469
  call void @llvm.dbg.declare(metadata double** %26, metadata !1472, metadata !69), !dbg !1473
  %66 = load i64, i64* %25, align 8, !dbg !1474
  %67 = load double*, double** %10, align 8, !dbg !1475
  %68 = getelementptr inbounds double, double* %67, i64 %66, !dbg !1475
  store double* %68, double** %26, align 8, !dbg !1473
  %69 = load i64, i64* %7, align 8, !dbg !1476
  %70 = load double*, double** %26, align 8, !dbg !1477
  call void @legendre_sqrts(i64 %69, double* %70), !dbg !1478
  store double 1.000000e+00, double* %24, align 8, !dbg !1479
  %71 = load double, double* %8, align 8, !dbg !1480
  store double %71, double* %23, align 8, !dbg !1481
  %72 = load double, double* %24, align 8, !dbg !1482
  %73 = load double*, double** %10, align 8, !dbg !1483
  %74 = getelementptr inbounds double, double* %73, i64 0, !dbg !1483
  store double %72, double* %74, align 8, !dbg !1484
  %75 = load double*, double** %11, align 8, !dbg !1485
  %76 = getelementptr inbounds double, double* %75, i64 0, !dbg !1485
  store double 0.000000e+00, double* %76, align 8, !dbg !1486
  %77 = load i64, i64* %7, align 8, !dbg !1487
  %78 = icmp eq i64 %77, 0, !dbg !1489
  br i1 %78, label %79, label %80, !dbg !1490

; <label>:79:                                     ; preds = %52
  store i32 0, i32* %6, align 4, !dbg !1491
  br label %387, !dbg !1491

; <label>:80:                                     ; preds = %52
  %81 = load double, double* %23, align 8, !dbg !1492
  %82 = load double*, double** %10, align 8, !dbg !1493
  %83 = getelementptr inbounds double, double* %82, i64 1, !dbg !1493
  store double %81, double* %83, align 8, !dbg !1494
  %84 = load double, double* %13, align 8, !dbg !1495
  %85 = fsub double -0.000000e+00, %84, !dbg !1496
  %86 = load double*, double** %11, align 8, !dbg !1497
  %87 = getelementptr inbounds double, double* %86, i64 1, !dbg !1497
  store double %85, double* %87, align 8, !dbg !1498
  store i64 1, i64* %18, align 8, !dbg !1499
  store i64 2, i64* %16, align 8, !dbg !1500
  br label %88, !dbg !1502

; <label>:88:                                     ; preds = %129, %80
  %89 = load i64, i64* %16, align 8, !dbg !1503
  %90 = load i64, i64* %7, align 8, !dbg !1506
  %91 = icmp ule i64 %89, %90, !dbg !1507
  br i1 %91, label %92, label %132, !dbg !1508

; <label>:92:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata double* %27, metadata !1509, metadata !69), !dbg !1511
  %93 = load i64, i64* %16, align 8, !dbg !1512
  %94 = uitofp i64 %93 to double, !dbg !1513
  %95 = fdiv double 1.000000e+00, %94, !dbg !1514
  store double %95, double* %27, align 8, !dbg !1511
  %96 = load i64, i64* %16, align 8, !dbg !1515
  %97 = load i64, i64* %18, align 8, !dbg !1516
  %98 = add i64 %97, %96, !dbg !1516
  store i64 %98, i64* %18, align 8, !dbg !1516
  %99 = load double, double* %27, align 8, !dbg !1517
  %100 = fsub double 2.000000e+00, %99, !dbg !1518
  %101 = load double, double* %8, align 8, !dbg !1519
  %102 = fmul double %100, %101, !dbg !1520
  %103 = load double, double* %23, align 8, !dbg !1521
  %104 = fmul double %102, %103, !dbg !1522
  %105 = load double, double* %27, align 8, !dbg !1523
  %106 = fsub double 1.000000e+00, %105, !dbg !1524
  %107 = load double, double* %24, align 8, !dbg !1525
  %108 = fmul double %106, %107, !dbg !1526
  %109 = fsub double %104, %108, !dbg !1527
  store double %109, double* %20, align 8, !dbg !1528
  %110 = load double, double* %20, align 8, !dbg !1529
  %111 = load i64, i64* %18, align 8, !dbg !1530
  %112 = load double*, double** %10, align 8, !dbg !1531
  %113 = getelementptr inbounds double, double* %112, i64 %111, !dbg !1531
  store double %110, double* %113, align 8, !dbg !1532
  %114 = load double, double* %14, align 8, !dbg !1533
  %115 = load i64, i64* %16, align 8, !dbg !1534
  %116 = uitofp i64 %115 to double, !dbg !1534
  %117 = fmul double %114, %116, !dbg !1535
  %118 = load double, double* %8, align 8, !dbg !1536
  %119 = load double, double* %20, align 8, !dbg !1537
  %120 = fmul double %118, %119, !dbg !1538
  %121 = load double, double* %23, align 8, !dbg !1539
  %122 = fsub double %120, %121, !dbg !1540
  %123 = fmul double %117, %122, !dbg !1541
  %124 = load i64, i64* %18, align 8, !dbg !1542
  %125 = load double*, double** %11, align 8, !dbg !1543
  %126 = getelementptr inbounds double, double* %125, i64 %124, !dbg !1543
  store double %123, double* %126, align 8, !dbg !1544
  %127 = load double, double* %23, align 8, !dbg !1545
  store double %127, double* %24, align 8, !dbg !1546
  %128 = load double, double* %20, align 8, !dbg !1547
  store double %128, double* %23, align 8, !dbg !1548
  br label %129, !dbg !1549

; <label>:129:                                    ; preds = %92
  %130 = load i64, i64* %16, align 8, !dbg !1550
  %131 = add i64 %130, 1, !dbg !1550
  store i64 %131, i64* %16, align 8, !dbg !1550
  br label %88, !dbg !1552, !llvm.loop !1553

; <label>:132:                                    ; preds = %88
  %133 = call double @sqrt(double 2.000000e+00) #5, !dbg !1555
  %134 = fmul double %133, 1.000000e-280, !dbg !1556
  store double %134, double* %21, align 8, !dbg !1557
  store double 1.000000e+280, double* %22, align 8, !dbg !1558
  store i64 0, i64* %19, align 8, !dbg !1559
  store i64 1, i64* %17, align 8, !dbg !1560
  br label %135, !dbg !1562

; <label>:135:                                    ; preds = %340, %132
  %136 = load i64, i64* %17, align 8, !dbg !1563
  %137 = load i64, i64* %7, align 8, !dbg !1566
  %138 = icmp ult i64 %136, %137, !dbg !1567
  br i1 %138, label %139, label %343, !dbg !1568

; <label>:139:                                    ; preds = %135
  %140 = load double, double* %13, align 8, !dbg !1569
  %141 = load double, double* %22, align 8, !dbg !1571
  %142 = fmul double %141, %140, !dbg !1571
  store double %142, double* %22, align 8, !dbg !1571
  %143 = load i64, i64* %17, align 8, !dbg !1572
  %144 = add i64 %143, 1, !dbg !1573
  %145 = load i64, i64* %19, align 8, !dbg !1574
  %146 = add i64 %145, %144, !dbg !1574
  store i64 %146, i64* %19, align 8, !dbg !1574
  %147 = load double, double* %9, align 8, !dbg !1575
  %148 = load i64, i64* %17, align 8, !dbg !1576
  %149 = mul i64 2, %148, !dbg !1577
  %150 = sub i64 %149, 1, !dbg !1578
  %151 = load double*, double** %26, align 8, !dbg !1579
  %152 = getelementptr inbounds double, double* %151, i64 %150, !dbg !1579
  %153 = load double, double* %152, align 8, !dbg !1579
  %154 = fmul double %147, %153, !dbg !1580
  %155 = load i64, i64* %17, align 8, !dbg !1581
  %156 = mul i64 2, %155, !dbg !1582
  %157 = load double*, double** %26, align 8, !dbg !1583
  %158 = getelementptr inbounds double, double* %157, i64 %156, !dbg !1583
  %159 = load double, double* %158, align 8, !dbg !1583
  %160 = fdiv double %154, %159, !dbg !1584
  %161 = load double, double* %21, align 8, !dbg !1585
  %162 = fmul double %161, %160, !dbg !1585
  store double %162, double* %21, align 8, !dbg !1585
  %163 = load double, double* %21, align 8, !dbg !1586
  %164 = load double, double* %22, align 8, !dbg !1587
  %165 = fmul double %163, %164, !dbg !1588
  %166 = load i64, i64* %19, align 8, !dbg !1589
  %167 = load double*, double** %10, align 8, !dbg !1590
  %168 = getelementptr inbounds double, double* %167, i64 %166, !dbg !1590
  store double %165, double* %168, align 8, !dbg !1591
  %169 = load i64, i64* %17, align 8, !dbg !1592
  %170 = uitofp i64 %169 to double, !dbg !1592
  %171 = load double, double* %15, align 8, !dbg !1593
  %172 = fmul double %170, %171, !dbg !1594
  %173 = load i64, i64* %19, align 8, !dbg !1595
  %174 = load double*, double** %10, align 8, !dbg !1596
  %175 = getelementptr inbounds double, double* %174, i64 %173, !dbg !1596
  %176 = load double, double* %175, align 8, !dbg !1596
  %177 = fmul double %172, %176, !dbg !1597
  %178 = load i64, i64* %19, align 8, !dbg !1598
  %179 = load double*, double** %11, align 8, !dbg !1599
  %180 = getelementptr inbounds double, double* %179, i64 %178, !dbg !1599
  store double %177, double* %180, align 8, !dbg !1600
  %181 = load double, double* %21, align 8, !dbg !1601
  store double %181, double* %24, align 8, !dbg !1602
  %182 = load i64, i64* %19, align 8, !dbg !1603
  %183 = load i64, i64* %17, align 8, !dbg !1604
  %184 = add i64 %182, %183, !dbg !1605
  %185 = add i64 %184, 1, !dbg !1606
  store i64 %185, i64* %18, align 8, !dbg !1607
  %186 = load double, double* %8, align 8, !dbg !1608
  %187 = load i64, i64* %17, align 8, !dbg !1609
  %188 = mul i64 2, %187, !dbg !1610
  %189 = add i64 %188, 1, !dbg !1611
  %190 = load double*, double** %26, align 8, !dbg !1612
  %191 = getelementptr inbounds double, double* %190, i64 %189, !dbg !1612
  %192 = load double, double* %191, align 8, !dbg !1612
  %193 = fmul double %186, %192, !dbg !1613
  %194 = load double, double* %24, align 8, !dbg !1614
  %195 = fmul double %193, %194, !dbg !1615
  store double %195, double* %23, align 8, !dbg !1616
  %196 = load double, double* %23, align 8, !dbg !1617
  %197 = load double, double* %22, align 8, !dbg !1618
  %198 = fmul double %196, %197, !dbg !1619
  %199 = load i64, i64* %18, align 8, !dbg !1620
  %200 = load double*, double** %10, align 8, !dbg !1621
  %201 = getelementptr inbounds double, double* %200, i64 %199, !dbg !1621
  store double %198, double* %201, align 8, !dbg !1622
  %202 = load double, double* %14, align 8, !dbg !1623
  %203 = load i64, i64* %17, align 8, !dbg !1624
  %204 = uitofp i64 %203 to double, !dbg !1624
  %205 = fadd double %204, 1.000000e+00, !dbg !1625
  %206 = load double, double* %8, align 8, !dbg !1626
  %207 = fmul double %205, %206, !dbg !1627
  %208 = load i64, i64* %18, align 8, !dbg !1628
  %209 = load double*, double** %10, align 8, !dbg !1629
  %210 = getelementptr inbounds double, double* %209, i64 %208, !dbg !1629
  %211 = load double, double* %210, align 8, !dbg !1629
  %212 = fmul double %207, %211, !dbg !1630
  %213 = load i64, i64* %17, align 8, !dbg !1631
  %214 = mul i64 2, %213, !dbg !1632
  %215 = add i64 %214, 1, !dbg !1633
  %216 = load double*, double** %26, align 8, !dbg !1634
  %217 = getelementptr inbounds double, double* %216, i64 %215, !dbg !1634
  %218 = load double, double* %217, align 8, !dbg !1634
  %219 = load i64, i64* %19, align 8, !dbg !1635
  %220 = load double*, double** %10, align 8, !dbg !1636
  %221 = getelementptr inbounds double, double* %220, i64 %219, !dbg !1636
  %222 = load double, double* %221, align 8, !dbg !1636
  %223 = fmul double %218, %222, !dbg !1637
  %224 = fsub double %212, %223, !dbg !1638
  %225 = fmul double %202, %224, !dbg !1639
  %226 = load i64, i64* %18, align 8, !dbg !1640
  %227 = load double*, double** %11, align 8, !dbg !1641
  %228 = getelementptr inbounds double, double* %227, i64 %226, !dbg !1641
  store double %225, double* %228, align 8, !dbg !1642
  %229 = load i64, i64* %17, align 8, !dbg !1643
  %230 = add i64 %229, 2, !dbg !1645
  store i64 %230, i64* %16, align 8, !dbg !1646
  br label %231, !dbg !1647

; <label>:231:                                    ; preds = %336, %139
  %232 = load i64, i64* %16, align 8, !dbg !1648
  %233 = load i64, i64* %7, align 8, !dbg !1651
  %234 = icmp ule i64 %232, %233, !dbg !1652
  br i1 %234, label %235, label %339, !dbg !1653

; <label>:235:                                    ; preds = %231
  %236 = load i64, i64* %16, align 8, !dbg !1654
  %237 = load i64, i64* %18, align 8, !dbg !1656
  %238 = add i64 %237, %236, !dbg !1656
  store i64 %238, i64* %18, align 8, !dbg !1656
  %239 = load i64, i64* %16, align 8, !dbg !1657
  %240 = mul i64 2, %239, !dbg !1658
  %241 = sub i64 %240, 1, !dbg !1659
  %242 = uitofp i64 %241 to double, !dbg !1660
  %243 = load i64, i64* %16, align 8, !dbg !1661
  %244 = load i64, i64* %17, align 8, !dbg !1662
  %245 = add i64 %243, %244, !dbg !1663
  %246 = load double*, double** %26, align 8, !dbg !1664
  %247 = getelementptr inbounds double, double* %246, i64 %245, !dbg !1664
  %248 = load double, double* %247, align 8, !dbg !1664
  %249 = fdiv double %242, %248, !dbg !1665
  %250 = load i64, i64* %16, align 8, !dbg !1666
  %251 = load i64, i64* %17, align 8, !dbg !1667
  %252 = sub i64 %250, %251, !dbg !1668
  %253 = load double*, double** %26, align 8, !dbg !1669
  %254 = getelementptr inbounds double, double* %253, i64 %252, !dbg !1669
  %255 = load double, double* %254, align 8, !dbg !1669
  %256 = fdiv double %249, %255, !dbg !1670
  %257 = load double, double* %8, align 8, !dbg !1671
  %258 = fmul double %256, %257, !dbg !1672
  %259 = load double, double* %23, align 8, !dbg !1673
  %260 = fmul double %258, %259, !dbg !1674
  %261 = load i64, i64* %16, align 8, !dbg !1675
  %262 = load i64, i64* %17, align 8, !dbg !1676
  %263 = sub i64 %261, %262, !dbg !1677
  %264 = sub i64 %263, 1, !dbg !1678
  %265 = load double*, double** %26, align 8, !dbg !1679
  %266 = getelementptr inbounds double, double* %265, i64 %264, !dbg !1679
  %267 = load double, double* %266, align 8, !dbg !1679
  %268 = load i64, i64* %16, align 8, !dbg !1680
  %269 = load i64, i64* %17, align 8, !dbg !1681
  %270 = add i64 %268, %269, !dbg !1682
  %271 = sub i64 %270, 1, !dbg !1683
  %272 = load double*, double** %26, align 8, !dbg !1684
  %273 = getelementptr inbounds double, double* %272, i64 %271, !dbg !1684
  %274 = load double, double* %273, align 8, !dbg !1684
  %275 = fmul double %267, %274, !dbg !1685
  %276 = load i64, i64* %16, align 8, !dbg !1686
  %277 = load i64, i64* %17, align 8, !dbg !1687
  %278 = add i64 %276, %277, !dbg !1688
  %279 = load double*, double** %26, align 8, !dbg !1689
  %280 = getelementptr inbounds double, double* %279, i64 %278, !dbg !1689
  %281 = load double, double* %280, align 8, !dbg !1689
  %282 = fdiv double %275, %281, !dbg !1690
  %283 = load i64, i64* %16, align 8, !dbg !1691
  %284 = load i64, i64* %17, align 8, !dbg !1692
  %285 = sub i64 %283, %284, !dbg !1693
  %286 = load double*, double** %26, align 8, !dbg !1694
  %287 = getelementptr inbounds double, double* %286, i64 %285, !dbg !1694
  %288 = load double, double* %287, align 8, !dbg !1694
  %289 = fdiv double %282, %288, !dbg !1695
  %290 = load double, double* %24, align 8, !dbg !1696
  %291 = fmul double %289, %290, !dbg !1697
  %292 = fsub double %260, %291, !dbg !1698
  store double %292, double* %20, align 8, !dbg !1699
  %293 = load double, double* %20, align 8, !dbg !1700
  %294 = load double, double* %22, align 8, !dbg !1701
  %295 = fmul double %293, %294, !dbg !1702
  %296 = load i64, i64* %18, align 8, !dbg !1703
  %297 = load double*, double** %10, align 8, !dbg !1704
  %298 = getelementptr inbounds double, double* %297, i64 %296, !dbg !1704
  store double %295, double* %298, align 8, !dbg !1705
  %299 = load double, double* %14, align 8, !dbg !1706
  %300 = load i64, i64* %16, align 8, !dbg !1707
  %301 = uitofp i64 %300 to double, !dbg !1707
  %302 = load double, double* %8, align 8, !dbg !1708
  %303 = fmul double %301, %302, !dbg !1709
  %304 = load i64, i64* %18, align 8, !dbg !1710
  %305 = load double*, double** %10, align 8, !dbg !1711
  %306 = getelementptr inbounds double, double* %305, i64 %304, !dbg !1711
  %307 = load double, double* %306, align 8, !dbg !1711
  %308 = fmul double %303, %307, !dbg !1712
  %309 = load i64, i64* %16, align 8, !dbg !1713
  %310 = load i64, i64* %17, align 8, !dbg !1714
  %311 = add i64 %309, %310, !dbg !1715
  %312 = load double*, double** %26, align 8, !dbg !1716
  %313 = getelementptr inbounds double, double* %312, i64 %311, !dbg !1716
  %314 = load double, double* %313, align 8, !dbg !1716
  %315 = load i64, i64* %16, align 8, !dbg !1717
  %316 = load i64, i64* %17, align 8, !dbg !1718
  %317 = sub i64 %315, %316, !dbg !1719
  %318 = load double*, double** %26, align 8, !dbg !1720
  %319 = getelementptr inbounds double, double* %318, i64 %317, !dbg !1720
  %320 = load double, double* %319, align 8, !dbg !1720
  %321 = fmul double %314, %320, !dbg !1721
  %322 = load i64, i64* %18, align 8, !dbg !1722
  %323 = load i64, i64* %16, align 8, !dbg !1723
  %324 = sub i64 %322, %323, !dbg !1724
  %325 = load double*, double** %10, align 8, !dbg !1725
  %326 = getelementptr inbounds double, double* %325, i64 %324, !dbg !1725
  %327 = load double, double* %326, align 8, !dbg !1725
  %328 = fmul double %321, %327, !dbg !1726
  %329 = fsub double %308, %328, !dbg !1727
  %330 = fmul double %299, %329, !dbg !1728
  %331 = load i64, i64* %18, align 8, !dbg !1729
  %332 = load double*, double** %11, align 8, !dbg !1730
  %333 = getelementptr inbounds double, double* %332, i64 %331, !dbg !1730
  store double %330, double* %333, align 8, !dbg !1731
  %334 = load double, double* %23, align 8, !dbg !1732
  store double %334, double* %24, align 8, !dbg !1733
  %335 = load double, double* %20, align 8, !dbg !1734
  store double %335, double* %23, align 8, !dbg !1735
  br label %336, !dbg !1736

; <label>:336:                                    ; preds = %235
  %337 = load i64, i64* %16, align 8, !dbg !1737
  %338 = add i64 %337, 1, !dbg !1737
  store i64 %338, i64* %16, align 8, !dbg !1737
  br label %231, !dbg !1739, !llvm.loop !1740

; <label>:339:                                    ; preds = %231
  br label %340, !dbg !1742

; <label>:340:                                    ; preds = %339
  %341 = load i64, i64* %17, align 8, !dbg !1743
  %342 = add i64 %341, 1, !dbg !1743
  store i64 %342, i64* %17, align 8, !dbg !1743
  br label %135, !dbg !1745, !llvm.loop !1746

; <label>:343:                                    ; preds = %135
  %344 = load double, double* %13, align 8, !dbg !1748
  %345 = load double, double* %22, align 8, !dbg !1749
  %346 = fmul double %345, %344, !dbg !1749
  store double %346, double* %22, align 8, !dbg !1749
  %347 = load i64, i64* %17, align 8, !dbg !1750
  %348 = add i64 %347, 1, !dbg !1751
  %349 = load i64, i64* %19, align 8, !dbg !1752
  %350 = add i64 %349, %348, !dbg !1752
  store i64 %350, i64* %19, align 8, !dbg !1752
  %351 = load double, double* %9, align 8, !dbg !1753
  %352 = load i64, i64* %7, align 8, !dbg !1754
  %353 = mul i64 2, %352, !dbg !1755
  %354 = sub i64 %353, 1, !dbg !1756
  %355 = load double*, double** %26, align 8, !dbg !1757
  %356 = getelementptr inbounds double, double* %355, i64 %354, !dbg !1757
  %357 = load double, double* %356, align 8, !dbg !1757
  %358 = fmul double %351, %357, !dbg !1758
  %359 = load i64, i64* %7, align 8, !dbg !1759
  %360 = mul i64 2, %359, !dbg !1760
  %361 = load double*, double** %26, align 8, !dbg !1761
  %362 = getelementptr inbounds double, double* %361, i64 %360, !dbg !1761
  %363 = load double, double* %362, align 8, !dbg !1761
  %364 = fdiv double %358, %363, !dbg !1762
  %365 = load double, double* %21, align 8, !dbg !1763
  %366 = fmul double %365, %364, !dbg !1763
  store double %366, double* %21, align 8, !dbg !1763
  %367 = load double, double* %21, align 8, !dbg !1764
  %368 = load double, double* %22, align 8, !dbg !1765
  %369 = fmul double %367, %368, !dbg !1766
  %370 = load i64, i64* %19, align 8, !dbg !1767
  %371 = load double*, double** %10, align 8, !dbg !1768
  %372 = getelementptr inbounds double, double* %371, i64 %370, !dbg !1768
  store double %369, double* %372, align 8, !dbg !1769
  %373 = load i64, i64* %7, align 8, !dbg !1770
  %374 = uitofp i64 %373 to double, !dbg !1770
  %375 = load double, double* %15, align 8, !dbg !1771
  %376 = fmul double %374, %375, !dbg !1772
  %377 = load i64, i64* %19, align 8, !dbg !1773
  %378 = load double*, double** %10, align 8, !dbg !1774
  %379 = getelementptr inbounds double, double* %378, i64 %377, !dbg !1774
  %380 = load double, double* %379, align 8, !dbg !1774
  %381 = fmul double %376, %380, !dbg !1775
  %382 = load i64, i64* %19, align 8, !dbg !1776
  %383 = load double*, double** %11, align 8, !dbg !1777
  %384 = getelementptr inbounds double, double* %383, i64 %382, !dbg !1777
  store double %381, double* %384, align 8, !dbg !1778
  store i32 0, i32* %6, align 4, !dbg !1779
  br label %387, !dbg !1779

; <label>:385:                                    ; preds = %51
  br label %386

; <label>:386:                                    ; preds = %385, %42
  br label %387

; <label>:387:                                    ; preds = %34, %41, %50, %79, %343, %386, %35
  %388 = load i32, i32* %6, align 4, !dbg !1780
  ret i32 %388, !dbg !1780
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_deriv_alt_array(i32, i64, double, double*, double*) #0 !dbg !1781 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1782, metadata !69), !dbg !1783
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1784, metadata !69), !dbg !1785
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1786, metadata !69), !dbg !1787
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !1788, metadata !69), !dbg !1789
  store double* %4, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !1790, metadata !69), !dbg !1789
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1791, metadata !69), !dbg !1792
  %12 = load i32, i32* %6, align 4, !dbg !1793
  %13 = load i64, i64* %7, align 8, !dbg !1794
  %14 = load double, double* %8, align 8, !dbg !1795
  %15 = load double*, double** %9, align 8, !dbg !1796
  %16 = load double*, double** %10, align 8, !dbg !1796
  %17 = call i32 @gsl_sf_legendre_deriv_alt_array_e(i32 %12, i64 %13, double %14, double 1.000000e+00, double* %15, double* %16), !dbg !1797
  store i32 %17, i32* %11, align 4, !dbg !1792
  %18 = load i32, i32* %11, align 4, !dbg !1798
  ret i32 %18, !dbg !1799
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_deriv_alt_array_e(i32, i64, double, double, double*, double*) #0 !dbg !1800 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca double*, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1801, metadata !69), !dbg !1802
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1803, metadata !69), !dbg !1804
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !1805, metadata !69), !dbg !1806
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !1807, metadata !69), !dbg !1808
  store double* %4, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !1809, metadata !69), !dbg !1810
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !1811, metadata !69), !dbg !1810
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1812, metadata !69), !dbg !1813
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1814, metadata !69), !dbg !1815
  %22 = load i64, i64* %9, align 8, !dbg !1816
  %23 = call i64 @gsl_sf_legendre_nlm(i64 %22), !dbg !1817
  store i64 %23, i64* %15, align 8, !dbg !1815
  call void @llvm.dbg.declare(metadata double* %16, metadata !1818, metadata !69), !dbg !1819
  store double 0.000000e+00, double* %16, align 8, !dbg !1819
  call void @llvm.dbg.declare(metadata double* %17, metadata !1820, metadata !69), !dbg !1821
  store double 0.000000e+00, double* %17, align 8, !dbg !1821
  %24 = load i32, i32* %8, align 4, !dbg !1822
  %25 = icmp eq i32 %24, 3, !dbg !1824
  br i1 %25, label %26, label %33, !dbg !1825

; <label>:26:                                     ; preds = %6
  %27 = load i64, i64* %9, align 8, !dbg !1826
  %28 = load double, double* %10, align 8, !dbg !1828
  %29 = load double, double* %11, align 8, !dbg !1829
  %30 = load double*, double** %12, align 8, !dbg !1830
  %31 = load double*, double** %13, align 8, !dbg !1830
  %32 = call i32 @legendre_deriv_alt_array_none_e(i64 %27, double %28, double %29, double* %30, double* %31), !dbg !1831
  store i32 %32, i32* %14, align 4, !dbg !1832
  br label %40, !dbg !1833

; <label>:33:                                     ; preds = %6
  %34 = load i64, i64* %9, align 8, !dbg !1834
  %35 = load double, double* %10, align 8, !dbg !1836
  %36 = load double, double* %11, align 8, !dbg !1837
  %37 = load double*, double** %12, align 8, !dbg !1838
  %38 = load double*, double** %13, align 8, !dbg !1838
  %39 = call i32 @legendre_deriv_alt_array_schmidt_e(i64 %34, double %35, double %36, double* %37, double* %38), !dbg !1839
  store i32 %39, i32* %14, align 4, !dbg !1840
  br label %40

; <label>:40:                                     ; preds = %33, %26
  %41 = load i32, i32* %8, align 4, !dbg !1841
  %42 = icmp eq i32 %41, 0, !dbg !1843
  br i1 %42, label %46, label %43, !dbg !1844

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %8, align 4, !dbg !1845
  %45 = icmp eq i32 %44, 3, !dbg !1847
  br i1 %45, label %46, label %48, !dbg !1848

; <label>:46:                                     ; preds = %43, %40
  %47 = load i32, i32* %14, align 4, !dbg !1849
  store i32 %47, i32* %7, align 4, !dbg !1851
  br label %141, !dbg !1851

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %8, align 4, !dbg !1852
  %50 = icmp eq i32 %49, 1, !dbg !1854
  br i1 %50, label %51, label %56, !dbg !1855

; <label>:51:                                     ; preds = %48
  %52 = call double @sqrt(double 0x402921FB54442D18) #5, !dbg !1856
  %53 = fdiv double 1.000000e+00, %52, !dbg !1858
  store double %53, double* %16, align 8, !dbg !1859
  %54 = call double @sqrt(double 0x403921FB54442D18) #5, !dbg !1860
  %55 = fdiv double 1.000000e+00, %54, !dbg !1861
  store double %55, double* %17, align 8, !dbg !1862
  br label %65, !dbg !1863

; <label>:56:                                     ; preds = %48
  %57 = load i32, i32* %8, align 4, !dbg !1864
  %58 = icmp eq i32 %57, 2, !dbg !1866
  br i1 %58, label %59, label %64, !dbg !1867

; <label>:59:                                     ; preds = %56
  %60 = call double @sqrt(double 2.000000e+00) #5, !dbg !1868
  %61 = fdiv double 1.000000e+00, %60, !dbg !1870
  store double %61, double* %16, align 8, !dbg !1871
  %62 = call double @sqrt(double 4.000000e+00) #5, !dbg !1872
  %63 = fdiv double 1.000000e+00, %62, !dbg !1873
  store double %63, double* %17, align 8, !dbg !1874
  br label %64, !dbg !1875

; <label>:64:                                     ; preds = %59, %56
  br label %65

; <label>:65:                                     ; preds = %64, %51
  br label %66

; <label>:66:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1876, metadata !69), !dbg !1878
  call void @llvm.dbg.declare(metadata i64* %19, metadata !1879, metadata !69), !dbg !1880
  call void @llvm.dbg.declare(metadata i64* %20, metadata !1881, metadata !69), !dbg !1882
  store i64 1, i64* %20, align 8, !dbg !1882
  call void @llvm.dbg.declare(metadata double** %21, metadata !1883, metadata !69), !dbg !1884
  %67 = load i64, i64* %15, align 8, !dbg !1885
  %68 = load double*, double** %12, align 8, !dbg !1886
  %69 = getelementptr inbounds double, double* %68, i64 %67, !dbg !1886
  store double* %69, double** %21, align 8, !dbg !1884
  store i64 0, i64* %18, align 8, !dbg !1887
  br label %70, !dbg !1889

; <label>:70:                                     ; preds = %136, %66
  %71 = load i64, i64* %18, align 8, !dbg !1890
  %72 = load i64, i64* %9, align 8, !dbg !1893
  %73 = icmp ule i64 %71, %72, !dbg !1894
  br i1 %73, label %74, label %139, !dbg !1895

; <label>:74:                                     ; preds = %70
  %75 = load i64, i64* %20, align 8, !dbg !1896
  %76 = load double*, double** %21, align 8, !dbg !1898
  %77 = getelementptr inbounds double, double* %76, i64 %75, !dbg !1898
  %78 = load double, double* %77, align 8, !dbg !1898
  %79 = load double, double* %16, align 8, !dbg !1899
  %80 = fmul double %78, %79, !dbg !1900
  %81 = load i64, i64* %18, align 8, !dbg !1901
  %82 = call i64 @gsl_sf_legendre_array_index(i64 %81, i64 0), !dbg !1902
  %83 = load double*, double** %12, align 8, !dbg !1903
  %84 = getelementptr inbounds double, double* %83, i64 %82, !dbg !1903
  %85 = load double, double* %84, align 8, !dbg !1904
  %86 = fmul double %85, %80, !dbg !1904
  store double %86, double* %84, align 8, !dbg !1904
  %87 = load i64, i64* %20, align 8, !dbg !1905
  %88 = load double*, double** %21, align 8, !dbg !1906
  %89 = getelementptr inbounds double, double* %88, i64 %87, !dbg !1906
  %90 = load double, double* %89, align 8, !dbg !1906
  %91 = load double, double* %16, align 8, !dbg !1907
  %92 = fmul double %90, %91, !dbg !1908
  %93 = load i64, i64* %18, align 8, !dbg !1909
  %94 = call i64 @gsl_sf_legendre_array_index(i64 %93, i64 0), !dbg !1910
  %95 = load double*, double** %13, align 8, !dbg !1911
  %96 = getelementptr inbounds double, double* %95, i64 %94, !dbg !1911
  %97 = load double, double* %96, align 8, !dbg !1912
  %98 = fmul double %97, %92, !dbg !1912
  store double %98, double* %96, align 8, !dbg !1912
  store i64 1, i64* %19, align 8, !dbg !1913
  br label %99, !dbg !1915

; <label>:99:                                     ; preds = %130, %74
  %100 = load i64, i64* %19, align 8, !dbg !1916
  %101 = load i64, i64* %18, align 8, !dbg !1919
  %102 = icmp ule i64 %100, %101, !dbg !1920
  br i1 %102, label %103, label %133, !dbg !1921

; <label>:103:                                    ; preds = %99
  %104 = load i64, i64* %20, align 8, !dbg !1922
  %105 = load double*, double** %21, align 8, !dbg !1924
  %106 = getelementptr inbounds double, double* %105, i64 %104, !dbg !1924
  %107 = load double, double* %106, align 8, !dbg !1924
  %108 = load double, double* %17, align 8, !dbg !1925
  %109 = fmul double %107, %108, !dbg !1926
  %110 = load i64, i64* %18, align 8, !dbg !1927
  %111 = load i64, i64* %19, align 8, !dbg !1928
  %112 = call i64 @gsl_sf_legendre_array_index(i64 %110, i64 %111), !dbg !1929
  %113 = load double*, double** %12, align 8, !dbg !1930
  %114 = getelementptr inbounds double, double* %113, i64 %112, !dbg !1930
  %115 = load double, double* %114, align 8, !dbg !1931
  %116 = fmul double %115, %109, !dbg !1931
  store double %116, double* %114, align 8, !dbg !1931
  %117 = load i64, i64* %20, align 8, !dbg !1932
  %118 = load double*, double** %21, align 8, !dbg !1933
  %119 = getelementptr inbounds double, double* %118, i64 %117, !dbg !1933
  %120 = load double, double* %119, align 8, !dbg !1933
  %121 = load double, double* %17, align 8, !dbg !1934
  %122 = fmul double %120, %121, !dbg !1935
  %123 = load i64, i64* %18, align 8, !dbg !1936
  %124 = load i64, i64* %19, align 8, !dbg !1937
  %125 = call i64 @gsl_sf_legendre_array_index(i64 %123, i64 %124), !dbg !1938
  %126 = load double*, double** %13, align 8, !dbg !1939
  %127 = getelementptr inbounds double, double* %126, i64 %125, !dbg !1939
  %128 = load double, double* %127, align 8, !dbg !1940
  %129 = fmul double %128, %122, !dbg !1940
  store double %129, double* %127, align 8, !dbg !1940
  br label %130, !dbg !1941

; <label>:130:                                    ; preds = %103
  %131 = load i64, i64* %19, align 8, !dbg !1942
  %132 = add i64 %131, 1, !dbg !1942
  store i64 %132, i64* %19, align 8, !dbg !1942
  br label %99, !dbg !1944, !llvm.loop !1945

; <label>:133:                                    ; preds = %99
  %134 = load i64, i64* %20, align 8, !dbg !1947
  %135 = add i64 %134, 2, !dbg !1947
  store i64 %135, i64* %20, align 8, !dbg !1947
  br label %136, !dbg !1948

; <label>:136:                                    ; preds = %133
  %137 = load i64, i64* %18, align 8, !dbg !1949
  %138 = add i64 %137, 1, !dbg !1949
  store i64 %138, i64* %18, align 8, !dbg !1949
  br label %70, !dbg !1951, !llvm.loop !1952

; <label>:139:                                    ; preds = %70
  %140 = load i32, i32* %14, align 4, !dbg !1954
  store i32 %140, i32* %7, align 4, !dbg !1955
  br label %141, !dbg !1955

; <label>:141:                                    ; preds = %139, %46
  %142 = load i32, i32* %7, align 4, !dbg !1956
  ret i32 %142, !dbg !1956
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_deriv_alt_array_none_e(i64, double, double, double*, double*) #0 !dbg !1957 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  store i64 %0, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1958, metadata !69), !dbg !1959
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1960, metadata !69), !dbg !1961
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1962, metadata !69), !dbg !1963
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !1964, metadata !69), !dbg !1965
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !1966, metadata !69), !dbg !1965
  %24 = load double, double* %8, align 8, !dbg !1967
  %25 = fcmp ogt double %24, 1.000000e+00, !dbg !1969
  br i1 %25, label %29, label %26, !dbg !1970

; <label>:26:                                     ; preds = %5
  %27 = load double, double* %8, align 8, !dbg !1971
  %28 = fcmp olt double %27, -1.000000e+00, !dbg !1973
  br i1 %28, label %29, label %32, !dbg !1974

; <label>:29:                                     ; preds = %26, %5
  br label %30, !dbg !1975, !llvm.loop !1977

; <label>:30:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 430, i32 1), !dbg !1978
  store i32 1, i32* %6, align 4, !dbg !1978
  br label %289, !dbg !1978
                                                  ; No predecessors!
  br label %289, !dbg !1981

; <label>:32:                                     ; preds = %26
  %33 = load double, double* %8, align 8, !dbg !1982
  %34 = call double @fabs(double %33) #1, !dbg !1984
  %35 = fcmp oeq double %34, 1.000000e+00, !dbg !1985
  br i1 %35, label %36, label %39, !dbg !1986

; <label>:36:                                     ; preds = %32
  br label %37, !dbg !1987, !llvm.loop !1989

; <label>:37:                                     ; preds = %36
  call void @gsl_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 435, i32 1), !dbg !1990
  store i32 1, i32* %6, align 4, !dbg !1990
  br label %289, !dbg !1990
                                                  ; No predecessors!
  br label %288, !dbg !1993

; <label>:39:                                     ; preds = %32
  %40 = load double, double* %9, align 8, !dbg !1994
  %41 = fcmp une double %40, 1.000000e+00, !dbg !1996
  br i1 %41, label %42, label %48, !dbg !1997

; <label>:42:                                     ; preds = %39
  %43 = load double, double* %9, align 8, !dbg !1998
  %44 = fcmp une double %43, -1.000000e+00, !dbg !2000
  br i1 %44, label %45, label %48, !dbg !2001

; <label>:45:                                     ; preds = %42
  br label %46, !dbg !2002, !llvm.loop !2004

; <label>:46:                                     ; preds = %45
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 440, i32 1), !dbg !2005
  store i32 1, i32* %6, align 4, !dbg !2005
  br label %289, !dbg !2005
                                                  ; No predecessors!
  br label %287, !dbg !2008

; <label>:48:                                     ; preds = %42, %39
  call void @llvm.dbg.declare(metadata double* %12, metadata !2009, metadata !69), !dbg !2011
  %49 = load double, double* %8, align 8, !dbg !2012
  %50 = fsub double 1.000000e+00, %49, !dbg !2013
  %51 = load double, double* %8, align 8, !dbg !2014
  %52 = fadd double 1.000000e+00, %51, !dbg !2015
  %53 = fmul double %50, %52, !dbg !2016
  %54 = call double @sqrt(double %53) #5, !dbg !2017
  store double %54, double* %12, align 8, !dbg !2011
  call void @llvm.dbg.declare(metadata double* %13, metadata !2018, metadata !69), !dbg !2019
  %55 = load double, double* %12, align 8, !dbg !2020
  %56 = fdiv double 1.000000e+00, %55, !dbg !2021
  store double %56, double* %13, align 8, !dbg !2019
  call void @llvm.dbg.declare(metadata double* %14, metadata !2022, metadata !69), !dbg !2023
  %57 = load double, double* %8, align 8, !dbg !2024
  %58 = load double, double* %13, align 8, !dbg !2025
  %59 = fmul double %57, %58, !dbg !2026
  store double %59, double* %14, align 8, !dbg !2023
  call void @llvm.dbg.declare(metadata i64* %15, metadata !2027, metadata !69), !dbg !2028
  call void @llvm.dbg.declare(metadata i64* %16, metadata !2029, metadata !69), !dbg !2030
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2031, metadata !69), !dbg !2032
  call void @llvm.dbg.declare(metadata i64* %18, metadata !2033, metadata !69), !dbg !2034
  call void @llvm.dbg.declare(metadata double* %19, metadata !2035, metadata !69), !dbg !2036
  call void @llvm.dbg.declare(metadata double* %20, metadata !2037, metadata !69), !dbg !2038
  call void @llvm.dbg.declare(metadata double* %21, metadata !2039, metadata !69), !dbg !2040
  call void @llvm.dbg.declare(metadata double* %22, metadata !2041, metadata !69), !dbg !2042
  call void @llvm.dbg.declare(metadata double* %23, metadata !2043, metadata !69), !dbg !2044
  store double 1.000000e+00, double* %22, align 8, !dbg !2045
  %60 = load double, double* %8, align 8, !dbg !2046
  store double %60, double* %21, align 8, !dbg !2047
  %61 = load double, double* %22, align 8, !dbg !2048
  %62 = load double*, double** %10, align 8, !dbg !2049
  %63 = getelementptr inbounds double, double* %62, i64 0, !dbg !2049
  store double %61, double* %63, align 8, !dbg !2050
  %64 = load double*, double** %11, align 8, !dbg !2051
  %65 = getelementptr inbounds double, double* %64, i64 0, !dbg !2051
  store double 0.000000e+00, double* %65, align 8, !dbg !2052
  %66 = load i64, i64* %7, align 8, !dbg !2053
  %67 = icmp eq i64 %66, 0, !dbg !2055
  br i1 %67, label %68, label %69, !dbg !2056

; <label>:68:                                     ; preds = %48
  store i32 0, i32* %6, align 4, !dbg !2057
  br label %289, !dbg !2057

; <label>:69:                                     ; preds = %48
  %70 = load double, double* %21, align 8, !dbg !2058
  %71 = load double*, double** %10, align 8, !dbg !2059
  %72 = getelementptr inbounds double, double* %71, i64 1, !dbg !2059
  store double %70, double* %72, align 8, !dbg !2060
  %73 = load double, double* %12, align 8, !dbg !2061
  %74 = fsub double -0.000000e+00, %73, !dbg !2062
  %75 = load double*, double** %11, align 8, !dbg !2063
  %76 = getelementptr inbounds double, double* %75, i64 1, !dbg !2063
  store double %74, double* %76, align 8, !dbg !2064
  store i64 1, i64* %17, align 8, !dbg !2065
  store i64 2, i64* %15, align 8, !dbg !2066
  br label %77, !dbg !2068

; <label>:77:                                     ; preds = %122, %69
  %78 = load i64, i64* %15, align 8, !dbg !2069
  %79 = load i64, i64* %7, align 8, !dbg !2072
  %80 = icmp ule i64 %78, %79, !dbg !2073
  br i1 %80, label %81, label %125, !dbg !2074

; <label>:81:                                     ; preds = %77
  %82 = load i64, i64* %15, align 8, !dbg !2075
  %83 = load i64, i64* %17, align 8, !dbg !2077
  %84 = add i64 %83, %82, !dbg !2077
  store i64 %84, i64* %17, align 8, !dbg !2077
  %85 = load i64, i64* %15, align 8, !dbg !2078
  %86 = mul i64 2, %85, !dbg !2079
  %87 = sub i64 %86, 1, !dbg !2080
  %88 = uitofp i64 %87 to double, !dbg !2081
  %89 = load double, double* %8, align 8, !dbg !2082
  %90 = fmul double %88, %89, !dbg !2083
  %91 = load double, double* %21, align 8, !dbg !2084
  %92 = fmul double %90, %91, !dbg !2085
  %93 = load i64, i64* %15, align 8, !dbg !2086
  %94 = sub i64 %93, 1, !dbg !2087
  %95 = uitofp i64 %94 to double, !dbg !2088
  %96 = load double, double* %22, align 8, !dbg !2089
  %97 = fmul double %95, %96, !dbg !2090
  %98 = fsub double %92, %97, !dbg !2091
  %99 = load i64, i64* %15, align 8, !dbg !2092
  %100 = uitofp i64 %99 to double, !dbg !2093
  %101 = fdiv double %98, %100, !dbg !2094
  store double %101, double* %19, align 8, !dbg !2095
  %102 = load double, double* %19, align 8, !dbg !2096
  %103 = load i64, i64* %17, align 8, !dbg !2097
  %104 = load double*, double** %10, align 8, !dbg !2098
  %105 = getelementptr inbounds double, double* %104, i64 %103, !dbg !2098
  store double %102, double* %105, align 8, !dbg !2099
  %106 = load i64, i64* %15, align 8, !dbg !2100
  %107 = uitofp i64 %106 to double, !dbg !2101
  %108 = fsub double -0.000000e+00, %107, !dbg !2102
  %109 = load double, double* %21, align 8, !dbg !2103
  %110 = load double, double* %8, align 8, !dbg !2104
  %111 = load double, double* %19, align 8, !dbg !2105
  %112 = fmul double %110, %111, !dbg !2106
  %113 = fsub double %109, %112, !dbg !2107
  %114 = fmul double %108, %113, !dbg !2108
  %115 = load double, double* %13, align 8, !dbg !2109
  %116 = fmul double %114, %115, !dbg !2110
  %117 = load i64, i64* %17, align 8, !dbg !2111
  %118 = load double*, double** %11, align 8, !dbg !2112
  %119 = getelementptr inbounds double, double* %118, i64 %117, !dbg !2112
  store double %116, double* %119, align 8, !dbg !2113
  %120 = load double, double* %21, align 8, !dbg !2114
  store double %120, double* %22, align 8, !dbg !2115
  %121 = load double, double* %19, align 8, !dbg !2116
  store double %121, double* %21, align 8, !dbg !2117
  br label %122, !dbg !2118

; <label>:122:                                    ; preds = %81
  %123 = load i64, i64* %15, align 8, !dbg !2119
  %124 = add i64 %123, 1, !dbg !2119
  store i64 %124, i64* %15, align 8, !dbg !2119
  br label %77, !dbg !2121, !llvm.loop !2122

; <label>:125:                                    ; preds = %77
  store double 1.000000e+00, double* %20, align 8, !dbg !2124
  store double -1.000000e+00, double* %23, align 8, !dbg !2125
  store i64 0, i64* %18, align 8, !dbg !2126
  store i64 1, i64* %16, align 8, !dbg !2127
  br label %126, !dbg !2129

; <label>:126:                                    ; preds = %255, %125
  %127 = load i64, i64* %16, align 8, !dbg !2130
  %128 = load i64, i64* %7, align 8, !dbg !2133
  %129 = sub i64 %128, 1, !dbg !2134
  %130 = icmp ule i64 %127, %129, !dbg !2135
  br i1 %130, label %131, label %258, !dbg !2136

; <label>:131:                                    ; preds = %126
  %132 = load i64, i64* %16, align 8, !dbg !2137
  %133 = add i64 %132, 1, !dbg !2139
  %134 = load i64, i64* %18, align 8, !dbg !2140
  %135 = add i64 %134, %133, !dbg !2140
  store i64 %135, i64* %18, align 8, !dbg !2140
  %136 = load double, double* %23, align 8, !dbg !2141
  %137 = fadd double %136, 2.000000e+00, !dbg !2141
  store double %137, double* %23, align 8, !dbg !2141
  %138 = load double, double* %9, align 8, !dbg !2142
  %139 = load double, double* %12, align 8, !dbg !2143
  %140 = fmul double %138, %139, !dbg !2144
  %141 = load double, double* %23, align 8, !dbg !2145
  %142 = fmul double %140, %141, !dbg !2146
  %143 = load double, double* %20, align 8, !dbg !2147
  %144 = fmul double %143, %142, !dbg !2147
  store double %144, double* %20, align 8, !dbg !2147
  %145 = load double, double* %20, align 8, !dbg !2148
  %146 = load i64, i64* %18, align 8, !dbg !2149
  %147 = load double*, double** %10, align 8, !dbg !2150
  %148 = getelementptr inbounds double, double* %147, i64 %146, !dbg !2150
  store double %145, double* %148, align 8, !dbg !2151
  %149 = load i64, i64* %16, align 8, !dbg !2152
  %150 = uitofp i64 %149 to double, !dbg !2152
  %151 = load double, double* %14, align 8, !dbg !2153
  %152 = fmul double %150, %151, !dbg !2154
  %153 = load double, double* %20, align 8, !dbg !2155
  %154 = fmul double %152, %153, !dbg !2156
  %155 = load i64, i64* %18, align 8, !dbg !2157
  %156 = load double*, double** %11, align 8, !dbg !2158
  %157 = getelementptr inbounds double, double* %156, i64 %155, !dbg !2158
  store double %154, double* %157, align 8, !dbg !2159
  %158 = load double, double* %20, align 8, !dbg !2160
  store double %158, double* %22, align 8, !dbg !2161
  %159 = load i64, i64* %18, align 8, !dbg !2162
  %160 = load i64, i64* %16, align 8, !dbg !2163
  %161 = add i64 %159, %160, !dbg !2164
  %162 = add i64 %161, 1, !dbg !2165
  store i64 %162, i64* %17, align 8, !dbg !2166
  %163 = load double, double* %8, align 8, !dbg !2167
  %164 = load double, double* %20, align 8, !dbg !2168
  %165 = fmul double %163, %164, !dbg !2169
  %166 = load i64, i64* %16, align 8, !dbg !2170
  %167 = mul i64 2, %166, !dbg !2171
  %168 = add i64 %167, 1, !dbg !2172
  %169 = uitofp i64 %168 to double, !dbg !2173
  %170 = fmul double %165, %169, !dbg !2174
  store double %170, double* %21, align 8, !dbg !2175
  %171 = load double, double* %21, align 8, !dbg !2176
  %172 = load i64, i64* %17, align 8, !dbg !2177
  %173 = load double*, double** %10, align 8, !dbg !2178
  %174 = getelementptr inbounds double, double* %173, i64 %172, !dbg !2178
  store double %171, double* %174, align 8, !dbg !2179
  %175 = load double, double* %13, align 8, !dbg !2180
  %176 = fsub double -0.000000e+00, %175, !dbg !2181
  %177 = load i64, i64* %16, align 8, !dbg !2182
  %178 = mul i64 2, %177, !dbg !2183
  %179 = add i64 %178, 1, !dbg !2184
  %180 = uitofp i64 %179 to double, !dbg !2185
  %181 = load double, double* %20, align 8, !dbg !2186
  %182 = fmul double %180, %181, !dbg !2187
  %183 = load i64, i64* %16, align 8, !dbg !2188
  %184 = add i64 %183, 1, !dbg !2189
  %185 = uitofp i64 %184 to double, !dbg !2190
  %186 = load double, double* %8, align 8, !dbg !2191
  %187 = fmul double %185, %186, !dbg !2192
  %188 = load double, double* %21, align 8, !dbg !2193
  %189 = fmul double %187, %188, !dbg !2194
  %190 = fsub double %182, %189, !dbg !2195
  %191 = fmul double %176, %190, !dbg !2196
  %192 = load i64, i64* %17, align 8, !dbg !2197
  %193 = load double*, double** %11, align 8, !dbg !2198
  %194 = getelementptr inbounds double, double* %193, i64 %192, !dbg !2198
  store double %191, double* %194, align 8, !dbg !2199
  %195 = load i64, i64* %16, align 8, !dbg !2200
  %196 = add i64 %195, 2, !dbg !2202
  store i64 %196, i64* %15, align 8, !dbg !2203
  br label %197, !dbg !2204

; <label>:197:                                    ; preds = %251, %131
  %198 = load i64, i64* %15, align 8, !dbg !2205
  %199 = load i64, i64* %7, align 8, !dbg !2208
  %200 = icmp ule i64 %198, %199, !dbg !2209
  br i1 %200, label %201, label %254, !dbg !2210

; <label>:201:                                    ; preds = %197
  %202 = load i64, i64* %15, align 8, !dbg !2211
  %203 = load i64, i64* %17, align 8, !dbg !2213
  %204 = add i64 %203, %202, !dbg !2213
  store i64 %204, i64* %17, align 8, !dbg !2213
  %205 = load i64, i64* %15, align 8, !dbg !2214
  %206 = mul i64 2, %205, !dbg !2215
  %207 = sub i64 %206, 1, !dbg !2216
  %208 = uitofp i64 %207 to double, !dbg !2217
  %209 = load double, double* %8, align 8, !dbg !2218
  %210 = fmul double %208, %209, !dbg !2219
  %211 = load double, double* %21, align 8, !dbg !2220
  %212 = fmul double %210, %211, !dbg !2221
  %213 = load i64, i64* %15, align 8, !dbg !2222
  %214 = load i64, i64* %16, align 8, !dbg !2223
  %215 = add i64 %213, %214, !dbg !2224
  %216 = sub i64 %215, 1, !dbg !2225
  %217 = uitofp i64 %216 to double, !dbg !2226
  %218 = load double, double* %22, align 8, !dbg !2227
  %219 = fmul double %217, %218, !dbg !2228
  %220 = fsub double %212, %219, !dbg !2229
  %221 = load i64, i64* %15, align 8, !dbg !2230
  %222 = load i64, i64* %16, align 8, !dbg !2231
  %223 = sub i64 %221, %222, !dbg !2232
  %224 = uitofp i64 %223 to double, !dbg !2233
  %225 = fdiv double %220, %224, !dbg !2234
  store double %225, double* %19, align 8, !dbg !2235
  %226 = load double, double* %19, align 8, !dbg !2236
  %227 = load i64, i64* %17, align 8, !dbg !2237
  %228 = load double*, double** %10, align 8, !dbg !2238
  %229 = getelementptr inbounds double, double* %228, i64 %227, !dbg !2238
  store double %226, double* %229, align 8, !dbg !2239
  %230 = load double, double* %13, align 8, !dbg !2240
  %231 = fsub double -0.000000e+00, %230, !dbg !2241
  %232 = load i64, i64* %15, align 8, !dbg !2242
  %233 = load i64, i64* %16, align 8, !dbg !2243
  %234 = add i64 %232, %233, !dbg !2244
  %235 = uitofp i64 %234 to double, !dbg !2245
  %236 = load double, double* %21, align 8, !dbg !2246
  %237 = fmul double %235, %236, !dbg !2247
  %238 = load i64, i64* %15, align 8, !dbg !2248
  %239 = uitofp i64 %238 to double, !dbg !2248
  %240 = load double, double* %8, align 8, !dbg !2249
  %241 = fmul double %239, %240, !dbg !2250
  %242 = load double, double* %19, align 8, !dbg !2251
  %243 = fmul double %241, %242, !dbg !2252
  %244 = fsub double %237, %243, !dbg !2253
  %245 = fmul double %231, %244, !dbg !2254
  %246 = load i64, i64* %17, align 8, !dbg !2255
  %247 = load double*, double** %11, align 8, !dbg !2256
  %248 = getelementptr inbounds double, double* %247, i64 %246, !dbg !2256
  store double %245, double* %248, align 8, !dbg !2257
  %249 = load double, double* %21, align 8, !dbg !2258
  store double %249, double* %22, align 8, !dbg !2259
  %250 = load double, double* %19, align 8, !dbg !2260
  store double %250, double* %21, align 8, !dbg !2261
  br label %251, !dbg !2262

; <label>:251:                                    ; preds = %201
  %252 = load i64, i64* %15, align 8, !dbg !2263
  %253 = add i64 %252, 1, !dbg !2263
  store i64 %253, i64* %15, align 8, !dbg !2263
  br label %197, !dbg !2265, !llvm.loop !2266

; <label>:254:                                    ; preds = %197
  br label %255, !dbg !2268

; <label>:255:                                    ; preds = %254
  %256 = load i64, i64* %16, align 8, !dbg !2269
  %257 = add i64 %256, 1, !dbg !2269
  store i64 %257, i64* %16, align 8, !dbg !2269
  br label %126, !dbg !2271, !llvm.loop !2272

; <label>:258:                                    ; preds = %126
  %259 = load i64, i64* %16, align 8, !dbg !2274
  %260 = add i64 %259, 1, !dbg !2275
  %261 = load i64, i64* %18, align 8, !dbg !2276
  %262 = add i64 %261, %260, !dbg !2276
  store i64 %262, i64* %18, align 8, !dbg !2276
  %263 = load double, double* %23, align 8, !dbg !2277
  %264 = fadd double %263, 2.000000e+00, !dbg !2277
  store double %264, double* %23, align 8, !dbg !2277
  %265 = load double, double* %9, align 8, !dbg !2278
  %266 = load double, double* %12, align 8, !dbg !2279
  %267 = fmul double %265, %266, !dbg !2280
  %268 = load double, double* %23, align 8, !dbg !2281
  %269 = fmul double %267, %268, !dbg !2282
  %270 = load double, double* %20, align 8, !dbg !2283
  %271 = fmul double %270, %269, !dbg !2283
  store double %271, double* %20, align 8, !dbg !2283
  %272 = load double, double* %20, align 8, !dbg !2284
  %273 = load i64, i64* %18, align 8, !dbg !2285
  %274 = load double*, double** %10, align 8, !dbg !2286
  %275 = getelementptr inbounds double, double* %274, i64 %273, !dbg !2286
  store double %272, double* %275, align 8, !dbg !2287
  %276 = load i64, i64* %7, align 8, !dbg !2288
  %277 = uitofp i64 %276 to double, !dbg !2288
  %278 = load double, double* %8, align 8, !dbg !2289
  %279 = fmul double %277, %278, !dbg !2290
  %280 = load double, double* %20, align 8, !dbg !2291
  %281 = fmul double %279, %280, !dbg !2292
  %282 = load double, double* %13, align 8, !dbg !2293
  %283 = fmul double %281, %282, !dbg !2294
  %284 = load i64, i64* %18, align 8, !dbg !2295
  %285 = load double*, double** %11, align 8, !dbg !2296
  %286 = getelementptr inbounds double, double* %285, i64 %284, !dbg !2296
  store double %283, double* %286, align 8, !dbg !2297
  store i32 0, i32* %6, align 4, !dbg !2298
  br label %289, !dbg !2298

; <label>:287:                                    ; preds = %47
  br label %288

; <label>:288:                                    ; preds = %287, %38
  br label %289

; <label>:289:                                    ; preds = %30, %37, %46, %68, %258, %288, %31
  %290 = load i32, i32* %6, align 4, !dbg !2299
  ret i32 %290, !dbg !2299
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_deriv_alt_array_schmidt_e(i64, double, double, double*, double*) #0 !dbg !2300 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i64, align 8
  %26 = alloca double*, align 8
  %27 = alloca double, align 8
  store i64 %0, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2301, metadata !69), !dbg !2302
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2303, metadata !69), !dbg !2304
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2305, metadata !69), !dbg !2306
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !2307, metadata !69), !dbg !2308
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !2309, metadata !69), !dbg !2308
  %28 = load double, double* %8, align 8, !dbg !2310
  %29 = fcmp ogt double %28, 1.000000e+00, !dbg !2312
  br i1 %29, label %33, label %30, !dbg !2313

; <label>:30:                                     ; preds = %5
  %31 = load double, double* %8, align 8, !dbg !2314
  %32 = fcmp olt double %31, -1.000000e+00, !dbg !2316
  br i1 %32, label %33, label %36, !dbg !2317

; <label>:33:                                     ; preds = %30, %5
  br label %34, !dbg !2318, !llvm.loop !2320

; <label>:34:                                     ; preds = %33
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 222, i32 1), !dbg !2321
  store i32 1, i32* %6, align 4, !dbg !2321
  br label %387, !dbg !2321
                                                  ; No predecessors!
  br label %387, !dbg !2324

; <label>:36:                                     ; preds = %30
  %37 = load double, double* %8, align 8, !dbg !2325
  %38 = call double @fabs(double %37) #1, !dbg !2327
  %39 = fcmp oeq double %38, 1.000000e+00, !dbg !2328
  br i1 %39, label %40, label %43, !dbg !2329

; <label>:40:                                     ; preds = %36
  br label %41, !dbg !2330, !llvm.loop !2332

; <label>:41:                                     ; preds = %40
  call void @gsl_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 227, i32 1), !dbg !2333
  store i32 1, i32* %6, align 4, !dbg !2333
  br label %387, !dbg !2333
                                                  ; No predecessors!
  br label %386, !dbg !2336

; <label>:43:                                     ; preds = %36
  %44 = load double, double* %9, align 8, !dbg !2337
  %45 = fcmp une double %44, 1.000000e+00, !dbg !2339
  br i1 %45, label %46, label %52, !dbg !2340

; <label>:46:                                     ; preds = %43
  %47 = load double, double* %9, align 8, !dbg !2341
  %48 = fcmp une double %47, -1.000000e+00, !dbg !2343
  br i1 %48, label %49, label %52, !dbg !2344

; <label>:49:                                     ; preds = %46
  br label %50, !dbg !2345, !llvm.loop !2347

; <label>:50:                                     ; preds = %49
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 232, i32 1), !dbg !2348
  store i32 1, i32* %6, align 4, !dbg !2348
  br label %387, !dbg !2348
                                                  ; No predecessors!
  br label %385, !dbg !2351

; <label>:52:                                     ; preds = %46, %43
  call void @llvm.dbg.declare(metadata double* %12, metadata !2352, metadata !69), !dbg !2354
  store double 1.000000e-280, double* %12, align 8, !dbg !2354
  call void @llvm.dbg.declare(metadata double* %13, metadata !2355, metadata !69), !dbg !2356
  %53 = load double, double* %8, align 8, !dbg !2357
  %54 = fsub double 1.000000e+00, %53, !dbg !2358
  %55 = load double, double* %8, align 8, !dbg !2359
  %56 = fadd double 1.000000e+00, %55, !dbg !2360
  %57 = fmul double %54, %56, !dbg !2361
  %58 = call double @sqrt(double %57) #5, !dbg !2362
  store double %58, double* %13, align 8, !dbg !2356
  call void @llvm.dbg.declare(metadata double* %14, metadata !2363, metadata !69), !dbg !2364
  %59 = load double, double* %13, align 8, !dbg !2365
  %60 = fdiv double 1.000000e+00, %59, !dbg !2366
  store double %60, double* %14, align 8, !dbg !2364
  call void @llvm.dbg.declare(metadata double* %15, metadata !2367, metadata !69), !dbg !2368
  %61 = load double, double* %8, align 8, !dbg !2369
  %62 = load double, double* %14, align 8, !dbg !2370
  %63 = fmul double %61, %62, !dbg !2371
  store double %63, double* %15, align 8, !dbg !2368
  call void @llvm.dbg.declare(metadata i64* %16, metadata !2372, metadata !69), !dbg !2373
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2374, metadata !69), !dbg !2375
  call void @llvm.dbg.declare(metadata i64* %18, metadata !2376, metadata !69), !dbg !2377
  call void @llvm.dbg.declare(metadata i64* %19, metadata !2378, metadata !69), !dbg !2379
  call void @llvm.dbg.declare(metadata double* %20, metadata !2380, metadata !69), !dbg !2381
  call void @llvm.dbg.declare(metadata double* %21, metadata !2382, metadata !69), !dbg !2383
  call void @llvm.dbg.declare(metadata double* %22, metadata !2384, metadata !69), !dbg !2385
  call void @llvm.dbg.declare(metadata double* %23, metadata !2386, metadata !69), !dbg !2387
  call void @llvm.dbg.declare(metadata double* %24, metadata !2388, metadata !69), !dbg !2389
  call void @llvm.dbg.declare(metadata i64* %25, metadata !2390, metadata !69), !dbg !2391
  %64 = load i64, i64* %7, align 8, !dbg !2392
  %65 = call i64 @gsl_sf_legendre_nlm(i64 %64), !dbg !2393
  store i64 %65, i64* %25, align 8, !dbg !2391
  call void @llvm.dbg.declare(metadata double** %26, metadata !2394, metadata !69), !dbg !2395
  %66 = load i64, i64* %25, align 8, !dbg !2396
  %67 = load double*, double** %10, align 8, !dbg !2397
  %68 = getelementptr inbounds double, double* %67, i64 %66, !dbg !2397
  store double* %68, double** %26, align 8, !dbg !2395
  %69 = load i64, i64* %7, align 8, !dbg !2398
  %70 = load double*, double** %26, align 8, !dbg !2399
  call void @legendre_sqrts(i64 %69, double* %70), !dbg !2400
  store double 1.000000e+00, double* %24, align 8, !dbg !2401
  %71 = load double, double* %8, align 8, !dbg !2402
  store double %71, double* %23, align 8, !dbg !2403
  %72 = load double, double* %24, align 8, !dbg !2404
  %73 = load double*, double** %10, align 8, !dbg !2405
  %74 = getelementptr inbounds double, double* %73, i64 0, !dbg !2405
  store double %72, double* %74, align 8, !dbg !2406
  %75 = load double*, double** %11, align 8, !dbg !2407
  %76 = getelementptr inbounds double, double* %75, i64 0, !dbg !2407
  store double 0.000000e+00, double* %76, align 8, !dbg !2408
  %77 = load i64, i64* %7, align 8, !dbg !2409
  %78 = icmp eq i64 %77, 0, !dbg !2411
  br i1 %78, label %79, label %80, !dbg !2412

; <label>:79:                                     ; preds = %52
  store i32 0, i32* %6, align 4, !dbg !2413
  br label %387, !dbg !2413

; <label>:80:                                     ; preds = %52
  %81 = load double, double* %23, align 8, !dbg !2414
  %82 = load double*, double** %10, align 8, !dbg !2415
  %83 = getelementptr inbounds double, double* %82, i64 1, !dbg !2415
  store double %81, double* %83, align 8, !dbg !2416
  %84 = load double, double* %13, align 8, !dbg !2417
  %85 = fsub double -0.000000e+00, %84, !dbg !2418
  %86 = load double*, double** %11, align 8, !dbg !2419
  %87 = getelementptr inbounds double, double* %86, i64 1, !dbg !2419
  store double %85, double* %87, align 8, !dbg !2420
  store i64 1, i64* %18, align 8, !dbg !2421
  store i64 2, i64* %16, align 8, !dbg !2422
  br label %88, !dbg !2424

; <label>:88:                                     ; preds = %129, %80
  %89 = load i64, i64* %16, align 8, !dbg !2425
  %90 = load i64, i64* %7, align 8, !dbg !2428
  %91 = icmp ule i64 %89, %90, !dbg !2429
  br i1 %91, label %92, label %132, !dbg !2430

; <label>:92:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata double* %27, metadata !2431, metadata !69), !dbg !2433
  %93 = load i64, i64* %16, align 8, !dbg !2434
  %94 = uitofp i64 %93 to double, !dbg !2435
  %95 = fdiv double 1.000000e+00, %94, !dbg !2436
  store double %95, double* %27, align 8, !dbg !2433
  %96 = load i64, i64* %16, align 8, !dbg !2437
  %97 = load i64, i64* %18, align 8, !dbg !2438
  %98 = add i64 %97, %96, !dbg !2438
  store i64 %98, i64* %18, align 8, !dbg !2438
  %99 = load double, double* %27, align 8, !dbg !2439
  %100 = fsub double 2.000000e+00, %99, !dbg !2440
  %101 = load double, double* %8, align 8, !dbg !2441
  %102 = fmul double %100, %101, !dbg !2442
  %103 = load double, double* %23, align 8, !dbg !2443
  %104 = fmul double %102, %103, !dbg !2444
  %105 = load double, double* %27, align 8, !dbg !2445
  %106 = fsub double 1.000000e+00, %105, !dbg !2446
  %107 = load double, double* %24, align 8, !dbg !2447
  %108 = fmul double %106, %107, !dbg !2448
  %109 = fsub double %104, %108, !dbg !2449
  store double %109, double* %20, align 8, !dbg !2450
  %110 = load double, double* %20, align 8, !dbg !2451
  %111 = load i64, i64* %18, align 8, !dbg !2452
  %112 = load double*, double** %10, align 8, !dbg !2453
  %113 = getelementptr inbounds double, double* %112, i64 %111, !dbg !2453
  store double %110, double* %113, align 8, !dbg !2454
  %114 = load double, double* %14, align 8, !dbg !2455
  %115 = load i64, i64* %16, align 8, !dbg !2456
  %116 = uitofp i64 %115 to double, !dbg !2456
  %117 = fmul double %114, %116, !dbg !2457
  %118 = load double, double* %8, align 8, !dbg !2458
  %119 = load double, double* %20, align 8, !dbg !2459
  %120 = fmul double %118, %119, !dbg !2460
  %121 = load double, double* %23, align 8, !dbg !2461
  %122 = fsub double %120, %121, !dbg !2462
  %123 = fmul double %117, %122, !dbg !2463
  %124 = load i64, i64* %18, align 8, !dbg !2464
  %125 = load double*, double** %11, align 8, !dbg !2465
  %126 = getelementptr inbounds double, double* %125, i64 %124, !dbg !2465
  store double %123, double* %126, align 8, !dbg !2466
  %127 = load double, double* %23, align 8, !dbg !2467
  store double %127, double* %24, align 8, !dbg !2468
  %128 = load double, double* %20, align 8, !dbg !2469
  store double %128, double* %23, align 8, !dbg !2470
  br label %129, !dbg !2471

; <label>:129:                                    ; preds = %92
  %130 = load i64, i64* %16, align 8, !dbg !2472
  %131 = add i64 %130, 1, !dbg !2472
  store i64 %131, i64* %16, align 8, !dbg !2472
  br label %88, !dbg !2474, !llvm.loop !2475

; <label>:132:                                    ; preds = %88
  %133 = call double @sqrt(double 2.000000e+00) #5, !dbg !2477
  %134 = fmul double %133, 1.000000e-280, !dbg !2478
  store double %134, double* %21, align 8, !dbg !2479
  store double 1.000000e+280, double* %22, align 8, !dbg !2480
  store i64 0, i64* %19, align 8, !dbg !2481
  store i64 1, i64* %17, align 8, !dbg !2482
  br label %135, !dbg !2484

; <label>:135:                                    ; preds = %340, %132
  %136 = load i64, i64* %17, align 8, !dbg !2485
  %137 = load i64, i64* %7, align 8, !dbg !2488
  %138 = icmp ult i64 %136, %137, !dbg !2489
  br i1 %138, label %139, label %343, !dbg !2490

; <label>:139:                                    ; preds = %135
  %140 = load double, double* %13, align 8, !dbg !2491
  %141 = load double, double* %22, align 8, !dbg !2493
  %142 = fmul double %141, %140, !dbg !2493
  store double %142, double* %22, align 8, !dbg !2493
  %143 = load i64, i64* %17, align 8, !dbg !2494
  %144 = add i64 %143, 1, !dbg !2495
  %145 = load i64, i64* %19, align 8, !dbg !2496
  %146 = add i64 %145, %144, !dbg !2496
  store i64 %146, i64* %19, align 8, !dbg !2496
  %147 = load double, double* %9, align 8, !dbg !2497
  %148 = load i64, i64* %17, align 8, !dbg !2498
  %149 = mul i64 2, %148, !dbg !2499
  %150 = sub i64 %149, 1, !dbg !2500
  %151 = load double*, double** %26, align 8, !dbg !2501
  %152 = getelementptr inbounds double, double* %151, i64 %150, !dbg !2501
  %153 = load double, double* %152, align 8, !dbg !2501
  %154 = fmul double %147, %153, !dbg !2502
  %155 = load i64, i64* %17, align 8, !dbg !2503
  %156 = mul i64 2, %155, !dbg !2504
  %157 = load double*, double** %26, align 8, !dbg !2505
  %158 = getelementptr inbounds double, double* %157, i64 %156, !dbg !2505
  %159 = load double, double* %158, align 8, !dbg !2505
  %160 = fdiv double %154, %159, !dbg !2506
  %161 = load double, double* %21, align 8, !dbg !2507
  %162 = fmul double %161, %160, !dbg !2507
  store double %162, double* %21, align 8, !dbg !2507
  %163 = load double, double* %21, align 8, !dbg !2508
  %164 = load double, double* %22, align 8, !dbg !2509
  %165 = fmul double %163, %164, !dbg !2510
  %166 = load i64, i64* %19, align 8, !dbg !2511
  %167 = load double*, double** %10, align 8, !dbg !2512
  %168 = getelementptr inbounds double, double* %167, i64 %166, !dbg !2512
  store double %165, double* %168, align 8, !dbg !2513
  %169 = load i64, i64* %17, align 8, !dbg !2514
  %170 = uitofp i64 %169 to double, !dbg !2514
  %171 = load double, double* %15, align 8, !dbg !2515
  %172 = fmul double %170, %171, !dbg !2516
  %173 = load i64, i64* %19, align 8, !dbg !2517
  %174 = load double*, double** %10, align 8, !dbg !2518
  %175 = getelementptr inbounds double, double* %174, i64 %173, !dbg !2518
  %176 = load double, double* %175, align 8, !dbg !2518
  %177 = fmul double %172, %176, !dbg !2519
  %178 = load i64, i64* %19, align 8, !dbg !2520
  %179 = load double*, double** %11, align 8, !dbg !2521
  %180 = getelementptr inbounds double, double* %179, i64 %178, !dbg !2521
  store double %177, double* %180, align 8, !dbg !2522
  %181 = load double, double* %21, align 8, !dbg !2523
  store double %181, double* %24, align 8, !dbg !2524
  %182 = load i64, i64* %19, align 8, !dbg !2525
  %183 = load i64, i64* %17, align 8, !dbg !2526
  %184 = add i64 %182, %183, !dbg !2527
  %185 = add i64 %184, 1, !dbg !2528
  store i64 %185, i64* %18, align 8, !dbg !2529
  %186 = load double, double* %8, align 8, !dbg !2530
  %187 = load i64, i64* %17, align 8, !dbg !2531
  %188 = mul i64 2, %187, !dbg !2532
  %189 = add i64 %188, 1, !dbg !2533
  %190 = load double*, double** %26, align 8, !dbg !2534
  %191 = getelementptr inbounds double, double* %190, i64 %189, !dbg !2534
  %192 = load double, double* %191, align 8, !dbg !2534
  %193 = fmul double %186, %192, !dbg !2535
  %194 = load double, double* %24, align 8, !dbg !2536
  %195 = fmul double %193, %194, !dbg !2537
  store double %195, double* %23, align 8, !dbg !2538
  %196 = load double, double* %23, align 8, !dbg !2539
  %197 = load double, double* %22, align 8, !dbg !2540
  %198 = fmul double %196, %197, !dbg !2541
  %199 = load i64, i64* %18, align 8, !dbg !2542
  %200 = load double*, double** %10, align 8, !dbg !2543
  %201 = getelementptr inbounds double, double* %200, i64 %199, !dbg !2543
  store double %198, double* %201, align 8, !dbg !2544
  %202 = load double, double* %14, align 8, !dbg !2545
  %203 = load i64, i64* %17, align 8, !dbg !2546
  %204 = uitofp i64 %203 to double, !dbg !2546
  %205 = fadd double %204, 1.000000e+00, !dbg !2547
  %206 = load double, double* %8, align 8, !dbg !2548
  %207 = fmul double %205, %206, !dbg !2549
  %208 = load i64, i64* %18, align 8, !dbg !2550
  %209 = load double*, double** %10, align 8, !dbg !2551
  %210 = getelementptr inbounds double, double* %209, i64 %208, !dbg !2551
  %211 = load double, double* %210, align 8, !dbg !2551
  %212 = fmul double %207, %211, !dbg !2552
  %213 = load i64, i64* %17, align 8, !dbg !2553
  %214 = mul i64 2, %213, !dbg !2554
  %215 = add i64 %214, 1, !dbg !2555
  %216 = load double*, double** %26, align 8, !dbg !2556
  %217 = getelementptr inbounds double, double* %216, i64 %215, !dbg !2556
  %218 = load double, double* %217, align 8, !dbg !2556
  %219 = load i64, i64* %19, align 8, !dbg !2557
  %220 = load double*, double** %10, align 8, !dbg !2558
  %221 = getelementptr inbounds double, double* %220, i64 %219, !dbg !2558
  %222 = load double, double* %221, align 8, !dbg !2558
  %223 = fmul double %218, %222, !dbg !2559
  %224 = fsub double %212, %223, !dbg !2560
  %225 = fmul double %202, %224, !dbg !2561
  %226 = load i64, i64* %18, align 8, !dbg !2562
  %227 = load double*, double** %11, align 8, !dbg !2563
  %228 = getelementptr inbounds double, double* %227, i64 %226, !dbg !2563
  store double %225, double* %228, align 8, !dbg !2564
  %229 = load i64, i64* %17, align 8, !dbg !2565
  %230 = add i64 %229, 2, !dbg !2567
  store i64 %230, i64* %16, align 8, !dbg !2568
  br label %231, !dbg !2569

; <label>:231:                                    ; preds = %336, %139
  %232 = load i64, i64* %16, align 8, !dbg !2570
  %233 = load i64, i64* %7, align 8, !dbg !2573
  %234 = icmp ule i64 %232, %233, !dbg !2574
  br i1 %234, label %235, label %339, !dbg !2575

; <label>:235:                                    ; preds = %231
  %236 = load i64, i64* %16, align 8, !dbg !2576
  %237 = load i64, i64* %18, align 8, !dbg !2578
  %238 = add i64 %237, %236, !dbg !2578
  store i64 %238, i64* %18, align 8, !dbg !2578
  %239 = load i64, i64* %16, align 8, !dbg !2579
  %240 = mul i64 2, %239, !dbg !2580
  %241 = sub i64 %240, 1, !dbg !2581
  %242 = uitofp i64 %241 to double, !dbg !2582
  %243 = load i64, i64* %16, align 8, !dbg !2583
  %244 = load i64, i64* %17, align 8, !dbg !2584
  %245 = add i64 %243, %244, !dbg !2585
  %246 = load double*, double** %26, align 8, !dbg !2586
  %247 = getelementptr inbounds double, double* %246, i64 %245, !dbg !2586
  %248 = load double, double* %247, align 8, !dbg !2586
  %249 = fdiv double %242, %248, !dbg !2587
  %250 = load i64, i64* %16, align 8, !dbg !2588
  %251 = load i64, i64* %17, align 8, !dbg !2589
  %252 = sub i64 %250, %251, !dbg !2590
  %253 = load double*, double** %26, align 8, !dbg !2591
  %254 = getelementptr inbounds double, double* %253, i64 %252, !dbg !2591
  %255 = load double, double* %254, align 8, !dbg !2591
  %256 = fdiv double %249, %255, !dbg !2592
  %257 = load double, double* %8, align 8, !dbg !2593
  %258 = fmul double %256, %257, !dbg !2594
  %259 = load double, double* %23, align 8, !dbg !2595
  %260 = fmul double %258, %259, !dbg !2596
  %261 = load i64, i64* %16, align 8, !dbg !2597
  %262 = load i64, i64* %17, align 8, !dbg !2598
  %263 = sub i64 %261, %262, !dbg !2599
  %264 = sub i64 %263, 1, !dbg !2600
  %265 = load double*, double** %26, align 8, !dbg !2601
  %266 = getelementptr inbounds double, double* %265, i64 %264, !dbg !2601
  %267 = load double, double* %266, align 8, !dbg !2601
  %268 = load i64, i64* %16, align 8, !dbg !2602
  %269 = load i64, i64* %17, align 8, !dbg !2603
  %270 = add i64 %268, %269, !dbg !2604
  %271 = sub i64 %270, 1, !dbg !2605
  %272 = load double*, double** %26, align 8, !dbg !2606
  %273 = getelementptr inbounds double, double* %272, i64 %271, !dbg !2606
  %274 = load double, double* %273, align 8, !dbg !2606
  %275 = fmul double %267, %274, !dbg !2607
  %276 = load i64, i64* %16, align 8, !dbg !2608
  %277 = load i64, i64* %17, align 8, !dbg !2609
  %278 = add i64 %276, %277, !dbg !2610
  %279 = load double*, double** %26, align 8, !dbg !2611
  %280 = getelementptr inbounds double, double* %279, i64 %278, !dbg !2611
  %281 = load double, double* %280, align 8, !dbg !2611
  %282 = fdiv double %275, %281, !dbg !2612
  %283 = load i64, i64* %16, align 8, !dbg !2613
  %284 = load i64, i64* %17, align 8, !dbg !2614
  %285 = sub i64 %283, %284, !dbg !2615
  %286 = load double*, double** %26, align 8, !dbg !2616
  %287 = getelementptr inbounds double, double* %286, i64 %285, !dbg !2616
  %288 = load double, double* %287, align 8, !dbg !2616
  %289 = fdiv double %282, %288, !dbg !2617
  %290 = load double, double* %24, align 8, !dbg !2618
  %291 = fmul double %289, %290, !dbg !2619
  %292 = fsub double %260, %291, !dbg !2620
  store double %292, double* %20, align 8, !dbg !2621
  %293 = load double, double* %20, align 8, !dbg !2622
  %294 = load double, double* %22, align 8, !dbg !2623
  %295 = fmul double %293, %294, !dbg !2624
  %296 = load i64, i64* %18, align 8, !dbg !2625
  %297 = load double*, double** %10, align 8, !dbg !2626
  %298 = getelementptr inbounds double, double* %297, i64 %296, !dbg !2626
  store double %295, double* %298, align 8, !dbg !2627
  %299 = load double, double* %14, align 8, !dbg !2628
  %300 = load i64, i64* %16, align 8, !dbg !2629
  %301 = uitofp i64 %300 to double, !dbg !2629
  %302 = load double, double* %8, align 8, !dbg !2630
  %303 = fmul double %301, %302, !dbg !2631
  %304 = load i64, i64* %18, align 8, !dbg !2632
  %305 = load double*, double** %10, align 8, !dbg !2633
  %306 = getelementptr inbounds double, double* %305, i64 %304, !dbg !2633
  %307 = load double, double* %306, align 8, !dbg !2633
  %308 = fmul double %303, %307, !dbg !2634
  %309 = load i64, i64* %16, align 8, !dbg !2635
  %310 = load i64, i64* %17, align 8, !dbg !2636
  %311 = add i64 %309, %310, !dbg !2637
  %312 = load double*, double** %26, align 8, !dbg !2638
  %313 = getelementptr inbounds double, double* %312, i64 %311, !dbg !2638
  %314 = load double, double* %313, align 8, !dbg !2638
  %315 = load i64, i64* %16, align 8, !dbg !2639
  %316 = load i64, i64* %17, align 8, !dbg !2640
  %317 = sub i64 %315, %316, !dbg !2641
  %318 = load double*, double** %26, align 8, !dbg !2642
  %319 = getelementptr inbounds double, double* %318, i64 %317, !dbg !2642
  %320 = load double, double* %319, align 8, !dbg !2642
  %321 = fmul double %314, %320, !dbg !2643
  %322 = load i64, i64* %18, align 8, !dbg !2644
  %323 = load i64, i64* %16, align 8, !dbg !2645
  %324 = sub i64 %322, %323, !dbg !2646
  %325 = load double*, double** %10, align 8, !dbg !2647
  %326 = getelementptr inbounds double, double* %325, i64 %324, !dbg !2647
  %327 = load double, double* %326, align 8, !dbg !2647
  %328 = fmul double %321, %327, !dbg !2648
  %329 = fsub double %308, %328, !dbg !2649
  %330 = fmul double %299, %329, !dbg !2650
  %331 = load i64, i64* %18, align 8, !dbg !2651
  %332 = load double*, double** %11, align 8, !dbg !2652
  %333 = getelementptr inbounds double, double* %332, i64 %331, !dbg !2652
  store double %330, double* %333, align 8, !dbg !2653
  %334 = load double, double* %23, align 8, !dbg !2654
  store double %334, double* %24, align 8, !dbg !2655
  %335 = load double, double* %20, align 8, !dbg !2656
  store double %335, double* %23, align 8, !dbg !2657
  br label %336, !dbg !2658

; <label>:336:                                    ; preds = %235
  %337 = load i64, i64* %16, align 8, !dbg !2659
  %338 = add i64 %337, 1, !dbg !2659
  store i64 %338, i64* %16, align 8, !dbg !2659
  br label %231, !dbg !2661, !llvm.loop !2662

; <label>:339:                                    ; preds = %231
  br label %340, !dbg !2664

; <label>:340:                                    ; preds = %339
  %341 = load i64, i64* %17, align 8, !dbg !2665
  %342 = add i64 %341, 1, !dbg !2665
  store i64 %342, i64* %17, align 8, !dbg !2665
  br label %135, !dbg !2667, !llvm.loop !2668

; <label>:343:                                    ; preds = %135
  %344 = load double, double* %13, align 8, !dbg !2670
  %345 = load double, double* %22, align 8, !dbg !2671
  %346 = fmul double %345, %344, !dbg !2671
  store double %346, double* %22, align 8, !dbg !2671
  %347 = load i64, i64* %17, align 8, !dbg !2672
  %348 = add i64 %347, 1, !dbg !2673
  %349 = load i64, i64* %19, align 8, !dbg !2674
  %350 = add i64 %349, %348, !dbg !2674
  store i64 %350, i64* %19, align 8, !dbg !2674
  %351 = load double, double* %9, align 8, !dbg !2675
  %352 = load i64, i64* %7, align 8, !dbg !2676
  %353 = mul i64 2, %352, !dbg !2677
  %354 = sub i64 %353, 1, !dbg !2678
  %355 = load double*, double** %26, align 8, !dbg !2679
  %356 = getelementptr inbounds double, double* %355, i64 %354, !dbg !2679
  %357 = load double, double* %356, align 8, !dbg !2679
  %358 = fmul double %351, %357, !dbg !2680
  %359 = load i64, i64* %7, align 8, !dbg !2681
  %360 = mul i64 2, %359, !dbg !2682
  %361 = load double*, double** %26, align 8, !dbg !2683
  %362 = getelementptr inbounds double, double* %361, i64 %360, !dbg !2683
  %363 = load double, double* %362, align 8, !dbg !2683
  %364 = fdiv double %358, %363, !dbg !2684
  %365 = load double, double* %21, align 8, !dbg !2685
  %366 = fmul double %365, %364, !dbg !2685
  store double %366, double* %21, align 8, !dbg !2685
  %367 = load double, double* %21, align 8, !dbg !2686
  %368 = load double, double* %22, align 8, !dbg !2687
  %369 = fmul double %367, %368, !dbg !2688
  %370 = load i64, i64* %19, align 8, !dbg !2689
  %371 = load double*, double** %10, align 8, !dbg !2690
  %372 = getelementptr inbounds double, double* %371, i64 %370, !dbg !2690
  store double %369, double* %372, align 8, !dbg !2691
  %373 = load i64, i64* %7, align 8, !dbg !2692
  %374 = uitofp i64 %373 to double, !dbg !2692
  %375 = load double, double* %15, align 8, !dbg !2693
  %376 = fmul double %374, %375, !dbg !2694
  %377 = load i64, i64* %19, align 8, !dbg !2695
  %378 = load double*, double** %10, align 8, !dbg !2696
  %379 = getelementptr inbounds double, double* %378, i64 %377, !dbg !2696
  %380 = load double, double* %379, align 8, !dbg !2696
  %381 = fmul double %376, %380, !dbg !2697
  %382 = load i64, i64* %19, align 8, !dbg !2698
  %383 = load double*, double** %11, align 8, !dbg !2699
  %384 = getelementptr inbounds double, double* %383, i64 %382, !dbg !2699
  store double %381, double* %384, align 8, !dbg !2700
  store i32 0, i32* %6, align 4, !dbg !2701
  br label %387, !dbg !2701

; <label>:385:                                    ; preds = %51
  br label %386

; <label>:386:                                    ; preds = %385, %42
  br label %387

; <label>:387:                                    ; preds = %34, %41, %50, %79, %343, %386, %35
  %388 = load i32, i32* %6, align 4, !dbg !2702
  ret i32 %388, !dbg !2702
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_deriv2_array(i32, i64, double, double*, double*, double*) #0 !dbg !2703 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2706, metadata !69), !dbg !2707
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2708, metadata !69), !dbg !2709
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2710, metadata !69), !dbg !2711
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !2712, metadata !69), !dbg !2713
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !2714, metadata !69), !dbg !2713
  store double* %5, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !2715, metadata !69), !dbg !2713
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2716, metadata !69), !dbg !2717
  %14 = load i32, i32* %7, align 4, !dbg !2718
  %15 = load i64, i64* %8, align 8, !dbg !2719
  %16 = load double, double* %9, align 8, !dbg !2720
  %17 = load double*, double** %10, align 8, !dbg !2721
  %18 = load double*, double** %11, align 8, !dbg !2721
  %19 = load double*, double** %12, align 8, !dbg !2721
  %20 = call i32 @gsl_sf_legendre_deriv2_array_e(i32 %14, i64 %15, double %16, double 1.000000e+00, double* %17, double* %18, double* %19), !dbg !2722
  store i32 %20, i32* %13, align 4, !dbg !2717
  %21 = load i32, i32* %13, align 4, !dbg !2723
  ret i32 %21, !dbg !2724
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_deriv2_array_e(i32, i64, double, double, double*, double*, double*) #0 !dbg !2725 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca double*, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2728, metadata !69), !dbg !2729
  store i64 %1, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2730, metadata !69), !dbg !2731
  store double %2, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !2732, metadata !69), !dbg !2733
  store double %3, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !2734, metadata !69), !dbg !2735
  store double* %4, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !2736, metadata !69), !dbg !2737
  store double* %5, double** %14, align 8
  call void @llvm.dbg.declare(metadata double** %14, metadata !2738, metadata !69), !dbg !2737
  store double* %6, double** %15, align 8
  call void @llvm.dbg.declare(metadata double** %15, metadata !2739, metadata !69), !dbg !2737
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2740, metadata !69), !dbg !2741
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2742, metadata !69), !dbg !2743
  %30 = load i64, i64* %10, align 8, !dbg !2744
  %31 = call i64 @gsl_sf_legendre_nlm(i64 %30), !dbg !2745
  store i64 %31, i64* %17, align 8, !dbg !2743
  call void @llvm.dbg.declare(metadata i64* %18, metadata !2746, metadata !69), !dbg !2747
  call void @llvm.dbg.declare(metadata double* %19, metadata !2748, metadata !69), !dbg !2749
  %32 = load double, double* %11, align 8, !dbg !2750
  %33 = fsub double 1.000000e+00, %32, !dbg !2751
  %34 = load double, double* %11, align 8, !dbg !2752
  %35 = fadd double 1.000000e+00, %34, !dbg !2753
  %36 = fmul double %33, %35, !dbg !2754
  %37 = call double @sqrt(double %36) #5, !dbg !2755
  store double %37, double* %19, align 8, !dbg !2749
  call void @llvm.dbg.declare(metadata double* %20, metadata !2756, metadata !69), !dbg !2757
  %38 = load double, double* %19, align 8, !dbg !2758
  %39 = fdiv double 1.000000e+00, %38, !dbg !2759
  store double %39, double* %20, align 8, !dbg !2757
  call void @llvm.dbg.declare(metadata double* %21, metadata !2760, metadata !69), !dbg !2761
  %40 = load double, double* %20, align 8, !dbg !2762
  %41 = load double, double* %20, align 8, !dbg !2763
  %42 = fmul double %40, %41, !dbg !2764
  store double %42, double* %21, align 8, !dbg !2761
  call void @llvm.dbg.declare(metadata double* %22, metadata !2765, metadata !69), !dbg !2766
  store double 0.000000e+00, double* %22, align 8, !dbg !2766
  call void @llvm.dbg.declare(metadata double* %23, metadata !2767, metadata !69), !dbg !2768
  store double 0.000000e+00, double* %23, align 8, !dbg !2768
  %43 = load i32, i32* %9, align 4, !dbg !2769
  %44 = icmp eq i32 %43, 3, !dbg !2771
  br i1 %44, label %45, label %53, !dbg !2772

; <label>:45:                                     ; preds = %7
  %46 = load i64, i64* %10, align 8, !dbg !2773
  %47 = load double, double* %11, align 8, !dbg !2775
  %48 = load double, double* %12, align 8, !dbg !2776
  %49 = load double*, double** %13, align 8, !dbg !2777
  %50 = load double*, double** %14, align 8, !dbg !2777
  %51 = load double*, double** %15, align 8, !dbg !2777
  %52 = call i32 @legendre_deriv2_array_none_e(i64 %46, double %47, double %48, double* %49, double* %50, double* %51), !dbg !2778
  store i32 %52, i32* %16, align 4, !dbg !2779
  br label %61, !dbg !2780

; <label>:53:                                     ; preds = %7
  %54 = load i64, i64* %10, align 8, !dbg !2781
  %55 = load double, double* %11, align 8, !dbg !2783
  %56 = load double, double* %12, align 8, !dbg !2784
  %57 = load double*, double** %13, align 8, !dbg !2785
  %58 = load double*, double** %14, align 8, !dbg !2785
  %59 = load double*, double** %15, align 8, !dbg !2785
  %60 = call i32 @legendre_deriv2_array_schmidt_e(i64 %54, double %55, double %56, double* %57, double* %58, double* %59), !dbg !2786
  store i32 %60, i32* %16, align 4, !dbg !2787
  br label %61

; <label>:61:                                     ; preds = %53, %45
  store i64 0, i64* %18, align 8, !dbg !2788
  br label %62, !dbg !2790

; <label>:62:                                     ; preds = %94, %61
  %63 = load i64, i64* %18, align 8, !dbg !2791
  %64 = load i64, i64* %17, align 8, !dbg !2794
  %65 = icmp ult i64 %63, %64, !dbg !2795
  br i1 %65, label %66, label %97, !dbg !2796

; <label>:66:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata double* %24, metadata !2797, metadata !69), !dbg !2799
  %67 = load i64, i64* %18, align 8, !dbg !2800
  %68 = load double*, double** %14, align 8, !dbg !2801
  %69 = getelementptr inbounds double, double* %68, i64 %67, !dbg !2801
  %70 = load double, double* %69, align 8, !dbg !2801
  store double %70, double* %24, align 8, !dbg !2799
  call void @llvm.dbg.declare(metadata double* %25, metadata !2802, metadata !69), !dbg !2803
  %71 = load i64, i64* %18, align 8, !dbg !2804
  %72 = load double*, double** %15, align 8, !dbg !2805
  %73 = getelementptr inbounds double, double* %72, i64 %71, !dbg !2805
  %74 = load double, double* %73, align 8, !dbg !2805
  store double %74, double* %25, align 8, !dbg !2803
  %75 = load double, double* %25, align 8, !dbg !2806
  %76 = load double, double* %11, align 8, !dbg !2807
  %77 = load double, double* %20, align 8, !dbg !2808
  %78 = fmul double %76, %77, !dbg !2809
  %79 = load double, double* %24, align 8, !dbg !2810
  %80 = fmul double %78, %79, !dbg !2811
  %81 = fsub double %75, %80, !dbg !2812
  %82 = load double, double* %21, align 8, !dbg !2813
  %83 = fmul double %81, %82, !dbg !2814
  %84 = load i64, i64* %18, align 8, !dbg !2815
  %85 = load double*, double** %15, align 8, !dbg !2816
  %86 = getelementptr inbounds double, double* %85, i64 %84, !dbg !2816
  store double %83, double* %86, align 8, !dbg !2817
  %87 = load double, double* %20, align 8, !dbg !2818
  %88 = fsub double -0.000000e+00, %87, !dbg !2819
  %89 = load i64, i64* %18, align 8, !dbg !2820
  %90 = load double*, double** %14, align 8, !dbg !2821
  %91 = getelementptr inbounds double, double* %90, i64 %89, !dbg !2821
  %92 = load double, double* %91, align 8, !dbg !2822
  %93 = fmul double %92, %88, !dbg !2822
  store double %93, double* %91, align 8, !dbg !2822
  br label %94, !dbg !2823

; <label>:94:                                     ; preds = %66
  %95 = load i64, i64* %18, align 8, !dbg !2824
  %96 = add i64 %95, 1, !dbg !2824
  store i64 %96, i64* %18, align 8, !dbg !2824
  br label %62, !dbg !2826, !llvm.loop !2827

; <label>:97:                                     ; preds = %62
  %98 = load i32, i32* %9, align 4, !dbg !2829
  %99 = icmp eq i32 %98, 0, !dbg !2831
  br i1 %99, label %103, label %100, !dbg !2832

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %9, align 4, !dbg !2833
  %102 = icmp eq i32 %101, 3, !dbg !2835
  br i1 %102, label %103, label %105, !dbg !2836

; <label>:103:                                    ; preds = %100, %97
  %104 = load i32, i32* %16, align 4, !dbg !2837
  store i32 %104, i32* %8, align 4, !dbg !2839
  br label %223, !dbg !2839

; <label>:105:                                    ; preds = %100
  %106 = load i32, i32* %9, align 4, !dbg !2840
  %107 = icmp eq i32 %106, 1, !dbg !2842
  br i1 %107, label %108, label %113, !dbg !2843

; <label>:108:                                    ; preds = %105
  %109 = call double @sqrt(double 0x402921FB54442D18) #5, !dbg !2844
  %110 = fdiv double 1.000000e+00, %109, !dbg !2846
  store double %110, double* %22, align 8, !dbg !2847
  %111 = call double @sqrt(double 0x403921FB54442D18) #5, !dbg !2848
  %112 = fdiv double 1.000000e+00, %111, !dbg !2849
  store double %112, double* %23, align 8, !dbg !2850
  br label %122, !dbg !2851

; <label>:113:                                    ; preds = %105
  %114 = load i32, i32* %9, align 4, !dbg !2852
  %115 = icmp eq i32 %114, 2, !dbg !2854
  br i1 %115, label %116, label %121, !dbg !2855

; <label>:116:                                    ; preds = %113
  %117 = call double @sqrt(double 2.000000e+00) #5, !dbg !2856
  %118 = fdiv double 1.000000e+00, %117, !dbg !2858
  store double %118, double* %22, align 8, !dbg !2859
  %119 = call double @sqrt(double 4.000000e+00) #5, !dbg !2860
  %120 = fdiv double 1.000000e+00, %119, !dbg !2861
  store double %120, double* %23, align 8, !dbg !2862
  br label %121, !dbg !2863

; <label>:121:                                    ; preds = %116, %113
  br label %122

; <label>:122:                                    ; preds = %121, %108
  br label %123

; <label>:123:                                    ; preds = %122
  call void @llvm.dbg.declare(metadata i64* %26, metadata !2864, metadata !69), !dbg !2866
  call void @llvm.dbg.declare(metadata i64* %27, metadata !2867, metadata !69), !dbg !2868
  call void @llvm.dbg.declare(metadata i64* %28, metadata !2869, metadata !69), !dbg !2870
  store i64 1, i64* %28, align 8, !dbg !2870
  call void @llvm.dbg.declare(metadata double** %29, metadata !2871, metadata !69), !dbg !2872
  %124 = load i64, i64* %17, align 8, !dbg !2873
  %125 = load double*, double** %13, align 8, !dbg !2874
  %126 = getelementptr inbounds double, double* %125, i64 %124, !dbg !2874
  store double* %126, double** %29, align 8, !dbg !2872
  store i64 0, i64* %26, align 8, !dbg !2875
  br label %127, !dbg !2877

; <label>:127:                                    ; preds = %218, %123
  %128 = load i64, i64* %26, align 8, !dbg !2878
  %129 = load i64, i64* %10, align 8, !dbg !2881
  %130 = icmp ule i64 %128, %129, !dbg !2882
  br i1 %130, label %131, label %221, !dbg !2883

; <label>:131:                                    ; preds = %127
  %132 = load i64, i64* %28, align 8, !dbg !2884
  %133 = load double*, double** %29, align 8, !dbg !2886
  %134 = getelementptr inbounds double, double* %133, i64 %132, !dbg !2886
  %135 = load double, double* %134, align 8, !dbg !2886
  %136 = load double, double* %22, align 8, !dbg !2887
  %137 = fmul double %135, %136, !dbg !2888
  %138 = load i64, i64* %26, align 8, !dbg !2889
  %139 = call i64 @gsl_sf_legendre_array_index(i64 %138, i64 0), !dbg !2890
  %140 = load double*, double** %13, align 8, !dbg !2891
  %141 = getelementptr inbounds double, double* %140, i64 %139, !dbg !2891
  %142 = load double, double* %141, align 8, !dbg !2892
  %143 = fmul double %142, %137, !dbg !2892
  store double %143, double* %141, align 8, !dbg !2892
  %144 = load i64, i64* %28, align 8, !dbg !2893
  %145 = load double*, double** %29, align 8, !dbg !2894
  %146 = getelementptr inbounds double, double* %145, i64 %144, !dbg !2894
  %147 = load double, double* %146, align 8, !dbg !2894
  %148 = load double, double* %22, align 8, !dbg !2895
  %149 = fmul double %147, %148, !dbg !2896
  %150 = load i64, i64* %26, align 8, !dbg !2897
  %151 = call i64 @gsl_sf_legendre_array_index(i64 %150, i64 0), !dbg !2898
  %152 = load double*, double** %14, align 8, !dbg !2899
  %153 = getelementptr inbounds double, double* %152, i64 %151, !dbg !2899
  %154 = load double, double* %153, align 8, !dbg !2900
  %155 = fmul double %154, %149, !dbg !2900
  store double %155, double* %153, align 8, !dbg !2900
  %156 = load i64, i64* %28, align 8, !dbg !2901
  %157 = load double*, double** %29, align 8, !dbg !2902
  %158 = getelementptr inbounds double, double* %157, i64 %156, !dbg !2902
  %159 = load double, double* %158, align 8, !dbg !2902
  %160 = load double, double* %22, align 8, !dbg !2903
  %161 = fmul double %159, %160, !dbg !2904
  %162 = load i64, i64* %26, align 8, !dbg !2905
  %163 = call i64 @gsl_sf_legendre_array_index(i64 %162, i64 0), !dbg !2906
  %164 = load double*, double** %15, align 8, !dbg !2907
  %165 = getelementptr inbounds double, double* %164, i64 %163, !dbg !2907
  %166 = load double, double* %165, align 8, !dbg !2908
  %167 = fmul double %166, %161, !dbg !2908
  store double %167, double* %165, align 8, !dbg !2908
  store i64 1, i64* %27, align 8, !dbg !2909
  br label %168, !dbg !2911

; <label>:168:                                    ; preds = %212, %131
  %169 = load i64, i64* %27, align 8, !dbg !2912
  %170 = load i64, i64* %26, align 8, !dbg !2915
  %171 = icmp ule i64 %169, %170, !dbg !2916
  br i1 %171, label %172, label %215, !dbg !2917

; <label>:172:                                    ; preds = %168
  %173 = load i64, i64* %28, align 8, !dbg !2918
  %174 = load double*, double** %29, align 8, !dbg !2920
  %175 = getelementptr inbounds double, double* %174, i64 %173, !dbg !2920
  %176 = load double, double* %175, align 8, !dbg !2920
  %177 = load double, double* %23, align 8, !dbg !2921
  %178 = fmul double %176, %177, !dbg !2922
  %179 = load i64, i64* %26, align 8, !dbg !2923
  %180 = load i64, i64* %27, align 8, !dbg !2924
  %181 = call i64 @gsl_sf_legendre_array_index(i64 %179, i64 %180), !dbg !2925
  %182 = load double*, double** %13, align 8, !dbg !2926
  %183 = getelementptr inbounds double, double* %182, i64 %181, !dbg !2926
  %184 = load double, double* %183, align 8, !dbg !2927
  %185 = fmul double %184, %178, !dbg !2927
  store double %185, double* %183, align 8, !dbg !2927
  %186 = load i64, i64* %28, align 8, !dbg !2928
  %187 = load double*, double** %29, align 8, !dbg !2929
  %188 = getelementptr inbounds double, double* %187, i64 %186, !dbg !2929
  %189 = load double, double* %188, align 8, !dbg !2929
  %190 = load double, double* %23, align 8, !dbg !2930
  %191 = fmul double %189, %190, !dbg !2931
  %192 = load i64, i64* %26, align 8, !dbg !2932
  %193 = load i64, i64* %27, align 8, !dbg !2933
  %194 = call i64 @gsl_sf_legendre_array_index(i64 %192, i64 %193), !dbg !2934
  %195 = load double*, double** %14, align 8, !dbg !2935
  %196 = getelementptr inbounds double, double* %195, i64 %194, !dbg !2935
  %197 = load double, double* %196, align 8, !dbg !2936
  %198 = fmul double %197, %191, !dbg !2936
  store double %198, double* %196, align 8, !dbg !2936
  %199 = load i64, i64* %28, align 8, !dbg !2937
  %200 = load double*, double** %29, align 8, !dbg !2938
  %201 = getelementptr inbounds double, double* %200, i64 %199, !dbg !2938
  %202 = load double, double* %201, align 8, !dbg !2938
  %203 = load double, double* %23, align 8, !dbg !2939
  %204 = fmul double %202, %203, !dbg !2940
  %205 = load i64, i64* %26, align 8, !dbg !2941
  %206 = load i64, i64* %27, align 8, !dbg !2942
  %207 = call i64 @gsl_sf_legendre_array_index(i64 %205, i64 %206), !dbg !2943
  %208 = load double*, double** %15, align 8, !dbg !2944
  %209 = getelementptr inbounds double, double* %208, i64 %207, !dbg !2944
  %210 = load double, double* %209, align 8, !dbg !2945
  %211 = fmul double %210, %204, !dbg !2945
  store double %211, double* %209, align 8, !dbg !2945
  br label %212, !dbg !2946

; <label>:212:                                    ; preds = %172
  %213 = load i64, i64* %27, align 8, !dbg !2947
  %214 = add i64 %213, 1, !dbg !2947
  store i64 %214, i64* %27, align 8, !dbg !2947
  br label %168, !dbg !2949, !llvm.loop !2950

; <label>:215:                                    ; preds = %168
  %216 = load i64, i64* %28, align 8, !dbg !2952
  %217 = add i64 %216, 2, !dbg !2952
  store i64 %217, i64* %28, align 8, !dbg !2952
  br label %218, !dbg !2953

; <label>:218:                                    ; preds = %215
  %219 = load i64, i64* %26, align 8, !dbg !2954
  %220 = add i64 %219, 1, !dbg !2954
  store i64 %220, i64* %26, align 8, !dbg !2954
  br label %127, !dbg !2956, !llvm.loop !2957

; <label>:221:                                    ; preds = %127
  %222 = load i32, i32* %16, align 4, !dbg !2959
  store i32 %222, i32* %8, align 4, !dbg !2960
  br label %223, !dbg !2960

; <label>:223:                                    ; preds = %221, %103
  %224 = load i32, i32* %8, align 4, !dbg !2961
  ret i32 %224, !dbg !2961
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_deriv2_array_none_e(i64, double, double, double*, double*, double*) #0 !dbg !2962 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store i64 %0, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2965, metadata !69), !dbg !2966
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2967, metadata !69), !dbg !2968
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !2969, metadata !69), !dbg !2970
  store double* %3, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !2971, metadata !69), !dbg !2972
  store double* %4, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !2973, metadata !69), !dbg !2972
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !2974, metadata !69), !dbg !2972
  %27 = load double, double* %9, align 8, !dbg !2975
  %28 = fcmp ogt double %27, 1.000000e+00, !dbg !2977
  br i1 %28, label %32, label %29, !dbg !2978

; <label>:29:                                     ; preds = %6
  %30 = load double, double* %9, align 8, !dbg !2979
  %31 = fcmp olt double %30, -1.000000e+00, !dbg !2981
  br i1 %31, label %32, label %35, !dbg !2982

; <label>:32:                                     ; preds = %29, %6
  br label %33, !dbg !2983, !llvm.loop !2985

; <label>:33:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 430, i32 1), !dbg !2986
  store i32 1, i32* %7, align 4, !dbg !2986
  br label %430, !dbg !2986
                                                  ; No predecessors!
  br label %430, !dbg !2989

; <label>:35:                                     ; preds = %29
  %36 = load double, double* %9, align 8, !dbg !2990
  %37 = call double @fabs(double %36) #1, !dbg !2992
  %38 = fcmp oeq double %37, 1.000000e+00, !dbg !2993
  br i1 %38, label %39, label %42, !dbg !2994

; <label>:39:                                     ; preds = %35
  br label %40, !dbg !2995, !llvm.loop !2997

; <label>:40:                                     ; preds = %39
  call void @gsl_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 435, i32 1), !dbg !2998
  store i32 1, i32* %7, align 4, !dbg !2998
  br label %430, !dbg !2998
                                                  ; No predecessors!
  br label %429, !dbg !3001

; <label>:42:                                     ; preds = %35
  %43 = load double, double* %10, align 8, !dbg !3002
  %44 = fcmp une double %43, 1.000000e+00, !dbg !3004
  br i1 %44, label %45, label %51, !dbg !3005

; <label>:45:                                     ; preds = %42
  %46 = load double, double* %10, align 8, !dbg !3006
  %47 = fcmp une double %46, -1.000000e+00, !dbg !3008
  br i1 %47, label %48, label %51, !dbg !3009

; <label>:48:                                     ; preds = %45
  br label %49, !dbg !3010, !llvm.loop !3012

; <label>:49:                                     ; preds = %48
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 440, i32 1), !dbg !3013
  store i32 1, i32* %7, align 4, !dbg !3013
  br label %430, !dbg !3013
                                                  ; No predecessors!
  br label %428, !dbg !3016

; <label>:51:                                     ; preds = %45, %42
  call void @llvm.dbg.declare(metadata double* %14, metadata !3017, metadata !69), !dbg !3019
  %52 = load double, double* %9, align 8, !dbg !3020
  %53 = fsub double 1.000000e+00, %52, !dbg !3021
  %54 = load double, double* %9, align 8, !dbg !3022
  %55 = fadd double 1.000000e+00, %54, !dbg !3023
  %56 = fmul double %53, %55, !dbg !3024
  %57 = call double @sqrt(double %56) #5, !dbg !3025
  store double %57, double* %14, align 8, !dbg !3019
  call void @llvm.dbg.declare(metadata double* %15, metadata !3026, metadata !69), !dbg !3027
  %58 = load double, double* %14, align 8, !dbg !3028
  %59 = fdiv double 1.000000e+00, %58, !dbg !3029
  store double %59, double* %15, align 8, !dbg !3027
  call void @llvm.dbg.declare(metadata double* %16, metadata !3030, metadata !69), !dbg !3031
  %60 = load double, double* %14, align 8, !dbg !3032
  %61 = fdiv double 1.000000e+00, %60, !dbg !3033
  %62 = load double, double* %14, align 8, !dbg !3034
  %63 = fdiv double %61, %62, !dbg !3035
  store double %63, double* %16, align 8, !dbg !3031
  call void @llvm.dbg.declare(metadata double* %17, metadata !3036, metadata !69), !dbg !3037
  %64 = load double, double* %9, align 8, !dbg !3038
  %65 = load double, double* %15, align 8, !dbg !3039
  %66 = fmul double %64, %65, !dbg !3040
  store double %66, double* %17, align 8, !dbg !3037
  call void @llvm.dbg.declare(metadata i64* %18, metadata !3041, metadata !69), !dbg !3042
  call void @llvm.dbg.declare(metadata i64* %19, metadata !3043, metadata !69), !dbg !3044
  call void @llvm.dbg.declare(metadata i64* %20, metadata !3045, metadata !69), !dbg !3046
  call void @llvm.dbg.declare(metadata i64* %21, metadata !3047, metadata !69), !dbg !3048
  call void @llvm.dbg.declare(metadata double* %22, metadata !3049, metadata !69), !dbg !3050
  call void @llvm.dbg.declare(metadata double* %23, metadata !3051, metadata !69), !dbg !3052
  call void @llvm.dbg.declare(metadata double* %24, metadata !3053, metadata !69), !dbg !3054
  call void @llvm.dbg.declare(metadata double* %25, metadata !3055, metadata !69), !dbg !3056
  call void @llvm.dbg.declare(metadata double* %26, metadata !3057, metadata !69), !dbg !3058
  store double 1.000000e+00, double* %25, align 8, !dbg !3059
  %67 = load double, double* %9, align 8, !dbg !3060
  store double %67, double* %24, align 8, !dbg !3061
  %68 = load double, double* %25, align 8, !dbg !3062
  %69 = load double*, double** %11, align 8, !dbg !3063
  %70 = getelementptr inbounds double, double* %69, i64 0, !dbg !3063
  store double %68, double* %70, align 8, !dbg !3064
  %71 = load double*, double** %12, align 8, !dbg !3065
  %72 = getelementptr inbounds double, double* %71, i64 0, !dbg !3065
  store double 0.000000e+00, double* %72, align 8, !dbg !3066
  %73 = load double*, double** %13, align 8, !dbg !3067
  %74 = getelementptr inbounds double, double* %73, i64 0, !dbg !3067
  store double 0.000000e+00, double* %74, align 8, !dbg !3068
  %75 = load i64, i64* %8, align 8, !dbg !3069
  %76 = icmp eq i64 %75, 0, !dbg !3071
  br i1 %76, label %77, label %78, !dbg !3072

; <label>:77:                                     ; preds = %51
  store i32 0, i32* %7, align 4, !dbg !3073
  br label %430, !dbg !3073

; <label>:78:                                     ; preds = %51
  %79 = load double, double* %24, align 8, !dbg !3074
  %80 = load double*, double** %11, align 8, !dbg !3075
  %81 = getelementptr inbounds double, double* %80, i64 1, !dbg !3075
  store double %79, double* %81, align 8, !dbg !3076
  %82 = load double, double* %14, align 8, !dbg !3077
  %83 = fsub double -0.000000e+00, %82, !dbg !3078
  %84 = load double*, double** %12, align 8, !dbg !3079
  %85 = getelementptr inbounds double, double* %84, i64 1, !dbg !3079
  store double %83, double* %85, align 8, !dbg !3080
  %86 = load double, double* %9, align 8, !dbg !3081
  %87 = fsub double -0.000000e+00, %86, !dbg !3082
  %88 = load double*, double** %13, align 8, !dbg !3083
  %89 = getelementptr inbounds double, double* %88, i64 1, !dbg !3083
  store double %87, double* %89, align 8, !dbg !3084
  store i64 1, i64* %20, align 8, !dbg !3085
  store i64 2, i64* %18, align 8, !dbg !3086
  br label %90, !dbg !3088

; <label>:90:                                     ; preds = %154, %78
  %91 = load i64, i64* %18, align 8, !dbg !3089
  %92 = load i64, i64* %8, align 8, !dbg !3092
  %93 = icmp ule i64 %91, %92, !dbg !3093
  br i1 %93, label %94, label %157, !dbg !3094

; <label>:94:                                     ; preds = %90
  %95 = load i64, i64* %18, align 8, !dbg !3095
  %96 = load i64, i64* %20, align 8, !dbg !3097
  %97 = add i64 %96, %95, !dbg !3097
  store i64 %97, i64* %20, align 8, !dbg !3097
  %98 = load i64, i64* %18, align 8, !dbg !3098
  %99 = mul i64 2, %98, !dbg !3099
  %100 = sub i64 %99, 1, !dbg !3100
  %101 = uitofp i64 %100 to double, !dbg !3101
  %102 = load double, double* %9, align 8, !dbg !3102
  %103 = fmul double %101, %102, !dbg !3103
  %104 = load double, double* %24, align 8, !dbg !3104
  %105 = fmul double %103, %104, !dbg !3105
  %106 = load i64, i64* %18, align 8, !dbg !3106
  %107 = sub i64 %106, 1, !dbg !3107
  %108 = uitofp i64 %107 to double, !dbg !3108
  %109 = load double, double* %25, align 8, !dbg !3109
  %110 = fmul double %108, %109, !dbg !3110
  %111 = fsub double %105, %110, !dbg !3111
  %112 = load i64, i64* %18, align 8, !dbg !3112
  %113 = uitofp i64 %112 to double, !dbg !3113
  %114 = fdiv double %111, %113, !dbg !3114
  store double %114, double* %22, align 8, !dbg !3115
  %115 = load double, double* %22, align 8, !dbg !3116
  %116 = load i64, i64* %20, align 8, !dbg !3117
  %117 = load double*, double** %11, align 8, !dbg !3118
  %118 = getelementptr inbounds double, double* %117, i64 %116, !dbg !3118
  store double %115, double* %118, align 8, !dbg !3119
  %119 = load i64, i64* %18, align 8, !dbg !3120
  %120 = uitofp i64 %119 to double, !dbg !3121
  %121 = fsub double -0.000000e+00, %120, !dbg !3122
  %122 = load double, double* %24, align 8, !dbg !3123
  %123 = load double, double* %9, align 8, !dbg !3124
  %124 = load double, double* %22, align 8, !dbg !3125
  %125 = fmul double %123, %124, !dbg !3126
  %126 = fsub double %122, %125, !dbg !3127
  %127 = fmul double %121, %126, !dbg !3128
  %128 = load double, double* %15, align 8, !dbg !3129
  %129 = fmul double %127, %128, !dbg !3130
  %130 = load i64, i64* %20, align 8, !dbg !3131
  %131 = load double*, double** %12, align 8, !dbg !3132
  %132 = getelementptr inbounds double, double* %131, i64 %130, !dbg !3132
  store double %129, double* %132, align 8, !dbg !3133
  %133 = load i64, i64* %18, align 8, !dbg !3134
  %134 = uitofp i64 %133 to double, !dbg !3135
  %135 = fsub double -0.000000e+00, %134, !dbg !3136
  %136 = load i64, i64* %18, align 8, !dbg !3137
  %137 = uitofp i64 %136 to double, !dbg !3137
  %138 = fadd double %137, 1.000000e+00, !dbg !3138
  %139 = fmul double %135, %138, !dbg !3139
  %140 = load double, double* %22, align 8, !dbg !3140
  %141 = fmul double %139, %140, !dbg !3141
  %142 = load double, double* %17, align 8, !dbg !3142
  %143 = load i64, i64* %20, align 8, !dbg !3143
  %144 = load double*, double** %12, align 8, !dbg !3144
  %145 = getelementptr inbounds double, double* %144, i64 %143, !dbg !3144
  %146 = load double, double* %145, align 8, !dbg !3144
  %147 = fmul double %142, %146, !dbg !3145
  %148 = fsub double %141, %147, !dbg !3146
  %149 = load i64, i64* %20, align 8, !dbg !3147
  %150 = load double*, double** %13, align 8, !dbg !3148
  %151 = getelementptr inbounds double, double* %150, i64 %149, !dbg !3148
  store double %148, double* %151, align 8, !dbg !3149
  %152 = load double, double* %24, align 8, !dbg !3150
  store double %152, double* %25, align 8, !dbg !3151
  %153 = load double, double* %22, align 8, !dbg !3152
  store double %153, double* %24, align 8, !dbg !3153
  br label %154, !dbg !3154

; <label>:154:                                    ; preds = %94
  %155 = load i64, i64* %18, align 8, !dbg !3155
  %156 = add i64 %155, 1, !dbg !3155
  store i64 %156, i64* %18, align 8, !dbg !3155
  br label %90, !dbg !3157, !llvm.loop !3158

; <label>:157:                                    ; preds = %90
  store double 1.000000e+00, double* %23, align 8, !dbg !3160
  store double -1.000000e+00, double* %26, align 8, !dbg !3161
  store i64 0, i64* %21, align 8, !dbg !3162
  store i64 1, i64* %19, align 8, !dbg !3163
  br label %158, !dbg !3165

; <label>:158:                                    ; preds = %370, %157
  %159 = load i64, i64* %19, align 8, !dbg !3166
  %160 = load i64, i64* %8, align 8, !dbg !3169
  %161 = sub i64 %160, 1, !dbg !3170
  %162 = icmp ule i64 %159, %161, !dbg !3171
  br i1 %162, label %163, label %373, !dbg !3172

; <label>:163:                                    ; preds = %158
  %164 = load i64, i64* %19, align 8, !dbg !3173
  %165 = add i64 %164, 1, !dbg !3175
  %166 = load i64, i64* %21, align 8, !dbg !3176
  %167 = add i64 %166, %165, !dbg !3176
  store i64 %167, i64* %21, align 8, !dbg !3176
  %168 = load double, double* %26, align 8, !dbg !3177
  %169 = fadd double %168, 2.000000e+00, !dbg !3177
  store double %169, double* %26, align 8, !dbg !3177
  %170 = load double, double* %10, align 8, !dbg !3178
  %171 = load double, double* %14, align 8, !dbg !3179
  %172 = fmul double %170, %171, !dbg !3180
  %173 = load double, double* %26, align 8, !dbg !3181
  %174 = fmul double %172, %173, !dbg !3182
  %175 = load double, double* %23, align 8, !dbg !3183
  %176 = fmul double %175, %174, !dbg !3183
  store double %176, double* %23, align 8, !dbg !3183
  %177 = load double, double* %23, align 8, !dbg !3184
  %178 = load i64, i64* %21, align 8, !dbg !3185
  %179 = load double*, double** %11, align 8, !dbg !3186
  %180 = getelementptr inbounds double, double* %179, i64 %178, !dbg !3186
  store double %177, double* %180, align 8, !dbg !3187
  %181 = load i64, i64* %19, align 8, !dbg !3188
  %182 = uitofp i64 %181 to double, !dbg !3188
  %183 = load double, double* %17, align 8, !dbg !3189
  %184 = fmul double %182, %183, !dbg !3190
  %185 = load double, double* %23, align 8, !dbg !3191
  %186 = fmul double %184, %185, !dbg !3192
  %187 = load i64, i64* %21, align 8, !dbg !3193
  %188 = load double*, double** %12, align 8, !dbg !3194
  %189 = getelementptr inbounds double, double* %188, i64 %187, !dbg !3194
  store double %186, double* %189, align 8, !dbg !3195
  %190 = load i64, i64* %19, align 8, !dbg !3196
  %191 = uitofp i64 %190 to double, !dbg !3196
  %192 = load double, double* %16, align 8, !dbg !3197
  %193 = load i64, i64* %19, align 8, !dbg !3198
  %194 = uitofp i64 %193 to double, !dbg !3198
  %195 = fmul double %192, %194, !dbg !3199
  %196 = load i64, i64* %19, align 8, !dbg !3200
  %197 = uitofp i64 %196 to double, !dbg !3200
  %198 = fadd double %197, 1.000000e+00, !dbg !3201
  %199 = fsub double %195, %198, !dbg !3202
  %200 = fmul double %191, %199, !dbg !3203
  %201 = load i64, i64* %21, align 8, !dbg !3204
  %202 = load double*, double** %11, align 8, !dbg !3205
  %203 = getelementptr inbounds double, double* %202, i64 %201, !dbg !3205
  %204 = load double, double* %203, align 8, !dbg !3205
  %205 = fmul double %200, %204, !dbg !3206
  %206 = load double, double* %17, align 8, !dbg !3207
  %207 = load i64, i64* %21, align 8, !dbg !3208
  %208 = load double*, double** %12, align 8, !dbg !3209
  %209 = getelementptr inbounds double, double* %208, i64 %207, !dbg !3209
  %210 = load double, double* %209, align 8, !dbg !3209
  %211 = fmul double %206, %210, !dbg !3210
  %212 = fsub double %205, %211, !dbg !3211
  %213 = load i64, i64* %21, align 8, !dbg !3212
  %214 = load double*, double** %13, align 8, !dbg !3213
  %215 = getelementptr inbounds double, double* %214, i64 %213, !dbg !3213
  store double %212, double* %215, align 8, !dbg !3214
  %216 = load double, double* %23, align 8, !dbg !3215
  store double %216, double* %25, align 8, !dbg !3216
  %217 = load i64, i64* %21, align 8, !dbg !3217
  %218 = load i64, i64* %19, align 8, !dbg !3218
  %219 = add i64 %217, %218, !dbg !3219
  %220 = add i64 %219, 1, !dbg !3220
  store i64 %220, i64* %20, align 8, !dbg !3221
  %221 = load double, double* %9, align 8, !dbg !3222
  %222 = load double, double* %23, align 8, !dbg !3223
  %223 = fmul double %221, %222, !dbg !3224
  %224 = load i64, i64* %19, align 8, !dbg !3225
  %225 = mul i64 2, %224, !dbg !3226
  %226 = add i64 %225, 1, !dbg !3227
  %227 = uitofp i64 %226 to double, !dbg !3228
  %228 = fmul double %223, %227, !dbg !3229
  store double %228, double* %24, align 8, !dbg !3230
  %229 = load double, double* %24, align 8, !dbg !3231
  %230 = load i64, i64* %20, align 8, !dbg !3232
  %231 = load double*, double** %11, align 8, !dbg !3233
  %232 = getelementptr inbounds double, double* %231, i64 %230, !dbg !3233
  store double %229, double* %232, align 8, !dbg !3234
  %233 = load double, double* %15, align 8, !dbg !3235
  %234 = fsub double -0.000000e+00, %233, !dbg !3236
  %235 = load i64, i64* %19, align 8, !dbg !3237
  %236 = mul i64 2, %235, !dbg !3238
  %237 = add i64 %236, 1, !dbg !3239
  %238 = uitofp i64 %237 to double, !dbg !3240
  %239 = load double, double* %23, align 8, !dbg !3241
  %240 = fmul double %238, %239, !dbg !3242
  %241 = load i64, i64* %19, align 8, !dbg !3243
  %242 = add i64 %241, 1, !dbg !3244
  %243 = uitofp i64 %242 to double, !dbg !3245
  %244 = load double, double* %9, align 8, !dbg !3246
  %245 = fmul double %243, %244, !dbg !3247
  %246 = load double, double* %24, align 8, !dbg !3248
  %247 = fmul double %245, %246, !dbg !3249
  %248 = fsub double %240, %247, !dbg !3250
  %249 = fmul double %234, %248, !dbg !3251
  %250 = load i64, i64* %20, align 8, !dbg !3252
  %251 = load double*, double** %12, align 8, !dbg !3253
  %252 = getelementptr inbounds double, double* %251, i64 %250, !dbg !3253
  store double %249, double* %252, align 8, !dbg !3254
  %253 = load i64, i64* %19, align 8, !dbg !3255
  %254 = load i64, i64* %19, align 8, !dbg !3256
  %255 = mul i64 %253, %254, !dbg !3257
  %256 = uitofp i64 %255 to double, !dbg !3255
  %257 = load double, double* %16, align 8, !dbg !3258
  %258 = fmul double %256, %257, !dbg !3259
  %259 = load i64, i64* %19, align 8, !dbg !3260
  %260 = uitofp i64 %259 to double, !dbg !3260
  %261 = fadd double %260, 1.000000e+00, !dbg !3261
  %262 = load i64, i64* %19, align 8, !dbg !3262
  %263 = uitofp i64 %262 to double, !dbg !3262
  %264 = fadd double %263, 2.000000e+00, !dbg !3263
  %265 = fmul double %261, %264, !dbg !3264
  %266 = fsub double %258, %265, !dbg !3265
  %267 = load i64, i64* %20, align 8, !dbg !3266
  %268 = load double*, double** %11, align 8, !dbg !3267
  %269 = getelementptr inbounds double, double* %268, i64 %267, !dbg !3267
  %270 = load double, double* %269, align 8, !dbg !3267
  %271 = fmul double %266, %270, !dbg !3268
  %272 = load double, double* %17, align 8, !dbg !3269
  %273 = load i64, i64* %20, align 8, !dbg !3270
  %274 = load double*, double** %12, align 8, !dbg !3271
  %275 = getelementptr inbounds double, double* %274, i64 %273, !dbg !3271
  %276 = load double, double* %275, align 8, !dbg !3271
  %277 = fmul double %272, %276, !dbg !3272
  %278 = fsub double %271, %277, !dbg !3273
  %279 = load i64, i64* %20, align 8, !dbg !3274
  %280 = load double*, double** %13, align 8, !dbg !3275
  %281 = getelementptr inbounds double, double* %280, i64 %279, !dbg !3275
  store double %278, double* %281, align 8, !dbg !3276
  %282 = load i64, i64* %19, align 8, !dbg !3277
  %283 = add i64 %282, 2, !dbg !3279
  store i64 %283, i64* %18, align 8, !dbg !3280
  br label %284, !dbg !3281

; <label>:284:                                    ; preds = %366, %163
  %285 = load i64, i64* %18, align 8, !dbg !3282
  %286 = load i64, i64* %8, align 8, !dbg !3285
  %287 = icmp ule i64 %285, %286, !dbg !3286
  br i1 %287, label %288, label %369, !dbg !3287

; <label>:288:                                    ; preds = %284
  %289 = load i64, i64* %18, align 8, !dbg !3288
  %290 = load i64, i64* %20, align 8, !dbg !3290
  %291 = add i64 %290, %289, !dbg !3290
  store i64 %291, i64* %20, align 8, !dbg !3290
  %292 = load i64, i64* %18, align 8, !dbg !3291
  %293 = mul i64 2, %292, !dbg !3292
  %294 = sub i64 %293, 1, !dbg !3293
  %295 = uitofp i64 %294 to double, !dbg !3294
  %296 = load double, double* %9, align 8, !dbg !3295
  %297 = fmul double %295, %296, !dbg !3296
  %298 = load double, double* %24, align 8, !dbg !3297
  %299 = fmul double %297, %298, !dbg !3298
  %300 = load i64, i64* %18, align 8, !dbg !3299
  %301 = load i64, i64* %19, align 8, !dbg !3300
  %302 = add i64 %300, %301, !dbg !3301
  %303 = sub i64 %302, 1, !dbg !3302
  %304 = uitofp i64 %303 to double, !dbg !3303
  %305 = load double, double* %25, align 8, !dbg !3304
  %306 = fmul double %304, %305, !dbg !3305
  %307 = fsub double %299, %306, !dbg !3306
  %308 = load i64, i64* %18, align 8, !dbg !3307
  %309 = load i64, i64* %19, align 8, !dbg !3308
  %310 = sub i64 %308, %309, !dbg !3309
  %311 = uitofp i64 %310 to double, !dbg !3310
  %312 = fdiv double %307, %311, !dbg !3311
  store double %312, double* %22, align 8, !dbg !3312
  %313 = load double, double* %22, align 8, !dbg !3313
  %314 = load i64, i64* %20, align 8, !dbg !3314
  %315 = load double*, double** %11, align 8, !dbg !3315
  %316 = getelementptr inbounds double, double* %315, i64 %314, !dbg !3315
  store double %313, double* %316, align 8, !dbg !3316
  %317 = load double, double* %15, align 8, !dbg !3317
  %318 = fsub double -0.000000e+00, %317, !dbg !3318
  %319 = load i64, i64* %18, align 8, !dbg !3319
  %320 = load i64, i64* %19, align 8, !dbg !3320
  %321 = add i64 %319, %320, !dbg !3321
  %322 = uitofp i64 %321 to double, !dbg !3322
  %323 = load double, double* %24, align 8, !dbg !3323
  %324 = fmul double %322, %323, !dbg !3324
  %325 = load i64, i64* %18, align 8, !dbg !3325
  %326 = uitofp i64 %325 to double, !dbg !3325
  %327 = load double, double* %9, align 8, !dbg !3326
  %328 = fmul double %326, %327, !dbg !3327
  %329 = load double, double* %22, align 8, !dbg !3328
  %330 = fmul double %328, %329, !dbg !3329
  %331 = fsub double %324, %330, !dbg !3330
  %332 = fmul double %318, %331, !dbg !3331
  %333 = load i64, i64* %20, align 8, !dbg !3332
  %334 = load double*, double** %12, align 8, !dbg !3333
  %335 = getelementptr inbounds double, double* %334, i64 %333, !dbg !3333
  store double %332, double* %335, align 8, !dbg !3334
  %336 = load i64, i64* %19, align 8, !dbg !3335
  %337 = load i64, i64* %19, align 8, !dbg !3336
  %338 = mul i64 %336, %337, !dbg !3337
  %339 = uitofp i64 %338 to double, !dbg !3335
  %340 = load double, double* %16, align 8, !dbg !3338
  %341 = fmul double %339, %340, !dbg !3339
  %342 = load i64, i64* %18, align 8, !dbg !3340
  %343 = uitofp i64 %342 to double, !dbg !3340
  %344 = load i64, i64* %18, align 8, !dbg !3341
  %345 = uitofp i64 %344 to double, !dbg !3341
  %346 = fadd double %345, 1.000000e+00, !dbg !3342
  %347 = fmul double %343, %346, !dbg !3343
  %348 = fsub double %341, %347, !dbg !3344
  %349 = load i64, i64* %20, align 8, !dbg !3345
  %350 = load double*, double** %11, align 8, !dbg !3346
  %351 = getelementptr inbounds double, double* %350, i64 %349, !dbg !3346
  %352 = load double, double* %351, align 8, !dbg !3346
  %353 = fmul double %348, %352, !dbg !3347
  %354 = load double, double* %17, align 8, !dbg !3348
  %355 = load i64, i64* %20, align 8, !dbg !3349
  %356 = load double*, double** %12, align 8, !dbg !3350
  %357 = getelementptr inbounds double, double* %356, i64 %355, !dbg !3350
  %358 = load double, double* %357, align 8, !dbg !3350
  %359 = fmul double %354, %358, !dbg !3351
  %360 = fsub double %353, %359, !dbg !3352
  %361 = load i64, i64* %20, align 8, !dbg !3353
  %362 = load double*, double** %13, align 8, !dbg !3354
  %363 = getelementptr inbounds double, double* %362, i64 %361, !dbg !3354
  store double %360, double* %363, align 8, !dbg !3355
  %364 = load double, double* %24, align 8, !dbg !3356
  store double %364, double* %25, align 8, !dbg !3357
  %365 = load double, double* %22, align 8, !dbg !3358
  store double %365, double* %24, align 8, !dbg !3359
  br label %366, !dbg !3360

; <label>:366:                                    ; preds = %288
  %367 = load i64, i64* %18, align 8, !dbg !3361
  %368 = add i64 %367, 1, !dbg !3361
  store i64 %368, i64* %18, align 8, !dbg !3361
  br label %284, !dbg !3363, !llvm.loop !3364

; <label>:369:                                    ; preds = %284
  br label %370, !dbg !3366

; <label>:370:                                    ; preds = %369
  %371 = load i64, i64* %19, align 8, !dbg !3367
  %372 = add i64 %371, 1, !dbg !3367
  store i64 %372, i64* %19, align 8, !dbg !3367
  br label %158, !dbg !3369, !llvm.loop !3370

; <label>:373:                                    ; preds = %158
  %374 = load i64, i64* %19, align 8, !dbg !3372
  %375 = add i64 %374, 1, !dbg !3373
  %376 = load i64, i64* %21, align 8, !dbg !3374
  %377 = add i64 %376, %375, !dbg !3374
  store i64 %377, i64* %21, align 8, !dbg !3374
  %378 = load double, double* %26, align 8, !dbg !3375
  %379 = fadd double %378, 2.000000e+00, !dbg !3375
  store double %379, double* %26, align 8, !dbg !3375
  %380 = load double, double* %10, align 8, !dbg !3376
  %381 = load double, double* %14, align 8, !dbg !3377
  %382 = fmul double %380, %381, !dbg !3378
  %383 = load double, double* %26, align 8, !dbg !3379
  %384 = fmul double %382, %383, !dbg !3380
  %385 = load double, double* %23, align 8, !dbg !3381
  %386 = fmul double %385, %384, !dbg !3381
  store double %386, double* %23, align 8, !dbg !3381
  %387 = load double, double* %23, align 8, !dbg !3382
  %388 = load i64, i64* %21, align 8, !dbg !3383
  %389 = load double*, double** %11, align 8, !dbg !3384
  %390 = getelementptr inbounds double, double* %389, i64 %388, !dbg !3384
  store double %387, double* %390, align 8, !dbg !3385
  %391 = load i64, i64* %8, align 8, !dbg !3386
  %392 = uitofp i64 %391 to double, !dbg !3386
  %393 = load double, double* %9, align 8, !dbg !3387
  %394 = fmul double %392, %393, !dbg !3388
  %395 = load double, double* %23, align 8, !dbg !3389
  %396 = fmul double %394, %395, !dbg !3390
  %397 = load double, double* %15, align 8, !dbg !3391
  %398 = fmul double %396, %397, !dbg !3392
  %399 = load i64, i64* %21, align 8, !dbg !3393
  %400 = load double*, double** %12, align 8, !dbg !3394
  %401 = getelementptr inbounds double, double* %400, i64 %399, !dbg !3394
  store double %398, double* %401, align 8, !dbg !3395
  %402 = load i64, i64* %8, align 8, !dbg !3396
  %403 = uitofp i64 %402 to double, !dbg !3396
  %404 = load double, double* %16, align 8, !dbg !3397
  %405 = load i64, i64* %8, align 8, !dbg !3398
  %406 = uitofp i64 %405 to double, !dbg !3398
  %407 = fmul double %404, %406, !dbg !3399
  %408 = load i64, i64* %8, align 8, !dbg !3400
  %409 = uitofp i64 %408 to double, !dbg !3400
  %410 = fadd double %409, 1.000000e+00, !dbg !3401
  %411 = fsub double %407, %410, !dbg !3402
  %412 = fmul double %403, %411, !dbg !3403
  %413 = load i64, i64* %21, align 8, !dbg !3404
  %414 = load double*, double** %11, align 8, !dbg !3405
  %415 = getelementptr inbounds double, double* %414, i64 %413, !dbg !3405
  %416 = load double, double* %415, align 8, !dbg !3405
  %417 = fmul double %412, %416, !dbg !3406
  %418 = load double, double* %17, align 8, !dbg !3407
  %419 = load i64, i64* %21, align 8, !dbg !3408
  %420 = load double*, double** %12, align 8, !dbg !3409
  %421 = getelementptr inbounds double, double* %420, i64 %419, !dbg !3409
  %422 = load double, double* %421, align 8, !dbg !3409
  %423 = fmul double %418, %422, !dbg !3410
  %424 = fsub double %417, %423, !dbg !3411
  %425 = load i64, i64* %21, align 8, !dbg !3412
  %426 = load double*, double** %13, align 8, !dbg !3413
  %427 = getelementptr inbounds double, double* %426, i64 %425, !dbg !3413
  store double %424, double* %427, align 8, !dbg !3414
  store i32 0, i32* %7, align 4, !dbg !3415
  br label %430, !dbg !3415

; <label>:428:                                    ; preds = %50
  br label %429

; <label>:429:                                    ; preds = %428, %41
  br label %430

; <label>:430:                                    ; preds = %33, %40, %49, %77, %373, %429, %34
  %431 = load i32, i32* %7, align 4, !dbg !3416
  ret i32 %431, !dbg !3416
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_deriv2_array_schmidt_e(i64, double, double, double*, double*, double*) #0 !dbg !3417 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i64, align 8
  %29 = alloca double*, align 8
  %30 = alloca double, align 8
  store i64 %0, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3418, metadata !69), !dbg !3419
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3420, metadata !69), !dbg !3421
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !3422, metadata !69), !dbg !3423
  store double* %3, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !3424, metadata !69), !dbg !3425
  store double* %4, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !3426, metadata !69), !dbg !3425
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !3427, metadata !69), !dbg !3425
  %31 = load double, double* %9, align 8, !dbg !3428
  %32 = fcmp ogt double %31, 1.000000e+00, !dbg !3430
  br i1 %32, label %36, label %33, !dbg !3431

; <label>:33:                                     ; preds = %6
  %34 = load double, double* %9, align 8, !dbg !3432
  %35 = fcmp olt double %34, -1.000000e+00, !dbg !3434
  br i1 %35, label %36, label %39, !dbg !3435

; <label>:36:                                     ; preds = %33, %6
  br label %37, !dbg !3436, !llvm.loop !3438

; <label>:37:                                     ; preds = %36
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 222, i32 1), !dbg !3439
  store i32 1, i32* %7, align 4, !dbg !3439
  br label %528, !dbg !3439
                                                  ; No predecessors!
  br label %528, !dbg !3442

; <label>:39:                                     ; preds = %33
  %40 = load double, double* %9, align 8, !dbg !3443
  %41 = call double @fabs(double %40) #1, !dbg !3445
  %42 = fcmp oeq double %41, 1.000000e+00, !dbg !3446
  br i1 %42, label %43, label %46, !dbg !3447

; <label>:43:                                     ; preds = %39
  br label %44, !dbg !3448, !llvm.loop !3450

; <label>:44:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 227, i32 1), !dbg !3451
  store i32 1, i32* %7, align 4, !dbg !3451
  br label %528, !dbg !3451
                                                  ; No predecessors!
  br label %527, !dbg !3454

; <label>:46:                                     ; preds = %39
  %47 = load double, double* %10, align 8, !dbg !3455
  %48 = fcmp une double %47, 1.000000e+00, !dbg !3457
  br i1 %48, label %49, label %55, !dbg !3458

; <label>:49:                                     ; preds = %46
  %50 = load double, double* %10, align 8, !dbg !3459
  %51 = fcmp une double %50, -1.000000e+00, !dbg !3461
  br i1 %51, label %52, label %55, !dbg !3462

; <label>:52:                                     ; preds = %49
  br label %53, !dbg !3463, !llvm.loop !3465

; <label>:53:                                     ; preds = %52
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 232, i32 1), !dbg !3466
  store i32 1, i32* %7, align 4, !dbg !3466
  br label %528, !dbg !3466
                                                  ; No predecessors!
  br label %526, !dbg !3469

; <label>:55:                                     ; preds = %49, %46
  call void @llvm.dbg.declare(metadata double* %14, metadata !3470, metadata !69), !dbg !3472
  store double 1.000000e-280, double* %14, align 8, !dbg !3472
  call void @llvm.dbg.declare(metadata double* %15, metadata !3473, metadata !69), !dbg !3474
  %56 = load double, double* %9, align 8, !dbg !3475
  %57 = fsub double 1.000000e+00, %56, !dbg !3476
  %58 = load double, double* %9, align 8, !dbg !3477
  %59 = fadd double 1.000000e+00, %58, !dbg !3478
  %60 = fmul double %57, %59, !dbg !3479
  %61 = call double @sqrt(double %60) #5, !dbg !3480
  store double %61, double* %15, align 8, !dbg !3474
  call void @llvm.dbg.declare(metadata double* %16, metadata !3481, metadata !69), !dbg !3482
  %62 = load double, double* %15, align 8, !dbg !3483
  %63 = fdiv double 1.000000e+00, %62, !dbg !3484
  store double %63, double* %16, align 8, !dbg !3482
  call void @llvm.dbg.declare(metadata double* %17, metadata !3485, metadata !69), !dbg !3486
  %64 = load double, double* %15, align 8, !dbg !3487
  %65 = fdiv double 1.000000e+00, %64, !dbg !3488
  %66 = load double, double* %15, align 8, !dbg !3489
  %67 = fdiv double %65, %66, !dbg !3490
  store double %67, double* %17, align 8, !dbg !3486
  call void @llvm.dbg.declare(metadata double* %18, metadata !3491, metadata !69), !dbg !3492
  %68 = load double, double* %9, align 8, !dbg !3493
  %69 = load double, double* %16, align 8, !dbg !3494
  %70 = fmul double %68, %69, !dbg !3495
  store double %70, double* %18, align 8, !dbg !3492
  call void @llvm.dbg.declare(metadata i64* %19, metadata !3496, metadata !69), !dbg !3497
  call void @llvm.dbg.declare(metadata i64* %20, metadata !3498, metadata !69), !dbg !3499
  call void @llvm.dbg.declare(metadata i64* %21, metadata !3500, metadata !69), !dbg !3501
  call void @llvm.dbg.declare(metadata i64* %22, metadata !3502, metadata !69), !dbg !3503
  call void @llvm.dbg.declare(metadata double* %23, metadata !3504, metadata !69), !dbg !3505
  call void @llvm.dbg.declare(metadata double* %24, metadata !3506, metadata !69), !dbg !3507
  call void @llvm.dbg.declare(metadata double* %25, metadata !3508, metadata !69), !dbg !3509
  call void @llvm.dbg.declare(metadata double* %26, metadata !3510, metadata !69), !dbg !3511
  call void @llvm.dbg.declare(metadata double* %27, metadata !3512, metadata !69), !dbg !3513
  call void @llvm.dbg.declare(metadata i64* %28, metadata !3514, metadata !69), !dbg !3515
  %71 = load i64, i64* %8, align 8, !dbg !3516
  %72 = call i64 @gsl_sf_legendre_nlm(i64 %71), !dbg !3517
  store i64 %72, i64* %28, align 8, !dbg !3515
  call void @llvm.dbg.declare(metadata double** %29, metadata !3518, metadata !69), !dbg !3519
  %73 = load i64, i64* %28, align 8, !dbg !3520
  %74 = load double*, double** %11, align 8, !dbg !3521
  %75 = getelementptr inbounds double, double* %74, i64 %73, !dbg !3521
  store double* %75, double** %29, align 8, !dbg !3519
  %76 = load i64, i64* %8, align 8, !dbg !3522
  %77 = load double*, double** %29, align 8, !dbg !3523
  call void @legendre_sqrts(i64 %76, double* %77), !dbg !3524
  store double 1.000000e+00, double* %27, align 8, !dbg !3525
  %78 = load double, double* %9, align 8, !dbg !3526
  store double %78, double* %26, align 8, !dbg !3527
  %79 = load double, double* %27, align 8, !dbg !3528
  %80 = load double*, double** %11, align 8, !dbg !3529
  %81 = getelementptr inbounds double, double* %80, i64 0, !dbg !3529
  store double %79, double* %81, align 8, !dbg !3530
  %82 = load double*, double** %12, align 8, !dbg !3531
  %83 = getelementptr inbounds double, double* %82, i64 0, !dbg !3531
  store double 0.000000e+00, double* %83, align 8, !dbg !3532
  %84 = load double*, double** %13, align 8, !dbg !3533
  %85 = getelementptr inbounds double, double* %84, i64 0, !dbg !3533
  store double 0.000000e+00, double* %85, align 8, !dbg !3534
  %86 = load i64, i64* %8, align 8, !dbg !3535
  %87 = icmp eq i64 %86, 0, !dbg !3537
  br i1 %87, label %88, label %89, !dbg !3538

; <label>:88:                                     ; preds = %55
  store i32 0, i32* %7, align 4, !dbg !3539
  br label %528, !dbg !3539

; <label>:89:                                     ; preds = %55
  %90 = load double, double* %26, align 8, !dbg !3540
  %91 = load double*, double** %11, align 8, !dbg !3541
  %92 = getelementptr inbounds double, double* %91, i64 1, !dbg !3541
  store double %90, double* %92, align 8, !dbg !3542
  %93 = load double, double* %15, align 8, !dbg !3543
  %94 = fsub double -0.000000e+00, %93, !dbg !3544
  %95 = load double*, double** %12, align 8, !dbg !3545
  %96 = getelementptr inbounds double, double* %95, i64 1, !dbg !3545
  store double %94, double* %96, align 8, !dbg !3546
  %97 = load double, double* %9, align 8, !dbg !3547
  %98 = fsub double -0.000000e+00, %97, !dbg !3548
  %99 = load double*, double** %13, align 8, !dbg !3549
  %100 = getelementptr inbounds double, double* %99, i64 1, !dbg !3549
  store double %98, double* %100, align 8, !dbg !3550
  store i64 1, i64* %21, align 8, !dbg !3551
  store i64 2, i64* %19, align 8, !dbg !3552
  br label %101, !dbg !3554

; <label>:101:                                    ; preds = %161, %89
  %102 = load i64, i64* %19, align 8, !dbg !3555
  %103 = load i64, i64* %8, align 8, !dbg !3558
  %104 = icmp ule i64 %102, %103, !dbg !3559
  br i1 %104, label %105, label %164, !dbg !3560

; <label>:105:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata double* %30, metadata !3561, metadata !69), !dbg !3563
  %106 = load i64, i64* %19, align 8, !dbg !3564
  %107 = uitofp i64 %106 to double, !dbg !3565
  %108 = fdiv double 1.000000e+00, %107, !dbg !3566
  store double %108, double* %30, align 8, !dbg !3563
  %109 = load i64, i64* %19, align 8, !dbg !3567
  %110 = load i64, i64* %21, align 8, !dbg !3568
  %111 = add i64 %110, %109, !dbg !3568
  store i64 %111, i64* %21, align 8, !dbg !3568
  %112 = load double, double* %30, align 8, !dbg !3569
  %113 = fsub double 2.000000e+00, %112, !dbg !3570
  %114 = load double, double* %9, align 8, !dbg !3571
  %115 = fmul double %113, %114, !dbg !3572
  %116 = load double, double* %26, align 8, !dbg !3573
  %117 = fmul double %115, %116, !dbg !3574
  %118 = load double, double* %30, align 8, !dbg !3575
  %119 = fsub double 1.000000e+00, %118, !dbg !3576
  %120 = load double, double* %27, align 8, !dbg !3577
  %121 = fmul double %119, %120, !dbg !3578
  %122 = fsub double %117, %121, !dbg !3579
  store double %122, double* %23, align 8, !dbg !3580
  %123 = load double, double* %23, align 8, !dbg !3581
  %124 = load i64, i64* %21, align 8, !dbg !3582
  %125 = load double*, double** %11, align 8, !dbg !3583
  %126 = getelementptr inbounds double, double* %125, i64 %124, !dbg !3583
  store double %123, double* %126, align 8, !dbg !3584
  %127 = load double, double* %16, align 8, !dbg !3585
  %128 = load i64, i64* %19, align 8, !dbg !3586
  %129 = uitofp i64 %128 to double, !dbg !3586
  %130 = fmul double %127, %129, !dbg !3587
  %131 = load double, double* %9, align 8, !dbg !3588
  %132 = load double, double* %23, align 8, !dbg !3589
  %133 = fmul double %131, %132, !dbg !3590
  %134 = load double, double* %26, align 8, !dbg !3591
  %135 = fsub double %133, %134, !dbg !3592
  %136 = fmul double %130, %135, !dbg !3593
  %137 = load i64, i64* %21, align 8, !dbg !3594
  %138 = load double*, double** %12, align 8, !dbg !3595
  %139 = getelementptr inbounds double, double* %138, i64 %137, !dbg !3595
  store double %136, double* %139, align 8, !dbg !3596
  %140 = load i64, i64* %19, align 8, !dbg !3597
  %141 = uitofp i64 %140 to double, !dbg !3598
  %142 = fsub double -0.000000e+00, %141, !dbg !3599
  %143 = load i64, i64* %19, align 8, !dbg !3600
  %144 = uitofp i64 %143 to double, !dbg !3600
  %145 = fadd double %144, 1.000000e+00, !dbg !3601
  %146 = fmul double %142, %145, !dbg !3602
  %147 = load double, double* %23, align 8, !dbg !3603
  %148 = fmul double %146, %147, !dbg !3604
  %149 = load double, double* %18, align 8, !dbg !3605
  %150 = load i64, i64* %21, align 8, !dbg !3606
  %151 = load double*, double** %12, align 8, !dbg !3607
  %152 = getelementptr inbounds double, double* %151, i64 %150, !dbg !3607
  %153 = load double, double* %152, align 8, !dbg !3607
  %154 = fmul double %149, %153, !dbg !3608
  %155 = fsub double %148, %154, !dbg !3609
  %156 = load i64, i64* %21, align 8, !dbg !3610
  %157 = load double*, double** %13, align 8, !dbg !3611
  %158 = getelementptr inbounds double, double* %157, i64 %156, !dbg !3611
  store double %155, double* %158, align 8, !dbg !3612
  %159 = load double, double* %26, align 8, !dbg !3613
  store double %159, double* %27, align 8, !dbg !3614
  %160 = load double, double* %23, align 8, !dbg !3615
  store double %160, double* %26, align 8, !dbg !3616
  br label %161, !dbg !3617

; <label>:161:                                    ; preds = %105
  %162 = load i64, i64* %19, align 8, !dbg !3618
  %163 = add i64 %162, 1, !dbg !3618
  store i64 %163, i64* %19, align 8, !dbg !3618
  br label %101, !dbg !3620, !llvm.loop !3621

; <label>:164:                                    ; preds = %101
  %165 = call double @sqrt(double 2.000000e+00) #5, !dbg !3623
  %166 = fmul double %165, 1.000000e-280, !dbg !3624
  store double %166, double* %24, align 8, !dbg !3625
  store double 1.000000e+280, double* %25, align 8, !dbg !3626
  store i64 0, i64* %22, align 8, !dbg !3627
  store i64 1, i64* %20, align 8, !dbg !3628
  br label %167, !dbg !3630

; <label>:167:                                    ; preds = %455, %164
  %168 = load i64, i64* %20, align 8, !dbg !3631
  %169 = load i64, i64* %8, align 8, !dbg !3634
  %170 = icmp ult i64 %168, %169, !dbg !3635
  br i1 %170, label %171, label %458, !dbg !3636

; <label>:171:                                    ; preds = %167
  %172 = load double, double* %15, align 8, !dbg !3637
  %173 = load double, double* %25, align 8, !dbg !3639
  %174 = fmul double %173, %172, !dbg !3639
  store double %174, double* %25, align 8, !dbg !3639
  %175 = load i64, i64* %20, align 8, !dbg !3640
  %176 = add i64 %175, 1, !dbg !3641
  %177 = load i64, i64* %22, align 8, !dbg !3642
  %178 = add i64 %177, %176, !dbg !3642
  store i64 %178, i64* %22, align 8, !dbg !3642
  %179 = load double, double* %10, align 8, !dbg !3643
  %180 = load i64, i64* %20, align 8, !dbg !3644
  %181 = mul i64 2, %180, !dbg !3645
  %182 = sub i64 %181, 1, !dbg !3646
  %183 = load double*, double** %29, align 8, !dbg !3647
  %184 = getelementptr inbounds double, double* %183, i64 %182, !dbg !3647
  %185 = load double, double* %184, align 8, !dbg !3647
  %186 = fmul double %179, %185, !dbg !3648
  %187 = load i64, i64* %20, align 8, !dbg !3649
  %188 = mul i64 2, %187, !dbg !3650
  %189 = load double*, double** %29, align 8, !dbg !3651
  %190 = getelementptr inbounds double, double* %189, i64 %188, !dbg !3651
  %191 = load double, double* %190, align 8, !dbg !3651
  %192 = fdiv double %186, %191, !dbg !3652
  %193 = load double, double* %24, align 8, !dbg !3653
  %194 = fmul double %193, %192, !dbg !3653
  store double %194, double* %24, align 8, !dbg !3653
  %195 = load double, double* %24, align 8, !dbg !3654
  %196 = load double, double* %25, align 8, !dbg !3655
  %197 = fmul double %195, %196, !dbg !3656
  %198 = load i64, i64* %22, align 8, !dbg !3657
  %199 = load double*, double** %11, align 8, !dbg !3658
  %200 = getelementptr inbounds double, double* %199, i64 %198, !dbg !3658
  store double %197, double* %200, align 8, !dbg !3659
  %201 = load i64, i64* %20, align 8, !dbg !3660
  %202 = uitofp i64 %201 to double, !dbg !3660
  %203 = load double, double* %18, align 8, !dbg !3661
  %204 = fmul double %202, %203, !dbg !3662
  %205 = load i64, i64* %22, align 8, !dbg !3663
  %206 = load double*, double** %11, align 8, !dbg !3664
  %207 = getelementptr inbounds double, double* %206, i64 %205, !dbg !3664
  %208 = load double, double* %207, align 8, !dbg !3664
  %209 = fmul double %204, %208, !dbg !3665
  %210 = load i64, i64* %22, align 8, !dbg !3666
  %211 = load double*, double** %12, align 8, !dbg !3667
  %212 = getelementptr inbounds double, double* %211, i64 %210, !dbg !3667
  store double %209, double* %212, align 8, !dbg !3668
  %213 = load i64, i64* %20, align 8, !dbg !3669
  %214 = uitofp i64 %213 to double, !dbg !3669
  %215 = load double, double* %17, align 8, !dbg !3670
  %216 = load i64, i64* %20, align 8, !dbg !3671
  %217 = uitofp i64 %216 to double, !dbg !3671
  %218 = fmul double %215, %217, !dbg !3672
  %219 = load i64, i64* %20, align 8, !dbg !3673
  %220 = uitofp i64 %219 to double, !dbg !3673
  %221 = fadd double %220, 1.000000e+00, !dbg !3674
  %222 = fsub double %218, %221, !dbg !3675
  %223 = fmul double %214, %222, !dbg !3676
  %224 = load i64, i64* %22, align 8, !dbg !3677
  %225 = load double*, double** %11, align 8, !dbg !3678
  %226 = getelementptr inbounds double, double* %225, i64 %224, !dbg !3678
  %227 = load double, double* %226, align 8, !dbg !3678
  %228 = fmul double %223, %227, !dbg !3679
  %229 = load double, double* %18, align 8, !dbg !3680
  %230 = load i64, i64* %22, align 8, !dbg !3681
  %231 = load double*, double** %12, align 8, !dbg !3682
  %232 = getelementptr inbounds double, double* %231, i64 %230, !dbg !3682
  %233 = load double, double* %232, align 8, !dbg !3682
  %234 = fmul double %229, %233, !dbg !3683
  %235 = fsub double %228, %234, !dbg !3684
  %236 = load i64, i64* %22, align 8, !dbg !3685
  %237 = load double*, double** %13, align 8, !dbg !3686
  %238 = getelementptr inbounds double, double* %237, i64 %236, !dbg !3686
  store double %235, double* %238, align 8, !dbg !3687
  %239 = load double, double* %24, align 8, !dbg !3688
  store double %239, double* %27, align 8, !dbg !3689
  %240 = load i64, i64* %22, align 8, !dbg !3690
  %241 = load i64, i64* %20, align 8, !dbg !3691
  %242 = add i64 %240, %241, !dbg !3692
  %243 = add i64 %242, 1, !dbg !3693
  store i64 %243, i64* %21, align 8, !dbg !3694
  %244 = load double, double* %9, align 8, !dbg !3695
  %245 = load i64, i64* %20, align 8, !dbg !3696
  %246 = mul i64 2, %245, !dbg !3697
  %247 = add i64 %246, 1, !dbg !3698
  %248 = load double*, double** %29, align 8, !dbg !3699
  %249 = getelementptr inbounds double, double* %248, i64 %247, !dbg !3699
  %250 = load double, double* %249, align 8, !dbg !3699
  %251 = fmul double %244, %250, !dbg !3700
  %252 = load double, double* %27, align 8, !dbg !3701
  %253 = fmul double %251, %252, !dbg !3702
  store double %253, double* %26, align 8, !dbg !3703
  %254 = load double, double* %26, align 8, !dbg !3704
  %255 = load double, double* %25, align 8, !dbg !3705
  %256 = fmul double %254, %255, !dbg !3706
  %257 = load i64, i64* %21, align 8, !dbg !3707
  %258 = load double*, double** %11, align 8, !dbg !3708
  %259 = getelementptr inbounds double, double* %258, i64 %257, !dbg !3708
  store double %256, double* %259, align 8, !dbg !3709
  %260 = load double, double* %16, align 8, !dbg !3710
  %261 = load i64, i64* %20, align 8, !dbg !3711
  %262 = uitofp i64 %261 to double, !dbg !3711
  %263 = fadd double %262, 1.000000e+00, !dbg !3712
  %264 = load double, double* %9, align 8, !dbg !3713
  %265 = fmul double %263, %264, !dbg !3714
  %266 = load i64, i64* %21, align 8, !dbg !3715
  %267 = load double*, double** %11, align 8, !dbg !3716
  %268 = getelementptr inbounds double, double* %267, i64 %266, !dbg !3716
  %269 = load double, double* %268, align 8, !dbg !3716
  %270 = fmul double %265, %269, !dbg !3717
  %271 = load i64, i64* %20, align 8, !dbg !3718
  %272 = mul i64 2, %271, !dbg !3719
  %273 = add i64 %272, 1, !dbg !3720
  %274 = load double*, double** %29, align 8, !dbg !3721
  %275 = getelementptr inbounds double, double* %274, i64 %273, !dbg !3721
  %276 = load double, double* %275, align 8, !dbg !3721
  %277 = load i64, i64* %22, align 8, !dbg !3722
  %278 = load double*, double** %11, align 8, !dbg !3723
  %279 = getelementptr inbounds double, double* %278, i64 %277, !dbg !3723
  %280 = load double, double* %279, align 8, !dbg !3723
  %281 = fmul double %276, %280, !dbg !3724
  %282 = fsub double %270, %281, !dbg !3725
  %283 = fmul double %260, %282, !dbg !3726
  %284 = load i64, i64* %21, align 8, !dbg !3727
  %285 = load double*, double** %12, align 8, !dbg !3728
  %286 = getelementptr inbounds double, double* %285, i64 %284, !dbg !3728
  store double %283, double* %286, align 8, !dbg !3729
  %287 = load i64, i64* %20, align 8, !dbg !3730
  %288 = load i64, i64* %20, align 8, !dbg !3731
  %289 = mul i64 %287, %288, !dbg !3732
  %290 = uitofp i64 %289 to double, !dbg !3730
  %291 = load double, double* %17, align 8, !dbg !3733
  %292 = fmul double %290, %291, !dbg !3734
  %293 = load i64, i64* %20, align 8, !dbg !3735
  %294 = uitofp i64 %293 to double, !dbg !3735
  %295 = fadd double %294, 1.000000e+00, !dbg !3736
  %296 = load i64, i64* %20, align 8, !dbg !3737
  %297 = uitofp i64 %296 to double, !dbg !3737
  %298 = fadd double %297, 2.000000e+00, !dbg !3738
  %299 = fmul double %295, %298, !dbg !3739
  %300 = fsub double %292, %299, !dbg !3740
  %301 = load i64, i64* %21, align 8, !dbg !3741
  %302 = load double*, double** %11, align 8, !dbg !3742
  %303 = getelementptr inbounds double, double* %302, i64 %301, !dbg !3742
  %304 = load double, double* %303, align 8, !dbg !3742
  %305 = fmul double %300, %304, !dbg !3743
  %306 = load double, double* %18, align 8, !dbg !3744
  %307 = load i64, i64* %21, align 8, !dbg !3745
  %308 = load double*, double** %12, align 8, !dbg !3746
  %309 = getelementptr inbounds double, double* %308, i64 %307, !dbg !3746
  %310 = load double, double* %309, align 8, !dbg !3746
  %311 = fmul double %306, %310, !dbg !3747
  %312 = fsub double %305, %311, !dbg !3748
  %313 = load i64, i64* %21, align 8, !dbg !3749
  %314 = load double*, double** %13, align 8, !dbg !3750
  %315 = getelementptr inbounds double, double* %314, i64 %313, !dbg !3750
  store double %312, double* %315, align 8, !dbg !3751
  %316 = load i64, i64* %20, align 8, !dbg !3752
  %317 = add i64 %316, 2, !dbg !3754
  store i64 %317, i64* %19, align 8, !dbg !3755
  br label %318, !dbg !3756

; <label>:318:                                    ; preds = %451, %171
  %319 = load i64, i64* %19, align 8, !dbg !3757
  %320 = load i64, i64* %8, align 8, !dbg !3760
  %321 = icmp ule i64 %319, %320, !dbg !3761
  br i1 %321, label %322, label %454, !dbg !3762

; <label>:322:                                    ; preds = %318
  %323 = load i64, i64* %19, align 8, !dbg !3763
  %324 = load i64, i64* %21, align 8, !dbg !3765
  %325 = add i64 %324, %323, !dbg !3765
  store i64 %325, i64* %21, align 8, !dbg !3765
  %326 = load i64, i64* %19, align 8, !dbg !3766
  %327 = mul i64 2, %326, !dbg !3767
  %328 = sub i64 %327, 1, !dbg !3768
  %329 = uitofp i64 %328 to double, !dbg !3769
  %330 = load i64, i64* %19, align 8, !dbg !3770
  %331 = load i64, i64* %20, align 8, !dbg !3771
  %332 = add i64 %330, %331, !dbg !3772
  %333 = load double*, double** %29, align 8, !dbg !3773
  %334 = getelementptr inbounds double, double* %333, i64 %332, !dbg !3773
  %335 = load double, double* %334, align 8, !dbg !3773
  %336 = fdiv double %329, %335, !dbg !3774
  %337 = load i64, i64* %19, align 8, !dbg !3775
  %338 = load i64, i64* %20, align 8, !dbg !3776
  %339 = sub i64 %337, %338, !dbg !3777
  %340 = load double*, double** %29, align 8, !dbg !3778
  %341 = getelementptr inbounds double, double* %340, i64 %339, !dbg !3778
  %342 = load double, double* %341, align 8, !dbg !3778
  %343 = fdiv double %336, %342, !dbg !3779
  %344 = load double, double* %9, align 8, !dbg !3780
  %345 = fmul double %343, %344, !dbg !3781
  %346 = load double, double* %26, align 8, !dbg !3782
  %347 = fmul double %345, %346, !dbg !3783
  %348 = load i64, i64* %19, align 8, !dbg !3784
  %349 = load i64, i64* %20, align 8, !dbg !3785
  %350 = sub i64 %348, %349, !dbg !3786
  %351 = sub i64 %350, 1, !dbg !3787
  %352 = load double*, double** %29, align 8, !dbg !3788
  %353 = getelementptr inbounds double, double* %352, i64 %351, !dbg !3788
  %354 = load double, double* %353, align 8, !dbg !3788
  %355 = load i64, i64* %19, align 8, !dbg !3789
  %356 = load i64, i64* %20, align 8, !dbg !3790
  %357 = add i64 %355, %356, !dbg !3791
  %358 = sub i64 %357, 1, !dbg !3792
  %359 = load double*, double** %29, align 8, !dbg !3793
  %360 = getelementptr inbounds double, double* %359, i64 %358, !dbg !3793
  %361 = load double, double* %360, align 8, !dbg !3793
  %362 = fmul double %354, %361, !dbg !3794
  %363 = load i64, i64* %19, align 8, !dbg !3795
  %364 = load i64, i64* %20, align 8, !dbg !3796
  %365 = add i64 %363, %364, !dbg !3797
  %366 = load double*, double** %29, align 8, !dbg !3798
  %367 = getelementptr inbounds double, double* %366, i64 %365, !dbg !3798
  %368 = load double, double* %367, align 8, !dbg !3798
  %369 = fdiv double %362, %368, !dbg !3799
  %370 = load i64, i64* %19, align 8, !dbg !3800
  %371 = load i64, i64* %20, align 8, !dbg !3801
  %372 = sub i64 %370, %371, !dbg !3802
  %373 = load double*, double** %29, align 8, !dbg !3803
  %374 = getelementptr inbounds double, double* %373, i64 %372, !dbg !3803
  %375 = load double, double* %374, align 8, !dbg !3803
  %376 = fdiv double %369, %375, !dbg !3804
  %377 = load double, double* %27, align 8, !dbg !3805
  %378 = fmul double %376, %377, !dbg !3806
  %379 = fsub double %347, %378, !dbg !3807
  store double %379, double* %23, align 8, !dbg !3808
  %380 = load double, double* %23, align 8, !dbg !3809
  %381 = load double, double* %25, align 8, !dbg !3810
  %382 = fmul double %380, %381, !dbg !3811
  %383 = load i64, i64* %21, align 8, !dbg !3812
  %384 = load double*, double** %11, align 8, !dbg !3813
  %385 = getelementptr inbounds double, double* %384, i64 %383, !dbg !3813
  store double %382, double* %385, align 8, !dbg !3814
  %386 = load double, double* %16, align 8, !dbg !3815
  %387 = load i64, i64* %19, align 8, !dbg !3816
  %388 = uitofp i64 %387 to double, !dbg !3816
  %389 = load double, double* %9, align 8, !dbg !3817
  %390 = fmul double %388, %389, !dbg !3818
  %391 = load i64, i64* %21, align 8, !dbg !3819
  %392 = load double*, double** %11, align 8, !dbg !3820
  %393 = getelementptr inbounds double, double* %392, i64 %391, !dbg !3820
  %394 = load double, double* %393, align 8, !dbg !3820
  %395 = fmul double %390, %394, !dbg !3821
  %396 = load i64, i64* %19, align 8, !dbg !3822
  %397 = load i64, i64* %20, align 8, !dbg !3823
  %398 = add i64 %396, %397, !dbg !3824
  %399 = load double*, double** %29, align 8, !dbg !3825
  %400 = getelementptr inbounds double, double* %399, i64 %398, !dbg !3825
  %401 = load double, double* %400, align 8, !dbg !3825
  %402 = load i64, i64* %19, align 8, !dbg !3826
  %403 = load i64, i64* %20, align 8, !dbg !3827
  %404 = sub i64 %402, %403, !dbg !3828
  %405 = load double*, double** %29, align 8, !dbg !3829
  %406 = getelementptr inbounds double, double* %405, i64 %404, !dbg !3829
  %407 = load double, double* %406, align 8, !dbg !3829
  %408 = fmul double %401, %407, !dbg !3830
  %409 = load i64, i64* %21, align 8, !dbg !3831
  %410 = load i64, i64* %19, align 8, !dbg !3832
  %411 = sub i64 %409, %410, !dbg !3833
  %412 = load double*, double** %11, align 8, !dbg !3834
  %413 = getelementptr inbounds double, double* %412, i64 %411, !dbg !3834
  %414 = load double, double* %413, align 8, !dbg !3834
  %415 = fmul double %408, %414, !dbg !3835
  %416 = fsub double %395, %415, !dbg !3836
  %417 = fmul double %386, %416, !dbg !3837
  %418 = load i64, i64* %21, align 8, !dbg !3838
  %419 = load double*, double** %12, align 8, !dbg !3839
  %420 = getelementptr inbounds double, double* %419, i64 %418, !dbg !3839
  store double %417, double* %420, align 8, !dbg !3840
  %421 = load i64, i64* %20, align 8, !dbg !3841
  %422 = load i64, i64* %20, align 8, !dbg !3842
  %423 = mul i64 %421, %422, !dbg !3843
  %424 = uitofp i64 %423 to double, !dbg !3841
  %425 = load double, double* %17, align 8, !dbg !3844
  %426 = fmul double %424, %425, !dbg !3845
  %427 = load i64, i64* %19, align 8, !dbg !3846
  %428 = uitofp i64 %427 to double, !dbg !3846
  %429 = load i64, i64* %19, align 8, !dbg !3847
  %430 = uitofp i64 %429 to double, !dbg !3847
  %431 = fadd double %430, 1.000000e+00, !dbg !3848
  %432 = fmul double %428, %431, !dbg !3849
  %433 = fsub double %426, %432, !dbg !3850
  %434 = load i64, i64* %21, align 8, !dbg !3851
  %435 = load double*, double** %11, align 8, !dbg !3852
  %436 = getelementptr inbounds double, double* %435, i64 %434, !dbg !3852
  %437 = load double, double* %436, align 8, !dbg !3852
  %438 = fmul double %433, %437, !dbg !3853
  %439 = load double, double* %18, align 8, !dbg !3854
  %440 = load i64, i64* %21, align 8, !dbg !3855
  %441 = load double*, double** %12, align 8, !dbg !3856
  %442 = getelementptr inbounds double, double* %441, i64 %440, !dbg !3856
  %443 = load double, double* %442, align 8, !dbg !3856
  %444 = fmul double %439, %443, !dbg !3857
  %445 = fsub double %438, %444, !dbg !3858
  %446 = load i64, i64* %21, align 8, !dbg !3859
  %447 = load double*, double** %13, align 8, !dbg !3860
  %448 = getelementptr inbounds double, double* %447, i64 %446, !dbg !3860
  store double %445, double* %448, align 8, !dbg !3861
  %449 = load double, double* %26, align 8, !dbg !3862
  store double %449, double* %27, align 8, !dbg !3863
  %450 = load double, double* %23, align 8, !dbg !3864
  store double %450, double* %26, align 8, !dbg !3865
  br label %451, !dbg !3866

; <label>:451:                                    ; preds = %322
  %452 = load i64, i64* %19, align 8, !dbg !3867
  %453 = add i64 %452, 1, !dbg !3867
  store i64 %453, i64* %19, align 8, !dbg !3867
  br label %318, !dbg !3869, !llvm.loop !3870

; <label>:454:                                    ; preds = %318
  br label %455, !dbg !3872

; <label>:455:                                    ; preds = %454
  %456 = load i64, i64* %20, align 8, !dbg !3873
  %457 = add i64 %456, 1, !dbg !3873
  store i64 %457, i64* %20, align 8, !dbg !3873
  br label %167, !dbg !3875, !llvm.loop !3876

; <label>:458:                                    ; preds = %167
  %459 = load double, double* %15, align 8, !dbg !3878
  %460 = load double, double* %25, align 8, !dbg !3879
  %461 = fmul double %460, %459, !dbg !3879
  store double %461, double* %25, align 8, !dbg !3879
  %462 = load i64, i64* %20, align 8, !dbg !3880
  %463 = add i64 %462, 1, !dbg !3881
  %464 = load i64, i64* %22, align 8, !dbg !3882
  %465 = add i64 %464, %463, !dbg !3882
  store i64 %465, i64* %22, align 8, !dbg !3882
  %466 = load double, double* %10, align 8, !dbg !3883
  %467 = load i64, i64* %8, align 8, !dbg !3884
  %468 = mul i64 2, %467, !dbg !3885
  %469 = sub i64 %468, 1, !dbg !3886
  %470 = load double*, double** %29, align 8, !dbg !3887
  %471 = getelementptr inbounds double, double* %470, i64 %469, !dbg !3887
  %472 = load double, double* %471, align 8, !dbg !3887
  %473 = fmul double %466, %472, !dbg !3888
  %474 = load i64, i64* %8, align 8, !dbg !3889
  %475 = mul i64 2, %474, !dbg !3890
  %476 = load double*, double** %29, align 8, !dbg !3891
  %477 = getelementptr inbounds double, double* %476, i64 %475, !dbg !3891
  %478 = load double, double* %477, align 8, !dbg !3891
  %479 = fdiv double %473, %478, !dbg !3892
  %480 = load double, double* %24, align 8, !dbg !3893
  %481 = fmul double %480, %479, !dbg !3893
  store double %481, double* %24, align 8, !dbg !3893
  %482 = load double, double* %24, align 8, !dbg !3894
  %483 = load double, double* %25, align 8, !dbg !3895
  %484 = fmul double %482, %483, !dbg !3896
  %485 = load i64, i64* %22, align 8, !dbg !3897
  %486 = load double*, double** %11, align 8, !dbg !3898
  %487 = getelementptr inbounds double, double* %486, i64 %485, !dbg !3898
  store double %484, double* %487, align 8, !dbg !3899
  %488 = load i64, i64* %8, align 8, !dbg !3900
  %489 = uitofp i64 %488 to double, !dbg !3900
  %490 = load double, double* %18, align 8, !dbg !3901
  %491 = fmul double %489, %490, !dbg !3902
  %492 = load i64, i64* %22, align 8, !dbg !3903
  %493 = load double*, double** %11, align 8, !dbg !3904
  %494 = getelementptr inbounds double, double* %493, i64 %492, !dbg !3904
  %495 = load double, double* %494, align 8, !dbg !3904
  %496 = fmul double %491, %495, !dbg !3905
  %497 = load i64, i64* %22, align 8, !dbg !3906
  %498 = load double*, double** %12, align 8, !dbg !3907
  %499 = getelementptr inbounds double, double* %498, i64 %497, !dbg !3907
  store double %496, double* %499, align 8, !dbg !3908
  %500 = load i64, i64* %8, align 8, !dbg !3909
  %501 = uitofp i64 %500 to double, !dbg !3909
  %502 = load double, double* %17, align 8, !dbg !3910
  %503 = load i64, i64* %8, align 8, !dbg !3911
  %504 = uitofp i64 %503 to double, !dbg !3911
  %505 = fmul double %502, %504, !dbg !3912
  %506 = load i64, i64* %8, align 8, !dbg !3913
  %507 = uitofp i64 %506 to double, !dbg !3913
  %508 = fadd double %507, 1.000000e+00, !dbg !3914
  %509 = fsub double %505, %508, !dbg !3915
  %510 = fmul double %501, %509, !dbg !3916
  %511 = load i64, i64* %22, align 8, !dbg !3917
  %512 = load double*, double** %11, align 8, !dbg !3918
  %513 = getelementptr inbounds double, double* %512, i64 %511, !dbg !3918
  %514 = load double, double* %513, align 8, !dbg !3918
  %515 = fmul double %510, %514, !dbg !3919
  %516 = load double, double* %18, align 8, !dbg !3920
  %517 = load i64, i64* %22, align 8, !dbg !3921
  %518 = load double*, double** %12, align 8, !dbg !3922
  %519 = getelementptr inbounds double, double* %518, i64 %517, !dbg !3922
  %520 = load double, double* %519, align 8, !dbg !3922
  %521 = fmul double %516, %520, !dbg !3923
  %522 = fsub double %515, %521, !dbg !3924
  %523 = load i64, i64* %22, align 8, !dbg !3925
  %524 = load double*, double** %13, align 8, !dbg !3926
  %525 = getelementptr inbounds double, double* %524, i64 %523, !dbg !3926
  store double %522, double* %525, align 8, !dbg !3927
  store i32 0, i32* %7, align 4, !dbg !3928
  br label %528, !dbg !3928

; <label>:526:                                    ; preds = %54
  br label %527

; <label>:527:                                    ; preds = %526, %45
  br label %528

; <label>:528:                                    ; preds = %37, %44, %53, %88, %458, %527, %38
  %529 = load i32, i32* %7, align 4, !dbg !3929
  ret i32 %529, !dbg !3929
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_deriv2_alt_array(i32, i64, double, double*, double*, double*) #0 !dbg !3930 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3931, metadata !69), !dbg !3932
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3933, metadata !69), !dbg !3934
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3935, metadata !69), !dbg !3936
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !3937, metadata !69), !dbg !3938
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !3939, metadata !69), !dbg !3938
  store double* %5, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !3940, metadata !69), !dbg !3938
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3941, metadata !69), !dbg !3942
  %14 = load i32, i32* %7, align 4, !dbg !3943
  %15 = load i64, i64* %8, align 8, !dbg !3944
  %16 = load double, double* %9, align 8, !dbg !3945
  %17 = load double*, double** %10, align 8, !dbg !3946
  %18 = load double*, double** %11, align 8, !dbg !3946
  %19 = load double*, double** %12, align 8, !dbg !3946
  %20 = call i32 @gsl_sf_legendre_deriv2_alt_array_e(i32 %14, i64 %15, double %16, double 1.000000e+00, double* %17, double* %18, double* %19), !dbg !3947
  store i32 %20, i32* %13, align 4, !dbg !3942
  %21 = load i32, i32* %13, align 4, !dbg !3948
  ret i32 %21, !dbg !3949
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_deriv2_alt_array_e(i32, i64, double, double, double*, double*, double*) #0 !dbg !3950 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca double*, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3951, metadata !69), !dbg !3952
  store i64 %1, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3953, metadata !69), !dbg !3954
  store double %2, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !3955, metadata !69), !dbg !3956
  store double %3, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !3957, metadata !69), !dbg !3958
  store double* %4, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !3959, metadata !69), !dbg !3960
  store double* %5, double** %14, align 8
  call void @llvm.dbg.declare(metadata double** %14, metadata !3961, metadata !69), !dbg !3960
  store double* %6, double** %15, align 8
  call void @llvm.dbg.declare(metadata double** %15, metadata !3962, metadata !69), !dbg !3960
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3963, metadata !69), !dbg !3964
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3965, metadata !69), !dbg !3966
  %24 = load i64, i64* %10, align 8, !dbg !3967
  %25 = call i64 @gsl_sf_legendre_nlm(i64 %24), !dbg !3968
  store i64 %25, i64* %17, align 8, !dbg !3966
  call void @llvm.dbg.declare(metadata double* %18, metadata !3969, metadata !69), !dbg !3970
  store double 0.000000e+00, double* %18, align 8, !dbg !3970
  call void @llvm.dbg.declare(metadata double* %19, metadata !3971, metadata !69), !dbg !3972
  store double 0.000000e+00, double* %19, align 8, !dbg !3972
  %26 = load i32, i32* %9, align 4, !dbg !3973
  %27 = icmp eq i32 %26, 3, !dbg !3975
  br i1 %27, label %28, label %36, !dbg !3976

; <label>:28:                                     ; preds = %7
  %29 = load i64, i64* %10, align 8, !dbg !3977
  %30 = load double, double* %11, align 8, !dbg !3979
  %31 = load double, double* %12, align 8, !dbg !3980
  %32 = load double*, double** %13, align 8, !dbg !3981
  %33 = load double*, double** %14, align 8, !dbg !3981
  %34 = load double*, double** %15, align 8, !dbg !3981
  %35 = call i32 @legendre_deriv2_alt_array_none_e(i64 %29, double %30, double %31, double* %32, double* %33, double* %34), !dbg !3982
  store i32 %35, i32* %16, align 4, !dbg !3983
  br label %44, !dbg !3984

; <label>:36:                                     ; preds = %7
  %37 = load i64, i64* %10, align 8, !dbg !3985
  %38 = load double, double* %11, align 8, !dbg !3987
  %39 = load double, double* %12, align 8, !dbg !3988
  %40 = load double*, double** %13, align 8, !dbg !3989
  %41 = load double*, double** %14, align 8, !dbg !3989
  %42 = load double*, double** %15, align 8, !dbg !3989
  %43 = call i32 @legendre_deriv2_alt_array_schmidt_e(i64 %37, double %38, double %39, double* %40, double* %41, double* %42), !dbg !3990
  store i32 %43, i32* %16, align 4, !dbg !3991
  br label %44

; <label>:44:                                     ; preds = %36, %28
  %45 = load i32, i32* %9, align 4, !dbg !3992
  %46 = icmp eq i32 %45, 0, !dbg !3994
  br i1 %46, label %50, label %47, !dbg !3995

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %9, align 4, !dbg !3996
  %49 = icmp eq i32 %48, 3, !dbg !3998
  br i1 %49, label %50, label %52, !dbg !3999

; <label>:50:                                     ; preds = %47, %44
  %51 = load i32, i32* %16, align 4, !dbg !4000
  store i32 %51, i32* %8, align 4, !dbg !4002
  br label %170, !dbg !4002

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %9, align 4, !dbg !4003
  %54 = icmp eq i32 %53, 1, !dbg !4005
  br i1 %54, label %55, label %60, !dbg !4006

; <label>:55:                                     ; preds = %52
  %56 = call double @sqrt(double 0x402921FB54442D18) #5, !dbg !4007
  %57 = fdiv double 1.000000e+00, %56, !dbg !4009
  store double %57, double* %18, align 8, !dbg !4010
  %58 = call double @sqrt(double 0x403921FB54442D18) #5, !dbg !4011
  %59 = fdiv double 1.000000e+00, %58, !dbg !4012
  store double %59, double* %19, align 8, !dbg !4013
  br label %69, !dbg !4014

; <label>:60:                                     ; preds = %52
  %61 = load i32, i32* %9, align 4, !dbg !4015
  %62 = icmp eq i32 %61, 2, !dbg !4017
  br i1 %62, label %63, label %68, !dbg !4018

; <label>:63:                                     ; preds = %60
  %64 = call double @sqrt(double 2.000000e+00) #5, !dbg !4019
  %65 = fdiv double 1.000000e+00, %64, !dbg !4021
  store double %65, double* %18, align 8, !dbg !4022
  %66 = call double @sqrt(double 4.000000e+00) #5, !dbg !4023
  %67 = fdiv double 1.000000e+00, %66, !dbg !4024
  store double %67, double* %19, align 8, !dbg !4025
  br label %68, !dbg !4026

; <label>:68:                                     ; preds = %63, %60
  br label %69

; <label>:69:                                     ; preds = %68, %55
  br label %70

; <label>:70:                                     ; preds = %69
  call void @llvm.dbg.declare(metadata i64* %20, metadata !4027, metadata !69), !dbg !4029
  call void @llvm.dbg.declare(metadata i64* %21, metadata !4030, metadata !69), !dbg !4031
  call void @llvm.dbg.declare(metadata i64* %22, metadata !4032, metadata !69), !dbg !4033
  store i64 1, i64* %22, align 8, !dbg !4033
  call void @llvm.dbg.declare(metadata double** %23, metadata !4034, metadata !69), !dbg !4035
  %71 = load i64, i64* %17, align 8, !dbg !4036
  %72 = load double*, double** %13, align 8, !dbg !4037
  %73 = getelementptr inbounds double, double* %72, i64 %71, !dbg !4037
  store double* %73, double** %23, align 8, !dbg !4035
  store i64 0, i64* %20, align 8, !dbg !4038
  br label %74, !dbg !4040

; <label>:74:                                     ; preds = %165, %70
  %75 = load i64, i64* %20, align 8, !dbg !4041
  %76 = load i64, i64* %10, align 8, !dbg !4044
  %77 = icmp ule i64 %75, %76, !dbg !4045
  br i1 %77, label %78, label %168, !dbg !4046

; <label>:78:                                     ; preds = %74
  %79 = load i64, i64* %22, align 8, !dbg !4047
  %80 = load double*, double** %23, align 8, !dbg !4049
  %81 = getelementptr inbounds double, double* %80, i64 %79, !dbg !4049
  %82 = load double, double* %81, align 8, !dbg !4049
  %83 = load double, double* %18, align 8, !dbg !4050
  %84 = fmul double %82, %83, !dbg !4051
  %85 = load i64, i64* %20, align 8, !dbg !4052
  %86 = call i64 @gsl_sf_legendre_array_index(i64 %85, i64 0), !dbg !4053
  %87 = load double*, double** %13, align 8, !dbg !4054
  %88 = getelementptr inbounds double, double* %87, i64 %86, !dbg !4054
  %89 = load double, double* %88, align 8, !dbg !4055
  %90 = fmul double %89, %84, !dbg !4055
  store double %90, double* %88, align 8, !dbg !4055
  %91 = load i64, i64* %22, align 8, !dbg !4056
  %92 = load double*, double** %23, align 8, !dbg !4057
  %93 = getelementptr inbounds double, double* %92, i64 %91, !dbg !4057
  %94 = load double, double* %93, align 8, !dbg !4057
  %95 = load double, double* %18, align 8, !dbg !4058
  %96 = fmul double %94, %95, !dbg !4059
  %97 = load i64, i64* %20, align 8, !dbg !4060
  %98 = call i64 @gsl_sf_legendre_array_index(i64 %97, i64 0), !dbg !4061
  %99 = load double*, double** %14, align 8, !dbg !4062
  %100 = getelementptr inbounds double, double* %99, i64 %98, !dbg !4062
  %101 = load double, double* %100, align 8, !dbg !4063
  %102 = fmul double %101, %96, !dbg !4063
  store double %102, double* %100, align 8, !dbg !4063
  %103 = load i64, i64* %22, align 8, !dbg !4064
  %104 = load double*, double** %23, align 8, !dbg !4065
  %105 = getelementptr inbounds double, double* %104, i64 %103, !dbg !4065
  %106 = load double, double* %105, align 8, !dbg !4065
  %107 = load double, double* %18, align 8, !dbg !4066
  %108 = fmul double %106, %107, !dbg !4067
  %109 = load i64, i64* %20, align 8, !dbg !4068
  %110 = call i64 @gsl_sf_legendre_array_index(i64 %109, i64 0), !dbg !4069
  %111 = load double*, double** %15, align 8, !dbg !4070
  %112 = getelementptr inbounds double, double* %111, i64 %110, !dbg !4070
  %113 = load double, double* %112, align 8, !dbg !4071
  %114 = fmul double %113, %108, !dbg !4071
  store double %114, double* %112, align 8, !dbg !4071
  store i64 1, i64* %21, align 8, !dbg !4072
  br label %115, !dbg !4074

; <label>:115:                                    ; preds = %159, %78
  %116 = load i64, i64* %21, align 8, !dbg !4075
  %117 = load i64, i64* %20, align 8, !dbg !4078
  %118 = icmp ule i64 %116, %117, !dbg !4079
  br i1 %118, label %119, label %162, !dbg !4080

; <label>:119:                                    ; preds = %115
  %120 = load i64, i64* %22, align 8, !dbg !4081
  %121 = load double*, double** %23, align 8, !dbg !4083
  %122 = getelementptr inbounds double, double* %121, i64 %120, !dbg !4083
  %123 = load double, double* %122, align 8, !dbg !4083
  %124 = load double, double* %19, align 8, !dbg !4084
  %125 = fmul double %123, %124, !dbg !4085
  %126 = load i64, i64* %20, align 8, !dbg !4086
  %127 = load i64, i64* %21, align 8, !dbg !4087
  %128 = call i64 @gsl_sf_legendre_array_index(i64 %126, i64 %127), !dbg !4088
  %129 = load double*, double** %13, align 8, !dbg !4089
  %130 = getelementptr inbounds double, double* %129, i64 %128, !dbg !4089
  %131 = load double, double* %130, align 8, !dbg !4090
  %132 = fmul double %131, %125, !dbg !4090
  store double %132, double* %130, align 8, !dbg !4090
  %133 = load i64, i64* %22, align 8, !dbg !4091
  %134 = load double*, double** %23, align 8, !dbg !4092
  %135 = getelementptr inbounds double, double* %134, i64 %133, !dbg !4092
  %136 = load double, double* %135, align 8, !dbg !4092
  %137 = load double, double* %19, align 8, !dbg !4093
  %138 = fmul double %136, %137, !dbg !4094
  %139 = load i64, i64* %20, align 8, !dbg !4095
  %140 = load i64, i64* %21, align 8, !dbg !4096
  %141 = call i64 @gsl_sf_legendre_array_index(i64 %139, i64 %140), !dbg !4097
  %142 = load double*, double** %14, align 8, !dbg !4098
  %143 = getelementptr inbounds double, double* %142, i64 %141, !dbg !4098
  %144 = load double, double* %143, align 8, !dbg !4099
  %145 = fmul double %144, %138, !dbg !4099
  store double %145, double* %143, align 8, !dbg !4099
  %146 = load i64, i64* %22, align 8, !dbg !4100
  %147 = load double*, double** %23, align 8, !dbg !4101
  %148 = getelementptr inbounds double, double* %147, i64 %146, !dbg !4101
  %149 = load double, double* %148, align 8, !dbg !4101
  %150 = load double, double* %19, align 8, !dbg !4102
  %151 = fmul double %149, %150, !dbg !4103
  %152 = load i64, i64* %20, align 8, !dbg !4104
  %153 = load i64, i64* %21, align 8, !dbg !4105
  %154 = call i64 @gsl_sf_legendre_array_index(i64 %152, i64 %153), !dbg !4106
  %155 = load double*, double** %15, align 8, !dbg !4107
  %156 = getelementptr inbounds double, double* %155, i64 %154, !dbg !4107
  %157 = load double, double* %156, align 8, !dbg !4108
  %158 = fmul double %157, %151, !dbg !4108
  store double %158, double* %156, align 8, !dbg !4108
  br label %159, !dbg !4109

; <label>:159:                                    ; preds = %119
  %160 = load i64, i64* %21, align 8, !dbg !4110
  %161 = add i64 %160, 1, !dbg !4110
  store i64 %161, i64* %21, align 8, !dbg !4110
  br label %115, !dbg !4112, !llvm.loop !4113

; <label>:162:                                    ; preds = %115
  %163 = load i64, i64* %22, align 8, !dbg !4115
  %164 = add i64 %163, 2, !dbg !4115
  store i64 %164, i64* %22, align 8, !dbg !4115
  br label %165, !dbg !4116

; <label>:165:                                    ; preds = %162
  %166 = load i64, i64* %20, align 8, !dbg !4117
  %167 = add i64 %166, 1, !dbg !4117
  store i64 %167, i64* %20, align 8, !dbg !4117
  br label %74, !dbg !4119, !llvm.loop !4120

; <label>:168:                                    ; preds = %74
  %169 = load i32, i32* %16, align 4, !dbg !4122
  store i32 %169, i32* %8, align 4, !dbg !4123
  br label %170, !dbg !4123

; <label>:170:                                    ; preds = %168, %50
  %171 = load i32, i32* %8, align 4, !dbg !4124
  ret i32 %171, !dbg !4124
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_deriv2_alt_array_none_e(i64, double, double, double*, double*, double*) #0 !dbg !4125 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store i64 %0, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4126, metadata !69), !dbg !4127
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !4128, metadata !69), !dbg !4129
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !4130, metadata !69), !dbg !4131
  store double* %3, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !4132, metadata !69), !dbg !4133
  store double* %4, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !4134, metadata !69), !dbg !4133
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !4135, metadata !69), !dbg !4133
  %27 = load double, double* %9, align 8, !dbg !4136
  %28 = fcmp ogt double %27, 1.000000e+00, !dbg !4138
  br i1 %28, label %32, label %29, !dbg !4139

; <label>:29:                                     ; preds = %6
  %30 = load double, double* %9, align 8, !dbg !4140
  %31 = fcmp olt double %30, -1.000000e+00, !dbg !4142
  br i1 %31, label %32, label %35, !dbg !4143

; <label>:32:                                     ; preds = %29, %6
  br label %33, !dbg !4144, !llvm.loop !4146

; <label>:33:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 430, i32 1), !dbg !4147
  store i32 1, i32* %7, align 4, !dbg !4147
  br label %430, !dbg !4147
                                                  ; No predecessors!
  br label %430, !dbg !4150

; <label>:35:                                     ; preds = %29
  %36 = load double, double* %9, align 8, !dbg !4151
  %37 = call double @fabs(double %36) #1, !dbg !4153
  %38 = fcmp oeq double %37, 1.000000e+00, !dbg !4154
  br i1 %38, label %39, label %42, !dbg !4155

; <label>:39:                                     ; preds = %35
  br label %40, !dbg !4156, !llvm.loop !4158

; <label>:40:                                     ; preds = %39
  call void @gsl_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 435, i32 1), !dbg !4159
  store i32 1, i32* %7, align 4, !dbg !4159
  br label %430, !dbg !4159
                                                  ; No predecessors!
  br label %429, !dbg !4162

; <label>:42:                                     ; preds = %35
  %43 = load double, double* %10, align 8, !dbg !4163
  %44 = fcmp une double %43, 1.000000e+00, !dbg !4165
  br i1 %44, label %45, label %51, !dbg !4166

; <label>:45:                                     ; preds = %42
  %46 = load double, double* %10, align 8, !dbg !4167
  %47 = fcmp une double %46, -1.000000e+00, !dbg !4169
  br i1 %47, label %48, label %51, !dbg !4170

; <label>:48:                                     ; preds = %45
  br label %49, !dbg !4171, !llvm.loop !4173

; <label>:49:                                     ; preds = %48
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 440, i32 1), !dbg !4174
  store i32 1, i32* %7, align 4, !dbg !4174
  br label %430, !dbg !4174
                                                  ; No predecessors!
  br label %428, !dbg !4177

; <label>:51:                                     ; preds = %45, %42
  call void @llvm.dbg.declare(metadata double* %14, metadata !4178, metadata !69), !dbg !4180
  %52 = load double, double* %9, align 8, !dbg !4181
  %53 = fsub double 1.000000e+00, %52, !dbg !4182
  %54 = load double, double* %9, align 8, !dbg !4183
  %55 = fadd double 1.000000e+00, %54, !dbg !4184
  %56 = fmul double %53, %55, !dbg !4185
  %57 = call double @sqrt(double %56) #5, !dbg !4186
  store double %57, double* %14, align 8, !dbg !4180
  call void @llvm.dbg.declare(metadata double* %15, metadata !4187, metadata !69), !dbg !4188
  %58 = load double, double* %14, align 8, !dbg !4189
  %59 = fdiv double 1.000000e+00, %58, !dbg !4190
  store double %59, double* %15, align 8, !dbg !4188
  call void @llvm.dbg.declare(metadata double* %16, metadata !4191, metadata !69), !dbg !4192
  %60 = load double, double* %14, align 8, !dbg !4193
  %61 = fdiv double 1.000000e+00, %60, !dbg !4194
  %62 = load double, double* %14, align 8, !dbg !4195
  %63 = fdiv double %61, %62, !dbg !4196
  store double %63, double* %16, align 8, !dbg !4192
  call void @llvm.dbg.declare(metadata double* %17, metadata !4197, metadata !69), !dbg !4198
  %64 = load double, double* %9, align 8, !dbg !4199
  %65 = load double, double* %15, align 8, !dbg !4200
  %66 = fmul double %64, %65, !dbg !4201
  store double %66, double* %17, align 8, !dbg !4198
  call void @llvm.dbg.declare(metadata i64* %18, metadata !4202, metadata !69), !dbg !4203
  call void @llvm.dbg.declare(metadata i64* %19, metadata !4204, metadata !69), !dbg !4205
  call void @llvm.dbg.declare(metadata i64* %20, metadata !4206, metadata !69), !dbg !4207
  call void @llvm.dbg.declare(metadata i64* %21, metadata !4208, metadata !69), !dbg !4209
  call void @llvm.dbg.declare(metadata double* %22, metadata !4210, metadata !69), !dbg !4211
  call void @llvm.dbg.declare(metadata double* %23, metadata !4212, metadata !69), !dbg !4213
  call void @llvm.dbg.declare(metadata double* %24, metadata !4214, metadata !69), !dbg !4215
  call void @llvm.dbg.declare(metadata double* %25, metadata !4216, metadata !69), !dbg !4217
  call void @llvm.dbg.declare(metadata double* %26, metadata !4218, metadata !69), !dbg !4219
  store double 1.000000e+00, double* %25, align 8, !dbg !4220
  %67 = load double, double* %9, align 8, !dbg !4221
  store double %67, double* %24, align 8, !dbg !4222
  %68 = load double, double* %25, align 8, !dbg !4223
  %69 = load double*, double** %11, align 8, !dbg !4224
  %70 = getelementptr inbounds double, double* %69, i64 0, !dbg !4224
  store double %68, double* %70, align 8, !dbg !4225
  %71 = load double*, double** %12, align 8, !dbg !4226
  %72 = getelementptr inbounds double, double* %71, i64 0, !dbg !4226
  store double 0.000000e+00, double* %72, align 8, !dbg !4227
  %73 = load double*, double** %13, align 8, !dbg !4228
  %74 = getelementptr inbounds double, double* %73, i64 0, !dbg !4228
  store double 0.000000e+00, double* %74, align 8, !dbg !4229
  %75 = load i64, i64* %8, align 8, !dbg !4230
  %76 = icmp eq i64 %75, 0, !dbg !4232
  br i1 %76, label %77, label %78, !dbg !4233

; <label>:77:                                     ; preds = %51
  store i32 0, i32* %7, align 4, !dbg !4234
  br label %430, !dbg !4234

; <label>:78:                                     ; preds = %51
  %79 = load double, double* %24, align 8, !dbg !4235
  %80 = load double*, double** %11, align 8, !dbg !4236
  %81 = getelementptr inbounds double, double* %80, i64 1, !dbg !4236
  store double %79, double* %81, align 8, !dbg !4237
  %82 = load double, double* %14, align 8, !dbg !4238
  %83 = fsub double -0.000000e+00, %82, !dbg !4239
  %84 = load double*, double** %12, align 8, !dbg !4240
  %85 = getelementptr inbounds double, double* %84, i64 1, !dbg !4240
  store double %83, double* %85, align 8, !dbg !4241
  %86 = load double, double* %9, align 8, !dbg !4242
  %87 = fsub double -0.000000e+00, %86, !dbg !4243
  %88 = load double*, double** %13, align 8, !dbg !4244
  %89 = getelementptr inbounds double, double* %88, i64 1, !dbg !4244
  store double %87, double* %89, align 8, !dbg !4245
  store i64 1, i64* %20, align 8, !dbg !4246
  store i64 2, i64* %18, align 8, !dbg !4247
  br label %90, !dbg !4249

; <label>:90:                                     ; preds = %154, %78
  %91 = load i64, i64* %18, align 8, !dbg !4250
  %92 = load i64, i64* %8, align 8, !dbg !4253
  %93 = icmp ule i64 %91, %92, !dbg !4254
  br i1 %93, label %94, label %157, !dbg !4255

; <label>:94:                                     ; preds = %90
  %95 = load i64, i64* %18, align 8, !dbg !4256
  %96 = load i64, i64* %20, align 8, !dbg !4258
  %97 = add i64 %96, %95, !dbg !4258
  store i64 %97, i64* %20, align 8, !dbg !4258
  %98 = load i64, i64* %18, align 8, !dbg !4259
  %99 = mul i64 2, %98, !dbg !4260
  %100 = sub i64 %99, 1, !dbg !4261
  %101 = uitofp i64 %100 to double, !dbg !4262
  %102 = load double, double* %9, align 8, !dbg !4263
  %103 = fmul double %101, %102, !dbg !4264
  %104 = load double, double* %24, align 8, !dbg !4265
  %105 = fmul double %103, %104, !dbg !4266
  %106 = load i64, i64* %18, align 8, !dbg !4267
  %107 = sub i64 %106, 1, !dbg !4268
  %108 = uitofp i64 %107 to double, !dbg !4269
  %109 = load double, double* %25, align 8, !dbg !4270
  %110 = fmul double %108, %109, !dbg !4271
  %111 = fsub double %105, %110, !dbg !4272
  %112 = load i64, i64* %18, align 8, !dbg !4273
  %113 = uitofp i64 %112 to double, !dbg !4274
  %114 = fdiv double %111, %113, !dbg !4275
  store double %114, double* %22, align 8, !dbg !4276
  %115 = load double, double* %22, align 8, !dbg !4277
  %116 = load i64, i64* %20, align 8, !dbg !4278
  %117 = load double*, double** %11, align 8, !dbg !4279
  %118 = getelementptr inbounds double, double* %117, i64 %116, !dbg !4279
  store double %115, double* %118, align 8, !dbg !4280
  %119 = load i64, i64* %18, align 8, !dbg !4281
  %120 = uitofp i64 %119 to double, !dbg !4282
  %121 = fsub double -0.000000e+00, %120, !dbg !4283
  %122 = load double, double* %24, align 8, !dbg !4284
  %123 = load double, double* %9, align 8, !dbg !4285
  %124 = load double, double* %22, align 8, !dbg !4286
  %125 = fmul double %123, %124, !dbg !4287
  %126 = fsub double %122, %125, !dbg !4288
  %127 = fmul double %121, %126, !dbg !4289
  %128 = load double, double* %15, align 8, !dbg !4290
  %129 = fmul double %127, %128, !dbg !4291
  %130 = load i64, i64* %20, align 8, !dbg !4292
  %131 = load double*, double** %12, align 8, !dbg !4293
  %132 = getelementptr inbounds double, double* %131, i64 %130, !dbg !4293
  store double %129, double* %132, align 8, !dbg !4294
  %133 = load i64, i64* %18, align 8, !dbg !4295
  %134 = uitofp i64 %133 to double, !dbg !4296
  %135 = fsub double -0.000000e+00, %134, !dbg !4297
  %136 = load i64, i64* %18, align 8, !dbg !4298
  %137 = uitofp i64 %136 to double, !dbg !4298
  %138 = fadd double %137, 1.000000e+00, !dbg !4299
  %139 = fmul double %135, %138, !dbg !4300
  %140 = load double, double* %22, align 8, !dbg !4301
  %141 = fmul double %139, %140, !dbg !4302
  %142 = load double, double* %17, align 8, !dbg !4303
  %143 = load i64, i64* %20, align 8, !dbg !4304
  %144 = load double*, double** %12, align 8, !dbg !4305
  %145 = getelementptr inbounds double, double* %144, i64 %143, !dbg !4305
  %146 = load double, double* %145, align 8, !dbg !4305
  %147 = fmul double %142, %146, !dbg !4306
  %148 = fsub double %141, %147, !dbg !4307
  %149 = load i64, i64* %20, align 8, !dbg !4308
  %150 = load double*, double** %13, align 8, !dbg !4309
  %151 = getelementptr inbounds double, double* %150, i64 %149, !dbg !4309
  store double %148, double* %151, align 8, !dbg !4310
  %152 = load double, double* %24, align 8, !dbg !4311
  store double %152, double* %25, align 8, !dbg !4312
  %153 = load double, double* %22, align 8, !dbg !4313
  store double %153, double* %24, align 8, !dbg !4314
  br label %154, !dbg !4315

; <label>:154:                                    ; preds = %94
  %155 = load i64, i64* %18, align 8, !dbg !4316
  %156 = add i64 %155, 1, !dbg !4316
  store i64 %156, i64* %18, align 8, !dbg !4316
  br label %90, !dbg !4318, !llvm.loop !4319

; <label>:157:                                    ; preds = %90
  store double 1.000000e+00, double* %23, align 8, !dbg !4321
  store double -1.000000e+00, double* %26, align 8, !dbg !4322
  store i64 0, i64* %21, align 8, !dbg !4323
  store i64 1, i64* %19, align 8, !dbg !4324
  br label %158, !dbg !4326

; <label>:158:                                    ; preds = %370, %157
  %159 = load i64, i64* %19, align 8, !dbg !4327
  %160 = load i64, i64* %8, align 8, !dbg !4330
  %161 = sub i64 %160, 1, !dbg !4331
  %162 = icmp ule i64 %159, %161, !dbg !4332
  br i1 %162, label %163, label %373, !dbg !4333

; <label>:163:                                    ; preds = %158
  %164 = load i64, i64* %19, align 8, !dbg !4334
  %165 = add i64 %164, 1, !dbg !4336
  %166 = load i64, i64* %21, align 8, !dbg !4337
  %167 = add i64 %166, %165, !dbg !4337
  store i64 %167, i64* %21, align 8, !dbg !4337
  %168 = load double, double* %26, align 8, !dbg !4338
  %169 = fadd double %168, 2.000000e+00, !dbg !4338
  store double %169, double* %26, align 8, !dbg !4338
  %170 = load double, double* %10, align 8, !dbg !4339
  %171 = load double, double* %14, align 8, !dbg !4340
  %172 = fmul double %170, %171, !dbg !4341
  %173 = load double, double* %26, align 8, !dbg !4342
  %174 = fmul double %172, %173, !dbg !4343
  %175 = load double, double* %23, align 8, !dbg !4344
  %176 = fmul double %175, %174, !dbg !4344
  store double %176, double* %23, align 8, !dbg !4344
  %177 = load double, double* %23, align 8, !dbg !4345
  %178 = load i64, i64* %21, align 8, !dbg !4346
  %179 = load double*, double** %11, align 8, !dbg !4347
  %180 = getelementptr inbounds double, double* %179, i64 %178, !dbg !4347
  store double %177, double* %180, align 8, !dbg !4348
  %181 = load i64, i64* %19, align 8, !dbg !4349
  %182 = uitofp i64 %181 to double, !dbg !4349
  %183 = load double, double* %17, align 8, !dbg !4350
  %184 = fmul double %182, %183, !dbg !4351
  %185 = load double, double* %23, align 8, !dbg !4352
  %186 = fmul double %184, %185, !dbg !4353
  %187 = load i64, i64* %21, align 8, !dbg !4354
  %188 = load double*, double** %12, align 8, !dbg !4355
  %189 = getelementptr inbounds double, double* %188, i64 %187, !dbg !4355
  store double %186, double* %189, align 8, !dbg !4356
  %190 = load i64, i64* %19, align 8, !dbg !4357
  %191 = uitofp i64 %190 to double, !dbg !4357
  %192 = load double, double* %16, align 8, !dbg !4358
  %193 = load i64, i64* %19, align 8, !dbg !4359
  %194 = uitofp i64 %193 to double, !dbg !4359
  %195 = fmul double %192, %194, !dbg !4360
  %196 = load i64, i64* %19, align 8, !dbg !4361
  %197 = uitofp i64 %196 to double, !dbg !4361
  %198 = fadd double %197, 1.000000e+00, !dbg !4362
  %199 = fsub double %195, %198, !dbg !4363
  %200 = fmul double %191, %199, !dbg !4364
  %201 = load i64, i64* %21, align 8, !dbg !4365
  %202 = load double*, double** %11, align 8, !dbg !4366
  %203 = getelementptr inbounds double, double* %202, i64 %201, !dbg !4366
  %204 = load double, double* %203, align 8, !dbg !4366
  %205 = fmul double %200, %204, !dbg !4367
  %206 = load double, double* %17, align 8, !dbg !4368
  %207 = load i64, i64* %21, align 8, !dbg !4369
  %208 = load double*, double** %12, align 8, !dbg !4370
  %209 = getelementptr inbounds double, double* %208, i64 %207, !dbg !4370
  %210 = load double, double* %209, align 8, !dbg !4370
  %211 = fmul double %206, %210, !dbg !4371
  %212 = fsub double %205, %211, !dbg !4372
  %213 = load i64, i64* %21, align 8, !dbg !4373
  %214 = load double*, double** %13, align 8, !dbg !4374
  %215 = getelementptr inbounds double, double* %214, i64 %213, !dbg !4374
  store double %212, double* %215, align 8, !dbg !4375
  %216 = load double, double* %23, align 8, !dbg !4376
  store double %216, double* %25, align 8, !dbg !4377
  %217 = load i64, i64* %21, align 8, !dbg !4378
  %218 = load i64, i64* %19, align 8, !dbg !4379
  %219 = add i64 %217, %218, !dbg !4380
  %220 = add i64 %219, 1, !dbg !4381
  store i64 %220, i64* %20, align 8, !dbg !4382
  %221 = load double, double* %9, align 8, !dbg !4383
  %222 = load double, double* %23, align 8, !dbg !4384
  %223 = fmul double %221, %222, !dbg !4385
  %224 = load i64, i64* %19, align 8, !dbg !4386
  %225 = mul i64 2, %224, !dbg !4387
  %226 = add i64 %225, 1, !dbg !4388
  %227 = uitofp i64 %226 to double, !dbg !4389
  %228 = fmul double %223, %227, !dbg !4390
  store double %228, double* %24, align 8, !dbg !4391
  %229 = load double, double* %24, align 8, !dbg !4392
  %230 = load i64, i64* %20, align 8, !dbg !4393
  %231 = load double*, double** %11, align 8, !dbg !4394
  %232 = getelementptr inbounds double, double* %231, i64 %230, !dbg !4394
  store double %229, double* %232, align 8, !dbg !4395
  %233 = load double, double* %15, align 8, !dbg !4396
  %234 = fsub double -0.000000e+00, %233, !dbg !4397
  %235 = load i64, i64* %19, align 8, !dbg !4398
  %236 = mul i64 2, %235, !dbg !4399
  %237 = add i64 %236, 1, !dbg !4400
  %238 = uitofp i64 %237 to double, !dbg !4401
  %239 = load double, double* %23, align 8, !dbg !4402
  %240 = fmul double %238, %239, !dbg !4403
  %241 = load i64, i64* %19, align 8, !dbg !4404
  %242 = add i64 %241, 1, !dbg !4405
  %243 = uitofp i64 %242 to double, !dbg !4406
  %244 = load double, double* %9, align 8, !dbg !4407
  %245 = fmul double %243, %244, !dbg !4408
  %246 = load double, double* %24, align 8, !dbg !4409
  %247 = fmul double %245, %246, !dbg !4410
  %248 = fsub double %240, %247, !dbg !4411
  %249 = fmul double %234, %248, !dbg !4412
  %250 = load i64, i64* %20, align 8, !dbg !4413
  %251 = load double*, double** %12, align 8, !dbg !4414
  %252 = getelementptr inbounds double, double* %251, i64 %250, !dbg !4414
  store double %249, double* %252, align 8, !dbg !4415
  %253 = load i64, i64* %19, align 8, !dbg !4416
  %254 = load i64, i64* %19, align 8, !dbg !4417
  %255 = mul i64 %253, %254, !dbg !4418
  %256 = uitofp i64 %255 to double, !dbg !4416
  %257 = load double, double* %16, align 8, !dbg !4419
  %258 = fmul double %256, %257, !dbg !4420
  %259 = load i64, i64* %19, align 8, !dbg !4421
  %260 = uitofp i64 %259 to double, !dbg !4421
  %261 = fadd double %260, 1.000000e+00, !dbg !4422
  %262 = load i64, i64* %19, align 8, !dbg !4423
  %263 = uitofp i64 %262 to double, !dbg !4423
  %264 = fadd double %263, 2.000000e+00, !dbg !4424
  %265 = fmul double %261, %264, !dbg !4425
  %266 = fsub double %258, %265, !dbg !4426
  %267 = load i64, i64* %20, align 8, !dbg !4427
  %268 = load double*, double** %11, align 8, !dbg !4428
  %269 = getelementptr inbounds double, double* %268, i64 %267, !dbg !4428
  %270 = load double, double* %269, align 8, !dbg !4428
  %271 = fmul double %266, %270, !dbg !4429
  %272 = load double, double* %17, align 8, !dbg !4430
  %273 = load i64, i64* %20, align 8, !dbg !4431
  %274 = load double*, double** %12, align 8, !dbg !4432
  %275 = getelementptr inbounds double, double* %274, i64 %273, !dbg !4432
  %276 = load double, double* %275, align 8, !dbg !4432
  %277 = fmul double %272, %276, !dbg !4433
  %278 = fsub double %271, %277, !dbg !4434
  %279 = load i64, i64* %20, align 8, !dbg !4435
  %280 = load double*, double** %13, align 8, !dbg !4436
  %281 = getelementptr inbounds double, double* %280, i64 %279, !dbg !4436
  store double %278, double* %281, align 8, !dbg !4437
  %282 = load i64, i64* %19, align 8, !dbg !4438
  %283 = add i64 %282, 2, !dbg !4440
  store i64 %283, i64* %18, align 8, !dbg !4441
  br label %284, !dbg !4442

; <label>:284:                                    ; preds = %366, %163
  %285 = load i64, i64* %18, align 8, !dbg !4443
  %286 = load i64, i64* %8, align 8, !dbg !4446
  %287 = icmp ule i64 %285, %286, !dbg !4447
  br i1 %287, label %288, label %369, !dbg !4448

; <label>:288:                                    ; preds = %284
  %289 = load i64, i64* %18, align 8, !dbg !4449
  %290 = load i64, i64* %20, align 8, !dbg !4451
  %291 = add i64 %290, %289, !dbg !4451
  store i64 %291, i64* %20, align 8, !dbg !4451
  %292 = load i64, i64* %18, align 8, !dbg !4452
  %293 = mul i64 2, %292, !dbg !4453
  %294 = sub i64 %293, 1, !dbg !4454
  %295 = uitofp i64 %294 to double, !dbg !4455
  %296 = load double, double* %9, align 8, !dbg !4456
  %297 = fmul double %295, %296, !dbg !4457
  %298 = load double, double* %24, align 8, !dbg !4458
  %299 = fmul double %297, %298, !dbg !4459
  %300 = load i64, i64* %18, align 8, !dbg !4460
  %301 = load i64, i64* %19, align 8, !dbg !4461
  %302 = add i64 %300, %301, !dbg !4462
  %303 = sub i64 %302, 1, !dbg !4463
  %304 = uitofp i64 %303 to double, !dbg !4464
  %305 = load double, double* %25, align 8, !dbg !4465
  %306 = fmul double %304, %305, !dbg !4466
  %307 = fsub double %299, %306, !dbg !4467
  %308 = load i64, i64* %18, align 8, !dbg !4468
  %309 = load i64, i64* %19, align 8, !dbg !4469
  %310 = sub i64 %308, %309, !dbg !4470
  %311 = uitofp i64 %310 to double, !dbg !4471
  %312 = fdiv double %307, %311, !dbg !4472
  store double %312, double* %22, align 8, !dbg !4473
  %313 = load double, double* %22, align 8, !dbg !4474
  %314 = load i64, i64* %20, align 8, !dbg !4475
  %315 = load double*, double** %11, align 8, !dbg !4476
  %316 = getelementptr inbounds double, double* %315, i64 %314, !dbg !4476
  store double %313, double* %316, align 8, !dbg !4477
  %317 = load double, double* %15, align 8, !dbg !4478
  %318 = fsub double -0.000000e+00, %317, !dbg !4479
  %319 = load i64, i64* %18, align 8, !dbg !4480
  %320 = load i64, i64* %19, align 8, !dbg !4481
  %321 = add i64 %319, %320, !dbg !4482
  %322 = uitofp i64 %321 to double, !dbg !4483
  %323 = load double, double* %24, align 8, !dbg !4484
  %324 = fmul double %322, %323, !dbg !4485
  %325 = load i64, i64* %18, align 8, !dbg !4486
  %326 = uitofp i64 %325 to double, !dbg !4486
  %327 = load double, double* %9, align 8, !dbg !4487
  %328 = fmul double %326, %327, !dbg !4488
  %329 = load double, double* %22, align 8, !dbg !4489
  %330 = fmul double %328, %329, !dbg !4490
  %331 = fsub double %324, %330, !dbg !4491
  %332 = fmul double %318, %331, !dbg !4492
  %333 = load i64, i64* %20, align 8, !dbg !4493
  %334 = load double*, double** %12, align 8, !dbg !4494
  %335 = getelementptr inbounds double, double* %334, i64 %333, !dbg !4494
  store double %332, double* %335, align 8, !dbg !4495
  %336 = load i64, i64* %19, align 8, !dbg !4496
  %337 = load i64, i64* %19, align 8, !dbg !4497
  %338 = mul i64 %336, %337, !dbg !4498
  %339 = uitofp i64 %338 to double, !dbg !4496
  %340 = load double, double* %16, align 8, !dbg !4499
  %341 = fmul double %339, %340, !dbg !4500
  %342 = load i64, i64* %18, align 8, !dbg !4501
  %343 = uitofp i64 %342 to double, !dbg !4501
  %344 = load i64, i64* %18, align 8, !dbg !4502
  %345 = uitofp i64 %344 to double, !dbg !4502
  %346 = fadd double %345, 1.000000e+00, !dbg !4503
  %347 = fmul double %343, %346, !dbg !4504
  %348 = fsub double %341, %347, !dbg !4505
  %349 = load i64, i64* %20, align 8, !dbg !4506
  %350 = load double*, double** %11, align 8, !dbg !4507
  %351 = getelementptr inbounds double, double* %350, i64 %349, !dbg !4507
  %352 = load double, double* %351, align 8, !dbg !4507
  %353 = fmul double %348, %352, !dbg !4508
  %354 = load double, double* %17, align 8, !dbg !4509
  %355 = load i64, i64* %20, align 8, !dbg !4510
  %356 = load double*, double** %12, align 8, !dbg !4511
  %357 = getelementptr inbounds double, double* %356, i64 %355, !dbg !4511
  %358 = load double, double* %357, align 8, !dbg !4511
  %359 = fmul double %354, %358, !dbg !4512
  %360 = fsub double %353, %359, !dbg !4513
  %361 = load i64, i64* %20, align 8, !dbg !4514
  %362 = load double*, double** %13, align 8, !dbg !4515
  %363 = getelementptr inbounds double, double* %362, i64 %361, !dbg !4515
  store double %360, double* %363, align 8, !dbg !4516
  %364 = load double, double* %24, align 8, !dbg !4517
  store double %364, double* %25, align 8, !dbg !4518
  %365 = load double, double* %22, align 8, !dbg !4519
  store double %365, double* %24, align 8, !dbg !4520
  br label %366, !dbg !4521

; <label>:366:                                    ; preds = %288
  %367 = load i64, i64* %18, align 8, !dbg !4522
  %368 = add i64 %367, 1, !dbg !4522
  store i64 %368, i64* %18, align 8, !dbg !4522
  br label %284, !dbg !4524, !llvm.loop !4525

; <label>:369:                                    ; preds = %284
  br label %370, !dbg !4527

; <label>:370:                                    ; preds = %369
  %371 = load i64, i64* %19, align 8, !dbg !4528
  %372 = add i64 %371, 1, !dbg !4528
  store i64 %372, i64* %19, align 8, !dbg !4528
  br label %158, !dbg !4530, !llvm.loop !4531

; <label>:373:                                    ; preds = %158
  %374 = load i64, i64* %19, align 8, !dbg !4533
  %375 = add i64 %374, 1, !dbg !4534
  %376 = load i64, i64* %21, align 8, !dbg !4535
  %377 = add i64 %376, %375, !dbg !4535
  store i64 %377, i64* %21, align 8, !dbg !4535
  %378 = load double, double* %26, align 8, !dbg !4536
  %379 = fadd double %378, 2.000000e+00, !dbg !4536
  store double %379, double* %26, align 8, !dbg !4536
  %380 = load double, double* %10, align 8, !dbg !4537
  %381 = load double, double* %14, align 8, !dbg !4538
  %382 = fmul double %380, %381, !dbg !4539
  %383 = load double, double* %26, align 8, !dbg !4540
  %384 = fmul double %382, %383, !dbg !4541
  %385 = load double, double* %23, align 8, !dbg !4542
  %386 = fmul double %385, %384, !dbg !4542
  store double %386, double* %23, align 8, !dbg !4542
  %387 = load double, double* %23, align 8, !dbg !4543
  %388 = load i64, i64* %21, align 8, !dbg !4544
  %389 = load double*, double** %11, align 8, !dbg !4545
  %390 = getelementptr inbounds double, double* %389, i64 %388, !dbg !4545
  store double %387, double* %390, align 8, !dbg !4546
  %391 = load i64, i64* %8, align 8, !dbg !4547
  %392 = uitofp i64 %391 to double, !dbg !4547
  %393 = load double, double* %9, align 8, !dbg !4548
  %394 = fmul double %392, %393, !dbg !4549
  %395 = load double, double* %23, align 8, !dbg !4550
  %396 = fmul double %394, %395, !dbg !4551
  %397 = load double, double* %15, align 8, !dbg !4552
  %398 = fmul double %396, %397, !dbg !4553
  %399 = load i64, i64* %21, align 8, !dbg !4554
  %400 = load double*, double** %12, align 8, !dbg !4555
  %401 = getelementptr inbounds double, double* %400, i64 %399, !dbg !4555
  store double %398, double* %401, align 8, !dbg !4556
  %402 = load i64, i64* %8, align 8, !dbg !4557
  %403 = uitofp i64 %402 to double, !dbg !4557
  %404 = load double, double* %16, align 8, !dbg !4558
  %405 = load i64, i64* %8, align 8, !dbg !4559
  %406 = uitofp i64 %405 to double, !dbg !4559
  %407 = fmul double %404, %406, !dbg !4560
  %408 = load i64, i64* %8, align 8, !dbg !4561
  %409 = uitofp i64 %408 to double, !dbg !4561
  %410 = fadd double %409, 1.000000e+00, !dbg !4562
  %411 = fsub double %407, %410, !dbg !4563
  %412 = fmul double %403, %411, !dbg !4564
  %413 = load i64, i64* %21, align 8, !dbg !4565
  %414 = load double*, double** %11, align 8, !dbg !4566
  %415 = getelementptr inbounds double, double* %414, i64 %413, !dbg !4566
  %416 = load double, double* %415, align 8, !dbg !4566
  %417 = fmul double %412, %416, !dbg !4567
  %418 = load double, double* %17, align 8, !dbg !4568
  %419 = load i64, i64* %21, align 8, !dbg !4569
  %420 = load double*, double** %12, align 8, !dbg !4570
  %421 = getelementptr inbounds double, double* %420, i64 %419, !dbg !4570
  %422 = load double, double* %421, align 8, !dbg !4570
  %423 = fmul double %418, %422, !dbg !4571
  %424 = fsub double %417, %423, !dbg !4572
  %425 = load i64, i64* %21, align 8, !dbg !4573
  %426 = load double*, double** %13, align 8, !dbg !4574
  %427 = getelementptr inbounds double, double* %426, i64 %425, !dbg !4574
  store double %424, double* %427, align 8, !dbg !4575
  store i32 0, i32* %7, align 4, !dbg !4576
  br label %430, !dbg !4576

; <label>:428:                                    ; preds = %50
  br label %429

; <label>:429:                                    ; preds = %428, %41
  br label %430

; <label>:430:                                    ; preds = %33, %40, %49, %77, %373, %429, %34
  %431 = load i32, i32* %7, align 4, !dbg !4577
  ret i32 %431, !dbg !4577
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_deriv2_alt_array_schmidt_e(i64, double, double, double*, double*, double*) #0 !dbg !4578 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i64, align 8
  %29 = alloca double*, align 8
  %30 = alloca double, align 8
  store i64 %0, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4579, metadata !69), !dbg !4580
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !4581, metadata !69), !dbg !4582
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !4583, metadata !69), !dbg !4584
  store double* %3, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !4585, metadata !69), !dbg !4586
  store double* %4, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !4587, metadata !69), !dbg !4586
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !4588, metadata !69), !dbg !4586
  %31 = load double, double* %9, align 8, !dbg !4589
  %32 = fcmp ogt double %31, 1.000000e+00, !dbg !4591
  br i1 %32, label %36, label %33, !dbg !4592

; <label>:33:                                     ; preds = %6
  %34 = load double, double* %9, align 8, !dbg !4593
  %35 = fcmp olt double %34, -1.000000e+00, !dbg !4595
  br i1 %35, label %36, label %39, !dbg !4596

; <label>:36:                                     ; preds = %33, %6
  br label %37, !dbg !4597, !llvm.loop !4599

; <label>:37:                                     ; preds = %36
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 222, i32 1), !dbg !4600
  store i32 1, i32* %7, align 4, !dbg !4600
  br label %528, !dbg !4600
                                                  ; No predecessors!
  br label %528, !dbg !4603

; <label>:39:                                     ; preds = %33
  %40 = load double, double* %9, align 8, !dbg !4604
  %41 = call double @fabs(double %40) #1, !dbg !4606
  %42 = fcmp oeq double %41, 1.000000e+00, !dbg !4607
  br i1 %42, label %43, label %46, !dbg !4608

; <label>:43:                                     ; preds = %39
  br label %44, !dbg !4609, !llvm.loop !4611

; <label>:44:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 227, i32 1), !dbg !4612
  store i32 1, i32* %7, align 4, !dbg !4612
  br label %528, !dbg !4612
                                                  ; No predecessors!
  br label %527, !dbg !4615

; <label>:46:                                     ; preds = %39
  %47 = load double, double* %10, align 8, !dbg !4616
  %48 = fcmp une double %47, 1.000000e+00, !dbg !4618
  br i1 %48, label %49, label %55, !dbg !4619

; <label>:49:                                     ; preds = %46
  %50 = load double, double* %10, align 8, !dbg !4620
  %51 = fcmp une double %50, -1.000000e+00, !dbg !4622
  br i1 %51, label %52, label %55, !dbg !4623

; <label>:52:                                     ; preds = %49
  br label %53, !dbg !4624, !llvm.loop !4626

; <label>:53:                                     ; preds = %52
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 232, i32 1), !dbg !4627
  store i32 1, i32* %7, align 4, !dbg !4627
  br label %528, !dbg !4627
                                                  ; No predecessors!
  br label %526, !dbg !4630

; <label>:55:                                     ; preds = %49, %46
  call void @llvm.dbg.declare(metadata double* %14, metadata !4631, metadata !69), !dbg !4633
  store double 1.000000e-280, double* %14, align 8, !dbg !4633
  call void @llvm.dbg.declare(metadata double* %15, metadata !4634, metadata !69), !dbg !4635
  %56 = load double, double* %9, align 8, !dbg !4636
  %57 = fsub double 1.000000e+00, %56, !dbg !4637
  %58 = load double, double* %9, align 8, !dbg !4638
  %59 = fadd double 1.000000e+00, %58, !dbg !4639
  %60 = fmul double %57, %59, !dbg !4640
  %61 = call double @sqrt(double %60) #5, !dbg !4641
  store double %61, double* %15, align 8, !dbg !4635
  call void @llvm.dbg.declare(metadata double* %16, metadata !4642, metadata !69), !dbg !4643
  %62 = load double, double* %15, align 8, !dbg !4644
  %63 = fdiv double 1.000000e+00, %62, !dbg !4645
  store double %63, double* %16, align 8, !dbg !4643
  call void @llvm.dbg.declare(metadata double* %17, metadata !4646, metadata !69), !dbg !4647
  %64 = load double, double* %15, align 8, !dbg !4648
  %65 = fdiv double 1.000000e+00, %64, !dbg !4649
  %66 = load double, double* %15, align 8, !dbg !4650
  %67 = fdiv double %65, %66, !dbg !4651
  store double %67, double* %17, align 8, !dbg !4647
  call void @llvm.dbg.declare(metadata double* %18, metadata !4652, metadata !69), !dbg !4653
  %68 = load double, double* %9, align 8, !dbg !4654
  %69 = load double, double* %16, align 8, !dbg !4655
  %70 = fmul double %68, %69, !dbg !4656
  store double %70, double* %18, align 8, !dbg !4653
  call void @llvm.dbg.declare(metadata i64* %19, metadata !4657, metadata !69), !dbg !4658
  call void @llvm.dbg.declare(metadata i64* %20, metadata !4659, metadata !69), !dbg !4660
  call void @llvm.dbg.declare(metadata i64* %21, metadata !4661, metadata !69), !dbg !4662
  call void @llvm.dbg.declare(metadata i64* %22, metadata !4663, metadata !69), !dbg !4664
  call void @llvm.dbg.declare(metadata double* %23, metadata !4665, metadata !69), !dbg !4666
  call void @llvm.dbg.declare(metadata double* %24, metadata !4667, metadata !69), !dbg !4668
  call void @llvm.dbg.declare(metadata double* %25, metadata !4669, metadata !69), !dbg !4670
  call void @llvm.dbg.declare(metadata double* %26, metadata !4671, metadata !69), !dbg !4672
  call void @llvm.dbg.declare(metadata double* %27, metadata !4673, metadata !69), !dbg !4674
  call void @llvm.dbg.declare(metadata i64* %28, metadata !4675, metadata !69), !dbg !4676
  %71 = load i64, i64* %8, align 8, !dbg !4677
  %72 = call i64 @gsl_sf_legendre_nlm(i64 %71), !dbg !4678
  store i64 %72, i64* %28, align 8, !dbg !4676
  call void @llvm.dbg.declare(metadata double** %29, metadata !4679, metadata !69), !dbg !4680
  %73 = load i64, i64* %28, align 8, !dbg !4681
  %74 = load double*, double** %11, align 8, !dbg !4682
  %75 = getelementptr inbounds double, double* %74, i64 %73, !dbg !4682
  store double* %75, double** %29, align 8, !dbg !4680
  %76 = load i64, i64* %8, align 8, !dbg !4683
  %77 = load double*, double** %29, align 8, !dbg !4684
  call void @legendre_sqrts(i64 %76, double* %77), !dbg !4685
  store double 1.000000e+00, double* %27, align 8, !dbg !4686
  %78 = load double, double* %9, align 8, !dbg !4687
  store double %78, double* %26, align 8, !dbg !4688
  %79 = load double, double* %27, align 8, !dbg !4689
  %80 = load double*, double** %11, align 8, !dbg !4690
  %81 = getelementptr inbounds double, double* %80, i64 0, !dbg !4690
  store double %79, double* %81, align 8, !dbg !4691
  %82 = load double*, double** %12, align 8, !dbg !4692
  %83 = getelementptr inbounds double, double* %82, i64 0, !dbg !4692
  store double 0.000000e+00, double* %83, align 8, !dbg !4693
  %84 = load double*, double** %13, align 8, !dbg !4694
  %85 = getelementptr inbounds double, double* %84, i64 0, !dbg !4694
  store double 0.000000e+00, double* %85, align 8, !dbg !4695
  %86 = load i64, i64* %8, align 8, !dbg !4696
  %87 = icmp eq i64 %86, 0, !dbg !4698
  br i1 %87, label %88, label %89, !dbg !4699

; <label>:88:                                     ; preds = %55
  store i32 0, i32* %7, align 4, !dbg !4700
  br label %528, !dbg !4700

; <label>:89:                                     ; preds = %55
  %90 = load double, double* %26, align 8, !dbg !4701
  %91 = load double*, double** %11, align 8, !dbg !4702
  %92 = getelementptr inbounds double, double* %91, i64 1, !dbg !4702
  store double %90, double* %92, align 8, !dbg !4703
  %93 = load double, double* %15, align 8, !dbg !4704
  %94 = fsub double -0.000000e+00, %93, !dbg !4705
  %95 = load double*, double** %12, align 8, !dbg !4706
  %96 = getelementptr inbounds double, double* %95, i64 1, !dbg !4706
  store double %94, double* %96, align 8, !dbg !4707
  %97 = load double, double* %9, align 8, !dbg !4708
  %98 = fsub double -0.000000e+00, %97, !dbg !4709
  %99 = load double*, double** %13, align 8, !dbg !4710
  %100 = getelementptr inbounds double, double* %99, i64 1, !dbg !4710
  store double %98, double* %100, align 8, !dbg !4711
  store i64 1, i64* %21, align 8, !dbg !4712
  store i64 2, i64* %19, align 8, !dbg !4713
  br label %101, !dbg !4715

; <label>:101:                                    ; preds = %161, %89
  %102 = load i64, i64* %19, align 8, !dbg !4716
  %103 = load i64, i64* %8, align 8, !dbg !4719
  %104 = icmp ule i64 %102, %103, !dbg !4720
  br i1 %104, label %105, label %164, !dbg !4721

; <label>:105:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata double* %30, metadata !4722, metadata !69), !dbg !4724
  %106 = load i64, i64* %19, align 8, !dbg !4725
  %107 = uitofp i64 %106 to double, !dbg !4726
  %108 = fdiv double 1.000000e+00, %107, !dbg !4727
  store double %108, double* %30, align 8, !dbg !4724
  %109 = load i64, i64* %19, align 8, !dbg !4728
  %110 = load i64, i64* %21, align 8, !dbg !4729
  %111 = add i64 %110, %109, !dbg !4729
  store i64 %111, i64* %21, align 8, !dbg !4729
  %112 = load double, double* %30, align 8, !dbg !4730
  %113 = fsub double 2.000000e+00, %112, !dbg !4731
  %114 = load double, double* %9, align 8, !dbg !4732
  %115 = fmul double %113, %114, !dbg !4733
  %116 = load double, double* %26, align 8, !dbg !4734
  %117 = fmul double %115, %116, !dbg !4735
  %118 = load double, double* %30, align 8, !dbg !4736
  %119 = fsub double 1.000000e+00, %118, !dbg !4737
  %120 = load double, double* %27, align 8, !dbg !4738
  %121 = fmul double %119, %120, !dbg !4739
  %122 = fsub double %117, %121, !dbg !4740
  store double %122, double* %23, align 8, !dbg !4741
  %123 = load double, double* %23, align 8, !dbg !4742
  %124 = load i64, i64* %21, align 8, !dbg !4743
  %125 = load double*, double** %11, align 8, !dbg !4744
  %126 = getelementptr inbounds double, double* %125, i64 %124, !dbg !4744
  store double %123, double* %126, align 8, !dbg !4745
  %127 = load double, double* %16, align 8, !dbg !4746
  %128 = load i64, i64* %19, align 8, !dbg !4747
  %129 = uitofp i64 %128 to double, !dbg !4747
  %130 = fmul double %127, %129, !dbg !4748
  %131 = load double, double* %9, align 8, !dbg !4749
  %132 = load double, double* %23, align 8, !dbg !4750
  %133 = fmul double %131, %132, !dbg !4751
  %134 = load double, double* %26, align 8, !dbg !4752
  %135 = fsub double %133, %134, !dbg !4753
  %136 = fmul double %130, %135, !dbg !4754
  %137 = load i64, i64* %21, align 8, !dbg !4755
  %138 = load double*, double** %12, align 8, !dbg !4756
  %139 = getelementptr inbounds double, double* %138, i64 %137, !dbg !4756
  store double %136, double* %139, align 8, !dbg !4757
  %140 = load i64, i64* %19, align 8, !dbg !4758
  %141 = uitofp i64 %140 to double, !dbg !4759
  %142 = fsub double -0.000000e+00, %141, !dbg !4760
  %143 = load i64, i64* %19, align 8, !dbg !4761
  %144 = uitofp i64 %143 to double, !dbg !4761
  %145 = fadd double %144, 1.000000e+00, !dbg !4762
  %146 = fmul double %142, %145, !dbg !4763
  %147 = load double, double* %23, align 8, !dbg !4764
  %148 = fmul double %146, %147, !dbg !4765
  %149 = load double, double* %18, align 8, !dbg !4766
  %150 = load i64, i64* %21, align 8, !dbg !4767
  %151 = load double*, double** %12, align 8, !dbg !4768
  %152 = getelementptr inbounds double, double* %151, i64 %150, !dbg !4768
  %153 = load double, double* %152, align 8, !dbg !4768
  %154 = fmul double %149, %153, !dbg !4769
  %155 = fsub double %148, %154, !dbg !4770
  %156 = load i64, i64* %21, align 8, !dbg !4771
  %157 = load double*, double** %13, align 8, !dbg !4772
  %158 = getelementptr inbounds double, double* %157, i64 %156, !dbg !4772
  store double %155, double* %158, align 8, !dbg !4773
  %159 = load double, double* %26, align 8, !dbg !4774
  store double %159, double* %27, align 8, !dbg !4775
  %160 = load double, double* %23, align 8, !dbg !4776
  store double %160, double* %26, align 8, !dbg !4777
  br label %161, !dbg !4778

; <label>:161:                                    ; preds = %105
  %162 = load i64, i64* %19, align 8, !dbg !4779
  %163 = add i64 %162, 1, !dbg !4779
  store i64 %163, i64* %19, align 8, !dbg !4779
  br label %101, !dbg !4781, !llvm.loop !4782

; <label>:164:                                    ; preds = %101
  %165 = call double @sqrt(double 2.000000e+00) #5, !dbg !4784
  %166 = fmul double %165, 1.000000e-280, !dbg !4785
  store double %166, double* %24, align 8, !dbg !4786
  store double 1.000000e+280, double* %25, align 8, !dbg !4787
  store i64 0, i64* %22, align 8, !dbg !4788
  store i64 1, i64* %20, align 8, !dbg !4789
  br label %167, !dbg !4791

; <label>:167:                                    ; preds = %455, %164
  %168 = load i64, i64* %20, align 8, !dbg !4792
  %169 = load i64, i64* %8, align 8, !dbg !4795
  %170 = icmp ult i64 %168, %169, !dbg !4796
  br i1 %170, label %171, label %458, !dbg !4797

; <label>:171:                                    ; preds = %167
  %172 = load double, double* %15, align 8, !dbg !4798
  %173 = load double, double* %25, align 8, !dbg !4800
  %174 = fmul double %173, %172, !dbg !4800
  store double %174, double* %25, align 8, !dbg !4800
  %175 = load i64, i64* %20, align 8, !dbg !4801
  %176 = add i64 %175, 1, !dbg !4802
  %177 = load i64, i64* %22, align 8, !dbg !4803
  %178 = add i64 %177, %176, !dbg !4803
  store i64 %178, i64* %22, align 8, !dbg !4803
  %179 = load double, double* %10, align 8, !dbg !4804
  %180 = load i64, i64* %20, align 8, !dbg !4805
  %181 = mul i64 2, %180, !dbg !4806
  %182 = sub i64 %181, 1, !dbg !4807
  %183 = load double*, double** %29, align 8, !dbg !4808
  %184 = getelementptr inbounds double, double* %183, i64 %182, !dbg !4808
  %185 = load double, double* %184, align 8, !dbg !4808
  %186 = fmul double %179, %185, !dbg !4809
  %187 = load i64, i64* %20, align 8, !dbg !4810
  %188 = mul i64 2, %187, !dbg !4811
  %189 = load double*, double** %29, align 8, !dbg !4812
  %190 = getelementptr inbounds double, double* %189, i64 %188, !dbg !4812
  %191 = load double, double* %190, align 8, !dbg !4812
  %192 = fdiv double %186, %191, !dbg !4813
  %193 = load double, double* %24, align 8, !dbg !4814
  %194 = fmul double %193, %192, !dbg !4814
  store double %194, double* %24, align 8, !dbg !4814
  %195 = load double, double* %24, align 8, !dbg !4815
  %196 = load double, double* %25, align 8, !dbg !4816
  %197 = fmul double %195, %196, !dbg !4817
  %198 = load i64, i64* %22, align 8, !dbg !4818
  %199 = load double*, double** %11, align 8, !dbg !4819
  %200 = getelementptr inbounds double, double* %199, i64 %198, !dbg !4819
  store double %197, double* %200, align 8, !dbg !4820
  %201 = load i64, i64* %20, align 8, !dbg !4821
  %202 = uitofp i64 %201 to double, !dbg !4821
  %203 = load double, double* %18, align 8, !dbg !4822
  %204 = fmul double %202, %203, !dbg !4823
  %205 = load i64, i64* %22, align 8, !dbg !4824
  %206 = load double*, double** %11, align 8, !dbg !4825
  %207 = getelementptr inbounds double, double* %206, i64 %205, !dbg !4825
  %208 = load double, double* %207, align 8, !dbg !4825
  %209 = fmul double %204, %208, !dbg !4826
  %210 = load i64, i64* %22, align 8, !dbg !4827
  %211 = load double*, double** %12, align 8, !dbg !4828
  %212 = getelementptr inbounds double, double* %211, i64 %210, !dbg !4828
  store double %209, double* %212, align 8, !dbg !4829
  %213 = load i64, i64* %20, align 8, !dbg !4830
  %214 = uitofp i64 %213 to double, !dbg !4830
  %215 = load double, double* %17, align 8, !dbg !4831
  %216 = load i64, i64* %20, align 8, !dbg !4832
  %217 = uitofp i64 %216 to double, !dbg !4832
  %218 = fmul double %215, %217, !dbg !4833
  %219 = load i64, i64* %20, align 8, !dbg !4834
  %220 = uitofp i64 %219 to double, !dbg !4834
  %221 = fadd double %220, 1.000000e+00, !dbg !4835
  %222 = fsub double %218, %221, !dbg !4836
  %223 = fmul double %214, %222, !dbg !4837
  %224 = load i64, i64* %22, align 8, !dbg !4838
  %225 = load double*, double** %11, align 8, !dbg !4839
  %226 = getelementptr inbounds double, double* %225, i64 %224, !dbg !4839
  %227 = load double, double* %226, align 8, !dbg !4839
  %228 = fmul double %223, %227, !dbg !4840
  %229 = load double, double* %18, align 8, !dbg !4841
  %230 = load i64, i64* %22, align 8, !dbg !4842
  %231 = load double*, double** %12, align 8, !dbg !4843
  %232 = getelementptr inbounds double, double* %231, i64 %230, !dbg !4843
  %233 = load double, double* %232, align 8, !dbg !4843
  %234 = fmul double %229, %233, !dbg !4844
  %235 = fsub double %228, %234, !dbg !4845
  %236 = load i64, i64* %22, align 8, !dbg !4846
  %237 = load double*, double** %13, align 8, !dbg !4847
  %238 = getelementptr inbounds double, double* %237, i64 %236, !dbg !4847
  store double %235, double* %238, align 8, !dbg !4848
  %239 = load double, double* %24, align 8, !dbg !4849
  store double %239, double* %27, align 8, !dbg !4850
  %240 = load i64, i64* %22, align 8, !dbg !4851
  %241 = load i64, i64* %20, align 8, !dbg !4852
  %242 = add i64 %240, %241, !dbg !4853
  %243 = add i64 %242, 1, !dbg !4854
  store i64 %243, i64* %21, align 8, !dbg !4855
  %244 = load double, double* %9, align 8, !dbg !4856
  %245 = load i64, i64* %20, align 8, !dbg !4857
  %246 = mul i64 2, %245, !dbg !4858
  %247 = add i64 %246, 1, !dbg !4859
  %248 = load double*, double** %29, align 8, !dbg !4860
  %249 = getelementptr inbounds double, double* %248, i64 %247, !dbg !4860
  %250 = load double, double* %249, align 8, !dbg !4860
  %251 = fmul double %244, %250, !dbg !4861
  %252 = load double, double* %27, align 8, !dbg !4862
  %253 = fmul double %251, %252, !dbg !4863
  store double %253, double* %26, align 8, !dbg !4864
  %254 = load double, double* %26, align 8, !dbg !4865
  %255 = load double, double* %25, align 8, !dbg !4866
  %256 = fmul double %254, %255, !dbg !4867
  %257 = load i64, i64* %21, align 8, !dbg !4868
  %258 = load double*, double** %11, align 8, !dbg !4869
  %259 = getelementptr inbounds double, double* %258, i64 %257, !dbg !4869
  store double %256, double* %259, align 8, !dbg !4870
  %260 = load double, double* %16, align 8, !dbg !4871
  %261 = load i64, i64* %20, align 8, !dbg !4872
  %262 = uitofp i64 %261 to double, !dbg !4872
  %263 = fadd double %262, 1.000000e+00, !dbg !4873
  %264 = load double, double* %9, align 8, !dbg !4874
  %265 = fmul double %263, %264, !dbg !4875
  %266 = load i64, i64* %21, align 8, !dbg !4876
  %267 = load double*, double** %11, align 8, !dbg !4877
  %268 = getelementptr inbounds double, double* %267, i64 %266, !dbg !4877
  %269 = load double, double* %268, align 8, !dbg !4877
  %270 = fmul double %265, %269, !dbg !4878
  %271 = load i64, i64* %20, align 8, !dbg !4879
  %272 = mul i64 2, %271, !dbg !4880
  %273 = add i64 %272, 1, !dbg !4881
  %274 = load double*, double** %29, align 8, !dbg !4882
  %275 = getelementptr inbounds double, double* %274, i64 %273, !dbg !4882
  %276 = load double, double* %275, align 8, !dbg !4882
  %277 = load i64, i64* %22, align 8, !dbg !4883
  %278 = load double*, double** %11, align 8, !dbg !4884
  %279 = getelementptr inbounds double, double* %278, i64 %277, !dbg !4884
  %280 = load double, double* %279, align 8, !dbg !4884
  %281 = fmul double %276, %280, !dbg !4885
  %282 = fsub double %270, %281, !dbg !4886
  %283 = fmul double %260, %282, !dbg !4887
  %284 = load i64, i64* %21, align 8, !dbg !4888
  %285 = load double*, double** %12, align 8, !dbg !4889
  %286 = getelementptr inbounds double, double* %285, i64 %284, !dbg !4889
  store double %283, double* %286, align 8, !dbg !4890
  %287 = load i64, i64* %20, align 8, !dbg !4891
  %288 = load i64, i64* %20, align 8, !dbg !4892
  %289 = mul i64 %287, %288, !dbg !4893
  %290 = uitofp i64 %289 to double, !dbg !4891
  %291 = load double, double* %17, align 8, !dbg !4894
  %292 = fmul double %290, %291, !dbg !4895
  %293 = load i64, i64* %20, align 8, !dbg !4896
  %294 = uitofp i64 %293 to double, !dbg !4896
  %295 = fadd double %294, 1.000000e+00, !dbg !4897
  %296 = load i64, i64* %20, align 8, !dbg !4898
  %297 = uitofp i64 %296 to double, !dbg !4898
  %298 = fadd double %297, 2.000000e+00, !dbg !4899
  %299 = fmul double %295, %298, !dbg !4900
  %300 = fsub double %292, %299, !dbg !4901
  %301 = load i64, i64* %21, align 8, !dbg !4902
  %302 = load double*, double** %11, align 8, !dbg !4903
  %303 = getelementptr inbounds double, double* %302, i64 %301, !dbg !4903
  %304 = load double, double* %303, align 8, !dbg !4903
  %305 = fmul double %300, %304, !dbg !4904
  %306 = load double, double* %18, align 8, !dbg !4905
  %307 = load i64, i64* %21, align 8, !dbg !4906
  %308 = load double*, double** %12, align 8, !dbg !4907
  %309 = getelementptr inbounds double, double* %308, i64 %307, !dbg !4907
  %310 = load double, double* %309, align 8, !dbg !4907
  %311 = fmul double %306, %310, !dbg !4908
  %312 = fsub double %305, %311, !dbg !4909
  %313 = load i64, i64* %21, align 8, !dbg !4910
  %314 = load double*, double** %13, align 8, !dbg !4911
  %315 = getelementptr inbounds double, double* %314, i64 %313, !dbg !4911
  store double %312, double* %315, align 8, !dbg !4912
  %316 = load i64, i64* %20, align 8, !dbg !4913
  %317 = add i64 %316, 2, !dbg !4915
  store i64 %317, i64* %19, align 8, !dbg !4916
  br label %318, !dbg !4917

; <label>:318:                                    ; preds = %451, %171
  %319 = load i64, i64* %19, align 8, !dbg !4918
  %320 = load i64, i64* %8, align 8, !dbg !4921
  %321 = icmp ule i64 %319, %320, !dbg !4922
  br i1 %321, label %322, label %454, !dbg !4923

; <label>:322:                                    ; preds = %318
  %323 = load i64, i64* %19, align 8, !dbg !4924
  %324 = load i64, i64* %21, align 8, !dbg !4926
  %325 = add i64 %324, %323, !dbg !4926
  store i64 %325, i64* %21, align 8, !dbg !4926
  %326 = load i64, i64* %19, align 8, !dbg !4927
  %327 = mul i64 2, %326, !dbg !4928
  %328 = sub i64 %327, 1, !dbg !4929
  %329 = uitofp i64 %328 to double, !dbg !4930
  %330 = load i64, i64* %19, align 8, !dbg !4931
  %331 = load i64, i64* %20, align 8, !dbg !4932
  %332 = add i64 %330, %331, !dbg !4933
  %333 = load double*, double** %29, align 8, !dbg !4934
  %334 = getelementptr inbounds double, double* %333, i64 %332, !dbg !4934
  %335 = load double, double* %334, align 8, !dbg !4934
  %336 = fdiv double %329, %335, !dbg !4935
  %337 = load i64, i64* %19, align 8, !dbg !4936
  %338 = load i64, i64* %20, align 8, !dbg !4937
  %339 = sub i64 %337, %338, !dbg !4938
  %340 = load double*, double** %29, align 8, !dbg !4939
  %341 = getelementptr inbounds double, double* %340, i64 %339, !dbg !4939
  %342 = load double, double* %341, align 8, !dbg !4939
  %343 = fdiv double %336, %342, !dbg !4940
  %344 = load double, double* %9, align 8, !dbg !4941
  %345 = fmul double %343, %344, !dbg !4942
  %346 = load double, double* %26, align 8, !dbg !4943
  %347 = fmul double %345, %346, !dbg !4944
  %348 = load i64, i64* %19, align 8, !dbg !4945
  %349 = load i64, i64* %20, align 8, !dbg !4946
  %350 = sub i64 %348, %349, !dbg !4947
  %351 = sub i64 %350, 1, !dbg !4948
  %352 = load double*, double** %29, align 8, !dbg !4949
  %353 = getelementptr inbounds double, double* %352, i64 %351, !dbg !4949
  %354 = load double, double* %353, align 8, !dbg !4949
  %355 = load i64, i64* %19, align 8, !dbg !4950
  %356 = load i64, i64* %20, align 8, !dbg !4951
  %357 = add i64 %355, %356, !dbg !4952
  %358 = sub i64 %357, 1, !dbg !4953
  %359 = load double*, double** %29, align 8, !dbg !4954
  %360 = getelementptr inbounds double, double* %359, i64 %358, !dbg !4954
  %361 = load double, double* %360, align 8, !dbg !4954
  %362 = fmul double %354, %361, !dbg !4955
  %363 = load i64, i64* %19, align 8, !dbg !4956
  %364 = load i64, i64* %20, align 8, !dbg !4957
  %365 = add i64 %363, %364, !dbg !4958
  %366 = load double*, double** %29, align 8, !dbg !4959
  %367 = getelementptr inbounds double, double* %366, i64 %365, !dbg !4959
  %368 = load double, double* %367, align 8, !dbg !4959
  %369 = fdiv double %362, %368, !dbg !4960
  %370 = load i64, i64* %19, align 8, !dbg !4961
  %371 = load i64, i64* %20, align 8, !dbg !4962
  %372 = sub i64 %370, %371, !dbg !4963
  %373 = load double*, double** %29, align 8, !dbg !4964
  %374 = getelementptr inbounds double, double* %373, i64 %372, !dbg !4964
  %375 = load double, double* %374, align 8, !dbg !4964
  %376 = fdiv double %369, %375, !dbg !4965
  %377 = load double, double* %27, align 8, !dbg !4966
  %378 = fmul double %376, %377, !dbg !4967
  %379 = fsub double %347, %378, !dbg !4968
  store double %379, double* %23, align 8, !dbg !4969
  %380 = load double, double* %23, align 8, !dbg !4970
  %381 = load double, double* %25, align 8, !dbg !4971
  %382 = fmul double %380, %381, !dbg !4972
  %383 = load i64, i64* %21, align 8, !dbg !4973
  %384 = load double*, double** %11, align 8, !dbg !4974
  %385 = getelementptr inbounds double, double* %384, i64 %383, !dbg !4974
  store double %382, double* %385, align 8, !dbg !4975
  %386 = load double, double* %16, align 8, !dbg !4976
  %387 = load i64, i64* %19, align 8, !dbg !4977
  %388 = uitofp i64 %387 to double, !dbg !4977
  %389 = load double, double* %9, align 8, !dbg !4978
  %390 = fmul double %388, %389, !dbg !4979
  %391 = load i64, i64* %21, align 8, !dbg !4980
  %392 = load double*, double** %11, align 8, !dbg !4981
  %393 = getelementptr inbounds double, double* %392, i64 %391, !dbg !4981
  %394 = load double, double* %393, align 8, !dbg !4981
  %395 = fmul double %390, %394, !dbg !4982
  %396 = load i64, i64* %19, align 8, !dbg !4983
  %397 = load i64, i64* %20, align 8, !dbg !4984
  %398 = add i64 %396, %397, !dbg !4985
  %399 = load double*, double** %29, align 8, !dbg !4986
  %400 = getelementptr inbounds double, double* %399, i64 %398, !dbg !4986
  %401 = load double, double* %400, align 8, !dbg !4986
  %402 = load i64, i64* %19, align 8, !dbg !4987
  %403 = load i64, i64* %20, align 8, !dbg !4988
  %404 = sub i64 %402, %403, !dbg !4989
  %405 = load double*, double** %29, align 8, !dbg !4990
  %406 = getelementptr inbounds double, double* %405, i64 %404, !dbg !4990
  %407 = load double, double* %406, align 8, !dbg !4990
  %408 = fmul double %401, %407, !dbg !4991
  %409 = load i64, i64* %21, align 8, !dbg !4992
  %410 = load i64, i64* %19, align 8, !dbg !4993
  %411 = sub i64 %409, %410, !dbg !4994
  %412 = load double*, double** %11, align 8, !dbg !4995
  %413 = getelementptr inbounds double, double* %412, i64 %411, !dbg !4995
  %414 = load double, double* %413, align 8, !dbg !4995
  %415 = fmul double %408, %414, !dbg !4996
  %416 = fsub double %395, %415, !dbg !4997
  %417 = fmul double %386, %416, !dbg !4998
  %418 = load i64, i64* %21, align 8, !dbg !4999
  %419 = load double*, double** %12, align 8, !dbg !5000
  %420 = getelementptr inbounds double, double* %419, i64 %418, !dbg !5000
  store double %417, double* %420, align 8, !dbg !5001
  %421 = load i64, i64* %20, align 8, !dbg !5002
  %422 = load i64, i64* %20, align 8, !dbg !5003
  %423 = mul i64 %421, %422, !dbg !5004
  %424 = uitofp i64 %423 to double, !dbg !5002
  %425 = load double, double* %17, align 8, !dbg !5005
  %426 = fmul double %424, %425, !dbg !5006
  %427 = load i64, i64* %19, align 8, !dbg !5007
  %428 = uitofp i64 %427 to double, !dbg !5007
  %429 = load i64, i64* %19, align 8, !dbg !5008
  %430 = uitofp i64 %429 to double, !dbg !5008
  %431 = fadd double %430, 1.000000e+00, !dbg !5009
  %432 = fmul double %428, %431, !dbg !5010
  %433 = fsub double %426, %432, !dbg !5011
  %434 = load i64, i64* %21, align 8, !dbg !5012
  %435 = load double*, double** %11, align 8, !dbg !5013
  %436 = getelementptr inbounds double, double* %435, i64 %434, !dbg !5013
  %437 = load double, double* %436, align 8, !dbg !5013
  %438 = fmul double %433, %437, !dbg !5014
  %439 = load double, double* %18, align 8, !dbg !5015
  %440 = load i64, i64* %21, align 8, !dbg !5016
  %441 = load double*, double** %12, align 8, !dbg !5017
  %442 = getelementptr inbounds double, double* %441, i64 %440, !dbg !5017
  %443 = load double, double* %442, align 8, !dbg !5017
  %444 = fmul double %439, %443, !dbg !5018
  %445 = fsub double %438, %444, !dbg !5019
  %446 = load i64, i64* %21, align 8, !dbg !5020
  %447 = load double*, double** %13, align 8, !dbg !5021
  %448 = getelementptr inbounds double, double* %447, i64 %446, !dbg !5021
  store double %445, double* %448, align 8, !dbg !5022
  %449 = load double, double* %26, align 8, !dbg !5023
  store double %449, double* %27, align 8, !dbg !5024
  %450 = load double, double* %23, align 8, !dbg !5025
  store double %450, double* %26, align 8, !dbg !5026
  br label %451, !dbg !5027

; <label>:451:                                    ; preds = %322
  %452 = load i64, i64* %19, align 8, !dbg !5028
  %453 = add i64 %452, 1, !dbg !5028
  store i64 %453, i64* %19, align 8, !dbg !5028
  br label %318, !dbg !5030, !llvm.loop !5031

; <label>:454:                                    ; preds = %318
  br label %455, !dbg !5033

; <label>:455:                                    ; preds = %454
  %456 = load i64, i64* %20, align 8, !dbg !5034
  %457 = add i64 %456, 1, !dbg !5034
  store i64 %457, i64* %20, align 8, !dbg !5034
  br label %167, !dbg !5036, !llvm.loop !5037

; <label>:458:                                    ; preds = %167
  %459 = load double, double* %15, align 8, !dbg !5039
  %460 = load double, double* %25, align 8, !dbg !5040
  %461 = fmul double %460, %459, !dbg !5040
  store double %461, double* %25, align 8, !dbg !5040
  %462 = load i64, i64* %20, align 8, !dbg !5041
  %463 = add i64 %462, 1, !dbg !5042
  %464 = load i64, i64* %22, align 8, !dbg !5043
  %465 = add i64 %464, %463, !dbg !5043
  store i64 %465, i64* %22, align 8, !dbg !5043
  %466 = load double, double* %10, align 8, !dbg !5044
  %467 = load i64, i64* %8, align 8, !dbg !5045
  %468 = mul i64 2, %467, !dbg !5046
  %469 = sub i64 %468, 1, !dbg !5047
  %470 = load double*, double** %29, align 8, !dbg !5048
  %471 = getelementptr inbounds double, double* %470, i64 %469, !dbg !5048
  %472 = load double, double* %471, align 8, !dbg !5048
  %473 = fmul double %466, %472, !dbg !5049
  %474 = load i64, i64* %8, align 8, !dbg !5050
  %475 = mul i64 2, %474, !dbg !5051
  %476 = load double*, double** %29, align 8, !dbg !5052
  %477 = getelementptr inbounds double, double* %476, i64 %475, !dbg !5052
  %478 = load double, double* %477, align 8, !dbg !5052
  %479 = fdiv double %473, %478, !dbg !5053
  %480 = load double, double* %24, align 8, !dbg !5054
  %481 = fmul double %480, %479, !dbg !5054
  store double %481, double* %24, align 8, !dbg !5054
  %482 = load double, double* %24, align 8, !dbg !5055
  %483 = load double, double* %25, align 8, !dbg !5056
  %484 = fmul double %482, %483, !dbg !5057
  %485 = load i64, i64* %22, align 8, !dbg !5058
  %486 = load double*, double** %11, align 8, !dbg !5059
  %487 = getelementptr inbounds double, double* %486, i64 %485, !dbg !5059
  store double %484, double* %487, align 8, !dbg !5060
  %488 = load i64, i64* %8, align 8, !dbg !5061
  %489 = uitofp i64 %488 to double, !dbg !5061
  %490 = load double, double* %18, align 8, !dbg !5062
  %491 = fmul double %489, %490, !dbg !5063
  %492 = load i64, i64* %22, align 8, !dbg !5064
  %493 = load double*, double** %11, align 8, !dbg !5065
  %494 = getelementptr inbounds double, double* %493, i64 %492, !dbg !5065
  %495 = load double, double* %494, align 8, !dbg !5065
  %496 = fmul double %491, %495, !dbg !5066
  %497 = load i64, i64* %22, align 8, !dbg !5067
  %498 = load double*, double** %12, align 8, !dbg !5068
  %499 = getelementptr inbounds double, double* %498, i64 %497, !dbg !5068
  store double %496, double* %499, align 8, !dbg !5069
  %500 = load i64, i64* %8, align 8, !dbg !5070
  %501 = uitofp i64 %500 to double, !dbg !5070
  %502 = load double, double* %17, align 8, !dbg !5071
  %503 = load i64, i64* %8, align 8, !dbg !5072
  %504 = uitofp i64 %503 to double, !dbg !5072
  %505 = fmul double %502, %504, !dbg !5073
  %506 = load i64, i64* %8, align 8, !dbg !5074
  %507 = uitofp i64 %506 to double, !dbg !5074
  %508 = fadd double %507, 1.000000e+00, !dbg !5075
  %509 = fsub double %505, %508, !dbg !5076
  %510 = fmul double %501, %509, !dbg !5077
  %511 = load i64, i64* %22, align 8, !dbg !5078
  %512 = load double*, double** %11, align 8, !dbg !5079
  %513 = getelementptr inbounds double, double* %512, i64 %511, !dbg !5079
  %514 = load double, double* %513, align 8, !dbg !5079
  %515 = fmul double %510, %514, !dbg !5080
  %516 = load double, double* %18, align 8, !dbg !5081
  %517 = load i64, i64* %22, align 8, !dbg !5082
  %518 = load double*, double** %12, align 8, !dbg !5083
  %519 = getelementptr inbounds double, double* %518, i64 %517, !dbg !5083
  %520 = load double, double* %519, align 8, !dbg !5083
  %521 = fmul double %516, %520, !dbg !5084
  %522 = fsub double %515, %521, !dbg !5085
  %523 = load i64, i64* %22, align 8, !dbg !5086
  %524 = load double*, double** %13, align 8, !dbg !5087
  %525 = getelementptr inbounds double, double* %524, i64 %523, !dbg !5087
  store double %522, double* %525, align 8, !dbg !5088
  store i32 0, i32* %7, align 4, !dbg !5089
  br label %528, !dbg !5089

; <label>:526:                                    ; preds = %54
  br label %527

; <label>:527:                                    ; preds = %526, %45
  br label %528

; <label>:528:                                    ; preds = %37, %44, %53, %88, %458, %527, %38
  %529 = load i32, i32* %7, align 4, !dbg !5090
  ret i32 %529, !dbg !5090
}

; Function Attrs: nounwind uwtable
define i64 @gsl_sf_legendre_array_n(i64) #0 !dbg !5091 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5092, metadata !69), !dbg !5093
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5094, metadata !69), !dbg !5095
  %5 = load i64, i64* %2, align 8, !dbg !5096
  %6 = call i64 @gsl_sf_legendre_nlm(i64 %5), !dbg !5097
  store i64 %6, i64* %3, align 8, !dbg !5095
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5098, metadata !69), !dbg !5099
  %7 = load i64, i64* %2, align 8, !dbg !5100
  %8 = mul i64 2, %7, !dbg !5101
  %9 = add i64 %8, 2, !dbg !5102
  store i64 %9, i64* %4, align 8, !dbg !5099
  %10 = load i64, i64* %3, align 8, !dbg !5103
  %11 = load i64, i64* %4, align 8, !dbg !5104
  %12 = add i64 %10, %11, !dbg !5105
  ret i64 %12, !dbg !5106
}

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @legendre_sqrts(i64, double*) #0 !dbg !5107 {
  %3 = alloca i64, align 8
  %4 = alloca double*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5110, metadata !69), !dbg !5111
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !5112, metadata !69), !dbg !5113
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5114, metadata !69), !dbg !5115
  store i64 0, i64* %5, align 8, !dbg !5116
  br label %6, !dbg !5118

; <label>:6:                                      ; preds = %19, %2
  %7 = load i64, i64* %5, align 8, !dbg !5119
  %8 = load i64, i64* %3, align 8, !dbg !5122
  %9 = mul i64 2, %8, !dbg !5123
  %10 = add i64 %9, 1, !dbg !5124
  %11 = icmp ule i64 %7, %10, !dbg !5125
  br i1 %11, label %12, label %22, !dbg !5126

; <label>:12:                                     ; preds = %6
  %13 = load i64, i64* %5, align 8, !dbg !5127
  %14 = uitofp i64 %13 to double, !dbg !5128
  %15 = call double @sqrt(double %14) #5, !dbg !5129
  %16 = load i64, i64* %5, align 8, !dbg !5130
  %17 = load double*, double** %4, align 8, !dbg !5131
  %18 = getelementptr inbounds double, double* %17, i64 %16, !dbg !5131
  store double %15, double* %18, align 8, !dbg !5132
  br label %19, !dbg !5131

; <label>:19:                                     ; preds = %12
  %20 = load i64, i64* %5, align 8, !dbg !5133
  %21 = add i64 %20, 1, !dbg !5133
  store i64 %21, i64* %5, align 8, !dbg !5133
  br label %6, !dbg !5135, !llvm.loop !5136

; <label>:22:                                     ; preds = %6
  ret void, !dbg !5138
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !48)
!1 = !DIFile(filename: "legendre_P.c", directory: "/fpcc/gsl-2.5/specfunc")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 314, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../gsl/gsl_sf_legendre.h", directory: "/fpcc/gsl-2.5/specfunc")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "GSL_SF_LEGENDRE_SCHMIDT", value: 0)
!7 = !DIEnumerator(name: "GSL_SF_LEGENDRE_SPHARM", value: 1)
!8 = !DIEnumerator(name: "GSL_SF_LEGENDRE_FULL", value: 2)
!9 = !DIEnumerator(name: "GSL_SF_LEGENDRE_NONE", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 39, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/fpcc/gsl-2.5/specfunc")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!13 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!14 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!15 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!16 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!17 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!18 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!19 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!20 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!21 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!22 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!23 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!24 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!25 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!26 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!27 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!28 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!29 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!30 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!31 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!32 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!33 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!34 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!35 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!36 = !DIEnumerator(name: "GSL_ESING", value: 21)
!37 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!38 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!39 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!40 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!41 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!42 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!43 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!44 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!45 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!46 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!47 = !DIEnumerator(name: "GSL_EOF", value: 32)
!48 = !{!49}
!49 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!50 = !{i32 2, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"PIC Level", i32 2}
!53 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!54 = distinct !DISubprogram(name: "gsl_sf_legendre_array", scope: !55, file: !55, line: 74, type: !56, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!55 = !DIFile(filename: "./legendre_source.c", directory: "/fpcc/gsl-2.5/specfunc")
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !59, !61, !65, !66}
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_legendre_t", file: !4, line: 320, baseType: !3)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 62, baseType: !64)
!63 = !DIFile(filename: "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include/stddef.h", directory: "/fpcc/gsl-2.5/specfunc")
!64 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!67 = !{}
!68 = !DILocalVariable(name: "norm", arg: 1, scope: !54, file: !55, line: 75, type: !59)
!69 = !DIExpression()
!70 = !DILocation(line: 75, column: 26, scope: !54)
!71 = !DILocalVariable(name: "lmax", arg: 2, scope: !54, file: !55, line: 75, type: !61)
!72 = !DILocation(line: 75, column: 45, scope: !54)
!73 = !DILocalVariable(name: "x", arg: 3, scope: !54, file: !55, line: 75, type: !65)
!74 = !DILocation(line: 75, column: 64, scope: !54)
!75 = !DILocalVariable(name: "result_array", arg: 4, scope: !54, file: !55, line: 76, type: !66)
!76 = !DILocation(line: 76, column: 2, scope: !54)
!77 = !DILocalVariable(name: "s", scope: !54, file: !55, line: 78, type: !58)
!78 = !DILocation(line: 78, column: 7, scope: !54)
!79 = !DILocation(line: 78, column: 47, scope: !54)
!80 = !DILocation(line: 78, column: 53, scope: !54)
!81 = !DILocation(line: 78, column: 59, scope: !54)
!82 = !DILocation(line: 78, column: 67, scope: !54)
!83 = !DILocation(line: 78, column: 11, scope: !54)
!84 = !DILocation(line: 79, column: 10, scope: !54)
!85 = !DILocation(line: 79, column: 3, scope: !54)
!86 = distinct !DISubprogram(name: "gsl_sf_legendre_array_e", scope: !55, file: !55, line: 95, type: !87, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!87 = !DISubroutineType(types: !88)
!88 = !{!58, !59, !61, !65, !65, !66}
!89 = !DILocalVariable(name: "norm", arg: 1, scope: !86, file: !55, line: 96, type: !59)
!90 = !DILocation(line: 96, column: 26, scope: !86)
!91 = !DILocalVariable(name: "lmax", arg: 2, scope: !86, file: !55, line: 96, type: !61)
!92 = !DILocation(line: 96, column: 45, scope: !86)
!93 = !DILocalVariable(name: "x", arg: 3, scope: !86, file: !55, line: 96, type: !65)
!94 = !DILocation(line: 96, column: 64, scope: !86)
!95 = !DILocalVariable(name: "csphase", arg: 4, scope: !86, file: !55, line: 97, type: !65)
!96 = !DILocation(line: 97, column: 15, scope: !86)
!97 = !DILocalVariable(name: "result_array", arg: 5, scope: !86, file: !55, line: 97, type: !66)
!98 = !DILocation(line: 97, column: 24, scope: !86)
!99 = !DILocalVariable(name: "s", scope: !86, file: !55, line: 99, type: !58)
!100 = !DILocation(line: 99, column: 7, scope: !86)
!101 = !DILocalVariable(name: "nlm", scope: !86, file: !55, line: 100, type: !61)
!102 = !DILocation(line: 100, column: 16, scope: !86)
!103 = !DILocation(line: 100, column: 42, scope: !86)
!104 = !DILocation(line: 100, column: 22, scope: !86)
!105 = !DILocalVariable(name: "i", scope: !86, file: !55, line: 102, type: !62)
!106 = !DILocation(line: 102, column: 10, scope: !86)
!107 = !DILocalVariable(name: "fac1", scope: !86, file: !55, line: 111, type: !49)
!108 = !DILocation(line: 111, column: 10, scope: !86)
!109 = !DILocalVariable(name: "fac2", scope: !86, file: !55, line: 111, type: !49)
!110 = !DILocation(line: 111, column: 22, scope: !86)
!111 = !DILocation(line: 113, column: 7, scope: !112)
!112 = distinct !DILexicalBlock(scope: !86, file: !55, line: 113, column: 7)
!113 = !DILocation(line: 113, column: 12, scope: !112)
!114 = !DILocation(line: 113, column: 7, scope: !86)
!115 = !DILocation(line: 116, column: 43, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !55, line: 114, column: 5)
!117 = !DILocation(line: 116, column: 49, scope: !116)
!118 = !DILocation(line: 116, column: 52, scope: !116)
!119 = !DILocation(line: 116, column: 61, scope: !116)
!120 = !DILocation(line: 116, column: 11, scope: !116)
!121 = !DILocation(line: 116, column: 9, scope: !116)
!122 = !DILocation(line: 117, column: 5, scope: !116)
!123 = !DILocation(line: 121, column: 46, scope: !124)
!124 = distinct !DILexicalBlock(scope: !112, file: !55, line: 119, column: 5)
!125 = !DILocation(line: 121, column: 52, scope: !124)
!126 = !DILocation(line: 121, column: 55, scope: !124)
!127 = !DILocation(line: 121, column: 64, scope: !124)
!128 = !DILocation(line: 121, column: 11, scope: !124)
!129 = !DILocation(line: 121, column: 9, scope: !124)
!130 = !DILocation(line: 126, column: 10, scope: !131)
!131 = distinct !DILexicalBlock(scope: !86, file: !55, line: 126, column: 3)
!132 = !DILocation(line: 126, column: 8, scope: !131)
!133 = !DILocation(line: 126, column: 15, scope: !134)
!134 = !DILexicalBlockFile(scope: !135, file: !55, discriminator: 1)
!135 = distinct !DILexicalBlock(scope: !131, file: !55, line: 126, column: 3)
!136 = !DILocation(line: 126, column: 19, scope: !134)
!137 = !DILocation(line: 126, column: 17, scope: !134)
!138 = !DILocation(line: 126, column: 3, scope: !134)
!139 = !DILocation(line: 137, column: 5, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !55, line: 127, column: 5)
!141 = !DILocation(line: 126, column: 24, scope: !142)
!142 = !DILexicalBlockFile(scope: !135, file: !55, discriminator: 2)
!143 = !DILocation(line: 126, column: 3, scope: !142)
!144 = distinct !{!144, !145}
!145 = !DILocation(line: 126, column: 3, scope: !86)
!146 = !DILocation(line: 141, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !86, file: !55, line: 141, column: 7)
!148 = !DILocation(line: 141, column: 12, scope: !147)
!149 = !DILocation(line: 141, column: 39, scope: !147)
!150 = !DILocation(line: 141, column: 42, scope: !151)
!151 = !DILexicalBlockFile(scope: !147, file: !55, discriminator: 1)
!152 = !DILocation(line: 141, column: 47, scope: !151)
!153 = !DILocation(line: 141, column: 7, scope: !151)
!154 = !DILocation(line: 143, column: 14, scope: !155)
!155 = distinct !DILexicalBlock(scope: !147, file: !55, line: 142, column: 5)
!156 = !DILocation(line: 143, column: 7, scope: !155)
!157 = !DILocation(line: 145, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !147, file: !55, line: 145, column: 12)
!159 = !DILocation(line: 145, column: 17, scope: !158)
!160 = !DILocation(line: 145, column: 12, scope: !147)
!161 = !DILocation(line: 147, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !55, line: 146, column: 5)
!163 = !DILocation(line: 147, column: 18, scope: !162)
!164 = !DILocation(line: 147, column: 12, scope: !162)
!165 = !DILocation(line: 148, column: 20, scope: !162)
!166 = !DILocation(line: 148, column: 18, scope: !162)
!167 = !DILocation(line: 148, column: 12, scope: !162)
!168 = !DILocation(line: 149, column: 5, scope: !162)
!169 = !DILocation(line: 150, column: 12, scope: !170)
!170 = distinct !DILexicalBlock(scope: !158, file: !55, line: 150, column: 12)
!171 = !DILocation(line: 150, column: 17, scope: !170)
!172 = !DILocation(line: 150, column: 12, scope: !158)
!173 = !DILocation(line: 152, column: 20, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !55, line: 151, column: 5)
!175 = !DILocation(line: 152, column: 18, scope: !174)
!176 = !DILocation(line: 152, column: 12, scope: !174)
!177 = !DILocation(line: 153, column: 20, scope: !174)
!178 = !DILocation(line: 153, column: 18, scope: !174)
!179 = !DILocation(line: 153, column: 12, scope: !174)
!180 = !DILocation(line: 154, column: 5, scope: !174)
!181 = !DILocalVariable(name: "l", scope: !182, file: !55, line: 162, type: !62)
!182 = distinct !DILexicalBlock(scope: !86, file: !55, line: 161, column: 3)
!183 = !DILocation(line: 162, column: 12, scope: !182)
!184 = !DILocalVariable(name: "m", scope: !182, file: !55, line: 162, type: !62)
!185 = !DILocation(line: 162, column: 15, scope: !182)
!186 = !DILocalVariable(name: "twoellp1", scope: !182, file: !55, line: 163, type: !62)
!187 = !DILocation(line: 163, column: 12, scope: !182)
!188 = !DILocalVariable(name: "sqrts", scope: !182, file: !55, line: 164, type: !66)
!189 = !DILocation(line: 164, column: 13, scope: !182)
!190 = !DILocation(line: 164, column: 36, scope: !182)
!191 = !DILocation(line: 164, column: 23, scope: !182)
!192 = !DILocation(line: 166, column: 12, scope: !193)
!193 = distinct !DILexicalBlock(scope: !182, file: !55, line: 166, column: 5)
!194 = !DILocation(line: 166, column: 10, scope: !193)
!195 = !DILocation(line: 166, column: 17, scope: !196)
!196 = !DILexicalBlockFile(scope: !197, file: !55, discriminator: 1)
!197 = distinct !DILexicalBlock(scope: !193, file: !55, line: 166, column: 5)
!198 = !DILocation(line: 166, column: 22, scope: !196)
!199 = !DILocation(line: 166, column: 19, scope: !196)
!200 = !DILocation(line: 166, column: 5, scope: !196)
!201 = !DILocation(line: 169, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !55, line: 167, column: 7)
!203 = !DILocation(line: 169, column: 11, scope: !202)
!204 = !DILocation(line: 169, column: 29, scope: !202)
!205 = !DILocation(line: 169, column: 27, scope: !202)
!206 = !DILocation(line: 168, column: 50, scope: !202)
!207 = !DILocation(line: 168, column: 22, scope: !202)
!208 = !DILocation(line: 168, column: 9, scope: !202)
!209 = !DILocation(line: 168, column: 57, scope: !202)
!210 = !DILocation(line: 179, column: 16, scope: !211)
!211 = distinct !DILexicalBlock(scope: !202, file: !55, line: 179, column: 9)
!212 = !DILocation(line: 179, column: 14, scope: !211)
!213 = !DILocation(line: 179, column: 21, scope: !214)
!214 = !DILexicalBlockFile(scope: !215, file: !55, discriminator: 1)
!215 = distinct !DILexicalBlock(scope: !211, file: !55, line: 179, column: 9)
!216 = !DILocation(line: 179, column: 26, scope: !214)
!217 = !DILocation(line: 179, column: 23, scope: !214)
!218 = !DILocation(line: 179, column: 9, scope: !214)
!219 = !DILocation(line: 182, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !55, line: 180, column: 11)
!221 = !DILocation(line: 182, column: 15, scope: !220)
!222 = !DILocation(line: 182, column: 33, scope: !220)
!223 = !DILocation(line: 182, column: 31, scope: !220)
!224 = !DILocation(line: 181, column: 54, scope: !220)
!225 = !DILocation(line: 181, column: 57, scope: !220)
!226 = !DILocation(line: 181, column: 26, scope: !220)
!227 = !DILocation(line: 181, column: 13, scope: !220)
!228 = !DILocation(line: 181, column: 61, scope: !220)
!229 = !DILocation(line: 191, column: 11, scope: !220)
!230 = !DILocation(line: 179, column: 29, scope: !231)
!231 = !DILexicalBlockFile(scope: !215, file: !55, discriminator: 2)
!232 = !DILocation(line: 179, column: 9, scope: !231)
!233 = distinct !{!233, !234}
!234 = !DILocation(line: 179, column: 9, scope: !202)
!235 = !DILocation(line: 193, column: 18, scope: !202)
!236 = !DILocation(line: 194, column: 7, scope: !202)
!237 = !DILocation(line: 166, column: 28, scope: !238)
!238 = !DILexicalBlockFile(scope: !197, file: !55, discriminator: 2)
!239 = !DILocation(line: 166, column: 5, scope: !238)
!240 = distinct !{!240, !241}
!241 = !DILocation(line: 166, column: 5, scope: !182)
!242 = !DILocation(line: 197, column: 10, scope: !86)
!243 = !DILocation(line: 197, column: 3, scope: !86)
!244 = !DILocation(line: 198, column: 1, scope: !86)
!245 = distinct !DISubprogram(name: "gsl_sf_legendre_nlm", scope: !1, file: !1, line: 66, type: !246, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!246 = !DISubroutineType(types: !247)
!247 = !{!62, !61}
!248 = !DILocalVariable(name: "lmax", arg: 1, scope: !245, file: !1, line: 66, type: !61)
!249 = !DILocation(line: 66, column: 34, scope: !245)
!250 = !DILocation(line: 68, column: 12, scope: !245)
!251 = !DILocation(line: 68, column: 17, scope: !245)
!252 = !DILocation(line: 68, column: 25, scope: !245)
!253 = !DILocation(line: 68, column: 30, scope: !245)
!254 = !DILocation(line: 68, column: 22, scope: !245)
!255 = !DILocation(line: 68, column: 35, scope: !245)
!256 = !DILocation(line: 68, column: 3, scope: !245)
!257 = distinct !DISubprogram(name: "legendre_array_none_e", scope: !55, file: !55, line: 425, type: !258, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!258 = !DISubroutineType(types: !259)
!259 = !{!58, !61, !65, !65, !66}
!260 = !DILocalVariable(name: "lmax", arg: 1, scope: !257, file: !55, line: 426, type: !61)
!261 = !DILocation(line: 426, column: 15, scope: !257)
!262 = !DILocalVariable(name: "x", arg: 2, scope: !257, file: !55, line: 426, type: !65)
!263 = !DILocation(line: 426, column: 34, scope: !257)
!264 = !DILocalVariable(name: "csphase", arg: 3, scope: !257, file: !55, line: 426, type: !65)
!265 = !DILocation(line: 426, column: 50, scope: !257)
!266 = !DILocalVariable(name: "result_array", arg: 4, scope: !257, file: !55, line: 426, type: !66)
!267 = !DILocation(line: 426, column: 59, scope: !257)
!268 = !DILocation(line: 428, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !257, file: !55, line: 428, column: 7)
!270 = !DILocation(line: 428, column: 9, scope: !269)
!271 = !DILocation(line: 428, column: 15, scope: !269)
!272 = !DILocation(line: 428, column: 18, scope: !273)
!273 = !DILexicalBlockFile(scope: !269, file: !55, discriminator: 1)
!274 = !DILocation(line: 428, column: 20, scope: !273)
!275 = !DILocation(line: 428, column: 7, scope: !273)
!276 = !DILocation(line: 430, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !269, file: !55, line: 429, column: 5)
!278 = distinct !{!278, !276}
!279 = !DILocation(line: 430, column: 7, scope: !280)
!280 = !DILexicalBlockFile(scope: !281, file: !55, discriminator: 1)
!281 = distinct !DILexicalBlock(scope: !277, file: !55, line: 430, column: 7)
!282 = !DILocation(line: 431, column: 5, scope: !277)
!283 = !DILocation(line: 438, column: 12, scope: !284)
!284 = distinct !DILexicalBlock(scope: !269, file: !55, line: 438, column: 12)
!285 = !DILocation(line: 438, column: 20, scope: !284)
!286 = !DILocation(line: 438, column: 27, scope: !284)
!287 = !DILocation(line: 438, column: 30, scope: !288)
!288 = !DILexicalBlockFile(scope: !284, file: !55, discriminator: 1)
!289 = !DILocation(line: 438, column: 38, scope: !288)
!290 = !DILocation(line: 438, column: 12, scope: !288)
!291 = !DILocation(line: 440, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !55, line: 439, column: 5)
!293 = distinct !{!293, !291}
!294 = !DILocation(line: 440, column: 7, scope: !295)
!295 = !DILexicalBlockFile(scope: !296, file: !55, discriminator: 1)
!296 = distinct !DILexicalBlock(scope: !292, file: !55, line: 440, column: 7)
!297 = !DILocation(line: 441, column: 5, scope: !292)
!298 = !DILocalVariable(name: "u", scope: !299, file: !55, line: 444, type: !65)
!299 = distinct !DILexicalBlock(scope: !284, file: !55, line: 443, column: 5)
!300 = !DILocation(line: 444, column: 20, scope: !299)
!301 = !DILocation(line: 444, column: 36, scope: !299)
!302 = !DILocation(line: 444, column: 34, scope: !299)
!303 = !DILocation(line: 444, column: 48, scope: !299)
!304 = !DILocation(line: 444, column: 46, scope: !299)
!305 = !DILocation(line: 444, column: 39, scope: !299)
!306 = !DILocation(line: 444, column: 24, scope: !299)
!307 = !DILocalVariable(name: "l", scope: !299, file: !55, line: 454, type: !62)
!308 = !DILocation(line: 454, column: 14, scope: !299)
!309 = !DILocalVariable(name: "m", scope: !299, file: !55, line: 454, type: !62)
!310 = !DILocation(line: 454, column: 17, scope: !299)
!311 = !DILocalVariable(name: "k", scope: !299, file: !55, line: 455, type: !62)
!312 = !DILocation(line: 455, column: 14, scope: !299)
!313 = !DILocalVariable(name: "idxmm", scope: !299, file: !55, line: 455, type: !62)
!314 = !DILocation(line: 455, column: 17, scope: !299)
!315 = !DILocalVariable(name: "plm", scope: !299, file: !55, line: 456, type: !49)
!316 = !DILocation(line: 456, column: 14, scope: !299)
!317 = !DILocalVariable(name: "pmm", scope: !299, file: !55, line: 456, type: !49)
!318 = !DILocation(line: 456, column: 19, scope: !299)
!319 = !DILocalVariable(name: "pm1", scope: !299, file: !55, line: 457, type: !49)
!320 = !DILocation(line: 457, column: 14, scope: !299)
!321 = !DILocalVariable(name: "pm2", scope: !299, file: !55, line: 458, type: !49)
!322 = !DILocation(line: 458, column: 14, scope: !299)
!323 = !DILocalVariable(name: "twomm1", scope: !299, file: !55, line: 459, type: !49)
!324 = !DILocation(line: 459, column: 14, scope: !299)
!325 = !DILocation(line: 463, column: 11, scope: !299)
!326 = !DILocation(line: 464, column: 13, scope: !299)
!327 = !DILocation(line: 464, column: 11, scope: !299)
!328 = !DILocation(line: 466, column: 25, scope: !299)
!329 = !DILocation(line: 466, column: 7, scope: !299)
!330 = !DILocation(line: 466, column: 23, scope: !299)
!331 = !DILocation(line: 474, column: 11, scope: !332)
!332 = distinct !DILexicalBlock(scope: !299, file: !55, line: 474, column: 11)
!333 = !DILocation(line: 474, column: 16, scope: !332)
!334 = !DILocation(line: 474, column: 11, scope: !299)
!335 = !DILocation(line: 475, column: 9, scope: !332)
!336 = !DILocation(line: 477, column: 25, scope: !299)
!337 = !DILocation(line: 477, column: 7, scope: !299)
!338 = !DILocation(line: 477, column: 23, scope: !299)
!339 = !DILocation(line: 487, column: 9, scope: !299)
!340 = !DILocation(line: 488, column: 14, scope: !341)
!341 = distinct !DILexicalBlock(scope: !299, file: !55, line: 488, column: 7)
!342 = !DILocation(line: 488, column: 12, scope: !341)
!343 = !DILocation(line: 488, column: 19, scope: !344)
!344 = !DILexicalBlockFile(scope: !345, file: !55, discriminator: 1)
!345 = distinct !DILexicalBlock(scope: !341, file: !55, line: 488, column: 7)
!346 = !DILocation(line: 488, column: 24, scope: !344)
!347 = !DILocation(line: 488, column: 21, scope: !344)
!348 = !DILocation(line: 488, column: 7, scope: !344)
!349 = !DILocation(line: 490, column: 16, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !55, line: 489, column: 9)
!351 = !DILocation(line: 490, column: 13, scope: !350)
!352 = !DILocation(line: 491, column: 21, scope: !350)
!353 = !DILocation(line: 491, column: 20, scope: !350)
!354 = !DILocation(line: 491, column: 23, scope: !350)
!355 = !DILocation(line: 491, column: 18, scope: !350)
!356 = !DILocation(line: 491, column: 30, scope: !350)
!357 = !DILocation(line: 491, column: 28, scope: !350)
!358 = !DILocation(line: 491, column: 34, scope: !350)
!359 = !DILocation(line: 491, column: 32, scope: !350)
!360 = !DILocation(line: 491, column: 41, scope: !350)
!361 = !DILocation(line: 491, column: 43, scope: !350)
!362 = !DILocation(line: 491, column: 40, scope: !350)
!363 = !DILocation(line: 491, column: 50, scope: !350)
!364 = !DILocation(line: 491, column: 48, scope: !350)
!365 = !DILocation(line: 491, column: 38, scope: !350)
!366 = !DILocation(line: 491, column: 66, scope: !350)
!367 = !DILocation(line: 491, column: 57, scope: !350)
!368 = !DILocation(line: 491, column: 55, scope: !350)
!369 = !DILocation(line: 491, column: 15, scope: !350)
!370 = !DILocation(line: 492, column: 29, scope: !350)
!371 = !DILocation(line: 492, column: 24, scope: !350)
!372 = !DILocation(line: 492, column: 11, scope: !350)
!373 = !DILocation(line: 492, column: 27, scope: !350)
!374 = !DILocation(line: 500, column: 17, scope: !350)
!375 = !DILocation(line: 500, column: 15, scope: !350)
!376 = !DILocation(line: 501, column: 17, scope: !350)
!377 = !DILocation(line: 501, column: 15, scope: !350)
!378 = !DILocation(line: 502, column: 9, scope: !350)
!379 = !DILocation(line: 488, column: 30, scope: !380)
!380 = !DILexicalBlockFile(scope: !345, file: !55, discriminator: 2)
!381 = !DILocation(line: 488, column: 7, scope: !380)
!382 = distinct !{!382, !383}
!383 = !DILocation(line: 488, column: 7, scope: !299)
!384 = !DILocation(line: 506, column: 11, scope: !299)
!385 = !DILocation(line: 507, column: 14, scope: !299)
!386 = !DILocation(line: 509, column: 13, scope: !299)
!387 = !DILocation(line: 511, column: 14, scope: !388)
!388 = distinct !DILexicalBlock(scope: !299, file: !55, line: 511, column: 7)
!389 = !DILocation(line: 511, column: 12, scope: !388)
!390 = !DILocation(line: 511, column: 19, scope: !391)
!391 = !DILexicalBlockFile(scope: !392, file: !55, discriminator: 1)
!392 = distinct !DILexicalBlock(scope: !388, file: !55, line: 511, column: 7)
!393 = !DILocation(line: 511, column: 24, scope: !391)
!394 = !DILocation(line: 511, column: 29, scope: !391)
!395 = !DILocation(line: 511, column: 21, scope: !391)
!396 = !DILocation(line: 511, column: 7, scope: !391)
!397 = !DILocation(line: 520, column: 20, scope: !398)
!398 = distinct !DILexicalBlock(scope: !392, file: !55, line: 512, column: 9)
!399 = !DILocation(line: 520, column: 22, scope: !398)
!400 = !DILocation(line: 520, column: 17, scope: !398)
!401 = !DILocation(line: 521, column: 18, scope: !398)
!402 = !DILocation(line: 522, column: 18, scope: !398)
!403 = !DILocation(line: 522, column: 28, scope: !398)
!404 = !DILocation(line: 522, column: 26, scope: !398)
!405 = !DILocation(line: 522, column: 32, scope: !398)
!406 = !DILocation(line: 522, column: 30, scope: !398)
!407 = !DILocation(line: 522, column: 15, scope: !398)
!408 = !DILocation(line: 523, column: 33, scope: !398)
!409 = !DILocation(line: 523, column: 24, scope: !398)
!410 = !DILocation(line: 523, column: 11, scope: !398)
!411 = !DILocation(line: 523, column: 31, scope: !398)
!412 = !DILocation(line: 532, column: 17, scope: !398)
!413 = !DILocation(line: 532, column: 15, scope: !398)
!414 = !DILocation(line: 541, column: 15, scope: !398)
!415 = !DILocation(line: 541, column: 23, scope: !398)
!416 = !DILocation(line: 541, column: 21, scope: !398)
!417 = !DILocation(line: 541, column: 25, scope: !398)
!418 = !DILocation(line: 541, column: 13, scope: !398)
!419 = !DILocation(line: 542, column: 17, scope: !398)
!420 = !DILocation(line: 542, column: 21, scope: !398)
!421 = !DILocation(line: 542, column: 19, scope: !398)
!422 = !DILocation(line: 542, column: 30, scope: !398)
!423 = !DILocation(line: 542, column: 29, scope: !398)
!424 = !DILocation(line: 542, column: 32, scope: !398)
!425 = !DILocation(line: 542, column: 27, scope: !398)
!426 = !DILocation(line: 542, column: 25, scope: !398)
!427 = !DILocation(line: 542, column: 15, scope: !398)
!428 = !DILocation(line: 543, column: 29, scope: !398)
!429 = !DILocation(line: 543, column: 24, scope: !398)
!430 = !DILocation(line: 543, column: 11, scope: !398)
!431 = !DILocation(line: 543, column: 27, scope: !398)
!432 = !DILocation(line: 554, column: 20, scope: !433)
!433 = distinct !DILexicalBlock(scope: !398, file: !55, line: 554, column: 11)
!434 = !DILocation(line: 554, column: 22, scope: !433)
!435 = !DILocation(line: 554, column: 18, scope: !433)
!436 = !DILocation(line: 554, column: 16, scope: !433)
!437 = !DILocation(line: 554, column: 27, scope: !438)
!438 = !DILexicalBlockFile(scope: !439, file: !55, discriminator: 1)
!439 = distinct !DILexicalBlock(scope: !433, file: !55, line: 554, column: 11)
!440 = !DILocation(line: 554, column: 32, scope: !438)
!441 = !DILocation(line: 554, column: 29, scope: !438)
!442 = !DILocation(line: 554, column: 11, scope: !438)
!443 = !DILocation(line: 556, column: 20, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !55, line: 555, column: 13)
!445 = !DILocation(line: 556, column: 17, scope: !444)
!446 = !DILocation(line: 557, column: 25, scope: !444)
!447 = !DILocation(line: 557, column: 24, scope: !444)
!448 = !DILocation(line: 557, column: 27, scope: !444)
!449 = !DILocation(line: 557, column: 22, scope: !444)
!450 = !DILocation(line: 557, column: 34, scope: !444)
!451 = !DILocation(line: 557, column: 32, scope: !444)
!452 = !DILocation(line: 557, column: 38, scope: !444)
!453 = !DILocation(line: 557, column: 36, scope: !444)
!454 = !DILocation(line: 557, column: 45, scope: !444)
!455 = !DILocation(line: 557, column: 49, scope: !444)
!456 = !DILocation(line: 557, column: 47, scope: !444)
!457 = !DILocation(line: 557, column: 51, scope: !444)
!458 = !DILocation(line: 557, column: 44, scope: !444)
!459 = !DILocation(line: 557, column: 58, scope: !444)
!460 = !DILocation(line: 557, column: 56, scope: !444)
!461 = !DILocation(line: 557, column: 42, scope: !444)
!462 = !DILocation(line: 558, column: 31, scope: !444)
!463 = !DILocation(line: 558, column: 35, scope: !444)
!464 = !DILocation(line: 558, column: 33, scope: !444)
!465 = !DILocation(line: 558, column: 21, scope: !444)
!466 = !DILocation(line: 557, column: 63, scope: !444)
!467 = !DILocation(line: 557, column: 19, scope: !444)
!468 = !DILocation(line: 559, column: 33, scope: !444)
!469 = !DILocation(line: 559, column: 28, scope: !444)
!470 = !DILocation(line: 559, column: 15, scope: !444)
!471 = !DILocation(line: 559, column: 31, scope: !444)
!472 = !DILocation(line: 568, column: 21, scope: !444)
!473 = !DILocation(line: 568, column: 19, scope: !444)
!474 = !DILocation(line: 569, column: 21, scope: !444)
!475 = !DILocation(line: 569, column: 19, scope: !444)
!476 = !DILocation(line: 570, column: 13, scope: !444)
!477 = !DILocation(line: 554, column: 38, scope: !478)
!478 = !DILexicalBlockFile(scope: !439, file: !55, discriminator: 2)
!479 = !DILocation(line: 554, column: 11, scope: !478)
!480 = distinct !{!480, !481}
!481 = !DILocation(line: 554, column: 11, scope: !398)
!482 = !DILocation(line: 571, column: 9, scope: !398)
!483 = !DILocation(line: 511, column: 34, scope: !484)
!484 = !DILexicalBlockFile(scope: !392, file: !55, discriminator: 2)
!485 = !DILocation(line: 511, column: 7, scope: !484)
!486 = distinct !{!486, !487}
!487 = !DILocation(line: 511, column: 7, scope: !299)
!488 = !DILocation(line: 575, column: 16, scope: !299)
!489 = !DILocation(line: 575, column: 18, scope: !299)
!490 = !DILocation(line: 575, column: 13, scope: !299)
!491 = !DILocation(line: 576, column: 14, scope: !299)
!492 = !DILocation(line: 577, column: 14, scope: !299)
!493 = !DILocation(line: 577, column: 24, scope: !299)
!494 = !DILocation(line: 577, column: 22, scope: !299)
!495 = !DILocation(line: 577, column: 28, scope: !299)
!496 = !DILocation(line: 577, column: 26, scope: !299)
!497 = !DILocation(line: 577, column: 11, scope: !299)
!498 = !DILocation(line: 578, column: 29, scope: !299)
!499 = !DILocation(line: 578, column: 20, scope: !299)
!500 = !DILocation(line: 578, column: 7, scope: !299)
!501 = !DILocation(line: 578, column: 27, scope: !299)
!502 = !DILocation(line: 588, column: 7, scope: !299)
!503 = !DILocation(line: 590, column: 1, scope: !257)
!504 = distinct !DISubprogram(name: "legendre_array_schmidt_e", scope: !55, file: !55, line: 217, type: !258, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!505 = !DILocalVariable(name: "lmax", arg: 1, scope: !504, file: !55, line: 218, type: !61)
!506 = !DILocation(line: 218, column: 15, scope: !504)
!507 = !DILocalVariable(name: "x", arg: 2, scope: !504, file: !55, line: 218, type: !65)
!508 = !DILocation(line: 218, column: 34, scope: !504)
!509 = !DILocalVariable(name: "csphase", arg: 3, scope: !504, file: !55, line: 218, type: !65)
!510 = !DILocation(line: 218, column: 50, scope: !504)
!511 = !DILocalVariable(name: "result_array", arg: 4, scope: !504, file: !55, line: 218, type: !66)
!512 = !DILocation(line: 218, column: 59, scope: !504)
!513 = !DILocation(line: 220, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !504, file: !55, line: 220, column: 7)
!515 = !DILocation(line: 220, column: 9, scope: !514)
!516 = !DILocation(line: 220, column: 15, scope: !514)
!517 = !DILocation(line: 220, column: 18, scope: !518)
!518 = !DILexicalBlockFile(scope: !514, file: !55, discriminator: 1)
!519 = !DILocation(line: 220, column: 20, scope: !518)
!520 = !DILocation(line: 220, column: 7, scope: !518)
!521 = !DILocation(line: 222, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !514, file: !55, line: 221, column: 5)
!523 = distinct !{!523, !521}
!524 = !DILocation(line: 222, column: 7, scope: !525)
!525 = !DILexicalBlockFile(scope: !526, file: !55, discriminator: 1)
!526 = distinct !DILexicalBlock(scope: !522, file: !55, line: 222, column: 7)
!527 = !DILocation(line: 223, column: 5, scope: !522)
!528 = !DILocation(line: 230, column: 12, scope: !529)
!529 = distinct !DILexicalBlock(scope: !514, file: !55, line: 230, column: 12)
!530 = !DILocation(line: 230, column: 20, scope: !529)
!531 = !DILocation(line: 230, column: 27, scope: !529)
!532 = !DILocation(line: 230, column: 30, scope: !533)
!533 = !DILexicalBlockFile(scope: !529, file: !55, discriminator: 1)
!534 = !DILocation(line: 230, column: 38, scope: !533)
!535 = !DILocation(line: 230, column: 12, scope: !533)
!536 = !DILocation(line: 232, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !529, file: !55, line: 231, column: 5)
!538 = distinct !{!538, !536}
!539 = !DILocation(line: 232, column: 7, scope: !540)
!540 = !DILexicalBlockFile(scope: !541, file: !55, discriminator: 1)
!541 = distinct !DILexicalBlock(scope: !537, file: !55, line: 232, column: 7)
!542 = !DILocation(line: 233, column: 5, scope: !537)
!543 = !DILocalVariable(name: "eps", scope: !544, file: !55, line: 236, type: !65)
!544 = distinct !DILexicalBlock(scope: !529, file: !55, line: 235, column: 5)
!545 = !DILocation(line: 236, column: 20, scope: !544)
!546 = !DILocalVariable(name: "u", scope: !544, file: !55, line: 237, type: !65)
!547 = !DILocation(line: 237, column: 20, scope: !544)
!548 = !DILocation(line: 237, column: 36, scope: !544)
!549 = !DILocation(line: 237, column: 34, scope: !544)
!550 = !DILocation(line: 237, column: 48, scope: !544)
!551 = !DILocation(line: 237, column: 46, scope: !544)
!552 = !DILocation(line: 237, column: 39, scope: !544)
!553 = !DILocation(line: 237, column: 24, scope: !544)
!554 = !DILocalVariable(name: "l", scope: !544, file: !55, line: 247, type: !62)
!555 = !DILocation(line: 247, column: 14, scope: !544)
!556 = !DILocalVariable(name: "m", scope: !544, file: !55, line: 247, type: !62)
!557 = !DILocation(line: 247, column: 17, scope: !544)
!558 = !DILocalVariable(name: "k", scope: !544, file: !55, line: 248, type: !62)
!559 = !DILocation(line: 248, column: 14, scope: !544)
!560 = !DILocalVariable(name: "idxmm", scope: !544, file: !55, line: 248, type: !62)
!561 = !DILocation(line: 248, column: 17, scope: !544)
!562 = !DILocalVariable(name: "plm", scope: !544, file: !55, line: 249, type: !49)
!563 = !DILocation(line: 249, column: 14, scope: !544)
!564 = !DILocalVariable(name: "pmm", scope: !544, file: !55, line: 250, type: !49)
!565 = !DILocation(line: 250, column: 14, scope: !544)
!566 = !DILocalVariable(name: "rescalem", scope: !544, file: !55, line: 251, type: !49)
!567 = !DILocation(line: 251, column: 14, scope: !544)
!568 = !DILocalVariable(name: "pm1", scope: !544, file: !55, line: 252, type: !49)
!569 = !DILocation(line: 252, column: 14, scope: !544)
!570 = !DILocalVariable(name: "pm2", scope: !544, file: !55, line: 253, type: !49)
!571 = !DILocation(line: 253, column: 14, scope: !544)
!572 = !DILocalVariable(name: "nlm", scope: !544, file: !55, line: 254, type: !62)
!573 = !DILocation(line: 254, column: 14, scope: !544)
!574 = !DILocation(line: 254, column: 40, scope: !544)
!575 = !DILocation(line: 254, column: 20, scope: !544)
!576 = !DILocalVariable(name: "sqrts", scope: !544, file: !55, line: 255, type: !66)
!577 = !DILocation(line: 255, column: 15, scope: !544)
!578 = !DILocation(line: 255, column: 38, scope: !544)
!579 = !DILocation(line: 255, column: 25, scope: !544)
!580 = !DILocation(line: 258, column: 22, scope: !544)
!581 = !DILocation(line: 258, column: 28, scope: !544)
!582 = !DILocation(line: 258, column: 7, scope: !544)
!583 = !DILocation(line: 261, column: 11, scope: !544)
!584 = !DILocation(line: 262, column: 13, scope: !544)
!585 = !DILocation(line: 262, column: 11, scope: !544)
!586 = !DILocation(line: 264, column: 25, scope: !544)
!587 = !DILocation(line: 264, column: 7, scope: !544)
!588 = !DILocation(line: 264, column: 23, scope: !544)
!589 = !DILocation(line: 272, column: 11, scope: !590)
!590 = distinct !DILexicalBlock(scope: !544, file: !55, line: 272, column: 11)
!591 = !DILocation(line: 272, column: 16, scope: !590)
!592 = !DILocation(line: 272, column: 11, scope: !544)
!593 = !DILocation(line: 273, column: 9, scope: !590)
!594 = !DILocation(line: 275, column: 25, scope: !544)
!595 = !DILocation(line: 275, column: 7, scope: !544)
!596 = !DILocation(line: 275, column: 23, scope: !544)
!597 = !DILocation(line: 285, column: 9, scope: !544)
!598 = !DILocation(line: 286, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !544, file: !55, line: 286, column: 7)
!600 = !DILocation(line: 286, column: 12, scope: !599)
!601 = !DILocation(line: 286, column: 19, scope: !602)
!602 = !DILexicalBlockFile(scope: !603, file: !55, discriminator: 1)
!603 = distinct !DILexicalBlock(scope: !599, file: !55, line: 286, column: 7)
!604 = !DILocation(line: 286, column: 24, scope: !602)
!605 = !DILocation(line: 286, column: 21, scope: !602)
!606 = !DILocation(line: 286, column: 7, scope: !602)
!607 = !DILocalVariable(name: "linv", scope: !608, file: !55, line: 288, type: !49)
!608 = distinct !DILexicalBlock(scope: !603, file: !55, line: 287, column: 9)
!609 = !DILocation(line: 288, column: 18, scope: !608)
!610 = !DILocation(line: 288, column: 39, scope: !608)
!611 = !DILocation(line: 288, column: 31, scope: !608)
!612 = !DILocation(line: 288, column: 29, scope: !608)
!613 = !DILocation(line: 290, column: 16, scope: !608)
!614 = !DILocation(line: 290, column: 13, scope: !608)
!615 = !DILocation(line: 292, column: 24, scope: !608)
!616 = !DILocation(line: 292, column: 22, scope: !608)
!617 = !DILocation(line: 292, column: 32, scope: !608)
!618 = !DILocation(line: 292, column: 30, scope: !608)
!619 = !DILocation(line: 292, column: 36, scope: !608)
!620 = !DILocation(line: 292, column: 34, scope: !608)
!621 = !DILocation(line: 292, column: 49, scope: !608)
!622 = !DILocation(line: 292, column: 47, scope: !608)
!623 = !DILocation(line: 292, column: 57, scope: !608)
!624 = !DILocation(line: 292, column: 55, scope: !608)
!625 = !DILocation(line: 292, column: 40, scope: !608)
!626 = !DILocation(line: 292, column: 15, scope: !608)
!627 = !DILocation(line: 293, column: 29, scope: !608)
!628 = !DILocation(line: 293, column: 24, scope: !608)
!629 = !DILocation(line: 293, column: 11, scope: !608)
!630 = !DILocation(line: 293, column: 27, scope: !608)
!631 = !DILocation(line: 301, column: 17, scope: !608)
!632 = !DILocation(line: 301, column: 15, scope: !608)
!633 = !DILocation(line: 302, column: 17, scope: !608)
!634 = !DILocation(line: 302, column: 15, scope: !608)
!635 = !DILocation(line: 303, column: 9, scope: !608)
!636 = !DILocation(line: 286, column: 30, scope: !637)
!637 = !DILexicalBlockFile(scope: !603, file: !55, discriminator: 2)
!638 = !DILocation(line: 286, column: 7, scope: !637)
!639 = distinct !{!639, !640}
!640 = !DILocation(line: 286, column: 7, scope: !544)
!641 = !DILocation(line: 316, column: 13, scope: !544)
!642 = !DILocation(line: 316, column: 23, scope: !544)
!643 = !DILocation(line: 316, column: 11, scope: !544)
!644 = !DILocation(line: 318, column: 16, scope: !544)
!645 = !DILocation(line: 319, column: 13, scope: !544)
!646 = !DILocation(line: 321, column: 14, scope: !647)
!647 = distinct !DILexicalBlock(scope: !544, file: !55, line: 321, column: 7)
!648 = !DILocation(line: 321, column: 12, scope: !647)
!649 = !DILocation(line: 321, column: 19, scope: !650)
!650 = !DILexicalBlockFile(scope: !651, file: !55, discriminator: 1)
!651 = distinct !DILexicalBlock(scope: !647, file: !55, line: 321, column: 7)
!652 = !DILocation(line: 321, column: 23, scope: !650)
!653 = !DILocation(line: 321, column: 21, scope: !650)
!654 = !DILocation(line: 321, column: 7, scope: !650)
!655 = !DILocation(line: 324, column: 23, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !55, line: 322, column: 9)
!657 = !DILocation(line: 324, column: 20, scope: !656)
!658 = !DILocation(line: 332, column: 20, scope: !656)
!659 = !DILocation(line: 332, column: 22, scope: !656)
!660 = !DILocation(line: 332, column: 17, scope: !656)
!661 = !DILocation(line: 333, column: 18, scope: !656)
!662 = !DILocation(line: 333, column: 38, scope: !656)
!663 = !DILocation(line: 333, column: 36, scope: !656)
!664 = !DILocation(line: 333, column: 40, scope: !656)
!665 = !DILocation(line: 333, column: 28, scope: !656)
!666 = !DILocation(line: 333, column: 26, scope: !656)
!667 = !DILocation(line: 333, column: 57, scope: !656)
!668 = !DILocation(line: 333, column: 55, scope: !656)
!669 = !DILocation(line: 333, column: 47, scope: !656)
!670 = !DILocation(line: 333, column: 45, scope: !656)
!671 = !DILocation(line: 333, column: 15, scope: !656)
!672 = !DILocation(line: 334, column: 33, scope: !656)
!673 = !DILocation(line: 334, column: 39, scope: !656)
!674 = !DILocation(line: 334, column: 37, scope: !656)
!675 = !DILocation(line: 334, column: 24, scope: !656)
!676 = !DILocation(line: 334, column: 11, scope: !656)
!677 = !DILocation(line: 334, column: 31, scope: !656)
!678 = !DILocation(line: 343, column: 17, scope: !656)
!679 = !DILocation(line: 343, column: 15, scope: !656)
!680 = !DILocation(line: 351, column: 15, scope: !656)
!681 = !DILocation(line: 351, column: 23, scope: !656)
!682 = !DILocation(line: 351, column: 21, scope: !656)
!683 = !DILocation(line: 351, column: 25, scope: !656)
!684 = !DILocation(line: 351, column: 13, scope: !656)
!685 = !DILocation(line: 352, column: 17, scope: !656)
!686 = !DILocation(line: 352, column: 31, scope: !656)
!687 = !DILocation(line: 352, column: 29, scope: !656)
!688 = !DILocation(line: 352, column: 33, scope: !656)
!689 = !DILocation(line: 352, column: 21, scope: !656)
!690 = !DILocation(line: 352, column: 19, scope: !656)
!691 = !DILocation(line: 352, column: 40, scope: !656)
!692 = !DILocation(line: 352, column: 38, scope: !656)
!693 = !DILocation(line: 352, column: 15, scope: !656)
!694 = !DILocation(line: 353, column: 29, scope: !656)
!695 = !DILocation(line: 353, column: 35, scope: !656)
!696 = !DILocation(line: 353, column: 33, scope: !656)
!697 = !DILocation(line: 353, column: 24, scope: !656)
!698 = !DILocation(line: 353, column: 11, scope: !656)
!699 = !DILocation(line: 353, column: 27, scope: !656)
!700 = !DILocation(line: 366, column: 20, scope: !701)
!701 = distinct !DILexicalBlock(scope: !656, file: !55, line: 366, column: 11)
!702 = !DILocation(line: 366, column: 22, scope: !701)
!703 = !DILocation(line: 366, column: 18, scope: !701)
!704 = !DILocation(line: 366, column: 16, scope: !701)
!705 = !DILocation(line: 366, column: 27, scope: !706)
!706 = !DILexicalBlockFile(scope: !707, file: !55, discriminator: 1)
!707 = distinct !DILexicalBlock(scope: !701, file: !55, line: 366, column: 11)
!708 = !DILocation(line: 366, column: 32, scope: !706)
!709 = !DILocation(line: 366, column: 29, scope: !706)
!710 = !DILocation(line: 366, column: 11, scope: !706)
!711 = !DILocation(line: 368, column: 20, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !55, line: 367, column: 13)
!713 = !DILocation(line: 368, column: 17, scope: !712)
!714 = !DILocation(line: 370, column: 20, scope: !712)
!715 = !DILocation(line: 370, column: 19, scope: !712)
!716 = !DILocation(line: 370, column: 22, scope: !712)
!717 = !DILocation(line: 370, column: 17, scope: !712)
!718 = !DILocation(line: 370, column: 35, scope: !712)
!719 = !DILocation(line: 370, column: 39, scope: !712)
!720 = !DILocation(line: 370, column: 37, scope: !712)
!721 = !DILocation(line: 370, column: 29, scope: !712)
!722 = !DILocation(line: 370, column: 27, scope: !712)
!723 = !DILocation(line: 370, column: 50, scope: !712)
!724 = !DILocation(line: 370, column: 54, scope: !712)
!725 = !DILocation(line: 370, column: 52, scope: !712)
!726 = !DILocation(line: 370, column: 44, scope: !712)
!727 = !DILocation(line: 370, column: 42, scope: !712)
!728 = !DILocation(line: 370, column: 59, scope: !712)
!729 = !DILocation(line: 370, column: 57, scope: !712)
!730 = !DILocation(line: 370, column: 63, scope: !712)
!731 = !DILocation(line: 370, column: 61, scope: !712)
!732 = !DILocation(line: 371, column: 23, scope: !712)
!733 = !DILocation(line: 371, column: 27, scope: !712)
!734 = !DILocation(line: 371, column: 25, scope: !712)
!735 = !DILocation(line: 371, column: 29, scope: !712)
!736 = !DILocation(line: 371, column: 17, scope: !712)
!737 = !DILocation(line: 371, column: 42, scope: !712)
!738 = !DILocation(line: 371, column: 46, scope: !712)
!739 = !DILocation(line: 371, column: 44, scope: !712)
!740 = !DILocation(line: 371, column: 48, scope: !712)
!741 = !DILocation(line: 371, column: 36, scope: !712)
!742 = !DILocation(line: 371, column: 34, scope: !712)
!743 = !DILocation(line: 372, column: 23, scope: !712)
!744 = !DILocation(line: 372, column: 27, scope: !712)
!745 = !DILocation(line: 372, column: 25, scope: !712)
!746 = !DILocation(line: 372, column: 17, scope: !712)
!747 = !DILocation(line: 371, column: 53, scope: !712)
!748 = !DILocation(line: 372, column: 38, scope: !712)
!749 = !DILocation(line: 372, column: 42, scope: !712)
!750 = !DILocation(line: 372, column: 40, scope: !712)
!751 = !DILocation(line: 372, column: 32, scope: !712)
!752 = !DILocation(line: 372, column: 30, scope: !712)
!753 = !DILocation(line: 372, column: 47, scope: !712)
!754 = !DILocation(line: 372, column: 45, scope: !712)
!755 = !DILocation(line: 370, column: 67, scope: !712)
!756 = !DILocation(line: 369, column: 19, scope: !712)
!757 = !DILocation(line: 373, column: 33, scope: !712)
!758 = !DILocation(line: 373, column: 39, scope: !712)
!759 = !DILocation(line: 373, column: 37, scope: !712)
!760 = !DILocation(line: 373, column: 28, scope: !712)
!761 = !DILocation(line: 373, column: 15, scope: !712)
!762 = !DILocation(line: 373, column: 31, scope: !712)
!763 = !DILocation(line: 384, column: 21, scope: !712)
!764 = !DILocation(line: 384, column: 19, scope: !712)
!765 = !DILocation(line: 385, column: 21, scope: !712)
!766 = !DILocation(line: 385, column: 19, scope: !712)
!767 = !DILocation(line: 386, column: 13, scope: !712)
!768 = !DILocation(line: 366, column: 38, scope: !769)
!769 = !DILexicalBlockFile(scope: !707, file: !55, discriminator: 2)
!770 = !DILocation(line: 366, column: 11, scope: !769)
!771 = distinct !{!771, !772}
!772 = !DILocation(line: 366, column: 11, scope: !656)
!773 = !DILocation(line: 387, column: 9, scope: !656)
!774 = !DILocation(line: 321, column: 29, scope: !775)
!775 = !DILexicalBlockFile(scope: !651, file: !55, discriminator: 2)
!776 = !DILocation(line: 321, column: 7, scope: !775)
!777 = distinct !{!777, !778}
!778 = !DILocation(line: 321, column: 7, scope: !544)
!779 = !DILocation(line: 391, column: 19, scope: !544)
!780 = !DILocation(line: 391, column: 16, scope: !544)
!781 = !DILocation(line: 392, column: 16, scope: !544)
!782 = !DILocation(line: 392, column: 18, scope: !544)
!783 = !DILocation(line: 392, column: 13, scope: !544)
!784 = !DILocation(line: 393, column: 14, scope: !544)
!785 = !DILocation(line: 393, column: 34, scope: !544)
!786 = !DILocation(line: 393, column: 32, scope: !544)
!787 = !DILocation(line: 393, column: 39, scope: !544)
!788 = !DILocation(line: 393, column: 24, scope: !544)
!789 = !DILocation(line: 393, column: 22, scope: !544)
!790 = !DILocation(line: 393, column: 56, scope: !544)
!791 = !DILocation(line: 393, column: 54, scope: !544)
!792 = !DILocation(line: 393, column: 46, scope: !544)
!793 = !DILocation(line: 393, column: 44, scope: !544)
!794 = !DILocation(line: 393, column: 11, scope: !544)
!795 = !DILocation(line: 394, column: 29, scope: !544)
!796 = !DILocation(line: 394, column: 35, scope: !544)
!797 = !DILocation(line: 394, column: 33, scope: !544)
!798 = !DILocation(line: 394, column: 20, scope: !544)
!799 = !DILocation(line: 394, column: 7, scope: !544)
!800 = !DILocation(line: 394, column: 27, scope: !544)
!801 = !DILocation(line: 404, column: 7, scope: !544)
!802 = !DILocation(line: 406, column: 1, scope: !504)
!803 = distinct !DISubprogram(name: "gsl_sf_legendre_array_index", scope: !1, file: !1, line: 93, type: !804, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!804 = !DISubroutineType(types: !805)
!805 = !{!62, !61, !61}
!806 = !DILocalVariable(name: "l", arg: 1, scope: !803, file: !1, line: 93, type: !61)
!807 = !DILocation(line: 93, column: 42, scope: !803)
!808 = !DILocalVariable(name: "m", arg: 2, scope: !803, file: !1, line: 93, type: !61)
!809 = !DILocation(line: 93, column: 58, scope: !803)
!810 = !DILocation(line: 95, column: 11, scope: !803)
!811 = !DILocation(line: 95, column: 16, scope: !803)
!812 = !DILocation(line: 95, column: 18, scope: !803)
!813 = !DILocation(line: 95, column: 13, scope: !803)
!814 = !DILocation(line: 95, column: 23, scope: !803)
!815 = !DILocation(line: 95, column: 29, scope: !803)
!816 = !DILocation(line: 95, column: 27, scope: !803)
!817 = !DILocation(line: 95, column: 3, scope: !803)
!818 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_array", scope: !55, file: !55, line: 74, type: !819, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!819 = !DISubroutineType(types: !820)
!820 = !{!58, !59, !61, !65, !66, !66}
!821 = !DILocalVariable(name: "norm", arg: 1, scope: !818, file: !55, line: 75, type: !59)
!822 = !DILocation(line: 75, column: 26, scope: !818)
!823 = !DILocalVariable(name: "lmax", arg: 2, scope: !818, file: !55, line: 75, type: !61)
!824 = !DILocation(line: 75, column: 45, scope: !818)
!825 = !DILocalVariable(name: "x", arg: 3, scope: !818, file: !55, line: 75, type: !65)
!826 = !DILocation(line: 75, column: 64, scope: !818)
!827 = !DILocalVariable(name: "result_array", arg: 4, scope: !818, file: !55, line: 76, type: !66)
!828 = !DILocation(line: 76, column: 2, scope: !818)
!829 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !818, file: !55, line: 76, type: !66)
!830 = !DILocalVariable(name: "s", scope: !818, file: !55, line: 78, type: !58)
!831 = !DILocation(line: 78, column: 7, scope: !818)
!832 = !DILocation(line: 78, column: 47, scope: !818)
!833 = !DILocation(line: 78, column: 53, scope: !818)
!834 = !DILocation(line: 78, column: 59, scope: !818)
!835 = !DILocation(line: 78, column: 67, scope: !818)
!836 = !DILocation(line: 78, column: 11, scope: !818)
!837 = !DILocation(line: 79, column: 10, scope: !818)
!838 = !DILocation(line: 79, column: 3, scope: !818)
!839 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_array_e", scope: !55, file: !55, line: 95, type: !840, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!840 = !DISubroutineType(types: !841)
!841 = !{!58, !59, !61, !65, !65, !66, !66}
!842 = !DILocalVariable(name: "norm", arg: 1, scope: !839, file: !55, line: 96, type: !59)
!843 = !DILocation(line: 96, column: 26, scope: !839)
!844 = !DILocalVariable(name: "lmax", arg: 2, scope: !839, file: !55, line: 96, type: !61)
!845 = !DILocation(line: 96, column: 45, scope: !839)
!846 = !DILocalVariable(name: "x", arg: 3, scope: !839, file: !55, line: 96, type: !65)
!847 = !DILocation(line: 96, column: 64, scope: !839)
!848 = !DILocalVariable(name: "csphase", arg: 4, scope: !839, file: !55, line: 97, type: !65)
!849 = !DILocation(line: 97, column: 15, scope: !839)
!850 = !DILocalVariable(name: "result_array", arg: 5, scope: !839, file: !55, line: 97, type: !66)
!851 = !DILocation(line: 97, column: 24, scope: !839)
!852 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !839, file: !55, line: 97, type: !66)
!853 = !DILocalVariable(name: "s", scope: !839, file: !55, line: 99, type: !58)
!854 = !DILocation(line: 99, column: 7, scope: !839)
!855 = !DILocalVariable(name: "nlm", scope: !839, file: !55, line: 100, type: !61)
!856 = !DILocation(line: 100, column: 16, scope: !839)
!857 = !DILocation(line: 100, column: 42, scope: !839)
!858 = !DILocation(line: 100, column: 22, scope: !839)
!859 = !DILocalVariable(name: "i", scope: !839, file: !55, line: 102, type: !62)
!860 = !DILocation(line: 102, column: 10, scope: !839)
!861 = !DILocalVariable(name: "u", scope: !839, file: !55, line: 104, type: !65)
!862 = !DILocation(line: 104, column: 16, scope: !839)
!863 = !DILocation(line: 104, column: 32, scope: !839)
!864 = !DILocation(line: 104, column: 30, scope: !839)
!865 = !DILocation(line: 104, column: 44, scope: !839)
!866 = !DILocation(line: 104, column: 42, scope: !839)
!867 = !DILocation(line: 104, column: 35, scope: !839)
!868 = !DILocation(line: 104, column: 20, scope: !839)
!869 = !DILocalVariable(name: "uinv", scope: !839, file: !55, line: 105, type: !65)
!870 = !DILocation(line: 105, column: 16, scope: !839)
!871 = !DILocation(line: 105, column: 29, scope: !839)
!872 = !DILocation(line: 105, column: 27, scope: !839)
!873 = !DILocalVariable(name: "fac1", scope: !839, file: !55, line: 111, type: !49)
!874 = !DILocation(line: 111, column: 10, scope: !839)
!875 = !DILocalVariable(name: "fac2", scope: !839, file: !55, line: 111, type: !49)
!876 = !DILocation(line: 111, column: 22, scope: !839)
!877 = !DILocation(line: 113, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !839, file: !55, line: 113, column: 7)
!879 = !DILocation(line: 113, column: 12, scope: !878)
!880 = !DILocation(line: 113, column: 7, scope: !839)
!881 = !DILocation(line: 116, column: 43, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !55, line: 114, column: 5)
!883 = !DILocation(line: 116, column: 49, scope: !882)
!884 = !DILocation(line: 116, column: 52, scope: !882)
!885 = !DILocation(line: 116, column: 61, scope: !882)
!886 = !DILocation(line: 116, column: 11, scope: !882)
!887 = !DILocation(line: 116, column: 9, scope: !882)
!888 = !DILocation(line: 117, column: 5, scope: !882)
!889 = !DILocation(line: 121, column: 46, scope: !890)
!890 = distinct !DILexicalBlock(scope: !878, file: !55, line: 119, column: 5)
!891 = !DILocation(line: 121, column: 52, scope: !890)
!892 = !DILocation(line: 121, column: 55, scope: !890)
!893 = !DILocation(line: 121, column: 64, scope: !890)
!894 = !DILocation(line: 121, column: 11, scope: !890)
!895 = !DILocation(line: 121, column: 9, scope: !890)
!896 = !DILocation(line: 126, column: 10, scope: !897)
!897 = distinct !DILexicalBlock(scope: !839, file: !55, line: 126, column: 3)
!898 = !DILocation(line: 126, column: 8, scope: !897)
!899 = !DILocation(line: 126, column: 15, scope: !900)
!900 = !DILexicalBlockFile(scope: !901, file: !55, discriminator: 1)
!901 = distinct !DILexicalBlock(scope: !897, file: !55, line: 126, column: 3)
!902 = !DILocation(line: 126, column: 19, scope: !900)
!903 = !DILocation(line: 126, column: 17, scope: !900)
!904 = !DILocation(line: 126, column: 3, scope: !900)
!905 = !DILocation(line: 135, column: 33, scope: !906)
!906 = distinct !DILexicalBlock(scope: !901, file: !55, line: 127, column: 5)
!907 = !DILocation(line: 135, column: 32, scope: !906)
!908 = !DILocation(line: 135, column: 26, scope: !906)
!909 = !DILocation(line: 135, column: 7, scope: !906)
!910 = !DILocation(line: 135, column: 29, scope: !906)
!911 = !DILocation(line: 137, column: 5, scope: !906)
!912 = !DILocation(line: 126, column: 24, scope: !913)
!913 = !DILexicalBlockFile(scope: !901, file: !55, discriminator: 2)
!914 = !DILocation(line: 126, column: 3, scope: !913)
!915 = distinct !{!915, !916}
!916 = !DILocation(line: 126, column: 3, scope: !839)
!917 = !DILocation(line: 141, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !839, file: !55, line: 141, column: 7)
!919 = !DILocation(line: 141, column: 12, scope: !918)
!920 = !DILocation(line: 141, column: 39, scope: !918)
!921 = !DILocation(line: 141, column: 42, scope: !922)
!922 = !DILexicalBlockFile(scope: !918, file: !55, discriminator: 1)
!923 = !DILocation(line: 141, column: 47, scope: !922)
!924 = !DILocation(line: 141, column: 7, scope: !922)
!925 = !DILocation(line: 143, column: 14, scope: !926)
!926 = distinct !DILexicalBlock(scope: !918, file: !55, line: 142, column: 5)
!927 = !DILocation(line: 143, column: 7, scope: !926)
!928 = !DILocation(line: 145, column: 12, scope: !929)
!929 = distinct !DILexicalBlock(scope: !918, file: !55, line: 145, column: 12)
!930 = !DILocation(line: 145, column: 17, scope: !929)
!931 = !DILocation(line: 145, column: 12, scope: !918)
!932 = !DILocation(line: 147, column: 20, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !55, line: 146, column: 5)
!934 = !DILocation(line: 147, column: 18, scope: !933)
!935 = !DILocation(line: 147, column: 12, scope: !933)
!936 = !DILocation(line: 148, column: 20, scope: !933)
!937 = !DILocation(line: 148, column: 18, scope: !933)
!938 = !DILocation(line: 148, column: 12, scope: !933)
!939 = !DILocation(line: 149, column: 5, scope: !933)
!940 = !DILocation(line: 150, column: 12, scope: !941)
!941 = distinct !DILexicalBlock(scope: !929, file: !55, line: 150, column: 12)
!942 = !DILocation(line: 150, column: 17, scope: !941)
!943 = !DILocation(line: 150, column: 12, scope: !929)
!944 = !DILocation(line: 152, column: 20, scope: !945)
!945 = distinct !DILexicalBlock(scope: !941, file: !55, line: 151, column: 5)
!946 = !DILocation(line: 152, column: 18, scope: !945)
!947 = !DILocation(line: 152, column: 12, scope: !945)
!948 = !DILocation(line: 153, column: 20, scope: !945)
!949 = !DILocation(line: 153, column: 18, scope: !945)
!950 = !DILocation(line: 153, column: 12, scope: !945)
!951 = !DILocation(line: 154, column: 5, scope: !945)
!952 = !DILocalVariable(name: "l", scope: !953, file: !55, line: 162, type: !62)
!953 = distinct !DILexicalBlock(scope: !839, file: !55, line: 161, column: 3)
!954 = !DILocation(line: 162, column: 12, scope: !953)
!955 = !DILocalVariable(name: "m", scope: !953, file: !55, line: 162, type: !62)
!956 = !DILocation(line: 162, column: 15, scope: !953)
!957 = !DILocalVariable(name: "twoellp1", scope: !953, file: !55, line: 163, type: !62)
!958 = !DILocation(line: 163, column: 12, scope: !953)
!959 = !DILocalVariable(name: "sqrts", scope: !953, file: !55, line: 164, type: !66)
!960 = !DILocation(line: 164, column: 13, scope: !953)
!961 = !DILocation(line: 164, column: 36, scope: !953)
!962 = !DILocation(line: 164, column: 23, scope: !953)
!963 = !DILocation(line: 166, column: 12, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !55, line: 166, column: 5)
!965 = !DILocation(line: 166, column: 10, scope: !964)
!966 = !DILocation(line: 166, column: 17, scope: !967)
!967 = !DILexicalBlockFile(scope: !968, file: !55, discriminator: 1)
!968 = distinct !DILexicalBlock(scope: !964, file: !55, line: 166, column: 5)
!969 = !DILocation(line: 166, column: 22, scope: !967)
!970 = !DILocation(line: 166, column: 19, scope: !967)
!971 = !DILocation(line: 166, column: 5, scope: !967)
!972 = !DILocation(line: 169, column: 17, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !55, line: 167, column: 7)
!974 = !DILocation(line: 169, column: 11, scope: !973)
!975 = !DILocation(line: 169, column: 29, scope: !973)
!976 = !DILocation(line: 169, column: 27, scope: !973)
!977 = !DILocation(line: 168, column: 50, scope: !973)
!978 = !DILocation(line: 168, column: 22, scope: !973)
!979 = !DILocation(line: 168, column: 9, scope: !973)
!980 = !DILocation(line: 168, column: 57, scope: !973)
!981 = !DILocation(line: 172, column: 17, scope: !973)
!982 = !DILocation(line: 172, column: 11, scope: !973)
!983 = !DILocation(line: 172, column: 29, scope: !973)
!984 = !DILocation(line: 172, column: 27, scope: !973)
!985 = !DILocation(line: 171, column: 56, scope: !973)
!986 = !DILocation(line: 171, column: 28, scope: !973)
!987 = !DILocation(line: 171, column: 9, scope: !973)
!988 = !DILocation(line: 171, column: 63, scope: !973)
!989 = !DILocation(line: 179, column: 16, scope: !990)
!990 = distinct !DILexicalBlock(scope: !973, file: !55, line: 179, column: 9)
!991 = !DILocation(line: 179, column: 14, scope: !990)
!992 = !DILocation(line: 179, column: 21, scope: !993)
!993 = !DILexicalBlockFile(scope: !994, file: !55, discriminator: 1)
!994 = distinct !DILexicalBlock(scope: !990, file: !55, line: 179, column: 9)
!995 = !DILocation(line: 179, column: 26, scope: !993)
!996 = !DILocation(line: 179, column: 23, scope: !993)
!997 = !DILocation(line: 179, column: 9, scope: !993)
!998 = !DILocation(line: 182, column: 21, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !55, line: 180, column: 11)
!1000 = !DILocation(line: 182, column: 15, scope: !999)
!1001 = !DILocation(line: 182, column: 33, scope: !999)
!1002 = !DILocation(line: 182, column: 31, scope: !999)
!1003 = !DILocation(line: 181, column: 54, scope: !999)
!1004 = !DILocation(line: 181, column: 57, scope: !999)
!1005 = !DILocation(line: 181, column: 26, scope: !999)
!1006 = !DILocation(line: 181, column: 13, scope: !999)
!1007 = !DILocation(line: 181, column: 61, scope: !999)
!1008 = !DILocation(line: 185, column: 21, scope: !999)
!1009 = !DILocation(line: 185, column: 15, scope: !999)
!1010 = !DILocation(line: 185, column: 33, scope: !999)
!1011 = !DILocation(line: 185, column: 31, scope: !999)
!1012 = !DILocation(line: 184, column: 60, scope: !999)
!1013 = !DILocation(line: 184, column: 63, scope: !999)
!1014 = !DILocation(line: 184, column: 32, scope: !999)
!1015 = !DILocation(line: 184, column: 13, scope: !999)
!1016 = !DILocation(line: 184, column: 67, scope: !999)
!1017 = !DILocation(line: 191, column: 11, scope: !999)
!1018 = !DILocation(line: 179, column: 29, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !994, file: !55, discriminator: 2)
!1020 = !DILocation(line: 179, column: 9, scope: !1019)
!1021 = distinct !{!1021, !1022}
!1022 = !DILocation(line: 179, column: 9, scope: !973)
!1023 = !DILocation(line: 193, column: 18, scope: !973)
!1024 = !DILocation(line: 194, column: 7, scope: !973)
!1025 = !DILocation(line: 166, column: 28, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !968, file: !55, discriminator: 2)
!1027 = !DILocation(line: 166, column: 5, scope: !1026)
!1028 = distinct !{!1028, !1029}
!1029 = !DILocation(line: 166, column: 5, scope: !953)
!1030 = !DILocation(line: 197, column: 10, scope: !839)
!1031 = !DILocation(line: 197, column: 3, scope: !839)
!1032 = !DILocation(line: 198, column: 1, scope: !839)
!1033 = distinct !DISubprogram(name: "legendre_deriv_array_none_e", scope: !55, file: !55, line: 425, type: !1034, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!58, !61, !65, !65, !66, !66}
!1036 = !DILocalVariable(name: "lmax", arg: 1, scope: !1033, file: !55, line: 426, type: !61)
!1037 = !DILocation(line: 426, column: 15, scope: !1033)
!1038 = !DILocalVariable(name: "x", arg: 2, scope: !1033, file: !55, line: 426, type: !65)
!1039 = !DILocation(line: 426, column: 34, scope: !1033)
!1040 = !DILocalVariable(name: "csphase", arg: 3, scope: !1033, file: !55, line: 426, type: !65)
!1041 = !DILocation(line: 426, column: 50, scope: !1033)
!1042 = !DILocalVariable(name: "result_array", arg: 4, scope: !1033, file: !55, line: 426, type: !66)
!1043 = !DILocation(line: 426, column: 59, scope: !1033)
!1044 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1033, file: !55, line: 426, type: !66)
!1045 = !DILocation(line: 428, column: 7, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1033, file: !55, line: 428, column: 7)
!1047 = !DILocation(line: 428, column: 9, scope: !1046)
!1048 = !DILocation(line: 428, column: 15, scope: !1046)
!1049 = !DILocation(line: 428, column: 18, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1046, file: !55, discriminator: 1)
!1051 = !DILocation(line: 428, column: 20, scope: !1050)
!1052 = !DILocation(line: 428, column: 7, scope: !1050)
!1053 = !DILocation(line: 430, column: 7, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1046, file: !55, line: 429, column: 5)
!1055 = distinct !{!1055, !1053}
!1056 = !DILocation(line: 430, column: 7, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1058, file: !55, discriminator: 1)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !55, line: 430, column: 7)
!1059 = !DILocation(line: 431, column: 5, scope: !1054)
!1060 = !DILocation(line: 433, column: 17, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1046, file: !55, line: 433, column: 12)
!1062 = !DILocation(line: 433, column: 12, scope: !1061)
!1063 = !DILocation(line: 433, column: 20, scope: !1061)
!1064 = !DILocation(line: 433, column: 12, scope: !1046)
!1065 = !DILocation(line: 435, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !55, line: 434, column: 5)
!1067 = distinct !{!1067, !1065}
!1068 = !DILocation(line: 435, column: 7, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1070, file: !55, discriminator: 1)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !55, line: 435, column: 7)
!1071 = !DILocation(line: 436, column: 5, scope: !1066)
!1072 = !DILocation(line: 438, column: 12, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1061, file: !55, line: 438, column: 12)
!1074 = !DILocation(line: 438, column: 20, scope: !1073)
!1075 = !DILocation(line: 438, column: 27, scope: !1073)
!1076 = !DILocation(line: 438, column: 30, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1073, file: !55, discriminator: 1)
!1078 = !DILocation(line: 438, column: 38, scope: !1077)
!1079 = !DILocation(line: 438, column: 12, scope: !1077)
!1080 = !DILocation(line: 440, column: 7, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1073, file: !55, line: 439, column: 5)
!1082 = distinct !{!1082, !1080}
!1083 = !DILocation(line: 440, column: 7, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !55, discriminator: 1)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !55, line: 440, column: 7)
!1086 = !DILocation(line: 441, column: 5, scope: !1081)
!1087 = !DILocalVariable(name: "u", scope: !1088, file: !55, line: 444, type: !65)
!1088 = distinct !DILexicalBlock(scope: !1073, file: !55, line: 443, column: 5)
!1089 = !DILocation(line: 444, column: 20, scope: !1088)
!1090 = !DILocation(line: 444, column: 36, scope: !1088)
!1091 = !DILocation(line: 444, column: 34, scope: !1088)
!1092 = !DILocation(line: 444, column: 48, scope: !1088)
!1093 = !DILocation(line: 444, column: 46, scope: !1088)
!1094 = !DILocation(line: 444, column: 39, scope: !1088)
!1095 = !DILocation(line: 444, column: 24, scope: !1088)
!1096 = !DILocalVariable(name: "uinv", scope: !1088, file: !55, line: 446, type: !65)
!1097 = !DILocation(line: 446, column: 20, scope: !1088)
!1098 = !DILocation(line: 446, column: 33, scope: !1088)
!1099 = !DILocation(line: 446, column: 31, scope: !1088)
!1100 = !DILocalVariable(name: "xbyu", scope: !1088, file: !55, line: 452, type: !65)
!1101 = !DILocation(line: 452, column: 20, scope: !1088)
!1102 = !DILocation(line: 452, column: 27, scope: !1088)
!1103 = !DILocation(line: 452, column: 31, scope: !1088)
!1104 = !DILocation(line: 452, column: 29, scope: !1088)
!1105 = !DILocalVariable(name: "l", scope: !1088, file: !55, line: 454, type: !62)
!1106 = !DILocation(line: 454, column: 14, scope: !1088)
!1107 = !DILocalVariable(name: "m", scope: !1088, file: !55, line: 454, type: !62)
!1108 = !DILocation(line: 454, column: 17, scope: !1088)
!1109 = !DILocalVariable(name: "k", scope: !1088, file: !55, line: 455, type: !62)
!1110 = !DILocation(line: 455, column: 14, scope: !1088)
!1111 = !DILocalVariable(name: "idxmm", scope: !1088, file: !55, line: 455, type: !62)
!1112 = !DILocation(line: 455, column: 17, scope: !1088)
!1113 = !DILocalVariable(name: "plm", scope: !1088, file: !55, line: 456, type: !49)
!1114 = !DILocation(line: 456, column: 14, scope: !1088)
!1115 = !DILocalVariable(name: "pmm", scope: !1088, file: !55, line: 456, type: !49)
!1116 = !DILocation(line: 456, column: 19, scope: !1088)
!1117 = !DILocalVariable(name: "pm1", scope: !1088, file: !55, line: 457, type: !49)
!1118 = !DILocation(line: 457, column: 14, scope: !1088)
!1119 = !DILocalVariable(name: "pm2", scope: !1088, file: !55, line: 458, type: !49)
!1120 = !DILocation(line: 458, column: 14, scope: !1088)
!1121 = !DILocalVariable(name: "twomm1", scope: !1088, file: !55, line: 459, type: !49)
!1122 = !DILocation(line: 459, column: 14, scope: !1088)
!1123 = !DILocation(line: 463, column: 11, scope: !1088)
!1124 = !DILocation(line: 464, column: 13, scope: !1088)
!1125 = !DILocation(line: 464, column: 11, scope: !1088)
!1126 = !DILocation(line: 466, column: 25, scope: !1088)
!1127 = !DILocation(line: 466, column: 7, scope: !1088)
!1128 = !DILocation(line: 466, column: 23, scope: !1088)
!1129 = !DILocation(line: 468, column: 7, scope: !1088)
!1130 = !DILocation(line: 468, column: 29, scope: !1088)
!1131 = !DILocation(line: 474, column: 11, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1088, file: !55, line: 474, column: 11)
!1133 = !DILocation(line: 474, column: 16, scope: !1132)
!1134 = !DILocation(line: 474, column: 11, scope: !1088)
!1135 = !DILocation(line: 475, column: 9, scope: !1132)
!1136 = !DILocation(line: 477, column: 25, scope: !1088)
!1137 = !DILocation(line: 477, column: 7, scope: !1088)
!1138 = !DILocation(line: 477, column: 23, scope: !1088)
!1139 = !DILocation(line: 479, column: 32, scope: !1088)
!1140 = !DILocation(line: 479, column: 31, scope: !1088)
!1141 = !DILocation(line: 479, column: 7, scope: !1088)
!1142 = !DILocation(line: 479, column: 29, scope: !1088)
!1143 = !DILocation(line: 487, column: 9, scope: !1088)
!1144 = !DILocation(line: 488, column: 14, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1088, file: !55, line: 488, column: 7)
!1146 = !DILocation(line: 488, column: 12, scope: !1145)
!1147 = !DILocation(line: 488, column: 19, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1149, file: !55, discriminator: 1)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !55, line: 488, column: 7)
!1150 = !DILocation(line: 488, column: 24, scope: !1148)
!1151 = !DILocation(line: 488, column: 21, scope: !1148)
!1152 = !DILocation(line: 488, column: 7, scope: !1148)
!1153 = !DILocation(line: 490, column: 16, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !55, line: 489, column: 9)
!1155 = !DILocation(line: 490, column: 13, scope: !1154)
!1156 = !DILocation(line: 491, column: 21, scope: !1154)
!1157 = !DILocation(line: 491, column: 20, scope: !1154)
!1158 = !DILocation(line: 491, column: 23, scope: !1154)
!1159 = !DILocation(line: 491, column: 18, scope: !1154)
!1160 = !DILocation(line: 491, column: 30, scope: !1154)
!1161 = !DILocation(line: 491, column: 28, scope: !1154)
!1162 = !DILocation(line: 491, column: 34, scope: !1154)
!1163 = !DILocation(line: 491, column: 32, scope: !1154)
!1164 = !DILocation(line: 491, column: 41, scope: !1154)
!1165 = !DILocation(line: 491, column: 43, scope: !1154)
!1166 = !DILocation(line: 491, column: 40, scope: !1154)
!1167 = !DILocation(line: 491, column: 50, scope: !1154)
!1168 = !DILocation(line: 491, column: 48, scope: !1154)
!1169 = !DILocation(line: 491, column: 38, scope: !1154)
!1170 = !DILocation(line: 491, column: 66, scope: !1154)
!1171 = !DILocation(line: 491, column: 57, scope: !1154)
!1172 = !DILocation(line: 491, column: 55, scope: !1154)
!1173 = !DILocation(line: 491, column: 15, scope: !1154)
!1174 = !DILocation(line: 492, column: 29, scope: !1154)
!1175 = !DILocation(line: 492, column: 24, scope: !1154)
!1176 = !DILocation(line: 492, column: 11, scope: !1154)
!1177 = !DILocation(line: 492, column: 27, scope: !1154)
!1178 = !DILocation(line: 494, column: 44, scope: !1154)
!1179 = !DILocation(line: 494, column: 36, scope: !1154)
!1180 = !DILocation(line: 494, column: 35, scope: !1154)
!1181 = !DILocation(line: 494, column: 49, scope: !1154)
!1182 = !DILocation(line: 494, column: 55, scope: !1154)
!1183 = !DILocation(line: 494, column: 59, scope: !1154)
!1184 = !DILocation(line: 494, column: 57, scope: !1154)
!1185 = !DILocation(line: 494, column: 53, scope: !1154)
!1186 = !DILocation(line: 494, column: 46, scope: !1154)
!1187 = !DILocation(line: 494, column: 66, scope: !1154)
!1188 = !DILocation(line: 494, column: 64, scope: !1154)
!1189 = !DILocation(line: 494, column: 30, scope: !1154)
!1190 = !DILocation(line: 494, column: 11, scope: !1154)
!1191 = !DILocation(line: 494, column: 33, scope: !1154)
!1192 = !DILocation(line: 500, column: 17, scope: !1154)
!1193 = !DILocation(line: 500, column: 15, scope: !1154)
!1194 = !DILocation(line: 501, column: 17, scope: !1154)
!1195 = !DILocation(line: 501, column: 15, scope: !1154)
!1196 = !DILocation(line: 502, column: 9, scope: !1154)
!1197 = !DILocation(line: 488, column: 30, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1149, file: !55, discriminator: 2)
!1199 = !DILocation(line: 488, column: 7, scope: !1198)
!1200 = distinct !{!1200, !1201}
!1201 = !DILocation(line: 488, column: 7, scope: !1088)
!1202 = !DILocation(line: 506, column: 11, scope: !1088)
!1203 = !DILocation(line: 507, column: 14, scope: !1088)
!1204 = !DILocation(line: 509, column: 13, scope: !1088)
!1205 = !DILocation(line: 511, column: 14, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1088, file: !55, line: 511, column: 7)
!1207 = !DILocation(line: 511, column: 12, scope: !1206)
!1208 = !DILocation(line: 511, column: 19, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !55, discriminator: 1)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !55, line: 511, column: 7)
!1211 = !DILocation(line: 511, column: 24, scope: !1209)
!1212 = !DILocation(line: 511, column: 29, scope: !1209)
!1213 = !DILocation(line: 511, column: 21, scope: !1209)
!1214 = !DILocation(line: 511, column: 7, scope: !1209)
!1215 = !DILocation(line: 520, column: 20, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1210, file: !55, line: 512, column: 9)
!1217 = !DILocation(line: 520, column: 22, scope: !1216)
!1218 = !DILocation(line: 520, column: 17, scope: !1216)
!1219 = !DILocation(line: 521, column: 18, scope: !1216)
!1220 = !DILocation(line: 522, column: 18, scope: !1216)
!1221 = !DILocation(line: 522, column: 28, scope: !1216)
!1222 = !DILocation(line: 522, column: 26, scope: !1216)
!1223 = !DILocation(line: 522, column: 32, scope: !1216)
!1224 = !DILocation(line: 522, column: 30, scope: !1216)
!1225 = !DILocation(line: 522, column: 15, scope: !1216)
!1226 = !DILocation(line: 523, column: 33, scope: !1216)
!1227 = !DILocation(line: 523, column: 24, scope: !1216)
!1228 = !DILocation(line: 523, column: 11, scope: !1216)
!1229 = !DILocation(line: 523, column: 31, scope: !1216)
!1230 = !DILocation(line: 525, column: 39, scope: !1216)
!1231 = !DILocation(line: 525, column: 43, scope: !1216)
!1232 = !DILocation(line: 525, column: 41, scope: !1216)
!1233 = !DILocation(line: 525, column: 50, scope: !1216)
!1234 = !DILocation(line: 525, column: 48, scope: !1216)
!1235 = !DILocation(line: 525, column: 30, scope: !1216)
!1236 = !DILocation(line: 525, column: 11, scope: !1216)
!1237 = !DILocation(line: 525, column: 37, scope: !1216)
!1238 = !DILocation(line: 532, column: 17, scope: !1216)
!1239 = !DILocation(line: 532, column: 15, scope: !1216)
!1240 = !DILocation(line: 541, column: 15, scope: !1216)
!1241 = !DILocation(line: 541, column: 23, scope: !1216)
!1242 = !DILocation(line: 541, column: 21, scope: !1216)
!1243 = !DILocation(line: 541, column: 25, scope: !1216)
!1244 = !DILocation(line: 541, column: 13, scope: !1216)
!1245 = !DILocation(line: 542, column: 17, scope: !1216)
!1246 = !DILocation(line: 542, column: 21, scope: !1216)
!1247 = !DILocation(line: 542, column: 19, scope: !1216)
!1248 = !DILocation(line: 542, column: 30, scope: !1216)
!1249 = !DILocation(line: 542, column: 29, scope: !1216)
!1250 = !DILocation(line: 542, column: 32, scope: !1216)
!1251 = !DILocation(line: 542, column: 27, scope: !1216)
!1252 = !DILocation(line: 542, column: 25, scope: !1216)
!1253 = !DILocation(line: 542, column: 15, scope: !1216)
!1254 = !DILocation(line: 543, column: 29, scope: !1216)
!1255 = !DILocation(line: 543, column: 24, scope: !1216)
!1256 = !DILocation(line: 543, column: 11, scope: !1216)
!1257 = !DILocation(line: 543, column: 27, scope: !1216)
!1258 = !DILocation(line: 545, column: 36, scope: !1216)
!1259 = !DILocation(line: 545, column: 35, scope: !1216)
!1260 = !DILocation(line: 545, column: 47, scope: !1216)
!1261 = !DILocation(line: 545, column: 46, scope: !1216)
!1262 = !DILocation(line: 545, column: 49, scope: !1216)
!1263 = !DILocation(line: 545, column: 44, scope: !1216)
!1264 = !DILocation(line: 545, column: 56, scope: !1216)
!1265 = !DILocation(line: 545, column: 54, scope: !1216)
!1266 = !DILocation(line: 545, column: 63, scope: !1216)
!1267 = !DILocation(line: 545, column: 65, scope: !1216)
!1268 = !DILocation(line: 545, column: 62, scope: !1216)
!1269 = !DILocation(line: 545, column: 72, scope: !1216)
!1270 = !DILocation(line: 545, column: 70, scope: !1216)
!1271 = !DILocation(line: 545, column: 76, scope: !1216)
!1272 = !DILocation(line: 545, column: 74, scope: !1216)
!1273 = !DILocation(line: 545, column: 60, scope: !1216)
!1274 = !DILocation(line: 545, column: 41, scope: !1216)
!1275 = !DILocation(line: 545, column: 30, scope: !1216)
!1276 = !DILocation(line: 545, column: 11, scope: !1216)
!1277 = !DILocation(line: 545, column: 33, scope: !1216)
!1278 = !DILocation(line: 554, column: 20, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1216, file: !55, line: 554, column: 11)
!1280 = !DILocation(line: 554, column: 22, scope: !1279)
!1281 = !DILocation(line: 554, column: 18, scope: !1279)
!1282 = !DILocation(line: 554, column: 16, scope: !1279)
!1283 = !DILocation(line: 554, column: 27, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1285, file: !55, discriminator: 1)
!1285 = distinct !DILexicalBlock(scope: !1279, file: !55, line: 554, column: 11)
!1286 = !DILocation(line: 554, column: 32, scope: !1284)
!1287 = !DILocation(line: 554, column: 29, scope: !1284)
!1288 = !DILocation(line: 554, column: 11, scope: !1284)
!1289 = !DILocation(line: 556, column: 20, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !55, line: 555, column: 13)
!1291 = !DILocation(line: 556, column: 17, scope: !1290)
!1292 = !DILocation(line: 557, column: 25, scope: !1290)
!1293 = !DILocation(line: 557, column: 24, scope: !1290)
!1294 = !DILocation(line: 557, column: 27, scope: !1290)
!1295 = !DILocation(line: 557, column: 22, scope: !1290)
!1296 = !DILocation(line: 557, column: 34, scope: !1290)
!1297 = !DILocation(line: 557, column: 32, scope: !1290)
!1298 = !DILocation(line: 557, column: 38, scope: !1290)
!1299 = !DILocation(line: 557, column: 36, scope: !1290)
!1300 = !DILocation(line: 557, column: 45, scope: !1290)
!1301 = !DILocation(line: 557, column: 49, scope: !1290)
!1302 = !DILocation(line: 557, column: 47, scope: !1290)
!1303 = !DILocation(line: 557, column: 51, scope: !1290)
!1304 = !DILocation(line: 557, column: 44, scope: !1290)
!1305 = !DILocation(line: 557, column: 58, scope: !1290)
!1306 = !DILocation(line: 557, column: 56, scope: !1290)
!1307 = !DILocation(line: 557, column: 42, scope: !1290)
!1308 = !DILocation(line: 558, column: 31, scope: !1290)
!1309 = !DILocation(line: 558, column: 35, scope: !1290)
!1310 = !DILocation(line: 558, column: 33, scope: !1290)
!1311 = !DILocation(line: 558, column: 21, scope: !1290)
!1312 = !DILocation(line: 557, column: 63, scope: !1290)
!1313 = !DILocation(line: 557, column: 19, scope: !1290)
!1314 = !DILocation(line: 559, column: 33, scope: !1290)
!1315 = !DILocation(line: 559, column: 28, scope: !1290)
!1316 = !DILocation(line: 559, column: 15, scope: !1290)
!1317 = !DILocation(line: 559, column: 31, scope: !1290)
!1318 = !DILocation(line: 561, column: 40, scope: !1290)
!1319 = !DILocation(line: 561, column: 39, scope: !1290)
!1320 = !DILocation(line: 561, column: 49, scope: !1290)
!1321 = !DILocation(line: 561, column: 53, scope: !1290)
!1322 = !DILocation(line: 561, column: 51, scope: !1290)
!1323 = !DILocation(line: 561, column: 48, scope: !1290)
!1324 = !DILocation(line: 561, column: 58, scope: !1290)
!1325 = !DILocation(line: 561, column: 56, scope: !1290)
!1326 = !DILocation(line: 561, column: 64, scope: !1290)
!1327 = !DILocation(line: 561, column: 68, scope: !1290)
!1328 = !DILocation(line: 561, column: 66, scope: !1290)
!1329 = !DILocation(line: 561, column: 72, scope: !1290)
!1330 = !DILocation(line: 561, column: 70, scope: !1290)
!1331 = !DILocation(line: 561, column: 62, scope: !1290)
!1332 = !DILocation(line: 561, column: 45, scope: !1290)
!1333 = !DILocation(line: 561, column: 34, scope: !1290)
!1334 = !DILocation(line: 561, column: 15, scope: !1290)
!1335 = !DILocation(line: 561, column: 37, scope: !1290)
!1336 = !DILocation(line: 568, column: 21, scope: !1290)
!1337 = !DILocation(line: 568, column: 19, scope: !1290)
!1338 = !DILocation(line: 569, column: 21, scope: !1290)
!1339 = !DILocation(line: 569, column: 19, scope: !1290)
!1340 = !DILocation(line: 570, column: 13, scope: !1290)
!1341 = !DILocation(line: 554, column: 38, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1285, file: !55, discriminator: 2)
!1343 = !DILocation(line: 554, column: 11, scope: !1342)
!1344 = distinct !{!1344, !1345}
!1345 = !DILocation(line: 554, column: 11, scope: !1216)
!1346 = !DILocation(line: 571, column: 9, scope: !1216)
!1347 = !DILocation(line: 511, column: 34, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1210, file: !55, discriminator: 2)
!1349 = !DILocation(line: 511, column: 7, scope: !1348)
!1350 = distinct !{!1350, !1351}
!1351 = !DILocation(line: 511, column: 7, scope: !1088)
!1352 = !DILocation(line: 575, column: 16, scope: !1088)
!1353 = !DILocation(line: 575, column: 18, scope: !1088)
!1354 = !DILocation(line: 575, column: 13, scope: !1088)
!1355 = !DILocation(line: 576, column: 14, scope: !1088)
!1356 = !DILocation(line: 577, column: 14, scope: !1088)
!1357 = !DILocation(line: 577, column: 24, scope: !1088)
!1358 = !DILocation(line: 577, column: 22, scope: !1088)
!1359 = !DILocation(line: 577, column: 28, scope: !1088)
!1360 = !DILocation(line: 577, column: 26, scope: !1088)
!1361 = !DILocation(line: 577, column: 11, scope: !1088)
!1362 = !DILocation(line: 578, column: 29, scope: !1088)
!1363 = !DILocation(line: 578, column: 20, scope: !1088)
!1364 = !DILocation(line: 578, column: 7, scope: !1088)
!1365 = !DILocation(line: 578, column: 27, scope: !1088)
!1366 = !DILocation(line: 580, column: 35, scope: !1088)
!1367 = !DILocation(line: 580, column: 42, scope: !1088)
!1368 = !DILocation(line: 580, column: 40, scope: !1088)
!1369 = !DILocation(line: 580, column: 46, scope: !1088)
!1370 = !DILocation(line: 580, column: 44, scope: !1088)
!1371 = !DILocation(line: 580, column: 52, scope: !1088)
!1372 = !DILocation(line: 580, column: 50, scope: !1088)
!1373 = !DILocation(line: 580, column: 26, scope: !1088)
!1374 = !DILocation(line: 580, column: 7, scope: !1088)
!1375 = !DILocation(line: 580, column: 33, scope: !1088)
!1376 = !DILocation(line: 588, column: 7, scope: !1088)
!1377 = !DILocation(line: 590, column: 1, scope: !1033)
!1378 = distinct !DISubprogram(name: "legendre_deriv_array_schmidt_e", scope: !55, file: !55, line: 217, type: !1034, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!1379 = !DILocalVariable(name: "lmax", arg: 1, scope: !1378, file: !55, line: 218, type: !61)
!1380 = !DILocation(line: 218, column: 15, scope: !1378)
!1381 = !DILocalVariable(name: "x", arg: 2, scope: !1378, file: !55, line: 218, type: !65)
!1382 = !DILocation(line: 218, column: 34, scope: !1378)
!1383 = !DILocalVariable(name: "csphase", arg: 3, scope: !1378, file: !55, line: 218, type: !65)
!1384 = !DILocation(line: 218, column: 50, scope: !1378)
!1385 = !DILocalVariable(name: "result_array", arg: 4, scope: !1378, file: !55, line: 218, type: !66)
!1386 = !DILocation(line: 218, column: 59, scope: !1378)
!1387 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1378, file: !55, line: 218, type: !66)
!1388 = !DILocation(line: 220, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1378, file: !55, line: 220, column: 7)
!1390 = !DILocation(line: 220, column: 9, scope: !1389)
!1391 = !DILocation(line: 220, column: 15, scope: !1389)
!1392 = !DILocation(line: 220, column: 18, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1389, file: !55, discriminator: 1)
!1394 = !DILocation(line: 220, column: 20, scope: !1393)
!1395 = !DILocation(line: 220, column: 7, scope: !1393)
!1396 = !DILocation(line: 222, column: 7, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1389, file: !55, line: 221, column: 5)
!1398 = distinct !{!1398, !1396}
!1399 = !DILocation(line: 222, column: 7, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !55, discriminator: 1)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !55, line: 222, column: 7)
!1402 = !DILocation(line: 223, column: 5, scope: !1397)
!1403 = !DILocation(line: 225, column: 17, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1389, file: !55, line: 225, column: 12)
!1405 = !DILocation(line: 225, column: 12, scope: !1404)
!1406 = !DILocation(line: 225, column: 20, scope: !1404)
!1407 = !DILocation(line: 225, column: 12, scope: !1389)
!1408 = !DILocation(line: 227, column: 7, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !55, line: 226, column: 5)
!1410 = distinct !{!1410, !1408}
!1411 = !DILocation(line: 227, column: 7, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1413, file: !55, discriminator: 1)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !55, line: 227, column: 7)
!1414 = !DILocation(line: 228, column: 5, scope: !1409)
!1415 = !DILocation(line: 230, column: 12, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1404, file: !55, line: 230, column: 12)
!1417 = !DILocation(line: 230, column: 20, scope: !1416)
!1418 = !DILocation(line: 230, column: 27, scope: !1416)
!1419 = !DILocation(line: 230, column: 30, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1416, file: !55, discriminator: 1)
!1421 = !DILocation(line: 230, column: 38, scope: !1420)
!1422 = !DILocation(line: 230, column: 12, scope: !1420)
!1423 = !DILocation(line: 232, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1416, file: !55, line: 231, column: 5)
!1425 = distinct !{!1425, !1423}
!1426 = !DILocation(line: 232, column: 7, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1428, file: !55, discriminator: 1)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !55, line: 232, column: 7)
!1429 = !DILocation(line: 233, column: 5, scope: !1424)
!1430 = !DILocalVariable(name: "eps", scope: !1431, file: !55, line: 236, type: !65)
!1431 = distinct !DILexicalBlock(scope: !1416, file: !55, line: 235, column: 5)
!1432 = !DILocation(line: 236, column: 20, scope: !1431)
!1433 = !DILocalVariable(name: "u", scope: !1431, file: !55, line: 237, type: !65)
!1434 = !DILocation(line: 237, column: 20, scope: !1431)
!1435 = !DILocation(line: 237, column: 36, scope: !1431)
!1436 = !DILocation(line: 237, column: 34, scope: !1431)
!1437 = !DILocation(line: 237, column: 48, scope: !1431)
!1438 = !DILocation(line: 237, column: 46, scope: !1431)
!1439 = !DILocation(line: 237, column: 39, scope: !1431)
!1440 = !DILocation(line: 237, column: 24, scope: !1431)
!1441 = !DILocalVariable(name: "uinv", scope: !1431, file: !55, line: 239, type: !65)
!1442 = !DILocation(line: 239, column: 20, scope: !1431)
!1443 = !DILocation(line: 239, column: 33, scope: !1431)
!1444 = !DILocation(line: 239, column: 31, scope: !1431)
!1445 = !DILocalVariable(name: "xbyu", scope: !1431, file: !55, line: 245, type: !65)
!1446 = !DILocation(line: 245, column: 20, scope: !1431)
!1447 = !DILocation(line: 245, column: 27, scope: !1431)
!1448 = !DILocation(line: 245, column: 31, scope: !1431)
!1449 = !DILocation(line: 245, column: 29, scope: !1431)
!1450 = !DILocalVariable(name: "l", scope: !1431, file: !55, line: 247, type: !62)
!1451 = !DILocation(line: 247, column: 14, scope: !1431)
!1452 = !DILocalVariable(name: "m", scope: !1431, file: !55, line: 247, type: !62)
!1453 = !DILocation(line: 247, column: 17, scope: !1431)
!1454 = !DILocalVariable(name: "k", scope: !1431, file: !55, line: 248, type: !62)
!1455 = !DILocation(line: 248, column: 14, scope: !1431)
!1456 = !DILocalVariable(name: "idxmm", scope: !1431, file: !55, line: 248, type: !62)
!1457 = !DILocation(line: 248, column: 17, scope: !1431)
!1458 = !DILocalVariable(name: "plm", scope: !1431, file: !55, line: 249, type: !49)
!1459 = !DILocation(line: 249, column: 14, scope: !1431)
!1460 = !DILocalVariable(name: "pmm", scope: !1431, file: !55, line: 250, type: !49)
!1461 = !DILocation(line: 250, column: 14, scope: !1431)
!1462 = !DILocalVariable(name: "rescalem", scope: !1431, file: !55, line: 251, type: !49)
!1463 = !DILocation(line: 251, column: 14, scope: !1431)
!1464 = !DILocalVariable(name: "pm1", scope: !1431, file: !55, line: 252, type: !49)
!1465 = !DILocation(line: 252, column: 14, scope: !1431)
!1466 = !DILocalVariable(name: "pm2", scope: !1431, file: !55, line: 253, type: !49)
!1467 = !DILocation(line: 253, column: 14, scope: !1431)
!1468 = !DILocalVariable(name: "nlm", scope: !1431, file: !55, line: 254, type: !62)
!1469 = !DILocation(line: 254, column: 14, scope: !1431)
!1470 = !DILocation(line: 254, column: 40, scope: !1431)
!1471 = !DILocation(line: 254, column: 20, scope: !1431)
!1472 = !DILocalVariable(name: "sqrts", scope: !1431, file: !55, line: 255, type: !66)
!1473 = !DILocation(line: 255, column: 15, scope: !1431)
!1474 = !DILocation(line: 255, column: 38, scope: !1431)
!1475 = !DILocation(line: 255, column: 25, scope: !1431)
!1476 = !DILocation(line: 258, column: 22, scope: !1431)
!1477 = !DILocation(line: 258, column: 28, scope: !1431)
!1478 = !DILocation(line: 258, column: 7, scope: !1431)
!1479 = !DILocation(line: 261, column: 11, scope: !1431)
!1480 = !DILocation(line: 262, column: 13, scope: !1431)
!1481 = !DILocation(line: 262, column: 11, scope: !1431)
!1482 = !DILocation(line: 264, column: 25, scope: !1431)
!1483 = !DILocation(line: 264, column: 7, scope: !1431)
!1484 = !DILocation(line: 264, column: 23, scope: !1431)
!1485 = !DILocation(line: 266, column: 7, scope: !1431)
!1486 = !DILocation(line: 266, column: 29, scope: !1431)
!1487 = !DILocation(line: 272, column: 11, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1431, file: !55, line: 272, column: 11)
!1489 = !DILocation(line: 272, column: 16, scope: !1488)
!1490 = !DILocation(line: 272, column: 11, scope: !1431)
!1491 = !DILocation(line: 273, column: 9, scope: !1488)
!1492 = !DILocation(line: 275, column: 25, scope: !1431)
!1493 = !DILocation(line: 275, column: 7, scope: !1431)
!1494 = !DILocation(line: 275, column: 23, scope: !1431)
!1495 = !DILocation(line: 277, column: 32, scope: !1431)
!1496 = !DILocation(line: 277, column: 31, scope: !1431)
!1497 = !DILocation(line: 277, column: 7, scope: !1431)
!1498 = !DILocation(line: 277, column: 29, scope: !1431)
!1499 = !DILocation(line: 285, column: 9, scope: !1431)
!1500 = !DILocation(line: 286, column: 14, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1431, file: !55, line: 286, column: 7)
!1502 = !DILocation(line: 286, column: 12, scope: !1501)
!1503 = !DILocation(line: 286, column: 19, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1505, file: !55, discriminator: 1)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !55, line: 286, column: 7)
!1506 = !DILocation(line: 286, column: 24, scope: !1504)
!1507 = !DILocation(line: 286, column: 21, scope: !1504)
!1508 = !DILocation(line: 286, column: 7, scope: !1504)
!1509 = !DILocalVariable(name: "linv", scope: !1510, file: !55, line: 288, type: !49)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !55, line: 287, column: 9)
!1511 = !DILocation(line: 288, column: 18, scope: !1510)
!1512 = !DILocation(line: 288, column: 39, scope: !1510)
!1513 = !DILocation(line: 288, column: 31, scope: !1510)
!1514 = !DILocation(line: 288, column: 29, scope: !1510)
!1515 = !DILocation(line: 290, column: 16, scope: !1510)
!1516 = !DILocation(line: 290, column: 13, scope: !1510)
!1517 = !DILocation(line: 292, column: 24, scope: !1510)
!1518 = !DILocation(line: 292, column: 22, scope: !1510)
!1519 = !DILocation(line: 292, column: 32, scope: !1510)
!1520 = !DILocation(line: 292, column: 30, scope: !1510)
!1521 = !DILocation(line: 292, column: 36, scope: !1510)
!1522 = !DILocation(line: 292, column: 34, scope: !1510)
!1523 = !DILocation(line: 292, column: 49, scope: !1510)
!1524 = !DILocation(line: 292, column: 47, scope: !1510)
!1525 = !DILocation(line: 292, column: 57, scope: !1510)
!1526 = !DILocation(line: 292, column: 55, scope: !1510)
!1527 = !DILocation(line: 292, column: 40, scope: !1510)
!1528 = !DILocation(line: 292, column: 15, scope: !1510)
!1529 = !DILocation(line: 293, column: 29, scope: !1510)
!1530 = !DILocation(line: 293, column: 24, scope: !1510)
!1531 = !DILocation(line: 293, column: 11, scope: !1510)
!1532 = !DILocation(line: 293, column: 27, scope: !1510)
!1533 = !DILocation(line: 295, column: 35, scope: !1510)
!1534 = !DILocation(line: 295, column: 42, scope: !1510)
!1535 = !DILocation(line: 295, column: 40, scope: !1510)
!1536 = !DILocation(line: 295, column: 47, scope: !1510)
!1537 = !DILocation(line: 295, column: 51, scope: !1510)
!1538 = !DILocation(line: 295, column: 49, scope: !1510)
!1539 = !DILocation(line: 295, column: 57, scope: !1510)
!1540 = !DILocation(line: 295, column: 55, scope: !1510)
!1541 = !DILocation(line: 295, column: 44, scope: !1510)
!1542 = !DILocation(line: 295, column: 30, scope: !1510)
!1543 = !DILocation(line: 295, column: 11, scope: !1510)
!1544 = !DILocation(line: 295, column: 33, scope: !1510)
!1545 = !DILocation(line: 301, column: 17, scope: !1510)
!1546 = !DILocation(line: 301, column: 15, scope: !1510)
!1547 = !DILocation(line: 302, column: 17, scope: !1510)
!1548 = !DILocation(line: 302, column: 15, scope: !1510)
!1549 = !DILocation(line: 303, column: 9, scope: !1510)
!1550 = !DILocation(line: 286, column: 30, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1505, file: !55, discriminator: 2)
!1552 = !DILocation(line: 286, column: 7, scope: !1551)
!1553 = distinct !{!1553, !1554}
!1554 = !DILocation(line: 286, column: 7, scope: !1431)
!1555 = !DILocation(line: 316, column: 13, scope: !1431)
!1556 = !DILocation(line: 316, column: 23, scope: !1431)
!1557 = !DILocation(line: 316, column: 11, scope: !1431)
!1558 = !DILocation(line: 318, column: 16, scope: !1431)
!1559 = !DILocation(line: 319, column: 13, scope: !1431)
!1560 = !DILocation(line: 321, column: 14, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1431, file: !55, line: 321, column: 7)
!1562 = !DILocation(line: 321, column: 12, scope: !1561)
!1563 = !DILocation(line: 321, column: 19, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1565, file: !55, discriminator: 1)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !55, line: 321, column: 7)
!1566 = !DILocation(line: 321, column: 23, scope: !1564)
!1567 = !DILocation(line: 321, column: 21, scope: !1564)
!1568 = !DILocation(line: 321, column: 7, scope: !1564)
!1569 = !DILocation(line: 324, column: 23, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !55, line: 322, column: 9)
!1571 = !DILocation(line: 324, column: 20, scope: !1570)
!1572 = !DILocation(line: 332, column: 20, scope: !1570)
!1573 = !DILocation(line: 332, column: 22, scope: !1570)
!1574 = !DILocation(line: 332, column: 17, scope: !1570)
!1575 = !DILocation(line: 333, column: 18, scope: !1570)
!1576 = !DILocation(line: 333, column: 38, scope: !1570)
!1577 = !DILocation(line: 333, column: 36, scope: !1570)
!1578 = !DILocation(line: 333, column: 40, scope: !1570)
!1579 = !DILocation(line: 333, column: 28, scope: !1570)
!1580 = !DILocation(line: 333, column: 26, scope: !1570)
!1581 = !DILocation(line: 333, column: 57, scope: !1570)
!1582 = !DILocation(line: 333, column: 55, scope: !1570)
!1583 = !DILocation(line: 333, column: 47, scope: !1570)
!1584 = !DILocation(line: 333, column: 45, scope: !1570)
!1585 = !DILocation(line: 333, column: 15, scope: !1570)
!1586 = !DILocation(line: 334, column: 33, scope: !1570)
!1587 = !DILocation(line: 334, column: 39, scope: !1570)
!1588 = !DILocation(line: 334, column: 37, scope: !1570)
!1589 = !DILocation(line: 334, column: 24, scope: !1570)
!1590 = !DILocation(line: 334, column: 11, scope: !1570)
!1591 = !DILocation(line: 334, column: 31, scope: !1570)
!1592 = !DILocation(line: 336, column: 39, scope: !1570)
!1593 = !DILocation(line: 336, column: 43, scope: !1570)
!1594 = !DILocation(line: 336, column: 41, scope: !1570)
!1595 = !DILocation(line: 336, column: 63, scope: !1570)
!1596 = !DILocation(line: 336, column: 50, scope: !1570)
!1597 = !DILocation(line: 336, column: 48, scope: !1570)
!1598 = !DILocation(line: 336, column: 30, scope: !1570)
!1599 = !DILocation(line: 336, column: 11, scope: !1570)
!1600 = !DILocation(line: 336, column: 37, scope: !1570)
!1601 = !DILocation(line: 343, column: 17, scope: !1570)
!1602 = !DILocation(line: 343, column: 15, scope: !1570)
!1603 = !DILocation(line: 351, column: 15, scope: !1570)
!1604 = !DILocation(line: 351, column: 23, scope: !1570)
!1605 = !DILocation(line: 351, column: 21, scope: !1570)
!1606 = !DILocation(line: 351, column: 25, scope: !1570)
!1607 = !DILocation(line: 351, column: 13, scope: !1570)
!1608 = !DILocation(line: 352, column: 17, scope: !1570)
!1609 = !DILocation(line: 352, column: 31, scope: !1570)
!1610 = !DILocation(line: 352, column: 29, scope: !1570)
!1611 = !DILocation(line: 352, column: 33, scope: !1570)
!1612 = !DILocation(line: 352, column: 21, scope: !1570)
!1613 = !DILocation(line: 352, column: 19, scope: !1570)
!1614 = !DILocation(line: 352, column: 40, scope: !1570)
!1615 = !DILocation(line: 352, column: 38, scope: !1570)
!1616 = !DILocation(line: 352, column: 15, scope: !1570)
!1617 = !DILocation(line: 353, column: 29, scope: !1570)
!1618 = !DILocation(line: 353, column: 35, scope: !1570)
!1619 = !DILocation(line: 353, column: 33, scope: !1570)
!1620 = !DILocation(line: 353, column: 24, scope: !1570)
!1621 = !DILocation(line: 353, column: 11, scope: !1570)
!1622 = !DILocation(line: 353, column: 27, scope: !1570)
!1623 = !DILocation(line: 356, column: 13, scope: !1570)
!1624 = !DILocation(line: 356, column: 22, scope: !1570)
!1625 = !DILocation(line: 356, column: 24, scope: !1570)
!1626 = !DILocation(line: 356, column: 33, scope: !1570)
!1627 = !DILocation(line: 356, column: 31, scope: !1570)
!1628 = !DILocation(line: 356, column: 50, scope: !1570)
!1629 = !DILocation(line: 356, column: 37, scope: !1570)
!1630 = !DILocation(line: 356, column: 35, scope: !1570)
!1631 = !DILocation(line: 357, column: 31, scope: !1570)
!1632 = !DILocation(line: 357, column: 29, scope: !1570)
!1633 = !DILocation(line: 357, column: 33, scope: !1570)
!1634 = !DILocation(line: 357, column: 21, scope: !1570)
!1635 = !DILocation(line: 357, column: 53, scope: !1570)
!1636 = !DILocation(line: 357, column: 40, scope: !1570)
!1637 = !DILocation(line: 357, column: 38, scope: !1570)
!1638 = !DILocation(line: 356, column: 53, scope: !1570)
!1639 = !DILocation(line: 356, column: 18, scope: !1570)
!1640 = !DILocation(line: 355, column: 30, scope: !1570)
!1641 = !DILocation(line: 355, column: 11, scope: !1570)
!1642 = !DILocation(line: 355, column: 33, scope: !1570)
!1643 = !DILocation(line: 366, column: 20, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1570, file: !55, line: 366, column: 11)
!1645 = !DILocation(line: 366, column: 22, scope: !1644)
!1646 = !DILocation(line: 366, column: 18, scope: !1644)
!1647 = !DILocation(line: 366, column: 16, scope: !1644)
!1648 = !DILocation(line: 366, column: 27, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1650, file: !55, discriminator: 1)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !55, line: 366, column: 11)
!1651 = !DILocation(line: 366, column: 32, scope: !1649)
!1652 = !DILocation(line: 366, column: 29, scope: !1649)
!1653 = !DILocation(line: 366, column: 11, scope: !1649)
!1654 = !DILocation(line: 368, column: 20, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !55, line: 367, column: 13)
!1656 = !DILocation(line: 368, column: 17, scope: !1655)
!1657 = !DILocation(line: 370, column: 20, scope: !1655)
!1658 = !DILocation(line: 370, column: 19, scope: !1655)
!1659 = !DILocation(line: 370, column: 22, scope: !1655)
!1660 = !DILocation(line: 370, column: 17, scope: !1655)
!1661 = !DILocation(line: 370, column: 35, scope: !1655)
!1662 = !DILocation(line: 370, column: 39, scope: !1655)
!1663 = !DILocation(line: 370, column: 37, scope: !1655)
!1664 = !DILocation(line: 370, column: 29, scope: !1655)
!1665 = !DILocation(line: 370, column: 27, scope: !1655)
!1666 = !DILocation(line: 370, column: 50, scope: !1655)
!1667 = !DILocation(line: 370, column: 54, scope: !1655)
!1668 = !DILocation(line: 370, column: 52, scope: !1655)
!1669 = !DILocation(line: 370, column: 44, scope: !1655)
!1670 = !DILocation(line: 370, column: 42, scope: !1655)
!1671 = !DILocation(line: 370, column: 59, scope: !1655)
!1672 = !DILocation(line: 370, column: 57, scope: !1655)
!1673 = !DILocation(line: 370, column: 63, scope: !1655)
!1674 = !DILocation(line: 370, column: 61, scope: !1655)
!1675 = !DILocation(line: 371, column: 23, scope: !1655)
!1676 = !DILocation(line: 371, column: 27, scope: !1655)
!1677 = !DILocation(line: 371, column: 25, scope: !1655)
!1678 = !DILocation(line: 371, column: 29, scope: !1655)
!1679 = !DILocation(line: 371, column: 17, scope: !1655)
!1680 = !DILocation(line: 371, column: 42, scope: !1655)
!1681 = !DILocation(line: 371, column: 46, scope: !1655)
!1682 = !DILocation(line: 371, column: 44, scope: !1655)
!1683 = !DILocation(line: 371, column: 48, scope: !1655)
!1684 = !DILocation(line: 371, column: 36, scope: !1655)
!1685 = !DILocation(line: 371, column: 34, scope: !1655)
!1686 = !DILocation(line: 372, column: 23, scope: !1655)
!1687 = !DILocation(line: 372, column: 27, scope: !1655)
!1688 = !DILocation(line: 372, column: 25, scope: !1655)
!1689 = !DILocation(line: 372, column: 17, scope: !1655)
!1690 = !DILocation(line: 371, column: 53, scope: !1655)
!1691 = !DILocation(line: 372, column: 38, scope: !1655)
!1692 = !DILocation(line: 372, column: 42, scope: !1655)
!1693 = !DILocation(line: 372, column: 40, scope: !1655)
!1694 = !DILocation(line: 372, column: 32, scope: !1655)
!1695 = !DILocation(line: 372, column: 30, scope: !1655)
!1696 = !DILocation(line: 372, column: 47, scope: !1655)
!1697 = !DILocation(line: 372, column: 45, scope: !1655)
!1698 = !DILocation(line: 370, column: 67, scope: !1655)
!1699 = !DILocation(line: 369, column: 19, scope: !1655)
!1700 = !DILocation(line: 373, column: 33, scope: !1655)
!1701 = !DILocation(line: 373, column: 39, scope: !1655)
!1702 = !DILocation(line: 373, column: 37, scope: !1655)
!1703 = !DILocation(line: 373, column: 28, scope: !1655)
!1704 = !DILocation(line: 373, column: 15, scope: !1655)
!1705 = !DILocation(line: 373, column: 31, scope: !1655)
!1706 = !DILocation(line: 376, column: 17, scope: !1655)
!1707 = !DILocation(line: 376, column: 25, scope: !1655)
!1708 = !DILocation(line: 376, column: 29, scope: !1655)
!1709 = !DILocation(line: 376, column: 27, scope: !1655)
!1710 = !DILocation(line: 376, column: 46, scope: !1655)
!1711 = !DILocation(line: 376, column: 33, scope: !1655)
!1712 = !DILocation(line: 376, column: 31, scope: !1655)
!1713 = !DILocation(line: 377, column: 31, scope: !1655)
!1714 = !DILocation(line: 377, column: 35, scope: !1655)
!1715 = !DILocation(line: 377, column: 33, scope: !1655)
!1716 = !DILocation(line: 377, column: 25, scope: !1655)
!1717 = !DILocation(line: 377, column: 46, scope: !1655)
!1718 = !DILocation(line: 377, column: 50, scope: !1655)
!1719 = !DILocation(line: 377, column: 48, scope: !1655)
!1720 = !DILocation(line: 377, column: 40, scope: !1655)
!1721 = !DILocation(line: 377, column: 38, scope: !1655)
!1722 = !DILocation(line: 377, column: 68, scope: !1655)
!1723 = !DILocation(line: 377, column: 72, scope: !1655)
!1724 = !DILocation(line: 377, column: 70, scope: !1655)
!1725 = !DILocation(line: 377, column: 55, scope: !1655)
!1726 = !DILocation(line: 377, column: 53, scope: !1655)
!1727 = !DILocation(line: 376, column: 49, scope: !1655)
!1728 = !DILocation(line: 376, column: 22, scope: !1655)
!1729 = !DILocation(line: 375, column: 34, scope: !1655)
!1730 = !DILocation(line: 375, column: 15, scope: !1655)
!1731 = !DILocation(line: 375, column: 37, scope: !1655)
!1732 = !DILocation(line: 384, column: 21, scope: !1655)
!1733 = !DILocation(line: 384, column: 19, scope: !1655)
!1734 = !DILocation(line: 385, column: 21, scope: !1655)
!1735 = !DILocation(line: 385, column: 19, scope: !1655)
!1736 = !DILocation(line: 386, column: 13, scope: !1655)
!1737 = !DILocation(line: 366, column: 38, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1650, file: !55, discriminator: 2)
!1739 = !DILocation(line: 366, column: 11, scope: !1738)
!1740 = distinct !{!1740, !1741}
!1741 = !DILocation(line: 366, column: 11, scope: !1570)
!1742 = !DILocation(line: 387, column: 9, scope: !1570)
!1743 = !DILocation(line: 321, column: 29, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1565, file: !55, discriminator: 2)
!1745 = !DILocation(line: 321, column: 7, scope: !1744)
!1746 = distinct !{!1746, !1747}
!1747 = !DILocation(line: 321, column: 7, scope: !1431)
!1748 = !DILocation(line: 391, column: 19, scope: !1431)
!1749 = !DILocation(line: 391, column: 16, scope: !1431)
!1750 = !DILocation(line: 392, column: 16, scope: !1431)
!1751 = !DILocation(line: 392, column: 18, scope: !1431)
!1752 = !DILocation(line: 392, column: 13, scope: !1431)
!1753 = !DILocation(line: 393, column: 14, scope: !1431)
!1754 = !DILocation(line: 393, column: 34, scope: !1431)
!1755 = !DILocation(line: 393, column: 32, scope: !1431)
!1756 = !DILocation(line: 393, column: 39, scope: !1431)
!1757 = !DILocation(line: 393, column: 24, scope: !1431)
!1758 = !DILocation(line: 393, column: 22, scope: !1431)
!1759 = !DILocation(line: 393, column: 56, scope: !1431)
!1760 = !DILocation(line: 393, column: 54, scope: !1431)
!1761 = !DILocation(line: 393, column: 46, scope: !1431)
!1762 = !DILocation(line: 393, column: 44, scope: !1431)
!1763 = !DILocation(line: 393, column: 11, scope: !1431)
!1764 = !DILocation(line: 394, column: 29, scope: !1431)
!1765 = !DILocation(line: 394, column: 35, scope: !1431)
!1766 = !DILocation(line: 394, column: 33, scope: !1431)
!1767 = !DILocation(line: 394, column: 20, scope: !1431)
!1768 = !DILocation(line: 394, column: 7, scope: !1431)
!1769 = !DILocation(line: 394, column: 27, scope: !1431)
!1770 = !DILocation(line: 396, column: 35, scope: !1431)
!1771 = !DILocation(line: 396, column: 42, scope: !1431)
!1772 = !DILocation(line: 396, column: 40, scope: !1431)
!1773 = !DILocation(line: 396, column: 62, scope: !1431)
!1774 = !DILocation(line: 396, column: 49, scope: !1431)
!1775 = !DILocation(line: 396, column: 47, scope: !1431)
!1776 = !DILocation(line: 396, column: 26, scope: !1431)
!1777 = !DILocation(line: 396, column: 7, scope: !1431)
!1778 = !DILocation(line: 396, column: 33, scope: !1431)
!1779 = !DILocation(line: 404, column: 7, scope: !1431)
!1780 = !DILocation(line: 406, column: 1, scope: !1378)
!1781 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_alt_array", scope: !55, file: !55, line: 74, type: !819, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!1782 = !DILocalVariable(name: "norm", arg: 1, scope: !1781, file: !55, line: 75, type: !59)
!1783 = !DILocation(line: 75, column: 26, scope: !1781)
!1784 = !DILocalVariable(name: "lmax", arg: 2, scope: !1781, file: !55, line: 75, type: !61)
!1785 = !DILocation(line: 75, column: 45, scope: !1781)
!1786 = !DILocalVariable(name: "x", arg: 3, scope: !1781, file: !55, line: 75, type: !65)
!1787 = !DILocation(line: 75, column: 64, scope: !1781)
!1788 = !DILocalVariable(name: "result_array", arg: 4, scope: !1781, file: !55, line: 76, type: !66)
!1789 = !DILocation(line: 76, column: 2, scope: !1781)
!1790 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1781, file: !55, line: 76, type: !66)
!1791 = !DILocalVariable(name: "s", scope: !1781, file: !55, line: 78, type: !58)
!1792 = !DILocation(line: 78, column: 7, scope: !1781)
!1793 = !DILocation(line: 78, column: 47, scope: !1781)
!1794 = !DILocation(line: 78, column: 53, scope: !1781)
!1795 = !DILocation(line: 78, column: 59, scope: !1781)
!1796 = !DILocation(line: 78, column: 67, scope: !1781)
!1797 = !DILocation(line: 78, column: 11, scope: !1781)
!1798 = !DILocation(line: 79, column: 10, scope: !1781)
!1799 = !DILocation(line: 79, column: 3, scope: !1781)
!1800 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv_alt_array_e", scope: !55, file: !55, line: 95, type: !840, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!1801 = !DILocalVariable(name: "norm", arg: 1, scope: !1800, file: !55, line: 96, type: !59)
!1802 = !DILocation(line: 96, column: 26, scope: !1800)
!1803 = !DILocalVariable(name: "lmax", arg: 2, scope: !1800, file: !55, line: 96, type: !61)
!1804 = !DILocation(line: 96, column: 45, scope: !1800)
!1805 = !DILocalVariable(name: "x", arg: 3, scope: !1800, file: !55, line: 96, type: !65)
!1806 = !DILocation(line: 96, column: 64, scope: !1800)
!1807 = !DILocalVariable(name: "csphase", arg: 4, scope: !1800, file: !55, line: 97, type: !65)
!1808 = !DILocation(line: 97, column: 15, scope: !1800)
!1809 = !DILocalVariable(name: "result_array", arg: 5, scope: !1800, file: !55, line: 97, type: !66)
!1810 = !DILocation(line: 97, column: 24, scope: !1800)
!1811 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !1800, file: !55, line: 97, type: !66)
!1812 = !DILocalVariable(name: "s", scope: !1800, file: !55, line: 99, type: !58)
!1813 = !DILocation(line: 99, column: 7, scope: !1800)
!1814 = !DILocalVariable(name: "nlm", scope: !1800, file: !55, line: 100, type: !61)
!1815 = !DILocation(line: 100, column: 16, scope: !1800)
!1816 = !DILocation(line: 100, column: 42, scope: !1800)
!1817 = !DILocation(line: 100, column: 22, scope: !1800)
!1818 = !DILocalVariable(name: "fac1", scope: !1800, file: !55, line: 111, type: !49)
!1819 = !DILocation(line: 111, column: 10, scope: !1800)
!1820 = !DILocalVariable(name: "fac2", scope: !1800, file: !55, line: 111, type: !49)
!1821 = !DILocation(line: 111, column: 22, scope: !1800)
!1822 = !DILocation(line: 113, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1800, file: !55, line: 113, column: 7)
!1824 = !DILocation(line: 113, column: 12, scope: !1823)
!1825 = !DILocation(line: 113, column: 7, scope: !1800)
!1826 = !DILocation(line: 116, column: 43, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !55, line: 114, column: 5)
!1828 = !DILocation(line: 116, column: 49, scope: !1827)
!1829 = !DILocation(line: 116, column: 52, scope: !1827)
!1830 = !DILocation(line: 116, column: 61, scope: !1827)
!1831 = !DILocation(line: 116, column: 11, scope: !1827)
!1832 = !DILocation(line: 116, column: 9, scope: !1827)
!1833 = !DILocation(line: 117, column: 5, scope: !1827)
!1834 = !DILocation(line: 121, column: 46, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1823, file: !55, line: 119, column: 5)
!1836 = !DILocation(line: 121, column: 52, scope: !1835)
!1837 = !DILocation(line: 121, column: 55, scope: !1835)
!1838 = !DILocation(line: 121, column: 64, scope: !1835)
!1839 = !DILocation(line: 121, column: 11, scope: !1835)
!1840 = !DILocation(line: 121, column: 9, scope: !1835)
!1841 = !DILocation(line: 141, column: 7, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1800, file: !55, line: 141, column: 7)
!1843 = !DILocation(line: 141, column: 12, scope: !1842)
!1844 = !DILocation(line: 141, column: 39, scope: !1842)
!1845 = !DILocation(line: 141, column: 42, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1842, file: !55, discriminator: 1)
!1847 = !DILocation(line: 141, column: 47, scope: !1846)
!1848 = !DILocation(line: 141, column: 7, scope: !1846)
!1849 = !DILocation(line: 143, column: 14, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1842, file: !55, line: 142, column: 5)
!1851 = !DILocation(line: 143, column: 7, scope: !1850)
!1852 = !DILocation(line: 145, column: 12, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1842, file: !55, line: 145, column: 12)
!1854 = !DILocation(line: 145, column: 17, scope: !1853)
!1855 = !DILocation(line: 145, column: 12, scope: !1842)
!1856 = !DILocation(line: 147, column: 20, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !55, line: 146, column: 5)
!1858 = !DILocation(line: 147, column: 18, scope: !1857)
!1859 = !DILocation(line: 147, column: 12, scope: !1857)
!1860 = !DILocation(line: 148, column: 20, scope: !1857)
!1861 = !DILocation(line: 148, column: 18, scope: !1857)
!1862 = !DILocation(line: 148, column: 12, scope: !1857)
!1863 = !DILocation(line: 149, column: 5, scope: !1857)
!1864 = !DILocation(line: 150, column: 12, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1853, file: !55, line: 150, column: 12)
!1866 = !DILocation(line: 150, column: 17, scope: !1865)
!1867 = !DILocation(line: 150, column: 12, scope: !1853)
!1868 = !DILocation(line: 152, column: 20, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !55, line: 151, column: 5)
!1870 = !DILocation(line: 152, column: 18, scope: !1869)
!1871 = !DILocation(line: 152, column: 12, scope: !1869)
!1872 = !DILocation(line: 153, column: 20, scope: !1869)
!1873 = !DILocation(line: 153, column: 18, scope: !1869)
!1874 = !DILocation(line: 153, column: 12, scope: !1869)
!1875 = !DILocation(line: 154, column: 5, scope: !1869)
!1876 = !DILocalVariable(name: "l", scope: !1877, file: !55, line: 162, type: !62)
!1877 = distinct !DILexicalBlock(scope: !1800, file: !55, line: 161, column: 3)
!1878 = !DILocation(line: 162, column: 12, scope: !1877)
!1879 = !DILocalVariable(name: "m", scope: !1877, file: !55, line: 162, type: !62)
!1880 = !DILocation(line: 162, column: 15, scope: !1877)
!1881 = !DILocalVariable(name: "twoellp1", scope: !1877, file: !55, line: 163, type: !62)
!1882 = !DILocation(line: 163, column: 12, scope: !1877)
!1883 = !DILocalVariable(name: "sqrts", scope: !1877, file: !55, line: 164, type: !66)
!1884 = !DILocation(line: 164, column: 13, scope: !1877)
!1885 = !DILocation(line: 164, column: 36, scope: !1877)
!1886 = !DILocation(line: 164, column: 23, scope: !1877)
!1887 = !DILocation(line: 166, column: 12, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1877, file: !55, line: 166, column: 5)
!1889 = !DILocation(line: 166, column: 10, scope: !1888)
!1890 = !DILocation(line: 166, column: 17, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1892, file: !55, discriminator: 1)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !55, line: 166, column: 5)
!1893 = !DILocation(line: 166, column: 22, scope: !1891)
!1894 = !DILocation(line: 166, column: 19, scope: !1891)
!1895 = !DILocation(line: 166, column: 5, scope: !1891)
!1896 = !DILocation(line: 169, column: 17, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !55, line: 167, column: 7)
!1898 = !DILocation(line: 169, column: 11, scope: !1897)
!1899 = !DILocation(line: 169, column: 29, scope: !1897)
!1900 = !DILocation(line: 169, column: 27, scope: !1897)
!1901 = !DILocation(line: 168, column: 50, scope: !1897)
!1902 = !DILocation(line: 168, column: 22, scope: !1897)
!1903 = !DILocation(line: 168, column: 9, scope: !1897)
!1904 = !DILocation(line: 168, column: 57, scope: !1897)
!1905 = !DILocation(line: 172, column: 17, scope: !1897)
!1906 = !DILocation(line: 172, column: 11, scope: !1897)
!1907 = !DILocation(line: 172, column: 29, scope: !1897)
!1908 = !DILocation(line: 172, column: 27, scope: !1897)
!1909 = !DILocation(line: 171, column: 56, scope: !1897)
!1910 = !DILocation(line: 171, column: 28, scope: !1897)
!1911 = !DILocation(line: 171, column: 9, scope: !1897)
!1912 = !DILocation(line: 171, column: 63, scope: !1897)
!1913 = !DILocation(line: 179, column: 16, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1897, file: !55, line: 179, column: 9)
!1915 = !DILocation(line: 179, column: 14, scope: !1914)
!1916 = !DILocation(line: 179, column: 21, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1918, file: !55, discriminator: 1)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !55, line: 179, column: 9)
!1919 = !DILocation(line: 179, column: 26, scope: !1917)
!1920 = !DILocation(line: 179, column: 23, scope: !1917)
!1921 = !DILocation(line: 179, column: 9, scope: !1917)
!1922 = !DILocation(line: 182, column: 21, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1918, file: !55, line: 180, column: 11)
!1924 = !DILocation(line: 182, column: 15, scope: !1923)
!1925 = !DILocation(line: 182, column: 33, scope: !1923)
!1926 = !DILocation(line: 182, column: 31, scope: !1923)
!1927 = !DILocation(line: 181, column: 54, scope: !1923)
!1928 = !DILocation(line: 181, column: 57, scope: !1923)
!1929 = !DILocation(line: 181, column: 26, scope: !1923)
!1930 = !DILocation(line: 181, column: 13, scope: !1923)
!1931 = !DILocation(line: 181, column: 61, scope: !1923)
!1932 = !DILocation(line: 185, column: 21, scope: !1923)
!1933 = !DILocation(line: 185, column: 15, scope: !1923)
!1934 = !DILocation(line: 185, column: 33, scope: !1923)
!1935 = !DILocation(line: 185, column: 31, scope: !1923)
!1936 = !DILocation(line: 184, column: 60, scope: !1923)
!1937 = !DILocation(line: 184, column: 63, scope: !1923)
!1938 = !DILocation(line: 184, column: 32, scope: !1923)
!1939 = !DILocation(line: 184, column: 13, scope: !1923)
!1940 = !DILocation(line: 184, column: 67, scope: !1923)
!1941 = !DILocation(line: 191, column: 11, scope: !1923)
!1942 = !DILocation(line: 179, column: 29, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1918, file: !55, discriminator: 2)
!1944 = !DILocation(line: 179, column: 9, scope: !1943)
!1945 = distinct !{!1945, !1946}
!1946 = !DILocation(line: 179, column: 9, scope: !1897)
!1947 = !DILocation(line: 193, column: 18, scope: !1897)
!1948 = !DILocation(line: 194, column: 7, scope: !1897)
!1949 = !DILocation(line: 166, column: 28, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1892, file: !55, discriminator: 2)
!1951 = !DILocation(line: 166, column: 5, scope: !1950)
!1952 = distinct !{!1952, !1953}
!1953 = !DILocation(line: 166, column: 5, scope: !1877)
!1954 = !DILocation(line: 197, column: 10, scope: !1800)
!1955 = !DILocation(line: 197, column: 3, scope: !1800)
!1956 = !DILocation(line: 198, column: 1, scope: !1800)
!1957 = distinct !DISubprogram(name: "legendre_deriv_alt_array_none_e", scope: !55, file: !55, line: 425, type: !1034, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!1958 = !DILocalVariable(name: "lmax", arg: 1, scope: !1957, file: !55, line: 426, type: !61)
!1959 = !DILocation(line: 426, column: 15, scope: !1957)
!1960 = !DILocalVariable(name: "x", arg: 2, scope: !1957, file: !55, line: 426, type: !65)
!1961 = !DILocation(line: 426, column: 34, scope: !1957)
!1962 = !DILocalVariable(name: "csphase", arg: 3, scope: !1957, file: !55, line: 426, type: !65)
!1963 = !DILocation(line: 426, column: 50, scope: !1957)
!1964 = !DILocalVariable(name: "result_array", arg: 4, scope: !1957, file: !55, line: 426, type: !66)
!1965 = !DILocation(line: 426, column: 59, scope: !1957)
!1966 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !1957, file: !55, line: 426, type: !66)
!1967 = !DILocation(line: 428, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1957, file: !55, line: 428, column: 7)
!1969 = !DILocation(line: 428, column: 9, scope: !1968)
!1970 = !DILocation(line: 428, column: 15, scope: !1968)
!1971 = !DILocation(line: 428, column: 18, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1968, file: !55, discriminator: 1)
!1973 = !DILocation(line: 428, column: 20, scope: !1972)
!1974 = !DILocation(line: 428, column: 7, scope: !1972)
!1975 = !DILocation(line: 430, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1968, file: !55, line: 429, column: 5)
!1977 = distinct !{!1977, !1975}
!1978 = !DILocation(line: 430, column: 7, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1980, file: !55, discriminator: 1)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !55, line: 430, column: 7)
!1981 = !DILocation(line: 431, column: 5, scope: !1976)
!1982 = !DILocation(line: 433, column: 17, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1968, file: !55, line: 433, column: 12)
!1984 = !DILocation(line: 433, column: 12, scope: !1983)
!1985 = !DILocation(line: 433, column: 20, scope: !1983)
!1986 = !DILocation(line: 433, column: 12, scope: !1968)
!1987 = !DILocation(line: 435, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !55, line: 434, column: 5)
!1989 = distinct !{!1989, !1987}
!1990 = !DILocation(line: 435, column: 7, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1992, file: !55, discriminator: 1)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !55, line: 435, column: 7)
!1993 = !DILocation(line: 436, column: 5, scope: !1988)
!1994 = !DILocation(line: 438, column: 12, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1983, file: !55, line: 438, column: 12)
!1996 = !DILocation(line: 438, column: 20, scope: !1995)
!1997 = !DILocation(line: 438, column: 27, scope: !1995)
!1998 = !DILocation(line: 438, column: 30, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1995, file: !55, discriminator: 1)
!2000 = !DILocation(line: 438, column: 38, scope: !1999)
!2001 = !DILocation(line: 438, column: 12, scope: !1999)
!2002 = !DILocation(line: 440, column: 7, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1995, file: !55, line: 439, column: 5)
!2004 = distinct !{!2004, !2002}
!2005 = !DILocation(line: 440, column: 7, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2007, file: !55, discriminator: 1)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !55, line: 440, column: 7)
!2008 = !DILocation(line: 441, column: 5, scope: !2003)
!2009 = !DILocalVariable(name: "u", scope: !2010, file: !55, line: 444, type: !65)
!2010 = distinct !DILexicalBlock(scope: !1995, file: !55, line: 443, column: 5)
!2011 = !DILocation(line: 444, column: 20, scope: !2010)
!2012 = !DILocation(line: 444, column: 36, scope: !2010)
!2013 = !DILocation(line: 444, column: 34, scope: !2010)
!2014 = !DILocation(line: 444, column: 48, scope: !2010)
!2015 = !DILocation(line: 444, column: 46, scope: !2010)
!2016 = !DILocation(line: 444, column: 39, scope: !2010)
!2017 = !DILocation(line: 444, column: 24, scope: !2010)
!2018 = !DILocalVariable(name: "uinv", scope: !2010, file: !55, line: 446, type: !65)
!2019 = !DILocation(line: 446, column: 20, scope: !2010)
!2020 = !DILocation(line: 446, column: 33, scope: !2010)
!2021 = !DILocation(line: 446, column: 31, scope: !2010)
!2022 = !DILocalVariable(name: "xbyu", scope: !2010, file: !55, line: 452, type: !65)
!2023 = !DILocation(line: 452, column: 20, scope: !2010)
!2024 = !DILocation(line: 452, column: 27, scope: !2010)
!2025 = !DILocation(line: 452, column: 31, scope: !2010)
!2026 = !DILocation(line: 452, column: 29, scope: !2010)
!2027 = !DILocalVariable(name: "l", scope: !2010, file: !55, line: 454, type: !62)
!2028 = !DILocation(line: 454, column: 14, scope: !2010)
!2029 = !DILocalVariable(name: "m", scope: !2010, file: !55, line: 454, type: !62)
!2030 = !DILocation(line: 454, column: 17, scope: !2010)
!2031 = !DILocalVariable(name: "k", scope: !2010, file: !55, line: 455, type: !62)
!2032 = !DILocation(line: 455, column: 14, scope: !2010)
!2033 = !DILocalVariable(name: "idxmm", scope: !2010, file: !55, line: 455, type: !62)
!2034 = !DILocation(line: 455, column: 17, scope: !2010)
!2035 = !DILocalVariable(name: "plm", scope: !2010, file: !55, line: 456, type: !49)
!2036 = !DILocation(line: 456, column: 14, scope: !2010)
!2037 = !DILocalVariable(name: "pmm", scope: !2010, file: !55, line: 456, type: !49)
!2038 = !DILocation(line: 456, column: 19, scope: !2010)
!2039 = !DILocalVariable(name: "pm1", scope: !2010, file: !55, line: 457, type: !49)
!2040 = !DILocation(line: 457, column: 14, scope: !2010)
!2041 = !DILocalVariable(name: "pm2", scope: !2010, file: !55, line: 458, type: !49)
!2042 = !DILocation(line: 458, column: 14, scope: !2010)
!2043 = !DILocalVariable(name: "twomm1", scope: !2010, file: !55, line: 459, type: !49)
!2044 = !DILocation(line: 459, column: 14, scope: !2010)
!2045 = !DILocation(line: 463, column: 11, scope: !2010)
!2046 = !DILocation(line: 464, column: 13, scope: !2010)
!2047 = !DILocation(line: 464, column: 11, scope: !2010)
!2048 = !DILocation(line: 466, column: 25, scope: !2010)
!2049 = !DILocation(line: 466, column: 7, scope: !2010)
!2050 = !DILocation(line: 466, column: 23, scope: !2010)
!2051 = !DILocation(line: 468, column: 7, scope: !2010)
!2052 = !DILocation(line: 468, column: 29, scope: !2010)
!2053 = !DILocation(line: 474, column: 11, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2010, file: !55, line: 474, column: 11)
!2055 = !DILocation(line: 474, column: 16, scope: !2054)
!2056 = !DILocation(line: 474, column: 11, scope: !2010)
!2057 = !DILocation(line: 475, column: 9, scope: !2054)
!2058 = !DILocation(line: 477, column: 25, scope: !2010)
!2059 = !DILocation(line: 477, column: 7, scope: !2010)
!2060 = !DILocation(line: 477, column: 23, scope: !2010)
!2061 = !DILocation(line: 479, column: 32, scope: !2010)
!2062 = !DILocation(line: 479, column: 31, scope: !2010)
!2063 = !DILocation(line: 479, column: 7, scope: !2010)
!2064 = !DILocation(line: 479, column: 29, scope: !2010)
!2065 = !DILocation(line: 487, column: 9, scope: !2010)
!2066 = !DILocation(line: 488, column: 14, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2010, file: !55, line: 488, column: 7)
!2068 = !DILocation(line: 488, column: 12, scope: !2067)
!2069 = !DILocation(line: 488, column: 19, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2071, file: !55, discriminator: 1)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !55, line: 488, column: 7)
!2072 = !DILocation(line: 488, column: 24, scope: !2070)
!2073 = !DILocation(line: 488, column: 21, scope: !2070)
!2074 = !DILocation(line: 488, column: 7, scope: !2070)
!2075 = !DILocation(line: 490, column: 16, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !55, line: 489, column: 9)
!2077 = !DILocation(line: 490, column: 13, scope: !2076)
!2078 = !DILocation(line: 491, column: 21, scope: !2076)
!2079 = !DILocation(line: 491, column: 20, scope: !2076)
!2080 = !DILocation(line: 491, column: 23, scope: !2076)
!2081 = !DILocation(line: 491, column: 18, scope: !2076)
!2082 = !DILocation(line: 491, column: 30, scope: !2076)
!2083 = !DILocation(line: 491, column: 28, scope: !2076)
!2084 = !DILocation(line: 491, column: 34, scope: !2076)
!2085 = !DILocation(line: 491, column: 32, scope: !2076)
!2086 = !DILocation(line: 491, column: 41, scope: !2076)
!2087 = !DILocation(line: 491, column: 43, scope: !2076)
!2088 = !DILocation(line: 491, column: 40, scope: !2076)
!2089 = !DILocation(line: 491, column: 50, scope: !2076)
!2090 = !DILocation(line: 491, column: 48, scope: !2076)
!2091 = !DILocation(line: 491, column: 38, scope: !2076)
!2092 = !DILocation(line: 491, column: 66, scope: !2076)
!2093 = !DILocation(line: 491, column: 57, scope: !2076)
!2094 = !DILocation(line: 491, column: 55, scope: !2076)
!2095 = !DILocation(line: 491, column: 15, scope: !2076)
!2096 = !DILocation(line: 492, column: 29, scope: !2076)
!2097 = !DILocation(line: 492, column: 24, scope: !2076)
!2098 = !DILocation(line: 492, column: 11, scope: !2076)
!2099 = !DILocation(line: 492, column: 27, scope: !2076)
!2100 = !DILocation(line: 494, column: 44, scope: !2076)
!2101 = !DILocation(line: 494, column: 36, scope: !2076)
!2102 = !DILocation(line: 494, column: 35, scope: !2076)
!2103 = !DILocation(line: 494, column: 49, scope: !2076)
!2104 = !DILocation(line: 494, column: 55, scope: !2076)
!2105 = !DILocation(line: 494, column: 59, scope: !2076)
!2106 = !DILocation(line: 494, column: 57, scope: !2076)
!2107 = !DILocation(line: 494, column: 53, scope: !2076)
!2108 = !DILocation(line: 494, column: 46, scope: !2076)
!2109 = !DILocation(line: 494, column: 66, scope: !2076)
!2110 = !DILocation(line: 494, column: 64, scope: !2076)
!2111 = !DILocation(line: 494, column: 30, scope: !2076)
!2112 = !DILocation(line: 494, column: 11, scope: !2076)
!2113 = !DILocation(line: 494, column: 33, scope: !2076)
!2114 = !DILocation(line: 500, column: 17, scope: !2076)
!2115 = !DILocation(line: 500, column: 15, scope: !2076)
!2116 = !DILocation(line: 501, column: 17, scope: !2076)
!2117 = !DILocation(line: 501, column: 15, scope: !2076)
!2118 = !DILocation(line: 502, column: 9, scope: !2076)
!2119 = !DILocation(line: 488, column: 30, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2071, file: !55, discriminator: 2)
!2121 = !DILocation(line: 488, column: 7, scope: !2120)
!2122 = distinct !{!2122, !2123}
!2123 = !DILocation(line: 488, column: 7, scope: !2010)
!2124 = !DILocation(line: 506, column: 11, scope: !2010)
!2125 = !DILocation(line: 507, column: 14, scope: !2010)
!2126 = !DILocation(line: 509, column: 13, scope: !2010)
!2127 = !DILocation(line: 511, column: 14, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2010, file: !55, line: 511, column: 7)
!2129 = !DILocation(line: 511, column: 12, scope: !2128)
!2130 = !DILocation(line: 511, column: 19, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2132, file: !55, discriminator: 1)
!2132 = distinct !DILexicalBlock(scope: !2128, file: !55, line: 511, column: 7)
!2133 = !DILocation(line: 511, column: 24, scope: !2131)
!2134 = !DILocation(line: 511, column: 29, scope: !2131)
!2135 = !DILocation(line: 511, column: 21, scope: !2131)
!2136 = !DILocation(line: 511, column: 7, scope: !2131)
!2137 = !DILocation(line: 520, column: 20, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2132, file: !55, line: 512, column: 9)
!2139 = !DILocation(line: 520, column: 22, scope: !2138)
!2140 = !DILocation(line: 520, column: 17, scope: !2138)
!2141 = !DILocation(line: 521, column: 18, scope: !2138)
!2142 = !DILocation(line: 522, column: 18, scope: !2138)
!2143 = !DILocation(line: 522, column: 28, scope: !2138)
!2144 = !DILocation(line: 522, column: 26, scope: !2138)
!2145 = !DILocation(line: 522, column: 32, scope: !2138)
!2146 = !DILocation(line: 522, column: 30, scope: !2138)
!2147 = !DILocation(line: 522, column: 15, scope: !2138)
!2148 = !DILocation(line: 523, column: 33, scope: !2138)
!2149 = !DILocation(line: 523, column: 24, scope: !2138)
!2150 = !DILocation(line: 523, column: 11, scope: !2138)
!2151 = !DILocation(line: 523, column: 31, scope: !2138)
!2152 = !DILocation(line: 525, column: 39, scope: !2138)
!2153 = !DILocation(line: 525, column: 43, scope: !2138)
!2154 = !DILocation(line: 525, column: 41, scope: !2138)
!2155 = !DILocation(line: 525, column: 50, scope: !2138)
!2156 = !DILocation(line: 525, column: 48, scope: !2138)
!2157 = !DILocation(line: 525, column: 30, scope: !2138)
!2158 = !DILocation(line: 525, column: 11, scope: !2138)
!2159 = !DILocation(line: 525, column: 37, scope: !2138)
!2160 = !DILocation(line: 532, column: 17, scope: !2138)
!2161 = !DILocation(line: 532, column: 15, scope: !2138)
!2162 = !DILocation(line: 541, column: 15, scope: !2138)
!2163 = !DILocation(line: 541, column: 23, scope: !2138)
!2164 = !DILocation(line: 541, column: 21, scope: !2138)
!2165 = !DILocation(line: 541, column: 25, scope: !2138)
!2166 = !DILocation(line: 541, column: 13, scope: !2138)
!2167 = !DILocation(line: 542, column: 17, scope: !2138)
!2168 = !DILocation(line: 542, column: 21, scope: !2138)
!2169 = !DILocation(line: 542, column: 19, scope: !2138)
!2170 = !DILocation(line: 542, column: 30, scope: !2138)
!2171 = !DILocation(line: 542, column: 29, scope: !2138)
!2172 = !DILocation(line: 542, column: 32, scope: !2138)
!2173 = !DILocation(line: 542, column: 27, scope: !2138)
!2174 = !DILocation(line: 542, column: 25, scope: !2138)
!2175 = !DILocation(line: 542, column: 15, scope: !2138)
!2176 = !DILocation(line: 543, column: 29, scope: !2138)
!2177 = !DILocation(line: 543, column: 24, scope: !2138)
!2178 = !DILocation(line: 543, column: 11, scope: !2138)
!2179 = !DILocation(line: 543, column: 27, scope: !2138)
!2180 = !DILocation(line: 545, column: 36, scope: !2138)
!2181 = !DILocation(line: 545, column: 35, scope: !2138)
!2182 = !DILocation(line: 545, column: 47, scope: !2138)
!2183 = !DILocation(line: 545, column: 46, scope: !2138)
!2184 = !DILocation(line: 545, column: 49, scope: !2138)
!2185 = !DILocation(line: 545, column: 44, scope: !2138)
!2186 = !DILocation(line: 545, column: 56, scope: !2138)
!2187 = !DILocation(line: 545, column: 54, scope: !2138)
!2188 = !DILocation(line: 545, column: 63, scope: !2138)
!2189 = !DILocation(line: 545, column: 65, scope: !2138)
!2190 = !DILocation(line: 545, column: 62, scope: !2138)
!2191 = !DILocation(line: 545, column: 72, scope: !2138)
!2192 = !DILocation(line: 545, column: 70, scope: !2138)
!2193 = !DILocation(line: 545, column: 76, scope: !2138)
!2194 = !DILocation(line: 545, column: 74, scope: !2138)
!2195 = !DILocation(line: 545, column: 60, scope: !2138)
!2196 = !DILocation(line: 545, column: 41, scope: !2138)
!2197 = !DILocation(line: 545, column: 30, scope: !2138)
!2198 = !DILocation(line: 545, column: 11, scope: !2138)
!2199 = !DILocation(line: 545, column: 33, scope: !2138)
!2200 = !DILocation(line: 554, column: 20, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2138, file: !55, line: 554, column: 11)
!2202 = !DILocation(line: 554, column: 22, scope: !2201)
!2203 = !DILocation(line: 554, column: 18, scope: !2201)
!2204 = !DILocation(line: 554, column: 16, scope: !2201)
!2205 = !DILocation(line: 554, column: 27, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2207, file: !55, discriminator: 1)
!2207 = distinct !DILexicalBlock(scope: !2201, file: !55, line: 554, column: 11)
!2208 = !DILocation(line: 554, column: 32, scope: !2206)
!2209 = !DILocation(line: 554, column: 29, scope: !2206)
!2210 = !DILocation(line: 554, column: 11, scope: !2206)
!2211 = !DILocation(line: 556, column: 20, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2207, file: !55, line: 555, column: 13)
!2213 = !DILocation(line: 556, column: 17, scope: !2212)
!2214 = !DILocation(line: 557, column: 25, scope: !2212)
!2215 = !DILocation(line: 557, column: 24, scope: !2212)
!2216 = !DILocation(line: 557, column: 27, scope: !2212)
!2217 = !DILocation(line: 557, column: 22, scope: !2212)
!2218 = !DILocation(line: 557, column: 34, scope: !2212)
!2219 = !DILocation(line: 557, column: 32, scope: !2212)
!2220 = !DILocation(line: 557, column: 38, scope: !2212)
!2221 = !DILocation(line: 557, column: 36, scope: !2212)
!2222 = !DILocation(line: 557, column: 45, scope: !2212)
!2223 = !DILocation(line: 557, column: 49, scope: !2212)
!2224 = !DILocation(line: 557, column: 47, scope: !2212)
!2225 = !DILocation(line: 557, column: 51, scope: !2212)
!2226 = !DILocation(line: 557, column: 44, scope: !2212)
!2227 = !DILocation(line: 557, column: 58, scope: !2212)
!2228 = !DILocation(line: 557, column: 56, scope: !2212)
!2229 = !DILocation(line: 557, column: 42, scope: !2212)
!2230 = !DILocation(line: 558, column: 31, scope: !2212)
!2231 = !DILocation(line: 558, column: 35, scope: !2212)
!2232 = !DILocation(line: 558, column: 33, scope: !2212)
!2233 = !DILocation(line: 558, column: 21, scope: !2212)
!2234 = !DILocation(line: 557, column: 63, scope: !2212)
!2235 = !DILocation(line: 557, column: 19, scope: !2212)
!2236 = !DILocation(line: 559, column: 33, scope: !2212)
!2237 = !DILocation(line: 559, column: 28, scope: !2212)
!2238 = !DILocation(line: 559, column: 15, scope: !2212)
!2239 = !DILocation(line: 559, column: 31, scope: !2212)
!2240 = !DILocation(line: 561, column: 40, scope: !2212)
!2241 = !DILocation(line: 561, column: 39, scope: !2212)
!2242 = !DILocation(line: 561, column: 49, scope: !2212)
!2243 = !DILocation(line: 561, column: 53, scope: !2212)
!2244 = !DILocation(line: 561, column: 51, scope: !2212)
!2245 = !DILocation(line: 561, column: 48, scope: !2212)
!2246 = !DILocation(line: 561, column: 58, scope: !2212)
!2247 = !DILocation(line: 561, column: 56, scope: !2212)
!2248 = !DILocation(line: 561, column: 64, scope: !2212)
!2249 = !DILocation(line: 561, column: 68, scope: !2212)
!2250 = !DILocation(line: 561, column: 66, scope: !2212)
!2251 = !DILocation(line: 561, column: 72, scope: !2212)
!2252 = !DILocation(line: 561, column: 70, scope: !2212)
!2253 = !DILocation(line: 561, column: 62, scope: !2212)
!2254 = !DILocation(line: 561, column: 45, scope: !2212)
!2255 = !DILocation(line: 561, column: 34, scope: !2212)
!2256 = !DILocation(line: 561, column: 15, scope: !2212)
!2257 = !DILocation(line: 561, column: 37, scope: !2212)
!2258 = !DILocation(line: 568, column: 21, scope: !2212)
!2259 = !DILocation(line: 568, column: 19, scope: !2212)
!2260 = !DILocation(line: 569, column: 21, scope: !2212)
!2261 = !DILocation(line: 569, column: 19, scope: !2212)
!2262 = !DILocation(line: 570, column: 13, scope: !2212)
!2263 = !DILocation(line: 554, column: 38, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2207, file: !55, discriminator: 2)
!2265 = !DILocation(line: 554, column: 11, scope: !2264)
!2266 = distinct !{!2266, !2267}
!2267 = !DILocation(line: 554, column: 11, scope: !2138)
!2268 = !DILocation(line: 571, column: 9, scope: !2138)
!2269 = !DILocation(line: 511, column: 34, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2132, file: !55, discriminator: 2)
!2271 = !DILocation(line: 511, column: 7, scope: !2270)
!2272 = distinct !{!2272, !2273}
!2273 = !DILocation(line: 511, column: 7, scope: !2010)
!2274 = !DILocation(line: 575, column: 16, scope: !2010)
!2275 = !DILocation(line: 575, column: 18, scope: !2010)
!2276 = !DILocation(line: 575, column: 13, scope: !2010)
!2277 = !DILocation(line: 576, column: 14, scope: !2010)
!2278 = !DILocation(line: 577, column: 14, scope: !2010)
!2279 = !DILocation(line: 577, column: 24, scope: !2010)
!2280 = !DILocation(line: 577, column: 22, scope: !2010)
!2281 = !DILocation(line: 577, column: 28, scope: !2010)
!2282 = !DILocation(line: 577, column: 26, scope: !2010)
!2283 = !DILocation(line: 577, column: 11, scope: !2010)
!2284 = !DILocation(line: 578, column: 29, scope: !2010)
!2285 = !DILocation(line: 578, column: 20, scope: !2010)
!2286 = !DILocation(line: 578, column: 7, scope: !2010)
!2287 = !DILocation(line: 578, column: 27, scope: !2010)
!2288 = !DILocation(line: 580, column: 35, scope: !2010)
!2289 = !DILocation(line: 580, column: 42, scope: !2010)
!2290 = !DILocation(line: 580, column: 40, scope: !2010)
!2291 = !DILocation(line: 580, column: 46, scope: !2010)
!2292 = !DILocation(line: 580, column: 44, scope: !2010)
!2293 = !DILocation(line: 580, column: 52, scope: !2010)
!2294 = !DILocation(line: 580, column: 50, scope: !2010)
!2295 = !DILocation(line: 580, column: 26, scope: !2010)
!2296 = !DILocation(line: 580, column: 7, scope: !2010)
!2297 = !DILocation(line: 580, column: 33, scope: !2010)
!2298 = !DILocation(line: 588, column: 7, scope: !2010)
!2299 = !DILocation(line: 590, column: 1, scope: !1957)
!2300 = distinct !DISubprogram(name: "legendre_deriv_alt_array_schmidt_e", scope: !55, file: !55, line: 217, type: !1034, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!2301 = !DILocalVariable(name: "lmax", arg: 1, scope: !2300, file: !55, line: 218, type: !61)
!2302 = !DILocation(line: 218, column: 15, scope: !2300)
!2303 = !DILocalVariable(name: "x", arg: 2, scope: !2300, file: !55, line: 218, type: !65)
!2304 = !DILocation(line: 218, column: 34, scope: !2300)
!2305 = !DILocalVariable(name: "csphase", arg: 3, scope: !2300, file: !55, line: 218, type: !65)
!2306 = !DILocation(line: 218, column: 50, scope: !2300)
!2307 = !DILocalVariable(name: "result_array", arg: 4, scope: !2300, file: !55, line: 218, type: !66)
!2308 = !DILocation(line: 218, column: 59, scope: !2300)
!2309 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !2300, file: !55, line: 218, type: !66)
!2310 = !DILocation(line: 220, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2300, file: !55, line: 220, column: 7)
!2312 = !DILocation(line: 220, column: 9, scope: !2311)
!2313 = !DILocation(line: 220, column: 15, scope: !2311)
!2314 = !DILocation(line: 220, column: 18, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2311, file: !55, discriminator: 1)
!2316 = !DILocation(line: 220, column: 20, scope: !2315)
!2317 = !DILocation(line: 220, column: 7, scope: !2315)
!2318 = !DILocation(line: 222, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2311, file: !55, line: 221, column: 5)
!2320 = distinct !{!2320, !2318}
!2321 = !DILocation(line: 222, column: 7, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2323, file: !55, discriminator: 1)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !55, line: 222, column: 7)
!2324 = !DILocation(line: 223, column: 5, scope: !2319)
!2325 = !DILocation(line: 225, column: 17, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2311, file: !55, line: 225, column: 12)
!2327 = !DILocation(line: 225, column: 12, scope: !2326)
!2328 = !DILocation(line: 225, column: 20, scope: !2326)
!2329 = !DILocation(line: 225, column: 12, scope: !2311)
!2330 = !DILocation(line: 227, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !55, line: 226, column: 5)
!2332 = distinct !{!2332, !2330}
!2333 = !DILocation(line: 227, column: 7, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2335, file: !55, discriminator: 1)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !55, line: 227, column: 7)
!2336 = !DILocation(line: 228, column: 5, scope: !2331)
!2337 = !DILocation(line: 230, column: 12, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2326, file: !55, line: 230, column: 12)
!2339 = !DILocation(line: 230, column: 20, scope: !2338)
!2340 = !DILocation(line: 230, column: 27, scope: !2338)
!2341 = !DILocation(line: 230, column: 30, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2338, file: !55, discriminator: 1)
!2343 = !DILocation(line: 230, column: 38, scope: !2342)
!2344 = !DILocation(line: 230, column: 12, scope: !2342)
!2345 = !DILocation(line: 232, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2338, file: !55, line: 231, column: 5)
!2347 = distinct !{!2347, !2345}
!2348 = !DILocation(line: 232, column: 7, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !2350, file: !55, discriminator: 1)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !55, line: 232, column: 7)
!2351 = !DILocation(line: 233, column: 5, scope: !2346)
!2352 = !DILocalVariable(name: "eps", scope: !2353, file: !55, line: 236, type: !65)
!2353 = distinct !DILexicalBlock(scope: !2338, file: !55, line: 235, column: 5)
!2354 = !DILocation(line: 236, column: 20, scope: !2353)
!2355 = !DILocalVariable(name: "u", scope: !2353, file: !55, line: 237, type: !65)
!2356 = !DILocation(line: 237, column: 20, scope: !2353)
!2357 = !DILocation(line: 237, column: 36, scope: !2353)
!2358 = !DILocation(line: 237, column: 34, scope: !2353)
!2359 = !DILocation(line: 237, column: 48, scope: !2353)
!2360 = !DILocation(line: 237, column: 46, scope: !2353)
!2361 = !DILocation(line: 237, column: 39, scope: !2353)
!2362 = !DILocation(line: 237, column: 24, scope: !2353)
!2363 = !DILocalVariable(name: "uinv", scope: !2353, file: !55, line: 239, type: !65)
!2364 = !DILocation(line: 239, column: 20, scope: !2353)
!2365 = !DILocation(line: 239, column: 33, scope: !2353)
!2366 = !DILocation(line: 239, column: 31, scope: !2353)
!2367 = !DILocalVariable(name: "xbyu", scope: !2353, file: !55, line: 245, type: !65)
!2368 = !DILocation(line: 245, column: 20, scope: !2353)
!2369 = !DILocation(line: 245, column: 27, scope: !2353)
!2370 = !DILocation(line: 245, column: 31, scope: !2353)
!2371 = !DILocation(line: 245, column: 29, scope: !2353)
!2372 = !DILocalVariable(name: "l", scope: !2353, file: !55, line: 247, type: !62)
!2373 = !DILocation(line: 247, column: 14, scope: !2353)
!2374 = !DILocalVariable(name: "m", scope: !2353, file: !55, line: 247, type: !62)
!2375 = !DILocation(line: 247, column: 17, scope: !2353)
!2376 = !DILocalVariable(name: "k", scope: !2353, file: !55, line: 248, type: !62)
!2377 = !DILocation(line: 248, column: 14, scope: !2353)
!2378 = !DILocalVariable(name: "idxmm", scope: !2353, file: !55, line: 248, type: !62)
!2379 = !DILocation(line: 248, column: 17, scope: !2353)
!2380 = !DILocalVariable(name: "plm", scope: !2353, file: !55, line: 249, type: !49)
!2381 = !DILocation(line: 249, column: 14, scope: !2353)
!2382 = !DILocalVariable(name: "pmm", scope: !2353, file: !55, line: 250, type: !49)
!2383 = !DILocation(line: 250, column: 14, scope: !2353)
!2384 = !DILocalVariable(name: "rescalem", scope: !2353, file: !55, line: 251, type: !49)
!2385 = !DILocation(line: 251, column: 14, scope: !2353)
!2386 = !DILocalVariable(name: "pm1", scope: !2353, file: !55, line: 252, type: !49)
!2387 = !DILocation(line: 252, column: 14, scope: !2353)
!2388 = !DILocalVariable(name: "pm2", scope: !2353, file: !55, line: 253, type: !49)
!2389 = !DILocation(line: 253, column: 14, scope: !2353)
!2390 = !DILocalVariable(name: "nlm", scope: !2353, file: !55, line: 254, type: !62)
!2391 = !DILocation(line: 254, column: 14, scope: !2353)
!2392 = !DILocation(line: 254, column: 40, scope: !2353)
!2393 = !DILocation(line: 254, column: 20, scope: !2353)
!2394 = !DILocalVariable(name: "sqrts", scope: !2353, file: !55, line: 255, type: !66)
!2395 = !DILocation(line: 255, column: 15, scope: !2353)
!2396 = !DILocation(line: 255, column: 38, scope: !2353)
!2397 = !DILocation(line: 255, column: 25, scope: !2353)
!2398 = !DILocation(line: 258, column: 22, scope: !2353)
!2399 = !DILocation(line: 258, column: 28, scope: !2353)
!2400 = !DILocation(line: 258, column: 7, scope: !2353)
!2401 = !DILocation(line: 261, column: 11, scope: !2353)
!2402 = !DILocation(line: 262, column: 13, scope: !2353)
!2403 = !DILocation(line: 262, column: 11, scope: !2353)
!2404 = !DILocation(line: 264, column: 25, scope: !2353)
!2405 = !DILocation(line: 264, column: 7, scope: !2353)
!2406 = !DILocation(line: 264, column: 23, scope: !2353)
!2407 = !DILocation(line: 266, column: 7, scope: !2353)
!2408 = !DILocation(line: 266, column: 29, scope: !2353)
!2409 = !DILocation(line: 272, column: 11, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2353, file: !55, line: 272, column: 11)
!2411 = !DILocation(line: 272, column: 16, scope: !2410)
!2412 = !DILocation(line: 272, column: 11, scope: !2353)
!2413 = !DILocation(line: 273, column: 9, scope: !2410)
!2414 = !DILocation(line: 275, column: 25, scope: !2353)
!2415 = !DILocation(line: 275, column: 7, scope: !2353)
!2416 = !DILocation(line: 275, column: 23, scope: !2353)
!2417 = !DILocation(line: 277, column: 32, scope: !2353)
!2418 = !DILocation(line: 277, column: 31, scope: !2353)
!2419 = !DILocation(line: 277, column: 7, scope: !2353)
!2420 = !DILocation(line: 277, column: 29, scope: !2353)
!2421 = !DILocation(line: 285, column: 9, scope: !2353)
!2422 = !DILocation(line: 286, column: 14, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2353, file: !55, line: 286, column: 7)
!2424 = !DILocation(line: 286, column: 12, scope: !2423)
!2425 = !DILocation(line: 286, column: 19, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2427, file: !55, discriminator: 1)
!2427 = distinct !DILexicalBlock(scope: !2423, file: !55, line: 286, column: 7)
!2428 = !DILocation(line: 286, column: 24, scope: !2426)
!2429 = !DILocation(line: 286, column: 21, scope: !2426)
!2430 = !DILocation(line: 286, column: 7, scope: !2426)
!2431 = !DILocalVariable(name: "linv", scope: !2432, file: !55, line: 288, type: !49)
!2432 = distinct !DILexicalBlock(scope: !2427, file: !55, line: 287, column: 9)
!2433 = !DILocation(line: 288, column: 18, scope: !2432)
!2434 = !DILocation(line: 288, column: 39, scope: !2432)
!2435 = !DILocation(line: 288, column: 31, scope: !2432)
!2436 = !DILocation(line: 288, column: 29, scope: !2432)
!2437 = !DILocation(line: 290, column: 16, scope: !2432)
!2438 = !DILocation(line: 290, column: 13, scope: !2432)
!2439 = !DILocation(line: 292, column: 24, scope: !2432)
!2440 = !DILocation(line: 292, column: 22, scope: !2432)
!2441 = !DILocation(line: 292, column: 32, scope: !2432)
!2442 = !DILocation(line: 292, column: 30, scope: !2432)
!2443 = !DILocation(line: 292, column: 36, scope: !2432)
!2444 = !DILocation(line: 292, column: 34, scope: !2432)
!2445 = !DILocation(line: 292, column: 49, scope: !2432)
!2446 = !DILocation(line: 292, column: 47, scope: !2432)
!2447 = !DILocation(line: 292, column: 57, scope: !2432)
!2448 = !DILocation(line: 292, column: 55, scope: !2432)
!2449 = !DILocation(line: 292, column: 40, scope: !2432)
!2450 = !DILocation(line: 292, column: 15, scope: !2432)
!2451 = !DILocation(line: 293, column: 29, scope: !2432)
!2452 = !DILocation(line: 293, column: 24, scope: !2432)
!2453 = !DILocation(line: 293, column: 11, scope: !2432)
!2454 = !DILocation(line: 293, column: 27, scope: !2432)
!2455 = !DILocation(line: 295, column: 35, scope: !2432)
!2456 = !DILocation(line: 295, column: 42, scope: !2432)
!2457 = !DILocation(line: 295, column: 40, scope: !2432)
!2458 = !DILocation(line: 295, column: 47, scope: !2432)
!2459 = !DILocation(line: 295, column: 51, scope: !2432)
!2460 = !DILocation(line: 295, column: 49, scope: !2432)
!2461 = !DILocation(line: 295, column: 57, scope: !2432)
!2462 = !DILocation(line: 295, column: 55, scope: !2432)
!2463 = !DILocation(line: 295, column: 44, scope: !2432)
!2464 = !DILocation(line: 295, column: 30, scope: !2432)
!2465 = !DILocation(line: 295, column: 11, scope: !2432)
!2466 = !DILocation(line: 295, column: 33, scope: !2432)
!2467 = !DILocation(line: 301, column: 17, scope: !2432)
!2468 = !DILocation(line: 301, column: 15, scope: !2432)
!2469 = !DILocation(line: 302, column: 17, scope: !2432)
!2470 = !DILocation(line: 302, column: 15, scope: !2432)
!2471 = !DILocation(line: 303, column: 9, scope: !2432)
!2472 = !DILocation(line: 286, column: 30, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2427, file: !55, discriminator: 2)
!2474 = !DILocation(line: 286, column: 7, scope: !2473)
!2475 = distinct !{!2475, !2476}
!2476 = !DILocation(line: 286, column: 7, scope: !2353)
!2477 = !DILocation(line: 316, column: 13, scope: !2353)
!2478 = !DILocation(line: 316, column: 23, scope: !2353)
!2479 = !DILocation(line: 316, column: 11, scope: !2353)
!2480 = !DILocation(line: 318, column: 16, scope: !2353)
!2481 = !DILocation(line: 319, column: 13, scope: !2353)
!2482 = !DILocation(line: 321, column: 14, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2353, file: !55, line: 321, column: 7)
!2484 = !DILocation(line: 321, column: 12, scope: !2483)
!2485 = !DILocation(line: 321, column: 19, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2487, file: !55, discriminator: 1)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !55, line: 321, column: 7)
!2488 = !DILocation(line: 321, column: 23, scope: !2486)
!2489 = !DILocation(line: 321, column: 21, scope: !2486)
!2490 = !DILocation(line: 321, column: 7, scope: !2486)
!2491 = !DILocation(line: 324, column: 23, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2487, file: !55, line: 322, column: 9)
!2493 = !DILocation(line: 324, column: 20, scope: !2492)
!2494 = !DILocation(line: 332, column: 20, scope: !2492)
!2495 = !DILocation(line: 332, column: 22, scope: !2492)
!2496 = !DILocation(line: 332, column: 17, scope: !2492)
!2497 = !DILocation(line: 333, column: 18, scope: !2492)
!2498 = !DILocation(line: 333, column: 38, scope: !2492)
!2499 = !DILocation(line: 333, column: 36, scope: !2492)
!2500 = !DILocation(line: 333, column: 40, scope: !2492)
!2501 = !DILocation(line: 333, column: 28, scope: !2492)
!2502 = !DILocation(line: 333, column: 26, scope: !2492)
!2503 = !DILocation(line: 333, column: 57, scope: !2492)
!2504 = !DILocation(line: 333, column: 55, scope: !2492)
!2505 = !DILocation(line: 333, column: 47, scope: !2492)
!2506 = !DILocation(line: 333, column: 45, scope: !2492)
!2507 = !DILocation(line: 333, column: 15, scope: !2492)
!2508 = !DILocation(line: 334, column: 33, scope: !2492)
!2509 = !DILocation(line: 334, column: 39, scope: !2492)
!2510 = !DILocation(line: 334, column: 37, scope: !2492)
!2511 = !DILocation(line: 334, column: 24, scope: !2492)
!2512 = !DILocation(line: 334, column: 11, scope: !2492)
!2513 = !DILocation(line: 334, column: 31, scope: !2492)
!2514 = !DILocation(line: 336, column: 39, scope: !2492)
!2515 = !DILocation(line: 336, column: 43, scope: !2492)
!2516 = !DILocation(line: 336, column: 41, scope: !2492)
!2517 = !DILocation(line: 336, column: 63, scope: !2492)
!2518 = !DILocation(line: 336, column: 50, scope: !2492)
!2519 = !DILocation(line: 336, column: 48, scope: !2492)
!2520 = !DILocation(line: 336, column: 30, scope: !2492)
!2521 = !DILocation(line: 336, column: 11, scope: !2492)
!2522 = !DILocation(line: 336, column: 37, scope: !2492)
!2523 = !DILocation(line: 343, column: 17, scope: !2492)
!2524 = !DILocation(line: 343, column: 15, scope: !2492)
!2525 = !DILocation(line: 351, column: 15, scope: !2492)
!2526 = !DILocation(line: 351, column: 23, scope: !2492)
!2527 = !DILocation(line: 351, column: 21, scope: !2492)
!2528 = !DILocation(line: 351, column: 25, scope: !2492)
!2529 = !DILocation(line: 351, column: 13, scope: !2492)
!2530 = !DILocation(line: 352, column: 17, scope: !2492)
!2531 = !DILocation(line: 352, column: 31, scope: !2492)
!2532 = !DILocation(line: 352, column: 29, scope: !2492)
!2533 = !DILocation(line: 352, column: 33, scope: !2492)
!2534 = !DILocation(line: 352, column: 21, scope: !2492)
!2535 = !DILocation(line: 352, column: 19, scope: !2492)
!2536 = !DILocation(line: 352, column: 40, scope: !2492)
!2537 = !DILocation(line: 352, column: 38, scope: !2492)
!2538 = !DILocation(line: 352, column: 15, scope: !2492)
!2539 = !DILocation(line: 353, column: 29, scope: !2492)
!2540 = !DILocation(line: 353, column: 35, scope: !2492)
!2541 = !DILocation(line: 353, column: 33, scope: !2492)
!2542 = !DILocation(line: 353, column: 24, scope: !2492)
!2543 = !DILocation(line: 353, column: 11, scope: !2492)
!2544 = !DILocation(line: 353, column: 27, scope: !2492)
!2545 = !DILocation(line: 356, column: 13, scope: !2492)
!2546 = !DILocation(line: 356, column: 22, scope: !2492)
!2547 = !DILocation(line: 356, column: 24, scope: !2492)
!2548 = !DILocation(line: 356, column: 33, scope: !2492)
!2549 = !DILocation(line: 356, column: 31, scope: !2492)
!2550 = !DILocation(line: 356, column: 50, scope: !2492)
!2551 = !DILocation(line: 356, column: 37, scope: !2492)
!2552 = !DILocation(line: 356, column: 35, scope: !2492)
!2553 = !DILocation(line: 357, column: 31, scope: !2492)
!2554 = !DILocation(line: 357, column: 29, scope: !2492)
!2555 = !DILocation(line: 357, column: 33, scope: !2492)
!2556 = !DILocation(line: 357, column: 21, scope: !2492)
!2557 = !DILocation(line: 357, column: 53, scope: !2492)
!2558 = !DILocation(line: 357, column: 40, scope: !2492)
!2559 = !DILocation(line: 357, column: 38, scope: !2492)
!2560 = !DILocation(line: 356, column: 53, scope: !2492)
!2561 = !DILocation(line: 356, column: 18, scope: !2492)
!2562 = !DILocation(line: 355, column: 30, scope: !2492)
!2563 = !DILocation(line: 355, column: 11, scope: !2492)
!2564 = !DILocation(line: 355, column: 33, scope: !2492)
!2565 = !DILocation(line: 366, column: 20, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2492, file: !55, line: 366, column: 11)
!2567 = !DILocation(line: 366, column: 22, scope: !2566)
!2568 = !DILocation(line: 366, column: 18, scope: !2566)
!2569 = !DILocation(line: 366, column: 16, scope: !2566)
!2570 = !DILocation(line: 366, column: 27, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2572, file: !55, discriminator: 1)
!2572 = distinct !DILexicalBlock(scope: !2566, file: !55, line: 366, column: 11)
!2573 = !DILocation(line: 366, column: 32, scope: !2571)
!2574 = !DILocation(line: 366, column: 29, scope: !2571)
!2575 = !DILocation(line: 366, column: 11, scope: !2571)
!2576 = !DILocation(line: 368, column: 20, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !55, line: 367, column: 13)
!2578 = !DILocation(line: 368, column: 17, scope: !2577)
!2579 = !DILocation(line: 370, column: 20, scope: !2577)
!2580 = !DILocation(line: 370, column: 19, scope: !2577)
!2581 = !DILocation(line: 370, column: 22, scope: !2577)
!2582 = !DILocation(line: 370, column: 17, scope: !2577)
!2583 = !DILocation(line: 370, column: 35, scope: !2577)
!2584 = !DILocation(line: 370, column: 39, scope: !2577)
!2585 = !DILocation(line: 370, column: 37, scope: !2577)
!2586 = !DILocation(line: 370, column: 29, scope: !2577)
!2587 = !DILocation(line: 370, column: 27, scope: !2577)
!2588 = !DILocation(line: 370, column: 50, scope: !2577)
!2589 = !DILocation(line: 370, column: 54, scope: !2577)
!2590 = !DILocation(line: 370, column: 52, scope: !2577)
!2591 = !DILocation(line: 370, column: 44, scope: !2577)
!2592 = !DILocation(line: 370, column: 42, scope: !2577)
!2593 = !DILocation(line: 370, column: 59, scope: !2577)
!2594 = !DILocation(line: 370, column: 57, scope: !2577)
!2595 = !DILocation(line: 370, column: 63, scope: !2577)
!2596 = !DILocation(line: 370, column: 61, scope: !2577)
!2597 = !DILocation(line: 371, column: 23, scope: !2577)
!2598 = !DILocation(line: 371, column: 27, scope: !2577)
!2599 = !DILocation(line: 371, column: 25, scope: !2577)
!2600 = !DILocation(line: 371, column: 29, scope: !2577)
!2601 = !DILocation(line: 371, column: 17, scope: !2577)
!2602 = !DILocation(line: 371, column: 42, scope: !2577)
!2603 = !DILocation(line: 371, column: 46, scope: !2577)
!2604 = !DILocation(line: 371, column: 44, scope: !2577)
!2605 = !DILocation(line: 371, column: 48, scope: !2577)
!2606 = !DILocation(line: 371, column: 36, scope: !2577)
!2607 = !DILocation(line: 371, column: 34, scope: !2577)
!2608 = !DILocation(line: 372, column: 23, scope: !2577)
!2609 = !DILocation(line: 372, column: 27, scope: !2577)
!2610 = !DILocation(line: 372, column: 25, scope: !2577)
!2611 = !DILocation(line: 372, column: 17, scope: !2577)
!2612 = !DILocation(line: 371, column: 53, scope: !2577)
!2613 = !DILocation(line: 372, column: 38, scope: !2577)
!2614 = !DILocation(line: 372, column: 42, scope: !2577)
!2615 = !DILocation(line: 372, column: 40, scope: !2577)
!2616 = !DILocation(line: 372, column: 32, scope: !2577)
!2617 = !DILocation(line: 372, column: 30, scope: !2577)
!2618 = !DILocation(line: 372, column: 47, scope: !2577)
!2619 = !DILocation(line: 372, column: 45, scope: !2577)
!2620 = !DILocation(line: 370, column: 67, scope: !2577)
!2621 = !DILocation(line: 369, column: 19, scope: !2577)
!2622 = !DILocation(line: 373, column: 33, scope: !2577)
!2623 = !DILocation(line: 373, column: 39, scope: !2577)
!2624 = !DILocation(line: 373, column: 37, scope: !2577)
!2625 = !DILocation(line: 373, column: 28, scope: !2577)
!2626 = !DILocation(line: 373, column: 15, scope: !2577)
!2627 = !DILocation(line: 373, column: 31, scope: !2577)
!2628 = !DILocation(line: 376, column: 17, scope: !2577)
!2629 = !DILocation(line: 376, column: 25, scope: !2577)
!2630 = !DILocation(line: 376, column: 29, scope: !2577)
!2631 = !DILocation(line: 376, column: 27, scope: !2577)
!2632 = !DILocation(line: 376, column: 46, scope: !2577)
!2633 = !DILocation(line: 376, column: 33, scope: !2577)
!2634 = !DILocation(line: 376, column: 31, scope: !2577)
!2635 = !DILocation(line: 377, column: 31, scope: !2577)
!2636 = !DILocation(line: 377, column: 35, scope: !2577)
!2637 = !DILocation(line: 377, column: 33, scope: !2577)
!2638 = !DILocation(line: 377, column: 25, scope: !2577)
!2639 = !DILocation(line: 377, column: 46, scope: !2577)
!2640 = !DILocation(line: 377, column: 50, scope: !2577)
!2641 = !DILocation(line: 377, column: 48, scope: !2577)
!2642 = !DILocation(line: 377, column: 40, scope: !2577)
!2643 = !DILocation(line: 377, column: 38, scope: !2577)
!2644 = !DILocation(line: 377, column: 68, scope: !2577)
!2645 = !DILocation(line: 377, column: 72, scope: !2577)
!2646 = !DILocation(line: 377, column: 70, scope: !2577)
!2647 = !DILocation(line: 377, column: 55, scope: !2577)
!2648 = !DILocation(line: 377, column: 53, scope: !2577)
!2649 = !DILocation(line: 376, column: 49, scope: !2577)
!2650 = !DILocation(line: 376, column: 22, scope: !2577)
!2651 = !DILocation(line: 375, column: 34, scope: !2577)
!2652 = !DILocation(line: 375, column: 15, scope: !2577)
!2653 = !DILocation(line: 375, column: 37, scope: !2577)
!2654 = !DILocation(line: 384, column: 21, scope: !2577)
!2655 = !DILocation(line: 384, column: 19, scope: !2577)
!2656 = !DILocation(line: 385, column: 21, scope: !2577)
!2657 = !DILocation(line: 385, column: 19, scope: !2577)
!2658 = !DILocation(line: 386, column: 13, scope: !2577)
!2659 = !DILocation(line: 366, column: 38, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !2572, file: !55, discriminator: 2)
!2661 = !DILocation(line: 366, column: 11, scope: !2660)
!2662 = distinct !{!2662, !2663}
!2663 = !DILocation(line: 366, column: 11, scope: !2492)
!2664 = !DILocation(line: 387, column: 9, scope: !2492)
!2665 = !DILocation(line: 321, column: 29, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2487, file: !55, discriminator: 2)
!2667 = !DILocation(line: 321, column: 7, scope: !2666)
!2668 = distinct !{!2668, !2669}
!2669 = !DILocation(line: 321, column: 7, scope: !2353)
!2670 = !DILocation(line: 391, column: 19, scope: !2353)
!2671 = !DILocation(line: 391, column: 16, scope: !2353)
!2672 = !DILocation(line: 392, column: 16, scope: !2353)
!2673 = !DILocation(line: 392, column: 18, scope: !2353)
!2674 = !DILocation(line: 392, column: 13, scope: !2353)
!2675 = !DILocation(line: 393, column: 14, scope: !2353)
!2676 = !DILocation(line: 393, column: 34, scope: !2353)
!2677 = !DILocation(line: 393, column: 32, scope: !2353)
!2678 = !DILocation(line: 393, column: 39, scope: !2353)
!2679 = !DILocation(line: 393, column: 24, scope: !2353)
!2680 = !DILocation(line: 393, column: 22, scope: !2353)
!2681 = !DILocation(line: 393, column: 56, scope: !2353)
!2682 = !DILocation(line: 393, column: 54, scope: !2353)
!2683 = !DILocation(line: 393, column: 46, scope: !2353)
!2684 = !DILocation(line: 393, column: 44, scope: !2353)
!2685 = !DILocation(line: 393, column: 11, scope: !2353)
!2686 = !DILocation(line: 394, column: 29, scope: !2353)
!2687 = !DILocation(line: 394, column: 35, scope: !2353)
!2688 = !DILocation(line: 394, column: 33, scope: !2353)
!2689 = !DILocation(line: 394, column: 20, scope: !2353)
!2690 = !DILocation(line: 394, column: 7, scope: !2353)
!2691 = !DILocation(line: 394, column: 27, scope: !2353)
!2692 = !DILocation(line: 396, column: 35, scope: !2353)
!2693 = !DILocation(line: 396, column: 42, scope: !2353)
!2694 = !DILocation(line: 396, column: 40, scope: !2353)
!2695 = !DILocation(line: 396, column: 62, scope: !2353)
!2696 = !DILocation(line: 396, column: 49, scope: !2353)
!2697 = !DILocation(line: 396, column: 47, scope: !2353)
!2698 = !DILocation(line: 396, column: 26, scope: !2353)
!2699 = !DILocation(line: 396, column: 7, scope: !2353)
!2700 = !DILocation(line: 396, column: 33, scope: !2353)
!2701 = !DILocation(line: 404, column: 7, scope: !2353)
!2702 = !DILocation(line: 406, column: 1, scope: !2300)
!2703 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_array", scope: !55, file: !55, line: 74, type: !2704, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!58, !59, !61, !65, !66, !66, !66}
!2706 = !DILocalVariable(name: "norm", arg: 1, scope: !2703, file: !55, line: 75, type: !59)
!2707 = !DILocation(line: 75, column: 26, scope: !2703)
!2708 = !DILocalVariable(name: "lmax", arg: 2, scope: !2703, file: !55, line: 75, type: !61)
!2709 = !DILocation(line: 75, column: 45, scope: !2703)
!2710 = !DILocalVariable(name: "x", arg: 3, scope: !2703, file: !55, line: 75, type: !65)
!2711 = !DILocation(line: 75, column: 64, scope: !2703)
!2712 = !DILocalVariable(name: "result_array", arg: 4, scope: !2703, file: !55, line: 76, type: !66)
!2713 = !DILocation(line: 76, column: 2, scope: !2703)
!2714 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !2703, file: !55, line: 76, type: !66)
!2715 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !2703, file: !55, line: 76, type: !66)
!2716 = !DILocalVariable(name: "s", scope: !2703, file: !55, line: 78, type: !58)
!2717 = !DILocation(line: 78, column: 7, scope: !2703)
!2718 = !DILocation(line: 78, column: 47, scope: !2703)
!2719 = !DILocation(line: 78, column: 53, scope: !2703)
!2720 = !DILocation(line: 78, column: 59, scope: !2703)
!2721 = !DILocation(line: 78, column: 67, scope: !2703)
!2722 = !DILocation(line: 78, column: 11, scope: !2703)
!2723 = !DILocation(line: 79, column: 10, scope: !2703)
!2724 = !DILocation(line: 79, column: 3, scope: !2703)
!2725 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_array_e", scope: !55, file: !55, line: 95, type: !2726, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!58, !59, !61, !65, !65, !66, !66, !66}
!2728 = !DILocalVariable(name: "norm", arg: 1, scope: !2725, file: !55, line: 96, type: !59)
!2729 = !DILocation(line: 96, column: 26, scope: !2725)
!2730 = !DILocalVariable(name: "lmax", arg: 2, scope: !2725, file: !55, line: 96, type: !61)
!2731 = !DILocation(line: 96, column: 45, scope: !2725)
!2732 = !DILocalVariable(name: "x", arg: 3, scope: !2725, file: !55, line: 96, type: !65)
!2733 = !DILocation(line: 96, column: 64, scope: !2725)
!2734 = !DILocalVariable(name: "csphase", arg: 4, scope: !2725, file: !55, line: 97, type: !65)
!2735 = !DILocation(line: 97, column: 15, scope: !2725)
!2736 = !DILocalVariable(name: "result_array", arg: 5, scope: !2725, file: !55, line: 97, type: !66)
!2737 = !DILocation(line: 97, column: 24, scope: !2725)
!2738 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !2725, file: !55, line: 97, type: !66)
!2739 = !DILocalVariable(name: "result_deriv2_array", arg: 7, scope: !2725, file: !55, line: 97, type: !66)
!2740 = !DILocalVariable(name: "s", scope: !2725, file: !55, line: 99, type: !58)
!2741 = !DILocation(line: 99, column: 7, scope: !2725)
!2742 = !DILocalVariable(name: "nlm", scope: !2725, file: !55, line: 100, type: !61)
!2743 = !DILocation(line: 100, column: 16, scope: !2725)
!2744 = !DILocation(line: 100, column: 42, scope: !2725)
!2745 = !DILocation(line: 100, column: 22, scope: !2725)
!2746 = !DILocalVariable(name: "i", scope: !2725, file: !55, line: 102, type: !62)
!2747 = !DILocation(line: 102, column: 10, scope: !2725)
!2748 = !DILocalVariable(name: "u", scope: !2725, file: !55, line: 104, type: !65)
!2749 = !DILocation(line: 104, column: 16, scope: !2725)
!2750 = !DILocation(line: 104, column: 32, scope: !2725)
!2751 = !DILocation(line: 104, column: 30, scope: !2725)
!2752 = !DILocation(line: 104, column: 44, scope: !2725)
!2753 = !DILocation(line: 104, column: 42, scope: !2725)
!2754 = !DILocation(line: 104, column: 35, scope: !2725)
!2755 = !DILocation(line: 104, column: 20, scope: !2725)
!2756 = !DILocalVariable(name: "uinv", scope: !2725, file: !55, line: 105, type: !65)
!2757 = !DILocation(line: 105, column: 16, scope: !2725)
!2758 = !DILocation(line: 105, column: 29, scope: !2725)
!2759 = !DILocation(line: 105, column: 27, scope: !2725)
!2760 = !DILocalVariable(name: "uinv2", scope: !2725, file: !55, line: 108, type: !65)
!2761 = !DILocation(line: 108, column: 16, scope: !2725)
!2762 = !DILocation(line: 108, column: 24, scope: !2725)
!2763 = !DILocation(line: 108, column: 31, scope: !2725)
!2764 = !DILocation(line: 108, column: 29, scope: !2725)
!2765 = !DILocalVariable(name: "fac1", scope: !2725, file: !55, line: 111, type: !49)
!2766 = !DILocation(line: 111, column: 10, scope: !2725)
!2767 = !DILocalVariable(name: "fac2", scope: !2725, file: !55, line: 111, type: !49)
!2768 = !DILocation(line: 111, column: 22, scope: !2725)
!2769 = !DILocation(line: 113, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2725, file: !55, line: 113, column: 7)
!2771 = !DILocation(line: 113, column: 12, scope: !2770)
!2772 = !DILocation(line: 113, column: 7, scope: !2725)
!2773 = !DILocation(line: 116, column: 43, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2770, file: !55, line: 114, column: 5)
!2775 = !DILocation(line: 116, column: 49, scope: !2774)
!2776 = !DILocation(line: 116, column: 52, scope: !2774)
!2777 = !DILocation(line: 116, column: 61, scope: !2774)
!2778 = !DILocation(line: 116, column: 11, scope: !2774)
!2779 = !DILocation(line: 116, column: 9, scope: !2774)
!2780 = !DILocation(line: 117, column: 5, scope: !2774)
!2781 = !DILocation(line: 121, column: 46, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2770, file: !55, line: 119, column: 5)
!2783 = !DILocation(line: 121, column: 52, scope: !2782)
!2784 = !DILocation(line: 121, column: 55, scope: !2782)
!2785 = !DILocation(line: 121, column: 64, scope: !2782)
!2786 = !DILocation(line: 121, column: 11, scope: !2782)
!2787 = !DILocation(line: 121, column: 9, scope: !2782)
!2788 = !DILocation(line: 126, column: 10, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2725, file: !55, line: 126, column: 3)
!2790 = !DILocation(line: 126, column: 8, scope: !2789)
!2791 = !DILocation(line: 126, column: 15, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !2793, file: !55, discriminator: 1)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !55, line: 126, column: 3)
!2794 = !DILocation(line: 126, column: 19, scope: !2792)
!2795 = !DILocation(line: 126, column: 17, scope: !2792)
!2796 = !DILocation(line: 126, column: 3, scope: !2792)
!2797 = !DILocalVariable(name: "dp", scope: !2798, file: !55, line: 129, type: !49)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !55, line: 127, column: 5)
!2799 = !DILocation(line: 129, column: 14, scope: !2798)
!2800 = !DILocation(line: 129, column: 38, scope: !2798)
!2801 = !DILocation(line: 129, column: 19, scope: !2798)
!2802 = !DILocalVariable(name: "d2p", scope: !2798, file: !55, line: 130, type: !49)
!2803 = !DILocation(line: 130, column: 14, scope: !2798)
!2804 = !DILocation(line: 130, column: 40, scope: !2798)
!2805 = !DILocation(line: 130, column: 20, scope: !2798)
!2806 = !DILocation(line: 132, column: 33, scope: !2798)
!2807 = !DILocation(line: 132, column: 39, scope: !2798)
!2808 = !DILocation(line: 132, column: 43, scope: !2798)
!2809 = !DILocation(line: 132, column: 41, scope: !2798)
!2810 = !DILocation(line: 132, column: 50, scope: !2798)
!2811 = !DILocation(line: 132, column: 48, scope: !2798)
!2812 = !DILocation(line: 132, column: 37, scope: !2798)
!2813 = !DILocation(line: 132, column: 56, scope: !2798)
!2814 = !DILocation(line: 132, column: 54, scope: !2798)
!2815 = !DILocation(line: 132, column: 27, scope: !2798)
!2816 = !DILocation(line: 132, column: 7, scope: !2798)
!2817 = !DILocation(line: 132, column: 30, scope: !2798)
!2818 = !DILocation(line: 135, column: 33, scope: !2798)
!2819 = !DILocation(line: 135, column: 32, scope: !2798)
!2820 = !DILocation(line: 135, column: 26, scope: !2798)
!2821 = !DILocation(line: 135, column: 7, scope: !2798)
!2822 = !DILocation(line: 135, column: 29, scope: !2798)
!2823 = !DILocation(line: 137, column: 5, scope: !2798)
!2824 = !DILocation(line: 126, column: 24, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2793, file: !55, discriminator: 2)
!2826 = !DILocation(line: 126, column: 3, scope: !2825)
!2827 = distinct !{!2827, !2828}
!2828 = !DILocation(line: 126, column: 3, scope: !2725)
!2829 = !DILocation(line: 141, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2725, file: !55, line: 141, column: 7)
!2831 = !DILocation(line: 141, column: 12, scope: !2830)
!2832 = !DILocation(line: 141, column: 39, scope: !2830)
!2833 = !DILocation(line: 141, column: 42, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2830, file: !55, discriminator: 1)
!2835 = !DILocation(line: 141, column: 47, scope: !2834)
!2836 = !DILocation(line: 141, column: 7, scope: !2834)
!2837 = !DILocation(line: 143, column: 14, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2830, file: !55, line: 142, column: 5)
!2839 = !DILocation(line: 143, column: 7, scope: !2838)
!2840 = !DILocation(line: 145, column: 12, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2830, file: !55, line: 145, column: 12)
!2842 = !DILocation(line: 145, column: 17, scope: !2841)
!2843 = !DILocation(line: 145, column: 12, scope: !2830)
!2844 = !DILocation(line: 147, column: 20, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2841, file: !55, line: 146, column: 5)
!2846 = !DILocation(line: 147, column: 18, scope: !2845)
!2847 = !DILocation(line: 147, column: 12, scope: !2845)
!2848 = !DILocation(line: 148, column: 20, scope: !2845)
!2849 = !DILocation(line: 148, column: 18, scope: !2845)
!2850 = !DILocation(line: 148, column: 12, scope: !2845)
!2851 = !DILocation(line: 149, column: 5, scope: !2845)
!2852 = !DILocation(line: 150, column: 12, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2841, file: !55, line: 150, column: 12)
!2854 = !DILocation(line: 150, column: 17, scope: !2853)
!2855 = !DILocation(line: 150, column: 12, scope: !2841)
!2856 = !DILocation(line: 152, column: 20, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !55, line: 151, column: 5)
!2858 = !DILocation(line: 152, column: 18, scope: !2857)
!2859 = !DILocation(line: 152, column: 12, scope: !2857)
!2860 = !DILocation(line: 153, column: 20, scope: !2857)
!2861 = !DILocation(line: 153, column: 18, scope: !2857)
!2862 = !DILocation(line: 153, column: 12, scope: !2857)
!2863 = !DILocation(line: 154, column: 5, scope: !2857)
!2864 = !DILocalVariable(name: "l", scope: !2865, file: !55, line: 162, type: !62)
!2865 = distinct !DILexicalBlock(scope: !2725, file: !55, line: 161, column: 3)
!2866 = !DILocation(line: 162, column: 12, scope: !2865)
!2867 = !DILocalVariable(name: "m", scope: !2865, file: !55, line: 162, type: !62)
!2868 = !DILocation(line: 162, column: 15, scope: !2865)
!2869 = !DILocalVariable(name: "twoellp1", scope: !2865, file: !55, line: 163, type: !62)
!2870 = !DILocation(line: 163, column: 12, scope: !2865)
!2871 = !DILocalVariable(name: "sqrts", scope: !2865, file: !55, line: 164, type: !66)
!2872 = !DILocation(line: 164, column: 13, scope: !2865)
!2873 = !DILocation(line: 164, column: 36, scope: !2865)
!2874 = !DILocation(line: 164, column: 23, scope: !2865)
!2875 = !DILocation(line: 166, column: 12, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2865, file: !55, line: 166, column: 5)
!2877 = !DILocation(line: 166, column: 10, scope: !2876)
!2878 = !DILocation(line: 166, column: 17, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2880, file: !55, discriminator: 1)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !55, line: 166, column: 5)
!2881 = !DILocation(line: 166, column: 22, scope: !2879)
!2882 = !DILocation(line: 166, column: 19, scope: !2879)
!2883 = !DILocation(line: 166, column: 5, scope: !2879)
!2884 = !DILocation(line: 169, column: 17, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2880, file: !55, line: 167, column: 7)
!2886 = !DILocation(line: 169, column: 11, scope: !2885)
!2887 = !DILocation(line: 169, column: 29, scope: !2885)
!2888 = !DILocation(line: 169, column: 27, scope: !2885)
!2889 = !DILocation(line: 168, column: 50, scope: !2885)
!2890 = !DILocation(line: 168, column: 22, scope: !2885)
!2891 = !DILocation(line: 168, column: 9, scope: !2885)
!2892 = !DILocation(line: 168, column: 57, scope: !2885)
!2893 = !DILocation(line: 172, column: 17, scope: !2885)
!2894 = !DILocation(line: 172, column: 11, scope: !2885)
!2895 = !DILocation(line: 172, column: 29, scope: !2885)
!2896 = !DILocation(line: 172, column: 27, scope: !2885)
!2897 = !DILocation(line: 171, column: 56, scope: !2885)
!2898 = !DILocation(line: 171, column: 28, scope: !2885)
!2899 = !DILocation(line: 171, column: 9, scope: !2885)
!2900 = !DILocation(line: 171, column: 63, scope: !2885)
!2901 = !DILocation(line: 176, column: 17, scope: !2885)
!2902 = !DILocation(line: 176, column: 11, scope: !2885)
!2903 = !DILocation(line: 176, column: 29, scope: !2885)
!2904 = !DILocation(line: 176, column: 27, scope: !2885)
!2905 = !DILocation(line: 175, column: 57, scope: !2885)
!2906 = !DILocation(line: 175, column: 29, scope: !2885)
!2907 = !DILocation(line: 175, column: 9, scope: !2885)
!2908 = !DILocation(line: 175, column: 64, scope: !2885)
!2909 = !DILocation(line: 179, column: 16, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2885, file: !55, line: 179, column: 9)
!2911 = !DILocation(line: 179, column: 14, scope: !2910)
!2912 = !DILocation(line: 179, column: 21, scope: !2913)
!2913 = !DILexicalBlockFile(scope: !2914, file: !55, discriminator: 1)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !55, line: 179, column: 9)
!2915 = !DILocation(line: 179, column: 26, scope: !2913)
!2916 = !DILocation(line: 179, column: 23, scope: !2913)
!2917 = !DILocation(line: 179, column: 9, scope: !2913)
!2918 = !DILocation(line: 182, column: 21, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2914, file: !55, line: 180, column: 11)
!2920 = !DILocation(line: 182, column: 15, scope: !2919)
!2921 = !DILocation(line: 182, column: 33, scope: !2919)
!2922 = !DILocation(line: 182, column: 31, scope: !2919)
!2923 = !DILocation(line: 181, column: 54, scope: !2919)
!2924 = !DILocation(line: 181, column: 57, scope: !2919)
!2925 = !DILocation(line: 181, column: 26, scope: !2919)
!2926 = !DILocation(line: 181, column: 13, scope: !2919)
!2927 = !DILocation(line: 181, column: 61, scope: !2919)
!2928 = !DILocation(line: 185, column: 21, scope: !2919)
!2929 = !DILocation(line: 185, column: 15, scope: !2919)
!2930 = !DILocation(line: 185, column: 33, scope: !2919)
!2931 = !DILocation(line: 185, column: 31, scope: !2919)
!2932 = !DILocation(line: 184, column: 60, scope: !2919)
!2933 = !DILocation(line: 184, column: 63, scope: !2919)
!2934 = !DILocation(line: 184, column: 32, scope: !2919)
!2935 = !DILocation(line: 184, column: 13, scope: !2919)
!2936 = !DILocation(line: 184, column: 67, scope: !2919)
!2937 = !DILocation(line: 189, column: 21, scope: !2919)
!2938 = !DILocation(line: 189, column: 15, scope: !2919)
!2939 = !DILocation(line: 189, column: 33, scope: !2919)
!2940 = !DILocation(line: 189, column: 31, scope: !2919)
!2941 = !DILocation(line: 188, column: 61, scope: !2919)
!2942 = !DILocation(line: 188, column: 64, scope: !2919)
!2943 = !DILocation(line: 188, column: 33, scope: !2919)
!2944 = !DILocation(line: 188, column: 13, scope: !2919)
!2945 = !DILocation(line: 188, column: 68, scope: !2919)
!2946 = !DILocation(line: 191, column: 11, scope: !2919)
!2947 = !DILocation(line: 179, column: 29, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2914, file: !55, discriminator: 2)
!2949 = !DILocation(line: 179, column: 9, scope: !2948)
!2950 = distinct !{!2950, !2951}
!2951 = !DILocation(line: 179, column: 9, scope: !2885)
!2952 = !DILocation(line: 193, column: 18, scope: !2885)
!2953 = !DILocation(line: 194, column: 7, scope: !2885)
!2954 = !DILocation(line: 166, column: 28, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2880, file: !55, discriminator: 2)
!2956 = !DILocation(line: 166, column: 5, scope: !2955)
!2957 = distinct !{!2957, !2958}
!2958 = !DILocation(line: 166, column: 5, scope: !2865)
!2959 = !DILocation(line: 197, column: 10, scope: !2725)
!2960 = !DILocation(line: 197, column: 3, scope: !2725)
!2961 = !DILocation(line: 198, column: 1, scope: !2725)
!2962 = distinct !DISubprogram(name: "legendre_deriv2_array_none_e", scope: !55, file: !55, line: 425, type: !2963, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!58, !61, !65, !65, !66, !66, !66}
!2965 = !DILocalVariable(name: "lmax", arg: 1, scope: !2962, file: !55, line: 426, type: !61)
!2966 = !DILocation(line: 426, column: 15, scope: !2962)
!2967 = !DILocalVariable(name: "x", arg: 2, scope: !2962, file: !55, line: 426, type: !65)
!2968 = !DILocation(line: 426, column: 34, scope: !2962)
!2969 = !DILocalVariable(name: "csphase", arg: 3, scope: !2962, file: !55, line: 426, type: !65)
!2970 = !DILocation(line: 426, column: 50, scope: !2962)
!2971 = !DILocalVariable(name: "result_array", arg: 4, scope: !2962, file: !55, line: 426, type: !66)
!2972 = !DILocation(line: 426, column: 59, scope: !2962)
!2973 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !2962, file: !55, line: 426, type: !66)
!2974 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !2962, file: !55, line: 426, type: !66)
!2975 = !DILocation(line: 428, column: 7, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2962, file: !55, line: 428, column: 7)
!2977 = !DILocation(line: 428, column: 9, scope: !2976)
!2978 = !DILocation(line: 428, column: 15, scope: !2976)
!2979 = !DILocation(line: 428, column: 18, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !2976, file: !55, discriminator: 1)
!2981 = !DILocation(line: 428, column: 20, scope: !2980)
!2982 = !DILocation(line: 428, column: 7, scope: !2980)
!2983 = !DILocation(line: 430, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2976, file: !55, line: 429, column: 5)
!2985 = distinct !{!2985, !2983}
!2986 = !DILocation(line: 430, column: 7, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !2988, file: !55, discriminator: 1)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !55, line: 430, column: 7)
!2989 = !DILocation(line: 431, column: 5, scope: !2984)
!2990 = !DILocation(line: 433, column: 17, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2976, file: !55, line: 433, column: 12)
!2992 = !DILocation(line: 433, column: 12, scope: !2991)
!2993 = !DILocation(line: 433, column: 20, scope: !2991)
!2994 = !DILocation(line: 433, column: 12, scope: !2976)
!2995 = !DILocation(line: 435, column: 7, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2991, file: !55, line: 434, column: 5)
!2997 = distinct !{!2997, !2995}
!2998 = !DILocation(line: 435, column: 7, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !3000, file: !55, discriminator: 1)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !55, line: 435, column: 7)
!3001 = !DILocation(line: 436, column: 5, scope: !2996)
!3002 = !DILocation(line: 438, column: 12, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2991, file: !55, line: 438, column: 12)
!3004 = !DILocation(line: 438, column: 20, scope: !3003)
!3005 = !DILocation(line: 438, column: 27, scope: !3003)
!3006 = !DILocation(line: 438, column: 30, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !3003, file: !55, discriminator: 1)
!3008 = !DILocation(line: 438, column: 38, scope: !3007)
!3009 = !DILocation(line: 438, column: 12, scope: !3007)
!3010 = !DILocation(line: 440, column: 7, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3003, file: !55, line: 439, column: 5)
!3012 = distinct !{!3012, !3010}
!3013 = !DILocation(line: 440, column: 7, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !3015, file: !55, discriminator: 1)
!3015 = distinct !DILexicalBlock(scope: !3011, file: !55, line: 440, column: 7)
!3016 = !DILocation(line: 441, column: 5, scope: !3011)
!3017 = !DILocalVariable(name: "u", scope: !3018, file: !55, line: 444, type: !65)
!3018 = distinct !DILexicalBlock(scope: !3003, file: !55, line: 443, column: 5)
!3019 = !DILocation(line: 444, column: 20, scope: !3018)
!3020 = !DILocation(line: 444, column: 36, scope: !3018)
!3021 = !DILocation(line: 444, column: 34, scope: !3018)
!3022 = !DILocation(line: 444, column: 48, scope: !3018)
!3023 = !DILocation(line: 444, column: 46, scope: !3018)
!3024 = !DILocation(line: 444, column: 39, scope: !3018)
!3025 = !DILocation(line: 444, column: 24, scope: !3018)
!3026 = !DILocalVariable(name: "uinv", scope: !3018, file: !55, line: 446, type: !65)
!3027 = !DILocation(line: 446, column: 20, scope: !3018)
!3028 = !DILocation(line: 446, column: 33, scope: !3018)
!3029 = !DILocation(line: 446, column: 31, scope: !3018)
!3030 = !DILocalVariable(name: "uinv2", scope: !3018, file: !55, line: 449, type: !65)
!3031 = !DILocation(line: 449, column: 20, scope: !3018)
!3032 = !DILocation(line: 449, column: 34, scope: !3018)
!3033 = !DILocation(line: 449, column: 32, scope: !3018)
!3034 = !DILocation(line: 449, column: 38, scope: !3018)
!3035 = !DILocation(line: 449, column: 36, scope: !3018)
!3036 = !DILocalVariable(name: "xbyu", scope: !3018, file: !55, line: 452, type: !65)
!3037 = !DILocation(line: 452, column: 20, scope: !3018)
!3038 = !DILocation(line: 452, column: 27, scope: !3018)
!3039 = !DILocation(line: 452, column: 31, scope: !3018)
!3040 = !DILocation(line: 452, column: 29, scope: !3018)
!3041 = !DILocalVariable(name: "l", scope: !3018, file: !55, line: 454, type: !62)
!3042 = !DILocation(line: 454, column: 14, scope: !3018)
!3043 = !DILocalVariable(name: "m", scope: !3018, file: !55, line: 454, type: !62)
!3044 = !DILocation(line: 454, column: 17, scope: !3018)
!3045 = !DILocalVariable(name: "k", scope: !3018, file: !55, line: 455, type: !62)
!3046 = !DILocation(line: 455, column: 14, scope: !3018)
!3047 = !DILocalVariable(name: "idxmm", scope: !3018, file: !55, line: 455, type: !62)
!3048 = !DILocation(line: 455, column: 17, scope: !3018)
!3049 = !DILocalVariable(name: "plm", scope: !3018, file: !55, line: 456, type: !49)
!3050 = !DILocation(line: 456, column: 14, scope: !3018)
!3051 = !DILocalVariable(name: "pmm", scope: !3018, file: !55, line: 456, type: !49)
!3052 = !DILocation(line: 456, column: 19, scope: !3018)
!3053 = !DILocalVariable(name: "pm1", scope: !3018, file: !55, line: 457, type: !49)
!3054 = !DILocation(line: 457, column: 14, scope: !3018)
!3055 = !DILocalVariable(name: "pm2", scope: !3018, file: !55, line: 458, type: !49)
!3056 = !DILocation(line: 458, column: 14, scope: !3018)
!3057 = !DILocalVariable(name: "twomm1", scope: !3018, file: !55, line: 459, type: !49)
!3058 = !DILocation(line: 459, column: 14, scope: !3018)
!3059 = !DILocation(line: 463, column: 11, scope: !3018)
!3060 = !DILocation(line: 464, column: 13, scope: !3018)
!3061 = !DILocation(line: 464, column: 11, scope: !3018)
!3062 = !DILocation(line: 466, column: 25, scope: !3018)
!3063 = !DILocation(line: 466, column: 7, scope: !3018)
!3064 = !DILocation(line: 466, column: 23, scope: !3018)
!3065 = !DILocation(line: 468, column: 7, scope: !3018)
!3066 = !DILocation(line: 468, column: 29, scope: !3018)
!3067 = !DILocation(line: 471, column: 7, scope: !3018)
!3068 = !DILocation(line: 471, column: 30, scope: !3018)
!3069 = !DILocation(line: 474, column: 11, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3018, file: !55, line: 474, column: 11)
!3071 = !DILocation(line: 474, column: 16, scope: !3070)
!3072 = !DILocation(line: 474, column: 11, scope: !3018)
!3073 = !DILocation(line: 475, column: 9, scope: !3070)
!3074 = !DILocation(line: 477, column: 25, scope: !3018)
!3075 = !DILocation(line: 477, column: 7, scope: !3018)
!3076 = !DILocation(line: 477, column: 23, scope: !3018)
!3077 = !DILocation(line: 479, column: 32, scope: !3018)
!3078 = !DILocation(line: 479, column: 31, scope: !3018)
!3079 = !DILocation(line: 479, column: 7, scope: !3018)
!3080 = !DILocation(line: 479, column: 29, scope: !3018)
!3081 = !DILocation(line: 482, column: 33, scope: !3018)
!3082 = !DILocation(line: 482, column: 32, scope: !3018)
!3083 = !DILocation(line: 482, column: 7, scope: !3018)
!3084 = !DILocation(line: 482, column: 30, scope: !3018)
!3085 = !DILocation(line: 487, column: 9, scope: !3018)
!3086 = !DILocation(line: 488, column: 14, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3018, file: !55, line: 488, column: 7)
!3088 = !DILocation(line: 488, column: 12, scope: !3087)
!3089 = !DILocation(line: 488, column: 19, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3091, file: !55, discriminator: 1)
!3091 = distinct !DILexicalBlock(scope: !3087, file: !55, line: 488, column: 7)
!3092 = !DILocation(line: 488, column: 24, scope: !3090)
!3093 = !DILocation(line: 488, column: 21, scope: !3090)
!3094 = !DILocation(line: 488, column: 7, scope: !3090)
!3095 = !DILocation(line: 490, column: 16, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3091, file: !55, line: 489, column: 9)
!3097 = !DILocation(line: 490, column: 13, scope: !3096)
!3098 = !DILocation(line: 491, column: 21, scope: !3096)
!3099 = !DILocation(line: 491, column: 20, scope: !3096)
!3100 = !DILocation(line: 491, column: 23, scope: !3096)
!3101 = !DILocation(line: 491, column: 18, scope: !3096)
!3102 = !DILocation(line: 491, column: 30, scope: !3096)
!3103 = !DILocation(line: 491, column: 28, scope: !3096)
!3104 = !DILocation(line: 491, column: 34, scope: !3096)
!3105 = !DILocation(line: 491, column: 32, scope: !3096)
!3106 = !DILocation(line: 491, column: 41, scope: !3096)
!3107 = !DILocation(line: 491, column: 43, scope: !3096)
!3108 = !DILocation(line: 491, column: 40, scope: !3096)
!3109 = !DILocation(line: 491, column: 50, scope: !3096)
!3110 = !DILocation(line: 491, column: 48, scope: !3096)
!3111 = !DILocation(line: 491, column: 38, scope: !3096)
!3112 = !DILocation(line: 491, column: 66, scope: !3096)
!3113 = !DILocation(line: 491, column: 57, scope: !3096)
!3114 = !DILocation(line: 491, column: 55, scope: !3096)
!3115 = !DILocation(line: 491, column: 15, scope: !3096)
!3116 = !DILocation(line: 492, column: 29, scope: !3096)
!3117 = !DILocation(line: 492, column: 24, scope: !3096)
!3118 = !DILocation(line: 492, column: 11, scope: !3096)
!3119 = !DILocation(line: 492, column: 27, scope: !3096)
!3120 = !DILocation(line: 494, column: 44, scope: !3096)
!3121 = !DILocation(line: 494, column: 36, scope: !3096)
!3122 = !DILocation(line: 494, column: 35, scope: !3096)
!3123 = !DILocation(line: 494, column: 49, scope: !3096)
!3124 = !DILocation(line: 494, column: 55, scope: !3096)
!3125 = !DILocation(line: 494, column: 59, scope: !3096)
!3126 = !DILocation(line: 494, column: 57, scope: !3096)
!3127 = !DILocation(line: 494, column: 53, scope: !3096)
!3128 = !DILocation(line: 494, column: 46, scope: !3096)
!3129 = !DILocation(line: 494, column: 66, scope: !3096)
!3130 = !DILocation(line: 494, column: 64, scope: !3096)
!3131 = !DILocation(line: 494, column: 30, scope: !3096)
!3132 = !DILocation(line: 494, column: 11, scope: !3096)
!3133 = !DILocation(line: 494, column: 33, scope: !3096)
!3134 = !DILocation(line: 497, column: 46, scope: !3096)
!3135 = !DILocation(line: 497, column: 37, scope: !3096)
!3136 = !DILocation(line: 497, column: 36, scope: !3096)
!3137 = !DILocation(line: 497, column: 51, scope: !3096)
!3138 = !DILocation(line: 497, column: 53, scope: !3096)
!3139 = !DILocation(line: 497, column: 48, scope: !3096)
!3140 = !DILocation(line: 497, column: 62, scope: !3096)
!3141 = !DILocation(line: 497, column: 60, scope: !3096)
!3142 = !DILocation(line: 498, column: 36, scope: !3096)
!3143 = !DILocation(line: 498, column: 62, scope: !3096)
!3144 = !DILocation(line: 498, column: 43, scope: !3096)
!3145 = !DILocation(line: 498, column: 41, scope: !3096)
!3146 = !DILocation(line: 497, column: 66, scope: !3096)
!3147 = !DILocation(line: 497, column: 31, scope: !3096)
!3148 = !DILocation(line: 497, column: 11, scope: !3096)
!3149 = !DILocation(line: 497, column: 34, scope: !3096)
!3150 = !DILocation(line: 500, column: 17, scope: !3096)
!3151 = !DILocation(line: 500, column: 15, scope: !3096)
!3152 = !DILocation(line: 501, column: 17, scope: !3096)
!3153 = !DILocation(line: 501, column: 15, scope: !3096)
!3154 = !DILocation(line: 502, column: 9, scope: !3096)
!3155 = !DILocation(line: 488, column: 30, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !3091, file: !55, discriminator: 2)
!3157 = !DILocation(line: 488, column: 7, scope: !3156)
!3158 = distinct !{!3158, !3159}
!3159 = !DILocation(line: 488, column: 7, scope: !3018)
!3160 = !DILocation(line: 506, column: 11, scope: !3018)
!3161 = !DILocation(line: 507, column: 14, scope: !3018)
!3162 = !DILocation(line: 509, column: 13, scope: !3018)
!3163 = !DILocation(line: 511, column: 14, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3018, file: !55, line: 511, column: 7)
!3165 = !DILocation(line: 511, column: 12, scope: !3164)
!3166 = !DILocation(line: 511, column: 19, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3168, file: !55, discriminator: 1)
!3168 = distinct !DILexicalBlock(scope: !3164, file: !55, line: 511, column: 7)
!3169 = !DILocation(line: 511, column: 24, scope: !3167)
!3170 = !DILocation(line: 511, column: 29, scope: !3167)
!3171 = !DILocation(line: 511, column: 21, scope: !3167)
!3172 = !DILocation(line: 511, column: 7, scope: !3167)
!3173 = !DILocation(line: 520, column: 20, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3168, file: !55, line: 512, column: 9)
!3175 = !DILocation(line: 520, column: 22, scope: !3174)
!3176 = !DILocation(line: 520, column: 17, scope: !3174)
!3177 = !DILocation(line: 521, column: 18, scope: !3174)
!3178 = !DILocation(line: 522, column: 18, scope: !3174)
!3179 = !DILocation(line: 522, column: 28, scope: !3174)
!3180 = !DILocation(line: 522, column: 26, scope: !3174)
!3181 = !DILocation(line: 522, column: 32, scope: !3174)
!3182 = !DILocation(line: 522, column: 30, scope: !3174)
!3183 = !DILocation(line: 522, column: 15, scope: !3174)
!3184 = !DILocation(line: 523, column: 33, scope: !3174)
!3185 = !DILocation(line: 523, column: 24, scope: !3174)
!3186 = !DILocation(line: 523, column: 11, scope: !3174)
!3187 = !DILocation(line: 523, column: 31, scope: !3174)
!3188 = !DILocation(line: 525, column: 39, scope: !3174)
!3189 = !DILocation(line: 525, column: 43, scope: !3174)
!3190 = !DILocation(line: 525, column: 41, scope: !3174)
!3191 = !DILocation(line: 525, column: 50, scope: !3174)
!3192 = !DILocation(line: 525, column: 48, scope: !3174)
!3193 = !DILocation(line: 525, column: 30, scope: !3174)
!3194 = !DILocation(line: 525, column: 11, scope: !3174)
!3195 = !DILocation(line: 525, column: 37, scope: !3174)
!3196 = !DILocation(line: 529, column: 13, scope: !3174)
!3197 = !DILocation(line: 529, column: 18, scope: !3174)
!3198 = !DILocation(line: 529, column: 26, scope: !3174)
!3199 = !DILocation(line: 529, column: 24, scope: !3174)
!3200 = !DILocation(line: 529, column: 31, scope: !3174)
!3201 = !DILocation(line: 529, column: 33, scope: !3174)
!3202 = !DILocation(line: 529, column: 28, scope: !3174)
!3203 = !DILocation(line: 529, column: 15, scope: !3174)
!3204 = !DILocation(line: 529, column: 56, scope: !3174)
!3205 = !DILocation(line: 529, column: 43, scope: !3174)
!3206 = !DILocation(line: 529, column: 41, scope: !3174)
!3207 = !DILocation(line: 530, column: 13, scope: !3174)
!3208 = !DILocation(line: 530, column: 39, scope: !3174)
!3209 = !DILocation(line: 530, column: 20, scope: !3174)
!3210 = !DILocation(line: 530, column: 18, scope: !3174)
!3211 = !DILocation(line: 529, column: 63, scope: !3174)
!3212 = !DILocation(line: 528, column: 31, scope: !3174)
!3213 = !DILocation(line: 528, column: 11, scope: !3174)
!3214 = !DILocation(line: 528, column: 38, scope: !3174)
!3215 = !DILocation(line: 532, column: 17, scope: !3174)
!3216 = !DILocation(line: 532, column: 15, scope: !3174)
!3217 = !DILocation(line: 541, column: 15, scope: !3174)
!3218 = !DILocation(line: 541, column: 23, scope: !3174)
!3219 = !DILocation(line: 541, column: 21, scope: !3174)
!3220 = !DILocation(line: 541, column: 25, scope: !3174)
!3221 = !DILocation(line: 541, column: 13, scope: !3174)
!3222 = !DILocation(line: 542, column: 17, scope: !3174)
!3223 = !DILocation(line: 542, column: 21, scope: !3174)
!3224 = !DILocation(line: 542, column: 19, scope: !3174)
!3225 = !DILocation(line: 542, column: 30, scope: !3174)
!3226 = !DILocation(line: 542, column: 29, scope: !3174)
!3227 = !DILocation(line: 542, column: 32, scope: !3174)
!3228 = !DILocation(line: 542, column: 27, scope: !3174)
!3229 = !DILocation(line: 542, column: 25, scope: !3174)
!3230 = !DILocation(line: 542, column: 15, scope: !3174)
!3231 = !DILocation(line: 543, column: 29, scope: !3174)
!3232 = !DILocation(line: 543, column: 24, scope: !3174)
!3233 = !DILocation(line: 543, column: 11, scope: !3174)
!3234 = !DILocation(line: 543, column: 27, scope: !3174)
!3235 = !DILocation(line: 545, column: 36, scope: !3174)
!3236 = !DILocation(line: 545, column: 35, scope: !3174)
!3237 = !DILocation(line: 545, column: 47, scope: !3174)
!3238 = !DILocation(line: 545, column: 46, scope: !3174)
!3239 = !DILocation(line: 545, column: 49, scope: !3174)
!3240 = !DILocation(line: 545, column: 44, scope: !3174)
!3241 = !DILocation(line: 545, column: 56, scope: !3174)
!3242 = !DILocation(line: 545, column: 54, scope: !3174)
!3243 = !DILocation(line: 545, column: 63, scope: !3174)
!3244 = !DILocation(line: 545, column: 65, scope: !3174)
!3245 = !DILocation(line: 545, column: 62, scope: !3174)
!3246 = !DILocation(line: 545, column: 72, scope: !3174)
!3247 = !DILocation(line: 545, column: 70, scope: !3174)
!3248 = !DILocation(line: 545, column: 76, scope: !3174)
!3249 = !DILocation(line: 545, column: 74, scope: !3174)
!3250 = !DILocation(line: 545, column: 60, scope: !3174)
!3251 = !DILocation(line: 545, column: 41, scope: !3174)
!3252 = !DILocation(line: 545, column: 30, scope: !3174)
!3253 = !DILocation(line: 545, column: 11, scope: !3174)
!3254 = !DILocation(line: 545, column: 33, scope: !3174)
!3255 = !DILocation(line: 549, column: 14, scope: !3174)
!3256 = !DILocation(line: 549, column: 18, scope: !3174)
!3257 = !DILocation(line: 549, column: 16, scope: !3174)
!3258 = !DILocation(line: 549, column: 22, scope: !3174)
!3259 = !DILocation(line: 549, column: 20, scope: !3174)
!3260 = !DILocation(line: 549, column: 31, scope: !3174)
!3261 = !DILocation(line: 549, column: 33, scope: !3174)
!3262 = !DILocation(line: 549, column: 43, scope: !3174)
!3263 = !DILocation(line: 549, column: 45, scope: !3174)
!3264 = !DILocation(line: 549, column: 40, scope: !3174)
!3265 = !DILocation(line: 549, column: 28, scope: !3174)
!3266 = !DILocation(line: 549, column: 68, scope: !3174)
!3267 = !DILocation(line: 549, column: 55, scope: !3174)
!3268 = !DILocation(line: 549, column: 53, scope: !3174)
!3269 = !DILocation(line: 550, column: 13, scope: !3174)
!3270 = !DILocation(line: 550, column: 39, scope: !3174)
!3271 = !DILocation(line: 550, column: 20, scope: !3174)
!3272 = !DILocation(line: 550, column: 18, scope: !3174)
!3273 = !DILocation(line: 549, column: 71, scope: !3174)
!3274 = !DILocation(line: 548, column: 31, scope: !3174)
!3275 = !DILocation(line: 548, column: 11, scope: !3174)
!3276 = !DILocation(line: 548, column: 34, scope: !3174)
!3277 = !DILocation(line: 554, column: 20, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3174, file: !55, line: 554, column: 11)
!3279 = !DILocation(line: 554, column: 22, scope: !3278)
!3280 = !DILocation(line: 554, column: 18, scope: !3278)
!3281 = !DILocation(line: 554, column: 16, scope: !3278)
!3282 = !DILocation(line: 554, column: 27, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !3284, file: !55, discriminator: 1)
!3284 = distinct !DILexicalBlock(scope: !3278, file: !55, line: 554, column: 11)
!3285 = !DILocation(line: 554, column: 32, scope: !3283)
!3286 = !DILocation(line: 554, column: 29, scope: !3283)
!3287 = !DILocation(line: 554, column: 11, scope: !3283)
!3288 = !DILocation(line: 556, column: 20, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3284, file: !55, line: 555, column: 13)
!3290 = !DILocation(line: 556, column: 17, scope: !3289)
!3291 = !DILocation(line: 557, column: 25, scope: !3289)
!3292 = !DILocation(line: 557, column: 24, scope: !3289)
!3293 = !DILocation(line: 557, column: 27, scope: !3289)
!3294 = !DILocation(line: 557, column: 22, scope: !3289)
!3295 = !DILocation(line: 557, column: 34, scope: !3289)
!3296 = !DILocation(line: 557, column: 32, scope: !3289)
!3297 = !DILocation(line: 557, column: 38, scope: !3289)
!3298 = !DILocation(line: 557, column: 36, scope: !3289)
!3299 = !DILocation(line: 557, column: 45, scope: !3289)
!3300 = !DILocation(line: 557, column: 49, scope: !3289)
!3301 = !DILocation(line: 557, column: 47, scope: !3289)
!3302 = !DILocation(line: 557, column: 51, scope: !3289)
!3303 = !DILocation(line: 557, column: 44, scope: !3289)
!3304 = !DILocation(line: 557, column: 58, scope: !3289)
!3305 = !DILocation(line: 557, column: 56, scope: !3289)
!3306 = !DILocation(line: 557, column: 42, scope: !3289)
!3307 = !DILocation(line: 558, column: 31, scope: !3289)
!3308 = !DILocation(line: 558, column: 35, scope: !3289)
!3309 = !DILocation(line: 558, column: 33, scope: !3289)
!3310 = !DILocation(line: 558, column: 21, scope: !3289)
!3311 = !DILocation(line: 557, column: 63, scope: !3289)
!3312 = !DILocation(line: 557, column: 19, scope: !3289)
!3313 = !DILocation(line: 559, column: 33, scope: !3289)
!3314 = !DILocation(line: 559, column: 28, scope: !3289)
!3315 = !DILocation(line: 559, column: 15, scope: !3289)
!3316 = !DILocation(line: 559, column: 31, scope: !3289)
!3317 = !DILocation(line: 561, column: 40, scope: !3289)
!3318 = !DILocation(line: 561, column: 39, scope: !3289)
!3319 = !DILocation(line: 561, column: 49, scope: !3289)
!3320 = !DILocation(line: 561, column: 53, scope: !3289)
!3321 = !DILocation(line: 561, column: 51, scope: !3289)
!3322 = !DILocation(line: 561, column: 48, scope: !3289)
!3323 = !DILocation(line: 561, column: 58, scope: !3289)
!3324 = !DILocation(line: 561, column: 56, scope: !3289)
!3325 = !DILocation(line: 561, column: 64, scope: !3289)
!3326 = !DILocation(line: 561, column: 68, scope: !3289)
!3327 = !DILocation(line: 561, column: 66, scope: !3289)
!3328 = !DILocation(line: 561, column: 72, scope: !3289)
!3329 = !DILocation(line: 561, column: 70, scope: !3289)
!3330 = !DILocation(line: 561, column: 62, scope: !3289)
!3331 = !DILocation(line: 561, column: 45, scope: !3289)
!3332 = !DILocation(line: 561, column: 34, scope: !3289)
!3333 = !DILocation(line: 561, column: 15, scope: !3289)
!3334 = !DILocation(line: 561, column: 37, scope: !3289)
!3335 = !DILocation(line: 565, column: 18, scope: !3289)
!3336 = !DILocation(line: 565, column: 22, scope: !3289)
!3337 = !DILocation(line: 565, column: 20, scope: !3289)
!3338 = !DILocation(line: 565, column: 26, scope: !3289)
!3339 = !DILocation(line: 565, column: 24, scope: !3289)
!3340 = !DILocation(line: 565, column: 34, scope: !3289)
!3341 = !DILocation(line: 565, column: 39, scope: !3289)
!3342 = !DILocation(line: 565, column: 41, scope: !3289)
!3343 = !DILocation(line: 565, column: 36, scope: !3289)
!3344 = !DILocation(line: 565, column: 32, scope: !3289)
!3345 = !DILocation(line: 565, column: 64, scope: !3289)
!3346 = !DILocation(line: 565, column: 51, scope: !3289)
!3347 = !DILocation(line: 565, column: 49, scope: !3289)
!3348 = !DILocation(line: 566, column: 17, scope: !3289)
!3349 = !DILocation(line: 566, column: 43, scope: !3289)
!3350 = !DILocation(line: 566, column: 24, scope: !3289)
!3351 = !DILocation(line: 566, column: 22, scope: !3289)
!3352 = !DILocation(line: 565, column: 67, scope: !3289)
!3353 = !DILocation(line: 564, column: 35, scope: !3289)
!3354 = !DILocation(line: 564, column: 15, scope: !3289)
!3355 = !DILocation(line: 564, column: 38, scope: !3289)
!3356 = !DILocation(line: 568, column: 21, scope: !3289)
!3357 = !DILocation(line: 568, column: 19, scope: !3289)
!3358 = !DILocation(line: 569, column: 21, scope: !3289)
!3359 = !DILocation(line: 569, column: 19, scope: !3289)
!3360 = !DILocation(line: 570, column: 13, scope: !3289)
!3361 = !DILocation(line: 554, column: 38, scope: !3362)
!3362 = !DILexicalBlockFile(scope: !3284, file: !55, discriminator: 2)
!3363 = !DILocation(line: 554, column: 11, scope: !3362)
!3364 = distinct !{!3364, !3365}
!3365 = !DILocation(line: 554, column: 11, scope: !3174)
!3366 = !DILocation(line: 571, column: 9, scope: !3174)
!3367 = !DILocation(line: 511, column: 34, scope: !3368)
!3368 = !DILexicalBlockFile(scope: !3168, file: !55, discriminator: 2)
!3369 = !DILocation(line: 511, column: 7, scope: !3368)
!3370 = distinct !{!3370, !3371}
!3371 = !DILocation(line: 511, column: 7, scope: !3018)
!3372 = !DILocation(line: 575, column: 16, scope: !3018)
!3373 = !DILocation(line: 575, column: 18, scope: !3018)
!3374 = !DILocation(line: 575, column: 13, scope: !3018)
!3375 = !DILocation(line: 576, column: 14, scope: !3018)
!3376 = !DILocation(line: 577, column: 14, scope: !3018)
!3377 = !DILocation(line: 577, column: 24, scope: !3018)
!3378 = !DILocation(line: 577, column: 22, scope: !3018)
!3379 = !DILocation(line: 577, column: 28, scope: !3018)
!3380 = !DILocation(line: 577, column: 26, scope: !3018)
!3381 = !DILocation(line: 577, column: 11, scope: !3018)
!3382 = !DILocation(line: 578, column: 29, scope: !3018)
!3383 = !DILocation(line: 578, column: 20, scope: !3018)
!3384 = !DILocation(line: 578, column: 7, scope: !3018)
!3385 = !DILocation(line: 578, column: 27, scope: !3018)
!3386 = !DILocation(line: 580, column: 35, scope: !3018)
!3387 = !DILocation(line: 580, column: 42, scope: !3018)
!3388 = !DILocation(line: 580, column: 40, scope: !3018)
!3389 = !DILocation(line: 580, column: 46, scope: !3018)
!3390 = !DILocation(line: 580, column: 44, scope: !3018)
!3391 = !DILocation(line: 580, column: 52, scope: !3018)
!3392 = !DILocation(line: 580, column: 50, scope: !3018)
!3393 = !DILocation(line: 580, column: 26, scope: !3018)
!3394 = !DILocation(line: 580, column: 7, scope: !3018)
!3395 = !DILocation(line: 580, column: 33, scope: !3018)
!3396 = !DILocation(line: 584, column: 9, scope: !3018)
!3397 = !DILocation(line: 584, column: 17, scope: !3018)
!3398 = !DILocation(line: 584, column: 25, scope: !3018)
!3399 = !DILocation(line: 584, column: 23, scope: !3018)
!3400 = !DILocation(line: 584, column: 33, scope: !3018)
!3401 = !DILocation(line: 584, column: 38, scope: !3018)
!3402 = !DILocation(line: 584, column: 30, scope: !3018)
!3403 = !DILocation(line: 584, column: 14, scope: !3018)
!3404 = !DILocation(line: 584, column: 61, scope: !3018)
!3405 = !DILocation(line: 584, column: 48, scope: !3018)
!3406 = !DILocation(line: 584, column: 46, scope: !3018)
!3407 = !DILocation(line: 585, column: 9, scope: !3018)
!3408 = !DILocation(line: 585, column: 35, scope: !3018)
!3409 = !DILocation(line: 585, column: 16, scope: !3018)
!3410 = !DILocation(line: 585, column: 14, scope: !3018)
!3411 = !DILocation(line: 584, column: 68, scope: !3018)
!3412 = !DILocation(line: 583, column: 27, scope: !3018)
!3413 = !DILocation(line: 583, column: 7, scope: !3018)
!3414 = !DILocation(line: 583, column: 34, scope: !3018)
!3415 = !DILocation(line: 588, column: 7, scope: !3018)
!3416 = !DILocation(line: 590, column: 1, scope: !2962)
!3417 = distinct !DISubprogram(name: "legendre_deriv2_array_schmidt_e", scope: !55, file: !55, line: 217, type: !2963, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!3418 = !DILocalVariable(name: "lmax", arg: 1, scope: !3417, file: !55, line: 218, type: !61)
!3419 = !DILocation(line: 218, column: 15, scope: !3417)
!3420 = !DILocalVariable(name: "x", arg: 2, scope: !3417, file: !55, line: 218, type: !65)
!3421 = !DILocation(line: 218, column: 34, scope: !3417)
!3422 = !DILocalVariable(name: "csphase", arg: 3, scope: !3417, file: !55, line: 218, type: !65)
!3423 = !DILocation(line: 218, column: 50, scope: !3417)
!3424 = !DILocalVariable(name: "result_array", arg: 4, scope: !3417, file: !55, line: 218, type: !66)
!3425 = !DILocation(line: 218, column: 59, scope: !3417)
!3426 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !3417, file: !55, line: 218, type: !66)
!3427 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !3417, file: !55, line: 218, type: !66)
!3428 = !DILocation(line: 220, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3417, file: !55, line: 220, column: 7)
!3430 = !DILocation(line: 220, column: 9, scope: !3429)
!3431 = !DILocation(line: 220, column: 15, scope: !3429)
!3432 = !DILocation(line: 220, column: 18, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3429, file: !55, discriminator: 1)
!3434 = !DILocation(line: 220, column: 20, scope: !3433)
!3435 = !DILocation(line: 220, column: 7, scope: !3433)
!3436 = !DILocation(line: 222, column: 7, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3429, file: !55, line: 221, column: 5)
!3438 = distinct !{!3438, !3436}
!3439 = !DILocation(line: 222, column: 7, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3441, file: !55, discriminator: 1)
!3441 = distinct !DILexicalBlock(scope: !3437, file: !55, line: 222, column: 7)
!3442 = !DILocation(line: 223, column: 5, scope: !3437)
!3443 = !DILocation(line: 225, column: 17, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3429, file: !55, line: 225, column: 12)
!3445 = !DILocation(line: 225, column: 12, scope: !3444)
!3446 = !DILocation(line: 225, column: 20, scope: !3444)
!3447 = !DILocation(line: 225, column: 12, scope: !3429)
!3448 = !DILocation(line: 227, column: 7, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3444, file: !55, line: 226, column: 5)
!3450 = distinct !{!3450, !3448}
!3451 = !DILocation(line: 227, column: 7, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !3453, file: !55, discriminator: 1)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !55, line: 227, column: 7)
!3454 = !DILocation(line: 228, column: 5, scope: !3449)
!3455 = !DILocation(line: 230, column: 12, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3444, file: !55, line: 230, column: 12)
!3457 = !DILocation(line: 230, column: 20, scope: !3456)
!3458 = !DILocation(line: 230, column: 27, scope: !3456)
!3459 = !DILocation(line: 230, column: 30, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3456, file: !55, discriminator: 1)
!3461 = !DILocation(line: 230, column: 38, scope: !3460)
!3462 = !DILocation(line: 230, column: 12, scope: !3460)
!3463 = !DILocation(line: 232, column: 7, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3456, file: !55, line: 231, column: 5)
!3465 = distinct !{!3465, !3463}
!3466 = !DILocation(line: 232, column: 7, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !3468, file: !55, discriminator: 1)
!3468 = distinct !DILexicalBlock(scope: !3464, file: !55, line: 232, column: 7)
!3469 = !DILocation(line: 233, column: 5, scope: !3464)
!3470 = !DILocalVariable(name: "eps", scope: !3471, file: !55, line: 236, type: !65)
!3471 = distinct !DILexicalBlock(scope: !3456, file: !55, line: 235, column: 5)
!3472 = !DILocation(line: 236, column: 20, scope: !3471)
!3473 = !DILocalVariable(name: "u", scope: !3471, file: !55, line: 237, type: !65)
!3474 = !DILocation(line: 237, column: 20, scope: !3471)
!3475 = !DILocation(line: 237, column: 36, scope: !3471)
!3476 = !DILocation(line: 237, column: 34, scope: !3471)
!3477 = !DILocation(line: 237, column: 48, scope: !3471)
!3478 = !DILocation(line: 237, column: 46, scope: !3471)
!3479 = !DILocation(line: 237, column: 39, scope: !3471)
!3480 = !DILocation(line: 237, column: 24, scope: !3471)
!3481 = !DILocalVariable(name: "uinv", scope: !3471, file: !55, line: 239, type: !65)
!3482 = !DILocation(line: 239, column: 20, scope: !3471)
!3483 = !DILocation(line: 239, column: 33, scope: !3471)
!3484 = !DILocation(line: 239, column: 31, scope: !3471)
!3485 = !DILocalVariable(name: "uinv2", scope: !3471, file: !55, line: 242, type: !65)
!3486 = !DILocation(line: 242, column: 20, scope: !3471)
!3487 = !DILocation(line: 242, column: 34, scope: !3471)
!3488 = !DILocation(line: 242, column: 32, scope: !3471)
!3489 = !DILocation(line: 242, column: 38, scope: !3471)
!3490 = !DILocation(line: 242, column: 36, scope: !3471)
!3491 = !DILocalVariable(name: "xbyu", scope: !3471, file: !55, line: 245, type: !65)
!3492 = !DILocation(line: 245, column: 20, scope: !3471)
!3493 = !DILocation(line: 245, column: 27, scope: !3471)
!3494 = !DILocation(line: 245, column: 31, scope: !3471)
!3495 = !DILocation(line: 245, column: 29, scope: !3471)
!3496 = !DILocalVariable(name: "l", scope: !3471, file: !55, line: 247, type: !62)
!3497 = !DILocation(line: 247, column: 14, scope: !3471)
!3498 = !DILocalVariable(name: "m", scope: !3471, file: !55, line: 247, type: !62)
!3499 = !DILocation(line: 247, column: 17, scope: !3471)
!3500 = !DILocalVariable(name: "k", scope: !3471, file: !55, line: 248, type: !62)
!3501 = !DILocation(line: 248, column: 14, scope: !3471)
!3502 = !DILocalVariable(name: "idxmm", scope: !3471, file: !55, line: 248, type: !62)
!3503 = !DILocation(line: 248, column: 17, scope: !3471)
!3504 = !DILocalVariable(name: "plm", scope: !3471, file: !55, line: 249, type: !49)
!3505 = !DILocation(line: 249, column: 14, scope: !3471)
!3506 = !DILocalVariable(name: "pmm", scope: !3471, file: !55, line: 250, type: !49)
!3507 = !DILocation(line: 250, column: 14, scope: !3471)
!3508 = !DILocalVariable(name: "rescalem", scope: !3471, file: !55, line: 251, type: !49)
!3509 = !DILocation(line: 251, column: 14, scope: !3471)
!3510 = !DILocalVariable(name: "pm1", scope: !3471, file: !55, line: 252, type: !49)
!3511 = !DILocation(line: 252, column: 14, scope: !3471)
!3512 = !DILocalVariable(name: "pm2", scope: !3471, file: !55, line: 253, type: !49)
!3513 = !DILocation(line: 253, column: 14, scope: !3471)
!3514 = !DILocalVariable(name: "nlm", scope: !3471, file: !55, line: 254, type: !62)
!3515 = !DILocation(line: 254, column: 14, scope: !3471)
!3516 = !DILocation(line: 254, column: 40, scope: !3471)
!3517 = !DILocation(line: 254, column: 20, scope: !3471)
!3518 = !DILocalVariable(name: "sqrts", scope: !3471, file: !55, line: 255, type: !66)
!3519 = !DILocation(line: 255, column: 15, scope: !3471)
!3520 = !DILocation(line: 255, column: 38, scope: !3471)
!3521 = !DILocation(line: 255, column: 25, scope: !3471)
!3522 = !DILocation(line: 258, column: 22, scope: !3471)
!3523 = !DILocation(line: 258, column: 28, scope: !3471)
!3524 = !DILocation(line: 258, column: 7, scope: !3471)
!3525 = !DILocation(line: 261, column: 11, scope: !3471)
!3526 = !DILocation(line: 262, column: 13, scope: !3471)
!3527 = !DILocation(line: 262, column: 11, scope: !3471)
!3528 = !DILocation(line: 264, column: 25, scope: !3471)
!3529 = !DILocation(line: 264, column: 7, scope: !3471)
!3530 = !DILocation(line: 264, column: 23, scope: !3471)
!3531 = !DILocation(line: 266, column: 7, scope: !3471)
!3532 = !DILocation(line: 266, column: 29, scope: !3471)
!3533 = !DILocation(line: 269, column: 7, scope: !3471)
!3534 = !DILocation(line: 269, column: 30, scope: !3471)
!3535 = !DILocation(line: 272, column: 11, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3471, file: !55, line: 272, column: 11)
!3537 = !DILocation(line: 272, column: 16, scope: !3536)
!3538 = !DILocation(line: 272, column: 11, scope: !3471)
!3539 = !DILocation(line: 273, column: 9, scope: !3536)
!3540 = !DILocation(line: 275, column: 25, scope: !3471)
!3541 = !DILocation(line: 275, column: 7, scope: !3471)
!3542 = !DILocation(line: 275, column: 23, scope: !3471)
!3543 = !DILocation(line: 277, column: 32, scope: !3471)
!3544 = !DILocation(line: 277, column: 31, scope: !3471)
!3545 = !DILocation(line: 277, column: 7, scope: !3471)
!3546 = !DILocation(line: 277, column: 29, scope: !3471)
!3547 = !DILocation(line: 280, column: 33, scope: !3471)
!3548 = !DILocation(line: 280, column: 32, scope: !3471)
!3549 = !DILocation(line: 280, column: 7, scope: !3471)
!3550 = !DILocation(line: 280, column: 30, scope: !3471)
!3551 = !DILocation(line: 285, column: 9, scope: !3471)
!3552 = !DILocation(line: 286, column: 14, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3471, file: !55, line: 286, column: 7)
!3554 = !DILocation(line: 286, column: 12, scope: !3553)
!3555 = !DILocation(line: 286, column: 19, scope: !3556)
!3556 = !DILexicalBlockFile(scope: !3557, file: !55, discriminator: 1)
!3557 = distinct !DILexicalBlock(scope: !3553, file: !55, line: 286, column: 7)
!3558 = !DILocation(line: 286, column: 24, scope: !3556)
!3559 = !DILocation(line: 286, column: 21, scope: !3556)
!3560 = !DILocation(line: 286, column: 7, scope: !3556)
!3561 = !DILocalVariable(name: "linv", scope: !3562, file: !55, line: 288, type: !49)
!3562 = distinct !DILexicalBlock(scope: !3557, file: !55, line: 287, column: 9)
!3563 = !DILocation(line: 288, column: 18, scope: !3562)
!3564 = !DILocation(line: 288, column: 39, scope: !3562)
!3565 = !DILocation(line: 288, column: 31, scope: !3562)
!3566 = !DILocation(line: 288, column: 29, scope: !3562)
!3567 = !DILocation(line: 290, column: 16, scope: !3562)
!3568 = !DILocation(line: 290, column: 13, scope: !3562)
!3569 = !DILocation(line: 292, column: 24, scope: !3562)
!3570 = !DILocation(line: 292, column: 22, scope: !3562)
!3571 = !DILocation(line: 292, column: 32, scope: !3562)
!3572 = !DILocation(line: 292, column: 30, scope: !3562)
!3573 = !DILocation(line: 292, column: 36, scope: !3562)
!3574 = !DILocation(line: 292, column: 34, scope: !3562)
!3575 = !DILocation(line: 292, column: 49, scope: !3562)
!3576 = !DILocation(line: 292, column: 47, scope: !3562)
!3577 = !DILocation(line: 292, column: 57, scope: !3562)
!3578 = !DILocation(line: 292, column: 55, scope: !3562)
!3579 = !DILocation(line: 292, column: 40, scope: !3562)
!3580 = !DILocation(line: 292, column: 15, scope: !3562)
!3581 = !DILocation(line: 293, column: 29, scope: !3562)
!3582 = !DILocation(line: 293, column: 24, scope: !3562)
!3583 = !DILocation(line: 293, column: 11, scope: !3562)
!3584 = !DILocation(line: 293, column: 27, scope: !3562)
!3585 = !DILocation(line: 295, column: 35, scope: !3562)
!3586 = !DILocation(line: 295, column: 42, scope: !3562)
!3587 = !DILocation(line: 295, column: 40, scope: !3562)
!3588 = !DILocation(line: 295, column: 47, scope: !3562)
!3589 = !DILocation(line: 295, column: 51, scope: !3562)
!3590 = !DILocation(line: 295, column: 49, scope: !3562)
!3591 = !DILocation(line: 295, column: 57, scope: !3562)
!3592 = !DILocation(line: 295, column: 55, scope: !3562)
!3593 = !DILocation(line: 295, column: 44, scope: !3562)
!3594 = !DILocation(line: 295, column: 30, scope: !3562)
!3595 = !DILocation(line: 295, column: 11, scope: !3562)
!3596 = !DILocation(line: 295, column: 33, scope: !3562)
!3597 = !DILocation(line: 298, column: 46, scope: !3562)
!3598 = !DILocation(line: 298, column: 37, scope: !3562)
!3599 = !DILocation(line: 298, column: 36, scope: !3562)
!3600 = !DILocation(line: 298, column: 51, scope: !3562)
!3601 = !DILocation(line: 298, column: 53, scope: !3562)
!3602 = !DILocation(line: 298, column: 48, scope: !3562)
!3603 = !DILocation(line: 298, column: 62, scope: !3562)
!3604 = !DILocation(line: 298, column: 60, scope: !3562)
!3605 = !DILocation(line: 299, column: 36, scope: !3562)
!3606 = !DILocation(line: 299, column: 62, scope: !3562)
!3607 = !DILocation(line: 299, column: 43, scope: !3562)
!3608 = !DILocation(line: 299, column: 41, scope: !3562)
!3609 = !DILocation(line: 298, column: 66, scope: !3562)
!3610 = !DILocation(line: 298, column: 31, scope: !3562)
!3611 = !DILocation(line: 298, column: 11, scope: !3562)
!3612 = !DILocation(line: 298, column: 34, scope: !3562)
!3613 = !DILocation(line: 301, column: 17, scope: !3562)
!3614 = !DILocation(line: 301, column: 15, scope: !3562)
!3615 = !DILocation(line: 302, column: 17, scope: !3562)
!3616 = !DILocation(line: 302, column: 15, scope: !3562)
!3617 = !DILocation(line: 303, column: 9, scope: !3562)
!3618 = !DILocation(line: 286, column: 30, scope: !3619)
!3619 = !DILexicalBlockFile(scope: !3557, file: !55, discriminator: 2)
!3620 = !DILocation(line: 286, column: 7, scope: !3619)
!3621 = distinct !{!3621, !3622}
!3622 = !DILocation(line: 286, column: 7, scope: !3471)
!3623 = !DILocation(line: 316, column: 13, scope: !3471)
!3624 = !DILocation(line: 316, column: 23, scope: !3471)
!3625 = !DILocation(line: 316, column: 11, scope: !3471)
!3626 = !DILocation(line: 318, column: 16, scope: !3471)
!3627 = !DILocation(line: 319, column: 13, scope: !3471)
!3628 = !DILocation(line: 321, column: 14, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3471, file: !55, line: 321, column: 7)
!3630 = !DILocation(line: 321, column: 12, scope: !3629)
!3631 = !DILocation(line: 321, column: 19, scope: !3632)
!3632 = !DILexicalBlockFile(scope: !3633, file: !55, discriminator: 1)
!3633 = distinct !DILexicalBlock(scope: !3629, file: !55, line: 321, column: 7)
!3634 = !DILocation(line: 321, column: 23, scope: !3632)
!3635 = !DILocation(line: 321, column: 21, scope: !3632)
!3636 = !DILocation(line: 321, column: 7, scope: !3632)
!3637 = !DILocation(line: 324, column: 23, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3633, file: !55, line: 322, column: 9)
!3639 = !DILocation(line: 324, column: 20, scope: !3638)
!3640 = !DILocation(line: 332, column: 20, scope: !3638)
!3641 = !DILocation(line: 332, column: 22, scope: !3638)
!3642 = !DILocation(line: 332, column: 17, scope: !3638)
!3643 = !DILocation(line: 333, column: 18, scope: !3638)
!3644 = !DILocation(line: 333, column: 38, scope: !3638)
!3645 = !DILocation(line: 333, column: 36, scope: !3638)
!3646 = !DILocation(line: 333, column: 40, scope: !3638)
!3647 = !DILocation(line: 333, column: 28, scope: !3638)
!3648 = !DILocation(line: 333, column: 26, scope: !3638)
!3649 = !DILocation(line: 333, column: 57, scope: !3638)
!3650 = !DILocation(line: 333, column: 55, scope: !3638)
!3651 = !DILocation(line: 333, column: 47, scope: !3638)
!3652 = !DILocation(line: 333, column: 45, scope: !3638)
!3653 = !DILocation(line: 333, column: 15, scope: !3638)
!3654 = !DILocation(line: 334, column: 33, scope: !3638)
!3655 = !DILocation(line: 334, column: 39, scope: !3638)
!3656 = !DILocation(line: 334, column: 37, scope: !3638)
!3657 = !DILocation(line: 334, column: 24, scope: !3638)
!3658 = !DILocation(line: 334, column: 11, scope: !3638)
!3659 = !DILocation(line: 334, column: 31, scope: !3638)
!3660 = !DILocation(line: 336, column: 39, scope: !3638)
!3661 = !DILocation(line: 336, column: 43, scope: !3638)
!3662 = !DILocation(line: 336, column: 41, scope: !3638)
!3663 = !DILocation(line: 336, column: 63, scope: !3638)
!3664 = !DILocation(line: 336, column: 50, scope: !3638)
!3665 = !DILocation(line: 336, column: 48, scope: !3638)
!3666 = !DILocation(line: 336, column: 30, scope: !3638)
!3667 = !DILocation(line: 336, column: 11, scope: !3638)
!3668 = !DILocation(line: 336, column: 37, scope: !3638)
!3669 = !DILocation(line: 340, column: 13, scope: !3638)
!3670 = !DILocation(line: 340, column: 18, scope: !3638)
!3671 = !DILocation(line: 340, column: 26, scope: !3638)
!3672 = !DILocation(line: 340, column: 24, scope: !3638)
!3673 = !DILocation(line: 340, column: 31, scope: !3638)
!3674 = !DILocation(line: 340, column: 33, scope: !3638)
!3675 = !DILocation(line: 340, column: 28, scope: !3638)
!3676 = !DILocation(line: 340, column: 15, scope: !3638)
!3677 = !DILocation(line: 340, column: 56, scope: !3638)
!3678 = !DILocation(line: 340, column: 43, scope: !3638)
!3679 = !DILocation(line: 340, column: 41, scope: !3638)
!3680 = !DILocation(line: 341, column: 13, scope: !3638)
!3681 = !DILocation(line: 341, column: 39, scope: !3638)
!3682 = !DILocation(line: 341, column: 20, scope: !3638)
!3683 = !DILocation(line: 341, column: 18, scope: !3638)
!3684 = !DILocation(line: 340, column: 63, scope: !3638)
!3685 = !DILocation(line: 339, column: 31, scope: !3638)
!3686 = !DILocation(line: 339, column: 11, scope: !3638)
!3687 = !DILocation(line: 339, column: 38, scope: !3638)
!3688 = !DILocation(line: 343, column: 17, scope: !3638)
!3689 = !DILocation(line: 343, column: 15, scope: !3638)
!3690 = !DILocation(line: 351, column: 15, scope: !3638)
!3691 = !DILocation(line: 351, column: 23, scope: !3638)
!3692 = !DILocation(line: 351, column: 21, scope: !3638)
!3693 = !DILocation(line: 351, column: 25, scope: !3638)
!3694 = !DILocation(line: 351, column: 13, scope: !3638)
!3695 = !DILocation(line: 352, column: 17, scope: !3638)
!3696 = !DILocation(line: 352, column: 31, scope: !3638)
!3697 = !DILocation(line: 352, column: 29, scope: !3638)
!3698 = !DILocation(line: 352, column: 33, scope: !3638)
!3699 = !DILocation(line: 352, column: 21, scope: !3638)
!3700 = !DILocation(line: 352, column: 19, scope: !3638)
!3701 = !DILocation(line: 352, column: 40, scope: !3638)
!3702 = !DILocation(line: 352, column: 38, scope: !3638)
!3703 = !DILocation(line: 352, column: 15, scope: !3638)
!3704 = !DILocation(line: 353, column: 29, scope: !3638)
!3705 = !DILocation(line: 353, column: 35, scope: !3638)
!3706 = !DILocation(line: 353, column: 33, scope: !3638)
!3707 = !DILocation(line: 353, column: 24, scope: !3638)
!3708 = !DILocation(line: 353, column: 11, scope: !3638)
!3709 = !DILocation(line: 353, column: 27, scope: !3638)
!3710 = !DILocation(line: 356, column: 13, scope: !3638)
!3711 = !DILocation(line: 356, column: 22, scope: !3638)
!3712 = !DILocation(line: 356, column: 24, scope: !3638)
!3713 = !DILocation(line: 356, column: 33, scope: !3638)
!3714 = !DILocation(line: 356, column: 31, scope: !3638)
!3715 = !DILocation(line: 356, column: 50, scope: !3638)
!3716 = !DILocation(line: 356, column: 37, scope: !3638)
!3717 = !DILocation(line: 356, column: 35, scope: !3638)
!3718 = !DILocation(line: 357, column: 31, scope: !3638)
!3719 = !DILocation(line: 357, column: 29, scope: !3638)
!3720 = !DILocation(line: 357, column: 33, scope: !3638)
!3721 = !DILocation(line: 357, column: 21, scope: !3638)
!3722 = !DILocation(line: 357, column: 53, scope: !3638)
!3723 = !DILocation(line: 357, column: 40, scope: !3638)
!3724 = !DILocation(line: 357, column: 38, scope: !3638)
!3725 = !DILocation(line: 356, column: 53, scope: !3638)
!3726 = !DILocation(line: 356, column: 18, scope: !3638)
!3727 = !DILocation(line: 355, column: 30, scope: !3638)
!3728 = !DILocation(line: 355, column: 11, scope: !3638)
!3729 = !DILocation(line: 355, column: 33, scope: !3638)
!3730 = !DILocation(line: 361, column: 14, scope: !3638)
!3731 = !DILocation(line: 361, column: 18, scope: !3638)
!3732 = !DILocation(line: 361, column: 16, scope: !3638)
!3733 = !DILocation(line: 361, column: 22, scope: !3638)
!3734 = !DILocation(line: 361, column: 20, scope: !3638)
!3735 = !DILocation(line: 361, column: 31, scope: !3638)
!3736 = !DILocation(line: 361, column: 33, scope: !3638)
!3737 = !DILocation(line: 361, column: 43, scope: !3638)
!3738 = !DILocation(line: 361, column: 45, scope: !3638)
!3739 = !DILocation(line: 361, column: 40, scope: !3638)
!3740 = !DILocation(line: 361, column: 28, scope: !3638)
!3741 = !DILocation(line: 361, column: 68, scope: !3638)
!3742 = !DILocation(line: 361, column: 55, scope: !3638)
!3743 = !DILocation(line: 361, column: 53, scope: !3638)
!3744 = !DILocation(line: 362, column: 13, scope: !3638)
!3745 = !DILocation(line: 362, column: 39, scope: !3638)
!3746 = !DILocation(line: 362, column: 20, scope: !3638)
!3747 = !DILocation(line: 362, column: 18, scope: !3638)
!3748 = !DILocation(line: 361, column: 71, scope: !3638)
!3749 = !DILocation(line: 360, column: 31, scope: !3638)
!3750 = !DILocation(line: 360, column: 11, scope: !3638)
!3751 = !DILocation(line: 360, column: 34, scope: !3638)
!3752 = !DILocation(line: 366, column: 20, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3638, file: !55, line: 366, column: 11)
!3754 = !DILocation(line: 366, column: 22, scope: !3753)
!3755 = !DILocation(line: 366, column: 18, scope: !3753)
!3756 = !DILocation(line: 366, column: 16, scope: !3753)
!3757 = !DILocation(line: 366, column: 27, scope: !3758)
!3758 = !DILexicalBlockFile(scope: !3759, file: !55, discriminator: 1)
!3759 = distinct !DILexicalBlock(scope: !3753, file: !55, line: 366, column: 11)
!3760 = !DILocation(line: 366, column: 32, scope: !3758)
!3761 = !DILocation(line: 366, column: 29, scope: !3758)
!3762 = !DILocation(line: 366, column: 11, scope: !3758)
!3763 = !DILocation(line: 368, column: 20, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3759, file: !55, line: 367, column: 13)
!3765 = !DILocation(line: 368, column: 17, scope: !3764)
!3766 = !DILocation(line: 370, column: 20, scope: !3764)
!3767 = !DILocation(line: 370, column: 19, scope: !3764)
!3768 = !DILocation(line: 370, column: 22, scope: !3764)
!3769 = !DILocation(line: 370, column: 17, scope: !3764)
!3770 = !DILocation(line: 370, column: 35, scope: !3764)
!3771 = !DILocation(line: 370, column: 39, scope: !3764)
!3772 = !DILocation(line: 370, column: 37, scope: !3764)
!3773 = !DILocation(line: 370, column: 29, scope: !3764)
!3774 = !DILocation(line: 370, column: 27, scope: !3764)
!3775 = !DILocation(line: 370, column: 50, scope: !3764)
!3776 = !DILocation(line: 370, column: 54, scope: !3764)
!3777 = !DILocation(line: 370, column: 52, scope: !3764)
!3778 = !DILocation(line: 370, column: 44, scope: !3764)
!3779 = !DILocation(line: 370, column: 42, scope: !3764)
!3780 = !DILocation(line: 370, column: 59, scope: !3764)
!3781 = !DILocation(line: 370, column: 57, scope: !3764)
!3782 = !DILocation(line: 370, column: 63, scope: !3764)
!3783 = !DILocation(line: 370, column: 61, scope: !3764)
!3784 = !DILocation(line: 371, column: 23, scope: !3764)
!3785 = !DILocation(line: 371, column: 27, scope: !3764)
!3786 = !DILocation(line: 371, column: 25, scope: !3764)
!3787 = !DILocation(line: 371, column: 29, scope: !3764)
!3788 = !DILocation(line: 371, column: 17, scope: !3764)
!3789 = !DILocation(line: 371, column: 42, scope: !3764)
!3790 = !DILocation(line: 371, column: 46, scope: !3764)
!3791 = !DILocation(line: 371, column: 44, scope: !3764)
!3792 = !DILocation(line: 371, column: 48, scope: !3764)
!3793 = !DILocation(line: 371, column: 36, scope: !3764)
!3794 = !DILocation(line: 371, column: 34, scope: !3764)
!3795 = !DILocation(line: 372, column: 23, scope: !3764)
!3796 = !DILocation(line: 372, column: 27, scope: !3764)
!3797 = !DILocation(line: 372, column: 25, scope: !3764)
!3798 = !DILocation(line: 372, column: 17, scope: !3764)
!3799 = !DILocation(line: 371, column: 53, scope: !3764)
!3800 = !DILocation(line: 372, column: 38, scope: !3764)
!3801 = !DILocation(line: 372, column: 42, scope: !3764)
!3802 = !DILocation(line: 372, column: 40, scope: !3764)
!3803 = !DILocation(line: 372, column: 32, scope: !3764)
!3804 = !DILocation(line: 372, column: 30, scope: !3764)
!3805 = !DILocation(line: 372, column: 47, scope: !3764)
!3806 = !DILocation(line: 372, column: 45, scope: !3764)
!3807 = !DILocation(line: 370, column: 67, scope: !3764)
!3808 = !DILocation(line: 369, column: 19, scope: !3764)
!3809 = !DILocation(line: 373, column: 33, scope: !3764)
!3810 = !DILocation(line: 373, column: 39, scope: !3764)
!3811 = !DILocation(line: 373, column: 37, scope: !3764)
!3812 = !DILocation(line: 373, column: 28, scope: !3764)
!3813 = !DILocation(line: 373, column: 15, scope: !3764)
!3814 = !DILocation(line: 373, column: 31, scope: !3764)
!3815 = !DILocation(line: 376, column: 17, scope: !3764)
!3816 = !DILocation(line: 376, column: 25, scope: !3764)
!3817 = !DILocation(line: 376, column: 29, scope: !3764)
!3818 = !DILocation(line: 376, column: 27, scope: !3764)
!3819 = !DILocation(line: 376, column: 46, scope: !3764)
!3820 = !DILocation(line: 376, column: 33, scope: !3764)
!3821 = !DILocation(line: 376, column: 31, scope: !3764)
!3822 = !DILocation(line: 377, column: 31, scope: !3764)
!3823 = !DILocation(line: 377, column: 35, scope: !3764)
!3824 = !DILocation(line: 377, column: 33, scope: !3764)
!3825 = !DILocation(line: 377, column: 25, scope: !3764)
!3826 = !DILocation(line: 377, column: 46, scope: !3764)
!3827 = !DILocation(line: 377, column: 50, scope: !3764)
!3828 = !DILocation(line: 377, column: 48, scope: !3764)
!3829 = !DILocation(line: 377, column: 40, scope: !3764)
!3830 = !DILocation(line: 377, column: 38, scope: !3764)
!3831 = !DILocation(line: 377, column: 68, scope: !3764)
!3832 = !DILocation(line: 377, column: 72, scope: !3764)
!3833 = !DILocation(line: 377, column: 70, scope: !3764)
!3834 = !DILocation(line: 377, column: 55, scope: !3764)
!3835 = !DILocation(line: 377, column: 53, scope: !3764)
!3836 = !DILocation(line: 376, column: 49, scope: !3764)
!3837 = !DILocation(line: 376, column: 22, scope: !3764)
!3838 = !DILocation(line: 375, column: 34, scope: !3764)
!3839 = !DILocation(line: 375, column: 15, scope: !3764)
!3840 = !DILocation(line: 375, column: 37, scope: !3764)
!3841 = !DILocation(line: 381, column: 18, scope: !3764)
!3842 = !DILocation(line: 381, column: 22, scope: !3764)
!3843 = !DILocation(line: 381, column: 20, scope: !3764)
!3844 = !DILocation(line: 381, column: 26, scope: !3764)
!3845 = !DILocation(line: 381, column: 24, scope: !3764)
!3846 = !DILocation(line: 381, column: 34, scope: !3764)
!3847 = !DILocation(line: 381, column: 39, scope: !3764)
!3848 = !DILocation(line: 381, column: 41, scope: !3764)
!3849 = !DILocation(line: 381, column: 36, scope: !3764)
!3850 = !DILocation(line: 381, column: 32, scope: !3764)
!3851 = !DILocation(line: 381, column: 64, scope: !3764)
!3852 = !DILocation(line: 381, column: 51, scope: !3764)
!3853 = !DILocation(line: 381, column: 49, scope: !3764)
!3854 = !DILocation(line: 382, column: 17, scope: !3764)
!3855 = !DILocation(line: 382, column: 43, scope: !3764)
!3856 = !DILocation(line: 382, column: 24, scope: !3764)
!3857 = !DILocation(line: 382, column: 22, scope: !3764)
!3858 = !DILocation(line: 381, column: 67, scope: !3764)
!3859 = !DILocation(line: 380, column: 35, scope: !3764)
!3860 = !DILocation(line: 380, column: 15, scope: !3764)
!3861 = !DILocation(line: 380, column: 38, scope: !3764)
!3862 = !DILocation(line: 384, column: 21, scope: !3764)
!3863 = !DILocation(line: 384, column: 19, scope: !3764)
!3864 = !DILocation(line: 385, column: 21, scope: !3764)
!3865 = !DILocation(line: 385, column: 19, scope: !3764)
!3866 = !DILocation(line: 386, column: 13, scope: !3764)
!3867 = !DILocation(line: 366, column: 38, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !3759, file: !55, discriminator: 2)
!3869 = !DILocation(line: 366, column: 11, scope: !3868)
!3870 = distinct !{!3870, !3871}
!3871 = !DILocation(line: 366, column: 11, scope: !3638)
!3872 = !DILocation(line: 387, column: 9, scope: !3638)
!3873 = !DILocation(line: 321, column: 29, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3633, file: !55, discriminator: 2)
!3875 = !DILocation(line: 321, column: 7, scope: !3874)
!3876 = distinct !{!3876, !3877}
!3877 = !DILocation(line: 321, column: 7, scope: !3471)
!3878 = !DILocation(line: 391, column: 19, scope: !3471)
!3879 = !DILocation(line: 391, column: 16, scope: !3471)
!3880 = !DILocation(line: 392, column: 16, scope: !3471)
!3881 = !DILocation(line: 392, column: 18, scope: !3471)
!3882 = !DILocation(line: 392, column: 13, scope: !3471)
!3883 = !DILocation(line: 393, column: 14, scope: !3471)
!3884 = !DILocation(line: 393, column: 34, scope: !3471)
!3885 = !DILocation(line: 393, column: 32, scope: !3471)
!3886 = !DILocation(line: 393, column: 39, scope: !3471)
!3887 = !DILocation(line: 393, column: 24, scope: !3471)
!3888 = !DILocation(line: 393, column: 22, scope: !3471)
!3889 = !DILocation(line: 393, column: 56, scope: !3471)
!3890 = !DILocation(line: 393, column: 54, scope: !3471)
!3891 = !DILocation(line: 393, column: 46, scope: !3471)
!3892 = !DILocation(line: 393, column: 44, scope: !3471)
!3893 = !DILocation(line: 393, column: 11, scope: !3471)
!3894 = !DILocation(line: 394, column: 29, scope: !3471)
!3895 = !DILocation(line: 394, column: 35, scope: !3471)
!3896 = !DILocation(line: 394, column: 33, scope: !3471)
!3897 = !DILocation(line: 394, column: 20, scope: !3471)
!3898 = !DILocation(line: 394, column: 7, scope: !3471)
!3899 = !DILocation(line: 394, column: 27, scope: !3471)
!3900 = !DILocation(line: 396, column: 35, scope: !3471)
!3901 = !DILocation(line: 396, column: 42, scope: !3471)
!3902 = !DILocation(line: 396, column: 40, scope: !3471)
!3903 = !DILocation(line: 396, column: 62, scope: !3471)
!3904 = !DILocation(line: 396, column: 49, scope: !3471)
!3905 = !DILocation(line: 396, column: 47, scope: !3471)
!3906 = !DILocation(line: 396, column: 26, scope: !3471)
!3907 = !DILocation(line: 396, column: 7, scope: !3471)
!3908 = !DILocation(line: 396, column: 33, scope: !3471)
!3909 = !DILocation(line: 400, column: 9, scope: !3471)
!3910 = !DILocation(line: 400, column: 17, scope: !3471)
!3911 = !DILocation(line: 400, column: 25, scope: !3471)
!3912 = !DILocation(line: 400, column: 23, scope: !3471)
!3913 = !DILocation(line: 400, column: 33, scope: !3471)
!3914 = !DILocation(line: 400, column: 38, scope: !3471)
!3915 = !DILocation(line: 400, column: 30, scope: !3471)
!3916 = !DILocation(line: 400, column: 14, scope: !3471)
!3917 = !DILocation(line: 400, column: 61, scope: !3471)
!3918 = !DILocation(line: 400, column: 48, scope: !3471)
!3919 = !DILocation(line: 400, column: 46, scope: !3471)
!3920 = !DILocation(line: 401, column: 9, scope: !3471)
!3921 = !DILocation(line: 401, column: 35, scope: !3471)
!3922 = !DILocation(line: 401, column: 16, scope: !3471)
!3923 = !DILocation(line: 401, column: 14, scope: !3471)
!3924 = !DILocation(line: 400, column: 68, scope: !3471)
!3925 = !DILocation(line: 399, column: 27, scope: !3471)
!3926 = !DILocation(line: 399, column: 7, scope: !3471)
!3927 = !DILocation(line: 399, column: 34, scope: !3471)
!3928 = !DILocation(line: 404, column: 7, scope: !3471)
!3929 = !DILocation(line: 406, column: 1, scope: !3417)
!3930 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_alt_array", scope: !55, file: !55, line: 74, type: !2704, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!3931 = !DILocalVariable(name: "norm", arg: 1, scope: !3930, file: !55, line: 75, type: !59)
!3932 = !DILocation(line: 75, column: 26, scope: !3930)
!3933 = !DILocalVariable(name: "lmax", arg: 2, scope: !3930, file: !55, line: 75, type: !61)
!3934 = !DILocation(line: 75, column: 45, scope: !3930)
!3935 = !DILocalVariable(name: "x", arg: 3, scope: !3930, file: !55, line: 75, type: !65)
!3936 = !DILocation(line: 75, column: 64, scope: !3930)
!3937 = !DILocalVariable(name: "result_array", arg: 4, scope: !3930, file: !55, line: 76, type: !66)
!3938 = !DILocation(line: 76, column: 2, scope: !3930)
!3939 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !3930, file: !55, line: 76, type: !66)
!3940 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !3930, file: !55, line: 76, type: !66)
!3941 = !DILocalVariable(name: "s", scope: !3930, file: !55, line: 78, type: !58)
!3942 = !DILocation(line: 78, column: 7, scope: !3930)
!3943 = !DILocation(line: 78, column: 47, scope: !3930)
!3944 = !DILocation(line: 78, column: 53, scope: !3930)
!3945 = !DILocation(line: 78, column: 59, scope: !3930)
!3946 = !DILocation(line: 78, column: 67, scope: !3930)
!3947 = !DILocation(line: 78, column: 11, scope: !3930)
!3948 = !DILocation(line: 79, column: 10, scope: !3930)
!3949 = !DILocation(line: 79, column: 3, scope: !3930)
!3950 = distinct !DISubprogram(name: "gsl_sf_legendre_deriv2_alt_array_e", scope: !55, file: !55, line: 95, type: !2726, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!3951 = !DILocalVariable(name: "norm", arg: 1, scope: !3950, file: !55, line: 96, type: !59)
!3952 = !DILocation(line: 96, column: 26, scope: !3950)
!3953 = !DILocalVariable(name: "lmax", arg: 2, scope: !3950, file: !55, line: 96, type: !61)
!3954 = !DILocation(line: 96, column: 45, scope: !3950)
!3955 = !DILocalVariable(name: "x", arg: 3, scope: !3950, file: !55, line: 96, type: !65)
!3956 = !DILocation(line: 96, column: 64, scope: !3950)
!3957 = !DILocalVariable(name: "csphase", arg: 4, scope: !3950, file: !55, line: 97, type: !65)
!3958 = !DILocation(line: 97, column: 15, scope: !3950)
!3959 = !DILocalVariable(name: "result_array", arg: 5, scope: !3950, file: !55, line: 97, type: !66)
!3960 = !DILocation(line: 97, column: 24, scope: !3950)
!3961 = !DILocalVariable(name: "result_deriv_array", arg: 6, scope: !3950, file: !55, line: 97, type: !66)
!3962 = !DILocalVariable(name: "result_deriv2_array", arg: 7, scope: !3950, file: !55, line: 97, type: !66)
!3963 = !DILocalVariable(name: "s", scope: !3950, file: !55, line: 99, type: !58)
!3964 = !DILocation(line: 99, column: 7, scope: !3950)
!3965 = !DILocalVariable(name: "nlm", scope: !3950, file: !55, line: 100, type: !61)
!3966 = !DILocation(line: 100, column: 16, scope: !3950)
!3967 = !DILocation(line: 100, column: 42, scope: !3950)
!3968 = !DILocation(line: 100, column: 22, scope: !3950)
!3969 = !DILocalVariable(name: "fac1", scope: !3950, file: !55, line: 111, type: !49)
!3970 = !DILocation(line: 111, column: 10, scope: !3950)
!3971 = !DILocalVariable(name: "fac2", scope: !3950, file: !55, line: 111, type: !49)
!3972 = !DILocation(line: 111, column: 22, scope: !3950)
!3973 = !DILocation(line: 113, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3950, file: !55, line: 113, column: 7)
!3975 = !DILocation(line: 113, column: 12, scope: !3974)
!3976 = !DILocation(line: 113, column: 7, scope: !3950)
!3977 = !DILocation(line: 116, column: 43, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3974, file: !55, line: 114, column: 5)
!3979 = !DILocation(line: 116, column: 49, scope: !3978)
!3980 = !DILocation(line: 116, column: 52, scope: !3978)
!3981 = !DILocation(line: 116, column: 61, scope: !3978)
!3982 = !DILocation(line: 116, column: 11, scope: !3978)
!3983 = !DILocation(line: 116, column: 9, scope: !3978)
!3984 = !DILocation(line: 117, column: 5, scope: !3978)
!3985 = !DILocation(line: 121, column: 46, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3974, file: !55, line: 119, column: 5)
!3987 = !DILocation(line: 121, column: 52, scope: !3986)
!3988 = !DILocation(line: 121, column: 55, scope: !3986)
!3989 = !DILocation(line: 121, column: 64, scope: !3986)
!3990 = !DILocation(line: 121, column: 11, scope: !3986)
!3991 = !DILocation(line: 121, column: 9, scope: !3986)
!3992 = !DILocation(line: 141, column: 7, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3950, file: !55, line: 141, column: 7)
!3994 = !DILocation(line: 141, column: 12, scope: !3993)
!3995 = !DILocation(line: 141, column: 39, scope: !3993)
!3996 = !DILocation(line: 141, column: 42, scope: !3997)
!3997 = !DILexicalBlockFile(scope: !3993, file: !55, discriminator: 1)
!3998 = !DILocation(line: 141, column: 47, scope: !3997)
!3999 = !DILocation(line: 141, column: 7, scope: !3997)
!4000 = !DILocation(line: 143, column: 14, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3993, file: !55, line: 142, column: 5)
!4002 = !DILocation(line: 143, column: 7, scope: !4001)
!4003 = !DILocation(line: 145, column: 12, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3993, file: !55, line: 145, column: 12)
!4005 = !DILocation(line: 145, column: 17, scope: !4004)
!4006 = !DILocation(line: 145, column: 12, scope: !3993)
!4007 = !DILocation(line: 147, column: 20, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4004, file: !55, line: 146, column: 5)
!4009 = !DILocation(line: 147, column: 18, scope: !4008)
!4010 = !DILocation(line: 147, column: 12, scope: !4008)
!4011 = !DILocation(line: 148, column: 20, scope: !4008)
!4012 = !DILocation(line: 148, column: 18, scope: !4008)
!4013 = !DILocation(line: 148, column: 12, scope: !4008)
!4014 = !DILocation(line: 149, column: 5, scope: !4008)
!4015 = !DILocation(line: 150, column: 12, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4004, file: !55, line: 150, column: 12)
!4017 = !DILocation(line: 150, column: 17, scope: !4016)
!4018 = !DILocation(line: 150, column: 12, scope: !4004)
!4019 = !DILocation(line: 152, column: 20, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4016, file: !55, line: 151, column: 5)
!4021 = !DILocation(line: 152, column: 18, scope: !4020)
!4022 = !DILocation(line: 152, column: 12, scope: !4020)
!4023 = !DILocation(line: 153, column: 20, scope: !4020)
!4024 = !DILocation(line: 153, column: 18, scope: !4020)
!4025 = !DILocation(line: 153, column: 12, scope: !4020)
!4026 = !DILocation(line: 154, column: 5, scope: !4020)
!4027 = !DILocalVariable(name: "l", scope: !4028, file: !55, line: 162, type: !62)
!4028 = distinct !DILexicalBlock(scope: !3950, file: !55, line: 161, column: 3)
!4029 = !DILocation(line: 162, column: 12, scope: !4028)
!4030 = !DILocalVariable(name: "m", scope: !4028, file: !55, line: 162, type: !62)
!4031 = !DILocation(line: 162, column: 15, scope: !4028)
!4032 = !DILocalVariable(name: "twoellp1", scope: !4028, file: !55, line: 163, type: !62)
!4033 = !DILocation(line: 163, column: 12, scope: !4028)
!4034 = !DILocalVariable(name: "sqrts", scope: !4028, file: !55, line: 164, type: !66)
!4035 = !DILocation(line: 164, column: 13, scope: !4028)
!4036 = !DILocation(line: 164, column: 36, scope: !4028)
!4037 = !DILocation(line: 164, column: 23, scope: !4028)
!4038 = !DILocation(line: 166, column: 12, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4028, file: !55, line: 166, column: 5)
!4040 = !DILocation(line: 166, column: 10, scope: !4039)
!4041 = !DILocation(line: 166, column: 17, scope: !4042)
!4042 = !DILexicalBlockFile(scope: !4043, file: !55, discriminator: 1)
!4043 = distinct !DILexicalBlock(scope: !4039, file: !55, line: 166, column: 5)
!4044 = !DILocation(line: 166, column: 22, scope: !4042)
!4045 = !DILocation(line: 166, column: 19, scope: !4042)
!4046 = !DILocation(line: 166, column: 5, scope: !4042)
!4047 = !DILocation(line: 169, column: 17, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4043, file: !55, line: 167, column: 7)
!4049 = !DILocation(line: 169, column: 11, scope: !4048)
!4050 = !DILocation(line: 169, column: 29, scope: !4048)
!4051 = !DILocation(line: 169, column: 27, scope: !4048)
!4052 = !DILocation(line: 168, column: 50, scope: !4048)
!4053 = !DILocation(line: 168, column: 22, scope: !4048)
!4054 = !DILocation(line: 168, column: 9, scope: !4048)
!4055 = !DILocation(line: 168, column: 57, scope: !4048)
!4056 = !DILocation(line: 172, column: 17, scope: !4048)
!4057 = !DILocation(line: 172, column: 11, scope: !4048)
!4058 = !DILocation(line: 172, column: 29, scope: !4048)
!4059 = !DILocation(line: 172, column: 27, scope: !4048)
!4060 = !DILocation(line: 171, column: 56, scope: !4048)
!4061 = !DILocation(line: 171, column: 28, scope: !4048)
!4062 = !DILocation(line: 171, column: 9, scope: !4048)
!4063 = !DILocation(line: 171, column: 63, scope: !4048)
!4064 = !DILocation(line: 176, column: 17, scope: !4048)
!4065 = !DILocation(line: 176, column: 11, scope: !4048)
!4066 = !DILocation(line: 176, column: 29, scope: !4048)
!4067 = !DILocation(line: 176, column: 27, scope: !4048)
!4068 = !DILocation(line: 175, column: 57, scope: !4048)
!4069 = !DILocation(line: 175, column: 29, scope: !4048)
!4070 = !DILocation(line: 175, column: 9, scope: !4048)
!4071 = !DILocation(line: 175, column: 64, scope: !4048)
!4072 = !DILocation(line: 179, column: 16, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4048, file: !55, line: 179, column: 9)
!4074 = !DILocation(line: 179, column: 14, scope: !4073)
!4075 = !DILocation(line: 179, column: 21, scope: !4076)
!4076 = !DILexicalBlockFile(scope: !4077, file: !55, discriminator: 1)
!4077 = distinct !DILexicalBlock(scope: !4073, file: !55, line: 179, column: 9)
!4078 = !DILocation(line: 179, column: 26, scope: !4076)
!4079 = !DILocation(line: 179, column: 23, scope: !4076)
!4080 = !DILocation(line: 179, column: 9, scope: !4076)
!4081 = !DILocation(line: 182, column: 21, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4077, file: !55, line: 180, column: 11)
!4083 = !DILocation(line: 182, column: 15, scope: !4082)
!4084 = !DILocation(line: 182, column: 33, scope: !4082)
!4085 = !DILocation(line: 182, column: 31, scope: !4082)
!4086 = !DILocation(line: 181, column: 54, scope: !4082)
!4087 = !DILocation(line: 181, column: 57, scope: !4082)
!4088 = !DILocation(line: 181, column: 26, scope: !4082)
!4089 = !DILocation(line: 181, column: 13, scope: !4082)
!4090 = !DILocation(line: 181, column: 61, scope: !4082)
!4091 = !DILocation(line: 185, column: 21, scope: !4082)
!4092 = !DILocation(line: 185, column: 15, scope: !4082)
!4093 = !DILocation(line: 185, column: 33, scope: !4082)
!4094 = !DILocation(line: 185, column: 31, scope: !4082)
!4095 = !DILocation(line: 184, column: 60, scope: !4082)
!4096 = !DILocation(line: 184, column: 63, scope: !4082)
!4097 = !DILocation(line: 184, column: 32, scope: !4082)
!4098 = !DILocation(line: 184, column: 13, scope: !4082)
!4099 = !DILocation(line: 184, column: 67, scope: !4082)
!4100 = !DILocation(line: 189, column: 21, scope: !4082)
!4101 = !DILocation(line: 189, column: 15, scope: !4082)
!4102 = !DILocation(line: 189, column: 33, scope: !4082)
!4103 = !DILocation(line: 189, column: 31, scope: !4082)
!4104 = !DILocation(line: 188, column: 61, scope: !4082)
!4105 = !DILocation(line: 188, column: 64, scope: !4082)
!4106 = !DILocation(line: 188, column: 33, scope: !4082)
!4107 = !DILocation(line: 188, column: 13, scope: !4082)
!4108 = !DILocation(line: 188, column: 68, scope: !4082)
!4109 = !DILocation(line: 191, column: 11, scope: !4082)
!4110 = !DILocation(line: 179, column: 29, scope: !4111)
!4111 = !DILexicalBlockFile(scope: !4077, file: !55, discriminator: 2)
!4112 = !DILocation(line: 179, column: 9, scope: !4111)
!4113 = distinct !{!4113, !4114}
!4114 = !DILocation(line: 179, column: 9, scope: !4048)
!4115 = !DILocation(line: 193, column: 18, scope: !4048)
!4116 = !DILocation(line: 194, column: 7, scope: !4048)
!4117 = !DILocation(line: 166, column: 28, scope: !4118)
!4118 = !DILexicalBlockFile(scope: !4043, file: !55, discriminator: 2)
!4119 = !DILocation(line: 166, column: 5, scope: !4118)
!4120 = distinct !{!4120, !4121}
!4121 = !DILocation(line: 166, column: 5, scope: !4028)
!4122 = !DILocation(line: 197, column: 10, scope: !3950)
!4123 = !DILocation(line: 197, column: 3, scope: !3950)
!4124 = !DILocation(line: 198, column: 1, scope: !3950)
!4125 = distinct !DISubprogram(name: "legendre_deriv2_alt_array_none_e", scope: !55, file: !55, line: 425, type: !2963, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!4126 = !DILocalVariable(name: "lmax", arg: 1, scope: !4125, file: !55, line: 426, type: !61)
!4127 = !DILocation(line: 426, column: 15, scope: !4125)
!4128 = !DILocalVariable(name: "x", arg: 2, scope: !4125, file: !55, line: 426, type: !65)
!4129 = !DILocation(line: 426, column: 34, scope: !4125)
!4130 = !DILocalVariable(name: "csphase", arg: 3, scope: !4125, file: !55, line: 426, type: !65)
!4131 = !DILocation(line: 426, column: 50, scope: !4125)
!4132 = !DILocalVariable(name: "result_array", arg: 4, scope: !4125, file: !55, line: 426, type: !66)
!4133 = !DILocation(line: 426, column: 59, scope: !4125)
!4134 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !4125, file: !55, line: 426, type: !66)
!4135 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !4125, file: !55, line: 426, type: !66)
!4136 = !DILocation(line: 428, column: 7, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4125, file: !55, line: 428, column: 7)
!4138 = !DILocation(line: 428, column: 9, scope: !4137)
!4139 = !DILocation(line: 428, column: 15, scope: !4137)
!4140 = !DILocation(line: 428, column: 18, scope: !4141)
!4141 = !DILexicalBlockFile(scope: !4137, file: !55, discriminator: 1)
!4142 = !DILocation(line: 428, column: 20, scope: !4141)
!4143 = !DILocation(line: 428, column: 7, scope: !4141)
!4144 = !DILocation(line: 430, column: 7, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4137, file: !55, line: 429, column: 5)
!4146 = distinct !{!4146, !4144}
!4147 = !DILocation(line: 430, column: 7, scope: !4148)
!4148 = !DILexicalBlockFile(scope: !4149, file: !55, discriminator: 1)
!4149 = distinct !DILexicalBlock(scope: !4145, file: !55, line: 430, column: 7)
!4150 = !DILocation(line: 431, column: 5, scope: !4145)
!4151 = !DILocation(line: 433, column: 17, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4137, file: !55, line: 433, column: 12)
!4153 = !DILocation(line: 433, column: 12, scope: !4152)
!4154 = !DILocation(line: 433, column: 20, scope: !4152)
!4155 = !DILocation(line: 433, column: 12, scope: !4137)
!4156 = !DILocation(line: 435, column: 7, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4152, file: !55, line: 434, column: 5)
!4158 = distinct !{!4158, !4156}
!4159 = !DILocation(line: 435, column: 7, scope: !4160)
!4160 = !DILexicalBlockFile(scope: !4161, file: !55, discriminator: 1)
!4161 = distinct !DILexicalBlock(scope: !4157, file: !55, line: 435, column: 7)
!4162 = !DILocation(line: 436, column: 5, scope: !4157)
!4163 = !DILocation(line: 438, column: 12, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4152, file: !55, line: 438, column: 12)
!4165 = !DILocation(line: 438, column: 20, scope: !4164)
!4166 = !DILocation(line: 438, column: 27, scope: !4164)
!4167 = !DILocation(line: 438, column: 30, scope: !4168)
!4168 = !DILexicalBlockFile(scope: !4164, file: !55, discriminator: 1)
!4169 = !DILocation(line: 438, column: 38, scope: !4168)
!4170 = !DILocation(line: 438, column: 12, scope: !4168)
!4171 = !DILocation(line: 440, column: 7, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4164, file: !55, line: 439, column: 5)
!4173 = distinct !{!4173, !4171}
!4174 = !DILocation(line: 440, column: 7, scope: !4175)
!4175 = !DILexicalBlockFile(scope: !4176, file: !55, discriminator: 1)
!4176 = distinct !DILexicalBlock(scope: !4172, file: !55, line: 440, column: 7)
!4177 = !DILocation(line: 441, column: 5, scope: !4172)
!4178 = !DILocalVariable(name: "u", scope: !4179, file: !55, line: 444, type: !65)
!4179 = distinct !DILexicalBlock(scope: !4164, file: !55, line: 443, column: 5)
!4180 = !DILocation(line: 444, column: 20, scope: !4179)
!4181 = !DILocation(line: 444, column: 36, scope: !4179)
!4182 = !DILocation(line: 444, column: 34, scope: !4179)
!4183 = !DILocation(line: 444, column: 48, scope: !4179)
!4184 = !DILocation(line: 444, column: 46, scope: !4179)
!4185 = !DILocation(line: 444, column: 39, scope: !4179)
!4186 = !DILocation(line: 444, column: 24, scope: !4179)
!4187 = !DILocalVariable(name: "uinv", scope: !4179, file: !55, line: 446, type: !65)
!4188 = !DILocation(line: 446, column: 20, scope: !4179)
!4189 = !DILocation(line: 446, column: 33, scope: !4179)
!4190 = !DILocation(line: 446, column: 31, scope: !4179)
!4191 = !DILocalVariable(name: "uinv2", scope: !4179, file: !55, line: 449, type: !65)
!4192 = !DILocation(line: 449, column: 20, scope: !4179)
!4193 = !DILocation(line: 449, column: 34, scope: !4179)
!4194 = !DILocation(line: 449, column: 32, scope: !4179)
!4195 = !DILocation(line: 449, column: 38, scope: !4179)
!4196 = !DILocation(line: 449, column: 36, scope: !4179)
!4197 = !DILocalVariable(name: "xbyu", scope: !4179, file: !55, line: 452, type: !65)
!4198 = !DILocation(line: 452, column: 20, scope: !4179)
!4199 = !DILocation(line: 452, column: 27, scope: !4179)
!4200 = !DILocation(line: 452, column: 31, scope: !4179)
!4201 = !DILocation(line: 452, column: 29, scope: !4179)
!4202 = !DILocalVariable(name: "l", scope: !4179, file: !55, line: 454, type: !62)
!4203 = !DILocation(line: 454, column: 14, scope: !4179)
!4204 = !DILocalVariable(name: "m", scope: !4179, file: !55, line: 454, type: !62)
!4205 = !DILocation(line: 454, column: 17, scope: !4179)
!4206 = !DILocalVariable(name: "k", scope: !4179, file: !55, line: 455, type: !62)
!4207 = !DILocation(line: 455, column: 14, scope: !4179)
!4208 = !DILocalVariable(name: "idxmm", scope: !4179, file: !55, line: 455, type: !62)
!4209 = !DILocation(line: 455, column: 17, scope: !4179)
!4210 = !DILocalVariable(name: "plm", scope: !4179, file: !55, line: 456, type: !49)
!4211 = !DILocation(line: 456, column: 14, scope: !4179)
!4212 = !DILocalVariable(name: "pmm", scope: !4179, file: !55, line: 456, type: !49)
!4213 = !DILocation(line: 456, column: 19, scope: !4179)
!4214 = !DILocalVariable(name: "pm1", scope: !4179, file: !55, line: 457, type: !49)
!4215 = !DILocation(line: 457, column: 14, scope: !4179)
!4216 = !DILocalVariable(name: "pm2", scope: !4179, file: !55, line: 458, type: !49)
!4217 = !DILocation(line: 458, column: 14, scope: !4179)
!4218 = !DILocalVariable(name: "twomm1", scope: !4179, file: !55, line: 459, type: !49)
!4219 = !DILocation(line: 459, column: 14, scope: !4179)
!4220 = !DILocation(line: 463, column: 11, scope: !4179)
!4221 = !DILocation(line: 464, column: 13, scope: !4179)
!4222 = !DILocation(line: 464, column: 11, scope: !4179)
!4223 = !DILocation(line: 466, column: 25, scope: !4179)
!4224 = !DILocation(line: 466, column: 7, scope: !4179)
!4225 = !DILocation(line: 466, column: 23, scope: !4179)
!4226 = !DILocation(line: 468, column: 7, scope: !4179)
!4227 = !DILocation(line: 468, column: 29, scope: !4179)
!4228 = !DILocation(line: 471, column: 7, scope: !4179)
!4229 = !DILocation(line: 471, column: 30, scope: !4179)
!4230 = !DILocation(line: 474, column: 11, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4179, file: !55, line: 474, column: 11)
!4232 = !DILocation(line: 474, column: 16, scope: !4231)
!4233 = !DILocation(line: 474, column: 11, scope: !4179)
!4234 = !DILocation(line: 475, column: 9, scope: !4231)
!4235 = !DILocation(line: 477, column: 25, scope: !4179)
!4236 = !DILocation(line: 477, column: 7, scope: !4179)
!4237 = !DILocation(line: 477, column: 23, scope: !4179)
!4238 = !DILocation(line: 479, column: 32, scope: !4179)
!4239 = !DILocation(line: 479, column: 31, scope: !4179)
!4240 = !DILocation(line: 479, column: 7, scope: !4179)
!4241 = !DILocation(line: 479, column: 29, scope: !4179)
!4242 = !DILocation(line: 482, column: 33, scope: !4179)
!4243 = !DILocation(line: 482, column: 32, scope: !4179)
!4244 = !DILocation(line: 482, column: 7, scope: !4179)
!4245 = !DILocation(line: 482, column: 30, scope: !4179)
!4246 = !DILocation(line: 487, column: 9, scope: !4179)
!4247 = !DILocation(line: 488, column: 14, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4179, file: !55, line: 488, column: 7)
!4249 = !DILocation(line: 488, column: 12, scope: !4248)
!4250 = !DILocation(line: 488, column: 19, scope: !4251)
!4251 = !DILexicalBlockFile(scope: !4252, file: !55, discriminator: 1)
!4252 = distinct !DILexicalBlock(scope: !4248, file: !55, line: 488, column: 7)
!4253 = !DILocation(line: 488, column: 24, scope: !4251)
!4254 = !DILocation(line: 488, column: 21, scope: !4251)
!4255 = !DILocation(line: 488, column: 7, scope: !4251)
!4256 = !DILocation(line: 490, column: 16, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4252, file: !55, line: 489, column: 9)
!4258 = !DILocation(line: 490, column: 13, scope: !4257)
!4259 = !DILocation(line: 491, column: 21, scope: !4257)
!4260 = !DILocation(line: 491, column: 20, scope: !4257)
!4261 = !DILocation(line: 491, column: 23, scope: !4257)
!4262 = !DILocation(line: 491, column: 18, scope: !4257)
!4263 = !DILocation(line: 491, column: 30, scope: !4257)
!4264 = !DILocation(line: 491, column: 28, scope: !4257)
!4265 = !DILocation(line: 491, column: 34, scope: !4257)
!4266 = !DILocation(line: 491, column: 32, scope: !4257)
!4267 = !DILocation(line: 491, column: 41, scope: !4257)
!4268 = !DILocation(line: 491, column: 43, scope: !4257)
!4269 = !DILocation(line: 491, column: 40, scope: !4257)
!4270 = !DILocation(line: 491, column: 50, scope: !4257)
!4271 = !DILocation(line: 491, column: 48, scope: !4257)
!4272 = !DILocation(line: 491, column: 38, scope: !4257)
!4273 = !DILocation(line: 491, column: 66, scope: !4257)
!4274 = !DILocation(line: 491, column: 57, scope: !4257)
!4275 = !DILocation(line: 491, column: 55, scope: !4257)
!4276 = !DILocation(line: 491, column: 15, scope: !4257)
!4277 = !DILocation(line: 492, column: 29, scope: !4257)
!4278 = !DILocation(line: 492, column: 24, scope: !4257)
!4279 = !DILocation(line: 492, column: 11, scope: !4257)
!4280 = !DILocation(line: 492, column: 27, scope: !4257)
!4281 = !DILocation(line: 494, column: 44, scope: !4257)
!4282 = !DILocation(line: 494, column: 36, scope: !4257)
!4283 = !DILocation(line: 494, column: 35, scope: !4257)
!4284 = !DILocation(line: 494, column: 49, scope: !4257)
!4285 = !DILocation(line: 494, column: 55, scope: !4257)
!4286 = !DILocation(line: 494, column: 59, scope: !4257)
!4287 = !DILocation(line: 494, column: 57, scope: !4257)
!4288 = !DILocation(line: 494, column: 53, scope: !4257)
!4289 = !DILocation(line: 494, column: 46, scope: !4257)
!4290 = !DILocation(line: 494, column: 66, scope: !4257)
!4291 = !DILocation(line: 494, column: 64, scope: !4257)
!4292 = !DILocation(line: 494, column: 30, scope: !4257)
!4293 = !DILocation(line: 494, column: 11, scope: !4257)
!4294 = !DILocation(line: 494, column: 33, scope: !4257)
!4295 = !DILocation(line: 497, column: 46, scope: !4257)
!4296 = !DILocation(line: 497, column: 37, scope: !4257)
!4297 = !DILocation(line: 497, column: 36, scope: !4257)
!4298 = !DILocation(line: 497, column: 51, scope: !4257)
!4299 = !DILocation(line: 497, column: 53, scope: !4257)
!4300 = !DILocation(line: 497, column: 48, scope: !4257)
!4301 = !DILocation(line: 497, column: 62, scope: !4257)
!4302 = !DILocation(line: 497, column: 60, scope: !4257)
!4303 = !DILocation(line: 498, column: 36, scope: !4257)
!4304 = !DILocation(line: 498, column: 62, scope: !4257)
!4305 = !DILocation(line: 498, column: 43, scope: !4257)
!4306 = !DILocation(line: 498, column: 41, scope: !4257)
!4307 = !DILocation(line: 497, column: 66, scope: !4257)
!4308 = !DILocation(line: 497, column: 31, scope: !4257)
!4309 = !DILocation(line: 497, column: 11, scope: !4257)
!4310 = !DILocation(line: 497, column: 34, scope: !4257)
!4311 = !DILocation(line: 500, column: 17, scope: !4257)
!4312 = !DILocation(line: 500, column: 15, scope: !4257)
!4313 = !DILocation(line: 501, column: 17, scope: !4257)
!4314 = !DILocation(line: 501, column: 15, scope: !4257)
!4315 = !DILocation(line: 502, column: 9, scope: !4257)
!4316 = !DILocation(line: 488, column: 30, scope: !4317)
!4317 = !DILexicalBlockFile(scope: !4252, file: !55, discriminator: 2)
!4318 = !DILocation(line: 488, column: 7, scope: !4317)
!4319 = distinct !{!4319, !4320}
!4320 = !DILocation(line: 488, column: 7, scope: !4179)
!4321 = !DILocation(line: 506, column: 11, scope: !4179)
!4322 = !DILocation(line: 507, column: 14, scope: !4179)
!4323 = !DILocation(line: 509, column: 13, scope: !4179)
!4324 = !DILocation(line: 511, column: 14, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4179, file: !55, line: 511, column: 7)
!4326 = !DILocation(line: 511, column: 12, scope: !4325)
!4327 = !DILocation(line: 511, column: 19, scope: !4328)
!4328 = !DILexicalBlockFile(scope: !4329, file: !55, discriminator: 1)
!4329 = distinct !DILexicalBlock(scope: !4325, file: !55, line: 511, column: 7)
!4330 = !DILocation(line: 511, column: 24, scope: !4328)
!4331 = !DILocation(line: 511, column: 29, scope: !4328)
!4332 = !DILocation(line: 511, column: 21, scope: !4328)
!4333 = !DILocation(line: 511, column: 7, scope: !4328)
!4334 = !DILocation(line: 520, column: 20, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4329, file: !55, line: 512, column: 9)
!4336 = !DILocation(line: 520, column: 22, scope: !4335)
!4337 = !DILocation(line: 520, column: 17, scope: !4335)
!4338 = !DILocation(line: 521, column: 18, scope: !4335)
!4339 = !DILocation(line: 522, column: 18, scope: !4335)
!4340 = !DILocation(line: 522, column: 28, scope: !4335)
!4341 = !DILocation(line: 522, column: 26, scope: !4335)
!4342 = !DILocation(line: 522, column: 32, scope: !4335)
!4343 = !DILocation(line: 522, column: 30, scope: !4335)
!4344 = !DILocation(line: 522, column: 15, scope: !4335)
!4345 = !DILocation(line: 523, column: 33, scope: !4335)
!4346 = !DILocation(line: 523, column: 24, scope: !4335)
!4347 = !DILocation(line: 523, column: 11, scope: !4335)
!4348 = !DILocation(line: 523, column: 31, scope: !4335)
!4349 = !DILocation(line: 525, column: 39, scope: !4335)
!4350 = !DILocation(line: 525, column: 43, scope: !4335)
!4351 = !DILocation(line: 525, column: 41, scope: !4335)
!4352 = !DILocation(line: 525, column: 50, scope: !4335)
!4353 = !DILocation(line: 525, column: 48, scope: !4335)
!4354 = !DILocation(line: 525, column: 30, scope: !4335)
!4355 = !DILocation(line: 525, column: 11, scope: !4335)
!4356 = !DILocation(line: 525, column: 37, scope: !4335)
!4357 = !DILocation(line: 529, column: 13, scope: !4335)
!4358 = !DILocation(line: 529, column: 18, scope: !4335)
!4359 = !DILocation(line: 529, column: 26, scope: !4335)
!4360 = !DILocation(line: 529, column: 24, scope: !4335)
!4361 = !DILocation(line: 529, column: 31, scope: !4335)
!4362 = !DILocation(line: 529, column: 33, scope: !4335)
!4363 = !DILocation(line: 529, column: 28, scope: !4335)
!4364 = !DILocation(line: 529, column: 15, scope: !4335)
!4365 = !DILocation(line: 529, column: 56, scope: !4335)
!4366 = !DILocation(line: 529, column: 43, scope: !4335)
!4367 = !DILocation(line: 529, column: 41, scope: !4335)
!4368 = !DILocation(line: 530, column: 13, scope: !4335)
!4369 = !DILocation(line: 530, column: 39, scope: !4335)
!4370 = !DILocation(line: 530, column: 20, scope: !4335)
!4371 = !DILocation(line: 530, column: 18, scope: !4335)
!4372 = !DILocation(line: 529, column: 63, scope: !4335)
!4373 = !DILocation(line: 528, column: 31, scope: !4335)
!4374 = !DILocation(line: 528, column: 11, scope: !4335)
!4375 = !DILocation(line: 528, column: 38, scope: !4335)
!4376 = !DILocation(line: 532, column: 17, scope: !4335)
!4377 = !DILocation(line: 532, column: 15, scope: !4335)
!4378 = !DILocation(line: 541, column: 15, scope: !4335)
!4379 = !DILocation(line: 541, column: 23, scope: !4335)
!4380 = !DILocation(line: 541, column: 21, scope: !4335)
!4381 = !DILocation(line: 541, column: 25, scope: !4335)
!4382 = !DILocation(line: 541, column: 13, scope: !4335)
!4383 = !DILocation(line: 542, column: 17, scope: !4335)
!4384 = !DILocation(line: 542, column: 21, scope: !4335)
!4385 = !DILocation(line: 542, column: 19, scope: !4335)
!4386 = !DILocation(line: 542, column: 30, scope: !4335)
!4387 = !DILocation(line: 542, column: 29, scope: !4335)
!4388 = !DILocation(line: 542, column: 32, scope: !4335)
!4389 = !DILocation(line: 542, column: 27, scope: !4335)
!4390 = !DILocation(line: 542, column: 25, scope: !4335)
!4391 = !DILocation(line: 542, column: 15, scope: !4335)
!4392 = !DILocation(line: 543, column: 29, scope: !4335)
!4393 = !DILocation(line: 543, column: 24, scope: !4335)
!4394 = !DILocation(line: 543, column: 11, scope: !4335)
!4395 = !DILocation(line: 543, column: 27, scope: !4335)
!4396 = !DILocation(line: 545, column: 36, scope: !4335)
!4397 = !DILocation(line: 545, column: 35, scope: !4335)
!4398 = !DILocation(line: 545, column: 47, scope: !4335)
!4399 = !DILocation(line: 545, column: 46, scope: !4335)
!4400 = !DILocation(line: 545, column: 49, scope: !4335)
!4401 = !DILocation(line: 545, column: 44, scope: !4335)
!4402 = !DILocation(line: 545, column: 56, scope: !4335)
!4403 = !DILocation(line: 545, column: 54, scope: !4335)
!4404 = !DILocation(line: 545, column: 63, scope: !4335)
!4405 = !DILocation(line: 545, column: 65, scope: !4335)
!4406 = !DILocation(line: 545, column: 62, scope: !4335)
!4407 = !DILocation(line: 545, column: 72, scope: !4335)
!4408 = !DILocation(line: 545, column: 70, scope: !4335)
!4409 = !DILocation(line: 545, column: 76, scope: !4335)
!4410 = !DILocation(line: 545, column: 74, scope: !4335)
!4411 = !DILocation(line: 545, column: 60, scope: !4335)
!4412 = !DILocation(line: 545, column: 41, scope: !4335)
!4413 = !DILocation(line: 545, column: 30, scope: !4335)
!4414 = !DILocation(line: 545, column: 11, scope: !4335)
!4415 = !DILocation(line: 545, column: 33, scope: !4335)
!4416 = !DILocation(line: 549, column: 14, scope: !4335)
!4417 = !DILocation(line: 549, column: 18, scope: !4335)
!4418 = !DILocation(line: 549, column: 16, scope: !4335)
!4419 = !DILocation(line: 549, column: 22, scope: !4335)
!4420 = !DILocation(line: 549, column: 20, scope: !4335)
!4421 = !DILocation(line: 549, column: 31, scope: !4335)
!4422 = !DILocation(line: 549, column: 33, scope: !4335)
!4423 = !DILocation(line: 549, column: 43, scope: !4335)
!4424 = !DILocation(line: 549, column: 45, scope: !4335)
!4425 = !DILocation(line: 549, column: 40, scope: !4335)
!4426 = !DILocation(line: 549, column: 28, scope: !4335)
!4427 = !DILocation(line: 549, column: 68, scope: !4335)
!4428 = !DILocation(line: 549, column: 55, scope: !4335)
!4429 = !DILocation(line: 549, column: 53, scope: !4335)
!4430 = !DILocation(line: 550, column: 13, scope: !4335)
!4431 = !DILocation(line: 550, column: 39, scope: !4335)
!4432 = !DILocation(line: 550, column: 20, scope: !4335)
!4433 = !DILocation(line: 550, column: 18, scope: !4335)
!4434 = !DILocation(line: 549, column: 71, scope: !4335)
!4435 = !DILocation(line: 548, column: 31, scope: !4335)
!4436 = !DILocation(line: 548, column: 11, scope: !4335)
!4437 = !DILocation(line: 548, column: 34, scope: !4335)
!4438 = !DILocation(line: 554, column: 20, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4335, file: !55, line: 554, column: 11)
!4440 = !DILocation(line: 554, column: 22, scope: !4439)
!4441 = !DILocation(line: 554, column: 18, scope: !4439)
!4442 = !DILocation(line: 554, column: 16, scope: !4439)
!4443 = !DILocation(line: 554, column: 27, scope: !4444)
!4444 = !DILexicalBlockFile(scope: !4445, file: !55, discriminator: 1)
!4445 = distinct !DILexicalBlock(scope: !4439, file: !55, line: 554, column: 11)
!4446 = !DILocation(line: 554, column: 32, scope: !4444)
!4447 = !DILocation(line: 554, column: 29, scope: !4444)
!4448 = !DILocation(line: 554, column: 11, scope: !4444)
!4449 = !DILocation(line: 556, column: 20, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4445, file: !55, line: 555, column: 13)
!4451 = !DILocation(line: 556, column: 17, scope: !4450)
!4452 = !DILocation(line: 557, column: 25, scope: !4450)
!4453 = !DILocation(line: 557, column: 24, scope: !4450)
!4454 = !DILocation(line: 557, column: 27, scope: !4450)
!4455 = !DILocation(line: 557, column: 22, scope: !4450)
!4456 = !DILocation(line: 557, column: 34, scope: !4450)
!4457 = !DILocation(line: 557, column: 32, scope: !4450)
!4458 = !DILocation(line: 557, column: 38, scope: !4450)
!4459 = !DILocation(line: 557, column: 36, scope: !4450)
!4460 = !DILocation(line: 557, column: 45, scope: !4450)
!4461 = !DILocation(line: 557, column: 49, scope: !4450)
!4462 = !DILocation(line: 557, column: 47, scope: !4450)
!4463 = !DILocation(line: 557, column: 51, scope: !4450)
!4464 = !DILocation(line: 557, column: 44, scope: !4450)
!4465 = !DILocation(line: 557, column: 58, scope: !4450)
!4466 = !DILocation(line: 557, column: 56, scope: !4450)
!4467 = !DILocation(line: 557, column: 42, scope: !4450)
!4468 = !DILocation(line: 558, column: 31, scope: !4450)
!4469 = !DILocation(line: 558, column: 35, scope: !4450)
!4470 = !DILocation(line: 558, column: 33, scope: !4450)
!4471 = !DILocation(line: 558, column: 21, scope: !4450)
!4472 = !DILocation(line: 557, column: 63, scope: !4450)
!4473 = !DILocation(line: 557, column: 19, scope: !4450)
!4474 = !DILocation(line: 559, column: 33, scope: !4450)
!4475 = !DILocation(line: 559, column: 28, scope: !4450)
!4476 = !DILocation(line: 559, column: 15, scope: !4450)
!4477 = !DILocation(line: 559, column: 31, scope: !4450)
!4478 = !DILocation(line: 561, column: 40, scope: !4450)
!4479 = !DILocation(line: 561, column: 39, scope: !4450)
!4480 = !DILocation(line: 561, column: 49, scope: !4450)
!4481 = !DILocation(line: 561, column: 53, scope: !4450)
!4482 = !DILocation(line: 561, column: 51, scope: !4450)
!4483 = !DILocation(line: 561, column: 48, scope: !4450)
!4484 = !DILocation(line: 561, column: 58, scope: !4450)
!4485 = !DILocation(line: 561, column: 56, scope: !4450)
!4486 = !DILocation(line: 561, column: 64, scope: !4450)
!4487 = !DILocation(line: 561, column: 68, scope: !4450)
!4488 = !DILocation(line: 561, column: 66, scope: !4450)
!4489 = !DILocation(line: 561, column: 72, scope: !4450)
!4490 = !DILocation(line: 561, column: 70, scope: !4450)
!4491 = !DILocation(line: 561, column: 62, scope: !4450)
!4492 = !DILocation(line: 561, column: 45, scope: !4450)
!4493 = !DILocation(line: 561, column: 34, scope: !4450)
!4494 = !DILocation(line: 561, column: 15, scope: !4450)
!4495 = !DILocation(line: 561, column: 37, scope: !4450)
!4496 = !DILocation(line: 565, column: 18, scope: !4450)
!4497 = !DILocation(line: 565, column: 22, scope: !4450)
!4498 = !DILocation(line: 565, column: 20, scope: !4450)
!4499 = !DILocation(line: 565, column: 26, scope: !4450)
!4500 = !DILocation(line: 565, column: 24, scope: !4450)
!4501 = !DILocation(line: 565, column: 34, scope: !4450)
!4502 = !DILocation(line: 565, column: 39, scope: !4450)
!4503 = !DILocation(line: 565, column: 41, scope: !4450)
!4504 = !DILocation(line: 565, column: 36, scope: !4450)
!4505 = !DILocation(line: 565, column: 32, scope: !4450)
!4506 = !DILocation(line: 565, column: 64, scope: !4450)
!4507 = !DILocation(line: 565, column: 51, scope: !4450)
!4508 = !DILocation(line: 565, column: 49, scope: !4450)
!4509 = !DILocation(line: 566, column: 17, scope: !4450)
!4510 = !DILocation(line: 566, column: 43, scope: !4450)
!4511 = !DILocation(line: 566, column: 24, scope: !4450)
!4512 = !DILocation(line: 566, column: 22, scope: !4450)
!4513 = !DILocation(line: 565, column: 67, scope: !4450)
!4514 = !DILocation(line: 564, column: 35, scope: !4450)
!4515 = !DILocation(line: 564, column: 15, scope: !4450)
!4516 = !DILocation(line: 564, column: 38, scope: !4450)
!4517 = !DILocation(line: 568, column: 21, scope: !4450)
!4518 = !DILocation(line: 568, column: 19, scope: !4450)
!4519 = !DILocation(line: 569, column: 21, scope: !4450)
!4520 = !DILocation(line: 569, column: 19, scope: !4450)
!4521 = !DILocation(line: 570, column: 13, scope: !4450)
!4522 = !DILocation(line: 554, column: 38, scope: !4523)
!4523 = !DILexicalBlockFile(scope: !4445, file: !55, discriminator: 2)
!4524 = !DILocation(line: 554, column: 11, scope: !4523)
!4525 = distinct !{!4525, !4526}
!4526 = !DILocation(line: 554, column: 11, scope: !4335)
!4527 = !DILocation(line: 571, column: 9, scope: !4335)
!4528 = !DILocation(line: 511, column: 34, scope: !4529)
!4529 = !DILexicalBlockFile(scope: !4329, file: !55, discriminator: 2)
!4530 = !DILocation(line: 511, column: 7, scope: !4529)
!4531 = distinct !{!4531, !4532}
!4532 = !DILocation(line: 511, column: 7, scope: !4179)
!4533 = !DILocation(line: 575, column: 16, scope: !4179)
!4534 = !DILocation(line: 575, column: 18, scope: !4179)
!4535 = !DILocation(line: 575, column: 13, scope: !4179)
!4536 = !DILocation(line: 576, column: 14, scope: !4179)
!4537 = !DILocation(line: 577, column: 14, scope: !4179)
!4538 = !DILocation(line: 577, column: 24, scope: !4179)
!4539 = !DILocation(line: 577, column: 22, scope: !4179)
!4540 = !DILocation(line: 577, column: 28, scope: !4179)
!4541 = !DILocation(line: 577, column: 26, scope: !4179)
!4542 = !DILocation(line: 577, column: 11, scope: !4179)
!4543 = !DILocation(line: 578, column: 29, scope: !4179)
!4544 = !DILocation(line: 578, column: 20, scope: !4179)
!4545 = !DILocation(line: 578, column: 7, scope: !4179)
!4546 = !DILocation(line: 578, column: 27, scope: !4179)
!4547 = !DILocation(line: 580, column: 35, scope: !4179)
!4548 = !DILocation(line: 580, column: 42, scope: !4179)
!4549 = !DILocation(line: 580, column: 40, scope: !4179)
!4550 = !DILocation(line: 580, column: 46, scope: !4179)
!4551 = !DILocation(line: 580, column: 44, scope: !4179)
!4552 = !DILocation(line: 580, column: 52, scope: !4179)
!4553 = !DILocation(line: 580, column: 50, scope: !4179)
!4554 = !DILocation(line: 580, column: 26, scope: !4179)
!4555 = !DILocation(line: 580, column: 7, scope: !4179)
!4556 = !DILocation(line: 580, column: 33, scope: !4179)
!4557 = !DILocation(line: 584, column: 9, scope: !4179)
!4558 = !DILocation(line: 584, column: 17, scope: !4179)
!4559 = !DILocation(line: 584, column: 25, scope: !4179)
!4560 = !DILocation(line: 584, column: 23, scope: !4179)
!4561 = !DILocation(line: 584, column: 33, scope: !4179)
!4562 = !DILocation(line: 584, column: 38, scope: !4179)
!4563 = !DILocation(line: 584, column: 30, scope: !4179)
!4564 = !DILocation(line: 584, column: 14, scope: !4179)
!4565 = !DILocation(line: 584, column: 61, scope: !4179)
!4566 = !DILocation(line: 584, column: 48, scope: !4179)
!4567 = !DILocation(line: 584, column: 46, scope: !4179)
!4568 = !DILocation(line: 585, column: 9, scope: !4179)
!4569 = !DILocation(line: 585, column: 35, scope: !4179)
!4570 = !DILocation(line: 585, column: 16, scope: !4179)
!4571 = !DILocation(line: 585, column: 14, scope: !4179)
!4572 = !DILocation(line: 584, column: 68, scope: !4179)
!4573 = !DILocation(line: 583, column: 27, scope: !4179)
!4574 = !DILocation(line: 583, column: 7, scope: !4179)
!4575 = !DILocation(line: 583, column: 34, scope: !4179)
!4576 = !DILocation(line: 588, column: 7, scope: !4179)
!4577 = !DILocation(line: 590, column: 1, scope: !4125)
!4578 = distinct !DISubprogram(name: "legendre_deriv2_alt_array_schmidt_e", scope: !55, file: !55, line: 217, type: !2963, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!4579 = !DILocalVariable(name: "lmax", arg: 1, scope: !4578, file: !55, line: 218, type: !61)
!4580 = !DILocation(line: 218, column: 15, scope: !4578)
!4581 = !DILocalVariable(name: "x", arg: 2, scope: !4578, file: !55, line: 218, type: !65)
!4582 = !DILocation(line: 218, column: 34, scope: !4578)
!4583 = !DILocalVariable(name: "csphase", arg: 3, scope: !4578, file: !55, line: 218, type: !65)
!4584 = !DILocation(line: 218, column: 50, scope: !4578)
!4585 = !DILocalVariable(name: "result_array", arg: 4, scope: !4578, file: !55, line: 218, type: !66)
!4586 = !DILocation(line: 218, column: 59, scope: !4578)
!4587 = !DILocalVariable(name: "result_deriv_array", arg: 5, scope: !4578, file: !55, line: 218, type: !66)
!4588 = !DILocalVariable(name: "result_deriv2_array", arg: 6, scope: !4578, file: !55, line: 218, type: !66)
!4589 = !DILocation(line: 220, column: 7, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4578, file: !55, line: 220, column: 7)
!4591 = !DILocation(line: 220, column: 9, scope: !4590)
!4592 = !DILocation(line: 220, column: 15, scope: !4590)
!4593 = !DILocation(line: 220, column: 18, scope: !4594)
!4594 = !DILexicalBlockFile(scope: !4590, file: !55, discriminator: 1)
!4595 = !DILocation(line: 220, column: 20, scope: !4594)
!4596 = !DILocation(line: 220, column: 7, scope: !4594)
!4597 = !DILocation(line: 222, column: 7, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4590, file: !55, line: 221, column: 5)
!4599 = distinct !{!4599, !4597}
!4600 = !DILocation(line: 222, column: 7, scope: !4601)
!4601 = !DILexicalBlockFile(scope: !4602, file: !55, discriminator: 1)
!4602 = distinct !DILexicalBlock(scope: !4598, file: !55, line: 222, column: 7)
!4603 = !DILocation(line: 223, column: 5, scope: !4598)
!4604 = !DILocation(line: 225, column: 17, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4590, file: !55, line: 225, column: 12)
!4606 = !DILocation(line: 225, column: 12, scope: !4605)
!4607 = !DILocation(line: 225, column: 20, scope: !4605)
!4608 = !DILocation(line: 225, column: 12, scope: !4590)
!4609 = !DILocation(line: 227, column: 7, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4605, file: !55, line: 226, column: 5)
!4611 = distinct !{!4611, !4609}
!4612 = !DILocation(line: 227, column: 7, scope: !4613)
!4613 = !DILexicalBlockFile(scope: !4614, file: !55, discriminator: 1)
!4614 = distinct !DILexicalBlock(scope: !4610, file: !55, line: 227, column: 7)
!4615 = !DILocation(line: 228, column: 5, scope: !4610)
!4616 = !DILocation(line: 230, column: 12, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4605, file: !55, line: 230, column: 12)
!4618 = !DILocation(line: 230, column: 20, scope: !4617)
!4619 = !DILocation(line: 230, column: 27, scope: !4617)
!4620 = !DILocation(line: 230, column: 30, scope: !4621)
!4621 = !DILexicalBlockFile(scope: !4617, file: !55, discriminator: 1)
!4622 = !DILocation(line: 230, column: 38, scope: !4621)
!4623 = !DILocation(line: 230, column: 12, scope: !4621)
!4624 = !DILocation(line: 232, column: 7, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4617, file: !55, line: 231, column: 5)
!4626 = distinct !{!4626, !4624}
!4627 = !DILocation(line: 232, column: 7, scope: !4628)
!4628 = !DILexicalBlockFile(scope: !4629, file: !55, discriminator: 1)
!4629 = distinct !DILexicalBlock(scope: !4625, file: !55, line: 232, column: 7)
!4630 = !DILocation(line: 233, column: 5, scope: !4625)
!4631 = !DILocalVariable(name: "eps", scope: !4632, file: !55, line: 236, type: !65)
!4632 = distinct !DILexicalBlock(scope: !4617, file: !55, line: 235, column: 5)
!4633 = !DILocation(line: 236, column: 20, scope: !4632)
!4634 = !DILocalVariable(name: "u", scope: !4632, file: !55, line: 237, type: !65)
!4635 = !DILocation(line: 237, column: 20, scope: !4632)
!4636 = !DILocation(line: 237, column: 36, scope: !4632)
!4637 = !DILocation(line: 237, column: 34, scope: !4632)
!4638 = !DILocation(line: 237, column: 48, scope: !4632)
!4639 = !DILocation(line: 237, column: 46, scope: !4632)
!4640 = !DILocation(line: 237, column: 39, scope: !4632)
!4641 = !DILocation(line: 237, column: 24, scope: !4632)
!4642 = !DILocalVariable(name: "uinv", scope: !4632, file: !55, line: 239, type: !65)
!4643 = !DILocation(line: 239, column: 20, scope: !4632)
!4644 = !DILocation(line: 239, column: 33, scope: !4632)
!4645 = !DILocation(line: 239, column: 31, scope: !4632)
!4646 = !DILocalVariable(name: "uinv2", scope: !4632, file: !55, line: 242, type: !65)
!4647 = !DILocation(line: 242, column: 20, scope: !4632)
!4648 = !DILocation(line: 242, column: 34, scope: !4632)
!4649 = !DILocation(line: 242, column: 32, scope: !4632)
!4650 = !DILocation(line: 242, column: 38, scope: !4632)
!4651 = !DILocation(line: 242, column: 36, scope: !4632)
!4652 = !DILocalVariable(name: "xbyu", scope: !4632, file: !55, line: 245, type: !65)
!4653 = !DILocation(line: 245, column: 20, scope: !4632)
!4654 = !DILocation(line: 245, column: 27, scope: !4632)
!4655 = !DILocation(line: 245, column: 31, scope: !4632)
!4656 = !DILocation(line: 245, column: 29, scope: !4632)
!4657 = !DILocalVariable(name: "l", scope: !4632, file: !55, line: 247, type: !62)
!4658 = !DILocation(line: 247, column: 14, scope: !4632)
!4659 = !DILocalVariable(name: "m", scope: !4632, file: !55, line: 247, type: !62)
!4660 = !DILocation(line: 247, column: 17, scope: !4632)
!4661 = !DILocalVariable(name: "k", scope: !4632, file: !55, line: 248, type: !62)
!4662 = !DILocation(line: 248, column: 14, scope: !4632)
!4663 = !DILocalVariable(name: "idxmm", scope: !4632, file: !55, line: 248, type: !62)
!4664 = !DILocation(line: 248, column: 17, scope: !4632)
!4665 = !DILocalVariable(name: "plm", scope: !4632, file: !55, line: 249, type: !49)
!4666 = !DILocation(line: 249, column: 14, scope: !4632)
!4667 = !DILocalVariable(name: "pmm", scope: !4632, file: !55, line: 250, type: !49)
!4668 = !DILocation(line: 250, column: 14, scope: !4632)
!4669 = !DILocalVariable(name: "rescalem", scope: !4632, file: !55, line: 251, type: !49)
!4670 = !DILocation(line: 251, column: 14, scope: !4632)
!4671 = !DILocalVariable(name: "pm1", scope: !4632, file: !55, line: 252, type: !49)
!4672 = !DILocation(line: 252, column: 14, scope: !4632)
!4673 = !DILocalVariable(name: "pm2", scope: !4632, file: !55, line: 253, type: !49)
!4674 = !DILocation(line: 253, column: 14, scope: !4632)
!4675 = !DILocalVariable(name: "nlm", scope: !4632, file: !55, line: 254, type: !62)
!4676 = !DILocation(line: 254, column: 14, scope: !4632)
!4677 = !DILocation(line: 254, column: 40, scope: !4632)
!4678 = !DILocation(line: 254, column: 20, scope: !4632)
!4679 = !DILocalVariable(name: "sqrts", scope: !4632, file: !55, line: 255, type: !66)
!4680 = !DILocation(line: 255, column: 15, scope: !4632)
!4681 = !DILocation(line: 255, column: 38, scope: !4632)
!4682 = !DILocation(line: 255, column: 25, scope: !4632)
!4683 = !DILocation(line: 258, column: 22, scope: !4632)
!4684 = !DILocation(line: 258, column: 28, scope: !4632)
!4685 = !DILocation(line: 258, column: 7, scope: !4632)
!4686 = !DILocation(line: 261, column: 11, scope: !4632)
!4687 = !DILocation(line: 262, column: 13, scope: !4632)
!4688 = !DILocation(line: 262, column: 11, scope: !4632)
!4689 = !DILocation(line: 264, column: 25, scope: !4632)
!4690 = !DILocation(line: 264, column: 7, scope: !4632)
!4691 = !DILocation(line: 264, column: 23, scope: !4632)
!4692 = !DILocation(line: 266, column: 7, scope: !4632)
!4693 = !DILocation(line: 266, column: 29, scope: !4632)
!4694 = !DILocation(line: 269, column: 7, scope: !4632)
!4695 = !DILocation(line: 269, column: 30, scope: !4632)
!4696 = !DILocation(line: 272, column: 11, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4632, file: !55, line: 272, column: 11)
!4698 = !DILocation(line: 272, column: 16, scope: !4697)
!4699 = !DILocation(line: 272, column: 11, scope: !4632)
!4700 = !DILocation(line: 273, column: 9, scope: !4697)
!4701 = !DILocation(line: 275, column: 25, scope: !4632)
!4702 = !DILocation(line: 275, column: 7, scope: !4632)
!4703 = !DILocation(line: 275, column: 23, scope: !4632)
!4704 = !DILocation(line: 277, column: 32, scope: !4632)
!4705 = !DILocation(line: 277, column: 31, scope: !4632)
!4706 = !DILocation(line: 277, column: 7, scope: !4632)
!4707 = !DILocation(line: 277, column: 29, scope: !4632)
!4708 = !DILocation(line: 280, column: 33, scope: !4632)
!4709 = !DILocation(line: 280, column: 32, scope: !4632)
!4710 = !DILocation(line: 280, column: 7, scope: !4632)
!4711 = !DILocation(line: 280, column: 30, scope: !4632)
!4712 = !DILocation(line: 285, column: 9, scope: !4632)
!4713 = !DILocation(line: 286, column: 14, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4632, file: !55, line: 286, column: 7)
!4715 = !DILocation(line: 286, column: 12, scope: !4714)
!4716 = !DILocation(line: 286, column: 19, scope: !4717)
!4717 = !DILexicalBlockFile(scope: !4718, file: !55, discriminator: 1)
!4718 = distinct !DILexicalBlock(scope: !4714, file: !55, line: 286, column: 7)
!4719 = !DILocation(line: 286, column: 24, scope: !4717)
!4720 = !DILocation(line: 286, column: 21, scope: !4717)
!4721 = !DILocation(line: 286, column: 7, scope: !4717)
!4722 = !DILocalVariable(name: "linv", scope: !4723, file: !55, line: 288, type: !49)
!4723 = distinct !DILexicalBlock(scope: !4718, file: !55, line: 287, column: 9)
!4724 = !DILocation(line: 288, column: 18, scope: !4723)
!4725 = !DILocation(line: 288, column: 39, scope: !4723)
!4726 = !DILocation(line: 288, column: 31, scope: !4723)
!4727 = !DILocation(line: 288, column: 29, scope: !4723)
!4728 = !DILocation(line: 290, column: 16, scope: !4723)
!4729 = !DILocation(line: 290, column: 13, scope: !4723)
!4730 = !DILocation(line: 292, column: 24, scope: !4723)
!4731 = !DILocation(line: 292, column: 22, scope: !4723)
!4732 = !DILocation(line: 292, column: 32, scope: !4723)
!4733 = !DILocation(line: 292, column: 30, scope: !4723)
!4734 = !DILocation(line: 292, column: 36, scope: !4723)
!4735 = !DILocation(line: 292, column: 34, scope: !4723)
!4736 = !DILocation(line: 292, column: 49, scope: !4723)
!4737 = !DILocation(line: 292, column: 47, scope: !4723)
!4738 = !DILocation(line: 292, column: 57, scope: !4723)
!4739 = !DILocation(line: 292, column: 55, scope: !4723)
!4740 = !DILocation(line: 292, column: 40, scope: !4723)
!4741 = !DILocation(line: 292, column: 15, scope: !4723)
!4742 = !DILocation(line: 293, column: 29, scope: !4723)
!4743 = !DILocation(line: 293, column: 24, scope: !4723)
!4744 = !DILocation(line: 293, column: 11, scope: !4723)
!4745 = !DILocation(line: 293, column: 27, scope: !4723)
!4746 = !DILocation(line: 295, column: 35, scope: !4723)
!4747 = !DILocation(line: 295, column: 42, scope: !4723)
!4748 = !DILocation(line: 295, column: 40, scope: !4723)
!4749 = !DILocation(line: 295, column: 47, scope: !4723)
!4750 = !DILocation(line: 295, column: 51, scope: !4723)
!4751 = !DILocation(line: 295, column: 49, scope: !4723)
!4752 = !DILocation(line: 295, column: 57, scope: !4723)
!4753 = !DILocation(line: 295, column: 55, scope: !4723)
!4754 = !DILocation(line: 295, column: 44, scope: !4723)
!4755 = !DILocation(line: 295, column: 30, scope: !4723)
!4756 = !DILocation(line: 295, column: 11, scope: !4723)
!4757 = !DILocation(line: 295, column: 33, scope: !4723)
!4758 = !DILocation(line: 298, column: 46, scope: !4723)
!4759 = !DILocation(line: 298, column: 37, scope: !4723)
!4760 = !DILocation(line: 298, column: 36, scope: !4723)
!4761 = !DILocation(line: 298, column: 51, scope: !4723)
!4762 = !DILocation(line: 298, column: 53, scope: !4723)
!4763 = !DILocation(line: 298, column: 48, scope: !4723)
!4764 = !DILocation(line: 298, column: 62, scope: !4723)
!4765 = !DILocation(line: 298, column: 60, scope: !4723)
!4766 = !DILocation(line: 299, column: 36, scope: !4723)
!4767 = !DILocation(line: 299, column: 62, scope: !4723)
!4768 = !DILocation(line: 299, column: 43, scope: !4723)
!4769 = !DILocation(line: 299, column: 41, scope: !4723)
!4770 = !DILocation(line: 298, column: 66, scope: !4723)
!4771 = !DILocation(line: 298, column: 31, scope: !4723)
!4772 = !DILocation(line: 298, column: 11, scope: !4723)
!4773 = !DILocation(line: 298, column: 34, scope: !4723)
!4774 = !DILocation(line: 301, column: 17, scope: !4723)
!4775 = !DILocation(line: 301, column: 15, scope: !4723)
!4776 = !DILocation(line: 302, column: 17, scope: !4723)
!4777 = !DILocation(line: 302, column: 15, scope: !4723)
!4778 = !DILocation(line: 303, column: 9, scope: !4723)
!4779 = !DILocation(line: 286, column: 30, scope: !4780)
!4780 = !DILexicalBlockFile(scope: !4718, file: !55, discriminator: 2)
!4781 = !DILocation(line: 286, column: 7, scope: !4780)
!4782 = distinct !{!4782, !4783}
!4783 = !DILocation(line: 286, column: 7, scope: !4632)
!4784 = !DILocation(line: 316, column: 13, scope: !4632)
!4785 = !DILocation(line: 316, column: 23, scope: !4632)
!4786 = !DILocation(line: 316, column: 11, scope: !4632)
!4787 = !DILocation(line: 318, column: 16, scope: !4632)
!4788 = !DILocation(line: 319, column: 13, scope: !4632)
!4789 = !DILocation(line: 321, column: 14, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4632, file: !55, line: 321, column: 7)
!4791 = !DILocation(line: 321, column: 12, scope: !4790)
!4792 = !DILocation(line: 321, column: 19, scope: !4793)
!4793 = !DILexicalBlockFile(scope: !4794, file: !55, discriminator: 1)
!4794 = distinct !DILexicalBlock(scope: !4790, file: !55, line: 321, column: 7)
!4795 = !DILocation(line: 321, column: 23, scope: !4793)
!4796 = !DILocation(line: 321, column: 21, scope: !4793)
!4797 = !DILocation(line: 321, column: 7, scope: !4793)
!4798 = !DILocation(line: 324, column: 23, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4794, file: !55, line: 322, column: 9)
!4800 = !DILocation(line: 324, column: 20, scope: !4799)
!4801 = !DILocation(line: 332, column: 20, scope: !4799)
!4802 = !DILocation(line: 332, column: 22, scope: !4799)
!4803 = !DILocation(line: 332, column: 17, scope: !4799)
!4804 = !DILocation(line: 333, column: 18, scope: !4799)
!4805 = !DILocation(line: 333, column: 38, scope: !4799)
!4806 = !DILocation(line: 333, column: 36, scope: !4799)
!4807 = !DILocation(line: 333, column: 40, scope: !4799)
!4808 = !DILocation(line: 333, column: 28, scope: !4799)
!4809 = !DILocation(line: 333, column: 26, scope: !4799)
!4810 = !DILocation(line: 333, column: 57, scope: !4799)
!4811 = !DILocation(line: 333, column: 55, scope: !4799)
!4812 = !DILocation(line: 333, column: 47, scope: !4799)
!4813 = !DILocation(line: 333, column: 45, scope: !4799)
!4814 = !DILocation(line: 333, column: 15, scope: !4799)
!4815 = !DILocation(line: 334, column: 33, scope: !4799)
!4816 = !DILocation(line: 334, column: 39, scope: !4799)
!4817 = !DILocation(line: 334, column: 37, scope: !4799)
!4818 = !DILocation(line: 334, column: 24, scope: !4799)
!4819 = !DILocation(line: 334, column: 11, scope: !4799)
!4820 = !DILocation(line: 334, column: 31, scope: !4799)
!4821 = !DILocation(line: 336, column: 39, scope: !4799)
!4822 = !DILocation(line: 336, column: 43, scope: !4799)
!4823 = !DILocation(line: 336, column: 41, scope: !4799)
!4824 = !DILocation(line: 336, column: 63, scope: !4799)
!4825 = !DILocation(line: 336, column: 50, scope: !4799)
!4826 = !DILocation(line: 336, column: 48, scope: !4799)
!4827 = !DILocation(line: 336, column: 30, scope: !4799)
!4828 = !DILocation(line: 336, column: 11, scope: !4799)
!4829 = !DILocation(line: 336, column: 37, scope: !4799)
!4830 = !DILocation(line: 340, column: 13, scope: !4799)
!4831 = !DILocation(line: 340, column: 18, scope: !4799)
!4832 = !DILocation(line: 340, column: 26, scope: !4799)
!4833 = !DILocation(line: 340, column: 24, scope: !4799)
!4834 = !DILocation(line: 340, column: 31, scope: !4799)
!4835 = !DILocation(line: 340, column: 33, scope: !4799)
!4836 = !DILocation(line: 340, column: 28, scope: !4799)
!4837 = !DILocation(line: 340, column: 15, scope: !4799)
!4838 = !DILocation(line: 340, column: 56, scope: !4799)
!4839 = !DILocation(line: 340, column: 43, scope: !4799)
!4840 = !DILocation(line: 340, column: 41, scope: !4799)
!4841 = !DILocation(line: 341, column: 13, scope: !4799)
!4842 = !DILocation(line: 341, column: 39, scope: !4799)
!4843 = !DILocation(line: 341, column: 20, scope: !4799)
!4844 = !DILocation(line: 341, column: 18, scope: !4799)
!4845 = !DILocation(line: 340, column: 63, scope: !4799)
!4846 = !DILocation(line: 339, column: 31, scope: !4799)
!4847 = !DILocation(line: 339, column: 11, scope: !4799)
!4848 = !DILocation(line: 339, column: 38, scope: !4799)
!4849 = !DILocation(line: 343, column: 17, scope: !4799)
!4850 = !DILocation(line: 343, column: 15, scope: !4799)
!4851 = !DILocation(line: 351, column: 15, scope: !4799)
!4852 = !DILocation(line: 351, column: 23, scope: !4799)
!4853 = !DILocation(line: 351, column: 21, scope: !4799)
!4854 = !DILocation(line: 351, column: 25, scope: !4799)
!4855 = !DILocation(line: 351, column: 13, scope: !4799)
!4856 = !DILocation(line: 352, column: 17, scope: !4799)
!4857 = !DILocation(line: 352, column: 31, scope: !4799)
!4858 = !DILocation(line: 352, column: 29, scope: !4799)
!4859 = !DILocation(line: 352, column: 33, scope: !4799)
!4860 = !DILocation(line: 352, column: 21, scope: !4799)
!4861 = !DILocation(line: 352, column: 19, scope: !4799)
!4862 = !DILocation(line: 352, column: 40, scope: !4799)
!4863 = !DILocation(line: 352, column: 38, scope: !4799)
!4864 = !DILocation(line: 352, column: 15, scope: !4799)
!4865 = !DILocation(line: 353, column: 29, scope: !4799)
!4866 = !DILocation(line: 353, column: 35, scope: !4799)
!4867 = !DILocation(line: 353, column: 33, scope: !4799)
!4868 = !DILocation(line: 353, column: 24, scope: !4799)
!4869 = !DILocation(line: 353, column: 11, scope: !4799)
!4870 = !DILocation(line: 353, column: 27, scope: !4799)
!4871 = !DILocation(line: 356, column: 13, scope: !4799)
!4872 = !DILocation(line: 356, column: 22, scope: !4799)
!4873 = !DILocation(line: 356, column: 24, scope: !4799)
!4874 = !DILocation(line: 356, column: 33, scope: !4799)
!4875 = !DILocation(line: 356, column: 31, scope: !4799)
!4876 = !DILocation(line: 356, column: 50, scope: !4799)
!4877 = !DILocation(line: 356, column: 37, scope: !4799)
!4878 = !DILocation(line: 356, column: 35, scope: !4799)
!4879 = !DILocation(line: 357, column: 31, scope: !4799)
!4880 = !DILocation(line: 357, column: 29, scope: !4799)
!4881 = !DILocation(line: 357, column: 33, scope: !4799)
!4882 = !DILocation(line: 357, column: 21, scope: !4799)
!4883 = !DILocation(line: 357, column: 53, scope: !4799)
!4884 = !DILocation(line: 357, column: 40, scope: !4799)
!4885 = !DILocation(line: 357, column: 38, scope: !4799)
!4886 = !DILocation(line: 356, column: 53, scope: !4799)
!4887 = !DILocation(line: 356, column: 18, scope: !4799)
!4888 = !DILocation(line: 355, column: 30, scope: !4799)
!4889 = !DILocation(line: 355, column: 11, scope: !4799)
!4890 = !DILocation(line: 355, column: 33, scope: !4799)
!4891 = !DILocation(line: 361, column: 14, scope: !4799)
!4892 = !DILocation(line: 361, column: 18, scope: !4799)
!4893 = !DILocation(line: 361, column: 16, scope: !4799)
!4894 = !DILocation(line: 361, column: 22, scope: !4799)
!4895 = !DILocation(line: 361, column: 20, scope: !4799)
!4896 = !DILocation(line: 361, column: 31, scope: !4799)
!4897 = !DILocation(line: 361, column: 33, scope: !4799)
!4898 = !DILocation(line: 361, column: 43, scope: !4799)
!4899 = !DILocation(line: 361, column: 45, scope: !4799)
!4900 = !DILocation(line: 361, column: 40, scope: !4799)
!4901 = !DILocation(line: 361, column: 28, scope: !4799)
!4902 = !DILocation(line: 361, column: 68, scope: !4799)
!4903 = !DILocation(line: 361, column: 55, scope: !4799)
!4904 = !DILocation(line: 361, column: 53, scope: !4799)
!4905 = !DILocation(line: 362, column: 13, scope: !4799)
!4906 = !DILocation(line: 362, column: 39, scope: !4799)
!4907 = !DILocation(line: 362, column: 20, scope: !4799)
!4908 = !DILocation(line: 362, column: 18, scope: !4799)
!4909 = !DILocation(line: 361, column: 71, scope: !4799)
!4910 = !DILocation(line: 360, column: 31, scope: !4799)
!4911 = !DILocation(line: 360, column: 11, scope: !4799)
!4912 = !DILocation(line: 360, column: 34, scope: !4799)
!4913 = !DILocation(line: 366, column: 20, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4799, file: !55, line: 366, column: 11)
!4915 = !DILocation(line: 366, column: 22, scope: !4914)
!4916 = !DILocation(line: 366, column: 18, scope: !4914)
!4917 = !DILocation(line: 366, column: 16, scope: !4914)
!4918 = !DILocation(line: 366, column: 27, scope: !4919)
!4919 = !DILexicalBlockFile(scope: !4920, file: !55, discriminator: 1)
!4920 = distinct !DILexicalBlock(scope: !4914, file: !55, line: 366, column: 11)
!4921 = !DILocation(line: 366, column: 32, scope: !4919)
!4922 = !DILocation(line: 366, column: 29, scope: !4919)
!4923 = !DILocation(line: 366, column: 11, scope: !4919)
!4924 = !DILocation(line: 368, column: 20, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4920, file: !55, line: 367, column: 13)
!4926 = !DILocation(line: 368, column: 17, scope: !4925)
!4927 = !DILocation(line: 370, column: 20, scope: !4925)
!4928 = !DILocation(line: 370, column: 19, scope: !4925)
!4929 = !DILocation(line: 370, column: 22, scope: !4925)
!4930 = !DILocation(line: 370, column: 17, scope: !4925)
!4931 = !DILocation(line: 370, column: 35, scope: !4925)
!4932 = !DILocation(line: 370, column: 39, scope: !4925)
!4933 = !DILocation(line: 370, column: 37, scope: !4925)
!4934 = !DILocation(line: 370, column: 29, scope: !4925)
!4935 = !DILocation(line: 370, column: 27, scope: !4925)
!4936 = !DILocation(line: 370, column: 50, scope: !4925)
!4937 = !DILocation(line: 370, column: 54, scope: !4925)
!4938 = !DILocation(line: 370, column: 52, scope: !4925)
!4939 = !DILocation(line: 370, column: 44, scope: !4925)
!4940 = !DILocation(line: 370, column: 42, scope: !4925)
!4941 = !DILocation(line: 370, column: 59, scope: !4925)
!4942 = !DILocation(line: 370, column: 57, scope: !4925)
!4943 = !DILocation(line: 370, column: 63, scope: !4925)
!4944 = !DILocation(line: 370, column: 61, scope: !4925)
!4945 = !DILocation(line: 371, column: 23, scope: !4925)
!4946 = !DILocation(line: 371, column: 27, scope: !4925)
!4947 = !DILocation(line: 371, column: 25, scope: !4925)
!4948 = !DILocation(line: 371, column: 29, scope: !4925)
!4949 = !DILocation(line: 371, column: 17, scope: !4925)
!4950 = !DILocation(line: 371, column: 42, scope: !4925)
!4951 = !DILocation(line: 371, column: 46, scope: !4925)
!4952 = !DILocation(line: 371, column: 44, scope: !4925)
!4953 = !DILocation(line: 371, column: 48, scope: !4925)
!4954 = !DILocation(line: 371, column: 36, scope: !4925)
!4955 = !DILocation(line: 371, column: 34, scope: !4925)
!4956 = !DILocation(line: 372, column: 23, scope: !4925)
!4957 = !DILocation(line: 372, column: 27, scope: !4925)
!4958 = !DILocation(line: 372, column: 25, scope: !4925)
!4959 = !DILocation(line: 372, column: 17, scope: !4925)
!4960 = !DILocation(line: 371, column: 53, scope: !4925)
!4961 = !DILocation(line: 372, column: 38, scope: !4925)
!4962 = !DILocation(line: 372, column: 42, scope: !4925)
!4963 = !DILocation(line: 372, column: 40, scope: !4925)
!4964 = !DILocation(line: 372, column: 32, scope: !4925)
!4965 = !DILocation(line: 372, column: 30, scope: !4925)
!4966 = !DILocation(line: 372, column: 47, scope: !4925)
!4967 = !DILocation(line: 372, column: 45, scope: !4925)
!4968 = !DILocation(line: 370, column: 67, scope: !4925)
!4969 = !DILocation(line: 369, column: 19, scope: !4925)
!4970 = !DILocation(line: 373, column: 33, scope: !4925)
!4971 = !DILocation(line: 373, column: 39, scope: !4925)
!4972 = !DILocation(line: 373, column: 37, scope: !4925)
!4973 = !DILocation(line: 373, column: 28, scope: !4925)
!4974 = !DILocation(line: 373, column: 15, scope: !4925)
!4975 = !DILocation(line: 373, column: 31, scope: !4925)
!4976 = !DILocation(line: 376, column: 17, scope: !4925)
!4977 = !DILocation(line: 376, column: 25, scope: !4925)
!4978 = !DILocation(line: 376, column: 29, scope: !4925)
!4979 = !DILocation(line: 376, column: 27, scope: !4925)
!4980 = !DILocation(line: 376, column: 46, scope: !4925)
!4981 = !DILocation(line: 376, column: 33, scope: !4925)
!4982 = !DILocation(line: 376, column: 31, scope: !4925)
!4983 = !DILocation(line: 377, column: 31, scope: !4925)
!4984 = !DILocation(line: 377, column: 35, scope: !4925)
!4985 = !DILocation(line: 377, column: 33, scope: !4925)
!4986 = !DILocation(line: 377, column: 25, scope: !4925)
!4987 = !DILocation(line: 377, column: 46, scope: !4925)
!4988 = !DILocation(line: 377, column: 50, scope: !4925)
!4989 = !DILocation(line: 377, column: 48, scope: !4925)
!4990 = !DILocation(line: 377, column: 40, scope: !4925)
!4991 = !DILocation(line: 377, column: 38, scope: !4925)
!4992 = !DILocation(line: 377, column: 68, scope: !4925)
!4993 = !DILocation(line: 377, column: 72, scope: !4925)
!4994 = !DILocation(line: 377, column: 70, scope: !4925)
!4995 = !DILocation(line: 377, column: 55, scope: !4925)
!4996 = !DILocation(line: 377, column: 53, scope: !4925)
!4997 = !DILocation(line: 376, column: 49, scope: !4925)
!4998 = !DILocation(line: 376, column: 22, scope: !4925)
!4999 = !DILocation(line: 375, column: 34, scope: !4925)
!5000 = !DILocation(line: 375, column: 15, scope: !4925)
!5001 = !DILocation(line: 375, column: 37, scope: !4925)
!5002 = !DILocation(line: 381, column: 18, scope: !4925)
!5003 = !DILocation(line: 381, column: 22, scope: !4925)
!5004 = !DILocation(line: 381, column: 20, scope: !4925)
!5005 = !DILocation(line: 381, column: 26, scope: !4925)
!5006 = !DILocation(line: 381, column: 24, scope: !4925)
!5007 = !DILocation(line: 381, column: 34, scope: !4925)
!5008 = !DILocation(line: 381, column: 39, scope: !4925)
!5009 = !DILocation(line: 381, column: 41, scope: !4925)
!5010 = !DILocation(line: 381, column: 36, scope: !4925)
!5011 = !DILocation(line: 381, column: 32, scope: !4925)
!5012 = !DILocation(line: 381, column: 64, scope: !4925)
!5013 = !DILocation(line: 381, column: 51, scope: !4925)
!5014 = !DILocation(line: 381, column: 49, scope: !4925)
!5015 = !DILocation(line: 382, column: 17, scope: !4925)
!5016 = !DILocation(line: 382, column: 43, scope: !4925)
!5017 = !DILocation(line: 382, column: 24, scope: !4925)
!5018 = !DILocation(line: 382, column: 22, scope: !4925)
!5019 = !DILocation(line: 381, column: 67, scope: !4925)
!5020 = !DILocation(line: 380, column: 35, scope: !4925)
!5021 = !DILocation(line: 380, column: 15, scope: !4925)
!5022 = !DILocation(line: 380, column: 38, scope: !4925)
!5023 = !DILocation(line: 384, column: 21, scope: !4925)
!5024 = !DILocation(line: 384, column: 19, scope: !4925)
!5025 = !DILocation(line: 385, column: 21, scope: !4925)
!5026 = !DILocation(line: 385, column: 19, scope: !4925)
!5027 = !DILocation(line: 386, column: 13, scope: !4925)
!5028 = !DILocation(line: 366, column: 38, scope: !5029)
!5029 = !DILexicalBlockFile(scope: !4920, file: !55, discriminator: 2)
!5030 = !DILocation(line: 366, column: 11, scope: !5029)
!5031 = distinct !{!5031, !5032}
!5032 = !DILocation(line: 366, column: 11, scope: !4799)
!5033 = !DILocation(line: 387, column: 9, scope: !4799)
!5034 = !DILocation(line: 321, column: 29, scope: !5035)
!5035 = !DILexicalBlockFile(scope: !4794, file: !55, discriminator: 2)
!5036 = !DILocation(line: 321, column: 7, scope: !5035)
!5037 = distinct !{!5037, !5038}
!5038 = !DILocation(line: 321, column: 7, scope: !4632)
!5039 = !DILocation(line: 391, column: 19, scope: !4632)
!5040 = !DILocation(line: 391, column: 16, scope: !4632)
!5041 = !DILocation(line: 392, column: 16, scope: !4632)
!5042 = !DILocation(line: 392, column: 18, scope: !4632)
!5043 = !DILocation(line: 392, column: 13, scope: !4632)
!5044 = !DILocation(line: 393, column: 14, scope: !4632)
!5045 = !DILocation(line: 393, column: 34, scope: !4632)
!5046 = !DILocation(line: 393, column: 32, scope: !4632)
!5047 = !DILocation(line: 393, column: 39, scope: !4632)
!5048 = !DILocation(line: 393, column: 24, scope: !4632)
!5049 = !DILocation(line: 393, column: 22, scope: !4632)
!5050 = !DILocation(line: 393, column: 56, scope: !4632)
!5051 = !DILocation(line: 393, column: 54, scope: !4632)
!5052 = !DILocation(line: 393, column: 46, scope: !4632)
!5053 = !DILocation(line: 393, column: 44, scope: !4632)
!5054 = !DILocation(line: 393, column: 11, scope: !4632)
!5055 = !DILocation(line: 394, column: 29, scope: !4632)
!5056 = !DILocation(line: 394, column: 35, scope: !4632)
!5057 = !DILocation(line: 394, column: 33, scope: !4632)
!5058 = !DILocation(line: 394, column: 20, scope: !4632)
!5059 = !DILocation(line: 394, column: 7, scope: !4632)
!5060 = !DILocation(line: 394, column: 27, scope: !4632)
!5061 = !DILocation(line: 396, column: 35, scope: !4632)
!5062 = !DILocation(line: 396, column: 42, scope: !4632)
!5063 = !DILocation(line: 396, column: 40, scope: !4632)
!5064 = !DILocation(line: 396, column: 62, scope: !4632)
!5065 = !DILocation(line: 396, column: 49, scope: !4632)
!5066 = !DILocation(line: 396, column: 47, scope: !4632)
!5067 = !DILocation(line: 396, column: 26, scope: !4632)
!5068 = !DILocation(line: 396, column: 7, scope: !4632)
!5069 = !DILocation(line: 396, column: 33, scope: !4632)
!5070 = !DILocation(line: 400, column: 9, scope: !4632)
!5071 = !DILocation(line: 400, column: 17, scope: !4632)
!5072 = !DILocation(line: 400, column: 25, scope: !4632)
!5073 = !DILocation(line: 400, column: 23, scope: !4632)
!5074 = !DILocation(line: 400, column: 33, scope: !4632)
!5075 = !DILocation(line: 400, column: 38, scope: !4632)
!5076 = !DILocation(line: 400, column: 30, scope: !4632)
!5077 = !DILocation(line: 400, column: 14, scope: !4632)
!5078 = !DILocation(line: 400, column: 61, scope: !4632)
!5079 = !DILocation(line: 400, column: 48, scope: !4632)
!5080 = !DILocation(line: 400, column: 46, scope: !4632)
!5081 = !DILocation(line: 401, column: 9, scope: !4632)
!5082 = !DILocation(line: 401, column: 35, scope: !4632)
!5083 = !DILocation(line: 401, column: 16, scope: !4632)
!5084 = !DILocation(line: 401, column: 14, scope: !4632)
!5085 = !DILocation(line: 400, column: 68, scope: !4632)
!5086 = !DILocation(line: 399, column: 27, scope: !4632)
!5087 = !DILocation(line: 399, column: 7, scope: !4632)
!5088 = !DILocation(line: 399, column: 34, scope: !4632)
!5089 = !DILocation(line: 404, column: 7, scope: !4632)
!5090 = !DILocation(line: 406, column: 1, scope: !4578)
!5091 = distinct !DISubprogram(name: "gsl_sf_legendre_array_n", scope: !1, file: !1, line: 78, type: !246, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!5092 = !DILocalVariable(name: "lmax", arg: 1, scope: !5091, file: !1, line: 78, type: !61)
!5093 = !DILocation(line: 78, column: 38, scope: !5091)
!5094 = !DILocalVariable(name: "nlm", scope: !5091, file: !1, line: 80, type: !62)
!5095 = !DILocation(line: 80, column: 10, scope: !5091)
!5096 = !DILocation(line: 80, column: 36, scope: !5091)
!5097 = !DILocation(line: 80, column: 16, scope: !5091)
!5098 = !DILocalVariable(name: "nsqrt", scope: !5091, file: !1, line: 81, type: !62)
!5099 = !DILocation(line: 81, column: 10, scope: !5091)
!5100 = !DILocation(line: 81, column: 22, scope: !5091)
!5101 = !DILocation(line: 81, column: 20, scope: !5091)
!5102 = !DILocation(line: 81, column: 27, scope: !5091)
!5103 = !DILocation(line: 83, column: 11, scope: !5091)
!5104 = !DILocation(line: 83, column: 17, scope: !5091)
!5105 = !DILocation(line: 83, column: 15, scope: !5091)
!5106 = !DILocation(line: 83, column: 3, scope: !5091)
!5107 = distinct !DISubprogram(name: "legendre_sqrts", scope: !1, file: !1, line: 109, type: !5108, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{null, !61, !66}
!5110 = !DILocalVariable(name: "lmax", arg: 1, scope: !5107, file: !1, line: 109, type: !61)
!5111 = !DILocation(line: 109, column: 29, scope: !5107)
!5112 = !DILocalVariable(name: "array", arg: 2, scope: !5107, file: !1, line: 109, type: !66)
!5113 = !DILocation(line: 109, column: 43, scope: !5107)
!5114 = !DILocalVariable(name: "l", scope: !5107, file: !1, line: 111, type: !62)
!5115 = !DILocation(line: 111, column: 10, scope: !5107)
!5116 = !DILocation(line: 112, column: 10, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5107, file: !1, line: 112, column: 3)
!5118 = !DILocation(line: 112, column: 8, scope: !5117)
!5119 = !DILocation(line: 112, column: 15, scope: !5120)
!5120 = !DILexicalBlockFile(scope: !5121, file: !1, discriminator: 1)
!5121 = distinct !DILexicalBlock(scope: !5117, file: !1, line: 112, column: 3)
!5122 = !DILocation(line: 112, column: 24, scope: !5120)
!5123 = !DILocation(line: 112, column: 22, scope: !5120)
!5124 = !DILocation(line: 112, column: 29, scope: !5120)
!5125 = !DILocation(line: 112, column: 17, scope: !5120)
!5126 = !DILocation(line: 112, column: 3, scope: !5120)
!5127 = !DILocation(line: 113, column: 30, scope: !5121)
!5128 = !DILocation(line: 113, column: 21, scope: !5121)
!5129 = !DILocation(line: 113, column: 16, scope: !5121)
!5130 = !DILocation(line: 113, column: 11, scope: !5121)
!5131 = !DILocation(line: 113, column: 5, scope: !5121)
!5132 = !DILocation(line: 113, column: 14, scope: !5121)
!5133 = !DILocation(line: 112, column: 34, scope: !5134)
!5134 = !DILexicalBlockFile(scope: !5121, file: !1, discriminator: 2)
!5135 = !DILocation(line: 112, column: 3, scope: !5134)
!5136 = distinct !{!5136, !5137}
!5137 = !DILocation(line: 112, column: 3, scope: !5107)
!5138 = !DILocation(line: 114, column: 1, scope: !5107)
