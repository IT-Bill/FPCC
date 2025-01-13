; ModuleID = 'coulomb_bound.c'
source_filename = "coulomb_bound.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"coulomb_bound.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"gsl_sf_hydrogenicR_1_e(Z, r, &result)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"gsl_sf_hydrogenicR_e(n, l, Z, r, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hydrogenicR_1_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  %11 = load double, double* %5, align 8, !dbg !66
  %12 = fcmp ogt double %11, 0.000000e+00, !dbg !68
  br i1 %12, label %13, label %54, !dbg !69

; <label>:13:                                     ; preds = %3
  %14 = load double, double* %6, align 8, !dbg !70
  %15 = fcmp oge double %14, 0.000000e+00, !dbg !72
  br i1 %15, label %16, label %54, !dbg !73

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata double* %8, metadata !74, metadata !60), !dbg !76
  %17 = load double, double* %5, align 8, !dbg !77
  %18 = fmul double 2.000000e+00, %17, !dbg !78
  store double %18, double* %8, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata double* %9, metadata !79, metadata !60), !dbg !80
  %19 = load double, double* %8, align 8, !dbg !81
  %20 = load double, double* %5, align 8, !dbg !82
  %21 = call double @sqrt(double %20) #5, !dbg !83
  %22 = fmul double %19, %21, !dbg !84
  store double %22, double* %9, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata double* %10, metadata !85, metadata !60), !dbg !86
  %23 = load double, double* %5, align 8, !dbg !87
  %24 = fsub double -0.000000e+00, %23, !dbg !88
  %25 = load double, double* %6, align 8, !dbg !89
  %26 = fmul double %24, %25, !dbg !90
  %27 = call double @exp(double %26) #5, !dbg !91
  store double %27, double* %10, align 8, !dbg !86
  %28 = load double, double* %9, align 8, !dbg !92
  %29 = load double, double* %10, align 8, !dbg !93
  %30 = fmul double %28, %29, !dbg !94
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !95
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !96
  store double %30, double* %32, align 8, !dbg !97
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !98
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !99
  %35 = load double, double* %34, align 8, !dbg !99
  %36 = call double @fabs(double %35) #1, !dbg !100
  %37 = fmul double 0x3CC0000000000000, %36, !dbg !101
  %38 = load double, double* %5, align 8, !dbg !102
  %39 = load double, double* %6, align 8, !dbg !103
  %40 = fmul double %38, %39, !dbg !104
  %41 = call double @fabs(double %40) #1, !dbg !105
  %42 = fmul double %37, %41, !dbg !107
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !108
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !109
  store double %42, double* %44, align 8, !dbg !110
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !111
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !111
  %47 = load double, double* %46, align 8, !dbg !111
  %48 = call double @fabs(double %47) #1, !dbg !111
  %49 = fcmp olt double %48, 0x10000000000000, !dbg !111
  br i1 %49, label %50, label %53, !dbg !113

; <label>:50:                                     ; preds = %16
  br label %51, !dbg !114, !llvm.loop !116

; <label>:51:                                     ; preds = %50
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 66, i32 15), !dbg !117
  store i32 15, i32* %4, align 4, !dbg !117
  br label %63, !dbg !117
                                                  ; No predecessors!
  br label %53, !dbg !120

; <label>:53:                                     ; preds = %52, %16
  store i32 0, i32* %4, align 4, !dbg !122
  br label %63, !dbg !122

; <label>:54:                                     ; preds = %13, %3
  br label %55, !dbg !123, !llvm.loop !125

; <label>:55:                                     ; preds = %54
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !126
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !126
  store double 0x7FF8000000000000, double* %57, align 8, !dbg !126
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !126
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !126
  store double 0x7FF8000000000000, double* %59, align 8, !dbg !126
  br label %60, !dbg !126, !llvm.loop !129

; <label>:60:                                     ; preds = %55
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 70, i32 1), !dbg !131
  store i32 1, i32* %4, align 4, !dbg !131
  br label %63, !dbg !131
                                                  ; No predecessors!
  br label %62, !dbg !134

; <label>:62:                                     ; preds = %61
  br label %63

; <label>:63:                                     ; preds = %51, %53, %60, %62
  %64 = load i32, i32* %4, align 4, !dbg !136
  ret i32 %64, !dbg !136
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hydrogenicR_e(i32, i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !137 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !141, metadata !60), !dbg !142
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !143, metadata !60), !dbg !144
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !145, metadata !60), !dbg !146
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !147, metadata !60), !dbg !148
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !149, metadata !60), !dbg !150
  %22 = load i32, i32* %7, align 4, !dbg !151
  %23 = icmp slt i32 %22, 1, !dbg !153
  br i1 %23, label %35, label %24, !dbg !154

; <label>:24:                                     ; preds = %5
  %25 = load i32, i32* %8, align 4, !dbg !155
  %26 = load i32, i32* %7, align 4, !dbg !157
  %27 = sub nsw i32 %26, 1, !dbg !158
  %28 = icmp sgt i32 %25, %27, !dbg !159
  br i1 %28, label %35, label %29, !dbg !160

; <label>:29:                                     ; preds = %24
  %30 = load double, double* %9, align 8, !dbg !161
  %31 = fcmp ole double %30, 0.000000e+00, !dbg !163
  br i1 %31, label %35, label %32, !dbg !164

; <label>:32:                                     ; preds = %29
  %33 = load double, double* %10, align 8, !dbg !165
  %34 = fcmp olt double %33, 0.000000e+00, !dbg !167
  br i1 %34, label %35, label %44, !dbg !168

; <label>:35:                                     ; preds = %32, %29, %24, %5
  br label %36, !dbg !169, !llvm.loop !171

; <label>:36:                                     ; preds = %35
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !172
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !172
  store double 0x7FF8000000000000, double* %38, align 8, !dbg !172
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !172
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !172
  store double 0x7FF8000000000000, double* %40, align 8, !dbg !172
  br label %41, !dbg !172, !llvm.loop !175

; <label>:41:                                     ; preds = %36
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 81, i32 1), !dbg !177
  store i32 1, i32* %6, align 4, !dbg !177
  br label %181, !dbg !177
                                                  ; No predecessors!
  br label %43, !dbg !180

; <label>:43:                                     ; preds = %42
  br label %181, !dbg !182

; <label>:44:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata double* %12, metadata !183, metadata !60), !dbg !185
  %45 = load double, double* %9, align 8, !dbg !186
  %46 = fmul double 2.000000e+00, %45, !dbg !187
  %47 = load i32, i32* %7, align 4, !dbg !188
  %48 = sitofp i32 %47 to double, !dbg !188
  %49 = fdiv double %46, %48, !dbg !189
  store double %49, double* %12, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !190, metadata !60), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %14, metadata !192, metadata !60), !dbg !193
  %50 = load i32, i32* %7, align 4, !dbg !194
  %51 = load i32, i32* %8, align 4, !dbg !195
  %52 = load double, double* %9, align 8, !dbg !196
  %53 = call i32 @R_norm(i32 %50, i32 %51, double %52, %struct.gsl_sf_result_struct* %13), !dbg !197
  store i32 %53, i32* %14, align 4, !dbg !193
  call void @llvm.dbg.declare(metadata double* %15, metadata !198, metadata !60), !dbg !199
  %54 = load double, double* %12, align 8, !dbg !200
  %55 = load double, double* %10, align 8, !dbg !201
  %56 = fmul double %54, %55, !dbg !202
  store double %56, double* %15, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata double* %16, metadata !203, metadata !60), !dbg !204
  %57 = load double, double* %15, align 8, !dbg !205
  %58 = fmul double -5.000000e-01, %57, !dbg !206
  %59 = call double @exp(double %58) #5, !dbg !207
  store double %59, double* %16, align 8, !dbg !204
  call void @llvm.dbg.declare(metadata double* %17, metadata !208, metadata !60), !dbg !209
  %60 = load double, double* %15, align 8, !dbg !210
  %61 = load i32, i32* %8, align 4, !dbg !211
  %62 = call double @gsl_sf_pow_int(double %60, i32 %61), !dbg !212
  store double %62, double* %17, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !213, metadata !60), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %19, metadata !215, metadata !60), !dbg !216
  %63 = load i32, i32* %7, align 4, !dbg !217
  %64 = load i32, i32* %8, align 4, !dbg !218
  %65 = sub nsw i32 %63, %64, !dbg !219
  %66 = sub nsw i32 %65, 1, !dbg !220
  %67 = load i32, i32* %8, align 4, !dbg !221
  %68 = mul nsw i32 2, %67, !dbg !222
  %69 = add nsw i32 %68, 1, !dbg !223
  %70 = sitofp i32 %69 to double, !dbg !224
  %71 = load double, double* %15, align 8, !dbg !225
  %72 = call i32 @gsl_sf_laguerre_n_e(i32 %66, double %70, double %71, %struct.gsl_sf_result_struct* %18), !dbg !226
  store i32 %72, i32* %19, align 4, !dbg !216
  call void @llvm.dbg.declare(metadata double* %20, metadata !227, metadata !60), !dbg !228
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !229
  %74 = load double, double* %73, align 8, !dbg !229
  %75 = load double, double* %16, align 8, !dbg !230
  %76 = fmul double %74, %75, !dbg !231
  %77 = load double, double* %17, align 8, !dbg !232
  %78 = fmul double %76, %77, !dbg !233
  store double %78, double* %20, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata double* %21, metadata !234, metadata !60), !dbg !235
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !236
  %80 = load double, double* %79, align 8, !dbg !236
  %81 = load double, double* %16, align 8, !dbg !237
  %82 = fmul double %80, %81, !dbg !238
  %83 = load double, double* %17, align 8, !dbg !239
  %84 = fmul double %82, %83, !dbg !240
  store double %84, double* %21, align 8, !dbg !235
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !241
  %86 = load double, double* %85, align 8, !dbg !241
  %87 = load double, double* %15, align 8, !dbg !242
  %88 = fmul double 5.000000e-01, %87, !dbg !243
  %89 = fadd double %88, 1.000000e+00, !dbg !244
  %90 = fmul double %89, 0x3CB0000000000000, !dbg !245
  %91 = fmul double %86, %90, !dbg !246
  %92 = load double, double* %16, align 8, !dbg !247
  %93 = fmul double %91, %92, !dbg !248
  %94 = load double, double* %17, align 8, !dbg !249
  %95 = fmul double %93, %94, !dbg !250
  %96 = load double, double* %21, align 8, !dbg !251
  %97 = fadd double %96, %95, !dbg !251
  store double %97, double* %21, align 8, !dbg !251
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !252
  %99 = load double, double* %98, align 8, !dbg !252
  %100 = load double, double* %16, align 8, !dbg !253
  %101 = fmul double %99, %100, !dbg !254
  %102 = load i32, i32* %8, align 4, !dbg !255
  %103 = sitofp i32 %102 to double, !dbg !255
  %104 = fadd double %103, 1.000000e+00, !dbg !256
  %105 = fmul double %104, 0x3CB0000000000000, !dbg !257
  %106 = fmul double %101, %105, !dbg !258
  %107 = load double, double* %17, align 8, !dbg !259
  %108 = fmul double %106, %107, !dbg !260
  %109 = load double, double* %21, align 8, !dbg !261
  %110 = fadd double %109, %108, !dbg !261
  store double %110, double* %21, align 8, !dbg !261
  %111 = load double, double* %20, align 8, !dbg !262
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !263
  %113 = load double, double* %112, align 8, !dbg !263
  %114 = fmul double %111, %113, !dbg !264
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !265
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !266
  store double %114, double* %116, align 8, !dbg !267
  %117 = load double, double* %20, align 8, !dbg !268
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !269
  %119 = load double, double* %118, align 8, !dbg !269
  %120 = fmul double %117, %119, !dbg !270
  %121 = load double, double* %21, align 8, !dbg !271
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !272
  %123 = load double, double* %122, align 8, !dbg !272
  %124 = call double @fabs(double %123) #1, !dbg !273
  %125 = fmul double %121, %124, !dbg !274
  %126 = fadd double %120, %125, !dbg !275
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !276
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !277
  store double %126, double* %128, align 8, !dbg !278
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !279
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !280
  %131 = load double, double* %130, align 8, !dbg !280
  %132 = call double @fabs(double %131) #1, !dbg !281
  %133 = fmul double 0x3CC0000000000000, %132, !dbg !282
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !283
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 1, !dbg !284
  %136 = load double, double* %135, align 8, !dbg !285
  %137 = fadd double %136, %133, !dbg !285
  store double %137, double* %135, align 8, !dbg !285
  %138 = load i32, i32* %8, align 4, !dbg !286
  %139 = icmp eq i32 %138, 0, !dbg !288
  br i1 %139, label %146, label %140, !dbg !289

; <label>:140:                                    ; preds = %44
  %141 = load double, double* %10, align 8, !dbg !290
  %142 = fcmp ogt double %141, 0.000000e+00, !dbg !292
  br i1 %142, label %143, label %166, !dbg !293

; <label>:143:                                    ; preds = %140
  %144 = load i32, i32* %8, align 4, !dbg !294
  %145 = icmp sgt i32 %144, 0, !dbg !296
  br i1 %145, label %146, label %166, !dbg !297

; <label>:146:                                    ; preds = %143, %44
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !298
  %148 = load double, double* %147, align 8, !dbg !298
  %149 = fcmp une double %148, 0.000000e+00, !dbg !300
  br i1 %149, label %150, label %166, !dbg !301

; <label>:150:                                    ; preds = %146
  %151 = load i32, i32* %19, align 4, !dbg !302
  %152 = icmp eq i32 %151, 0, !dbg !303
  br i1 %152, label %153, label %166, !dbg !304

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* %14, align 4, !dbg !305
  %155 = icmp eq i32 %154, 0, !dbg !306
  br i1 %155, label %156, label %166, !dbg !307

; <label>:156:                                    ; preds = %153
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !309
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 0, !dbg !309
  %159 = load double, double* %158, align 8, !dbg !309
  %160 = call double @fabs(double %159) #1, !dbg !309
  %161 = fcmp olt double %160, 0x10000000000000, !dbg !309
  br i1 %161, label %162, label %165, !dbg !312

; <label>:162:                                    ; preds = %156
  br label %163, !dbg !313, !llvm.loop !315

; <label>:163:                                    ; preds = %162
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 101, i32 15), !dbg !316
  store i32 15, i32* %6, align 4, !dbg !316
  br label %181, !dbg !316
                                                  ; No predecessors!
  br label %165, !dbg !319

; <label>:165:                                    ; preds = %164, %156
  br label %166, !dbg !321

; <label>:166:                                    ; preds = %165, %153, %150, %146, %143, %140
  %167 = load i32, i32* %19, align 4, !dbg !322
  %168 = icmp ne i32 %167, 0, !dbg !322
  br i1 %168, label %169, label %171, !dbg !322

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %19, align 4, !dbg !323
  br label %179, !dbg !323

; <label>:171:                                    ; preds = %166
  %172 = load i32, i32* %14, align 4, !dbg !325
  %173 = icmp ne i32 %172, 0, !dbg !325
  br i1 %173, label %174, label %176, !dbg !325

; <label>:174:                                    ; preds = %171
  %175 = load i32, i32* %14, align 4, !dbg !327
  br label %177, !dbg !327

; <label>:176:                                    ; preds = %171
  br label %177, !dbg !329

; <label>:177:                                    ; preds = %176, %174
  %178 = phi i32 [ %175, %174 ], [ 0, %176 ], !dbg !330
  br label %179, !dbg !330

; <label>:179:                                    ; preds = %177, %169
  %180 = phi i32 [ %170, %169 ], [ %178, %177 ], !dbg !332
  store i32 %180, i32* %6, align 4, !dbg !334
  br label %181, !dbg !334

; <label>:181:                                    ; preds = %41, %163, %179, %43
  %182 = load i32, i32* %6, align 4, !dbg !335
  ret i32 %182, !dbg !335
}

; Function Attrs: nounwind uwtable
define internal i32 @R_norm(i32, i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !336 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !339, metadata !60), !dbg !340
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !341, metadata !60), !dbg !342
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !343, metadata !60), !dbg !344
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !345, metadata !60), !dbg !346
  call void @llvm.dbg.declare(metadata double* %9, metadata !347, metadata !60), !dbg !348
  %19 = load double, double* %7, align 8, !dbg !349
  %20 = fmul double 2.000000e+00, %19, !dbg !350
  %21 = load i32, i32* %5, align 4, !dbg !351
  %22 = sitofp i32 %21 to double, !dbg !351
  %23 = fdiv double %20, %22, !dbg !352
  store double %23, double* %9, align 8, !dbg !348
  call void @llvm.dbg.declare(metadata double* %10, metadata !353, metadata !60), !dbg !354
  %24 = load double, double* %9, align 8, !dbg !355
  %25 = load double, double* %9, align 8, !dbg !356
  %26 = fmul double %24, %25, !dbg !357
  %27 = load double, double* %9, align 8, !dbg !358
  %28 = fmul double %26, %27, !dbg !359
  %29 = load i32, i32* %5, align 4, !dbg !360
  %30 = sitofp i32 %29 to double, !dbg !360
  %31 = fmul double 2.000000e+00, %30, !dbg !361
  %32 = fdiv double %28, %31, !dbg !362
  %33 = call double @sqrt(double %32) #5, !dbg !363
  store double %33, double* %10, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !364, metadata !60), !dbg !365
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !366, metadata !60), !dbg !367
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !368, metadata !60), !dbg !369
  call void @llvm.dbg.declare(metadata i32* %14, metadata !370, metadata !60), !dbg !371
  %34 = load i32, i32* %5, align 4, !dbg !372
  %35 = load i32, i32* %6, align 4, !dbg !373
  %36 = add nsw i32 %34, %35, !dbg !374
  %37 = call i32 @gsl_sf_lnfact_e(i32 %36, %struct.gsl_sf_result_struct* %11), !dbg !375
  store i32 %37, i32* %14, align 4, !dbg !371
  call void @llvm.dbg.declare(metadata i32* %15, metadata !376, metadata !60), !dbg !377
  %38 = load i32, i32* %5, align 4, !dbg !378
  %39 = load i32, i32* %6, align 4, !dbg !379
  %40 = sub nsw i32 %38, %39, !dbg !380
  %41 = sub nsw i32 %40, 1, !dbg !381
  %42 = call i32 @gsl_sf_lnfact_e(i32 %41, %struct.gsl_sf_result_struct* %12), !dbg !382
  store i32 %42, i32* %15, align 4, !dbg !377
  call void @llvm.dbg.declare(metadata double* %16, metadata !383, metadata !60), !dbg !384
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !385
  %44 = load double, double* %43, align 8, !dbg !385
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !386
  %46 = load double, double* %45, align 8, !dbg !386
  %47 = fsub double %44, %46, !dbg !387
  %48 = fmul double 5.000000e-01, %47, !dbg !388
  store double %48, double* %16, align 8, !dbg !384
  call void @llvm.dbg.declare(metadata double* %17, metadata !389, metadata !60), !dbg !390
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !391
  %50 = load double, double* %49, align 8, !dbg !391
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !392
  %52 = load double, double* %51, align 8, !dbg !392
  %53 = fadd double %50, %52, !dbg !393
  %54 = fmul double 5.000000e-01, %53, !dbg !394
  %55 = load double, double* %16, align 8, !dbg !395
  %56 = call double @fabs(double %55) #1, !dbg !396
  %57 = fmul double 0x3CB0000000000000, %56, !dbg !397
  %58 = fadd double %54, %57, !dbg !398
  store double %58, double* %17, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata i32* %18, metadata !399, metadata !60), !dbg !400
  %59 = load double, double* %16, align 8, !dbg !401
  %60 = load double, double* %17, align 8, !dbg !402
  %61 = call i32 @gsl_sf_exp_err_e(double %59, double %60, %struct.gsl_sf_result_struct* %13), !dbg !403
  store i32 %61, i32* %18, align 4, !dbg !400
  %62 = load double, double* %10, align 8, !dbg !404
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !405
  %64 = load double, double* %63, align 8, !dbg !405
  %65 = fmul double %62, %64, !dbg !406
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !407
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !408
  store double %65, double* %67, align 8, !dbg !409
  %68 = load double, double* %10, align 8, !dbg !410
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !411
  %70 = load double, double* %69, align 8, !dbg !411
  %71 = fmul double %68, %70, !dbg !412
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !413
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !414
  store double %71, double* %73, align 8, !dbg !415
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !416
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !417
  %76 = load double, double* %75, align 8, !dbg !417
  %77 = call double @fabs(double %76) #1, !dbg !418
  %78 = fmul double 0x3CC0000000000000, %77, !dbg !419
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !420
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !421
  %81 = load double, double* %80, align 8, !dbg !422
  %82 = fadd double %81, %78, !dbg !422
  store double %82, double* %80, align 8, !dbg !422
  %83 = load i32, i32* %18, align 4, !dbg !423
  %84 = icmp ne i32 %83, 0, !dbg !423
  br i1 %84, label %85, label %87, !dbg !423

; <label>:85:                                     ; preds = %4
  %86 = load i32, i32* %18, align 4, !dbg !424
  br label %102, !dbg !424

; <label>:87:                                     ; preds = %4
  %88 = load i32, i32* %14, align 4, !dbg !426
  %89 = icmp ne i32 %88, 0, !dbg !426
  br i1 %89, label %90, label %92, !dbg !426

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %14, align 4, !dbg !428
  br label %100, !dbg !428

; <label>:92:                                     ; preds = %87
  %93 = load i32, i32* %15, align 4, !dbg !430
  %94 = icmp ne i32 %93, 0, !dbg !430
  br i1 %94, label %95, label %97, !dbg !430

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %15, align 4, !dbg !432
  br label %98, !dbg !432

; <label>:97:                                     ; preds = %92
  br label %98, !dbg !434

; <label>:98:                                     ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ], !dbg !436
  br label %100, !dbg !436

; <label>:100:                                    ; preds = %98, %90
  %101 = phi i32 [ %91, %90 ], [ %99, %98 ], !dbg !438
  br label %102, !dbg !438

; <label>:102:                                    ; preds = %100, %85
  %103 = phi i32 [ %86, %85 ], [ %101, %100 ], !dbg !440
  ret i32 %103, !dbg !442
}

declare double @gsl_sf_pow_int(double, i32) #4

declare i32 @gsl_sf_laguerre_n_e(i32, double, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_hydrogenicR_1(double, double) #0 !dbg !443 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !446, metadata !60), !dbg !447
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !448, metadata !60), !dbg !449
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !450, metadata !60), !dbg !451
  call void @llvm.dbg.declare(metadata i32* %7, metadata !452, metadata !60), !dbg !451
  %8 = load double, double* %4, align 8, !dbg !451
  %9 = load double, double* %5, align 8, !dbg !451
  %10 = call i32 @gsl_sf_hydrogenicR_1_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !451
  store i32 %10, i32* %7, align 4, !dbg !451
  %11 = load i32, i32* %7, align 4, !dbg !453
  %12 = icmp ne i32 %11, 0, !dbg !453
  br i1 %12, label %13, label %19, !dbg !451

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !455, !llvm.loop !458

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !460
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 113, i32 %15), !dbg !460
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !460
  %17 = load double, double* %16, align 8, !dbg !460
  store double %17, double* %3, align 8, !dbg !460
  br label %22, !dbg !460
                                                  ; No predecessors!
  br label %19, !dbg !463

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !465
  %21 = load double, double* %20, align 8, !dbg !465
  store double %21, double* %3, align 8, !dbg !465
  br label %22, !dbg !465

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !467
  ret double %23, !dbg !467
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hydrogenicR(i32, i32, double, double) #0 !dbg !468 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !471, metadata !60), !dbg !472
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !473, metadata !60), !dbg !474
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !475, metadata !60), !dbg !476
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !477, metadata !60), !dbg !478
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !479, metadata !60), !dbg !480
  call void @llvm.dbg.declare(metadata i32* %11, metadata !481, metadata !60), !dbg !480
  %12 = load i32, i32* %6, align 4, !dbg !480
  %13 = load i32, i32* %7, align 4, !dbg !480
  %14 = load double, double* %8, align 8, !dbg !480
  %15 = load double, double* %9, align 8, !dbg !480
  %16 = call i32 @gsl_sf_hydrogenicR_e(i32 %12, i32 %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !480
  store i32 %16, i32* %11, align 4, !dbg !480
  %17 = load i32, i32* %11, align 4, !dbg !482
  %18 = icmp ne i32 %17, 0, !dbg !482
  br i1 %18, label %19, label %25, !dbg !480

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !484, !llvm.loop !487

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %11, align 4, !dbg !489
  call void @gsl_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 119, i32 %21), !dbg !489
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !489
  %23 = load double, double* %22, align 8, !dbg !489
  store double %23, double* %5, align 8, !dbg !489
  br label %28, !dbg !489
                                                  ; No predecessors!
  br label %25, !dbg !492

; <label>:25:                                     ; preds = %24, %4
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !494
  %27 = load double, double* %26, align 8, !dbg !494
  store double %27, double* %5, align 8, !dbg !494
  br label %28, !dbg !494

; <label>:28:                                     ; preds = %25, %20
  %29 = load double, double* %5, align 8, !dbg !496
  ret double %29, !dbg !496
}

declare i32 @gsl_sf_lnfact_e(i32, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "coulomb_bound.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_hydrogenicR_1_e", scope: !1, file: !1, line: 58, type: !46, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !51}
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
!59 = !DILocalVariable(name: "Z", arg: 1, scope: !45, file: !1, line: 58, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 58, column: 37, scope: !45)
!62 = !DILocalVariable(name: "r", arg: 2, scope: !45, file: !1, line: 58, type: !49)
!63 = !DILocation(line: 58, column: 53, scope: !45)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !45, file: !1, line: 58, type: !51)
!65 = !DILocation(line: 58, column: 72, scope: !45)
!66 = !DILocation(line: 60, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !45, file: !1, line: 60, column: 6)
!68 = !DILocation(line: 60, column: 8, scope: !67)
!69 = !DILocation(line: 60, column: 14, scope: !67)
!70 = !DILocation(line: 60, column: 17, scope: !71)
!71 = !DILexicalBlockFile(scope: !67, file: !1, discriminator: 1)
!72 = !DILocation(line: 60, column: 19, scope: !71)
!73 = !DILocation(line: 60, column: 6, scope: !71)
!74 = !DILocalVariable(name: "A", scope: !75, file: !1, line: 61, type: !50)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 60, column: 27)
!76 = !DILocation(line: 61, column: 12, scope: !75)
!77 = !DILocation(line: 61, column: 20, scope: !75)
!78 = !DILocation(line: 61, column: 19, scope: !75)
!79 = !DILocalVariable(name: "norm", scope: !75, file: !1, line: 62, type: !50)
!80 = !DILocation(line: 62, column: 12, scope: !75)
!81 = !DILocation(line: 62, column: 19, scope: !75)
!82 = !DILocation(line: 62, column: 26, scope: !75)
!83 = !DILocation(line: 62, column: 21, scope: !75)
!84 = !DILocation(line: 62, column: 20, scope: !75)
!85 = !DILocalVariable(name: "ea", scope: !75, file: !1, line: 63, type: !50)
!86 = !DILocation(line: 63, column: 12, scope: !75)
!87 = !DILocation(line: 63, column: 22, scope: !75)
!88 = !DILocation(line: 63, column: 21, scope: !75)
!89 = !DILocation(line: 63, column: 24, scope: !75)
!90 = !DILocation(line: 63, column: 23, scope: !75)
!91 = !DILocation(line: 63, column: 17, scope: !75)
!92 = !DILocation(line: 64, column: 19, scope: !75)
!93 = !DILocation(line: 64, column: 24, scope: !75)
!94 = !DILocation(line: 64, column: 23, scope: !75)
!95 = !DILocation(line: 64, column: 5, scope: !75)
!96 = !DILocation(line: 64, column: 13, scope: !75)
!97 = !DILocation(line: 64, column: 17, scope: !75)
!98 = !DILocation(line: 65, column: 48, scope: !75)
!99 = !DILocation(line: 65, column: 56, scope: !75)
!100 = !DILocation(line: 65, column: 43, scope: !75)
!101 = !DILocation(line: 65, column: 41, scope: !75)
!102 = !DILocation(line: 65, column: 68, scope: !75)
!103 = !DILocation(line: 65, column: 70, scope: !75)
!104 = !DILocation(line: 65, column: 69, scope: !75)
!105 = !DILocation(line: 65, column: 63, scope: !106)
!106 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 1)
!107 = !DILocation(line: 65, column: 61, scope: !75)
!108 = !DILocation(line: 65, column: 5, scope: !75)
!109 = !DILocation(line: 65, column: 13, scope: !75)
!110 = !DILocation(line: 65, column: 17, scope: !75)
!111 = !DILocation(line: 66, column: 5, scope: !112)
!112 = distinct !DILexicalBlock(scope: !75, file: !1, line: 66, column: 5)
!113 = !DILocation(line: 66, column: 5, scope: !75)
!114 = !DILocation(line: 66, column: 5, scope: !115)
!115 = !DILexicalBlockFile(scope: !112, file: !1, discriminator: 1)
!116 = distinct !{!116, !111}
!117 = !DILocation(line: 66, column: 5, scope: !118)
!118 = !DILexicalBlockFile(scope: !119, file: !1, discriminator: 2)
!119 = distinct !DILexicalBlock(scope: !112, file: !1, line: 66, column: 5)
!120 = !DILocation(line: 66, column: 5, scope: !121)
!121 = !DILexicalBlockFile(scope: !119, file: !1, discriminator: 3)
!122 = !DILocation(line: 67, column: 5, scope: !75)
!123 = !DILocation(line: 70, column: 5, scope: !124)
!124 = distinct !DILexicalBlock(scope: !67, file: !1, line: 69, column: 8)
!125 = distinct !{!125, !123}
!126 = !DILocation(line: 70, column: 5, scope: !127)
!127 = !DILexicalBlockFile(scope: !128, file: !1, discriminator: 1)
!128 = distinct !DILexicalBlock(scope: !124, file: !1, line: 70, column: 5)
!129 = distinct !{!129, !130}
!130 = !DILocation(line: 70, column: 5, scope: !128)
!131 = !DILocation(line: 70, column: 5, scope: !132)
!132 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 2)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 70, column: 5)
!134 = !DILocation(line: 70, column: 5, scope: !135)
!135 = !DILexicalBlockFile(scope: !128, file: !1, discriminator: 3)
!136 = !DILocation(line: 72, column: 1, scope: !45)
!137 = distinct !DISubprogram(name: "gsl_sf_hydrogenicR_e", scope: !1, file: !1, line: 76, type: !138, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!138 = !DISubroutineType(types: !139)
!139 = !{!48, !140, !140, !49, !49, !51}
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!141 = !DILocalVariable(name: "n", arg: 1, scope: !137, file: !1, line: 76, type: !140)
!142 = !DILocation(line: 76, column: 32, scope: !137)
!143 = !DILocalVariable(name: "l", arg: 2, scope: !137, file: !1, line: 76, type: !140)
!144 = !DILocation(line: 76, column: 45, scope: !137)
!145 = !DILocalVariable(name: "Z", arg: 3, scope: !137, file: !1, line: 77, type: !49)
!146 = !DILocation(line: 77, column: 38, scope: !137)
!147 = !DILocalVariable(name: "r", arg: 4, scope: !137, file: !1, line: 77, type: !49)
!148 = !DILocation(line: 77, column: 54, scope: !137)
!149 = !DILocalVariable(name: "result", arg: 5, scope: !137, file: !1, line: 78, type: !51)
!150 = !DILocation(line: 78, column: 41, scope: !137)
!151 = !DILocation(line: 80, column: 6, scope: !152)
!152 = distinct !DILexicalBlock(scope: !137, file: !1, line: 80, column: 6)
!153 = !DILocation(line: 80, column: 8, scope: !152)
!154 = !DILocation(line: 80, column: 12, scope: !152)
!155 = !DILocation(line: 80, column: 15, scope: !156)
!156 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 1)
!157 = !DILocation(line: 80, column: 19, scope: !156)
!158 = !DILocation(line: 80, column: 20, scope: !156)
!159 = !DILocation(line: 80, column: 17, scope: !156)
!160 = !DILocation(line: 80, column: 23, scope: !156)
!161 = !DILocation(line: 80, column: 26, scope: !162)
!162 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 2)
!163 = !DILocation(line: 80, column: 28, scope: !162)
!164 = !DILocation(line: 80, column: 35, scope: !162)
!165 = !DILocation(line: 80, column: 38, scope: !166)
!166 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 3)
!167 = !DILocation(line: 80, column: 40, scope: !166)
!168 = !DILocation(line: 80, column: 6, scope: !166)
!169 = !DILocation(line: 81, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !152, file: !1, line: 80, column: 47)
!171 = distinct !{!171, !169}
!172 = !DILocation(line: 81, column: 5, scope: !173)
!173 = !DILexicalBlockFile(scope: !174, file: !1, discriminator: 1)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 81, column: 5)
!175 = distinct !{!175, !176}
!176 = !DILocation(line: 81, column: 5, scope: !174)
!177 = !DILocation(line: 81, column: 5, scope: !178)
!178 = !DILexicalBlockFile(scope: !179, file: !1, discriminator: 2)
!179 = distinct !DILexicalBlock(scope: !174, file: !1, line: 81, column: 5)
!180 = !DILocation(line: 81, column: 5, scope: !181)
!181 = !DILexicalBlockFile(scope: !174, file: !1, discriminator: 3)
!182 = !DILocation(line: 82, column: 3, scope: !170)
!183 = !DILocalVariable(name: "A", scope: !184, file: !1, line: 84, type: !50)
!184 = distinct !DILexicalBlock(scope: !152, file: !1, line: 83, column: 8)
!185 = !DILocation(line: 84, column: 12, scope: !184)
!186 = !DILocation(line: 84, column: 20, scope: !184)
!187 = !DILocation(line: 84, column: 19, scope: !184)
!188 = !DILocation(line: 84, column: 22, scope: !184)
!189 = !DILocation(line: 84, column: 21, scope: !184)
!190 = !DILocalVariable(name: "norm", scope: !184, file: !1, line: 85, type: !52)
!191 = !DILocation(line: 85, column: 19, scope: !184)
!192 = !DILocalVariable(name: "stat_norm", scope: !184, file: !1, line: 86, type: !48)
!193 = !DILocation(line: 86, column: 9, scope: !184)
!194 = !DILocation(line: 86, column: 28, scope: !184)
!195 = !DILocation(line: 86, column: 31, scope: !184)
!196 = !DILocation(line: 86, column: 34, scope: !184)
!197 = !DILocation(line: 86, column: 21, scope: !184)
!198 = !DILocalVariable(name: "rho", scope: !184, file: !1, line: 87, type: !50)
!199 = !DILocation(line: 87, column: 12, scope: !184)
!200 = !DILocation(line: 87, column: 18, scope: !184)
!201 = !DILocation(line: 87, column: 20, scope: !184)
!202 = !DILocation(line: 87, column: 19, scope: !184)
!203 = !DILocalVariable(name: "ea", scope: !184, file: !1, line: 88, type: !50)
!204 = !DILocation(line: 88, column: 12, scope: !184)
!205 = !DILocation(line: 88, column: 26, scope: !184)
!206 = !DILocation(line: 88, column: 25, scope: !184)
!207 = !DILocation(line: 88, column: 17, scope: !184)
!208 = !DILocalVariable(name: "pp", scope: !184, file: !1, line: 89, type: !50)
!209 = !DILocation(line: 89, column: 12, scope: !184)
!210 = !DILocation(line: 89, column: 32, scope: !184)
!211 = !DILocation(line: 89, column: 37, scope: !184)
!212 = !DILocation(line: 89, column: 17, scope: !184)
!213 = !DILocalVariable(name: "lag", scope: !184, file: !1, line: 90, type: !52)
!214 = !DILocation(line: 90, column: 19, scope: !184)
!215 = !DILocalVariable(name: "stat_lag", scope: !184, file: !1, line: 91, type: !48)
!216 = !DILocation(line: 91, column: 9, scope: !184)
!217 = !DILocation(line: 91, column: 40, scope: !184)
!218 = !DILocation(line: 91, column: 42, scope: !184)
!219 = !DILocation(line: 91, column: 41, scope: !184)
!220 = !DILocation(line: 91, column: 43, scope: !184)
!221 = !DILocation(line: 91, column: 49, scope: !184)
!222 = !DILocation(line: 91, column: 48, scope: !184)
!223 = !DILocation(line: 91, column: 50, scope: !184)
!224 = !DILocation(line: 91, column: 47, scope: !184)
!225 = !DILocation(line: 91, column: 54, scope: !184)
!226 = !DILocation(line: 91, column: 20, scope: !184)
!227 = !DILocalVariable(name: "W_val", scope: !184, file: !1, line: 92, type: !50)
!228 = !DILocation(line: 92, column: 12, scope: !184)
!229 = !DILocation(line: 92, column: 25, scope: !184)
!230 = !DILocation(line: 92, column: 31, scope: !184)
!231 = !DILocation(line: 92, column: 29, scope: !184)
!232 = !DILocation(line: 92, column: 36, scope: !184)
!233 = !DILocation(line: 92, column: 34, scope: !184)
!234 = !DILocalVariable(name: "W_err", scope: !184, file: !1, line: 93, type: !50)
!235 = !DILocation(line: 93, column: 12, scope: !184)
!236 = !DILocation(line: 93, column: 25, scope: !184)
!237 = !DILocation(line: 93, column: 31, scope: !184)
!238 = !DILocation(line: 93, column: 29, scope: !184)
!239 = !DILocation(line: 93, column: 36, scope: !184)
!240 = !DILocation(line: 93, column: 34, scope: !184)
!241 = !DILocation(line: 94, column: 19, scope: !184)
!242 = !DILocation(line: 94, column: 31, scope: !184)
!243 = !DILocation(line: 94, column: 30, scope: !184)
!244 = !DILocation(line: 94, column: 35, scope: !184)
!245 = !DILocation(line: 94, column: 42, scope: !184)
!246 = !DILocation(line: 94, column: 23, scope: !184)
!247 = !DILocation(line: 94, column: 63, scope: !184)
!248 = !DILocation(line: 94, column: 61, scope: !184)
!249 = !DILocation(line: 94, column: 68, scope: !184)
!250 = !DILocation(line: 94, column: 66, scope: !184)
!251 = !DILocation(line: 94, column: 11, scope: !184)
!252 = !DILocation(line: 95, column: 19, scope: !184)
!253 = !DILocation(line: 95, column: 25, scope: !184)
!254 = !DILocation(line: 95, column: 23, scope: !184)
!255 = !DILocation(line: 95, column: 32, scope: !184)
!256 = !DILocation(line: 95, column: 33, scope: !184)
!257 = !DILocation(line: 95, column: 39, scope: !184)
!258 = !DILocation(line: 95, column: 28, scope: !184)
!259 = !DILocation(line: 95, column: 60, scope: !184)
!260 = !DILocation(line: 95, column: 58, scope: !184)
!261 = !DILocation(line: 95, column: 11, scope: !184)
!262 = !DILocation(line: 96, column: 20, scope: !184)
!263 = !DILocation(line: 96, column: 32, scope: !184)
!264 = !DILocation(line: 96, column: 26, scope: !184)
!265 = !DILocation(line: 96, column: 5, scope: !184)
!266 = !DILocation(line: 96, column: 13, scope: !184)
!267 = !DILocation(line: 96, column: 18, scope: !184)
!268 = !DILocation(line: 97, column: 20, scope: !184)
!269 = !DILocation(line: 97, column: 32, scope: !184)
!270 = !DILocation(line: 97, column: 26, scope: !184)
!271 = !DILocation(line: 97, column: 38, scope: !184)
!272 = !DILocation(line: 97, column: 55, scope: !184)
!273 = !DILocation(line: 97, column: 46, scope: !184)
!274 = !DILocation(line: 97, column: 44, scope: !184)
!275 = !DILocation(line: 97, column: 36, scope: !184)
!276 = !DILocation(line: 97, column: 5, scope: !184)
!277 = !DILocation(line: 97, column: 13, scope: !184)
!278 = !DILocation(line: 97, column: 18, scope: !184)
!279 = !DILocation(line: 98, column: 49, scope: !184)
!280 = !DILocation(line: 98, column: 57, scope: !184)
!281 = !DILocation(line: 98, column: 44, scope: !184)
!282 = !DILocation(line: 98, column: 42, scope: !184)
!283 = !DILocation(line: 98, column: 5, scope: !184)
!284 = !DILocation(line: 98, column: 13, scope: !184)
!285 = !DILocation(line: 98, column: 17, scope: !184)
!286 = !DILocation(line: 99, column: 10, scope: !287)
!287 = distinct !DILexicalBlock(scope: !184, file: !1, line: 99, column: 9)
!288 = !DILocation(line: 99, column: 12, scope: !287)
!289 = !DILocation(line: 99, column: 17, scope: !287)
!290 = !DILocation(line: 99, column: 21, scope: !291)
!291 = !DILexicalBlockFile(scope: !287, file: !1, discriminator: 1)
!292 = !DILocation(line: 99, column: 23, scope: !291)
!293 = !DILocation(line: 99, column: 27, scope: !291)
!294 = !DILocation(line: 99, column: 30, scope: !295)
!295 = !DILexicalBlockFile(scope: !287, file: !1, discriminator: 2)
!296 = !DILocation(line: 99, column: 32, scope: !295)
!297 = !DILocation(line: 99, column: 38, scope: !295)
!298 = !DILocation(line: 99, column: 45, scope: !299)
!299 = !DILexicalBlockFile(scope: !287, file: !1, discriminator: 3)
!300 = !DILocation(line: 99, column: 49, scope: !299)
!301 = !DILocation(line: 100, column: 9, scope: !287)
!302 = !DILocation(line: 100, column: 12, scope: !291)
!303 = !DILocation(line: 100, column: 21, scope: !291)
!304 = !DILocation(line: 100, column: 36, scope: !291)
!305 = !DILocation(line: 100, column: 39, scope: !295)
!306 = !DILocation(line: 100, column: 49, scope: !295)
!307 = !DILocation(line: 99, column: 9, scope: !308)
!308 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 4)
!309 = !DILocation(line: 101, column: 7, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 101, column: 7)
!311 = distinct !DILexicalBlock(scope: !287, file: !1, line: 100, column: 65)
!312 = !DILocation(line: 101, column: 7, scope: !311)
!313 = !DILocation(line: 101, column: 7, scope: !314)
!314 = !DILexicalBlockFile(scope: !310, file: !1, discriminator: 1)
!315 = distinct !{!315, !309}
!316 = !DILocation(line: 101, column: 7, scope: !317)
!317 = !DILexicalBlockFile(scope: !318, file: !1, discriminator: 2)
!318 = distinct !DILexicalBlock(scope: !310, file: !1, line: 101, column: 7)
!319 = !DILocation(line: 101, column: 7, scope: !320)
!320 = !DILexicalBlockFile(scope: !318, file: !1, discriminator: 3)
!321 = !DILocation(line: 102, column: 5, scope: !311)
!322 = !DILocation(line: 103, column: 12, scope: !184)
!323 = !DILocation(line: 103, column: 12, scope: !324)
!324 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 1)
!325 = !DILocation(line: 103, column: 12, scope: !326)
!326 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 2)
!327 = !DILocation(line: 103, column: 12, scope: !328)
!328 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 3)
!329 = !DILocation(line: 103, column: 12, scope: !308)
!330 = !DILocation(line: 103, column: 12, scope: !331)
!331 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 5)
!332 = !DILocation(line: 103, column: 12, scope: !333)
!333 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 6)
!334 = !DILocation(line: 103, column: 5, scope: !333)
!335 = !DILocation(line: 105, column: 1, scope: !137)
!336 = distinct !DISubprogram(name: "R_norm", scope: !1, file: !1, line: 37, type: !337, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!337 = !DISubroutineType(types: !338)
!338 = !{!48, !140, !140, !49, !51}
!339 = !DILocalVariable(name: "n", arg: 1, scope: !336, file: !1, line: 37, type: !140)
!340 = !DILocation(line: 37, column: 18, scope: !336)
!341 = !DILocalVariable(name: "l", arg: 2, scope: !336, file: !1, line: 37, type: !140)
!342 = !DILocation(line: 37, column: 31, scope: !336)
!343 = !DILocalVariable(name: "Z", arg: 3, scope: !336, file: !1, line: 37, type: !49)
!344 = !DILocation(line: 37, column: 47, scope: !336)
!345 = !DILocalVariable(name: "result", arg: 4, scope: !336, file: !1, line: 37, type: !51)
!346 = !DILocation(line: 37, column: 66, scope: !336)
!347 = !DILocalVariable(name: "A", scope: !336, file: !1, line: 39, type: !50)
!348 = !DILocation(line: 39, column: 10, scope: !336)
!349 = !DILocation(line: 39, column: 20, scope: !336)
!350 = !DILocation(line: 39, column: 19, scope: !336)
!351 = !DILocation(line: 39, column: 22, scope: !336)
!352 = !DILocation(line: 39, column: 21, scope: !336)
!353 = !DILocalVariable(name: "pre", scope: !336, file: !1, line: 40, type: !50)
!354 = !DILocation(line: 40, column: 10, scope: !336)
!355 = !DILocation(line: 40, column: 21, scope: !336)
!356 = !DILocation(line: 40, column: 23, scope: !336)
!357 = !DILocation(line: 40, column: 22, scope: !336)
!358 = !DILocation(line: 40, column: 25, scope: !336)
!359 = !DILocation(line: 40, column: 24, scope: !336)
!360 = !DILocation(line: 40, column: 33, scope: !336)
!361 = !DILocation(line: 40, column: 32, scope: !336)
!362 = !DILocation(line: 40, column: 27, scope: !336)
!363 = !DILocation(line: 40, column: 16, scope: !336)
!364 = !DILocalVariable(name: "ln_a", scope: !336, file: !1, line: 41, type: !52)
!365 = !DILocation(line: 41, column: 17, scope: !336)
!366 = !DILocalVariable(name: "ln_b", scope: !336, file: !1, line: 41, type: !52)
!367 = !DILocation(line: 41, column: 23, scope: !336)
!368 = !DILocalVariable(name: "ex", scope: !336, file: !1, line: 42, type: !52)
!369 = !DILocation(line: 42, column: 17, scope: !336)
!370 = !DILocalVariable(name: "stat_a", scope: !336, file: !1, line: 43, type: !48)
!371 = !DILocation(line: 43, column: 7, scope: !336)
!372 = !DILocation(line: 43, column: 32, scope: !336)
!373 = !DILocation(line: 43, column: 34, scope: !336)
!374 = !DILocation(line: 43, column: 33, scope: !336)
!375 = !DILocation(line: 43, column: 16, scope: !336)
!376 = !DILocalVariable(name: "stat_b", scope: !336, file: !1, line: 44, type: !48)
!377 = !DILocation(line: 44, column: 7, scope: !336)
!378 = !DILocation(line: 44, column: 32, scope: !336)
!379 = !DILocation(line: 44, column: 34, scope: !336)
!380 = !DILocation(line: 44, column: 33, scope: !336)
!381 = !DILocation(line: 44, column: 35, scope: !336)
!382 = !DILocation(line: 44, column: 16, scope: !336)
!383 = !DILocalVariable(name: "diff_val", scope: !336, file: !1, line: 45, type: !50)
!384 = !DILocation(line: 45, column: 10, scope: !336)
!385 = !DILocation(line: 45, column: 31, scope: !336)
!386 = !DILocation(line: 45, column: 42, scope: !336)
!387 = !DILocation(line: 45, column: 35, scope: !336)
!388 = !DILocation(line: 45, column: 24, scope: !336)
!389 = !DILocalVariable(name: "diff_err", scope: !336, file: !1, line: 46, type: !50)
!390 = !DILocation(line: 46, column: 10, scope: !336)
!391 = !DILocation(line: 46, column: 31, scope: !336)
!392 = !DILocation(line: 46, column: 42, scope: !336)
!393 = !DILocation(line: 46, column: 35, scope: !336)
!394 = !DILocation(line: 46, column: 24, scope: !336)
!395 = !DILocation(line: 46, column: 72, scope: !336)
!396 = !DILocation(line: 46, column: 67, scope: !336)
!397 = !DILocation(line: 46, column: 65, scope: !336)
!398 = !DILocation(line: 46, column: 47, scope: !336)
!399 = !DILocalVariable(name: "stat_e", scope: !336, file: !1, line: 47, type: !48)
!400 = !DILocation(line: 47, column: 7, scope: !336)
!401 = !DILocation(line: 47, column: 33, scope: !336)
!402 = !DILocation(line: 47, column: 43, scope: !336)
!403 = !DILocation(line: 47, column: 16, scope: !336)
!404 = !DILocation(line: 48, column: 18, scope: !336)
!405 = !DILocation(line: 48, column: 27, scope: !336)
!406 = !DILocation(line: 48, column: 22, scope: !336)
!407 = !DILocation(line: 48, column: 3, scope: !336)
!408 = !DILocation(line: 48, column: 11, scope: !336)
!409 = !DILocation(line: 48, column: 16, scope: !336)
!410 = !DILocation(line: 49, column: 18, scope: !336)
!411 = !DILocation(line: 49, column: 27, scope: !336)
!412 = !DILocation(line: 49, column: 22, scope: !336)
!413 = !DILocation(line: 49, column: 3, scope: !336)
!414 = !DILocation(line: 49, column: 11, scope: !336)
!415 = !DILocation(line: 49, column: 16, scope: !336)
!416 = !DILocation(line: 50, column: 47, scope: !336)
!417 = !DILocation(line: 50, column: 55, scope: !336)
!418 = !DILocation(line: 50, column: 42, scope: !336)
!419 = !DILocation(line: 50, column: 40, scope: !336)
!420 = !DILocation(line: 50, column: 3, scope: !336)
!421 = !DILocation(line: 50, column: 11, scope: !336)
!422 = !DILocation(line: 50, column: 15, scope: !336)
!423 = !DILocation(line: 51, column: 10, scope: !336)
!424 = !DILocation(line: 51, column: 10, scope: !425)
!425 = !DILexicalBlockFile(scope: !336, file: !1, discriminator: 1)
!426 = !DILocation(line: 51, column: 10, scope: !427)
!427 = !DILexicalBlockFile(scope: !336, file: !1, discriminator: 2)
!428 = !DILocation(line: 51, column: 10, scope: !429)
!429 = !DILexicalBlockFile(scope: !336, file: !1, discriminator: 3)
!430 = !DILocation(line: 51, column: 10, scope: !431)
!431 = !DILexicalBlockFile(scope: !336, file: !1, discriminator: 4)
!432 = !DILocation(line: 51, column: 10, scope: !433)
!433 = !DILexicalBlockFile(scope: !336, file: !1, discriminator: 5)
!434 = !DILocation(line: 51, column: 10, scope: !435)
!435 = !DILexicalBlockFile(scope: !336, file: !1, discriminator: 6)
!436 = !DILocation(line: 51, column: 10, scope: !437)
!437 = !DILexicalBlockFile(scope: !336, file: !1, discriminator: 7)
!438 = !DILocation(line: 51, column: 10, scope: !439)
!439 = !DILexicalBlockFile(scope: !336, file: !1, discriminator: 8)
!440 = !DILocation(line: 51, column: 10, scope: !441)
!441 = !DILexicalBlockFile(scope: !336, file: !1, discriminator: 9)
!442 = !DILocation(line: 51, column: 3, scope: !441)
!443 = distinct !DISubprogram(name: "gsl_sf_hydrogenicR_1", scope: !1, file: !1, line: 111, type: !444, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!444 = !DISubroutineType(types: !445)
!445 = !{!50, !49, !49}
!446 = !DILocalVariable(name: "Z", arg: 1, scope: !443, file: !1, line: 111, type: !49)
!447 = !DILocation(line: 111, column: 42, scope: !443)
!448 = !DILocalVariable(name: "r", arg: 2, scope: !443, file: !1, line: 111, type: !49)
!449 = !DILocation(line: 111, column: 58, scope: !443)
!450 = !DILocalVariable(name: "result", scope: !443, file: !1, line: 113, type: !52)
!451 = !DILocation(line: 113, column: 3, scope: !443)
!452 = !DILocalVariable(name: "status", scope: !443, file: !1, line: 113, type: !48)
!453 = !DILocation(line: 113, column: 3, scope: !454)
!454 = distinct !DILexicalBlock(scope: !443, file: !1, line: 113, column: 3)
!455 = !DILocation(line: 113, column: 3, scope: !456)
!456 = !DILexicalBlockFile(scope: !457, file: !1, discriminator: 1)
!457 = distinct !DILexicalBlock(scope: !454, file: !1, line: 113, column: 3)
!458 = distinct !{!458, !459}
!459 = !DILocation(line: 113, column: 3, scope: !457)
!460 = !DILocation(line: 113, column: 3, scope: !461)
!461 = !DILexicalBlockFile(scope: !462, file: !1, discriminator: 2)
!462 = distinct !DILexicalBlock(scope: !457, file: !1, line: 113, column: 3)
!463 = !DILocation(line: 113, column: 3, scope: !464)
!464 = !DILexicalBlockFile(scope: !457, file: !1, discriminator: 3)
!465 = !DILocation(line: 113, column: 3, scope: !466)
!466 = !DILexicalBlockFile(scope: !443, file: !1, discriminator: 4)
!467 = !DILocation(line: 114, column: 1, scope: !443)
!468 = distinct !DISubprogram(name: "gsl_sf_hydrogenicR", scope: !1, file: !1, line: 117, type: !469, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!469 = !DISubroutineType(types: !470)
!470 = !{!50, !140, !140, !49, !49}
!471 = !DILocalVariable(name: "n", arg: 1, scope: !468, file: !1, line: 117, type: !140)
!472 = !DILocation(line: 117, column: 37, scope: !468)
!473 = !DILocalVariable(name: "l", arg: 2, scope: !468, file: !1, line: 117, type: !140)
!474 = !DILocation(line: 117, column: 50, scope: !468)
!475 = !DILocalVariable(name: "Z", arg: 3, scope: !468, file: !1, line: 117, type: !49)
!476 = !DILocation(line: 117, column: 66, scope: !468)
!477 = !DILocalVariable(name: "r", arg: 4, scope: !468, file: !1, line: 117, type: !49)
!478 = !DILocation(line: 117, column: 82, scope: !468)
!479 = !DILocalVariable(name: "result", scope: !468, file: !1, line: 119, type: !52)
!480 = !DILocation(line: 119, column: 3, scope: !468)
!481 = !DILocalVariable(name: "status", scope: !468, file: !1, line: 119, type: !48)
!482 = !DILocation(line: 119, column: 3, scope: !483)
!483 = distinct !DILexicalBlock(scope: !468, file: !1, line: 119, column: 3)
!484 = !DILocation(line: 119, column: 3, scope: !485)
!485 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 1)
!486 = distinct !DILexicalBlock(scope: !483, file: !1, line: 119, column: 3)
!487 = distinct !{!487, !488}
!488 = !DILocation(line: 119, column: 3, scope: !486)
!489 = !DILocation(line: 119, column: 3, scope: !490)
!490 = !DILexicalBlockFile(scope: !491, file: !1, discriminator: 2)
!491 = distinct !DILexicalBlock(scope: !486, file: !1, line: 119, column: 3)
!492 = !DILocation(line: 119, column: 3, scope: !493)
!493 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 3)
!494 = !DILocation(line: 119, column: 3, scope: !495)
!495 = !DILexicalBlockFile(scope: !468, file: !1, discriminator: 4)
!496 = !DILocation(line: 120, column: 1, scope: !468)
