; ModuleID = 'legendre_poly.c'
source_filename = "legendre_poly.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"legendre_poly.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_P1_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_P2_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_P3_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"gsl_sf_legendre_Pl_e(l, x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"gsl_sf_legendre_Plm_e(l, m, x, &result)\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"gsl_sf_legendre_sphPlm_e(l, m, x, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_P1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !59, metadata !60), !dbg !61
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !62, metadata !60), !dbg !63
  %5 = load double, double* %3, align 8, !dbg !64
  %6 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !66
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !67
  store double %5, double* %7, align 8, !dbg !68
  %8 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !69
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !70
  store double 0.000000e+00, double* %9, align 8, !dbg !71
  ret i32 0, !dbg !72
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_P2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !73 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !74, metadata !60), !dbg !75
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !76, metadata !60), !dbg !77
  %5 = load double, double* %3, align 8, !dbg !78
  %6 = fmul double 3.000000e+00, %5, !dbg !80
  %7 = load double, double* %3, align 8, !dbg !81
  %8 = fmul double %6, %7, !dbg !82
  %9 = fsub double %8, 1.000000e+00, !dbg !83
  %10 = fmul double 5.000000e-01, %9, !dbg !84
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !85
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !86
  store double %10, double* %12, align 8, !dbg !87
  %13 = load double, double* %3, align 8, !dbg !88
  %14 = fmul double 3.000000e+00, %13, !dbg !89
  %15 = load double, double* %3, align 8, !dbg !90
  %16 = fmul double %14, %15, !dbg !91
  %17 = call double @fabs(double %16) #1, !dbg !92
  %18 = fadd double %17, 1.000000e+00, !dbg !93
  %19 = fmul double 0x3CB0000000000000, %18, !dbg !94
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !95
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !96
  store double %19, double* %21, align 8, !dbg !97
  ret i32 0, !dbg !98
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_P3_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !99 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !100, metadata !60), !dbg !101
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !102, metadata !60), !dbg !103
  %5 = load double, double* %3, align 8, !dbg !104
  %6 = fmul double 5.000000e-01, %5, !dbg !106
  %7 = load double, double* %3, align 8, !dbg !107
  %8 = fmul double 5.000000e+00, %7, !dbg !108
  %9 = load double, double* %3, align 8, !dbg !109
  %10 = fmul double %8, %9, !dbg !110
  %11 = fsub double %10, 3.000000e+00, !dbg !111
  %12 = fmul double %6, %11, !dbg !112
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !113
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !114
  store double %12, double* %14, align 8, !dbg !115
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !116
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !117
  %17 = load double, double* %16, align 8, !dbg !117
  %18 = call double @fabs(double %17) #1, !dbg !118
  %19 = load double, double* %3, align 8, !dbg !119
  %20 = call double @fabs(double %19) #1, !dbg !120
  %21 = fmul double 5.000000e-01, %20, !dbg !122
  %22 = load double, double* %3, align 8, !dbg !123
  %23 = fmul double 5.000000e+00, %22, !dbg !124
  %24 = load double, double* %3, align 8, !dbg !125
  %25 = fmul double %23, %24, !dbg !126
  %26 = call double @fabs(double %25) #1, !dbg !127
  %27 = fadd double %26, 3.000000e+00, !dbg !129
  %28 = fmul double %21, %27, !dbg !130
  %29 = fadd double %18, %28, !dbg !131
  %30 = fmul double 0x3CB0000000000000, %29, !dbg !132
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !133
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !134
  store double %30, double* %32, align 8, !dbg !135
  ret i32 0, !dbg !136
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Pl_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !137 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !142, metadata !60), !dbg !143
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !144, metadata !60), !dbg !145
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !146, metadata !60), !dbg !147
  %26 = load i32, i32* %5, align 4, !dbg !148
  %27 = icmp slt i32 %26, 0, !dbg !150
  br i1 %27, label %34, label %28, !dbg !151

; <label>:28:                                     ; preds = %3
  %29 = load double, double* %6, align 8, !dbg !152
  %30 = fcmp olt double %29, -1.000000e+00, !dbg !154
  br i1 %30, label %34, label %31, !dbg !155

; <label>:31:                                     ; preds = %28
  %32 = load double, double* %6, align 8, !dbg !156
  %33 = fcmp ogt double %32, 1.000000e+00, !dbg !158
  br i1 %33, label %34, label %43, !dbg !159

; <label>:34:                                     ; preds = %31, %28, %3
  br label %35, !dbg !160, !llvm.loop !162

; <label>:35:                                     ; preds = %34
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !163
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !163
  store double 0x7FF8000000000000, double* %37, align 8, !dbg !163
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !163
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !163
  store double 0x7FF8000000000000, double* %39, align 8, !dbg !163
  br label %40, !dbg !163, !llvm.loop !166

; <label>:40:                                     ; preds = %35
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 108, i32 1), !dbg !168
  store i32 1, i32* %4, align 4, !dbg !168
  br label %275, !dbg !168
                                                  ; No predecessors!
  br label %42, !dbg !171

; <label>:42:                                     ; preds = %41
  br label %275, !dbg !173

; <label>:43:                                     ; preds = %31
  %44 = load i32, i32* %5, align 4, !dbg !174
  %45 = icmp eq i32 %44, 0, !dbg !176
  br i1 %45, label %46, label %51, !dbg !177

; <label>:46:                                     ; preds = %43
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !178
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !180
  store double 1.000000e+00, double* %48, align 8, !dbg !181
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !182
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !183
  store double 0.000000e+00, double* %50, align 8, !dbg !184
  store i32 0, i32* %4, align 4, !dbg !185
  br label %275, !dbg !185

; <label>:51:                                     ; preds = %43
  %52 = load i32, i32* %5, align 4, !dbg !186
  %53 = icmp eq i32 %52, 1, !dbg !188
  br i1 %53, label %54, label %60, !dbg !189

; <label>:54:                                     ; preds = %51
  %55 = load double, double* %6, align 8, !dbg !190
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !192
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !193
  store double %55, double* %57, align 8, !dbg !194
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !195
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !196
  store double 0.000000e+00, double* %59, align 8, !dbg !197
  store i32 0, i32* %4, align 4, !dbg !198
  br label %275, !dbg !198

; <label>:60:                                     ; preds = %51
  %61 = load i32, i32* %5, align 4, !dbg !199
  %62 = icmp eq i32 %61, 2, !dbg !201
  br i1 %62, label %63, label %81, !dbg !202

; <label>:63:                                     ; preds = %60
  %64 = load double, double* %6, align 8, !dbg !203
  %65 = fmul double 3.000000e+00, %64, !dbg !205
  %66 = load double, double* %6, align 8, !dbg !206
  %67 = fmul double %65, %66, !dbg !207
  %68 = fsub double %67, 1.000000e+00, !dbg !208
  %69 = fmul double 5.000000e-01, %68, !dbg !209
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !210
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !211
  store double %69, double* %71, align 8, !dbg !212
  %72 = load double, double* %6, align 8, !dbg !213
  %73 = fmul double 3.000000e+00, %72, !dbg !214
  %74 = load double, double* %6, align 8, !dbg !215
  %75 = fmul double %73, %74, !dbg !216
  %76 = call double @fabs(double %75) #1, !dbg !217
  %77 = fadd double %76, 1.000000e+00, !dbg !218
  %78 = fmul double 0x3CB0000000000000, %77, !dbg !219
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !220
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !221
  store double %78, double* %80, align 8, !dbg !222
  store i32 0, i32* %4, align 4, !dbg !223
  br label %275, !dbg !223

; <label>:81:                                     ; preds = %60
  %82 = load double, double* %6, align 8, !dbg !224
  %83 = fcmp oeq double %82, 1.000000e+00, !dbg !226
  br i1 %83, label %84, label %89, !dbg !227

; <label>:84:                                     ; preds = %81
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !228
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !230
  store double 1.000000e+00, double* %86, align 8, !dbg !231
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !232
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !233
  store double 0.000000e+00, double* %88, align 8, !dbg !234
  store i32 0, i32* %4, align 4, !dbg !235
  br label %275, !dbg !235

; <label>:89:                                     ; preds = %81
  %90 = load double, double* %6, align 8, !dbg !236
  %91 = fcmp oeq double %90, -1.000000e+00, !dbg !238
  br i1 %91, label %92, label %101, !dbg !239

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %5, align 4, !dbg !240
  %94 = and i32 %93, 1, !dbg !240
  %95 = icmp ne i32 %94, 0, !dbg !240
  %96 = select i1 %95, double -1.000000e+00, double 1.000000e+00, !dbg !240
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !242
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !243
  store double %96, double* %98, align 8, !dbg !244
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !245
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !246
  store double 0.000000e+00, double* %100, align 8, !dbg !247
  store i32 0, i32* %4, align 4, !dbg !248
  br label %275, !dbg !248

; <label>:101:                                    ; preds = %89
  %102 = load i32, i32* %5, align 4, !dbg !249
  %103 = icmp slt i32 %102, 100000, !dbg !251
  br i1 %103, label %104, label %173, !dbg !252

; <label>:104:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata double* %8, metadata !253, metadata !60), !dbg !255
  store double 1.000000e+00, double* %8, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata double* %9, metadata !256, metadata !60), !dbg !257
  %105 = load double, double* %6, align 8, !dbg !258
  store double %105, double* %9, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata double* %10, metadata !259, metadata !60), !dbg !260
  %106 = load double, double* %9, align 8, !dbg !261
  store double %106, double* %10, align 8, !dbg !260
  call void @llvm.dbg.declare(metadata double* %11, metadata !262, metadata !60), !dbg !263
  store double 0x3CB0000000000000, double* %11, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata double* %12, metadata !264, metadata !60), !dbg !265
  %107 = load double, double* %6, align 8, !dbg !266
  %108 = call double @fabs(double %107) #1, !dbg !267
  %109 = fmul double %108, 0x3CB0000000000000, !dbg !268
  store double %109, double* %12, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata double* %13, metadata !269, metadata !60), !dbg !270
  %110 = load double, double* %12, align 8, !dbg !271
  store double %110, double* %13, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata i32* %14, metadata !272, metadata !60), !dbg !273
  store i32 2, i32* %14, align 4, !dbg !274
  br label %111, !dbg !276

; <label>:111:                                    ; preds = %156, %104
  %112 = load i32, i32* %14, align 4, !dbg !277
  %113 = load i32, i32* %5, align 4, !dbg !280
  %114 = icmp sle i32 %112, %113, !dbg !281
  br i1 %114, label %115, label %159, !dbg !282

; <label>:115:                                    ; preds = %111
  %116 = load double, double* %6, align 8, !dbg !283
  %117 = load i32, i32* %14, align 4, !dbg !285
  %118 = mul nsw i32 2, %117, !dbg !286
  %119 = sub nsw i32 %118, 1, !dbg !287
  %120 = sitofp i32 %119 to double, !dbg !288
  %121 = fmul double %116, %120, !dbg !289
  %122 = load double, double* %9, align 8, !dbg !290
  %123 = fmul double %121, %122, !dbg !291
  %124 = load i32, i32* %14, align 4, !dbg !292
  %125 = sub nsw i32 %124, 1, !dbg !293
  %126 = sitofp i32 %125 to double, !dbg !294
  %127 = load double, double* %8, align 8, !dbg !295
  %128 = fmul double %126, %127, !dbg !296
  %129 = fsub double %123, %128, !dbg !297
  %130 = load i32, i32* %14, align 4, !dbg !298
  %131 = sitofp i32 %130 to double, !dbg !298
  %132 = fdiv double %129, %131, !dbg !299
  store double %132, double* %10, align 8, !dbg !300
  %133 = load double, double* %9, align 8, !dbg !301
  store double %133, double* %8, align 8, !dbg !302
  %134 = load double, double* %10, align 8, !dbg !303
  store double %134, double* %9, align 8, !dbg !304
  %135 = load double, double* %6, align 8, !dbg !305
  %136 = call double @fabs(double %135) #1, !dbg !306
  %137 = load i32, i32* %14, align 4, !dbg !307
  %138 = mul nsw i32 2, %137, !dbg !308
  %139 = sitofp i32 %138 to double, !dbg !309
  %140 = fsub double %139, 1.000000e+00, !dbg !310
  %141 = fmul double %136, %140, !dbg !311
  %142 = load double, double* %12, align 8, !dbg !312
  %143 = fmul double %141, %142, !dbg !313
  %144 = load i32, i32* %14, align 4, !dbg !314
  %145 = sitofp i32 %144 to double, !dbg !314
  %146 = fsub double %145, 1.000000e+00, !dbg !315
  %147 = load double, double* %11, align 8, !dbg !316
  %148 = fmul double %146, %147, !dbg !317
  %149 = fadd double %143, %148, !dbg !318
  %150 = fmul double 5.000000e-01, %149, !dbg !319
  %151 = load i32, i32* %14, align 4, !dbg !320
  %152 = sitofp i32 %151 to double, !dbg !320
  %153 = fdiv double %150, %152, !dbg !321
  store double %153, double* %13, align 8, !dbg !322
  %154 = load double, double* %12, align 8, !dbg !323
  store double %154, double* %11, align 8, !dbg !324
  %155 = load double, double* %13, align 8, !dbg !325
  store double %155, double* %12, align 8, !dbg !326
  br label %156, !dbg !327

; <label>:156:                                    ; preds = %115
  %157 = load i32, i32* %14, align 4, !dbg !328
  %158 = add nsw i32 %157, 1, !dbg !328
  store i32 %158, i32* %14, align 4, !dbg !328
  br label %111, !dbg !330, !llvm.loop !331

; <label>:159:                                    ; preds = %111
  %160 = load double, double* %10, align 8, !dbg !333
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !334
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !335
  store double %160, double* %162, align 8, !dbg !336
  %163 = load double, double* %13, align 8, !dbg !337
  %164 = load i32, i32* %5, align 4, !dbg !338
  %165 = sitofp i32 %164 to double, !dbg !338
  %166 = load double, double* %10, align 8, !dbg !339
  %167 = call double @fabs(double %166) #1, !dbg !340
  %168 = fmul double %165, %167, !dbg !341
  %169 = fmul double %168, 0x3CB0000000000000, !dbg !342
  %170 = fadd double %163, %169, !dbg !343
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !344
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !345
  store double %170, double* %172, align 8, !dbg !346
  store i32 0, i32* %4, align 4, !dbg !347
  br label %275, !dbg !347

; <label>:173:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata double* %15, metadata !348, metadata !60), !dbg !350
  %174 = load i32, i32* %5, align 4, !dbg !351
  %175 = sitofp i32 %174 to double, !dbg !351
  %176 = fadd double %175, 5.000000e-01, !dbg !352
  store double %176, double* %15, align 8, !dbg !350
  call void @llvm.dbg.declare(metadata double* %16, metadata !353, metadata !60), !dbg !354
  %177 = load double, double* %6, align 8, !dbg !355
  %178 = call double @acos(double %177) #5, !dbg !356
  store double %178, double* %16, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !357, metadata !60), !dbg !358
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !359, metadata !60), !dbg !360
  call void @llvm.dbg.declare(metadata i32* %19, metadata !361, metadata !60), !dbg !362
  %179 = load double, double* %15, align 8, !dbg !363
  %180 = load double, double* %16, align 8, !dbg !364
  %181 = fmul double %179, %180, !dbg !365
  %182 = call i32 @gsl_sf_bessel_J0_e(double %181, %struct.gsl_sf_result_struct* %17), !dbg !366
  store i32 %182, i32* %19, align 4, !dbg !362
  call void @llvm.dbg.declare(metadata i32* %20, metadata !367, metadata !60), !dbg !368
  %183 = load double, double* %15, align 8, !dbg !369
  %184 = load double, double* %16, align 8, !dbg !370
  %185 = fmul double %183, %184, !dbg !371
  %186 = call i32 @gsl_sf_bessel_Jn_e(i32 -1, double %185, %struct.gsl_sf_result_struct* %18), !dbg !372
  store i32 %186, i32* %20, align 4, !dbg !368
  call void @llvm.dbg.declare(metadata double* %21, metadata !373, metadata !60), !dbg !374
  call void @llvm.dbg.declare(metadata double* %22, metadata !375, metadata !60), !dbg !376
  call void @llvm.dbg.declare(metadata double* %23, metadata !377, metadata !60), !dbg !378
  %187 = load double, double* %16, align 8, !dbg !379
  %188 = fcmp olt double %187, 0x3F20000000000000, !dbg !381
  br i1 %188, label %189, label %201, !dbg !382

; <label>:189:                                    ; preds = %173
  %190 = load double, double* %16, align 8, !dbg !383
  %191 = load double, double* %16, align 8, !dbg !385
  %192 = fmul double %190, %191, !dbg !386
  %193 = fdiv double %192, 1.500000e+01, !dbg !387
  %194 = fadd double 1.000000e+00, %193, !dbg !388
  %195 = fdiv double %194, 2.400000e+01, !dbg !389
  store double %195, double* %22, align 8, !dbg !390
  %196 = load double, double* %16, align 8, !dbg !391
  %197 = load double, double* %16, align 8, !dbg !392
  %198 = fmul double %196, %197, !dbg !393
  %199 = fdiv double %198, 1.200000e+01, !dbg !394
  %200 = fadd double 1.000000e+00, %199, !dbg !395
  store double %200, double* %21, align 8, !dbg !396
  br label %223, !dbg !397

; <label>:201:                                    ; preds = %173
  call void @llvm.dbg.declare(metadata double* %24, metadata !398, metadata !60), !dbg !400
  %202 = load double, double* %6, align 8, !dbg !401
  %203 = load double, double* %6, align 8, !dbg !402
  %204 = fmul double %202, %203, !dbg !403
  %205 = fsub double 1.000000e+00, %204, !dbg !404
  %206 = call double @sqrt(double %205) #5, !dbg !405
  store double %206, double* %24, align 8, !dbg !400
  call void @llvm.dbg.declare(metadata double* %25, metadata !406, metadata !60), !dbg !407
  %207 = load double, double* %6, align 8, !dbg !408
  %208 = load double, double* %24, align 8, !dbg !409
  %209 = fdiv double %207, %208, !dbg !410
  store double %209, double* %25, align 8, !dbg !407
  %210 = load double, double* %16, align 8, !dbg !411
  %211 = load double, double* %25, align 8, !dbg !412
  %212 = fmul double %210, %211, !dbg !413
  %213 = fsub double 1.000000e+00, %212, !dbg !414
  %214 = fmul double 1.250000e-01, %213, !dbg !415
  %215 = load double, double* %16, align 8, !dbg !416
  %216 = load double, double* %16, align 8, !dbg !417
  %217 = fmul double %215, %216, !dbg !418
  %218 = fdiv double %214, %217, !dbg !419
  store double %218, double* %22, align 8, !dbg !420
  %219 = load double, double* %16, align 8, !dbg !421
  %220 = load double, double* %24, align 8, !dbg !422
  %221 = fdiv double %219, %220, !dbg !423
  %222 = call double @sqrt(double %221) #5, !dbg !424
  store double %222, double* %21, align 8, !dbg !425
  br label %223

; <label>:223:                                    ; preds = %201, %189
  %224 = load double, double* %16, align 8, !dbg !426
  %225 = load double, double* %15, align 8, !dbg !427
  %226 = fdiv double %224, %225, !dbg !428
  %227 = load double, double* %22, align 8, !dbg !429
  %228 = fmul double %226, %227, !dbg !430
  store double %228, double* %23, align 8, !dbg !431
  %229 = load double, double* %21, align 8, !dbg !432
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !433
  %231 = load double, double* %230, align 8, !dbg !433
  %232 = load double, double* %23, align 8, !dbg !434
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !435
  %234 = load double, double* %233, align 8, !dbg !435
  %235 = fmul double %232, %234, !dbg !436
  %236 = fadd double %231, %235, !dbg !437
  %237 = fmul double %229, %236, !dbg !438
  %238 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !439
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %238, i32 0, i32 0, !dbg !440
  store double %237, double* %239, align 8, !dbg !441
  %240 = load double, double* %21, align 8, !dbg !442
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !443
  %242 = load double, double* %241, align 8, !dbg !443
  %243 = load double, double* %23, align 8, !dbg !444
  %244 = call double @fabs(double %243) #1, !dbg !445
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !446
  %246 = load double, double* %245, align 8, !dbg !446
  %247 = fmul double %244, %246, !dbg !447
  %248 = fadd double %242, %247, !dbg !448
  %249 = fmul double %240, %248, !dbg !449
  %250 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !450
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %250, i32 0, i32 1, !dbg !451
  store double %249, double* %251, align 8, !dbg !452
  %252 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !453
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %252, i32 0, i32 0, !dbg !454
  %254 = load double, double* %253, align 8, !dbg !454
  %255 = call double @fabs(double %254) #1, !dbg !455
  %256 = fmul double 0x3E50000000000000, %255, !dbg !456
  %257 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !457
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %257, i32 0, i32 1, !dbg !458
  %259 = load double, double* %258, align 8, !dbg !459
  %260 = fadd double %259, %256, !dbg !459
  store double %260, double* %258, align 8, !dbg !459
  %261 = load i32, i32* %19, align 4, !dbg !460
  %262 = icmp ne i32 %261, 0, !dbg !460
  br i1 %262, label %263, label %265, !dbg !460

; <label>:263:                                    ; preds = %223
  %264 = load i32, i32* %19, align 4, !dbg !461
  br label %273, !dbg !461

; <label>:265:                                    ; preds = %223
  %266 = load i32, i32* %20, align 4, !dbg !463
  %267 = icmp ne i32 %266, 0, !dbg !463
  br i1 %267, label %268, label %270, !dbg !463

; <label>:268:                                    ; preds = %265
  %269 = load i32, i32* %20, align 4, !dbg !465
  br label %271, !dbg !465

; <label>:270:                                    ; preds = %265
  br label %271, !dbg !467

; <label>:271:                                    ; preds = %270, %268
  %272 = phi i32 [ %269, %268 ], [ 0, %270 ], !dbg !469
  br label %273, !dbg !469

; <label>:273:                                    ; preds = %271, %263
  %274 = phi i32 [ %264, %263 ], [ %272, %271 ], !dbg !471
  store i32 %274, i32* %4, align 4, !dbg !473
  br label %275, !dbg !473

; <label>:275:                                    ; preds = %40, %46, %54, %63, %84, %92, %159, %273, %42
  %276 = load i32, i32* %4, align 4, !dbg !474
  ret i32 %276, !dbg !474
}

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind
declare double @acos(double) #4

declare i32 @gsl_sf_bessel_J0_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_Jn_e(i32, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Pl_array(i32, double, double*) #0 !dbg !475 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !479, metadata !60), !dbg !480
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !481, metadata !60), !dbg !482
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !483, metadata !60), !dbg !484
  %12 = load i32, i32* %5, align 4, !dbg !485
  %13 = icmp slt i32 %12, 0, !dbg !487
  br i1 %13, label %20, label %14, !dbg !488

; <label>:14:                                     ; preds = %3
  %15 = load double, double* %6, align 8, !dbg !489
  %16 = fcmp olt double %15, -1.000000e+00, !dbg !491
  br i1 %16, label %20, label %17, !dbg !492

; <label>:17:                                     ; preds = %14
  %18 = load double, double* %6, align 8, !dbg !493
  %19 = fcmp ogt double %18, 1.000000e+00, !dbg !495
  br i1 %19, label %20, label %23, !dbg !496

; <label>:20:                                     ; preds = %17, %14, %3
  br label %21, !dbg !497, !llvm.loop !499

; <label>:21:                                     ; preds = %20
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 210, i32 1), !dbg !500
  store i32 1, i32* %4, align 4, !dbg !500
  br label %79, !dbg !500
                                                  ; No predecessors!
  br label %79, !dbg !503

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %5, align 4, !dbg !504
  %25 = icmp eq i32 %24, 0, !dbg !506
  br i1 %25, label %26, label %29, !dbg !507

; <label>:26:                                     ; preds = %23
  %27 = load double*, double** %7, align 8, !dbg !508
  %28 = getelementptr inbounds double, double* %27, i64 0, !dbg !508
  store double 1.000000e+00, double* %28, align 8, !dbg !510
  store i32 0, i32* %4, align 4, !dbg !511
  br label %79, !dbg !511

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %5, align 4, !dbg !512
  %31 = icmp eq i32 %30, 1, !dbg !514
  br i1 %31, label %32, label %38, !dbg !515

; <label>:32:                                     ; preds = %29
  %33 = load double*, double** %7, align 8, !dbg !516
  %34 = getelementptr inbounds double, double* %33, i64 0, !dbg !516
  store double 1.000000e+00, double* %34, align 8, !dbg !518
  %35 = load double, double* %6, align 8, !dbg !519
  %36 = load double*, double** %7, align 8, !dbg !520
  %37 = getelementptr inbounds double, double* %36, i64 1, !dbg !520
  store double %35, double* %37, align 8, !dbg !521
  store i32 0, i32* %4, align 4, !dbg !522
  br label %79, !dbg !522

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata double* %8, metadata !523, metadata !60), !dbg !525
  store double 1.000000e+00, double* %8, align 8, !dbg !525
  call void @llvm.dbg.declare(metadata double* %9, metadata !526, metadata !60), !dbg !527
  %39 = load double, double* %6, align 8, !dbg !528
  store double %39, double* %9, align 8, !dbg !527
  call void @llvm.dbg.declare(metadata double* %10, metadata !529, metadata !60), !dbg !530
  %40 = load double, double* %9, align 8, !dbg !531
  store double %40, double* %10, align 8, !dbg !530
  call void @llvm.dbg.declare(metadata i32* %11, metadata !532, metadata !60), !dbg !533
  %41 = load double*, double** %7, align 8, !dbg !534
  %42 = getelementptr inbounds double, double* %41, i64 0, !dbg !534
  store double 1.000000e+00, double* %42, align 8, !dbg !535
  %43 = load double, double* %6, align 8, !dbg !536
  %44 = load double*, double** %7, align 8, !dbg !537
  %45 = getelementptr inbounds double, double* %44, i64 1, !dbg !537
  store double %43, double* %45, align 8, !dbg !538
  store i32 2, i32* %11, align 4, !dbg !539
  br label %46, !dbg !541

; <label>:46:                                     ; preds = %75, %38
  %47 = load i32, i32* %11, align 4, !dbg !542
  %48 = load i32, i32* %5, align 4, !dbg !545
  %49 = icmp sle i32 %47, %48, !dbg !546
  br i1 %49, label %50, label %78, !dbg !547

; <label>:50:                                     ; preds = %46
  %51 = load double, double* %6, align 8, !dbg !548
  %52 = load i32, i32* %11, align 4, !dbg !550
  %53 = mul nsw i32 2, %52, !dbg !551
  %54 = sub nsw i32 %53, 1, !dbg !552
  %55 = sitofp i32 %54 to double, !dbg !553
  %56 = fmul double %51, %55, !dbg !554
  %57 = load double, double* %9, align 8, !dbg !555
  %58 = fmul double %56, %57, !dbg !556
  %59 = load i32, i32* %11, align 4, !dbg !557
  %60 = sub nsw i32 %59, 1, !dbg !558
  %61 = sitofp i32 %60 to double, !dbg !559
  %62 = load double, double* %8, align 8, !dbg !560
  %63 = fmul double %61, %62, !dbg !561
  %64 = fsub double %58, %63, !dbg !562
  %65 = load i32, i32* %11, align 4, !dbg !563
  %66 = sitofp i32 %65 to double, !dbg !563
  %67 = fdiv double %64, %66, !dbg !564
  store double %67, double* %10, align 8, !dbg !565
  %68 = load double, double* %9, align 8, !dbg !566
  store double %68, double* %8, align 8, !dbg !567
  %69 = load double, double* %10, align 8, !dbg !568
  store double %69, double* %9, align 8, !dbg !569
  %70 = load double, double* %10, align 8, !dbg !570
  %71 = load i32, i32* %11, align 4, !dbg !571
  %72 = sext i32 %71 to i64, !dbg !572
  %73 = load double*, double** %7, align 8, !dbg !572
  %74 = getelementptr inbounds double, double* %73, i64 %72, !dbg !572
  store double %70, double* %74, align 8, !dbg !573
  br label %75, !dbg !574

; <label>:75:                                     ; preds = %50
  %76 = load i32, i32* %11, align 4, !dbg !575
  %77 = add nsw i32 %76, 1, !dbg !575
  store i32 %77, i32* %11, align 4, !dbg !575
  br label %46, !dbg !577, !llvm.loop !578

; <label>:78:                                     ; preds = %46
  store i32 0, i32* %4, align 4, !dbg !580
  br label %79, !dbg !580

; <label>:79:                                     ; preds = %21, %26, %32, %78, %22
  %80 = load i32, i32* %4, align 4, !dbg !581
  ret i32 %80, !dbg !581
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Pl_deriv_array(i32, double, double*, double*) #0 !dbg !582 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !585, metadata !60), !dbg !586
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !587, metadata !60), !dbg !588
  store double* %2, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !589, metadata !60), !dbg !590
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !591, metadata !60), !dbg !592
  call void @llvm.dbg.declare(metadata i32* %10, metadata !593, metadata !60), !dbg !594
  %17 = load i32, i32* %6, align 4, !dbg !595
  %18 = load double, double* %7, align 8, !dbg !596
  %19 = load double*, double** %8, align 8, !dbg !597
  %20 = call i32 @gsl_sf_legendre_Pl_array(i32 %17, double %18, double* %19), !dbg !598
  store i32 %20, i32* %10, align 4, !dbg !594
  %21 = load i32, i32* %6, align 4, !dbg !599
  %22 = icmp sge i32 %21, 0, !dbg !601
  br i1 %22, label %23, label %26, !dbg !602

; <label>:23:                                     ; preds = %4
  %24 = load double*, double** %9, align 8, !dbg !603
  %25 = getelementptr inbounds double, double* %24, i64 0, !dbg !603
  store double 0.000000e+00, double* %25, align 8, !dbg !605
  br label %26, !dbg !603

; <label>:26:                                     ; preds = %23, %4
  %27 = load i32, i32* %6, align 4, !dbg !606
  %28 = icmp sge i32 %27, 1, !dbg !608
  br i1 %28, label %29, label %32, !dbg !609

; <label>:29:                                     ; preds = %26
  %30 = load double*, double** %9, align 8, !dbg !610
  %31 = getelementptr inbounds double, double* %30, i64 1, !dbg !610
  store double 1.000000e+00, double* %31, align 8, !dbg !612
  br label %32, !dbg !610

; <label>:32:                                     ; preds = %29, %26
  %33 = load i32, i32* %10, align 4, !dbg !613
  %34 = icmp eq i32 %33, 0, !dbg !615
  br i1 %34, label %35, label %179, !dbg !616

; <label>:35:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata i32* %11, metadata !617, metadata !60), !dbg !619
  %36 = load double, double* %7, align 8, !dbg !620
  %37 = fsub double %36, 1.000000e+00, !dbg !622
  %38 = call double @fabs(double %37) #1, !dbg !623
  %39 = load i32, i32* %6, align 4, !dbg !624
  %40 = sitofp i32 %39 to double, !dbg !624
  %41 = fadd double %40, 1.000000e+00, !dbg !625
  %42 = fmul double %38, %41, !dbg !626
  %43 = load i32, i32* %6, align 4, !dbg !627
  %44 = sitofp i32 %43 to double, !dbg !627
  %45 = fadd double %44, 1.000000e+00, !dbg !628
  %46 = fmul double %42, %45, !dbg !629
  %47 = fcmp olt double %46, 0x3E50000000000000, !dbg !630
  br i1 %47, label %48, label %83, !dbg !631

; <label>:48:                                     ; preds = %35
  store i32 2, i32* %11, align 4, !dbg !632
  br label %49, !dbg !635

; <label>:49:                                     ; preds = %79, %48
  %50 = load i32, i32* %11, align 4, !dbg !636
  %51 = load i32, i32* %6, align 4, !dbg !639
  %52 = icmp sle i32 %50, %51, !dbg !640
  br i1 %52, label %53, label %82, !dbg !641

; <label>:53:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata double* %12, metadata !642, metadata !60), !dbg !644
  %54 = load i32, i32* %11, align 4, !dbg !645
  %55 = sitofp i32 %54 to double, !dbg !645
  %56 = fmul double 5.000000e-01, %55, !dbg !646
  %57 = load i32, i32* %11, align 4, !dbg !647
  %58 = sitofp i32 %57 to double, !dbg !647
  %59 = fadd double %58, 1.000000e+00, !dbg !648
  %60 = fmul double %56, %59, !dbg !649
  store double %60, double* %12, align 8, !dbg !644
  %61 = load double, double* %12, align 8, !dbg !650
  %62 = load double, double* %7, align 8, !dbg !651
  %63 = fsub double 1.000000e+00, %62, !dbg !652
  %64 = fmul double 2.500000e-01, %63, !dbg !653
  %65 = load i32, i32* %11, align 4, !dbg !654
  %66 = sitofp i32 %65 to double, !dbg !654
  %67 = fadd double %66, 2.000000e+00, !dbg !655
  %68 = fmul double %64, %67, !dbg !656
  %69 = load i32, i32* %11, align 4, !dbg !657
  %70 = sitofp i32 %69 to double, !dbg !657
  %71 = fsub double %70, 1.000000e+00, !dbg !658
  %72 = fmul double %68, %71, !dbg !659
  %73 = fsub double 1.000000e+00, %72, !dbg !660
  %74 = fmul double %61, %73, !dbg !661
  %75 = load i32, i32* %11, align 4, !dbg !662
  %76 = sext i32 %75 to i64, !dbg !663
  %77 = load double*, double** %9, align 8, !dbg !663
  %78 = getelementptr inbounds double, double* %77, i64 %76, !dbg !663
  store double %74, double* %78, align 8, !dbg !664
  br label %79, !dbg !665

; <label>:79:                                     ; preds = %53
  %80 = load i32, i32* %11, align 4, !dbg !666
  %81 = add nsw i32 %80, 1, !dbg !666
  store i32 %81, i32* %11, align 4, !dbg !666
  br label %49, !dbg !668, !llvm.loop !669

; <label>:82:                                     ; preds = %49
  br label %178, !dbg !671

; <label>:83:                                     ; preds = %35
  %84 = load double, double* %7, align 8, !dbg !672
  %85 = fadd double %84, 1.000000e+00, !dbg !674
  %86 = call double @fabs(double %85) #1, !dbg !675
  %87 = load i32, i32* %6, align 4, !dbg !676
  %88 = sitofp i32 %87 to double, !dbg !676
  %89 = fadd double %88, 1.000000e+00, !dbg !677
  %90 = fmul double %86, %89, !dbg !678
  %91 = load i32, i32* %6, align 4, !dbg !679
  %92 = sitofp i32 %91 to double, !dbg !679
  %93 = fadd double %92, 1.000000e+00, !dbg !680
  %94 = fmul double %90, %93, !dbg !681
  %95 = fcmp olt double %94, 0x3E50000000000000, !dbg !682
  br i1 %95, label %96, label %137, !dbg !683

; <label>:96:                                     ; preds = %83
  store i32 2, i32* %11, align 4, !dbg !684
  br label %97, !dbg !687

; <label>:97:                                     ; preds = %133, %96
  %98 = load i32, i32* %11, align 4, !dbg !688
  %99 = load i32, i32* %6, align 4, !dbg !691
  %100 = icmp sle i32 %98, %99, !dbg !692
  br i1 %100, label %101, label %136, !dbg !693

; <label>:101:                                    ; preds = %97
  call void @llvm.dbg.declare(metadata double* %13, metadata !694, metadata !60), !dbg !696
  %102 = load i32, i32* %11, align 4, !dbg !697
  %103 = and i32 %102, 1, !dbg !697
  %104 = icmp ne i32 %103, 0, !dbg !697
  %105 = select i1 %104, double 1.000000e+00, double -1.000000e+00, !dbg !697
  store double %105, double* %13, align 8, !dbg !696
  call void @llvm.dbg.declare(metadata double* %14, metadata !698, metadata !60), !dbg !699
  %106 = load double, double* %13, align 8, !dbg !700
  %107 = fmul double %106, 5.000000e-01, !dbg !701
  %108 = load i32, i32* %11, align 4, !dbg !702
  %109 = sitofp i32 %108 to double, !dbg !702
  %110 = fmul double %107, %109, !dbg !703
  %111 = load i32, i32* %11, align 4, !dbg !704
  %112 = sitofp i32 %111 to double, !dbg !704
  %113 = fadd double %112, 1.000000e+00, !dbg !705
  %114 = fmul double %110, %113, !dbg !706
  store double %114, double* %14, align 8, !dbg !699
  %115 = load double, double* %14, align 8, !dbg !707
  %116 = load double, double* %7, align 8, !dbg !708
  %117 = fadd double 1.000000e+00, %116, !dbg !709
  %118 = fmul double 2.500000e-01, %117, !dbg !710
  %119 = load i32, i32* %11, align 4, !dbg !711
  %120 = sitofp i32 %119 to double, !dbg !711
  %121 = fadd double %120, 2.000000e+00, !dbg !712
  %122 = fmul double %118, %121, !dbg !713
  %123 = load i32, i32* %11, align 4, !dbg !714
  %124 = sitofp i32 %123 to double, !dbg !714
  %125 = fsub double %124, 1.000000e+00, !dbg !715
  %126 = fmul double %122, %125, !dbg !716
  %127 = fsub double 1.000000e+00, %126, !dbg !717
  %128 = fmul double %115, %127, !dbg !718
  %129 = load i32, i32* %11, align 4, !dbg !719
  %130 = sext i32 %129 to i64, !dbg !720
  %131 = load double*, double** %9, align 8, !dbg !720
  %132 = getelementptr inbounds double, double* %131, i64 %130, !dbg !720
  store double %128, double* %132, align 8, !dbg !721
  br label %133, !dbg !722

; <label>:133:                                    ; preds = %101
  %134 = load i32, i32* %11, align 4, !dbg !723
  %135 = add nsw i32 %134, 1, !dbg !723
  store i32 %135, i32* %11, align 4, !dbg !723
  br label %97, !dbg !725, !llvm.loop !726

; <label>:136:                                    ; preds = %97
  br label %177, !dbg !728

; <label>:137:                                    ; preds = %83
  call void @llvm.dbg.declare(metadata double* %15, metadata !729, metadata !60), !dbg !731
  %138 = load double, double* %7, align 8, !dbg !732
  %139 = fadd double 1.000000e+00, %138, !dbg !733
  store double %139, double* %15, align 8, !dbg !731
  call void @llvm.dbg.declare(metadata double* %16, metadata !734, metadata !60), !dbg !735
  %140 = load double, double* %7, align 8, !dbg !736
  %141 = fsub double 1.000000e+00, %140, !dbg !737
  store double %141, double* %16, align 8, !dbg !735
  store i32 2, i32* %11, align 4, !dbg !738
  br label %142, !dbg !740

; <label>:142:                                    ; preds = %173, %137
  %143 = load i32, i32* %11, align 4, !dbg !741
  %144 = load i32, i32* %6, align 4, !dbg !744
  %145 = icmp sle i32 %143, %144, !dbg !745
  br i1 %145, label %146, label %176, !dbg !746

; <label>:146:                                    ; preds = %142
  %147 = load i32, i32* %11, align 4, !dbg !747
  %148 = sub nsw i32 0, %147, !dbg !749
  %149 = sitofp i32 %148 to double, !dbg !749
  %150 = load double, double* %7, align 8, !dbg !750
  %151 = load i32, i32* %11, align 4, !dbg !751
  %152 = sext i32 %151 to i64, !dbg !752
  %153 = load double*, double** %8, align 8, !dbg !752
  %154 = getelementptr inbounds double, double* %153, i64 %152, !dbg !752
  %155 = load double, double* %154, align 8, !dbg !752
  %156 = fmul double %150, %155, !dbg !753
  %157 = load i32, i32* %11, align 4, !dbg !754
  %158 = sub nsw i32 %157, 1, !dbg !755
  %159 = sext i32 %158 to i64, !dbg !756
  %160 = load double*, double** %8, align 8, !dbg !756
  %161 = getelementptr inbounds double, double* %160, i64 %159, !dbg !756
  %162 = load double, double* %161, align 8, !dbg !756
  %163 = fsub double %156, %162, !dbg !757
  %164 = fmul double %149, %163, !dbg !758
  %165 = load double, double* %15, align 8, !dbg !759
  %166 = load double, double* %16, align 8, !dbg !760
  %167 = fmul double %165, %166, !dbg !761
  %168 = fdiv double %164, %167, !dbg !762
  %169 = load i32, i32* %11, align 4, !dbg !763
  %170 = sext i32 %169 to i64, !dbg !764
  %171 = load double*, double** %9, align 8, !dbg !764
  %172 = getelementptr inbounds double, double* %171, i64 %170, !dbg !764
  store double %168, double* %172, align 8, !dbg !765
  br label %173, !dbg !766

; <label>:173:                                    ; preds = %146
  %174 = load i32, i32* %11, align 4, !dbg !767
  %175 = add nsw i32 %174, 1, !dbg !767
  store i32 %175, i32* %11, align 4, !dbg !767
  br label %142, !dbg !769, !llvm.loop !770

; <label>:176:                                    ; preds = %142
  br label %177

; <label>:177:                                    ; preds = %176, %136
  br label %178

; <label>:178:                                    ; preds = %177, %82
  store i32 0, i32* %5, align 4, !dbg !772
  br label %181, !dbg !772

; <label>:179:                                    ; preds = %32
  %180 = load i32, i32* %10, align 4, !dbg !773
  store i32 %180, i32* %5, align 4, !dbg !775
  br label %181, !dbg !775

; <label>:181:                                    ; preds = %179, %178
  %182 = load i32, i32* %5, align 4, !dbg !776
  ret i32 %182, !dbg !776
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Plm_e(i32, i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !777 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
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
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !780, metadata !60), !dbg !781
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !782, metadata !60), !dbg !783
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !784, metadata !60), !dbg !785
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !786, metadata !60), !dbg !787
  call void @llvm.dbg.declare(metadata double* %10, metadata !788, metadata !60), !dbg !789
  %22 = load i32, i32* %6, align 4, !dbg !790
  %23 = load i32, i32* %7, align 4, !dbg !791
  %24 = sub nsw i32 %22, %23, !dbg !792
  %25 = sitofp i32 %24 to double, !dbg !790
  store double %25, double* %10, align 8, !dbg !789
  call void @llvm.dbg.declare(metadata double* %11, metadata !793, metadata !60), !dbg !794
  %26 = load i32, i32* %6, align 4, !dbg !795
  %27 = load i32, i32* %7, align 4, !dbg !796
  %28 = add nsw i32 %26, %27, !dbg !797
  %29 = sitofp i32 %28 to double, !dbg !795
  store double %29, double* %11, align 8, !dbg !794
  call void @llvm.dbg.declare(metadata double* %12, metadata !798, metadata !60), !dbg !799
  %30 = load double, double* %10, align 8, !dbg !800
  %31 = fcmp oeq double %30, 0.000000e+00, !dbg !801
  br i1 %31, label %32, label %33, !dbg !800

; <label>:32:                                     ; preds = %4
  br label %40, !dbg !802

; <label>:33:                                     ; preds = %4
  %34 = load double, double* %10, align 8, !dbg !804
  %35 = fmul double 5.000000e-01, %34, !dbg !806
  %36 = load double, double* %10, align 8, !dbg !807
  %37 = call double @log(double %36) #5, !dbg !808
  %38 = fsub double %37, 1.000000e+00, !dbg !809
  %39 = fmul double %35, %38, !dbg !810
  br label %40, !dbg !811

; <label>:40:                                     ; preds = %33, %32
  %41 = phi double [ 0.000000e+00, %32 ], [ %39, %33 ], !dbg !812
  store double %41, double* %12, align 8, !dbg !814
  call void @llvm.dbg.declare(metadata double* %13, metadata !815, metadata !60), !dbg !816
  %42 = load double, double* %10, align 8, !dbg !817
  %43 = fcmp oeq double %42, 0.000000e+00, !dbg !818
  br i1 %43, label %44, label %45, !dbg !817

; <label>:44:                                     ; preds = %40
  br label %52, !dbg !819

; <label>:45:                                     ; preds = %40
  %46 = load double, double* %11, align 8, !dbg !820
  %47 = fmul double 5.000000e-01, %46, !dbg !821
  %48 = load double, double* %11, align 8, !dbg !822
  %49 = call double @log(double %48) #5, !dbg !823
  %50 = fsub double %49, 1.000000e+00, !dbg !824
  %51 = fmul double %47, %50, !dbg !825
  br label %52, !dbg !826

; <label>:52:                                     ; preds = %45, %44
  %53 = phi double [ 0.000000e+00, %44 ], [ %51, %45 ], !dbg !827
  store double %53, double* %13, align 8, !dbg !828
  call void @llvm.dbg.declare(metadata double* %14, metadata !829, metadata !60), !dbg !830
  %54 = load i32, i32* %6, align 4, !dbg !831
  %55 = sitofp i32 %54 to double, !dbg !831
  %56 = fmul double 2.000000e+00, %55, !dbg !832
  %57 = fadd double %56, 1.000000e+00, !dbg !833
  %58 = call double @log(double %57) #5, !dbg !834
  %59 = fmul double 5.000000e-01, %58, !dbg !835
  %60 = load double, double* %12, align 8, !dbg !836
  %61 = fadd double %59, %60, !dbg !837
  %62 = load double, double* %13, align 8, !dbg !838
  %63 = fsub double %61, %62, !dbg !839
  store double %63, double* %14, align 8, !dbg !830
  %64 = load i32, i32* %7, align 4, !dbg !840
  %65 = icmp slt i32 %64, 0, !dbg !842
  br i1 %65, label %76, label %66, !dbg !843

; <label>:66:                                     ; preds = %52
  %67 = load i32, i32* %6, align 4, !dbg !844
  %68 = load i32, i32* %7, align 4, !dbg !846
  %69 = icmp slt i32 %67, %68, !dbg !847
  br i1 %69, label %76, label %70, !dbg !848

; <label>:70:                                     ; preds = %66
  %71 = load double, double* %8, align 8, !dbg !849
  %72 = fcmp olt double %71, -1.000000e+00, !dbg !851
  br i1 %72, label %76, label %73, !dbg !852

; <label>:73:                                     ; preds = %70
  %74 = load double, double* %8, align 8, !dbg !853
  %75 = fcmp ogt double %74, 1.000000e+00, !dbg !855
  br i1 %75, label %76, label %85, !dbg !856

; <label>:76:                                     ; preds = %73, %70, %66, %52
  br label %77, !dbg !857, !llvm.loop !859

; <label>:77:                                     ; preds = %76
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !860
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !860
  store double 0x7FF8000000000000, double* %79, align 8, !dbg !860
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !860
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !860
  store double 0x7FF8000000000000, double* %81, align 8, !dbg !860
  br label %82, !dbg !860, !llvm.loop !863

; <label>:82:                                     ; preds = %77
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 309, i32 1), !dbg !865
  store i32 1, i32* %5, align 4, !dbg !865
  br label %202, !dbg !865
                                                  ; No predecessors!
  br label %84, !dbg !868

; <label>:84:                                     ; preds = %83
  br label %202, !dbg !870

; <label>:85:                                     ; preds = %73
  %86 = load double, double* %14, align 8, !dbg !871
  %87 = fcmp olt double %86, 0xC085D32BDD7ABCD2, !dbg !873
  br i1 %87, label %88, label %97, !dbg !874

; <label>:88:                                     ; preds = %85
  br label %89, !dbg !875, !llvm.loop !877

; <label>:89:                                     ; preds = %88
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !878
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !878
  store double 0x7FF0000000000000, double* %91, align 8, !dbg !878
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !878
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !878
  store double 0x7FF0000000000000, double* %93, align 8, !dbg !878
  br label %94, !dbg !878, !llvm.loop !881

; <label>:94:                                     ; preds = %89
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 313, i32 16), !dbg !883
  store i32 16, i32* %5, align 4, !dbg !883
  br label %202, !dbg !883
                                                  ; No predecessors!
  br label %96, !dbg !886

; <label>:96:                                     ; preds = %95
  br label %201, !dbg !888

; <label>:97:                                     ; preds = %85
  call void @llvm.dbg.declare(metadata double* %15, metadata !889, metadata !60), !dbg !891
  %98 = load double, double* %8, align 8, !dbg !892
  %99 = call double @fabs(double %98) #1, !dbg !893
  %100 = fsub double 1.000000e+00, %99, !dbg !894
  %101 = call double @fabs(double %100) #1, !dbg !895
  %102 = fadd double 0x3CB0000000000000, %101, !dbg !897
  %103 = fdiv double 1.000000e+00, %102, !dbg !898
  store double %103, double* %15, align 8, !dbg !891
  call void @llvm.dbg.declare(metadata double* %16, metadata !899, metadata !60), !dbg !900
  %104 = load i32, i32* %7, align 4, !dbg !901
  %105 = load double, double* %8, align 8, !dbg !902
  %106 = call double @legendre_Pmm(i32 %104, double %105), !dbg !903
  store double %106, double* %16, align 8, !dbg !900
  call void @llvm.dbg.declare(metadata double* %17, metadata !904, metadata !60), !dbg !905
  %107 = load double, double* %8, align 8, !dbg !906
  %108 = load i32, i32* %7, align 4, !dbg !907
  %109 = mul nsw i32 2, %108, !dbg !908
  %110 = add nsw i32 %109, 1, !dbg !909
  %111 = sitofp i32 %110 to double, !dbg !910
  %112 = fmul double %107, %111, !dbg !911
  %113 = load double, double* %16, align 8, !dbg !912
  %114 = fmul double %112, %113, !dbg !913
  store double %114, double* %17, align 8, !dbg !905
  %115 = load i32, i32* %6, align 4, !dbg !914
  %116 = load i32, i32* %7, align 4, !dbg !916
  %117 = icmp eq i32 %115, %116, !dbg !917
  br i1 %117, label %118, label %130, !dbg !918

; <label>:118:                                    ; preds = %97
  %119 = load double, double* %16, align 8, !dbg !919
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !921
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !922
  store double %119, double* %121, align 8, !dbg !923
  %122 = load double, double* %15, align 8, !dbg !924
  %123 = fmul double %122, 2.000000e+00, !dbg !925
  %124 = fmul double %123, 0x3CB0000000000000, !dbg !926
  %125 = load double, double* %16, align 8, !dbg !927
  %126 = call double @fabs(double %125) #1, !dbg !928
  %127 = fmul double %124, %126, !dbg !929
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !930
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !931
  store double %127, double* %129, align 8, !dbg !932
  store i32 0, i32* %5, align 4, !dbg !933
  br label %202, !dbg !933

; <label>:130:                                    ; preds = %97
  %131 = load i32, i32* %6, align 4, !dbg !934
  %132 = load i32, i32* %7, align 4, !dbg !936
  %133 = add nsw i32 %132, 1, !dbg !937
  %134 = icmp eq i32 %131, %133, !dbg !938
  br i1 %134, label %135, label %147, !dbg !939

; <label>:135:                                    ; preds = %130
  %136 = load double, double* %17, align 8, !dbg !940
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !942
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 0, !dbg !943
  store double %136, double* %138, align 8, !dbg !944
  %139 = load double, double* %15, align 8, !dbg !945
  %140 = fmul double %139, 2.000000e+00, !dbg !946
  %141 = fmul double %140, 0x3CB0000000000000, !dbg !947
  %142 = load double, double* %17, align 8, !dbg !948
  %143 = call double @fabs(double %142) #1, !dbg !949
  %144 = fmul double %141, %143, !dbg !950
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !951
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 1, !dbg !952
  store double %144, double* %146, align 8, !dbg !953
  store i32 0, i32* %5, align 4, !dbg !954
  br label %202, !dbg !954

; <label>:147:                                    ; preds = %130
  call void @llvm.dbg.declare(metadata double* %18, metadata !955, metadata !60), !dbg !957
  %148 = load double, double* %16, align 8, !dbg !958
  store double %148, double* %18, align 8, !dbg !957
  call void @llvm.dbg.declare(metadata double* %19, metadata !959, metadata !60), !dbg !960
  %149 = load double, double* %17, align 8, !dbg !961
  store double %149, double* %19, align 8, !dbg !960
  call void @llvm.dbg.declare(metadata double* %20, metadata !962, metadata !60), !dbg !963
  store double 0.000000e+00, double* %20, align 8, !dbg !963
  call void @llvm.dbg.declare(metadata i32* %21, metadata !964, metadata !60), !dbg !965
  %150 = load i32, i32* %7, align 4, !dbg !966
  %151 = add nsw i32 %150, 2, !dbg !968
  store i32 %151, i32* %21, align 4, !dbg !969
  br label %152, !dbg !970

; <label>:152:                                    ; preds = %180, %147
  %153 = load i32, i32* %21, align 4, !dbg !971
  %154 = load i32, i32* %6, align 4, !dbg !974
  %155 = icmp sle i32 %153, %154, !dbg !975
  br i1 %155, label %156, label %183, !dbg !976

; <label>:156:                                    ; preds = %152
  %157 = load double, double* %8, align 8, !dbg !977
  %158 = load i32, i32* %21, align 4, !dbg !979
  %159 = mul nsw i32 2, %158, !dbg !980
  %160 = sub nsw i32 %159, 1, !dbg !981
  %161 = sitofp i32 %160 to double, !dbg !982
  %162 = fmul double %157, %161, !dbg !983
  %163 = load double, double* %19, align 8, !dbg !984
  %164 = fmul double %162, %163, !dbg !985
  %165 = load i32, i32* %21, align 4, !dbg !986
  %166 = load i32, i32* %7, align 4, !dbg !987
  %167 = add nsw i32 %165, %166, !dbg !988
  %168 = sub nsw i32 %167, 1, !dbg !989
  %169 = sitofp i32 %168 to double, !dbg !990
  %170 = load double, double* %18, align 8, !dbg !991
  %171 = fmul double %169, %170, !dbg !992
  %172 = fsub double %164, %171, !dbg !993
  %173 = load i32, i32* %21, align 4, !dbg !994
  %174 = load i32, i32* %7, align 4, !dbg !995
  %175 = sub nsw i32 %173, %174, !dbg !996
  %176 = sitofp i32 %175 to double, !dbg !997
  %177 = fdiv double %172, %176, !dbg !998
  store double %177, double* %20, align 8, !dbg !999
  %178 = load double, double* %19, align 8, !dbg !1000
  store double %178, double* %18, align 8, !dbg !1001
  %179 = load double, double* %20, align 8, !dbg !1002
  store double %179, double* %19, align 8, !dbg !1003
  br label %180, !dbg !1004

; <label>:180:                                    ; preds = %156
  %181 = load i32, i32* %21, align 4, !dbg !1005
  %182 = add nsw i32 %181, 1, !dbg !1005
  store i32 %182, i32* %21, align 4, !dbg !1005
  br label %152, !dbg !1007, !llvm.loop !1008

; <label>:183:                                    ; preds = %152
  %184 = load double, double* %20, align 8, !dbg !1010
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1011
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 0, !dbg !1012
  store double %184, double* %186, align 8, !dbg !1013
  %187 = load double, double* %15, align 8, !dbg !1014
  %188 = load i32, i32* %6, align 4, !dbg !1015
  %189 = load i32, i32* %7, align 4, !dbg !1016
  %190 = sub nsw i32 %188, %189, !dbg !1017
  %191 = sitofp i32 %190 to double, !dbg !1018
  %192 = fmul double 5.000000e-01, %191, !dbg !1019
  %193 = fadd double %192, 1.000000e+00, !dbg !1020
  %194 = fmul double %187, %193, !dbg !1021
  %195 = fmul double %194, 0x3CB0000000000000, !dbg !1022
  %196 = load double, double* %20, align 8, !dbg !1023
  %197 = call double @fabs(double %196) #1, !dbg !1024
  %198 = fmul double %195, %197, !dbg !1025
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1026
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 1, !dbg !1027
  store double %198, double* %200, align 8, !dbg !1028
  store i32 0, i32* %5, align 4, !dbg !1029
  br label %202, !dbg !1029

; <label>:201:                                    ; preds = %96
  br label %202

; <label>:202:                                    ; preds = %82, %94, %118, %135, %183, %201, %84
  %203 = load i32, i32* %5, align 4, !dbg !1030
  ret i32 %203, !dbg !1030
}

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define internal double @legendre_Pmm(i32, double) #0 !dbg !1031 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1034, metadata !60), !dbg !1035
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1036, metadata !60), !dbg !1037
  %10 = load i32, i32* %4, align 4, !dbg !1038
  %11 = icmp eq i32 %10, 0, !dbg !1040
  br i1 %11, label %12, label %13, !dbg !1041

; <label>:12:                                     ; preds = %2
  store double 1.000000e+00, double* %3, align 8, !dbg !1042
  br label %39, !dbg !1042

; <label>:13:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1044, metadata !60), !dbg !1046
  store double 1.000000e+00, double* %6, align 8, !dbg !1046
  call void @llvm.dbg.declare(metadata double* %7, metadata !1047, metadata !60), !dbg !1048
  %14 = load double, double* %5, align 8, !dbg !1049
  %15 = fsub double 1.000000e+00, %14, !dbg !1050
  %16 = call double @sqrt(double %15) #5, !dbg !1051
  %17 = load double, double* %5, align 8, !dbg !1052
  %18 = fadd double 1.000000e+00, %17, !dbg !1053
  %19 = call double @sqrt(double %18) #5, !dbg !1054
  %20 = fmul double %16, %19, !dbg !1056
  store double %20, double* %7, align 8, !dbg !1048
  call void @llvm.dbg.declare(metadata double* %8, metadata !1057, metadata !60), !dbg !1058
  store double 1.000000e+00, double* %8, align 8, !dbg !1058
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1059, metadata !60), !dbg !1060
  store i32 1, i32* %9, align 4, !dbg !1061
  br label %21, !dbg !1063

; <label>:21:                                     ; preds = %34, %13
  %22 = load i32, i32* %9, align 4, !dbg !1064
  %23 = load i32, i32* %4, align 4, !dbg !1067
  %24 = icmp sle i32 %22, %23, !dbg !1068
  br i1 %24, label %25, label %37, !dbg !1069

; <label>:25:                                     ; preds = %21
  %26 = load double, double* %8, align 8, !dbg !1070
  %27 = fsub double -0.000000e+00, %26, !dbg !1072
  %28 = load double, double* %7, align 8, !dbg !1073
  %29 = fmul double %27, %28, !dbg !1074
  %30 = load double, double* %6, align 8, !dbg !1075
  %31 = fmul double %30, %29, !dbg !1075
  store double %31, double* %6, align 8, !dbg !1075
  %32 = load double, double* %8, align 8, !dbg !1076
  %33 = fadd double %32, 2.000000e+00, !dbg !1076
  store double %33, double* %8, align 8, !dbg !1076
  br label %34, !dbg !1077

; <label>:34:                                     ; preds = %25
  %35 = load i32, i32* %9, align 4, !dbg !1078
  %36 = add nsw i32 %35, 1, !dbg !1078
  store i32 %36, i32* %9, align 4, !dbg !1078
  br label %21, !dbg !1080, !llvm.loop !1081

; <label>:37:                                     ; preds = %21
  %38 = load double, double* %6, align 8, !dbg !1083
  store double %38, double* %3, align 8, !dbg !1084
  br label %39, !dbg !1084

; <label>:39:                                     ; preds = %37, %12
  %40 = load double, double* %3, align 8, !dbg !1085
  ret double %40, !dbg !1085
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_sphPlm_e(i32, i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !1086 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1089, metadata !60), !dbg !1090
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1091, metadata !60), !dbg !1092
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1093, metadata !60), !dbg !1094
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1095, metadata !60), !dbg !1096
  %32 = load i32, i32* %7, align 4, !dbg !1097
  %33 = icmp slt i32 %32, 0, !dbg !1099
  br i1 %33, label %44, label %34, !dbg !1100

; <label>:34:                                     ; preds = %4
  %35 = load i32, i32* %6, align 4, !dbg !1101
  %36 = load i32, i32* %7, align 4, !dbg !1103
  %37 = icmp slt i32 %35, %36, !dbg !1104
  br i1 %37, label %44, label %38, !dbg !1105

; <label>:38:                                     ; preds = %34
  %39 = load double, double* %8, align 8, !dbg !1106
  %40 = fcmp olt double %39, -1.000000e+00, !dbg !1108
  br i1 %40, label %44, label %41, !dbg !1109

; <label>:41:                                     ; preds = %38
  %42 = load double, double* %8, align 8, !dbg !1110
  %43 = fcmp ogt double %42, 1.000000e+00, !dbg !1112
  br i1 %43, label %44, label %53, !dbg !1113

; <label>:44:                                     ; preds = %41, %38, %34, %4
  br label %45, !dbg !1114, !llvm.loop !1116

; <label>:45:                                     ; preds = %44
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1117
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !1117
  store double 0x7FF8000000000000, double* %47, align 8, !dbg !1117
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1117
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !1117
  store double 0x7FF8000000000000, double* %49, align 8, !dbg !1117
  br label %50, !dbg !1117, !llvm.loop !1120

; <label>:50:                                     ; preds = %45
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 365, i32 1), !dbg !1122
  store i32 1, i32* %5, align 4, !dbg !1122
  br label %345, !dbg !1122
                                                  ; No predecessors!
  br label %52, !dbg !1125

; <label>:52:                                     ; preds = %51
  br label %345, !dbg !1127

; <label>:53:                                     ; preds = %41
  %54 = load i32, i32* %7, align 4, !dbg !1128
  %55 = icmp eq i32 %54, 0, !dbg !1130
  br i1 %55, label %56, label %88, !dbg !1131

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1132, metadata !60), !dbg !1134
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1135, metadata !60), !dbg !1136
  %57 = load i32, i32* %6, align 4, !dbg !1137
  %58 = load double, double* %8, align 8, !dbg !1138
  %59 = call i32 @gsl_sf_legendre_Pl_e(i32 %57, double %58, %struct.gsl_sf_result_struct* %10), !dbg !1139
  store i32 %59, i32* %11, align 4, !dbg !1136
  call void @llvm.dbg.declare(metadata double* %12, metadata !1140, metadata !60), !dbg !1141
  %60 = load i32, i32* %6, align 4, !dbg !1142
  %61 = sitofp i32 %60 to double, !dbg !1142
  %62 = fmul double 2.000000e+00, %61, !dbg !1143
  %63 = fadd double %62, 1.000000e+00, !dbg !1144
  %64 = fdiv double %63, 0x402921FB54442D18, !dbg !1145
  %65 = call double @sqrt(double %64) #5, !dbg !1146
  store double %65, double* %12, align 8, !dbg !1141
  %66 = load double, double* %12, align 8, !dbg !1147
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1148
  %68 = load double, double* %67, align 8, !dbg !1148
  %69 = fmul double %66, %68, !dbg !1149
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1150
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !1151
  store double %69, double* %71, align 8, !dbg !1152
  %72 = load double, double* %12, align 8, !dbg !1153
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !1154
  %74 = load double, double* %73, align 8, !dbg !1154
  %75 = fmul double %72, %74, !dbg !1155
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1156
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !1157
  store double %75, double* %77, align 8, !dbg !1158
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1159
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !1160
  %80 = load double, double* %79, align 8, !dbg !1160
  %81 = call double @fabs(double %80) #1, !dbg !1161
  %82 = fmul double 0x3CC0000000000000, %81, !dbg !1162
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1163
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 1, !dbg !1164
  %85 = load double, double* %84, align 8, !dbg !1165
  %86 = fadd double %85, %82, !dbg !1165
  store double %86, double* %84, align 8, !dbg !1165
  %87 = load i32, i32* %11, align 4, !dbg !1166
  store i32 %87, i32* %5, align 4, !dbg !1167
  br label %345, !dbg !1167

; <label>:88:                                     ; preds = %53
  %89 = load double, double* %8, align 8, !dbg !1168
  %90 = fcmp oeq double %89, 1.000000e+00, !dbg !1170
  br i1 %90, label %94, label %91, !dbg !1171

; <label>:91:                                     ; preds = %88
  %92 = load double, double* %8, align 8, !dbg !1172
  %93 = fcmp oeq double %92, -1.000000e+00, !dbg !1174
  br i1 %93, label %94, label %99, !dbg !1175

; <label>:94:                                     ; preds = %91, %88
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1176
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 0, !dbg !1178
  store double 0.000000e+00, double* %96, align 8, !dbg !1179
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1180
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !1181
  store double 0.000000e+00, double* %98, align 8, !dbg !1182
  store i32 0, i32* %5, align 4, !dbg !1183
  br label %345, !dbg !1183

; <label>:99:                                     ; preds = %91
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1184, metadata !60), !dbg !1186
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1187, metadata !60), !dbg !1188
  call void @llvm.dbg.declare(metadata double* %15, metadata !1189, metadata !60), !dbg !1190
  call void @llvm.dbg.declare(metadata double* %16, metadata !1191, metadata !60), !dbg !1192
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !1193, metadata !60), !dbg !1194
  call void @llvm.dbg.declare(metadata double* %18, metadata !1195, metadata !60), !dbg !1196
  call void @llvm.dbg.declare(metadata double* %19, metadata !1197, metadata !60), !dbg !1198
  %100 = load i32, i32* %7, align 4, !dbg !1199
  %101 = and i32 %100, 1, !dbg !1199
  %102 = icmp ne i32 %101, 0, !dbg !1199
  %103 = select i1 %102, double -1.000000e+00, double 1.000000e+00, !dbg !1199
  store double %103, double* %19, align 8, !dbg !1198
  call void @llvm.dbg.declare(metadata double* %20, metadata !1200, metadata !60), !dbg !1201
  %104 = load double, double* %8, align 8, !dbg !1202
  %105 = load i32, i32* %7, align 4, !dbg !1203
  %106 = sitofp i32 %105 to double, !dbg !1203
  %107 = fmul double 2.000000e+00, %106, !dbg !1204
  %108 = fadd double %107, 3.000000e+00, !dbg !1205
  %109 = call double @sqrt(double %108) #5, !dbg !1206
  %110 = fmul double %104, %109, !dbg !1207
  store double %110, double* %20, align 8, !dbg !1201
  call void @llvm.dbg.declare(metadata double* %21, metadata !1208, metadata !60), !dbg !1209
  call void @llvm.dbg.declare(metadata double* %22, metadata !1210, metadata !60), !dbg !1211
  call void @llvm.dbg.declare(metadata double* %23, metadata !1212, metadata !60), !dbg !1213
  call void @llvm.dbg.declare(metadata double* %24, metadata !1214, metadata !60), !dbg !1215
  %111 = load double, double* %8, align 8, !dbg !1216
  %112 = fsub double -0.000000e+00, %111, !dbg !1217
  %113 = load double, double* %8, align 8, !dbg !1218
  %114 = fmul double %112, %113, !dbg !1219
  %115 = call i32 @gsl_sf_log_1plusx_e(double %114, %struct.gsl_sf_result_struct* %13), !dbg !1220
  %116 = load i32, i32* %7, align 4, !dbg !1221
  %117 = sitofp i32 %116 to double, !dbg !1221
  %118 = call i32 @gsl_sf_lnpoch_e(double %117, double 5.000000e-01, %struct.gsl_sf_result_struct* %14), !dbg !1222
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1223
  %120 = load double, double* %119, align 8, !dbg !1223
  %121 = load i32, i32* %7, align 4, !dbg !1224
  %122 = sitofp i32 %121 to double, !dbg !1224
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1225
  %124 = load double, double* %123, align 8, !dbg !1225
  %125 = fmul double %122, %124, !dbg !1226
  %126 = fadd double %120, %125, !dbg !1227
  %127 = fmul double 5.000000e-01, %126, !dbg !1228
  %128 = fadd double 0xBFD250D048E7A1BD, %127, !dbg !1229
  store double %128, double* %15, align 8, !dbg !1230
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1231
  %130 = load double, double* %129, align 8, !dbg !1231
  %131 = load i32, i32* %7, align 4, !dbg !1232
  %132 = sitofp i32 %131 to double, !dbg !1232
  %133 = call double @fabs(double %132) #1, !dbg !1233
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1234
  %135 = load double, double* %134, align 8, !dbg !1234
  %136 = fmul double %133, %135, !dbg !1235
  %137 = fadd double %130, %136, !dbg !1236
  %138 = fmul double 5.000000e-01, %137, !dbg !1237
  %139 = fadd double 0x3C9250D048E7A1BD, %138, !dbg !1238
  store double %139, double* %16, align 8, !dbg !1239
  %140 = load double, double* %15, align 8, !dbg !1240
  %141 = call double @exp(double %140) #5, !dbg !1241
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1242
  store double %141, double* %142, align 8, !dbg !1243
  %143 = load double, double* %16, align 8, !dbg !1244
  %144 = call double @sinh(double %143) #5, !dbg !1245
  %145 = fadd double %144, 0x3CB0000000000000, !dbg !1246
  %146 = fmul double 2.000000e+00, %145, !dbg !1247
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1248
  %148 = load double, double* %147, align 8, !dbg !1248
  %149 = fmul double %146, %148, !dbg !1249
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !1250
  store double %149, double* %150, align 8, !dbg !1251
  %151 = load i32, i32* %7, align 4, !dbg !1252
  %152 = sitofp i32 %151 to double, !dbg !1252
  %153 = fdiv double 1.000000e+00, %152, !dbg !1253
  %154 = fadd double 2.000000e+00, %153, !dbg !1254
  %155 = fdiv double %154, 0x402921FB54442D18, !dbg !1255
  %156 = call double @sqrt(double %155) #5, !dbg !1256
  store double %156, double* %18, align 8, !dbg !1257
  %157 = load double, double* %19, align 8, !dbg !1258
  %158 = load double, double* %18, align 8, !dbg !1259
  %159 = fmul double %157, %158, !dbg !1260
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1261
  %161 = load double, double* %160, align 8, !dbg !1261
  %162 = fmul double %159, %161, !dbg !1262
  store double %162, double* %21, align 8, !dbg !1263
  %163 = load double, double* %21, align 8, !dbg !1264
  %164 = call double @fabs(double %163) #1, !dbg !1265
  %165 = fmul double 0x3CC0000000000000, %164, !dbg !1266
  %166 = load double, double* %18, align 8, !dbg !1267
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !1268
  %168 = load double, double* %167, align 8, !dbg !1268
  %169 = fmul double %166, %168, !dbg !1269
  %170 = fadd double %165, %169, !dbg !1270
  store double %170, double* %22, align 8, !dbg !1271
  %171 = load double, double* %8, align 8, !dbg !1272
  %172 = fsub double 1.000000e+00, %171, !dbg !1273
  %173 = call double @fabs(double %172) #1, !dbg !1274
  %174 = fadd double 0x3CB0000000000000, %173, !dbg !1275
  %175 = fdiv double 1.000000e+00, %174, !dbg !1276
  %176 = fadd double 1.000000e+00, %175, !dbg !1277
  %177 = load double, double* %22, align 8, !dbg !1278
  %178 = fmul double %177, %176, !dbg !1278
  store double %178, double* %22, align 8, !dbg !1278
  %179 = load double, double* %20, align 8, !dbg !1279
  %180 = load double, double* %21, align 8, !dbg !1280
  %181 = fmul double %179, %180, !dbg !1281
  store double %181, double* %23, align 8, !dbg !1282
  %182 = load double, double* %20, align 8, !dbg !1283
  %183 = call double @fabs(double %182) #1, !dbg !1284
  %184 = load double, double* %22, align 8, !dbg !1285
  %185 = fmul double %183, %184, !dbg !1286
  store double %185, double* %24, align 8, !dbg !1287
  %186 = load i32, i32* %6, align 4, !dbg !1288
  %187 = load i32, i32* %7, align 4, !dbg !1290
  %188 = icmp eq i32 %186, %187, !dbg !1291
  br i1 %188, label %189, label %203, !dbg !1292

; <label>:189:                                    ; preds = %99
  %190 = load double, double* %21, align 8, !dbg !1293
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1295
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %191, i32 0, i32 0, !dbg !1296
  store double %190, double* %192, align 8, !dbg !1297
  %193 = load double, double* %22, align 8, !dbg !1298
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1299
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 1, !dbg !1300
  store double %193, double* %195, align 8, !dbg !1301
  %196 = load double, double* %21, align 8, !dbg !1302
  %197 = call double @fabs(double %196) #1, !dbg !1303
  %198 = fmul double 0x3CC0000000000000, %197, !dbg !1304
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1305
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 1, !dbg !1306
  %201 = load double, double* %200, align 8, !dbg !1307
  %202 = fadd double %201, %198, !dbg !1307
  store double %202, double* %200, align 8, !dbg !1307
  store i32 0, i32* %5, align 4, !dbg !1308
  br label %345, !dbg !1308

; <label>:203:                                    ; preds = %99
  %204 = load i32, i32* %6, align 4, !dbg !1309
  %205 = load i32, i32* %7, align 4, !dbg !1311
  %206 = add nsw i32 %205, 1, !dbg !1312
  %207 = icmp eq i32 %204, %206, !dbg !1313
  br i1 %207, label %208, label %222, !dbg !1314

; <label>:208:                                    ; preds = %203
  %209 = load double, double* %23, align 8, !dbg !1315
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1317
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 0, !dbg !1318
  store double %209, double* %211, align 8, !dbg !1319
  %212 = load double, double* %24, align 8, !dbg !1320
  %213 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1321
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %213, i32 0, i32 1, !dbg !1322
  store double %212, double* %214, align 8, !dbg !1323
  %215 = load double, double* %23, align 8, !dbg !1324
  %216 = call double @fabs(double %215) #1, !dbg !1325
  %217 = fmul double 0x3CC0000000000000, %216, !dbg !1326
  %218 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1327
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %218, i32 0, i32 1, !dbg !1328
  %220 = load double, double* %219, align 8, !dbg !1329
  %221 = fadd double %220, %217, !dbg !1329
  store double %221, double* %219, align 8, !dbg !1329
  store i32 0, i32* %5, align 4, !dbg !1330
  br label %345, !dbg !1330

; <label>:222:                                    ; preds = %203
  call void @llvm.dbg.declare(metadata double* %25, metadata !1331, metadata !60), !dbg !1333
  store double 0.000000e+00, double* %25, align 8, !dbg !1333
  call void @llvm.dbg.declare(metadata double* %26, metadata !1334, metadata !60), !dbg !1335
  store double 0.000000e+00, double* %26, align 8, !dbg !1335
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1336, metadata !60), !dbg !1337
  %223 = load i32, i32* %7, align 4, !dbg !1338
  %224 = add nsw i32 %223, 2, !dbg !1340
  store i32 %224, i32* %27, align 4, !dbg !1341
  br label %225, !dbg !1342

; <label>:225:                                    ; preds = %324, %222
  %226 = load i32, i32* %27, align 4, !dbg !1343
  %227 = load i32, i32* %6, align 4, !dbg !1346
  %228 = icmp sle i32 %226, %227, !dbg !1347
  br i1 %228, label %229, label %327, !dbg !1348

; <label>:229:                                    ; preds = %225
  call void @llvm.dbg.declare(metadata double* %28, metadata !1349, metadata !60), !dbg !1351
  %230 = load i32, i32* %27, align 4, !dbg !1352
  %231 = load i32, i32* %7, align 4, !dbg !1353
  %232 = sub nsw i32 %230, %231, !dbg !1354
  %233 = sitofp i32 %232 to double, !dbg !1355
  %234 = load i32, i32* %27, align 4, !dbg !1356
  %235 = load i32, i32* %7, align 4, !dbg !1357
  %236 = add nsw i32 %234, %235, !dbg !1358
  %237 = sitofp i32 %236 to double, !dbg !1359
  %238 = fdiv double %233, %237, !dbg !1360
  store double %238, double* %28, align 8, !dbg !1351
  call void @llvm.dbg.declare(metadata double* %29, metadata !1361, metadata !60), !dbg !1362
  %239 = load i32, i32* %27, align 4, !dbg !1363
  %240 = load i32, i32* %7, align 4, !dbg !1364
  %241 = sub nsw i32 %239, %240, !dbg !1365
  %242 = sitofp i32 %241 to double, !dbg !1363
  %243 = fsub double %242, 1.000000e+00, !dbg !1366
  %244 = load i32, i32* %27, align 4, !dbg !1367
  %245 = load i32, i32* %7, align 4, !dbg !1368
  %246 = add nsw i32 %244, %245, !dbg !1369
  %247 = sitofp i32 %246 to double, !dbg !1367
  %248 = fsub double %247, 1.000000e+00, !dbg !1370
  %249 = fdiv double %243, %248, !dbg !1371
  store double %249, double* %29, align 8, !dbg !1362
  call void @llvm.dbg.declare(metadata double* %30, metadata !1372, metadata !60), !dbg !1373
  %250 = load double, double* %28, align 8, !dbg !1374
  %251 = load i32, i32* %27, align 4, !dbg !1375
  %252 = sitofp i32 %251 to double, !dbg !1375
  %253 = fmul double 2.000000e+00, %252, !dbg !1376
  %254 = fadd double %253, 1.000000e+00, !dbg !1377
  %255 = fmul double %250, %254, !dbg !1378
  %256 = load i32, i32* %27, align 4, !dbg !1379
  %257 = sitofp i32 %256 to double, !dbg !1379
  %258 = fmul double 2.000000e+00, %257, !dbg !1380
  %259 = fsub double %258, 1.000000e+00, !dbg !1381
  %260 = fmul double %255, %259, !dbg !1382
  %261 = call double @sqrt(double %260) #5, !dbg !1383
  store double %261, double* %30, align 8, !dbg !1373
  call void @llvm.dbg.declare(metadata double* %31, metadata !1384, metadata !60), !dbg !1385
  %262 = load double, double* %28, align 8, !dbg !1386
  %263 = load double, double* %29, align 8, !dbg !1387
  %264 = fmul double %262, %263, !dbg !1388
  %265 = load i32, i32* %27, align 4, !dbg !1389
  %266 = sitofp i32 %265 to double, !dbg !1389
  %267 = fmul double 2.000000e+00, %266, !dbg !1390
  %268 = fadd double %267, 1.000000e+00, !dbg !1391
  %269 = fmul double %264, %268, !dbg !1392
  %270 = load i32, i32* %27, align 4, !dbg !1393
  %271 = sitofp i32 %270 to double, !dbg !1393
  %272 = fmul double 2.000000e+00, %271, !dbg !1394
  %273 = fsub double %272, 3.000000e+00, !dbg !1395
  %274 = fdiv double %269, %273, !dbg !1396
  %275 = call double @sqrt(double %274) #5, !dbg !1397
  store double %275, double* %31, align 8, !dbg !1385
  %276 = load double, double* %8, align 8, !dbg !1398
  %277 = load double, double* %23, align 8, !dbg !1399
  %278 = fmul double %276, %277, !dbg !1400
  %279 = load double, double* %30, align 8, !dbg !1401
  %280 = fmul double %278, %279, !dbg !1402
  %281 = load i32, i32* %27, align 4, !dbg !1403
  %282 = load i32, i32* %7, align 4, !dbg !1404
  %283 = add nsw i32 %281, %282, !dbg !1405
  %284 = sitofp i32 %283 to double, !dbg !1403
  %285 = fsub double %284, 1.000000e+00, !dbg !1406
  %286 = load double, double* %21, align 8, !dbg !1407
  %287 = fmul double %285, %286, !dbg !1408
  %288 = load double, double* %31, align 8, !dbg !1409
  %289 = fmul double %287, %288, !dbg !1410
  %290 = fsub double %280, %289, !dbg !1411
  %291 = load i32, i32* %27, align 4, !dbg !1412
  %292 = load i32, i32* %7, align 4, !dbg !1413
  %293 = sub nsw i32 %291, %292, !dbg !1414
  %294 = sitofp i32 %293 to double, !dbg !1415
  %295 = fdiv double %290, %294, !dbg !1416
  store double %295, double* %25, align 8, !dbg !1417
  %296 = load double, double* %23, align 8, !dbg !1418
  store double %296, double* %21, align 8, !dbg !1419
  %297 = load double, double* %25, align 8, !dbg !1420
  store double %297, double* %23, align 8, !dbg !1421
  %298 = load double, double* %8, align 8, !dbg !1422
  %299 = load double, double* %30, align 8, !dbg !1423
  %300 = fmul double %298, %299, !dbg !1424
  %301 = call double @fabs(double %300) #1, !dbg !1425
  %302 = load double, double* %24, align 8, !dbg !1426
  %303 = fmul double %301, %302, !dbg !1427
  %304 = load i32, i32* %27, align 4, !dbg !1428
  %305 = load i32, i32* %7, align 4, !dbg !1429
  %306 = add nsw i32 %304, %305, !dbg !1430
  %307 = sitofp i32 %306 to double, !dbg !1428
  %308 = fsub double %307, 1.000000e+00, !dbg !1431
  %309 = load double, double* %31, align 8, !dbg !1432
  %310 = fmul double %308, %309, !dbg !1433
  %311 = call double @fabs(double %310) #1, !dbg !1434
  %312 = load double, double* %22, align 8, !dbg !1436
  %313 = fmul double %311, %312, !dbg !1437
  %314 = fadd double %303, %313, !dbg !1438
  %315 = fmul double 5.000000e-01, %314, !dbg !1439
  %316 = load i32, i32* %27, align 4, !dbg !1440
  %317 = load i32, i32* %7, align 4, !dbg !1441
  %318 = sub nsw i32 %316, %317, !dbg !1442
  %319 = sitofp i32 %318 to double, !dbg !1440
  %320 = call double @fabs(double %319) #1, !dbg !1443
  %321 = fdiv double %315, %320, !dbg !1445
  store double %321, double* %26, align 8, !dbg !1446
  %322 = load double, double* %24, align 8, !dbg !1447
  store double %322, double* %22, align 8, !dbg !1448
  %323 = load double, double* %26, align 8, !dbg !1449
  store double %323, double* %24, align 8, !dbg !1450
  br label %324, !dbg !1451

; <label>:324:                                    ; preds = %229
  %325 = load i32, i32* %27, align 4, !dbg !1452
  %326 = add nsw i32 %325, 1, !dbg !1452
  store i32 %326, i32* %27, align 4, !dbg !1452
  br label %225, !dbg !1454, !llvm.loop !1455

; <label>:327:                                    ; preds = %225
  %328 = load double, double* %25, align 8, !dbg !1457
  %329 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1458
  %330 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %329, i32 0, i32 0, !dbg !1459
  store double %328, double* %330, align 8, !dbg !1460
  %331 = load double, double* %26, align 8, !dbg !1461
  %332 = load i32, i32* %6, align 4, !dbg !1462
  %333 = load i32, i32* %7, align 4, !dbg !1463
  %334 = sub nsw i32 %332, %333, !dbg !1464
  %335 = sitofp i32 %334 to double, !dbg !1465
  %336 = fmul double 5.000000e-01, %335, !dbg !1466
  %337 = fadd double %336, 1.000000e+00, !dbg !1467
  %338 = fmul double %337, 0x3CB0000000000000, !dbg !1468
  %339 = load double, double* %25, align 8, !dbg !1469
  %340 = call double @fabs(double %339) #1, !dbg !1470
  %341 = fmul double %338, %340, !dbg !1471
  %342 = fadd double %331, %341, !dbg !1472
  %343 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1473
  %344 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %343, i32 0, i32 1, !dbg !1474
  store double %342, double* %344, align 8, !dbg !1475
  store i32 0, i32* %5, align 4, !dbg !1476
  br label %345, !dbg !1476

; <label>:345:                                    ; preds = %50, %56, %94, %189, %208, %327, %52
  %346 = load i32, i32* %5, align 4, !dbg !1477
  ret i32 %346, !dbg !1477
}

declare i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_lnpoch_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind
declare double @sinh(double) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_P1(double) #0 !dbg !1478 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1481, metadata !60), !dbg !1482
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1483, metadata !60), !dbg !1484
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1485, metadata !60), !dbg !1484
  %6 = load double, double* %3, align 8, !dbg !1484
  %7 = call i32 @gsl_sf_legendre_P1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1484
  store i32 %7, i32* %5, align 4, !dbg !1484
  %8 = load i32, i32* %5, align 4, !dbg !1486
  %9 = icmp ne i32 %8, 0, !dbg !1486
  br i1 %9, label %10, label %16, !dbg !1484

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1488, !llvm.loop !1491

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1493
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 751, i32 %12), !dbg !1493
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1493
  %14 = load double, double* %13, align 8, !dbg !1493
  store double %14, double* %2, align 8, !dbg !1493
  br label %19, !dbg !1493
                                                  ; No predecessors!
  br label %16, !dbg !1496

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1498
  %18 = load double, double* %17, align 8, !dbg !1498
  store double %18, double* %2, align 8, !dbg !1498
  br label %19, !dbg !1498

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1500
  ret double %20, !dbg !1500
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_P2(double) #0 !dbg !1501 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1502, metadata !60), !dbg !1503
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1504, metadata !60), !dbg !1505
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1506, metadata !60), !dbg !1505
  %6 = load double, double* %3, align 8, !dbg !1505
  %7 = call i32 @gsl_sf_legendre_P2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1505
  store i32 %7, i32* %5, align 4, !dbg !1505
  %8 = load i32, i32* %5, align 4, !dbg !1507
  %9 = icmp ne i32 %8, 0, !dbg !1507
  br i1 %9, label %10, label %16, !dbg !1505

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1509, !llvm.loop !1512

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1514
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 756, i32 %12), !dbg !1514
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1514
  %14 = load double, double* %13, align 8, !dbg !1514
  store double %14, double* %2, align 8, !dbg !1514
  br label %19, !dbg !1514
                                                  ; No predecessors!
  br label %16, !dbg !1517

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1519
  %18 = load double, double* %17, align 8, !dbg !1519
  store double %18, double* %2, align 8, !dbg !1519
  br label %19, !dbg !1519

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1521
  ret double %20, !dbg !1521
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_P3(double) #0 !dbg !1522 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1523, metadata !60), !dbg !1524
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1525, metadata !60), !dbg !1526
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1527, metadata !60), !dbg !1526
  %6 = load double, double* %3, align 8, !dbg !1526
  %7 = call i32 @gsl_sf_legendre_P3_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1526
  store i32 %7, i32* %5, align 4, !dbg !1526
  %8 = load i32, i32* %5, align 4, !dbg !1528
  %9 = icmp ne i32 %8, 0, !dbg !1528
  br i1 %9, label %10, label %16, !dbg !1526

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1530, !llvm.loop !1533

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1535
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 761, i32 %12), !dbg !1535
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1535
  %14 = load double, double* %13, align 8, !dbg !1535
  store double %14, double* %2, align 8, !dbg !1535
  br label %19, !dbg !1535
                                                  ; No predecessors!
  br label %16, !dbg !1538

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1540
  %18 = load double, double* %17, align 8, !dbg !1540
  store double %18, double* %2, align 8, !dbg !1540
  br label %19, !dbg !1540

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1542
  ret double %20, !dbg !1542
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_Pl(i32, double) #0 !dbg !1543 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1546, metadata !60), !dbg !1547
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1548, metadata !60), !dbg !1549
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1550, metadata !60), !dbg !1551
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1552, metadata !60), !dbg !1551
  %8 = load i32, i32* %4, align 4, !dbg !1551
  %9 = load double, double* %5, align 8, !dbg !1551
  %10 = call i32 @gsl_sf_legendre_Pl_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1551
  store i32 %10, i32* %7, align 4, !dbg !1551
  %11 = load i32, i32* %7, align 4, !dbg !1553
  %12 = icmp ne i32 %11, 0, !dbg !1553
  br i1 %12, label %13, label %19, !dbg !1551

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1555, !llvm.loop !1558

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1560
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 766, i32 %15), !dbg !1560
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1560
  %17 = load double, double* %16, align 8, !dbg !1560
  store double %17, double* %3, align 8, !dbg !1560
  br label %22, !dbg !1560
                                                  ; No predecessors!
  br label %19, !dbg !1563

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1565
  %21 = load double, double* %20, align 8, !dbg !1565
  store double %21, double* %3, align 8, !dbg !1565
  br label %22, !dbg !1565

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1567
  ret double %23, !dbg !1567
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_Plm(i32, i32, double) #0 !dbg !1568 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1571, metadata !60), !dbg !1572
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1573, metadata !60), !dbg !1574
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1575, metadata !60), !dbg !1576
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1577, metadata !60), !dbg !1578
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1579, metadata !60), !dbg !1578
  %10 = load i32, i32* %5, align 4, !dbg !1578
  %11 = load i32, i32* %6, align 4, !dbg !1578
  %12 = load double, double* %7, align 8, !dbg !1578
  %13 = call i32 @gsl_sf_legendre_Plm_e(i32 %10, i32 %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !1578
  store i32 %13, i32* %9, align 4, !dbg !1578
  %14 = load i32, i32* %9, align 4, !dbg !1580
  %15 = icmp ne i32 %14, 0, !dbg !1580
  br i1 %15, label %16, label %22, !dbg !1578

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !1582, !llvm.loop !1585

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !1587
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 771, i32 %18), !dbg !1587
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1587
  %20 = load double, double* %19, align 8, !dbg !1587
  store double %20, double* %4, align 8, !dbg !1587
  br label %25, !dbg !1587
                                                  ; No predecessors!
  br label %22, !dbg !1590

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1592
  %24 = load double, double* %23, align 8, !dbg !1592
  store double %24, double* %4, align 8, !dbg !1592
  br label %25, !dbg !1592

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !1594
  ret double %26, !dbg !1594
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_sphPlm(i32, i32, double) #0 !dbg !1595 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1596, metadata !60), !dbg !1597
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1598, metadata !60), !dbg !1599
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1600, metadata !60), !dbg !1601
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1602, metadata !60), !dbg !1603
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1604, metadata !60), !dbg !1603
  %10 = load i32, i32* %5, align 4, !dbg !1603
  %11 = load i32, i32* %6, align 4, !dbg !1603
  %12 = load double, double* %7, align 8, !dbg !1603
  %13 = call i32 @gsl_sf_legendre_sphPlm_e(i32 %10, i32 %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !1603
  store i32 %13, i32* %9, align 4, !dbg !1603
  %14 = load i32, i32* %9, align 4, !dbg !1605
  %15 = icmp ne i32 %14, 0, !dbg !1605
  br i1 %15, label %16, label %22, !dbg !1603

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !1607, !llvm.loop !1610

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !1612
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 776, i32 %18), !dbg !1612
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1612
  %20 = load double, double* %19, align 8, !dbg !1612
  store double %20, double* %4, align 8, !dbg !1612
  br label %25, !dbg !1612
                                                  ; No predecessors!
  br label %22, !dbg !1615

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1617
  %24 = load double, double* %23, align 8, !dbg !1617
  store double %24, double* %4, align 8, !dbg !1617
  br label %25, !dbg !1617

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !1619
  ret double %26, !dbg !1619
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "legendre_poly.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"PIC Level", i32 2}
!46 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!47 = distinct !DISubprogram(name: "gsl_sf_legendre_P1_e", scope: !1, file: !1, line: 66, type: !48, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !42, !51}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !42, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "x", arg: 1, scope: !47, file: !1, line: 66, type: !42)
!60 = !DIExpression()
!61 = !DILocation(line: 66, column: 29, scope: !47)
!62 = !DILocalVariable(name: "result", arg: 2, scope: !47, file: !1, line: 66, type: !51)
!63 = !DILocation(line: 66, column: 48, scope: !47)
!64 = !DILocation(line: 71, column: 19, scope: !65)
!65 = distinct !DILexicalBlock(scope: !47, file: !1, line: 70, column: 3)
!66 = !DILocation(line: 71, column: 5, scope: !65)
!67 = !DILocation(line: 71, column: 13, scope: !65)
!68 = !DILocation(line: 71, column: 17, scope: !65)
!69 = !DILocation(line: 72, column: 5, scope: !65)
!70 = !DILocation(line: 72, column: 13, scope: !65)
!71 = !DILocation(line: 72, column: 17, scope: !65)
!72 = !DILocation(line: 73, column: 5, scope: !65)
!73 = distinct !DISubprogram(name: "gsl_sf_legendre_P2_e", scope: !1, file: !1, line: 78, type: !48, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!74 = !DILocalVariable(name: "x", arg: 1, scope: !73, file: !1, line: 78, type: !42)
!75 = !DILocation(line: 78, column: 29, scope: !73)
!76 = !DILocalVariable(name: "result", arg: 2, scope: !73, file: !1, line: 78, type: !51)
!77 = !DILocation(line: 78, column: 48, scope: !73)
!78 = !DILocation(line: 83, column: 28, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 82, column: 3)
!80 = !DILocation(line: 83, column: 27, scope: !79)
!81 = !DILocation(line: 83, column: 30, scope: !79)
!82 = !DILocation(line: 83, column: 29, scope: !79)
!83 = !DILocation(line: 83, column: 32, scope: !79)
!84 = !DILocation(line: 83, column: 22, scope: !79)
!85 = !DILocation(line: 83, column: 5, scope: !79)
!86 = !DILocation(line: 83, column: 13, scope: !79)
!87 = !DILocation(line: 83, column: 17, scope: !79)
!88 = !DILocation(line: 84, column: 47, scope: !79)
!89 = !DILocation(line: 84, column: 46, scope: !79)
!90 = !DILocation(line: 84, column: 49, scope: !79)
!91 = !DILocation(line: 84, column: 48, scope: !79)
!92 = !DILocation(line: 84, column: 38, scope: !79)
!93 = !DILocation(line: 84, column: 52, scope: !79)
!94 = !DILocation(line: 84, column: 35, scope: !79)
!95 = !DILocation(line: 84, column: 5, scope: !79)
!96 = !DILocation(line: 84, column: 13, scope: !79)
!97 = !DILocation(line: 84, column: 17, scope: !79)
!98 = !DILocation(line: 85, column: 5, scope: !79)
!99 = distinct !DISubprogram(name: "gsl_sf_legendre_P3_e", scope: !1, file: !1, line: 90, type: !48, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!100 = !DILocalVariable(name: "x", arg: 1, scope: !99, file: !1, line: 90, type: !42)
!101 = !DILocation(line: 90, column: 29, scope: !99)
!102 = !DILocalVariable(name: "result", arg: 2, scope: !99, file: !1, line: 90, type: !51)
!103 = !DILocation(line: 90, column: 48, scope: !99)
!104 = !DILocation(line: 95, column: 23, scope: !105)
!105 = distinct !DILexicalBlock(scope: !99, file: !1, line: 94, column: 3)
!106 = !DILocation(line: 95, column: 22, scope: !105)
!107 = !DILocation(line: 95, column: 30, scope: !105)
!108 = !DILocation(line: 95, column: 29, scope: !105)
!109 = !DILocation(line: 95, column: 32, scope: !105)
!110 = !DILocation(line: 95, column: 31, scope: !105)
!111 = !DILocation(line: 95, column: 34, scope: !105)
!112 = !DILocation(line: 95, column: 24, scope: !105)
!113 = !DILocation(line: 95, column: 5, scope: !105)
!114 = !DILocation(line: 95, column: 13, scope: !105)
!115 = !DILocation(line: 95, column: 17, scope: !105)
!116 = !DILocation(line: 96, column: 43, scope: !105)
!117 = !DILocation(line: 96, column: 51, scope: !105)
!118 = !DILocation(line: 96, column: 38, scope: !105)
!119 = !DILocation(line: 96, column: 69, scope: !105)
!120 = !DILocation(line: 96, column: 64, scope: !121)
!121 = !DILexicalBlockFile(scope: !105, file: !1, discriminator: 1)
!122 = !DILocation(line: 96, column: 62, scope: !105)
!123 = !DILocation(line: 96, column: 84, scope: !105)
!124 = !DILocation(line: 96, column: 83, scope: !105)
!125 = !DILocation(line: 96, column: 86, scope: !105)
!126 = !DILocation(line: 96, column: 85, scope: !105)
!127 = !DILocation(line: 96, column: 75, scope: !128)
!128 = !DILexicalBlockFile(scope: !105, file: !1, discriminator: 2)
!129 = !DILocation(line: 96, column: 89, scope: !105)
!130 = !DILocation(line: 96, column: 72, scope: !105)
!131 = !DILocation(line: 96, column: 56, scope: !105)
!132 = !DILocation(line: 96, column: 35, scope: !105)
!133 = !DILocation(line: 96, column: 5, scope: !105)
!134 = !DILocation(line: 96, column: 13, scope: !105)
!135 = !DILocation(line: 96, column: 17, scope: !105)
!136 = !DILocation(line: 97, column: 5, scope: !105)
!137 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_e", scope: !1, file: !1, line: 103, type: !138, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!138 = !DISubroutineType(types: !139)
!139 = !{!50, !140, !141, !51}
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!142 = !DILocalVariable(name: "l", arg: 1, scope: !137, file: !1, line: 103, type: !140)
!143 = !DILocation(line: 103, column: 32, scope: !137)
!144 = !DILocalVariable(name: "x", arg: 2, scope: !137, file: !1, line: 103, type: !141)
!145 = !DILocation(line: 103, column: 48, scope: !137)
!146 = !DILocalVariable(name: "result", arg: 3, scope: !137, file: !1, line: 103, type: !51)
!147 = !DILocation(line: 103, column: 67, scope: !137)
!148 = !DILocation(line: 107, column: 6, scope: !149)
!149 = distinct !DILexicalBlock(scope: !137, file: !1, line: 107, column: 6)
!150 = !DILocation(line: 107, column: 8, scope: !149)
!151 = !DILocation(line: 107, column: 12, scope: !149)
!152 = !DILocation(line: 107, column: 15, scope: !153)
!153 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 1)
!154 = !DILocation(line: 107, column: 17, scope: !153)
!155 = !DILocation(line: 107, column: 24, scope: !153)
!156 = !DILocation(line: 107, column: 27, scope: !157)
!157 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 2)
!158 = !DILocation(line: 107, column: 29, scope: !157)
!159 = !DILocation(line: 107, column: 6, scope: !157)
!160 = !DILocation(line: 108, column: 5, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !1, line: 107, column: 36)
!162 = distinct !{!162, !160}
!163 = !DILocation(line: 108, column: 5, scope: !164)
!164 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 1)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 108, column: 5)
!166 = distinct !{!166, !167}
!167 = !DILocation(line: 108, column: 5, scope: !165)
!168 = !DILocation(line: 108, column: 5, scope: !169)
!169 = !DILexicalBlockFile(scope: !170, file: !1, discriminator: 2)
!170 = distinct !DILexicalBlock(scope: !165, file: !1, line: 108, column: 5)
!171 = !DILocation(line: 108, column: 5, scope: !172)
!172 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 3)
!173 = !DILocation(line: 109, column: 3, scope: !161)
!174 = !DILocation(line: 110, column: 11, scope: !175)
!175 = distinct !DILexicalBlock(scope: !149, file: !1, line: 110, column: 11)
!176 = !DILocation(line: 110, column: 13, scope: !175)
!177 = !DILocation(line: 110, column: 11, scope: !149)
!178 = !DILocation(line: 111, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 110, column: 19)
!180 = !DILocation(line: 111, column: 13, scope: !179)
!181 = !DILocation(line: 111, column: 17, scope: !179)
!182 = !DILocation(line: 112, column: 5, scope: !179)
!183 = !DILocation(line: 112, column: 13, scope: !179)
!184 = !DILocation(line: 112, column: 17, scope: !179)
!185 = !DILocation(line: 113, column: 5, scope: !179)
!186 = !DILocation(line: 115, column: 11, scope: !187)
!187 = distinct !DILexicalBlock(scope: !175, file: !1, line: 115, column: 11)
!188 = !DILocation(line: 115, column: 13, scope: !187)
!189 = !DILocation(line: 115, column: 11, scope: !175)
!190 = !DILocation(line: 116, column: 19, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !1, line: 115, column: 19)
!192 = !DILocation(line: 116, column: 5, scope: !191)
!193 = !DILocation(line: 116, column: 13, scope: !191)
!194 = !DILocation(line: 116, column: 17, scope: !191)
!195 = !DILocation(line: 117, column: 5, scope: !191)
!196 = !DILocation(line: 117, column: 13, scope: !191)
!197 = !DILocation(line: 117, column: 17, scope: !191)
!198 = !DILocation(line: 118, column: 5, scope: !191)
!199 = !DILocation(line: 120, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !187, file: !1, line: 120, column: 11)
!201 = !DILocation(line: 120, column: 13, scope: !200)
!202 = !DILocation(line: 120, column: 11, scope: !187)
!203 = !DILocation(line: 121, column: 30, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 120, column: 19)
!205 = !DILocation(line: 121, column: 29, scope: !204)
!206 = !DILocation(line: 121, column: 32, scope: !204)
!207 = !DILocation(line: 121, column: 31, scope: !204)
!208 = !DILocation(line: 121, column: 34, scope: !204)
!209 = !DILocation(line: 121, column: 23, scope: !204)
!210 = !DILocation(line: 121, column: 5, scope: !204)
!211 = !DILocation(line: 121, column: 13, scope: !204)
!212 = !DILocation(line: 121, column: 17, scope: !204)
!213 = !DILocation(line: 122, column: 47, scope: !204)
!214 = !DILocation(line: 122, column: 46, scope: !204)
!215 = !DILocation(line: 122, column: 49, scope: !204)
!216 = !DILocation(line: 122, column: 48, scope: !204)
!217 = !DILocation(line: 122, column: 38, scope: !204)
!218 = !DILocation(line: 122, column: 52, scope: !204)
!219 = !DILocation(line: 122, column: 35, scope: !204)
!220 = !DILocation(line: 122, column: 5, scope: !204)
!221 = !DILocation(line: 122, column: 13, scope: !204)
!222 = !DILocation(line: 122, column: 17, scope: !204)
!223 = !DILocation(line: 126, column: 5, scope: !204)
!224 = !DILocation(line: 128, column: 11, scope: !225)
!225 = distinct !DILexicalBlock(scope: !200, file: !1, line: 128, column: 11)
!226 = !DILocation(line: 128, column: 13, scope: !225)
!227 = !DILocation(line: 128, column: 11, scope: !200)
!228 = !DILocation(line: 129, column: 5, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 128, column: 21)
!230 = !DILocation(line: 129, column: 13, scope: !229)
!231 = !DILocation(line: 129, column: 17, scope: !229)
!232 = !DILocation(line: 130, column: 5, scope: !229)
!233 = !DILocation(line: 130, column: 13, scope: !229)
!234 = !DILocation(line: 130, column: 17, scope: !229)
!235 = !DILocation(line: 131, column: 5, scope: !229)
!236 = !DILocation(line: 133, column: 11, scope: !237)
!237 = distinct !DILexicalBlock(scope: !225, file: !1, line: 133, column: 11)
!238 = !DILocation(line: 133, column: 13, scope: !237)
!239 = !DILocation(line: 133, column: 11, scope: !225)
!240 = !DILocation(line: 134, column: 21, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !1, line: 133, column: 22)
!242 = !DILocation(line: 134, column: 5, scope: !241)
!243 = !DILocation(line: 134, column: 13, scope: !241)
!244 = !DILocation(line: 134, column: 17, scope: !241)
!245 = !DILocation(line: 135, column: 5, scope: !241)
!246 = !DILocation(line: 135, column: 13, scope: !241)
!247 = !DILocation(line: 135, column: 17, scope: !241)
!248 = !DILocation(line: 136, column: 5, scope: !241)
!249 = !DILocation(line: 138, column: 11, scope: !250)
!250 = distinct !DILexicalBlock(scope: !237, file: !1, line: 138, column: 11)
!251 = !DILocation(line: 138, column: 13, scope: !250)
!252 = !DILocation(line: 138, column: 11, scope: !237)
!253 = !DILocalVariable(name: "p_ellm2", scope: !254, file: !1, line: 141, type: !42)
!254 = distinct !DILexicalBlock(scope: !250, file: !1, line: 138, column: 23)
!255 = !DILocation(line: 141, column: 12, scope: !254)
!256 = !DILocalVariable(name: "p_ellm1", scope: !254, file: !1, line: 142, type: !42)
!257 = !DILocation(line: 142, column: 12, scope: !254)
!258 = !DILocation(line: 142, column: 22, scope: !254)
!259 = !DILocalVariable(name: "p_ell", scope: !254, file: !1, line: 143, type: !42)
!260 = !DILocation(line: 143, column: 12, scope: !254)
!261 = !DILocation(line: 143, column: 20, scope: !254)
!262 = !DILocalVariable(name: "e_ellm2", scope: !254, file: !1, line: 145, type: !42)
!263 = !DILocation(line: 145, column: 12, scope: !254)
!264 = !DILocalVariable(name: "e_ellm1", scope: !254, file: !1, line: 146, type: !42)
!265 = !DILocation(line: 146, column: 12, scope: !254)
!266 = !DILocation(line: 146, column: 27, scope: !254)
!267 = !DILocation(line: 146, column: 22, scope: !254)
!268 = !DILocation(line: 146, column: 29, scope: !254)
!269 = !DILocalVariable(name: "e_ell", scope: !254, file: !1, line: 147, type: !42)
!270 = !DILocation(line: 147, column: 12, scope: !254)
!271 = !DILocation(line: 147, column: 20, scope: !254)
!272 = !DILocalVariable(name: "ell", scope: !254, file: !1, line: 149, type: !50)
!273 = !DILocation(line: 149, column: 9, scope: !254)
!274 = !DILocation(line: 151, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !254, file: !1, line: 151, column: 5)
!276 = !DILocation(line: 151, column: 9, scope: !275)
!277 = !DILocation(line: 151, column: 16, scope: !278)
!278 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 1)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 151, column: 5)
!280 = !DILocation(line: 151, column: 23, scope: !278)
!281 = !DILocation(line: 151, column: 20, scope: !278)
!282 = !DILocation(line: 151, column: 5, scope: !278)
!283 = !DILocation(line: 152, column: 16, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 151, column: 32)
!285 = !DILocation(line: 152, column: 21, scope: !284)
!286 = !DILocation(line: 152, column: 20, scope: !284)
!287 = !DILocation(line: 152, column: 24, scope: !284)
!288 = !DILocation(line: 152, column: 18, scope: !284)
!289 = !DILocation(line: 152, column: 17, scope: !284)
!290 = !DILocation(line: 152, column: 28, scope: !284)
!291 = !DILocation(line: 152, column: 27, scope: !284)
!292 = !DILocation(line: 152, column: 39, scope: !284)
!293 = !DILocation(line: 152, column: 42, scope: !284)
!294 = !DILocation(line: 152, column: 38, scope: !284)
!295 = !DILocation(line: 152, column: 46, scope: !284)
!296 = !DILocation(line: 152, column: 45, scope: !284)
!297 = !DILocation(line: 152, column: 36, scope: !284)
!298 = !DILocation(line: 152, column: 57, scope: !284)
!299 = !DILocation(line: 152, column: 55, scope: !284)
!300 = !DILocation(line: 152, column: 13, scope: !284)
!301 = !DILocation(line: 153, column: 17, scope: !284)
!302 = !DILocation(line: 153, column: 15, scope: !284)
!303 = !DILocation(line: 154, column: 17, scope: !284)
!304 = !DILocation(line: 154, column: 15, scope: !284)
!305 = !DILocation(line: 156, column: 25, scope: !284)
!306 = !DILocation(line: 156, column: 20, scope: !284)
!307 = !DILocation(line: 156, column: 31, scope: !284)
!308 = !DILocation(line: 156, column: 30, scope: !284)
!309 = !DILocation(line: 156, column: 29, scope: !284)
!310 = !DILocation(line: 156, column: 34, scope: !284)
!311 = !DILocation(line: 156, column: 27, scope: !284)
!312 = !DILocation(line: 156, column: 42, scope: !284)
!313 = !DILocation(line: 156, column: 40, scope: !284)
!314 = !DILocation(line: 156, column: 53, scope: !284)
!315 = !DILocation(line: 156, column: 56, scope: !284)
!316 = !DILocation(line: 156, column: 62, scope: !284)
!317 = !DILocation(line: 156, column: 61, scope: !284)
!318 = !DILocation(line: 156, column: 50, scope: !284)
!319 = !DILocation(line: 156, column: 18, scope: !284)
!320 = !DILocation(line: 156, column: 71, scope: !284)
!321 = !DILocation(line: 156, column: 70, scope: !284)
!322 = !DILocation(line: 156, column: 13, scope: !284)
!323 = !DILocation(line: 157, column: 17, scope: !284)
!324 = !DILocation(line: 157, column: 15, scope: !284)
!325 = !DILocation(line: 158, column: 17, scope: !284)
!326 = !DILocation(line: 158, column: 15, scope: !284)
!327 = !DILocation(line: 159, column: 5, scope: !284)
!328 = !DILocation(line: 151, column: 29, scope: !329)
!329 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 2)
!330 = !DILocation(line: 151, column: 5, scope: !329)
!331 = distinct !{!331, !332}
!332 = !DILocation(line: 151, column: 5, scope: !254)
!333 = !DILocation(line: 161, column: 19, scope: !254)
!334 = !DILocation(line: 161, column: 5, scope: !254)
!335 = !DILocation(line: 161, column: 13, scope: !254)
!336 = !DILocation(line: 161, column: 17, scope: !254)
!337 = !DILocation(line: 162, column: 19, scope: !254)
!338 = !DILocation(line: 162, column: 27, scope: !254)
!339 = !DILocation(line: 162, column: 34, scope: !254)
!340 = !DILocation(line: 162, column: 29, scope: !254)
!341 = !DILocation(line: 162, column: 28, scope: !254)
!342 = !DILocation(line: 162, column: 40, scope: !254)
!343 = !DILocation(line: 162, column: 25, scope: !254)
!344 = !DILocation(line: 162, column: 5, scope: !254)
!345 = !DILocation(line: 162, column: 13, scope: !254)
!346 = !DILocation(line: 162, column: 17, scope: !254)
!347 = !DILocation(line: 163, column: 5, scope: !254)
!348 = !DILocalVariable(name: "u", scope: !349, file: !1, line: 169, type: !42)
!349 = distinct !DILexicalBlock(scope: !250, file: !1, line: 165, column: 8)
!350 = !DILocation(line: 169, column: 12, scope: !349)
!351 = !DILocation(line: 169, column: 17, scope: !349)
!352 = !DILocation(line: 169, column: 19, scope: !349)
!353 = !DILocalVariable(name: "th", scope: !349, file: !1, line: 170, type: !42)
!354 = !DILocation(line: 170, column: 12, scope: !349)
!355 = !DILocation(line: 170, column: 22, scope: !349)
!356 = !DILocation(line: 170, column: 17, scope: !349)
!357 = !DILocalVariable(name: "J0", scope: !349, file: !1, line: 171, type: !52)
!358 = !DILocation(line: 171, column: 19, scope: !349)
!359 = !DILocalVariable(name: "Jm1", scope: !349, file: !1, line: 172, type: !52)
!360 = !DILocation(line: 172, column: 19, scope: !349)
!361 = !DILocalVariable(name: "stat_J0", scope: !349, file: !1, line: 173, type: !50)
!362 = !DILocation(line: 173, column: 9, scope: !349)
!363 = !DILocation(line: 173, column: 39, scope: !349)
!364 = !DILocation(line: 173, column: 41, scope: !349)
!365 = !DILocation(line: 173, column: 40, scope: !349)
!366 = !DILocation(line: 173, column: 20, scope: !349)
!367 = !DILocalVariable(name: "stat_Jm1", scope: !349, file: !1, line: 174, type: !50)
!368 = !DILocation(line: 174, column: 9, scope: !349)
!369 = !DILocation(line: 174, column: 43, scope: !349)
!370 = !DILocation(line: 174, column: 45, scope: !349)
!371 = !DILocation(line: 174, column: 44, scope: !349)
!372 = !DILocation(line: 174, column: 20, scope: !349)
!373 = !DILocalVariable(name: "pre", scope: !349, file: !1, line: 175, type: !42)
!374 = !DILocation(line: 175, column: 12, scope: !349)
!375 = !DILocalVariable(name: "B00", scope: !349, file: !1, line: 176, type: !42)
!376 = !DILocation(line: 176, column: 12, scope: !349)
!377 = !DILocalVariable(name: "c1", scope: !349, file: !1, line: 177, type: !42)
!378 = !DILocation(line: 177, column: 12, scope: !349)
!379 = !DILocation(line: 182, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !349, file: !1, line: 182, column: 8)
!381 = !DILocation(line: 182, column: 11, scope: !380)
!382 = !DILocation(line: 182, column: 8, scope: !349)
!383 = !DILocation(line: 183, column: 20, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !1, line: 182, column: 36)
!385 = !DILocation(line: 183, column: 23, scope: !384)
!386 = !DILocation(line: 183, column: 22, scope: !384)
!387 = !DILocation(line: 183, column: 25, scope: !384)
!388 = !DILocation(line: 183, column: 18, scope: !384)
!389 = !DILocation(line: 183, column: 31, scope: !384)
!390 = !DILocation(line: 183, column: 11, scope: !384)
!391 = !DILocation(line: 184, column: 19, scope: !384)
!392 = !DILocation(line: 184, column: 22, scope: !384)
!393 = !DILocation(line: 184, column: 21, scope: !384)
!394 = !DILocation(line: 184, column: 24, scope: !384)
!395 = !DILocation(line: 184, column: 17, scope: !384)
!396 = !DILocation(line: 184, column: 11, scope: !384)
!397 = !DILocation(line: 185, column: 5, scope: !384)
!398 = !DILocalVariable(name: "sin_th", scope: !399, file: !1, line: 187, type: !42)
!399 = distinct !DILexicalBlock(scope: !380, file: !1, line: 186, column: 10)
!400 = !DILocation(line: 187, column: 14, scope: !399)
!401 = !DILocation(line: 187, column: 34, scope: !399)
!402 = !DILocation(line: 187, column: 36, scope: !399)
!403 = !DILocation(line: 187, column: 35, scope: !399)
!404 = !DILocation(line: 187, column: 32, scope: !399)
!405 = !DILocation(line: 187, column: 23, scope: !399)
!406 = !DILocalVariable(name: "cot_th", scope: !399, file: !1, line: 188, type: !42)
!407 = !DILocation(line: 188, column: 14, scope: !399)
!408 = !DILocation(line: 188, column: 23, scope: !399)
!409 = !DILocation(line: 188, column: 27, scope: !399)
!410 = !DILocation(line: 188, column: 25, scope: !399)
!411 = !DILocation(line: 189, column: 30, scope: !399)
!412 = !DILocation(line: 189, column: 35, scope: !399)
!413 = !DILocation(line: 189, column: 33, scope: !399)
!414 = !DILocation(line: 189, column: 28, scope: !399)
!415 = !DILocation(line: 189, column: 21, scope: !399)
!416 = !DILocation(line: 189, column: 46, scope: !399)
!417 = !DILocation(line: 189, column: 49, scope: !399)
!418 = !DILocation(line: 189, column: 48, scope: !399)
!419 = !DILocation(line: 189, column: 43, scope: !399)
!420 = !DILocation(line: 189, column: 11, scope: !399)
!421 = !DILocation(line: 190, column: 18, scope: !399)
!422 = !DILocation(line: 190, column: 21, scope: !399)
!423 = !DILocation(line: 190, column: 20, scope: !399)
!424 = !DILocation(line: 190, column: 13, scope: !399)
!425 = !DILocation(line: 190, column: 11, scope: !399)
!426 = !DILocation(line: 193, column: 10, scope: !349)
!427 = !DILocation(line: 193, column: 13, scope: !349)
!428 = !DILocation(line: 193, column: 12, scope: !349)
!429 = !DILocation(line: 193, column: 17, scope: !349)
!430 = !DILocation(line: 193, column: 15, scope: !349)
!431 = !DILocation(line: 193, column: 8, scope: !349)
!432 = !DILocation(line: 195, column: 20, scope: !349)
!433 = !DILocation(line: 195, column: 30, scope: !349)
!434 = !DILocation(line: 195, column: 36, scope: !349)
!435 = !DILocation(line: 195, column: 45, scope: !349)
!436 = !DILocation(line: 195, column: 39, scope: !349)
!437 = !DILocation(line: 195, column: 34, scope: !349)
!438 = !DILocation(line: 195, column: 24, scope: !349)
!439 = !DILocation(line: 195, column: 5, scope: !349)
!440 = !DILocation(line: 195, column: 13, scope: !349)
!441 = !DILocation(line: 195, column: 18, scope: !349)
!442 = !DILocation(line: 196, column: 20, scope: !349)
!443 = !DILocation(line: 196, column: 30, scope: !349)
!444 = !DILocation(line: 196, column: 41, scope: !349)
!445 = !DILocation(line: 196, column: 36, scope: !349)
!446 = !DILocation(line: 196, column: 51, scope: !349)
!447 = !DILocation(line: 196, column: 45, scope: !349)
!448 = !DILocation(line: 196, column: 34, scope: !349)
!449 = !DILocation(line: 196, column: 24, scope: !349)
!450 = !DILocation(line: 196, column: 5, scope: !349)
!451 = !DILocation(line: 196, column: 13, scope: !349)
!452 = !DILocation(line: 196, column: 18, scope: !349)
!453 = !DILocation(line: 197, column: 48, scope: !349)
!454 = !DILocation(line: 197, column: 56, scope: !349)
!455 = !DILocation(line: 197, column: 43, scope: !349)
!456 = !DILocation(line: 197, column: 41, scope: !349)
!457 = !DILocation(line: 197, column: 5, scope: !349)
!458 = !DILocation(line: 197, column: 13, scope: !349)
!459 = !DILocation(line: 197, column: 17, scope: !349)
!460 = !DILocation(line: 199, column: 12, scope: !349)
!461 = !DILocation(line: 199, column: 12, scope: !462)
!462 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 1)
!463 = !DILocation(line: 199, column: 12, scope: !464)
!464 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 2)
!465 = !DILocation(line: 199, column: 12, scope: !466)
!466 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 3)
!467 = !DILocation(line: 199, column: 12, scope: !468)
!468 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 4)
!469 = !DILocation(line: 199, column: 12, scope: !470)
!470 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 5)
!471 = !DILocation(line: 199, column: 12, scope: !472)
!472 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 6)
!473 = !DILocation(line: 199, column: 5, scope: !472)
!474 = !DILocation(line: 201, column: 1, scope: !137)
!475 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_array", scope: !1, file: !1, line: 205, type: !476, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!476 = !DISubroutineType(types: !477)
!477 = !{!50, !140, !141, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!479 = !DILocalVariable(name: "lmax", arg: 1, scope: !475, file: !1, line: 205, type: !140)
!480 = !DILocation(line: 205, column: 36, scope: !475)
!481 = !DILocalVariable(name: "x", arg: 2, scope: !475, file: !1, line: 205, type: !141)
!482 = !DILocation(line: 205, column: 55, scope: !475)
!483 = !DILocalVariable(name: "result_array", arg: 3, scope: !475, file: !1, line: 205, type: !478)
!484 = !DILocation(line: 205, column: 67, scope: !475)
!485 = !DILocation(line: 209, column: 6, scope: !486)
!486 = distinct !DILexicalBlock(scope: !475, file: !1, line: 209, column: 6)
!487 = !DILocation(line: 209, column: 11, scope: !486)
!488 = !DILocation(line: 209, column: 15, scope: !486)
!489 = !DILocation(line: 209, column: 18, scope: !490)
!490 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 1)
!491 = !DILocation(line: 209, column: 20, scope: !490)
!492 = !DILocation(line: 209, column: 27, scope: !490)
!493 = !DILocation(line: 209, column: 30, scope: !494)
!494 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 2)
!495 = !DILocation(line: 209, column: 32, scope: !494)
!496 = !DILocation(line: 209, column: 6, scope: !494)
!497 = !DILocation(line: 210, column: 5, scope: !498)
!498 = distinct !DILexicalBlock(scope: !486, file: !1, line: 209, column: 39)
!499 = distinct !{!499, !497}
!500 = !DILocation(line: 210, column: 5, scope: !501)
!501 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 1)
!502 = distinct !DILexicalBlock(scope: !498, file: !1, line: 210, column: 5)
!503 = !DILocation(line: 211, column: 3, scope: !498)
!504 = !DILocation(line: 212, column: 11, scope: !505)
!505 = distinct !DILexicalBlock(scope: !486, file: !1, line: 212, column: 11)
!506 = !DILocation(line: 212, column: 16, scope: !505)
!507 = !DILocation(line: 212, column: 11, scope: !486)
!508 = !DILocation(line: 213, column: 5, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !1, line: 212, column: 22)
!510 = !DILocation(line: 213, column: 21, scope: !509)
!511 = !DILocation(line: 214, column: 5, scope: !509)
!512 = !DILocation(line: 216, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !505, file: !1, line: 216, column: 11)
!514 = !DILocation(line: 216, column: 16, scope: !513)
!515 = !DILocation(line: 216, column: 11, scope: !505)
!516 = !DILocation(line: 217, column: 5, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !1, line: 216, column: 22)
!518 = !DILocation(line: 217, column: 21, scope: !517)
!519 = !DILocation(line: 218, column: 23, scope: !517)
!520 = !DILocation(line: 218, column: 5, scope: !517)
!521 = !DILocation(line: 218, column: 21, scope: !517)
!522 = !DILocation(line: 219, column: 5, scope: !517)
!523 = !DILocalVariable(name: "p_ellm2", scope: !524, file: !1, line: 224, type: !42)
!524 = distinct !DILexicalBlock(scope: !513, file: !1, line: 221, column: 8)
!525 = !DILocation(line: 224, column: 12, scope: !524)
!526 = !DILocalVariable(name: "p_ellm1", scope: !524, file: !1, line: 225, type: !42)
!527 = !DILocation(line: 225, column: 12, scope: !524)
!528 = !DILocation(line: 225, column: 22, scope: !524)
!529 = !DILocalVariable(name: "p_ell", scope: !524, file: !1, line: 226, type: !42)
!530 = !DILocation(line: 226, column: 12, scope: !524)
!531 = !DILocation(line: 226, column: 20, scope: !524)
!532 = !DILocalVariable(name: "ell", scope: !524, file: !1, line: 227, type: !50)
!533 = !DILocation(line: 227, column: 9, scope: !524)
!534 = !DILocation(line: 229, column: 5, scope: !524)
!535 = !DILocation(line: 229, column: 21, scope: !524)
!536 = !DILocation(line: 230, column: 23, scope: !524)
!537 = !DILocation(line: 230, column: 5, scope: !524)
!538 = !DILocation(line: 230, column: 21, scope: !524)
!539 = !DILocation(line: 232, column: 12, scope: !540)
!540 = distinct !DILexicalBlock(scope: !524, file: !1, line: 232, column: 5)
!541 = !DILocation(line: 232, column: 9, scope: !540)
!542 = !DILocation(line: 232, column: 16, scope: !543)
!543 = !DILexicalBlockFile(scope: !544, file: !1, discriminator: 1)
!544 = distinct !DILexicalBlock(scope: !540, file: !1, line: 232, column: 5)
!545 = !DILocation(line: 232, column: 23, scope: !543)
!546 = !DILocation(line: 232, column: 20, scope: !543)
!547 = !DILocation(line: 232, column: 5, scope: !543)
!548 = !DILocation(line: 233, column: 16, scope: !549)
!549 = distinct !DILexicalBlock(scope: !544, file: !1, line: 232, column: 35)
!550 = !DILocation(line: 233, column: 21, scope: !549)
!551 = !DILocation(line: 233, column: 20, scope: !549)
!552 = !DILocation(line: 233, column: 24, scope: !549)
!553 = !DILocation(line: 233, column: 18, scope: !549)
!554 = !DILocation(line: 233, column: 17, scope: !549)
!555 = !DILocation(line: 233, column: 28, scope: !549)
!556 = !DILocation(line: 233, column: 27, scope: !549)
!557 = !DILocation(line: 233, column: 39, scope: !549)
!558 = !DILocation(line: 233, column: 42, scope: !549)
!559 = !DILocation(line: 233, column: 38, scope: !549)
!560 = !DILocation(line: 233, column: 46, scope: !549)
!561 = !DILocation(line: 233, column: 45, scope: !549)
!562 = !DILocation(line: 233, column: 36, scope: !549)
!563 = !DILocation(line: 233, column: 57, scope: !549)
!564 = !DILocation(line: 233, column: 55, scope: !549)
!565 = !DILocation(line: 233, column: 13, scope: !549)
!566 = !DILocation(line: 234, column: 17, scope: !549)
!567 = !DILocation(line: 234, column: 15, scope: !549)
!568 = !DILocation(line: 235, column: 17, scope: !549)
!569 = !DILocation(line: 235, column: 15, scope: !549)
!570 = !DILocation(line: 236, column: 27, scope: !549)
!571 = !DILocation(line: 236, column: 20, scope: !549)
!572 = !DILocation(line: 236, column: 7, scope: !549)
!573 = !DILocation(line: 236, column: 25, scope: !549)
!574 = !DILocation(line: 237, column: 5, scope: !549)
!575 = !DILocation(line: 232, column: 32, scope: !576)
!576 = !DILexicalBlockFile(scope: !544, file: !1, discriminator: 2)
!577 = !DILocation(line: 232, column: 5, scope: !576)
!578 = distinct !{!578, !579}
!579 = !DILocation(line: 232, column: 5, scope: !524)
!580 = !DILocation(line: 239, column: 5, scope: !524)
!581 = !DILocation(line: 241, column: 1, scope: !475)
!582 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_deriv_array", scope: !1, file: !1, line: 245, type: !583, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!583 = !DISubroutineType(types: !584)
!584 = !{!50, !140, !141, !478, !478}
!585 = !DILocalVariable(name: "lmax", arg: 1, scope: !582, file: !1, line: 245, type: !140)
!586 = !DILocation(line: 245, column: 42, scope: !582)
!587 = !DILocalVariable(name: "x", arg: 2, scope: !582, file: !1, line: 245, type: !141)
!588 = !DILocation(line: 245, column: 61, scope: !582)
!589 = !DILocalVariable(name: "result_array", arg: 3, scope: !582, file: !1, line: 245, type: !478)
!590 = !DILocation(line: 245, column: 73, scope: !582)
!591 = !DILocalVariable(name: "result_deriv_array", arg: 4, scope: !582, file: !1, line: 245, type: !478)
!592 = !DILocation(line: 245, column: 96, scope: !582)
!593 = !DILocalVariable(name: "stat_array", scope: !582, file: !1, line: 247, type: !50)
!594 = !DILocation(line: 247, column: 7, scope: !582)
!595 = !DILocation(line: 247, column: 45, scope: !582)
!596 = !DILocation(line: 247, column: 51, scope: !582)
!597 = !DILocation(line: 247, column: 54, scope: !582)
!598 = !DILocation(line: 247, column: 20, scope: !582)
!599 = !DILocation(line: 249, column: 6, scope: !600)
!600 = distinct !DILexicalBlock(scope: !582, file: !1, line: 249, column: 6)
!601 = !DILocation(line: 249, column: 11, scope: !600)
!602 = !DILocation(line: 249, column: 6, scope: !582)
!603 = !DILocation(line: 249, column: 17, scope: !604)
!604 = !DILexicalBlockFile(scope: !600, file: !1, discriminator: 1)
!605 = !DILocation(line: 249, column: 39, scope: !604)
!606 = !DILocation(line: 250, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !582, file: !1, line: 250, column: 6)
!608 = !DILocation(line: 250, column: 11, scope: !607)
!609 = !DILocation(line: 250, column: 6, scope: !582)
!610 = !DILocation(line: 250, column: 17, scope: !611)
!611 = !DILexicalBlockFile(scope: !607, file: !1, discriminator: 1)
!612 = !DILocation(line: 250, column: 39, scope: !611)
!613 = !DILocation(line: 252, column: 6, scope: !614)
!614 = distinct !DILexicalBlock(scope: !582, file: !1, line: 252, column: 6)
!615 = !DILocation(line: 252, column: 17, scope: !614)
!616 = !DILocation(line: 252, column: 6, scope: !582)
!617 = !DILocalVariable(name: "ell", scope: !618, file: !1, line: 254, type: !50)
!618 = distinct !DILexicalBlock(scope: !614, file: !1, line: 253, column: 3)
!619 = !DILocation(line: 254, column: 9, scope: !618)
!620 = !DILocation(line: 256, column: 13, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !1, line: 256, column: 8)
!622 = !DILocation(line: 256, column: 15, scope: !621)
!623 = !DILocation(line: 256, column: 8, scope: !621)
!624 = !DILocation(line: 256, column: 23, scope: !621)
!625 = !DILocation(line: 256, column: 27, scope: !621)
!626 = !DILocation(line: 256, column: 21, scope: !621)
!627 = !DILocation(line: 256, column: 34, scope: !621)
!628 = !DILocation(line: 256, column: 38, scope: !621)
!629 = !DILocation(line: 256, column: 32, scope: !621)
!630 = !DILocation(line: 256, column: 44, scope: !621)
!631 = !DILocation(line: 256, column: 8, scope: !618)
!632 = !DILocation(line: 259, column: 15, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !1, line: 259, column: 7)
!634 = distinct !DILexicalBlock(scope: !621, file: !1, line: 257, column: 5)
!635 = !DILocation(line: 259, column: 11, scope: !633)
!636 = !DILocation(line: 259, column: 20, scope: !637)
!637 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 1)
!638 = distinct !DILexicalBlock(scope: !633, file: !1, line: 259, column: 7)
!639 = !DILocation(line: 259, column: 27, scope: !637)
!640 = !DILocation(line: 259, column: 24, scope: !637)
!641 = !DILocation(line: 259, column: 7, scope: !637)
!642 = !DILocalVariable(name: "pre", scope: !643, file: !1, line: 261, type: !141)
!643 = distinct !DILexicalBlock(scope: !638, file: !1, line: 260, column: 7)
!644 = !DILocation(line: 261, column: 22, scope: !643)
!645 = !DILocation(line: 261, column: 34, scope: !643)
!646 = !DILocation(line: 261, column: 32, scope: !643)
!647 = !DILocation(line: 261, column: 41, scope: !643)
!648 = !DILocation(line: 261, column: 44, scope: !643)
!649 = !DILocation(line: 261, column: 38, scope: !643)
!650 = !DILocation(line: 262, column: 35, scope: !643)
!651 = !DILocation(line: 262, column: 60, scope: !643)
!652 = !DILocation(line: 262, column: 59, scope: !643)
!653 = !DILocation(line: 262, column: 53, scope: !643)
!654 = !DILocation(line: 262, column: 66, scope: !643)
!655 = !DILocation(line: 262, column: 69, scope: !643)
!656 = !DILocation(line: 262, column: 63, scope: !643)
!657 = !DILocation(line: 262, column: 76, scope: !643)
!658 = !DILocation(line: 262, column: 79, scope: !643)
!659 = !DILocation(line: 262, column: 74, scope: !643)
!660 = !DILocation(line: 262, column: 46, scope: !643)
!661 = !DILocation(line: 262, column: 39, scope: !643)
!662 = !DILocation(line: 262, column: 28, scope: !643)
!663 = !DILocation(line: 262, column: 9, scope: !643)
!664 = !DILocation(line: 262, column: 33, scope: !643)
!665 = !DILocation(line: 263, column: 7, scope: !643)
!666 = !DILocation(line: 259, column: 36, scope: !667)
!667 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 2)
!668 = !DILocation(line: 259, column: 7, scope: !667)
!669 = distinct !{!669, !670}
!670 = !DILocation(line: 259, column: 7, scope: !634)
!671 = !DILocation(line: 264, column: 5, scope: !634)
!672 = !DILocation(line: 265, column: 18, scope: !673)
!673 = distinct !DILexicalBlock(scope: !621, file: !1, line: 265, column: 13)
!674 = !DILocation(line: 265, column: 20, scope: !673)
!675 = !DILocation(line: 265, column: 13, scope: !673)
!676 = !DILocation(line: 265, column: 28, scope: !673)
!677 = !DILocation(line: 265, column: 32, scope: !673)
!678 = !DILocation(line: 265, column: 26, scope: !673)
!679 = !DILocation(line: 265, column: 39, scope: !673)
!680 = !DILocation(line: 265, column: 43, scope: !673)
!681 = !DILocation(line: 265, column: 37, scope: !673)
!682 = !DILocation(line: 265, column: 49, scope: !673)
!683 = !DILocation(line: 265, column: 13, scope: !621)
!684 = !DILocation(line: 268, column: 15, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 268, column: 7)
!686 = distinct !DILexicalBlock(scope: !673, file: !1, line: 266, column: 5)
!687 = !DILocation(line: 268, column: 11, scope: !685)
!688 = !DILocation(line: 268, column: 20, scope: !689)
!689 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 1)
!690 = distinct !DILexicalBlock(scope: !685, file: !1, line: 268, column: 7)
!691 = !DILocation(line: 268, column: 27, scope: !689)
!692 = !DILocation(line: 268, column: 24, scope: !689)
!693 = !DILocation(line: 268, column: 7, scope: !689)
!694 = !DILocalVariable(name: "sgn", scope: !695, file: !1, line: 270, type: !141)
!695 = distinct !DILexicalBlock(scope: !690, file: !1, line: 269, column: 7)
!696 = !DILocation(line: 270, column: 22, scope: !695)
!697 = !DILocation(line: 270, column: 30, scope: !695)
!698 = !DILocalVariable(name: "pre", scope: !695, file: !1, line: 271, type: !141)
!699 = !DILocation(line: 271, column: 22, scope: !695)
!700 = !DILocation(line: 271, column: 28, scope: !695)
!701 = !DILocation(line: 271, column: 32, scope: !695)
!702 = !DILocation(line: 271, column: 40, scope: !695)
!703 = !DILocation(line: 271, column: 38, scope: !695)
!704 = !DILocation(line: 271, column: 47, scope: !695)
!705 = !DILocation(line: 271, column: 50, scope: !695)
!706 = !DILocation(line: 271, column: 44, scope: !695)
!707 = !DILocation(line: 272, column: 35, scope: !695)
!708 = !DILocation(line: 272, column: 60, scope: !695)
!709 = !DILocation(line: 272, column: 59, scope: !695)
!710 = !DILocation(line: 272, column: 53, scope: !695)
!711 = !DILocation(line: 272, column: 66, scope: !695)
!712 = !DILocation(line: 272, column: 69, scope: !695)
!713 = !DILocation(line: 272, column: 63, scope: !695)
!714 = !DILocation(line: 272, column: 76, scope: !695)
!715 = !DILocation(line: 272, column: 79, scope: !695)
!716 = !DILocation(line: 272, column: 74, scope: !695)
!717 = !DILocation(line: 272, column: 46, scope: !695)
!718 = !DILocation(line: 272, column: 39, scope: !695)
!719 = !DILocation(line: 272, column: 28, scope: !695)
!720 = !DILocation(line: 272, column: 9, scope: !695)
!721 = !DILocation(line: 272, column: 33, scope: !695)
!722 = !DILocation(line: 273, column: 7, scope: !695)
!723 = !DILocation(line: 268, column: 36, scope: !724)
!724 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 2)
!725 = !DILocation(line: 268, column: 7, scope: !724)
!726 = distinct !{!726, !727}
!727 = !DILocation(line: 268, column: 7, scope: !686)
!728 = !DILocation(line: 274, column: 5, scope: !686)
!729 = !DILocalVariable(name: "diff_a", scope: !730, file: !1, line: 277, type: !141)
!730 = distinct !DILexicalBlock(scope: !673, file: !1, line: 276, column: 5)
!731 = !DILocation(line: 277, column: 20, scope: !730)
!732 = !DILocation(line: 277, column: 35, scope: !730)
!733 = !DILocation(line: 277, column: 33, scope: !730)
!734 = !DILocalVariable(name: "diff_b", scope: !730, file: !1, line: 278, type: !141)
!735 = !DILocation(line: 278, column: 20, scope: !730)
!736 = !DILocation(line: 278, column: 35, scope: !730)
!737 = !DILocation(line: 278, column: 33, scope: !730)
!738 = !DILocation(line: 279, column: 15, scope: !739)
!739 = distinct !DILexicalBlock(scope: !730, file: !1, line: 279, column: 7)
!740 = !DILocation(line: 279, column: 11, scope: !739)
!741 = !DILocation(line: 279, column: 20, scope: !742)
!742 = !DILexicalBlockFile(scope: !743, file: !1, discriminator: 1)
!743 = distinct !DILexicalBlock(scope: !739, file: !1, line: 279, column: 7)
!744 = !DILocation(line: 279, column: 27, scope: !742)
!745 = !DILocation(line: 279, column: 24, scope: !742)
!746 = !DILocation(line: 279, column: 7, scope: !742)
!747 = !DILocation(line: 281, column: 37, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !1, line: 280, column: 7)
!749 = !DILocation(line: 281, column: 35, scope: !748)
!750 = !DILocation(line: 281, column: 44, scope: !748)
!751 = !DILocation(line: 281, column: 61, scope: !748)
!752 = !DILocation(line: 281, column: 48, scope: !748)
!753 = !DILocation(line: 281, column: 46, scope: !748)
!754 = !DILocation(line: 281, column: 81, scope: !748)
!755 = !DILocation(line: 281, column: 84, scope: !748)
!756 = !DILocation(line: 281, column: 68, scope: !748)
!757 = !DILocation(line: 281, column: 66, scope: !748)
!758 = !DILocation(line: 281, column: 41, scope: !748)
!759 = !DILocation(line: 281, column: 92, scope: !748)
!760 = !DILocation(line: 281, column: 101, scope: !748)
!761 = !DILocation(line: 281, column: 99, scope: !748)
!762 = !DILocation(line: 281, column: 89, scope: !748)
!763 = !DILocation(line: 281, column: 28, scope: !748)
!764 = !DILocation(line: 281, column: 9, scope: !748)
!765 = !DILocation(line: 281, column: 33, scope: !748)
!766 = !DILocation(line: 282, column: 7, scope: !748)
!767 = !DILocation(line: 279, column: 36, scope: !768)
!768 = !DILexicalBlockFile(scope: !743, file: !1, discriminator: 2)
!769 = !DILocation(line: 279, column: 7, scope: !768)
!770 = distinct !{!770, !771}
!771 = !DILocation(line: 279, column: 7, scope: !730)
!772 = !DILocation(line: 285, column: 5, scope: !618)
!773 = !DILocation(line: 289, column: 12, scope: !774)
!774 = distinct !DILexicalBlock(scope: !614, file: !1, line: 288, column: 3)
!775 = !DILocation(line: 289, column: 5, scope: !774)
!776 = !DILocation(line: 291, column: 1, scope: !582)
!777 = distinct !DISubprogram(name: "gsl_sf_legendre_Plm_e", scope: !1, file: !1, line: 294, type: !778, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!778 = !DISubroutineType(types: !779)
!779 = !{!50, !140, !140, !141, !51}
!780 = !DILocalVariable(name: "l", arg: 1, scope: !777, file: !1, line: 294, type: !140)
!781 = !DILocation(line: 294, column: 33, scope: !777)
!782 = !DILocalVariable(name: "m", arg: 2, scope: !777, file: !1, line: 294, type: !140)
!783 = !DILocation(line: 294, column: 46, scope: !777)
!784 = !DILocalVariable(name: "x", arg: 3, scope: !777, file: !1, line: 294, type: !141)
!785 = !DILocation(line: 294, column: 62, scope: !777)
!786 = !DILocalVariable(name: "result", arg: 4, scope: !777, file: !1, line: 294, type: !51)
!787 = !DILocation(line: 294, column: 81, scope: !777)
!788 = !DILocalVariable(name: "dif", scope: !777, file: !1, line: 300, type: !141)
!789 = !DILocation(line: 300, column: 16, scope: !777)
!790 = !DILocation(line: 300, column: 22, scope: !777)
!791 = !DILocation(line: 300, column: 24, scope: !777)
!792 = !DILocation(line: 300, column: 23, scope: !777)
!793 = !DILocalVariable(name: "sum", scope: !777, file: !1, line: 301, type: !141)
!794 = !DILocation(line: 301, column: 16, scope: !777)
!795 = !DILocation(line: 301, column: 22, scope: !777)
!796 = !DILocation(line: 301, column: 24, scope: !777)
!797 = !DILocation(line: 301, column: 23, scope: !777)
!798 = !DILocalVariable(name: "t_d", scope: !777, file: !1, line: 302, type: !141)
!799 = !DILocation(line: 302, column: 16, scope: !777)
!800 = !DILocation(line: 302, column: 24, scope: !777)
!801 = !DILocation(line: 302, column: 28, scope: !777)
!802 = !DILocation(line: 302, column: 24, scope: !803)
!803 = !DILexicalBlockFile(scope: !777, file: !1, discriminator: 1)
!804 = !DILocation(line: 302, column: 49, scope: !805)
!805 = !DILexicalBlockFile(scope: !777, file: !1, discriminator: 2)
!806 = !DILocation(line: 302, column: 47, scope: !805)
!807 = !DILocation(line: 302, column: 60, scope: !805)
!808 = !DILocation(line: 302, column: 56, scope: !805)
!809 = !DILocation(line: 302, column: 64, scope: !805)
!810 = !DILocation(line: 302, column: 53, scope: !805)
!811 = !DILocation(line: 302, column: 24, scope: !805)
!812 = !DILocation(line: 302, column: 24, scope: !813)
!813 = !DILexicalBlockFile(scope: !777, file: !1, discriminator: 3)
!814 = !DILocation(line: 302, column: 16, scope: !813)
!815 = !DILocalVariable(name: "t_s", scope: !777, file: !1, line: 303, type: !141)
!816 = !DILocation(line: 303, column: 16, scope: !777)
!817 = !DILocation(line: 303, column: 24, scope: !777)
!818 = !DILocation(line: 303, column: 28, scope: !777)
!819 = !DILocation(line: 303, column: 24, scope: !803)
!820 = !DILocation(line: 303, column: 49, scope: !805)
!821 = !DILocation(line: 303, column: 47, scope: !805)
!822 = !DILocation(line: 303, column: 60, scope: !805)
!823 = !DILocation(line: 303, column: 56, scope: !805)
!824 = !DILocation(line: 303, column: 64, scope: !805)
!825 = !DILocation(line: 303, column: 53, scope: !805)
!826 = !DILocation(line: 303, column: 24, scope: !805)
!827 = !DILocation(line: 303, column: 24, scope: !813)
!828 = !DILocation(line: 303, column: 16, scope: !813)
!829 = !DILocalVariable(name: "exp_check", scope: !777, file: !1, line: 304, type: !141)
!830 = !DILocation(line: 304, column: 16, scope: !777)
!831 = !DILocation(line: 304, column: 42, scope: !777)
!832 = !DILocation(line: 304, column: 41, scope: !777)
!833 = !DILocation(line: 304, column: 43, scope: !777)
!834 = !DILocation(line: 304, column: 34, scope: !777)
!835 = !DILocation(line: 304, column: 32, scope: !777)
!836 = !DILocation(line: 304, column: 51, scope: !777)
!837 = !DILocation(line: 304, column: 49, scope: !777)
!838 = !DILocation(line: 304, column: 57, scope: !777)
!839 = !DILocation(line: 304, column: 55, scope: !777)
!840 = !DILocation(line: 308, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !777, file: !1, line: 308, column: 6)
!842 = !DILocation(line: 308, column: 8, scope: !841)
!843 = !DILocation(line: 308, column: 12, scope: !841)
!844 = !DILocation(line: 308, column: 15, scope: !845)
!845 = !DILexicalBlockFile(scope: !841, file: !1, discriminator: 1)
!846 = !DILocation(line: 308, column: 19, scope: !845)
!847 = !DILocation(line: 308, column: 17, scope: !845)
!848 = !DILocation(line: 308, column: 21, scope: !845)
!849 = !DILocation(line: 308, column: 24, scope: !850)
!850 = !DILexicalBlockFile(scope: !841, file: !1, discriminator: 2)
!851 = !DILocation(line: 308, column: 26, scope: !850)
!852 = !DILocation(line: 308, column: 33, scope: !850)
!853 = !DILocation(line: 308, column: 36, scope: !854)
!854 = !DILexicalBlockFile(scope: !841, file: !1, discriminator: 3)
!855 = !DILocation(line: 308, column: 38, scope: !854)
!856 = !DILocation(line: 308, column: 6, scope: !854)
!857 = !DILocation(line: 309, column: 5, scope: !858)
!858 = distinct !DILexicalBlock(scope: !841, file: !1, line: 308, column: 45)
!859 = distinct !{!859, !857}
!860 = !DILocation(line: 309, column: 5, scope: !861)
!861 = !DILexicalBlockFile(scope: !862, file: !1, discriminator: 1)
!862 = distinct !DILexicalBlock(scope: !858, file: !1, line: 309, column: 5)
!863 = distinct !{!863, !864}
!864 = !DILocation(line: 309, column: 5, scope: !862)
!865 = !DILocation(line: 309, column: 5, scope: !866)
!866 = !DILexicalBlockFile(scope: !867, file: !1, discriminator: 2)
!867 = distinct !DILexicalBlock(scope: !862, file: !1, line: 309, column: 5)
!868 = !DILocation(line: 309, column: 5, scope: !869)
!869 = !DILexicalBlockFile(scope: !862, file: !1, discriminator: 3)
!870 = !DILocation(line: 310, column: 3, scope: !858)
!871 = !DILocation(line: 311, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !841, file: !1, line: 311, column: 11)
!873 = !DILocation(line: 311, column: 21, scope: !872)
!874 = !DILocation(line: 311, column: 11, scope: !841)
!875 = !DILocation(line: 313, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !1, line: 311, column: 46)
!877 = distinct !{!877, !875}
!878 = !DILocation(line: 313, column: 5, scope: !879)
!879 = !DILexicalBlockFile(scope: !880, file: !1, discriminator: 1)
!880 = distinct !DILexicalBlock(scope: !876, file: !1, line: 313, column: 5)
!881 = distinct !{!881, !882}
!882 = !DILocation(line: 313, column: 5, scope: !880)
!883 = !DILocation(line: 313, column: 5, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !1, discriminator: 2)
!885 = distinct !DILexicalBlock(scope: !880, file: !1, line: 313, column: 5)
!886 = !DILocation(line: 313, column: 5, scope: !887)
!887 = !DILexicalBlockFile(scope: !880, file: !1, discriminator: 3)
!888 = !DILocation(line: 314, column: 3, scope: !876)
!889 = !DILocalVariable(name: "err_amp", scope: !890, file: !1, line: 319, type: !141)
!890 = distinct !DILexicalBlock(scope: !872, file: !1, line: 315, column: 8)
!891 = !DILocation(line: 319, column: 18, scope: !890)
!892 = !DILocation(line: 319, column: 67, scope: !890)
!893 = !DILocation(line: 319, column: 62, scope: !890)
!894 = !DILocation(line: 319, column: 61, scope: !890)
!895 = !DILocation(line: 319, column: 53, scope: !896)
!896 = !DILexicalBlockFile(scope: !890, file: !1, discriminator: 1)
!897 = !DILocation(line: 319, column: 51, scope: !890)
!898 = !DILocation(line: 319, column: 32, scope: !890)
!899 = !DILocalVariable(name: "p_mm", scope: !890, file: !1, line: 322, type: !42)
!900 = !DILocation(line: 322, column: 12, scope: !890)
!901 = !DILocation(line: 322, column: 34, scope: !890)
!902 = !DILocation(line: 322, column: 37, scope: !890)
!903 = !DILocation(line: 322, column: 21, scope: !890)
!904 = !DILocalVariable(name: "p_mmp1", scope: !890, file: !1, line: 323, type: !42)
!905 = !DILocation(line: 323, column: 12, scope: !890)
!906 = !DILocation(line: 323, column: 21, scope: !890)
!907 = !DILocation(line: 323, column: 28, scope: !890)
!908 = !DILocation(line: 323, column: 27, scope: !890)
!909 = !DILocation(line: 323, column: 30, scope: !890)
!910 = !DILocation(line: 323, column: 25, scope: !890)
!911 = !DILocation(line: 323, column: 23, scope: !890)
!912 = !DILocation(line: 323, column: 37, scope: !890)
!913 = !DILocation(line: 323, column: 35, scope: !890)
!914 = !DILocation(line: 325, column: 8, scope: !915)
!915 = distinct !DILexicalBlock(scope: !890, file: !1, line: 325, column: 8)
!916 = !DILocation(line: 325, column: 13, scope: !915)
!917 = !DILocation(line: 325, column: 10, scope: !915)
!918 = !DILocation(line: 325, column: 8, scope: !890)
!919 = !DILocation(line: 326, column: 21, scope: !920)
!920 = distinct !DILexicalBlock(scope: !915, file: !1, line: 325, column: 15)
!921 = !DILocation(line: 326, column: 7, scope: !920)
!922 = !DILocation(line: 326, column: 15, scope: !920)
!923 = !DILocation(line: 326, column: 19, scope: !920)
!924 = !DILocation(line: 327, column: 21, scope: !920)
!925 = !DILocation(line: 327, column: 29, scope: !920)
!926 = !DILocation(line: 327, column: 35, scope: !920)
!927 = !DILocation(line: 327, column: 60, scope: !920)
!928 = !DILocation(line: 327, column: 55, scope: !920)
!929 = !DILocation(line: 327, column: 53, scope: !920)
!930 = !DILocation(line: 327, column: 7, scope: !920)
!931 = !DILocation(line: 327, column: 15, scope: !920)
!932 = !DILocation(line: 327, column: 19, scope: !920)
!933 = !DILocation(line: 328, column: 7, scope: !920)
!934 = !DILocation(line: 330, column: 13, scope: !935)
!935 = distinct !DILexicalBlock(scope: !915, file: !1, line: 330, column: 13)
!936 = !DILocation(line: 330, column: 18, scope: !935)
!937 = !DILocation(line: 330, column: 20, scope: !935)
!938 = !DILocation(line: 330, column: 15, scope: !935)
!939 = !DILocation(line: 330, column: 13, scope: !915)
!940 = !DILocation(line: 331, column: 21, scope: !941)
!941 = distinct !DILexicalBlock(scope: !935, file: !1, line: 330, column: 25)
!942 = !DILocation(line: 331, column: 7, scope: !941)
!943 = !DILocation(line: 331, column: 15, scope: !941)
!944 = !DILocation(line: 331, column: 19, scope: !941)
!945 = !DILocation(line: 332, column: 21, scope: !941)
!946 = !DILocation(line: 332, column: 29, scope: !941)
!947 = !DILocation(line: 332, column: 35, scope: !941)
!948 = !DILocation(line: 332, column: 60, scope: !941)
!949 = !DILocation(line: 332, column: 55, scope: !941)
!950 = !DILocation(line: 332, column: 53, scope: !941)
!951 = !DILocation(line: 332, column: 7, scope: !941)
!952 = !DILocation(line: 332, column: 15, scope: !941)
!953 = !DILocation(line: 332, column: 19, scope: !941)
!954 = !DILocation(line: 333, column: 7, scope: !941)
!955 = !DILocalVariable(name: "p_ellm2", scope: !956, file: !1, line: 340, type: !42)
!956 = distinct !DILexicalBlock(scope: !935, file: !1, line: 335, column: 9)
!957 = !DILocation(line: 340, column: 14, scope: !956)
!958 = !DILocation(line: 340, column: 24, scope: !956)
!959 = !DILocalVariable(name: "p_ellm1", scope: !956, file: !1, line: 341, type: !42)
!960 = !DILocation(line: 341, column: 14, scope: !956)
!961 = !DILocation(line: 341, column: 24, scope: !956)
!962 = !DILocalVariable(name: "p_ell", scope: !956, file: !1, line: 342, type: !42)
!963 = !DILocation(line: 342, column: 14, scope: !956)
!964 = !DILocalVariable(name: "ell", scope: !956, file: !1, line: 343, type: !50)
!965 = !DILocation(line: 343, column: 11, scope: !956)
!966 = !DILocation(line: 345, column: 15, scope: !967)
!967 = distinct !DILexicalBlock(scope: !956, file: !1, line: 345, column: 7)
!968 = !DILocation(line: 345, column: 16, scope: !967)
!969 = !DILocation(line: 345, column: 14, scope: !967)
!970 = !DILocation(line: 345, column: 11, scope: !967)
!971 = !DILocation(line: 345, column: 20, scope: !972)
!972 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 1)
!973 = distinct !DILexicalBlock(scope: !967, file: !1, line: 345, column: 7)
!974 = !DILocation(line: 345, column: 27, scope: !972)
!975 = !DILocation(line: 345, column: 24, scope: !972)
!976 = !DILocation(line: 345, column: 7, scope: !972)
!977 = !DILocation(line: 346, column: 18, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !1, line: 345, column: 36)
!979 = !DILocation(line: 346, column: 23, scope: !978)
!980 = !DILocation(line: 346, column: 22, scope: !978)
!981 = !DILocation(line: 346, column: 26, scope: !978)
!982 = !DILocation(line: 346, column: 20, scope: !978)
!983 = !DILocation(line: 346, column: 19, scope: !978)
!984 = !DILocation(line: 346, column: 30, scope: !978)
!985 = !DILocation(line: 346, column: 29, scope: !978)
!986 = !DILocation(line: 346, column: 41, scope: !978)
!987 = !DILocation(line: 346, column: 45, scope: !978)
!988 = !DILocation(line: 346, column: 44, scope: !978)
!989 = !DILocation(line: 346, column: 46, scope: !978)
!990 = !DILocation(line: 346, column: 40, scope: !978)
!991 = !DILocation(line: 346, column: 50, scope: !978)
!992 = !DILocation(line: 346, column: 49, scope: !978)
!993 = !DILocation(line: 346, column: 38, scope: !978)
!994 = !DILocation(line: 346, column: 62, scope: !978)
!995 = !DILocation(line: 346, column: 66, scope: !978)
!996 = !DILocation(line: 346, column: 65, scope: !978)
!997 = !DILocation(line: 346, column: 61, scope: !978)
!998 = !DILocation(line: 346, column: 59, scope: !978)
!999 = !DILocation(line: 346, column: 15, scope: !978)
!1000 = !DILocation(line: 347, column: 19, scope: !978)
!1001 = !DILocation(line: 347, column: 17, scope: !978)
!1002 = !DILocation(line: 348, column: 19, scope: !978)
!1003 = !DILocation(line: 348, column: 17, scope: !978)
!1004 = !DILocation(line: 349, column: 7, scope: !978)
!1005 = !DILocation(line: 345, column: 33, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 2)
!1007 = !DILocation(line: 345, column: 7, scope: !1006)
!1008 = distinct !{!1008, !1009}
!1009 = !DILocation(line: 345, column: 7, scope: !956)
!1010 = !DILocation(line: 351, column: 21, scope: !956)
!1011 = !DILocation(line: 351, column: 7, scope: !956)
!1012 = !DILocation(line: 351, column: 15, scope: !956)
!1013 = !DILocation(line: 351, column: 19, scope: !956)
!1014 = !DILocation(line: 352, column: 21, scope: !956)
!1015 = !DILocation(line: 352, column: 37, scope: !956)
!1016 = !DILocation(line: 352, column: 39, scope: !956)
!1017 = !DILocation(line: 352, column: 38, scope: !956)
!1018 = !DILocation(line: 352, column: 36, scope: !956)
!1019 = !DILocation(line: 352, column: 35, scope: !956)
!1020 = !DILocation(line: 352, column: 42, scope: !956)
!1021 = !DILocation(line: 352, column: 29, scope: !956)
!1022 = !DILocation(line: 352, column: 49, scope: !956)
!1023 = !DILocation(line: 352, column: 74, scope: !956)
!1024 = !DILocation(line: 352, column: 69, scope: !956)
!1025 = !DILocation(line: 352, column: 67, scope: !956)
!1026 = !DILocation(line: 352, column: 7, scope: !956)
!1027 = !DILocation(line: 352, column: 15, scope: !956)
!1028 = !DILocation(line: 352, column: 19, scope: !956)
!1029 = !DILocation(line: 354, column: 7, scope: !956)
!1030 = !DILocation(line: 357, column: 1, scope: !777)
!1031 = distinct !DISubprogram(name: "legendre_Pmm", scope: !1, file: !1, line: 40, type: !1032, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!42, !50, !42}
!1034 = !DILocalVariable(name: "m", arg: 1, scope: !1031, file: !1, line: 40, type: !50)
!1035 = !DILocation(line: 40, column: 32, scope: !1031)
!1036 = !DILocalVariable(name: "x", arg: 2, scope: !1031, file: !1, line: 40, type: !42)
!1037 = !DILocation(line: 40, column: 42, scope: !1031)
!1038 = !DILocation(line: 42, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 42, column: 6)
!1040 = !DILocation(line: 42, column: 8, scope: !1039)
!1041 = !DILocation(line: 42, column: 6, scope: !1031)
!1042 = !DILocation(line: 44, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 43, column: 3)
!1044 = !DILocalVariable(name: "p_mm", scope: !1045, file: !1, line: 48, type: !42)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 47, column: 3)
!1046 = !DILocation(line: 48, column: 12, scope: !1045)
!1047 = !DILocalVariable(name: "root_factor", scope: !1045, file: !1, line: 49, type: !42)
!1048 = !DILocation(line: 49, column: 12, scope: !1045)
!1049 = !DILocation(line: 49, column: 35, scope: !1045)
!1050 = !DILocation(line: 49, column: 34, scope: !1045)
!1051 = !DILocation(line: 49, column: 26, scope: !1045)
!1052 = !DILocation(line: 49, column: 47, scope: !1045)
!1053 = !DILocation(line: 49, column: 46, scope: !1045)
!1054 = !DILocation(line: 49, column: 38, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1045, file: !1, discriminator: 1)
!1056 = !DILocation(line: 49, column: 37, scope: !1045)
!1057 = !DILocalVariable(name: "fact_coeff", scope: !1045, file: !1, line: 50, type: !42)
!1058 = !DILocation(line: 50, column: 12, scope: !1045)
!1059 = !DILocalVariable(name: "i", scope: !1045, file: !1, line: 51, type: !50)
!1060 = !DILocation(line: 51, column: 9, scope: !1045)
!1061 = !DILocation(line: 52, column: 10, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 52, column: 5)
!1063 = !DILocation(line: 52, column: 9, scope: !1062)
!1064 = !DILocation(line: 52, column: 14, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1066, file: !1, discriminator: 1)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 52, column: 5)
!1067 = !DILocation(line: 52, column: 17, scope: !1065)
!1068 = !DILocation(line: 52, column: 15, scope: !1065)
!1069 = !DILocation(line: 52, column: 5, scope: !1065)
!1070 = !DILocation(line: 54, column: 16, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !1, line: 53, column: 5)
!1072 = !DILocation(line: 54, column: 15, scope: !1071)
!1073 = !DILocation(line: 54, column: 29, scope: !1071)
!1074 = !DILocation(line: 54, column: 27, scope: !1071)
!1075 = !DILocation(line: 54, column: 12, scope: !1071)
!1076 = !DILocation(line: 55, column: 18, scope: !1071)
!1077 = !DILocation(line: 56, column: 5, scope: !1071)
!1078 = !DILocation(line: 52, column: 21, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1066, file: !1, discriminator: 2)
!1080 = !DILocation(line: 52, column: 5, scope: !1079)
!1081 = distinct !{!1081, !1082}
!1082 = !DILocation(line: 52, column: 5, scope: !1045)
!1083 = !DILocation(line: 57, column: 12, scope: !1045)
!1084 = !DILocation(line: 57, column: 5, scope: !1045)
!1085 = !DILocation(line: 59, column: 1, scope: !1031)
!1086 = distinct !DISubprogram(name: "gsl_sf_legendre_sphPlm_e", scope: !1, file: !1, line: 360, type: !1087, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!50, !140, !50, !141, !51}
!1089 = !DILocalVariable(name: "l", arg: 1, scope: !1086, file: !1, line: 360, type: !140)
!1090 = !DILocation(line: 360, column: 36, scope: !1086)
!1091 = !DILocalVariable(name: "m", arg: 2, scope: !1086, file: !1, line: 360, type: !50)
!1092 = !DILocation(line: 360, column: 43, scope: !1086)
!1093 = !DILocalVariable(name: "x", arg: 3, scope: !1086, file: !1, line: 360, type: !141)
!1094 = !DILocation(line: 360, column: 59, scope: !1086)
!1095 = !DILocalVariable(name: "result", arg: 4, scope: !1086, file: !1, line: 360, type: !51)
!1096 = !DILocation(line: 360, column: 78, scope: !1086)
!1097 = !DILocation(line: 364, column: 6, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 364, column: 6)
!1099 = !DILocation(line: 364, column: 8, scope: !1098)
!1100 = !DILocation(line: 364, column: 12, scope: !1098)
!1101 = !DILocation(line: 364, column: 15, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1098, file: !1, discriminator: 1)
!1103 = !DILocation(line: 364, column: 19, scope: !1102)
!1104 = !DILocation(line: 364, column: 17, scope: !1102)
!1105 = !DILocation(line: 364, column: 21, scope: !1102)
!1106 = !DILocation(line: 364, column: 24, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1098, file: !1, discriminator: 2)
!1108 = !DILocation(line: 364, column: 26, scope: !1107)
!1109 = !DILocation(line: 364, column: 33, scope: !1107)
!1110 = !DILocation(line: 364, column: 36, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1098, file: !1, discriminator: 3)
!1112 = !DILocation(line: 364, column: 38, scope: !1111)
!1113 = !DILocation(line: 364, column: 6, scope: !1111)
!1114 = !DILocation(line: 365, column: 5, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 364, column: 45)
!1116 = distinct !{!1116, !1114}
!1117 = !DILocation(line: 365, column: 5, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1119, file: !1, discriminator: 1)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 365, column: 5)
!1120 = distinct !{!1120, !1121}
!1121 = !DILocation(line: 365, column: 5, scope: !1119)
!1122 = !DILocation(line: 365, column: 5, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1124, file: !1, discriminator: 2)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 365, column: 5)
!1125 = !DILocation(line: 365, column: 5, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1119, file: !1, discriminator: 3)
!1127 = !DILocation(line: 366, column: 3, scope: !1115)
!1128 = !DILocation(line: 367, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 367, column: 11)
!1130 = !DILocation(line: 367, column: 13, scope: !1129)
!1131 = !DILocation(line: 367, column: 11, scope: !1098)
!1132 = !DILocalVariable(name: "P", scope: !1133, file: !1, line: 368, type: !52)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 367, column: 19)
!1134 = !DILocation(line: 368, column: 19, scope: !1133)
!1135 = !DILocalVariable(name: "stat_P", scope: !1133, file: !1, line: 369, type: !50)
!1136 = !DILocation(line: 369, column: 9, scope: !1133)
!1137 = !DILocation(line: 369, column: 39, scope: !1133)
!1138 = !DILocation(line: 369, column: 42, scope: !1133)
!1139 = !DILocation(line: 369, column: 18, scope: !1133)
!1140 = !DILocalVariable(name: "pre", scope: !1133, file: !1, line: 370, type: !42)
!1141 = !DILocation(line: 370, column: 12, scope: !1133)
!1142 = !DILocation(line: 370, column: 28, scope: !1133)
!1143 = !DILocation(line: 370, column: 27, scope: !1133)
!1144 = !DILocation(line: 370, column: 30, scope: !1133)
!1145 = !DILocation(line: 370, column: 36, scope: !1133)
!1146 = !DILocation(line: 370, column: 18, scope: !1133)
!1147 = !DILocation(line: 371, column: 20, scope: !1133)
!1148 = !DILocation(line: 371, column: 28, scope: !1133)
!1149 = !DILocation(line: 371, column: 24, scope: !1133)
!1150 = !DILocation(line: 371, column: 5, scope: !1133)
!1151 = !DILocation(line: 371, column: 13, scope: !1133)
!1152 = !DILocation(line: 371, column: 18, scope: !1133)
!1153 = !DILocation(line: 372, column: 20, scope: !1133)
!1154 = !DILocation(line: 372, column: 28, scope: !1133)
!1155 = !DILocation(line: 372, column: 24, scope: !1133)
!1156 = !DILocation(line: 372, column: 5, scope: !1133)
!1157 = !DILocation(line: 372, column: 13, scope: !1133)
!1158 = !DILocation(line: 372, column: 18, scope: !1133)
!1159 = !DILocation(line: 373, column: 49, scope: !1133)
!1160 = !DILocation(line: 373, column: 57, scope: !1133)
!1161 = !DILocation(line: 373, column: 44, scope: !1133)
!1162 = !DILocation(line: 373, column: 42, scope: !1133)
!1163 = !DILocation(line: 373, column: 5, scope: !1133)
!1164 = !DILocation(line: 373, column: 13, scope: !1133)
!1165 = !DILocation(line: 373, column: 17, scope: !1133)
!1166 = !DILocation(line: 374, column: 12, scope: !1133)
!1167 = !DILocation(line: 374, column: 5, scope: !1133)
!1168 = !DILocation(line: 376, column: 11, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 376, column: 11)
!1170 = !DILocation(line: 376, column: 13, scope: !1169)
!1171 = !DILocation(line: 376, column: 20, scope: !1169)
!1172 = !DILocation(line: 376, column: 23, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1169, file: !1, discriminator: 1)
!1174 = !DILocation(line: 376, column: 25, scope: !1173)
!1175 = !DILocation(line: 376, column: 11, scope: !1173)
!1176 = !DILocation(line: 378, column: 5, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 376, column: 34)
!1178 = !DILocation(line: 378, column: 13, scope: !1177)
!1179 = !DILocation(line: 378, column: 17, scope: !1177)
!1180 = !DILocation(line: 379, column: 5, scope: !1177)
!1181 = !DILocation(line: 379, column: 13, scope: !1177)
!1182 = !DILocation(line: 379, column: 17, scope: !1177)
!1183 = !DILocation(line: 380, column: 5, scope: !1177)
!1184 = !DILocalVariable(name: "lncirc", scope: !1185, file: !1, line: 388, type: !52)
!1185 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 382, column: 8)
!1186 = !DILocation(line: 388, column: 19, scope: !1185)
!1187 = !DILocalVariable(name: "lnpoch", scope: !1185, file: !1, line: 389, type: !52)
!1188 = !DILocation(line: 389, column: 19, scope: !1185)
!1189 = !DILocalVariable(name: "lnpre_val", scope: !1185, file: !1, line: 390, type: !42)
!1190 = !DILocation(line: 390, column: 12, scope: !1185)
!1191 = !DILocalVariable(name: "lnpre_err", scope: !1185, file: !1, line: 391, type: !42)
!1192 = !DILocation(line: 391, column: 12, scope: !1185)
!1193 = !DILocalVariable(name: "ex_pre", scope: !1185, file: !1, line: 392, type: !52)
!1194 = !DILocation(line: 392, column: 19, scope: !1185)
!1195 = !DILocalVariable(name: "sr", scope: !1185, file: !1, line: 393, type: !42)
!1196 = !DILocation(line: 393, column: 12, scope: !1185)
!1197 = !DILocalVariable(name: "sgn", scope: !1185, file: !1, line: 394, type: !141)
!1198 = !DILocation(line: 394, column: 18, scope: !1185)
!1199 = !DILocation(line: 394, column: 26, scope: !1185)
!1200 = !DILocalVariable(name: "y_mmp1_factor", scope: !1185, file: !1, line: 395, type: !141)
!1201 = !DILocation(line: 395, column: 18, scope: !1185)
!1202 = !DILocation(line: 395, column: 34, scope: !1185)
!1203 = !DILocation(line: 395, column: 47, scope: !1185)
!1204 = !DILocation(line: 395, column: 46, scope: !1185)
!1205 = !DILocation(line: 395, column: 49, scope: !1185)
!1206 = !DILocation(line: 395, column: 38, scope: !1185)
!1207 = !DILocation(line: 395, column: 36, scope: !1185)
!1208 = !DILocalVariable(name: "y_mm", scope: !1185, file: !1, line: 396, type: !42)
!1209 = !DILocation(line: 396, column: 12, scope: !1185)
!1210 = !DILocalVariable(name: "y_mm_err", scope: !1185, file: !1, line: 396, type: !42)
!1211 = !DILocation(line: 396, column: 18, scope: !1185)
!1212 = !DILocalVariable(name: "y_mmp1", scope: !1185, file: !1, line: 397, type: !42)
!1213 = !DILocation(line: 397, column: 12, scope: !1185)
!1214 = !DILocalVariable(name: "y_mmp1_err", scope: !1185, file: !1, line: 397, type: !42)
!1215 = !DILocation(line: 397, column: 20, scope: !1185)
!1216 = !DILocation(line: 398, column: 26, scope: !1185)
!1217 = !DILocation(line: 398, column: 25, scope: !1185)
!1218 = !DILocation(line: 398, column: 28, scope: !1185)
!1219 = !DILocation(line: 398, column: 27, scope: !1185)
!1220 = !DILocation(line: 398, column: 5, scope: !1185)
!1221 = !DILocation(line: 399, column: 21, scope: !1185)
!1222 = !DILocation(line: 399, column: 5, scope: !1185)
!1223 = !DILocation(line: 400, column: 46, scope: !1185)
!1224 = !DILocation(line: 400, column: 52, scope: !1185)
!1225 = !DILocation(line: 400, column: 61, scope: !1185)
!1226 = !DILocation(line: 400, column: 53, scope: !1185)
!1227 = !DILocation(line: 400, column: 50, scope: !1185)
!1228 = !DILocation(line: 400, column: 36, scope: !1185)
!1229 = !DILocation(line: 400, column: 30, scope: !1185)
!1230 = !DILocation(line: 400, column: 15, scope: !1185)
!1231 = !DILocation(line: 401, column: 61, scope: !1185)
!1232 = !DILocation(line: 401, column: 72, scope: !1185)
!1233 = !DILocation(line: 401, column: 67, scope: !1185)
!1234 = !DILocation(line: 401, column: 82, scope: !1185)
!1235 = !DILocation(line: 401, column: 74, scope: !1185)
!1236 = !DILocation(line: 401, column: 65, scope: !1185)
!1237 = !DILocation(line: 401, column: 51, scope: !1185)
!1238 = !DILocation(line: 401, column: 45, scope: !1185)
!1239 = !DILocation(line: 401, column: 15, scope: !1185)
!1240 = !DILocation(line: 403, column: 22, scope: !1185)
!1241 = !DILocation(line: 403, column: 18, scope: !1185)
!1242 = !DILocation(line: 403, column: 12, scope: !1185)
!1243 = !DILocation(line: 403, column: 16, scope: !1185)
!1244 = !DILocation(line: 404, column: 28, scope: !1185)
!1245 = !DILocation(line: 404, column: 23, scope: !1185)
!1246 = !DILocation(line: 404, column: 39, scope: !1185)
!1247 = !DILocation(line: 404, column: 21, scope: !1185)
!1248 = !DILocation(line: 404, column: 65, scope: !1185)
!1249 = !DILocation(line: 404, column: 57, scope: !1185)
!1250 = !DILocation(line: 404, column: 12, scope: !1185)
!1251 = !DILocation(line: 404, column: 16, scope: !1185)
!1252 = !DILocation(line: 405, column: 28, scope: !1185)
!1253 = !DILocation(line: 405, column: 27, scope: !1185)
!1254 = !DILocation(line: 405, column: 23, scope: !1185)
!1255 = !DILocation(line: 405, column: 30, scope: !1185)
!1256 = !DILocation(line: 405, column: 14, scope: !1185)
!1257 = !DILocation(line: 405, column: 12, scope: !1185)
!1258 = !DILocation(line: 406, column: 14, scope: !1185)
!1259 = !DILocation(line: 406, column: 20, scope: !1185)
!1260 = !DILocation(line: 406, column: 18, scope: !1185)
!1261 = !DILocation(line: 406, column: 32, scope: !1185)
!1262 = !DILocation(line: 406, column: 23, scope: !1185)
!1263 = !DILocation(line: 406, column: 12, scope: !1185)
!1264 = !DILocation(line: 407, column: 46, scope: !1185)
!1265 = !DILocation(line: 407, column: 41, scope: !1185)
!1266 = !DILocation(line: 407, column: 39, scope: !1185)
!1267 = !DILocation(line: 407, column: 54, scope: !1185)
!1268 = !DILocation(line: 407, column: 66, scope: !1185)
!1269 = !DILocation(line: 407, column: 57, scope: !1185)
!1270 = !DILocation(line: 407, column: 52, scope: !1185)
!1271 = !DILocation(line: 407, column: 15, scope: !1185)
!1272 = !DILocation(line: 408, column: 55, scope: !1185)
!1273 = !DILocation(line: 408, column: 54, scope: !1185)
!1274 = !DILocation(line: 408, column: 46, scope: !1185)
!1275 = !DILocation(line: 408, column: 44, scope: !1185)
!1276 = !DILocation(line: 408, column: 26, scope: !1185)
!1277 = !DILocation(line: 408, column: 21, scope: !1185)
!1278 = !DILocation(line: 408, column: 14, scope: !1185)
!1279 = !DILocation(line: 409, column: 14, scope: !1185)
!1280 = !DILocation(line: 409, column: 30, scope: !1185)
!1281 = !DILocation(line: 409, column: 28, scope: !1185)
!1282 = !DILocation(line: 409, column: 12, scope: !1185)
!1283 = !DILocation(line: 410, column: 21, scope: !1185)
!1284 = !DILocation(line: 410, column: 16, scope: !1185)
!1285 = !DILocation(line: 410, column: 38, scope: !1185)
!1286 = !DILocation(line: 410, column: 36, scope: !1185)
!1287 = !DILocation(line: 410, column: 15, scope: !1185)
!1288 = !DILocation(line: 412, column: 8, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 412, column: 8)
!1290 = !DILocation(line: 412, column: 13, scope: !1289)
!1291 = !DILocation(line: 412, column: 10, scope: !1289)
!1292 = !DILocation(line: 412, column: 8, scope: !1185)
!1293 = !DILocation(line: 413, column: 22, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 412, column: 15)
!1295 = !DILocation(line: 413, column: 7, scope: !1294)
!1296 = !DILocation(line: 413, column: 15, scope: !1294)
!1297 = !DILocation(line: 413, column: 20, scope: !1294)
!1298 = !DILocation(line: 414, column: 22, scope: !1294)
!1299 = !DILocation(line: 414, column: 7, scope: !1294)
!1300 = !DILocation(line: 414, column: 15, scope: !1294)
!1301 = !DILocation(line: 414, column: 20, scope: !1294)
!1302 = !DILocation(line: 415, column: 51, scope: !1294)
!1303 = !DILocation(line: 415, column: 46, scope: !1294)
!1304 = !DILocation(line: 415, column: 44, scope: !1294)
!1305 = !DILocation(line: 415, column: 7, scope: !1294)
!1306 = !DILocation(line: 415, column: 15, scope: !1294)
!1307 = !DILocation(line: 415, column: 19, scope: !1294)
!1308 = !DILocation(line: 416, column: 7, scope: !1294)
!1309 = !DILocation(line: 418, column: 13, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 418, column: 13)
!1311 = !DILocation(line: 418, column: 18, scope: !1310)
!1312 = !DILocation(line: 418, column: 20, scope: !1310)
!1313 = !DILocation(line: 418, column: 15, scope: !1310)
!1314 = !DILocation(line: 418, column: 13, scope: !1289)
!1315 = !DILocation(line: 419, column: 22, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 418, column: 25)
!1317 = !DILocation(line: 419, column: 7, scope: !1316)
!1318 = !DILocation(line: 419, column: 15, scope: !1316)
!1319 = !DILocation(line: 419, column: 20, scope: !1316)
!1320 = !DILocation(line: 420, column: 22, scope: !1316)
!1321 = !DILocation(line: 420, column: 7, scope: !1316)
!1322 = !DILocation(line: 420, column: 15, scope: !1316)
!1323 = !DILocation(line: 420, column: 20, scope: !1316)
!1324 = !DILocation(line: 421, column: 51, scope: !1316)
!1325 = !DILocation(line: 421, column: 46, scope: !1316)
!1326 = !DILocation(line: 421, column: 44, scope: !1316)
!1327 = !DILocation(line: 421, column: 7, scope: !1316)
!1328 = !DILocation(line: 421, column: 15, scope: !1316)
!1329 = !DILocation(line: 421, column: 19, scope: !1316)
!1330 = !DILocation(line: 422, column: 7, scope: !1316)
!1331 = !DILocalVariable(name: "y_ell", scope: !1332, file: !1, line: 425, type: !42)
!1332 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 424, column: 9)
!1333 = !DILocation(line: 425, column: 14, scope: !1332)
!1334 = !DILocalVariable(name: "y_ell_err", scope: !1332, file: !1, line: 426, type: !42)
!1335 = !DILocation(line: 426, column: 14, scope: !1332)
!1336 = !DILocalVariable(name: "ell", scope: !1332, file: !1, line: 427, type: !50)
!1337 = !DILocation(line: 427, column: 11, scope: !1332)
!1338 = !DILocation(line: 430, column: 15, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 430, column: 7)
!1340 = !DILocation(line: 430, column: 16, scope: !1339)
!1341 = !DILocation(line: 430, column: 14, scope: !1339)
!1342 = !DILocation(line: 430, column: 11, scope: !1339)
!1343 = !DILocation(line: 430, column: 20, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !1, discriminator: 1)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 430, column: 7)
!1346 = !DILocation(line: 430, column: 27, scope: !1344)
!1347 = !DILocation(line: 430, column: 24, scope: !1344)
!1348 = !DILocation(line: 430, column: 7, scope: !1344)
!1349 = !DILocalVariable(name: "rat1", scope: !1350, file: !1, line: 431, type: !141)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 430, column: 36)
!1351 = !DILocation(line: 431, column: 22, scope: !1350)
!1352 = !DILocation(line: 431, column: 38, scope: !1350)
!1353 = !DILocation(line: 431, column: 42, scope: !1350)
!1354 = !DILocation(line: 431, column: 41, scope: !1350)
!1355 = !DILocation(line: 431, column: 29, scope: !1350)
!1356 = !DILocation(line: 431, column: 54, scope: !1350)
!1357 = !DILocation(line: 431, column: 58, scope: !1350)
!1358 = !DILocation(line: 431, column: 57, scope: !1350)
!1359 = !DILocation(line: 431, column: 45, scope: !1350)
!1360 = !DILocation(line: 431, column: 44, scope: !1350)
!1361 = !DILocalVariable(name: "rat2", scope: !1350, file: !1, line: 432, type: !141)
!1362 = !DILocation(line: 432, column: 22, scope: !1350)
!1363 = !DILocation(line: 432, column: 30, scope: !1350)
!1364 = !DILocation(line: 432, column: 34, scope: !1350)
!1365 = !DILocation(line: 432, column: 33, scope: !1350)
!1366 = !DILocation(line: 432, column: 35, scope: !1350)
!1367 = !DILocation(line: 432, column: 42, scope: !1350)
!1368 = !DILocation(line: 432, column: 46, scope: !1350)
!1369 = !DILocation(line: 432, column: 45, scope: !1350)
!1370 = !DILocation(line: 432, column: 47, scope: !1350)
!1371 = !DILocation(line: 432, column: 40, scope: !1350)
!1372 = !DILocalVariable(name: "factor1", scope: !1350, file: !1, line: 433, type: !141)
!1373 = !DILocation(line: 433, column: 22, scope: !1350)
!1374 = !DILocation(line: 433, column: 37, scope: !1350)
!1375 = !DILocation(line: 433, column: 47, scope: !1350)
!1376 = !DILocation(line: 433, column: 46, scope: !1350)
!1377 = !DILocation(line: 433, column: 50, scope: !1350)
!1378 = !DILocation(line: 433, column: 41, scope: !1350)
!1379 = !DILocation(line: 433, column: 61, scope: !1350)
!1380 = !DILocation(line: 433, column: 60, scope: !1350)
!1381 = !DILocation(line: 433, column: 64, scope: !1350)
!1382 = !DILocation(line: 433, column: 55, scope: !1350)
!1383 = !DILocation(line: 433, column: 32, scope: !1350)
!1384 = !DILocalVariable(name: "factor2", scope: !1350, file: !1, line: 434, type: !141)
!1385 = !DILocation(line: 434, column: 22, scope: !1350)
!1386 = !DILocation(line: 434, column: 37, scope: !1350)
!1387 = !DILocation(line: 434, column: 42, scope: !1350)
!1388 = !DILocation(line: 434, column: 41, scope: !1350)
!1389 = !DILocation(line: 434, column: 52, scope: !1350)
!1390 = !DILocation(line: 434, column: 51, scope: !1350)
!1391 = !DILocation(line: 434, column: 55, scope: !1350)
!1392 = !DILocation(line: 434, column: 46, scope: !1350)
!1393 = !DILocation(line: 434, column: 66, scope: !1350)
!1394 = !DILocation(line: 434, column: 65, scope: !1350)
!1395 = !DILocation(line: 434, column: 69, scope: !1350)
!1396 = !DILocation(line: 434, column: 60, scope: !1350)
!1397 = !DILocation(line: 434, column: 32, scope: !1350)
!1398 = !DILocation(line: 435, column: 18, scope: !1350)
!1399 = !DILocation(line: 435, column: 20, scope: !1350)
!1400 = !DILocation(line: 435, column: 19, scope: !1350)
!1401 = !DILocation(line: 435, column: 27, scope: !1350)
!1402 = !DILocation(line: 435, column: 26, scope: !1350)
!1403 = !DILocation(line: 435, column: 38, scope: !1350)
!1404 = !DILocation(line: 435, column: 42, scope: !1350)
!1405 = !DILocation(line: 435, column: 41, scope: !1350)
!1406 = !DILocation(line: 435, column: 43, scope: !1350)
!1407 = !DILocation(line: 435, column: 49, scope: !1350)
!1408 = !DILocation(line: 435, column: 48, scope: !1350)
!1409 = !DILocation(line: 435, column: 54, scope: !1350)
!1410 = !DILocation(line: 435, column: 53, scope: !1350)
!1411 = !DILocation(line: 435, column: 35, scope: !1350)
!1412 = !DILocation(line: 435, column: 66, scope: !1350)
!1413 = !DILocation(line: 435, column: 70, scope: !1350)
!1414 = !DILocation(line: 435, column: 69, scope: !1350)
!1415 = !DILocation(line: 435, column: 65, scope: !1350)
!1416 = !DILocation(line: 435, column: 63, scope: !1350)
!1417 = !DILocation(line: 435, column: 15, scope: !1350)
!1418 = !DILocation(line: 436, column: 18, scope: !1350)
!1419 = !DILocation(line: 436, column: 16, scope: !1350)
!1420 = !DILocation(line: 437, column: 18, scope: !1350)
!1421 = !DILocation(line: 437, column: 16, scope: !1350)
!1422 = !DILocation(line: 439, column: 31, scope: !1350)
!1423 = !DILocation(line: 439, column: 33, scope: !1350)
!1424 = !DILocation(line: 439, column: 32, scope: !1350)
!1425 = !DILocation(line: 439, column: 26, scope: !1350)
!1426 = !DILocation(line: 439, column: 42, scope: !1350)
!1427 = !DILocation(line: 439, column: 41, scope: !1350)
!1428 = !DILocation(line: 439, column: 61, scope: !1350)
!1429 = !DILocation(line: 439, column: 65, scope: !1350)
!1430 = !DILocation(line: 439, column: 64, scope: !1350)
!1431 = !DILocation(line: 439, column: 66, scope: !1350)
!1432 = !DILocation(line: 439, column: 72, scope: !1350)
!1433 = !DILocation(line: 439, column: 71, scope: !1350)
!1434 = !DILocation(line: 439, column: 55, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1350, file: !1, discriminator: 1)
!1436 = !DILocation(line: 439, column: 81, scope: !1350)
!1437 = !DILocation(line: 439, column: 80, scope: !1350)
!1438 = !DILocation(line: 439, column: 53, scope: !1350)
!1439 = !DILocation(line: 439, column: 24, scope: !1350)
!1440 = !DILocation(line: 439, column: 98, scope: !1350)
!1441 = !DILocation(line: 439, column: 102, scope: !1350)
!1442 = !DILocation(line: 439, column: 101, scope: !1350)
!1443 = !DILocation(line: 439, column: 93, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1350, file: !1, discriminator: 2)
!1445 = !DILocation(line: 439, column: 91, scope: !1350)
!1446 = !DILocation(line: 439, column: 19, scope: !1350)
!1447 = !DILocation(line: 440, column: 20, scope: !1350)
!1448 = !DILocation(line: 440, column: 18, scope: !1350)
!1449 = !DILocation(line: 441, column: 22, scope: !1350)
!1450 = !DILocation(line: 441, column: 20, scope: !1350)
!1451 = !DILocation(line: 442, column: 7, scope: !1350)
!1452 = !DILocation(line: 430, column: 33, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1345, file: !1, discriminator: 2)
!1454 = !DILocation(line: 430, column: 7, scope: !1453)
!1455 = distinct !{!1455, !1456}
!1456 = !DILocation(line: 430, column: 7, scope: !1332)
!1457 = !DILocation(line: 444, column: 22, scope: !1332)
!1458 = !DILocation(line: 444, column: 7, scope: !1332)
!1459 = !DILocation(line: 444, column: 15, scope: !1332)
!1460 = !DILocation(line: 444, column: 20, scope: !1332)
!1461 = !DILocation(line: 445, column: 22, scope: !1332)
!1462 = !DILocation(line: 445, column: 40, scope: !1332)
!1463 = !DILocation(line: 445, column: 42, scope: !1332)
!1464 = !DILocation(line: 445, column: 41, scope: !1332)
!1465 = !DILocation(line: 445, column: 39, scope: !1332)
!1466 = !DILocation(line: 445, column: 38, scope: !1332)
!1467 = !DILocation(line: 445, column: 45, scope: !1332)
!1468 = !DILocation(line: 445, column: 52, scope: !1332)
!1469 = !DILocation(line: 445, column: 77, scope: !1332)
!1470 = !DILocation(line: 445, column: 72, scope: !1332)
!1471 = !DILocation(line: 445, column: 70, scope: !1332)
!1472 = !DILocation(line: 445, column: 32, scope: !1332)
!1473 = !DILocation(line: 445, column: 7, scope: !1332)
!1474 = !DILocation(line: 445, column: 15, scope: !1332)
!1475 = !DILocation(line: 445, column: 20, scope: !1332)
!1476 = !DILocation(line: 447, column: 7, scope: !1332)
!1477 = !DILocation(line: 450, column: 1, scope: !1086)
!1478 = distinct !DISubprogram(name: "gsl_sf_legendre_P1", scope: !1, file: !1, line: 749, type: !1479, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!42, !141}
!1481 = !DILocalVariable(name: "x", arg: 1, scope: !1478, file: !1, line: 749, type: !141)
!1482 = !DILocation(line: 749, column: 40, scope: !1478)
!1483 = !DILocalVariable(name: "result", scope: !1478, file: !1, line: 751, type: !52)
!1484 = !DILocation(line: 751, column: 3, scope: !1478)
!1485 = !DILocalVariable(name: "status", scope: !1478, file: !1, line: 751, type: !50)
!1486 = !DILocation(line: 751, column: 3, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 751, column: 3)
!1488 = !DILocation(line: 751, column: 3, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1490, file: !1, discriminator: 1)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 751, column: 3)
!1491 = distinct !{!1491, !1492}
!1492 = !DILocation(line: 751, column: 3, scope: !1490)
!1493 = !DILocation(line: 751, column: 3, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1495, file: !1, discriminator: 2)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 751, column: 3)
!1496 = !DILocation(line: 751, column: 3, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1490, file: !1, discriminator: 3)
!1498 = !DILocation(line: 751, column: 3, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1478, file: !1, discriminator: 4)
!1500 = !DILocation(line: 752, column: 1, scope: !1478)
!1501 = distinct !DISubprogram(name: "gsl_sf_legendre_P2", scope: !1, file: !1, line: 754, type: !1479, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1502 = !DILocalVariable(name: "x", arg: 1, scope: !1501, file: !1, line: 754, type: !141)
!1503 = !DILocation(line: 754, column: 40, scope: !1501)
!1504 = !DILocalVariable(name: "result", scope: !1501, file: !1, line: 756, type: !52)
!1505 = !DILocation(line: 756, column: 3, scope: !1501)
!1506 = !DILocalVariable(name: "status", scope: !1501, file: !1, line: 756, type: !50)
!1507 = !DILocation(line: 756, column: 3, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 756, column: 3)
!1509 = !DILocation(line: 756, column: 3, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1511, file: !1, discriminator: 1)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 756, column: 3)
!1512 = distinct !{!1512, !1513}
!1513 = !DILocation(line: 756, column: 3, scope: !1511)
!1514 = !DILocation(line: 756, column: 3, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1516, file: !1, discriminator: 2)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 756, column: 3)
!1517 = !DILocation(line: 756, column: 3, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1511, file: !1, discriminator: 3)
!1519 = !DILocation(line: 756, column: 3, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1501, file: !1, discriminator: 4)
!1521 = !DILocation(line: 757, column: 1, scope: !1501)
!1522 = distinct !DISubprogram(name: "gsl_sf_legendre_P3", scope: !1, file: !1, line: 759, type: !1479, isLocal: false, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1523 = !DILocalVariable(name: "x", arg: 1, scope: !1522, file: !1, line: 759, type: !141)
!1524 = !DILocation(line: 759, column: 40, scope: !1522)
!1525 = !DILocalVariable(name: "result", scope: !1522, file: !1, line: 761, type: !52)
!1526 = !DILocation(line: 761, column: 3, scope: !1522)
!1527 = !DILocalVariable(name: "status", scope: !1522, file: !1, line: 761, type: !50)
!1528 = !DILocation(line: 761, column: 3, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 761, column: 3)
!1530 = !DILocation(line: 761, column: 3, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1532, file: !1, discriminator: 1)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !1, line: 761, column: 3)
!1533 = distinct !{!1533, !1534}
!1534 = !DILocation(line: 761, column: 3, scope: !1532)
!1535 = !DILocation(line: 761, column: 3, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1537, file: !1, discriminator: 2)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 761, column: 3)
!1538 = !DILocation(line: 761, column: 3, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1532, file: !1, discriminator: 3)
!1540 = !DILocation(line: 761, column: 3, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1522, file: !1, discriminator: 4)
!1542 = !DILocation(line: 762, column: 1, scope: !1522)
!1543 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl", scope: !1, file: !1, line: 764, type: !1544, isLocal: false, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!42, !140, !141}
!1546 = !DILocalVariable(name: "l", arg: 1, scope: !1543, file: !1, line: 764, type: !140)
!1547 = !DILocation(line: 764, column: 37, scope: !1543)
!1548 = !DILocalVariable(name: "x", arg: 2, scope: !1543, file: !1, line: 764, type: !141)
!1549 = !DILocation(line: 764, column: 53, scope: !1543)
!1550 = !DILocalVariable(name: "result", scope: !1543, file: !1, line: 766, type: !52)
!1551 = !DILocation(line: 766, column: 3, scope: !1543)
!1552 = !DILocalVariable(name: "status", scope: !1543, file: !1, line: 766, type: !50)
!1553 = !DILocation(line: 766, column: 3, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 766, column: 3)
!1555 = !DILocation(line: 766, column: 3, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1557, file: !1, discriminator: 1)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 766, column: 3)
!1558 = distinct !{!1558, !1559}
!1559 = !DILocation(line: 766, column: 3, scope: !1557)
!1560 = !DILocation(line: 766, column: 3, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1562, file: !1, discriminator: 2)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 766, column: 3)
!1563 = !DILocation(line: 766, column: 3, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1557, file: !1, discriminator: 3)
!1565 = !DILocation(line: 766, column: 3, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1543, file: !1, discriminator: 4)
!1567 = !DILocation(line: 767, column: 1, scope: !1543)
!1568 = distinct !DISubprogram(name: "gsl_sf_legendre_Plm", scope: !1, file: !1, line: 769, type: !1569, isLocal: false, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!42, !140, !140, !141}
!1571 = !DILocalVariable(name: "l", arg: 1, scope: !1568, file: !1, line: 769, type: !140)
!1572 = !DILocation(line: 769, column: 38, scope: !1568)
!1573 = !DILocalVariable(name: "m", arg: 2, scope: !1568, file: !1, line: 769, type: !140)
!1574 = !DILocation(line: 769, column: 51, scope: !1568)
!1575 = !DILocalVariable(name: "x", arg: 3, scope: !1568, file: !1, line: 769, type: !141)
!1576 = !DILocation(line: 769, column: 67, scope: !1568)
!1577 = !DILocalVariable(name: "result", scope: !1568, file: !1, line: 771, type: !52)
!1578 = !DILocation(line: 771, column: 3, scope: !1568)
!1579 = !DILocalVariable(name: "status", scope: !1568, file: !1, line: 771, type: !50)
!1580 = !DILocation(line: 771, column: 3, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 771, column: 3)
!1582 = !DILocation(line: 771, column: 3, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1584, file: !1, discriminator: 1)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !1, line: 771, column: 3)
!1585 = distinct !{!1585, !1586}
!1586 = !DILocation(line: 771, column: 3, scope: !1584)
!1587 = !DILocation(line: 771, column: 3, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1589, file: !1, discriminator: 2)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 771, column: 3)
!1590 = !DILocation(line: 771, column: 3, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1584, file: !1, discriminator: 3)
!1592 = !DILocation(line: 771, column: 3, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1568, file: !1, discriminator: 4)
!1594 = !DILocation(line: 772, column: 1, scope: !1568)
!1595 = distinct !DISubprogram(name: "gsl_sf_legendre_sphPlm", scope: !1, file: !1, line: 774, type: !1569, isLocal: false, isDefinition: true, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1596 = !DILocalVariable(name: "l", arg: 1, scope: !1595, file: !1, line: 774, type: !140)
!1597 = !DILocation(line: 774, column: 41, scope: !1595)
!1598 = !DILocalVariable(name: "m", arg: 2, scope: !1595, file: !1, line: 774, type: !140)
!1599 = !DILocation(line: 774, column: 54, scope: !1595)
!1600 = !DILocalVariable(name: "x", arg: 3, scope: !1595, file: !1, line: 774, type: !141)
!1601 = !DILocation(line: 774, column: 70, scope: !1595)
!1602 = !DILocalVariable(name: "result", scope: !1595, file: !1, line: 776, type: !52)
!1603 = !DILocation(line: 776, column: 3, scope: !1595)
!1604 = !DILocalVariable(name: "status", scope: !1595, file: !1, line: 776, type: !50)
!1605 = !DILocation(line: 776, column: 3, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 776, column: 3)
!1607 = !DILocation(line: 776, column: 3, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1609, file: !1, discriminator: 1)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 776, column: 3)
!1610 = distinct !{!1610, !1611}
!1611 = !DILocation(line: 776, column: 3, scope: !1609)
!1612 = !DILocation(line: 776, column: 3, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1614, file: !1, discriminator: 2)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 776, column: 3)
!1615 = !DILocation(line: 776, column: 3, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1609, file: !1, discriminator: 3)
!1617 = !DILocation(line: 776, column: 3, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1595, file: !1, discriminator: 4)
!1619 = !DILocation(line: 777, column: 1, scope: !1595)
