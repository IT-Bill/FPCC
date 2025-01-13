; ModuleID = 'hyperg.c'
source_filename = "hyperg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"hyperg.c\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"hypergeometric series failed to converge\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_1F1_series_e(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
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
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !59, metadata !60), !dbg !61
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !62, metadata !60), !dbg !63
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !64, metadata !60), !dbg !65
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !66, metadata !60), !dbg !67
  call void @llvm.dbg.declare(metadata double* %10, metadata !68, metadata !60), !dbg !69
  %20 = load double, double* %6, align 8, !dbg !70
  store double %20, double* %10, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata double* %11, metadata !71, metadata !60), !dbg !72
  %21 = load double, double* %7, align 8, !dbg !73
  store double %21, double* %11, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata double* %12, metadata !74, metadata !60), !dbg !75
  store double 1.000000e+00, double* %12, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata double* %13, metadata !76, metadata !60), !dbg !77
  store double 1.000000e+00, double* %13, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata double* %14, metadata !78, metadata !60), !dbg !79
  store double 1.000000e+00, double* %14, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata double* %15, metadata !80, metadata !60), !dbg !81
  store double 1.000000e+00, double* %15, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %16, metadata !82, metadata !60), !dbg !83
  store double 1.000000e+00, double* %16, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata double* %17, metadata !84, metadata !60), !dbg !85
  store double 0.000000e+00, double* %17, align 8, !dbg !85
  br label %22, !dbg !86

; <label>:22:                                     ; preds = %118, %4
  %23 = load double, double* %14, align 8, !dbg !87
  %24 = load double, double* %16, align 8, !dbg !89
  %25 = call double @fabs(double %24) #1, !dbg !90
  %26 = fdiv double %23, %25, !dbg !91
  %27 = fcmp ogt double %26, 0x3C90000000000000, !dbg !92
  br i1 %27, label %28, label %134, !dbg !93

; <label>:28:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata double* %18, metadata !94, metadata !60), !dbg !96
  call void @llvm.dbg.declare(metadata double* %19, metadata !97, metadata !60), !dbg !98
  %29 = load double, double* %11, align 8, !dbg !99
  %30 = fcmp oeq double %29, 0.000000e+00, !dbg !101
  br i1 %30, label %31, label %40, !dbg !102

; <label>:31:                                     ; preds = %28
  br label %32, !dbg !103, !llvm.loop !105

; <label>:32:                                     ; preds = %31
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !106
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !106
  store double 0x7FF8000000000000, double* %34, align 8, !dbg !106
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !106
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !106
  store double 0x7FF8000000000000, double* %36, align 8, !dbg !106
  br label %37, !dbg !106, !llvm.loop !109

; <label>:37:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 55, i32 1), !dbg !111
  store i32 1, i32* %5, align 4, !dbg !111
  br label %155, !dbg !111
                                                  ; No predecessors!
  br label %39, !dbg !114

; <label>:39:                                     ; preds = %38
  br label %40, !dbg !116

; <label>:40:                                     ; preds = %39, %28
  %41 = load double, double* %10, align 8, !dbg !117
  %42 = fcmp oeq double %41, 0.000000e+00, !dbg !119
  br i1 %42, label %43, label %59, !dbg !120

; <label>:43:                                     ; preds = %40
  %44 = load double, double* %16, align 8, !dbg !121
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !123
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !124
  store double %44, double* %46, align 8, !dbg !125
  %47 = load double, double* %17, align 8, !dbg !126
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !127
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !128
  store double %47, double* %49, align 8, !dbg !129
  %50 = load double, double* %12, align 8, !dbg !130
  %51 = fmul double 0x3CC0000000000000, %50, !dbg !131
  %52 = load double, double* %16, align 8, !dbg !132
  %53 = call double @fabs(double %52) #1, !dbg !133
  %54 = fmul double %51, %53, !dbg !134
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !135
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !136
  %57 = load double, double* %56, align 8, !dbg !137
  %58 = fadd double %57, %54, !dbg !137
  store double %58, double* %56, align 8, !dbg !137
  store i32 0, i32* %5, align 4, !dbg !138
  br label %155, !dbg !138

; <label>:59:                                     ; preds = %40
  %60 = load double, double* %12, align 8, !dbg !139
  %61 = fcmp ogt double %60, 1.000000e+04, !dbg !141
  br i1 %61, label %62, label %71, !dbg !142

; <label>:62:                                     ; preds = %59
  %63 = load double, double* %16, align 8, !dbg !143
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !145
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !146
  store double %63, double* %65, align 8, !dbg !147
  %66 = load double, double* %17, align 8, !dbg !148
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !149
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !150
  store double %66, double* %68, align 8, !dbg !151
  br label %69, !dbg !152, !llvm.loop !153

; <label>:69:                                     ; preds = %62
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 68, i32 5), !dbg !154
  store i32 5, i32* %5, align 4, !dbg !154
  br label %155, !dbg !154
                                                  ; No predecessors!
  br label %71, !dbg !157

; <label>:71:                                     ; preds = %70, %59
  %72 = load double, double* %8, align 8, !dbg !158
  %73 = load double, double* %10, align 8, !dbg !159
  %74 = load double, double* %11, align 8, !dbg !160
  %75 = load double, double* %12, align 8, !dbg !161
  %76 = fmul double %74, %75, !dbg !162
  %77 = fdiv double %73, %76, !dbg !163
  %78 = fmul double %72, %77, !dbg !164
  store double %78, double* %18, align 8, !dbg !165
  %79 = load double, double* %18, align 8, !dbg !166
  %80 = call double @fabs(double %79) #1, !dbg !167
  store double %80, double* %19, align 8, !dbg !168
  %81 = load double, double* %19, align 8, !dbg !169
  %82 = fcmp ogt double %81, 1.000000e+00, !dbg !171
  br i1 %82, label %83, label %98, !dbg !172

; <label>:83:                                     ; preds = %71
  %84 = load double, double* %15, align 8, !dbg !173
  %85 = load double, double* %19, align 8, !dbg !175
  %86 = fdiv double 0x7FEFFFFFFFFFFFFF, %85, !dbg !176
  %87 = fcmp ogt double %84, %86, !dbg !177
  br i1 %87, label %88, label %98, !dbg !178

; <label>:88:                                     ; preds = %83
  %89 = load double, double* %16, align 8, !dbg !179
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !181
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !182
  store double %89, double* %91, align 8, !dbg !183
  %92 = load double, double* %16, align 8, !dbg !184
  %93 = call double @fabs(double %92) #1, !dbg !185
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !186
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !187
  store double %93, double* %95, align 8, !dbg !188
  br label %96, !dbg !189, !llvm.loop !190

; <label>:96:                                     ; preds = %88
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 76, i32 16), !dbg !191
  store i32 16, i32* %5, align 4, !dbg !191
  br label %155, !dbg !191
                                                  ; No predecessors!
  br label %98, !dbg !194

; <label>:98:                                     ; preds = %97, %83, %71
  %99 = load double, double* %18, align 8, !dbg !195
  %100 = load double, double* %13, align 8, !dbg !196
  %101 = fmul double %100, %99, !dbg !196
  store double %101, double* %13, align 8, !dbg !196
  %102 = load double, double* %13, align 8, !dbg !197
  %103 = load double, double* %16, align 8, !dbg !198
  %104 = fadd double %103, %102, !dbg !198
  store double %104, double* %16, align 8, !dbg !198
  %105 = load double, double* %16, align 8, !dbg !199
  %106 = call double @fabs(double %105) #1, !dbg !201
  %107 = fcmp ogt double %106, 0x7EE4F8B588E368F0, !dbg !202
  br i1 %107, label %108, label %118, !dbg !203

; <label>:108:                                    ; preds = %98
  %109 = load double, double* %16, align 8, !dbg !204
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !206
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !207
  store double %109, double* %111, align 8, !dbg !208
  %112 = load double, double* %16, align 8, !dbg !209
  %113 = call double @fabs(double %112) #1, !dbg !210
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !211
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !212
  store double %113, double* %115, align 8, !dbg !213
  br label %116, !dbg !214, !llvm.loop !215

; <label>:116:                                    ; preds = %108
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 83, i32 16), !dbg !216
  store i32 16, i32* %5, align 4, !dbg !216
  br label %155, !dbg !216
                                                  ; No predecessors!
  br label %118, !dbg !219

; <label>:118:                                    ; preds = %117, %98
  %119 = load double, double* %13, align 8, !dbg !220
  %120 = call double @fabs(double %119) #1, !dbg !221
  store double %120, double* %14, align 8, !dbg !222
  %121 = load double, double* %14, align 8, !dbg !223
  %122 = load double, double* %15, align 8, !dbg !224
  %123 = call double @GSL_MAX_DBL(double %121, double %122), !dbg !225
  store double %123, double* %15, align 8, !dbg !226
  %124 = load double, double* %14, align 8, !dbg !227
  %125 = fmul double 0x3CC0000000000000, %124, !dbg !228
  %126 = load double, double* %17, align 8, !dbg !229
  %127 = fadd double %126, %125, !dbg !229
  store double %127, double* %17, align 8, !dbg !229
  %128 = load double, double* %10, align 8, !dbg !230
  %129 = fadd double %128, 1.000000e+00, !dbg !230
  store double %129, double* %10, align 8, !dbg !230
  %130 = load double, double* %11, align 8, !dbg !231
  %131 = fadd double %130, 1.000000e+00, !dbg !231
  store double %131, double* %11, align 8, !dbg !231
  %132 = load double, double* %12, align 8, !dbg !232
  %133 = fadd double %132, 1.000000e+00, !dbg !232
  store double %133, double* %12, align 8, !dbg !232
  br label %22, !dbg !233, !llvm.loop !235

; <label>:134:                                    ; preds = %22
  %135 = load double, double* %16, align 8, !dbg !236
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !237
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 0, !dbg !238
  store double %135, double* %137, align 8, !dbg !239
  %138 = load double, double* %17, align 8, !dbg !240
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !241
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 1, !dbg !242
  store double %138, double* %140, align 8, !dbg !243
  %141 = load double, double* %14, align 8, !dbg !244
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !245
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 1, !dbg !246
  %144 = load double, double* %143, align 8, !dbg !247
  %145 = fadd double %144, %141, !dbg !247
  store double %145, double* %143, align 8, !dbg !247
  %146 = load double, double* %12, align 8, !dbg !248
  %147 = fmul double 0x3CC0000000000000, %146, !dbg !249
  %148 = load double, double* %16, align 8, !dbg !250
  %149 = call double @fabs(double %148) #1, !dbg !251
  %150 = fmul double %147, %149, !dbg !252
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !253
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 1, !dbg !254
  %153 = load double, double* %152, align 8, !dbg !255
  %154 = fadd double %153, %150, !dbg !255
  store double %154, double* %152, align 8, !dbg !255
  store i32 0, i32* %5, align 4, !dbg !256
  br label %155, !dbg !256

; <label>:155:                                    ; preds = %134, %116, %96, %69, %43, %37
  %156 = load i32, i32* %5, align 4, !dbg !257
  ret i32 %156, !dbg !257
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gsl_error(i8*, i8*, i32, i32) #3

declare double @GSL_MAX_DBL(double, double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_1F1_large_b_e(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !258 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
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
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !259, metadata !60), !dbg !260
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !261, metadata !60), !dbg !262
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !263, metadata !60), !dbg !264
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !265, metadata !60), !dbg !266
  %19 = load double, double* %8, align 8, !dbg !267
  %20 = load double, double* %7, align 8, !dbg !269
  %21 = fdiv double %19, %20, !dbg !270
  %22 = call double @fabs(double %21) #1, !dbg !271
  %23 = fcmp olt double %22, 1.000000e+00, !dbg !272
  br i1 %23, label %24, label %106, !dbg !273

; <label>:24:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %10, metadata !274, metadata !60), !dbg !276
  %25 = load double, double* %8, align 8, !dbg !277
  %26 = load double, double* %7, align 8, !dbg !278
  %27 = fdiv double %25, %26, !dbg !279
  store double %27, double* %10, align 8, !dbg !276
  call void @llvm.dbg.declare(metadata double* %11, metadata !280, metadata !60), !dbg !281
  %28 = load double, double* %10, align 8, !dbg !282
  %29 = fsub double 1.000000e+00, %28, !dbg !283
  %30 = fdiv double 1.000000e+00, %29, !dbg !284
  store double %30, double* %11, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata double* %12, metadata !285, metadata !60), !dbg !286
  %31 = load double, double* %11, align 8, !dbg !287
  %32 = load double, double* %6, align 8, !dbg !288
  %33 = call double @pow(double %31, double %32) #5, !dbg !289
  store double %33, double* %12, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata double* %13, metadata !290, metadata !60), !dbg !291
  %34 = load double, double* %10, align 8, !dbg !292
  %35 = load double, double* %11, align 8, !dbg !293
  %36 = fmul double %34, %35, !dbg !294
  store double %36, double* %13, align 8, !dbg !291
  call void @llvm.dbg.declare(metadata double* %14, metadata !295, metadata !60), !dbg !296
  %37 = load double, double* %13, align 8, !dbg !297
  %38 = load double, double* %13, align 8, !dbg !298
  %39 = fmul double %37, %38, !dbg !299
  store double %39, double* %14, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata double* %15, metadata !300, metadata !60), !dbg !301
  %40 = load double, double* %6, align 8, !dbg !302
  %41 = load double, double* %6, align 8, !dbg !303
  %42 = fadd double %41, 1.000000e+00, !dbg !304
  %43 = fmul double %40, %42, !dbg !305
  %44 = load double, double* %7, align 8, !dbg !306
  %45 = fmul double 2.000000e+00, %44, !dbg !307
  %46 = fdiv double %43, %45, !dbg !308
  %47 = load double, double* %14, align 8, !dbg !309
  %48 = fmul double %46, %47, !dbg !310
  store double %48, double* %15, align 8, !dbg !301
  call void @llvm.dbg.declare(metadata double* %16, metadata !311, metadata !60), !dbg !312
  %49 = load double, double* %6, align 8, !dbg !313
  %50 = load double, double* %6, align 8, !dbg !314
  %51 = fadd double %50, 1.000000e+00, !dbg !315
  %52 = fmul double %49, %51, !dbg !316
  %53 = load double, double* %7, align 8, !dbg !317
  %54 = fmul double 2.400000e+01, %53, !dbg !318
  %55 = load double, double* %7, align 8, !dbg !319
  %56 = fmul double %54, %55, !dbg !320
  %57 = fdiv double %52, %56, !dbg !321
  %58 = load double, double* %14, align 8, !dbg !322
  %59 = fmul double %57, %58, !dbg !323
  store double %59, double* %16, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata double* %17, metadata !324, metadata !60), !dbg !325
  %60 = load double, double* %6, align 8, !dbg !326
  %61 = fadd double %60, 2.000000e+00, !dbg !327
  %62 = fmul double 1.600000e+01, %61, !dbg !328
  %63 = load double, double* %13, align 8, !dbg !329
  %64 = fmul double %62, %63, !dbg !330
  %65 = fadd double 1.200000e+01, %64, !dbg !331
  %66 = load double, double* %6, align 8, !dbg !332
  %67 = fadd double %66, 2.000000e+00, !dbg !333
  %68 = fmul double 3.000000e+00, %67, !dbg !334
  %69 = load double, double* %6, align 8, !dbg !335
  %70 = fadd double %69, 3.000000e+00, !dbg !336
  %71 = fmul double %68, %70, !dbg !337
  %72 = load double, double* %14, align 8, !dbg !338
  %73 = fmul double %71, %72, !dbg !339
  %74 = fadd double %65, %73, !dbg !340
  store double %74, double* %17, align 8, !dbg !325
  call void @llvm.dbg.declare(metadata double* %18, metadata !341, metadata !60), !dbg !342
  %75 = load double, double* %16, align 8, !dbg !343
  %76 = load double, double* %17, align 8, !dbg !344
  %77 = fmul double %75, %76, !dbg !345
  store double %77, double* %18, align 8, !dbg !342
  %78 = load double, double* %12, align 8, !dbg !346
  %79 = load double, double* %15, align 8, !dbg !347
  %80 = fsub double 1.000000e+00, %79, !dbg !348
  %81 = load double, double* %18, align 8, !dbg !349
  %82 = fadd double %80, %81, !dbg !350
  %83 = fmul double %78, %82, !dbg !351
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !352
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !353
  store double %83, double* %85, align 8, !dbg !354
  %86 = load double, double* %12, align 8, !dbg !355
  %87 = fmul double %86, 0x3CB0000000000000, !dbg !356
  %88 = load double, double* %15, align 8, !dbg !357
  %89 = call double @fabs(double %88) #1, !dbg !358
  %90 = fadd double 1.000000e+00, %89, !dbg !359
  %91 = load double, double* %18, align 8, !dbg !360
  %92 = call double @fabs(double %91) #1, !dbg !361
  %93 = fadd double %90, %92, !dbg !363
  %94 = fmul double %87, %93, !dbg !364
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !365
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !366
  store double %94, double* %96, align 8, !dbg !367
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !368
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !369
  %99 = load double, double* %98, align 8, !dbg !369
  %100 = call double @fabs(double %99) #1, !dbg !370
  %101 = fmul double 0x3CC0000000000000, %100, !dbg !371
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !372
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !373
  %104 = load double, double* %103, align 8, !dbg !374
  %105 = fadd double %104, %101, !dbg !374
  store double %105, double* %103, align 8, !dbg !374
  store i32 0, i32* %5, align 4, !dbg !375
  br label %115, !dbg !375

; <label>:106:                                    ; preds = %4
  br label %107, !dbg !376, !llvm.loop !378

; <label>:107:                                    ; preds = %106
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !379
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 0, !dbg !379
  store double 0x7FF8000000000000, double* %109, align 8, !dbg !379
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !379
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !379
  store double 0x7FF8000000000000, double* %111, align 8, !dbg !379
  br label %112, !dbg !379, !llvm.loop !382

; <label>:112:                                    ; preds = %107
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 123, i32 1), !dbg !384
  store i32 1, i32* %5, align 4, !dbg !384
  br label %115, !dbg !384
                                                  ; No predecessors!
  br label %114, !dbg !387

; <label>:114:                                    ; preds = %113
  br label %115

; <label>:115:                                    ; preds = %24, %112, %114
  %116 = load i32, i32* %5, align 4, !dbg !389
  ret i32 %116, !dbg !389
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_U_large_b_e(double, double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !390 {
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
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca double, align 8
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca double, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca double, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca double, align 8
  %33 = alloca %struct.gsl_sf_result_struct, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !394, metadata !60), !dbg !395
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !396, metadata !60), !dbg !397
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !398, metadata !60), !dbg !399
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !400, metadata !60), !dbg !401
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !402, metadata !60), !dbg !403
  call void @llvm.dbg.declare(metadata double* %12, metadata !404, metadata !60), !dbg !405
  %49 = load double, double* %8, align 8, !dbg !406
  %50 = call double @floor(double %49) #1, !dbg !407
  store double %50, double* %12, align 8, !dbg !405
  call void @llvm.dbg.declare(metadata double* %13, metadata !408, metadata !60), !dbg !409
  %51 = load double, double* %8, align 8, !dbg !410
  %52 = load double, double* %12, align 8, !dbg !411
  %53 = fsub double %51, %52, !dbg !412
  store double %53, double* %13, align 8, !dbg !409
  %54 = load double, double* %13, align 8, !dbg !413
  %55 = call double @fabs(double %54) #1, !dbg !415
  %56 = fcmp olt double %55, 0x3E50000000000000, !dbg !416
  br i1 %56, label %57, label %175, !dbg !417

; <label>:57:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata double* %14, metadata !418, metadata !60), !dbg !420
  call void @llvm.dbg.declare(metadata double* %15, metadata !421, metadata !60), !dbg !422
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !423, metadata !60), !dbg !424
  %58 = load double, double* %8, align 8, !dbg !425
  %59 = fcmp ogt double %58, 1.000000e+00, !dbg !427
  br i1 %59, label %60, label %99, !dbg !428

; <label>:60:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata double* %17, metadata !429, metadata !60), !dbg !431
  %61 = load double, double* %8, align 8, !dbg !432
  %62 = fsub double 1.000000e+00, %61, !dbg !433
  %63 = load double, double* %9, align 8, !dbg !434
  %64 = call double @log(double %63) #5, !dbg !435
  %65 = fmul double %62, %64, !dbg !436
  store double %65, double* %17, align 8, !dbg !431
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !437, metadata !60), !dbg !438
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !439, metadata !60), !dbg !440
  %66 = load double, double* %8, align 8, !dbg !441
  %67 = fsub double %66, 1.000000e+00, !dbg !442
  %68 = call i32 @gsl_sf_lngamma_e(double %67, %struct.gsl_sf_result_struct* %18), !dbg !443
  %69 = load double, double* %7, align 8, !dbg !444
  %70 = call i32 @gsl_sf_lngamma_e(double %69, %struct.gsl_sf_result_struct* %19), !dbg !445
  %71 = load double, double* %17, align 8, !dbg !446
  %72 = load double, double* %9, align 8, !dbg !447
  %73 = fadd double %71, %72, !dbg !448
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !449
  %75 = load double, double* %74, align 8, !dbg !449
  %76 = fadd double %73, %75, !dbg !450
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !451
  %78 = load double, double* %77, align 8, !dbg !451
  %79 = fsub double %76, %78, !dbg !452
  store double %79, double* %14, align 8, !dbg !453
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !454
  %81 = load double, double* %80, align 8, !dbg !454
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !455
  %83 = load double, double* %82, align 8, !dbg !455
  %84 = fadd double %81, %83, !dbg !456
  %85 = load double, double* %9, align 8, !dbg !457
  %86 = call double @fabs(double %85) #1, !dbg !458
  %87 = load double, double* %17, align 8, !dbg !459
  %88 = call double @fabs(double %87) #1, !dbg !460
  %89 = fadd double %86, %88, !dbg !462
  %90 = fmul double 0x3CB0000000000000, %89, !dbg !463
  %91 = fadd double %84, %90, !dbg !464
  store double %91, double* %15, align 8, !dbg !465
  %92 = load double, double* %7, align 8, !dbg !466
  %93 = fsub double 1.000000e+00, %92, !dbg !467
  %94 = load double, double* %8, align 8, !dbg !468
  %95 = fsub double 2.000000e+00, %94, !dbg !469
  %96 = load double, double* %9, align 8, !dbg !470
  %97 = fsub double -0.000000e+00, %96, !dbg !471
  %98 = call i32 @gsl_sf_hyperg_1F1_large_b_e(double %93, double %95, double %97, %struct.gsl_sf_result_struct* %16), !dbg !472
  br label %122, !dbg !473

; <label>:99:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !474, metadata !60), !dbg !476
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !477, metadata !60), !dbg !478
  %100 = load double, double* %8, align 8, !dbg !479
  %101 = fsub double 1.000000e+00, %100, !dbg !480
  %102 = call i32 @gsl_sf_lngamma_e(double %101, %struct.gsl_sf_result_struct* %20), !dbg !481
  %103 = load double, double* %7, align 8, !dbg !482
  %104 = fadd double 1.000000e+00, %103, !dbg !483
  %105 = load double, double* %8, align 8, !dbg !484
  %106 = fsub double %104, %105, !dbg !485
  %107 = call i32 @gsl_sf_lngamma_e(double %106, %struct.gsl_sf_result_struct* %21), !dbg !486
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !487
  %109 = load double, double* %108, align 8, !dbg !487
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !488
  %111 = load double, double* %110, align 8, !dbg !488
  %112 = fsub double %109, %111, !dbg !489
  store double %112, double* %14, align 8, !dbg !490
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !491
  %114 = load double, double* %113, align 8, !dbg !491
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !492
  %116 = load double, double* %115, align 8, !dbg !492
  %117 = fadd double %114, %116, !dbg !493
  store double %117, double* %15, align 8, !dbg !494
  %118 = load double, double* %7, align 8, !dbg !495
  %119 = load double, double* %8, align 8, !dbg !496
  %120 = load double, double* %9, align 8, !dbg !497
  %121 = call i32 @gsl_sf_hyperg_1F1_large_b_e(double %118, double %119, double %120, %struct.gsl_sf_result_struct* %16), !dbg !498
  br label %122

; <label>:122:                                    ; preds = %99, %60
  %123 = load double, double* %14, align 8, !dbg !499
  %124 = fcmp ogt double %123, 0x4085DE42FEFA39EF, !dbg !501
  br i1 %124, label %125, label %138, !dbg !502

; <label>:125:                                    ; preds = %122
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !503
  %127 = load double, double* %126, align 8, !dbg !503
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !505
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !506
  store double %127, double* %129, align 8, !dbg !507
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !508
  %131 = load double, double* %130, align 8, !dbg !508
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !509
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 1, !dbg !510
  store double %131, double* %133, align 8, !dbg !511
  %134 = load double, double* %14, align 8, !dbg !512
  %135 = load double*, double** %11, align 8, !dbg !513
  store double %134, double* %135, align 8, !dbg !514
  br label %136, !dbg !515, !llvm.loop !516

; <label>:136:                                    ; preds = %125
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 165, i32 16), !dbg !517
  store i32 16, i32* %6, align 4, !dbg !517
  br label %401, !dbg !517
                                                  ; No predecessors!
  br label %174, !dbg !520

; <label>:138:                                    ; preds = %122
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !521, metadata !60), !dbg !523
  call void @llvm.dbg.declare(metadata i32* %23, metadata !524, metadata !60), !dbg !525
  %139 = load double, double* %14, align 8, !dbg !526
  %140 = load double, double* %15, align 8, !dbg !527
  %141 = call i32 @gsl_sf_exp_err_e(double %139, double %140, %struct.gsl_sf_result_struct* %22), !dbg !528
  store i32 %141, i32* %23, align 4, !dbg !525
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !529
  %143 = load double, double* %142, align 8, !dbg !529
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !530
  %145 = load double, double* %144, align 8, !dbg !530
  %146 = fmul double %143, %145, !dbg !531
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !532
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 0, !dbg !533
  store double %146, double* %148, align 8, !dbg !534
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !535
  %150 = load double, double* %149, align 8, !dbg !535
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !536
  %152 = load double, double* %151, align 8, !dbg !536
  %153 = fmul double %150, %152, !dbg !537
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !538
  %155 = load double, double* %154, align 8, !dbg !538
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !539
  %157 = load double, double* %156, align 8, !dbg !539
  %158 = call double @fabs(double %157) #1, !dbg !540
  %159 = fmul double %155, %158, !dbg !541
  %160 = fadd double %153, %159, !dbg !542
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !543
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 1, !dbg !544
  store double %160, double* %162, align 8, !dbg !545
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !546
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 0, !dbg !547
  %165 = load double, double* %164, align 8, !dbg !547
  %166 = call double @fabs(double %165) #1, !dbg !548
  %167 = fmul double 0x3CC0000000000000, %166, !dbg !549
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !550
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 1, !dbg !551
  %170 = load double, double* %169, align 8, !dbg !552
  %171 = fadd double %170, %167, !dbg !552
  store double %171, double* %169, align 8, !dbg !552
  %172 = load double*, double** %11, align 8, !dbg !553
  store double 0.000000e+00, double* %172, align 8, !dbg !554
  %173 = load i32, i32* %23, align 4, !dbg !555
  store i32 %173, i32* %6, align 4, !dbg !556
  br label %401, !dbg !556

; <label>:174:                                    ; preds = %137
  br label %401, !dbg !557

; <label>:175:                                    ; preds = %5
  call void @llvm.dbg.declare(metadata double* %24, metadata !558, metadata !60), !dbg !560
  %176 = load double, double* %8, align 8, !dbg !561
  %177 = fsub double 1.000000e+00, %176, !dbg !562
  %178 = load double, double* %9, align 8, !dbg !563
  %179 = call double @log(double %178) #5, !dbg !564
  %180 = fmul double %177, %179, !dbg !565
  store double %180, double* %24, align 8, !dbg !560
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !566, metadata !60), !dbg !567
  call void @llvm.dbg.declare(metadata double* %26, metadata !568, metadata !60), !dbg !569
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !570, metadata !60), !dbg !571
  call void @llvm.dbg.declare(metadata double* %28, metadata !572, metadata !60), !dbg !573
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !574, metadata !60), !dbg !575
  call void @llvm.dbg.declare(metadata double* %30, metadata !576, metadata !60), !dbg !577
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !578, metadata !60), !dbg !579
  call void @llvm.dbg.declare(metadata double* %32, metadata !580, metadata !60), !dbg !581
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %33, metadata !582, metadata !60), !dbg !583
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !584, metadata !60), !dbg !585
  call void @llvm.dbg.declare(metadata double* %35, metadata !586, metadata !60), !dbg !587
  call void @llvm.dbg.declare(metadata double* %36, metadata !588, metadata !60), !dbg !589
  call void @llvm.dbg.declare(metadata double* %37, metadata !590, metadata !60), !dbg !591
  call void @llvm.dbg.declare(metadata double* %38, metadata !592, metadata !60), !dbg !593
  call void @llvm.dbg.declare(metadata double* %39, metadata !594, metadata !60), !dbg !595
  call void @llvm.dbg.declare(metadata double* %40, metadata !596, metadata !60), !dbg !597
  %181 = load double, double* %7, align 8, !dbg !598
  %182 = load double, double* %8, align 8, !dbg !599
  %183 = load double, double* %9, align 8, !dbg !600
  %184 = call i32 @gsl_sf_hyperg_1F1_large_b_e(double %181, double %182, double %183, %struct.gsl_sf_result_struct* %33), !dbg !601
  %185 = load double, double* %7, align 8, !dbg !602
  %186 = fsub double 1.000000e+00, %185, !dbg !603
  %187 = load double, double* %8, align 8, !dbg !604
  %188 = fsub double 2.000000e+00, %187, !dbg !605
  %189 = load double, double* %9, align 8, !dbg !606
  %190 = call i32 @gsl_sf_hyperg_1F1_large_b_e(double %186, double %188, double %189, %struct.gsl_sf_result_struct* %34), !dbg !607
  %191 = load double, double* %8, align 8, !dbg !608
  %192 = fsub double 1.000000e+00, %191, !dbg !609
  %193 = call i32 @gsl_sf_lngamma_sgn_e(double %192, %struct.gsl_sf_result_struct* %25, double* %26), !dbg !610
  %194 = load double, double* %7, align 8, !dbg !611
  %195 = fadd double 1.000000e+00, %194, !dbg !612
  %196 = load double, double* %8, align 8, !dbg !613
  %197 = fsub double %195, %196, !dbg !614
  %198 = call i32 @gsl_sf_lngamma_sgn_e(double %197, %struct.gsl_sf_result_struct* %27, double* %28), !dbg !615
  %199 = load double, double* %8, align 8, !dbg !616
  %200 = fsub double %199, 1.000000e+00, !dbg !617
  %201 = call i32 @gsl_sf_lngamma_sgn_e(double %200, %struct.gsl_sf_result_struct* %29, double* %30), !dbg !618
  %202 = load double, double* %7, align 8, !dbg !619
  %203 = call i32 @gsl_sf_lngamma_sgn_e(double %202, %struct.gsl_sf_result_struct* %31, double* %32), !dbg !620
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !621
  %205 = load double, double* %204, align 8, !dbg !621
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !622
  %207 = load double, double* %206, align 8, !dbg !622
  %208 = fsub double %205, %207, !dbg !623
  store double %208, double* %35, align 8, !dbg !624
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !625
  %210 = load double, double* %209, align 8, !dbg !625
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !626
  %212 = load double, double* %211, align 8, !dbg !626
  %213 = fadd double %210, %212, !dbg !627
  store double %213, double* %37, align 8, !dbg !628
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !629
  %215 = load double, double* %214, align 8, !dbg !629
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !630
  %217 = load double, double* %216, align 8, !dbg !630
  %218 = fsub double %215, %217, !dbg !631
  %219 = load double, double* %24, align 8, !dbg !632
  %220 = fsub double %218, %219, !dbg !633
  %221 = load double, double* %9, align 8, !dbg !634
  %222 = fsub double %220, %221, !dbg !635
  store double %222, double* %36, align 8, !dbg !636
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !637
  %224 = load double, double* %223, align 8, !dbg !637
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !638
  %226 = load double, double* %225, align 8, !dbg !638
  %227 = fadd double %224, %226, !dbg !639
  %228 = load double, double* %24, align 8, !dbg !640
  %229 = call double @fabs(double %228) #1, !dbg !641
  %230 = load double, double* %9, align 8, !dbg !642
  %231 = call double @fabs(double %230) #1, !dbg !643
  %232 = fadd double %229, %231, !dbg !645
  %233 = fmul double 0x3CB0000000000000, %232, !dbg !646
  %234 = fadd double %227, %233, !dbg !647
  store double %234, double* %38, align 8, !dbg !648
  %235 = load double, double* %26, align 8, !dbg !649
  %236 = load double, double* %28, align 8, !dbg !650
  %237 = fmul double %235, %236, !dbg !651
  store double %237, double* %39, align 8, !dbg !652
  %238 = load double, double* %30, align 8, !dbg !653
  %239 = load double, double* %32, align 8, !dbg !654
  %240 = fmul double %238, %239, !dbg !655
  store double %240, double* %40, align 8, !dbg !656
  %241 = load double, double* %35, align 8, !dbg !657
  %242 = fcmp ogt double %241, 0x4085DE42FEFA39EF, !dbg !659
  br i1 %242, label %246, label %243, !dbg !660

; <label>:243:                                    ; preds = %175
  %244 = load double, double* %36, align 8, !dbg !661
  %245 = fcmp ogt double %244, 0x4085DE42FEFA39EF, !dbg !663
  br i1 %245, label %246, label %335, !dbg !664

; <label>:246:                                    ; preds = %243, %175
  call void @llvm.dbg.declare(metadata double* %41, metadata !665, metadata !60), !dbg !667
  %247 = load double, double* %35, align 8, !dbg !668
  %248 = load double, double* %36, align 8, !dbg !668
  %249 = fcmp ogt double %247, %248, !dbg !668
  br i1 %249, label %250, label %252, !dbg !668

; <label>:250:                                    ; preds = %246
  %251 = load double, double* %35, align 8, !dbg !669
  br label %254, !dbg !669

; <label>:252:                                    ; preds = %246
  %253 = load double, double* %36, align 8, !dbg !671
  br label %254, !dbg !671

; <label>:254:                                    ; preds = %252, %250
  %255 = phi double [ %251, %250 ], [ %253, %252 ], !dbg !673
  store double %255, double* %41, align 8, !dbg !675
  call void @llvm.dbg.declare(metadata double* %42, metadata !676, metadata !60), !dbg !677
  %256 = load double, double* %37, align 8, !dbg !678
  %257 = load double, double* %38, align 8, !dbg !678
  %258 = fcmp ogt double %256, %257, !dbg !678
  br i1 %258, label %259, label %261, !dbg !678

; <label>:259:                                    ; preds = %254
  %260 = load double, double* %37, align 8, !dbg !679
  br label %263, !dbg !679

; <label>:261:                                    ; preds = %254
  %262 = load double, double* %38, align 8, !dbg !680
  br label %263, !dbg !680

; <label>:263:                                    ; preds = %261, %259
  %264 = phi double [ %260, %259 ], [ %262, %261 ], !dbg !681
  store double %264, double* %42, align 8, !dbg !682
  call void @llvm.dbg.declare(metadata double* %43, metadata !683, metadata !60), !dbg !684
  %265 = load double, double* %35, align 8, !dbg !685
  %266 = load double, double* %41, align 8, !dbg !686
  %267 = fsub double %265, %266, !dbg !687
  store double %267, double* %43, align 8, !dbg !684
  call void @llvm.dbg.declare(metadata double* %44, metadata !688, metadata !60), !dbg !689
  %268 = load double, double* %36, align 8, !dbg !690
  %269 = load double, double* %41, align 8, !dbg !691
  %270 = fsub double %268, %269, !dbg !692
  store double %270, double* %44, align 8, !dbg !689
  call void @llvm.dbg.declare(metadata double* %45, metadata !693, metadata !60), !dbg !694
  %271 = load double, double* %39, align 8, !dbg !695
  %272 = load double, double* %43, align 8, !dbg !696
  %273 = call double @exp(double %272) #5, !dbg !697
  %274 = fmul double %271, %273, !dbg !698
  store double %274, double* %45, align 8, !dbg !694
  call void @llvm.dbg.declare(metadata double* %46, metadata !699, metadata !60), !dbg !700
  %275 = load double, double* %40, align 8, !dbg !701
  %276 = load double, double* %44, align 8, !dbg !702
  %277 = call double @exp(double %276) #5, !dbg !703
  %278 = fmul double %275, %277, !dbg !704
  store double %278, double* %46, align 8, !dbg !700
  %279 = load double, double* %45, align 8, !dbg !705
  %280 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !706
  %281 = load double, double* %280, align 8, !dbg !706
  %282 = fmul double %279, %281, !dbg !707
  %283 = load double, double* %46, align 8, !dbg !708
  %284 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !709
  %285 = load double, double* %284, align 8, !dbg !709
  %286 = fmul double %283, %285, !dbg !710
  %287 = fadd double %282, %286, !dbg !711
  %288 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !712
  %289 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %288, i32 0, i32 0, !dbg !713
  store double %287, double* %289, align 8, !dbg !714
  %290 = load double, double* %45, align 8, !dbg !715
  %291 = call double @fabs(double %290) #1, !dbg !716
  %292 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !717
  %293 = load double, double* %292, align 8, !dbg !717
  %294 = fmul double %291, %293, !dbg !718
  %295 = load double, double* %46, align 8, !dbg !719
  %296 = call double @fabs(double %295) #1, !dbg !720
  %297 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !721
  %298 = load double, double* %297, align 8, !dbg !721
  %299 = fmul double %296, %298, !dbg !722
  %300 = fadd double %294, %299, !dbg !723
  %301 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !724
  %302 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %301, i32 0, i32 1, !dbg !725
  store double %300, double* %302, align 8, !dbg !726
  %303 = load double, double* %42, align 8, !dbg !727
  %304 = call double @exp(double %303) #5, !dbg !728
  %305 = fmul double 0x3CB0000000000000, %304, !dbg !729
  %306 = load double, double* %45, align 8, !dbg !730
  %307 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !731
  %308 = load double, double* %307, align 8, !dbg !731
  %309 = fmul double %306, %308, !dbg !732
  %310 = call double @fabs(double %309) #1, !dbg !733
  %311 = load double, double* %46, align 8, !dbg !734
  %312 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !735
  %313 = load double, double* %312, align 8, !dbg !735
  %314 = fmul double %311, %313, !dbg !736
  %315 = call double @fabs(double %314) #1, !dbg !737
  %316 = fadd double %310, %315, !dbg !738
  %317 = fmul double %305, %316, !dbg !739
  %318 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !740
  %319 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %318, i32 0, i32 1, !dbg !741
  %320 = load double, double* %319, align 8, !dbg !742
  %321 = fadd double %320, %317, !dbg !742
  store double %321, double* %319, align 8, !dbg !742
  %322 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !743
  %323 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %322, i32 0, i32 0, !dbg !744
  %324 = load double, double* %323, align 8, !dbg !744
  %325 = call double @fabs(double %324) #1, !dbg !745
  %326 = fmul double 0x3CC0000000000000, %325, !dbg !746
  %327 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !747
  %328 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %327, i32 0, i32 1, !dbg !748
  %329 = load double, double* %328, align 8, !dbg !749
  %330 = fadd double %329, %326, !dbg !749
  store double %330, double* %328, align 8, !dbg !749
  %331 = load double, double* %41, align 8, !dbg !750
  %332 = load double*, double** %11, align 8, !dbg !751
  store double %331, double* %332, align 8, !dbg !752
  br label %333, !dbg !753, !llvm.loop !754

; <label>:333:                                    ; preds = %263
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 215, i32 16), !dbg !755
  store i32 16, i32* %6, align 4, !dbg !755
  br label %401, !dbg !755
                                                  ; No predecessors!
  br label %400, !dbg !758

; <label>:335:                                    ; preds = %243
  call void @llvm.dbg.declare(metadata double* %47, metadata !759, metadata !60), !dbg !761
  %336 = load double, double* %39, align 8, !dbg !762
  %337 = load double, double* %35, align 8, !dbg !763
  %338 = call double @exp(double %337) #5, !dbg !764
  %339 = fmul double %336, %338, !dbg !765
  store double %339, double* %47, align 8, !dbg !761
  call void @llvm.dbg.declare(metadata double* %48, metadata !766, metadata !60), !dbg !767
  %340 = load double, double* %40, align 8, !dbg !768
  %341 = load double, double* %36, align 8, !dbg !769
  %342 = call double @exp(double %341) #5, !dbg !770
  %343 = fmul double %340, %342, !dbg !771
  store double %343, double* %48, align 8, !dbg !767
  %344 = load double, double* %47, align 8, !dbg !772
  %345 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !773
  %346 = load double, double* %345, align 8, !dbg !773
  %347 = fmul double %344, %346, !dbg !774
  %348 = load double, double* %48, align 8, !dbg !775
  %349 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !776
  %350 = load double, double* %349, align 8, !dbg !776
  %351 = fmul double %348, %350, !dbg !777
  %352 = fadd double %347, %351, !dbg !778
  %353 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !779
  %354 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %353, i32 0, i32 0, !dbg !780
  store double %352, double* %354, align 8, !dbg !781
  %355 = load double, double* %47, align 8, !dbg !782
  %356 = call double @fabs(double %355) #1, !dbg !783
  %357 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !784
  %358 = load double, double* %357, align 8, !dbg !784
  %359 = fmul double %356, %358, !dbg !785
  %360 = load double, double* %48, align 8, !dbg !786
  %361 = call double @fabs(double %360) #1, !dbg !787
  %362 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !789
  %363 = load double, double* %362, align 8, !dbg !789
  %364 = fmul double %361, %363, !dbg !790
  %365 = fadd double %359, %364, !dbg !791
  %366 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !792
  %367 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %366, i32 0, i32 1, !dbg !793
  store double %365, double* %367, align 8, !dbg !794
  %368 = load double, double* %37, align 8, !dbg !795
  %369 = call double @exp(double %368) #5, !dbg !796
  %370 = load double, double* %47, align 8, !dbg !797
  %371 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !798
  %372 = load double, double* %371, align 8, !dbg !798
  %373 = fmul double %370, %372, !dbg !799
  %374 = call double @fabs(double %373) #1, !dbg !800
  %375 = fmul double %369, %374, !dbg !801
  %376 = load double, double* %38, align 8, !dbg !802
  %377 = call double @exp(double %376) #5, !dbg !803
  %378 = load double, double* %48, align 8, !dbg !805
  %379 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !806
  %380 = load double, double* %379, align 8, !dbg !806
  %381 = fmul double %378, %380, !dbg !807
  %382 = call double @fabs(double %381) #1, !dbg !808
  %383 = fmul double %377, %382, !dbg !810
  %384 = fadd double %375, %383, !dbg !811
  %385 = fmul double 0x3CB0000000000000, %384, !dbg !812
  %386 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !813
  %387 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %386, i32 0, i32 1, !dbg !814
  %388 = load double, double* %387, align 8, !dbg !815
  %389 = fadd double %388, %385, !dbg !815
  store double %389, double* %387, align 8, !dbg !815
  %390 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !816
  %391 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %390, i32 0, i32 0, !dbg !817
  %392 = load double, double* %391, align 8, !dbg !817
  %393 = call double @fabs(double %392) #1, !dbg !818
  %394 = fmul double 0x3CC0000000000000, %393, !dbg !819
  %395 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !820
  %396 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %395, i32 0, i32 1, !dbg !821
  %397 = load double, double* %396, align 8, !dbg !822
  %398 = fadd double %397, %394, !dbg !822
  store double %398, double* %396, align 8, !dbg !822
  %399 = load double*, double** %11, align 8, !dbg !823
  store double 0.000000e+00, double* %399, align 8, !dbg !824
  store i32 0, i32* %6, align 4, !dbg !825
  br label %401, !dbg !825

; <label>:400:                                    ; preds = %334
  br label %401

; <label>:401:                                    ; preds = %136, %138, %333, %335, %400, %174
  %402 = load i32, i32* %6, align 4, !dbg !826
  ret i32 %402, !dbg !826
}

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #3

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F0_series_e(double, double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !827 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
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
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !830, metadata !60), !dbg !831
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !832, metadata !60), !dbg !833
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !834, metadata !60), !dbg !835
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !836, metadata !60), !dbg !837
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !838, metadata !60), !dbg !839
  call void @llvm.dbg.declare(metadata i32* %12, metadata !840, metadata !60), !dbg !842
  store i32 2000, i32* %12, align 4, !dbg !842
  call void @llvm.dbg.declare(metadata double* %13, metadata !843, metadata !60), !dbg !844
  %23 = load double, double* %7, align 8, !dbg !845
  store double %23, double* %13, align 8, !dbg !844
  call void @llvm.dbg.declare(metadata double* %14, metadata !846, metadata !60), !dbg !847
  %24 = load double, double* %8, align 8, !dbg !848
  store double %24, double* %14, align 8, !dbg !847
  call void @llvm.dbg.declare(metadata double* %15, metadata !849, metadata !60), !dbg !850
  store double 1.000000e+00, double* %15, align 8, !dbg !850
  call void @llvm.dbg.declare(metadata double* %16, metadata !851, metadata !60), !dbg !852
  store double 1.000000e+00, double* %16, align 8, !dbg !852
  call void @llvm.dbg.declare(metadata double* %17, metadata !853, metadata !60), !dbg !854
  store double 1.000000e+00, double* %17, align 8, !dbg !854
  call void @llvm.dbg.declare(metadata double* %18, metadata !855, metadata !60), !dbg !856
  store double 1.000000e+00, double* %18, align 8, !dbg !856
  call void @llvm.dbg.declare(metadata double* %19, metadata !857, metadata !60), !dbg !858
  store double 1.000000e+00, double* %19, align 8, !dbg !858
  call void @llvm.dbg.declare(metadata double* %20, metadata !859, metadata !60), !dbg !860
  store double 1.000000e+00, double* %20, align 8, !dbg !860
  br label %25, !dbg !861

; <label>:25:                                     ; preds = %108, %5
  %26 = load double, double* %18, align 8, !dbg !862
  %27 = load double, double* %16, align 8, !dbg !864
  %28 = call double @fabs(double %27) #1, !dbg !865
  %29 = fdiv double %26, %28, !dbg !866
  %30 = fcmp ogt double %29, 0x3CB0000000000000, !dbg !867
  br i1 %30, label %31, label %34, !dbg !868

; <label>:31:                                     ; preds = %25
  %32 = load double, double* %15, align 8, !dbg !869
  %33 = fcmp olt double %32, 2.000000e+03, !dbg !871
  br label %34

; <label>:34:                                     ; preds = %31, %25
  %35 = phi i1 [ false, %25 ], [ %33, %31 ]
  br i1 %35, label %36, label %109, !dbg !872

; <label>:36:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata double* %21, metadata !874, metadata !60), !dbg !876
  %37 = load double, double* %13, align 8, !dbg !877
  %38 = load double, double* %14, align 8, !dbg !878
  %39 = load double, double* %15, align 8, !dbg !879
  %40 = fdiv double %38, %39, !dbg !880
  %41 = load double, double* %9, align 8, !dbg !881
  %42 = fmul double %40, %41, !dbg !882
  %43 = fmul double %37, %42, !dbg !883
  store double %43, double* %21, align 8, !dbg !876
  call void @llvm.dbg.declare(metadata double* %22, metadata !884, metadata !60), !dbg !885
  %44 = load double, double* %21, align 8, !dbg !886
  %45 = call double @fabs(double %44) #1, !dbg !887
  store double %45, double* %22, align 8, !dbg !885
  %46 = load double, double* %22, align 8, !dbg !888
  %47 = fcmp ogt double %46, 1.000000e+00, !dbg !890
  br i1 %47, label %48, label %63, !dbg !891

; <label>:48:                                     ; preds = %36
  %49 = load double, double* %19, align 8, !dbg !892
  %50 = load double, double* %22, align 8, !dbg !894
  %51 = fdiv double 0x7FEFFFFFFFFFFFFF, %50, !dbg !895
  %52 = fcmp ogt double %49, %51, !dbg !896
  br i1 %52, label %53, label %63, !dbg !897

; <label>:53:                                     ; preds = %48
  %54 = load double, double* %16, align 8, !dbg !898
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !900
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !901
  store double %54, double* %56, align 8, !dbg !902
  %57 = load double, double* %16, align 8, !dbg !903
  %58 = call double @fabs(double %57) #1, !dbg !904
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !905
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !906
  store double %58, double* %60, align 8, !dbg !907
  br label %61, !dbg !908, !llvm.loop !909

; <label>:61:                                     ; preds = %53
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 263, i32 16), !dbg !910
  store i32 16, i32* %6, align 4, !dbg !910
  br label %125, !dbg !910
                                                  ; No predecessors!
  br label %63, !dbg !913

; <label>:63:                                     ; preds = %62, %48, %36
  %64 = load double, double* %21, align 8, !dbg !914
  %65 = load double, double* %17, align 8, !dbg !915
  %66 = fmul double %65, %64, !dbg !915
  store double %66, double* %17, align 8, !dbg !915
  %67 = load double, double* %17, align 8, !dbg !916
  %68 = load double, double* %16, align 8, !dbg !917
  %69 = fadd double %68, %67, !dbg !917
  store double %69, double* %16, align 8, !dbg !917
  %70 = load double, double* %17, align 8, !dbg !918
  %71 = call double @fabs(double %70) #1, !dbg !919
  store double %71, double* %18, align 8, !dbg !920
  %72 = load double, double* %18, align 8, !dbg !921
  %73 = load double, double* %20, align 8, !dbg !923
  %74 = fcmp ogt double %72, %73, !dbg !924
  br i1 %74, label %75, label %76, !dbg !925

; <label>:75:                                     ; preds = %63
  br label %109, !dbg !926

; <label>:76:                                     ; preds = %63
  %77 = load double, double* %18, align 8, !dbg !928
  store double %77, double* %20, align 8, !dbg !929
  %78 = load double, double* %18, align 8, !dbg !930
  %79 = load double, double* %19, align 8, !dbg !930
  %80 = fcmp ogt double %78, %79, !dbg !930
  br i1 %80, label %81, label %83, !dbg !930

; <label>:81:                                     ; preds = %76
  %82 = load double, double* %18, align 8, !dbg !931
  br label %85, !dbg !931

; <label>:83:                                     ; preds = %76
  %84 = load double, double* %19, align 8, !dbg !933
  br label %85, !dbg !933

; <label>:85:                                     ; preds = %83, %81
  %86 = phi double [ %82, %81 ], [ %84, %83 ], !dbg !935
  store double %86, double* %19, align 8, !dbg !937
  %87 = load double, double* %13, align 8, !dbg !938
  %88 = fadd double %87, 1.000000e+00, !dbg !938
  store double %88, double* %13, align 8, !dbg !938
  %89 = load double, double* %14, align 8, !dbg !939
  %90 = fadd double %89, 1.000000e+00, !dbg !939
  store double %90, double* %14, align 8, !dbg !939
  %91 = load double, double* %15, align 8, !dbg !940
  %92 = fadd double %91, 1.000000e+00, !dbg !940
  store double %92, double* %15, align 8, !dbg !940
  %93 = load double, double* %13, align 8, !dbg !941
  %94 = fcmp oeq double %93, 0.000000e+00, !dbg !943
  br i1 %94, label %98, label %95, !dbg !944

; <label>:95:                                     ; preds = %85
  %96 = load double, double* %14, align 8, !dbg !945
  %97 = fcmp oeq double %96, 0.000000e+00, !dbg !947
  br i1 %97, label %98, label %99, !dbg !948

; <label>:98:                                     ; preds = %95, %85
  br label %109, !dbg !949

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %10, align 4, !dbg !951
  %101 = icmp sge i32 %100, 0, !dbg !953
  br i1 %101, label %102, label %108, !dbg !954

; <label>:102:                                    ; preds = %99
  %103 = load double, double* %15, align 8, !dbg !955
  %104 = load i32, i32* %10, align 4, !dbg !957
  %105 = sitofp i32 %104 to double, !dbg !957
  %106 = fcmp oge double %103, %105, !dbg !958
  br i1 %106, label %107, label %108, !dbg !959

; <label>:107:                                    ; preds = %102
  br label %109, !dbg !960

; <label>:108:                                    ; preds = %102, %99
  br label %25, !dbg !962, !llvm.loop !964

; <label>:109:                                    ; preds = %107, %98, %75, %34
  %110 = load double, double* %16, align 8, !dbg !965
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !966
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 0, !dbg !967
  store double %110, double* %112, align 8, !dbg !968
  %113 = load double, double* %15, align 8, !dbg !969
  %114 = fmul double 0x3CB0000000000000, %113, !dbg !970
  %115 = load double, double* %18, align 8, !dbg !971
  %116 = fadd double %114, %115, !dbg !972
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !973
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 1, !dbg !974
  store double %116, double* %118, align 8, !dbg !975
  %119 = load double, double* %15, align 8, !dbg !976
  %120 = fcmp oge double %119, 2.000000e+03, !dbg !978
  br i1 %120, label %121, label %124, !dbg !979

; <label>:121:                                    ; preds = %109
  br label %122, !dbg !980, !llvm.loop !981

; <label>:122:                                    ; preds = %121
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 288, i32 11), !dbg !982
  store i32 11, i32* %6, align 4, !dbg !982
  br label %125, !dbg !982
                                                  ; No predecessors!
  br label %125, !dbg !985

; <label>:124:                                    ; preds = %109
  store i32 0, i32* %6, align 4, !dbg !987
  br label %125, !dbg !987

; <label>:125:                                    ; preds = %61, %122, %124, %123
  %126 = load i32, i32* %6, align 4, !dbg !988
  ret i32 %126, !dbg !988
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "hyperg.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_series_e", scope: !1, file: !1, line: 38, type: !46, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !49, !51}
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
!59 = !DILocalVariable(name: "a", arg: 1, scope: !45, file: !1, line: 38, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 38, column: 41, scope: !45)
!62 = !DILocalVariable(name: "b", arg: 2, scope: !45, file: !1, line: 38, type: !49)
!63 = !DILocation(line: 38, column: 57, scope: !45)
!64 = !DILocalVariable(name: "x", arg: 3, scope: !45, file: !1, line: 38, type: !49)
!65 = !DILocation(line: 38, column: 73, scope: !45)
!66 = !DILocalVariable(name: "result", arg: 4, scope: !45, file: !1, line: 39, type: !51)
!67 = !DILocation(line: 39, column: 47, scope: !45)
!68 = !DILocalVariable(name: "an", scope: !45, file: !1, line: 42, type: !50)
!69 = !DILocation(line: 42, column: 10, scope: !45)
!70 = !DILocation(line: 42, column: 16, scope: !45)
!71 = !DILocalVariable(name: "bn", scope: !45, file: !1, line: 43, type: !50)
!72 = !DILocation(line: 43, column: 10, scope: !45)
!73 = !DILocation(line: 43, column: 16, scope: !45)
!74 = !DILocalVariable(name: "n", scope: !45, file: !1, line: 44, type: !50)
!75 = !DILocation(line: 44, column: 10, scope: !45)
!76 = !DILocalVariable(name: "del", scope: !45, file: !1, line: 45, type: !50)
!77 = !DILocation(line: 45, column: 10, scope: !45)
!78 = !DILocalVariable(name: "abs_del", scope: !45, file: !1, line: 46, type: !50)
!79 = !DILocation(line: 46, column: 10, scope: !45)
!80 = !DILocalVariable(name: "max_abs_del", scope: !45, file: !1, line: 47, type: !50)
!81 = !DILocation(line: 47, column: 10, scope: !45)
!82 = !DILocalVariable(name: "sum_val", scope: !45, file: !1, line: 48, type: !50)
!83 = !DILocation(line: 48, column: 10, scope: !45)
!84 = !DILocalVariable(name: "sum_err", scope: !45, file: !1, line: 49, type: !50)
!85 = !DILocation(line: 49, column: 10, scope: !45)
!86 = !DILocation(line: 51, column: 3, scope: !45)
!87 = !DILocation(line: 51, column: 9, scope: !88)
!88 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 1)
!89 = !DILocation(line: 51, column: 22, scope: !88)
!90 = !DILocation(line: 51, column: 17, scope: !88)
!91 = !DILocation(line: 51, column: 16, scope: !88)
!92 = !DILocation(line: 51, column: 31, scope: !88)
!93 = !DILocation(line: 51, column: 3, scope: !88)
!94 = !DILocalVariable(name: "u", scope: !95, file: !1, line: 52, type: !50)
!95 = distinct !DILexicalBlock(scope: !45, file: !1, line: 51, column: 55)
!96 = !DILocation(line: 52, column: 12, scope: !95)
!97 = !DILocalVariable(name: "abs_u", scope: !95, file: !1, line: 52, type: !50)
!98 = !DILocation(line: 52, column: 15, scope: !95)
!99 = !DILocation(line: 54, column: 8, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 54, column: 8)
!101 = !DILocation(line: 54, column: 11, scope: !100)
!102 = !DILocation(line: 54, column: 8, scope: !95)
!103 = !DILocation(line: 55, column: 7, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 54, column: 19)
!105 = distinct !{!105, !103}
!106 = !DILocation(line: 55, column: 7, scope: !107)
!107 = !DILexicalBlockFile(scope: !108, file: !1, discriminator: 1)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 55, column: 7)
!109 = distinct !{!109, !110}
!110 = !DILocation(line: 55, column: 7, scope: !108)
!111 = !DILocation(line: 55, column: 7, scope: !112)
!112 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 2)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 55, column: 7)
!114 = !DILocation(line: 55, column: 7, scope: !115)
!115 = !DILexicalBlockFile(scope: !108, file: !1, discriminator: 3)
!116 = !DILocation(line: 56, column: 5, scope: !104)
!117 = !DILocation(line: 58, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !95, file: !1, line: 58, column: 8)
!119 = !DILocation(line: 58, column: 11, scope: !118)
!120 = !DILocation(line: 58, column: 8, scope: !95)
!121 = !DILocation(line: 59, column: 22, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 58, column: 19)
!123 = !DILocation(line: 59, column: 7, scope: !122)
!124 = !DILocation(line: 59, column: 15, scope: !122)
!125 = !DILocation(line: 59, column: 20, scope: !122)
!126 = !DILocation(line: 60, column: 22, scope: !122)
!127 = !DILocation(line: 60, column: 7, scope: !122)
!128 = !DILocation(line: 60, column: 15, scope: !122)
!129 = !DILocation(line: 60, column: 20, scope: !122)
!130 = !DILocation(line: 61, column: 46, scope: !122)
!131 = !DILocation(line: 61, column: 44, scope: !122)
!132 = !DILocation(line: 61, column: 55, scope: !122)
!133 = !DILocation(line: 61, column: 50, scope: !122)
!134 = !DILocation(line: 61, column: 48, scope: !122)
!135 = !DILocation(line: 61, column: 7, scope: !122)
!136 = !DILocation(line: 61, column: 15, scope: !122)
!137 = !DILocation(line: 61, column: 19, scope: !122)
!138 = !DILocation(line: 62, column: 7, scope: !122)
!139 = !DILocation(line: 65, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !95, file: !1, line: 65, column: 9)
!141 = !DILocation(line: 65, column: 11, scope: !140)
!142 = !DILocation(line: 65, column: 9, scope: !95)
!143 = !DILocation(line: 66, column: 22, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 65, column: 22)
!145 = !DILocation(line: 66, column: 7, scope: !144)
!146 = !DILocation(line: 66, column: 15, scope: !144)
!147 = !DILocation(line: 66, column: 20, scope: !144)
!148 = !DILocation(line: 67, column: 22, scope: !144)
!149 = !DILocation(line: 67, column: 7, scope: !144)
!150 = !DILocation(line: 67, column: 15, scope: !144)
!151 = !DILocation(line: 67, column: 20, scope: !144)
!152 = !DILocation(line: 68, column: 7, scope: !144)
!153 = distinct !{!153, !152}
!154 = !DILocation(line: 68, column: 7, scope: !155)
!155 = !DILexicalBlockFile(scope: !156, file: !1, discriminator: 1)
!156 = distinct !DILexicalBlock(scope: !144, file: !1, line: 68, column: 7)
!157 = !DILocation(line: 69, column: 5, scope: !144)
!158 = !DILocation(line: 71, column: 9, scope: !95)
!159 = !DILocation(line: 71, column: 14, scope: !95)
!160 = !DILocation(line: 71, column: 18, scope: !95)
!161 = !DILocation(line: 71, column: 21, scope: !95)
!162 = !DILocation(line: 71, column: 20, scope: !95)
!163 = !DILocation(line: 71, column: 16, scope: !95)
!164 = !DILocation(line: 71, column: 11, scope: !95)
!165 = !DILocation(line: 71, column: 7, scope: !95)
!166 = !DILocation(line: 72, column: 18, scope: !95)
!167 = !DILocation(line: 72, column: 13, scope: !95)
!168 = !DILocation(line: 72, column: 11, scope: !95)
!169 = !DILocation(line: 73, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !95, file: !1, line: 73, column: 8)
!171 = !DILocation(line: 73, column: 14, scope: !170)
!172 = !DILocation(line: 73, column: 20, scope: !170)
!173 = !DILocation(line: 73, column: 23, scope: !174)
!174 = !DILexicalBlockFile(scope: !170, file: !1, discriminator: 1)
!175 = !DILocation(line: 73, column: 49, scope: !174)
!176 = !DILocation(line: 73, column: 48, scope: !174)
!177 = !DILocation(line: 73, column: 35, scope: !174)
!178 = !DILocation(line: 73, column: 8, scope: !174)
!179 = !DILocation(line: 74, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !170, file: !1, line: 73, column: 56)
!181 = !DILocation(line: 74, column: 7, scope: !180)
!182 = !DILocation(line: 74, column: 15, scope: !180)
!183 = !DILocation(line: 74, column: 19, scope: !180)
!184 = !DILocation(line: 75, column: 26, scope: !180)
!185 = !DILocation(line: 75, column: 21, scope: !180)
!186 = !DILocation(line: 75, column: 7, scope: !180)
!187 = !DILocation(line: 75, column: 15, scope: !180)
!188 = !DILocation(line: 75, column: 19, scope: !180)
!189 = !DILocation(line: 76, column: 7, scope: !180)
!190 = distinct !{!190, !189}
!191 = !DILocation(line: 76, column: 7, scope: !192)
!192 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 1)
!193 = distinct !DILexicalBlock(scope: !180, file: !1, line: 76, column: 7)
!194 = !DILocation(line: 77, column: 5, scope: !180)
!195 = !DILocation(line: 78, column: 12, scope: !95)
!196 = !DILocation(line: 78, column: 9, scope: !95)
!197 = !DILocation(line: 79, column: 16, scope: !95)
!198 = !DILocation(line: 79, column: 13, scope: !95)
!199 = !DILocation(line: 80, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !95, file: !1, line: 80, column: 8)
!201 = !DILocation(line: 80, column: 8, scope: !200)
!202 = !DILocation(line: 80, column: 22, scope: !200)
!203 = !DILocation(line: 80, column: 8, scope: !95)
!204 = !DILocation(line: 81, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !1, line: 80, column: 35)
!206 = !DILocation(line: 81, column: 7, scope: !205)
!207 = !DILocation(line: 81, column: 15, scope: !205)
!208 = !DILocation(line: 81, column: 19, scope: !205)
!209 = !DILocation(line: 82, column: 26, scope: !205)
!210 = !DILocation(line: 82, column: 21, scope: !205)
!211 = !DILocation(line: 82, column: 7, scope: !205)
!212 = !DILocation(line: 82, column: 15, scope: !205)
!213 = !DILocation(line: 82, column: 19, scope: !205)
!214 = !DILocation(line: 83, column: 7, scope: !205)
!215 = distinct !{!215, !214}
!216 = !DILocation(line: 83, column: 7, scope: !217)
!217 = !DILexicalBlockFile(scope: !218, file: !1, discriminator: 1)
!218 = distinct !DILexicalBlock(scope: !205, file: !1, line: 83, column: 7)
!219 = !DILocation(line: 84, column: 5, scope: !205)
!220 = !DILocation(line: 86, column: 20, scope: !95)
!221 = !DILocation(line: 86, column: 15, scope: !95)
!222 = !DILocation(line: 86, column: 13, scope: !95)
!223 = !DILocation(line: 87, column: 31, scope: !95)
!224 = !DILocation(line: 87, column: 40, scope: !95)
!225 = !DILocation(line: 87, column: 19, scope: !95)
!226 = !DILocation(line: 87, column: 17, scope: !95)
!227 = !DILocation(line: 88, column: 36, scope: !95)
!228 = !DILocation(line: 88, column: 35, scope: !95)
!229 = !DILocation(line: 88, column: 13, scope: !95)
!230 = !DILocation(line: 90, column: 8, scope: !95)
!231 = !DILocation(line: 91, column: 8, scope: !95)
!232 = !DILocation(line: 92, column: 8, scope: !95)
!233 = !DILocation(line: 51, column: 3, scope: !234)
!234 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 2)
!235 = distinct !{!235, !86}
!236 = !DILocation(line: 95, column: 18, scope: !45)
!237 = !DILocation(line: 95, column: 3, scope: !45)
!238 = !DILocation(line: 95, column: 11, scope: !45)
!239 = !DILocation(line: 95, column: 16, scope: !45)
!240 = !DILocation(line: 96, column: 18, scope: !45)
!241 = !DILocation(line: 96, column: 3, scope: !45)
!242 = !DILocation(line: 96, column: 11, scope: !45)
!243 = !DILocation(line: 96, column: 16, scope: !45)
!244 = !DILocation(line: 97, column: 18, scope: !45)
!245 = !DILocation(line: 97, column: 3, scope: !45)
!246 = !DILocation(line: 97, column: 11, scope: !45)
!247 = !DILocation(line: 97, column: 15, scope: !45)
!248 = !DILocation(line: 98, column: 42, scope: !45)
!249 = !DILocation(line: 98, column: 40, scope: !45)
!250 = !DILocation(line: 98, column: 51, scope: !45)
!251 = !DILocation(line: 98, column: 46, scope: !45)
!252 = !DILocation(line: 98, column: 44, scope: !45)
!253 = !DILocation(line: 98, column: 3, scope: !45)
!254 = !DILocation(line: 98, column: 11, scope: !45)
!255 = !DILocation(line: 98, column: 15, scope: !45)
!256 = !DILocation(line: 100, column: 3, scope: !45)
!257 = !DILocation(line: 101, column: 1, scope: !45)
!258 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_large_b_e", scope: !1, file: !1, line: 105, type: !46, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!259 = !DILocalVariable(name: "a", arg: 1, scope: !258, file: !1, line: 105, type: !49)
!260 = !DILocation(line: 105, column: 42, scope: !258)
!261 = !DILocalVariable(name: "b", arg: 2, scope: !258, file: !1, line: 105, type: !49)
!262 = !DILocation(line: 105, column: 58, scope: !258)
!263 = !DILocalVariable(name: "x", arg: 3, scope: !258, file: !1, line: 105, type: !49)
!264 = !DILocation(line: 105, column: 74, scope: !258)
!265 = !DILocalVariable(name: "result", arg: 4, scope: !258, file: !1, line: 105, type: !51)
!266 = !DILocation(line: 105, column: 93, scope: !258)
!267 = !DILocation(line: 107, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !258, file: !1, line: 107, column: 6)
!269 = !DILocation(line: 107, column: 13, scope: !268)
!270 = !DILocation(line: 107, column: 12, scope: !268)
!271 = !DILocation(line: 107, column: 6, scope: !268)
!272 = !DILocation(line: 107, column: 16, scope: !268)
!273 = !DILocation(line: 107, column: 6, scope: !258)
!274 = !DILocalVariable(name: "u", scope: !275, file: !1, line: 108, type: !49)
!275 = distinct !DILexicalBlock(scope: !268, file: !1, line: 107, column: 23)
!276 = !DILocation(line: 108, column: 18, scope: !275)
!277 = !DILocation(line: 108, column: 22, scope: !275)
!278 = !DILocation(line: 108, column: 24, scope: !275)
!279 = !DILocation(line: 108, column: 23, scope: !275)
!280 = !DILocalVariable(name: "v", scope: !275, file: !1, line: 109, type: !49)
!281 = !DILocation(line: 109, column: 18, scope: !275)
!282 = !DILocation(line: 109, column: 31, scope: !275)
!283 = !DILocation(line: 109, column: 30, scope: !275)
!284 = !DILocation(line: 109, column: 25, scope: !275)
!285 = !DILocalVariable(name: "pre", scope: !275, file: !1, line: 110, type: !49)
!286 = !DILocation(line: 110, column: 18, scope: !275)
!287 = !DILocation(line: 110, column: 28, scope: !275)
!288 = !DILocation(line: 110, column: 30, scope: !275)
!289 = !DILocation(line: 110, column: 24, scope: !275)
!290 = !DILocalVariable(name: "uv", scope: !275, file: !1, line: 111, type: !49)
!291 = !DILocation(line: 111, column: 18, scope: !275)
!292 = !DILocation(line: 111, column: 24, scope: !275)
!293 = !DILocation(line: 111, column: 26, scope: !275)
!294 = !DILocation(line: 111, column: 25, scope: !275)
!295 = !DILocalVariable(name: "uv2", scope: !275, file: !1, line: 112, type: !49)
!296 = !DILocation(line: 112, column: 18, scope: !275)
!297 = !DILocation(line: 112, column: 24, scope: !275)
!298 = !DILocation(line: 112, column: 27, scope: !275)
!299 = !DILocation(line: 112, column: 26, scope: !275)
!300 = !DILocalVariable(name: "t1", scope: !275, file: !1, line: 113, type: !49)
!301 = !DILocation(line: 113, column: 18, scope: !275)
!302 = !DILocation(line: 113, column: 24, scope: !275)
!303 = !DILocation(line: 113, column: 27, scope: !275)
!304 = !DILocation(line: 113, column: 28, scope: !275)
!305 = !DILocation(line: 113, column: 25, scope: !275)
!306 = !DILocation(line: 113, column: 39, scope: !275)
!307 = !DILocation(line: 113, column: 38, scope: !275)
!308 = !DILocation(line: 113, column: 33, scope: !275)
!309 = !DILocation(line: 113, column: 42, scope: !275)
!310 = !DILocation(line: 113, column: 41, scope: !275)
!311 = !DILocalVariable(name: "t2a", scope: !275, file: !1, line: 114, type: !49)
!312 = !DILocation(line: 114, column: 18, scope: !275)
!313 = !DILocation(line: 114, column: 24, scope: !275)
!314 = !DILocation(line: 114, column: 27, scope: !275)
!315 = !DILocation(line: 114, column: 28, scope: !275)
!316 = !DILocation(line: 114, column: 25, scope: !275)
!317 = !DILocation(line: 114, column: 40, scope: !275)
!318 = !DILocation(line: 114, column: 39, scope: !275)
!319 = !DILocation(line: 114, column: 42, scope: !275)
!320 = !DILocation(line: 114, column: 41, scope: !275)
!321 = !DILocation(line: 114, column: 33, scope: !275)
!322 = !DILocation(line: 114, column: 45, scope: !275)
!323 = !DILocation(line: 114, column: 44, scope: !275)
!324 = !DILocalVariable(name: "t2b", scope: !275, file: !1, line: 115, type: !49)
!325 = !DILocation(line: 115, column: 18, scope: !275)
!326 = !DILocation(line: 115, column: 37, scope: !275)
!327 = !DILocation(line: 115, column: 38, scope: !275)
!328 = !DILocation(line: 115, column: 35, scope: !275)
!329 = !DILocation(line: 115, column: 44, scope: !275)
!330 = !DILocation(line: 115, column: 43, scope: !275)
!331 = !DILocation(line: 115, column: 29, scope: !275)
!332 = !DILocation(line: 115, column: 54, scope: !275)
!333 = !DILocation(line: 115, column: 55, scope: !275)
!334 = !DILocation(line: 115, column: 52, scope: !275)
!335 = !DILocation(line: 115, column: 62, scope: !275)
!336 = !DILocation(line: 115, column: 63, scope: !275)
!337 = !DILocation(line: 115, column: 60, scope: !275)
!338 = !DILocation(line: 115, column: 69, scope: !275)
!339 = !DILocation(line: 115, column: 68, scope: !275)
!340 = !DILocation(line: 115, column: 47, scope: !275)
!341 = !DILocalVariable(name: "t2", scope: !275, file: !1, line: 116, type: !49)
!342 = !DILocation(line: 116, column: 18, scope: !275)
!343 = !DILocation(line: 116, column: 24, scope: !275)
!344 = !DILocation(line: 116, column: 28, scope: !275)
!345 = !DILocation(line: 116, column: 27, scope: !275)
!346 = !DILocation(line: 117, column: 20, scope: !275)
!347 = !DILocation(line: 117, column: 33, scope: !275)
!348 = !DILocation(line: 117, column: 31, scope: !275)
!349 = !DILocation(line: 117, column: 38, scope: !275)
!350 = !DILocation(line: 117, column: 36, scope: !275)
!351 = !DILocation(line: 117, column: 24, scope: !275)
!352 = !DILocation(line: 117, column: 5, scope: !275)
!353 = !DILocation(line: 117, column: 13, scope: !275)
!354 = !DILocation(line: 117, column: 18, scope: !275)
!355 = !DILocation(line: 118, column: 20, scope: !275)
!356 = !DILocation(line: 118, column: 24, scope: !275)
!357 = !DILocation(line: 118, column: 56, scope: !275)
!358 = !DILocation(line: 118, column: 51, scope: !275)
!359 = !DILocation(line: 118, column: 49, scope: !275)
!360 = !DILocation(line: 118, column: 67, scope: !275)
!361 = !DILocation(line: 118, column: 62, scope: !362)
!362 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 1)
!363 = !DILocation(line: 118, column: 60, scope: !275)
!364 = !DILocation(line: 118, column: 42, scope: !275)
!365 = !DILocation(line: 118, column: 5, scope: !275)
!366 = !DILocation(line: 118, column: 13, scope: !275)
!367 = !DILocation(line: 118, column: 18, scope: !275)
!368 = !DILocation(line: 119, column: 49, scope: !275)
!369 = !DILocation(line: 119, column: 57, scope: !275)
!370 = !DILocation(line: 119, column: 44, scope: !275)
!371 = !DILocation(line: 119, column: 42, scope: !275)
!372 = !DILocation(line: 119, column: 5, scope: !275)
!373 = !DILocation(line: 119, column: 13, scope: !275)
!374 = !DILocation(line: 119, column: 17, scope: !275)
!375 = !DILocation(line: 120, column: 5, scope: !275)
!376 = !DILocation(line: 123, column: 5, scope: !377)
!377 = distinct !DILexicalBlock(scope: !268, file: !1, line: 122, column: 8)
!378 = distinct !{!378, !376}
!379 = !DILocation(line: 123, column: 5, scope: !380)
!380 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 1)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 123, column: 5)
!382 = distinct !{!382, !383}
!383 = !DILocation(line: 123, column: 5, scope: !381)
!384 = !DILocation(line: 123, column: 5, scope: !385)
!385 = !DILexicalBlockFile(scope: !386, file: !1, discriminator: 2)
!386 = distinct !DILexicalBlock(scope: !381, file: !1, line: 123, column: 5)
!387 = !DILocation(line: 123, column: 5, scope: !388)
!388 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 3)
!389 = !DILocation(line: 125, column: 1, scope: !258)
!390 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_large_b_e", scope: !1, file: !1, line: 129, type: !391, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!391 = !DISubroutineType(types: !392)
!392 = !{!48, !49, !49, !49, !51, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!394 = !DILocalVariable(name: "a", arg: 1, scope: !390, file: !1, line: 129, type: !49)
!395 = !DILocation(line: 129, column: 40, scope: !390)
!396 = !DILocalVariable(name: "b", arg: 2, scope: !390, file: !1, line: 129, type: !49)
!397 = !DILocation(line: 129, column: 56, scope: !390)
!398 = !DILocalVariable(name: "x", arg: 3, scope: !390, file: !1, line: 129, type: !49)
!399 = !DILocation(line: 129, column: 72, scope: !390)
!400 = !DILocalVariable(name: "result", arg: 4, scope: !390, file: !1, line: 130, type: !51)
!401 = !DILocation(line: 130, column: 46, scope: !390)
!402 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !390, file: !1, line: 131, type: !393)
!403 = !DILocation(line: 131, column: 39, scope: !390)
!404 = !DILocalVariable(name: "N", scope: !390, file: !1, line: 134, type: !50)
!405 = !DILocation(line: 134, column: 10, scope: !390)
!406 = !DILocation(line: 134, column: 22, scope: !390)
!407 = !DILocation(line: 134, column: 16, scope: !390)
!408 = !DILocalVariable(name: "eps", scope: !390, file: !1, line: 135, type: !50)
!409 = !DILocation(line: 135, column: 10, scope: !390)
!410 = !DILocation(line: 135, column: 16, scope: !390)
!411 = !DILocation(line: 135, column: 20, scope: !390)
!412 = !DILocation(line: 135, column: 18, scope: !390)
!413 = !DILocation(line: 137, column: 11, scope: !414)
!414 = distinct !DILexicalBlock(scope: !390, file: !1, line: 137, column: 6)
!415 = !DILocation(line: 137, column: 6, scope: !414)
!416 = !DILocation(line: 137, column: 16, scope: !414)
!417 = !DILocation(line: 137, column: 6, scope: !390)
!418 = !DILocalVariable(name: "lnpre_val", scope: !419, file: !1, line: 138, type: !50)
!419 = distinct !DILexicalBlock(scope: !414, file: !1, line: 137, column: 40)
!420 = !DILocation(line: 138, column: 12, scope: !419)
!421 = !DILocalVariable(name: "lnpre_err", scope: !419, file: !1, line: 139, type: !50)
!422 = !DILocation(line: 139, column: 12, scope: !419)
!423 = !DILocalVariable(name: "M", scope: !419, file: !1, line: 140, type: !52)
!424 = !DILocation(line: 140, column: 19, scope: !419)
!425 = !DILocation(line: 141, column: 8, scope: !426)
!426 = distinct !DILexicalBlock(scope: !419, file: !1, line: 141, column: 8)
!427 = !DILocation(line: 141, column: 10, scope: !426)
!428 = !DILocation(line: 141, column: 8, scope: !419)
!429 = !DILocalVariable(name: "tmp", scope: !430, file: !1, line: 142, type: !50)
!430 = distinct !DILexicalBlock(scope: !426, file: !1, line: 141, column: 17)
!431 = !DILocation(line: 142, column: 14, scope: !430)
!432 = !DILocation(line: 142, column: 25, scope: !430)
!433 = !DILocation(line: 142, column: 24, scope: !430)
!434 = !DILocation(line: 142, column: 32, scope: !430)
!435 = !DILocation(line: 142, column: 28, scope: !430)
!436 = !DILocation(line: 142, column: 27, scope: !430)
!437 = !DILocalVariable(name: "lg_bm1", scope: !430, file: !1, line: 143, type: !52)
!438 = !DILocation(line: 143, column: 21, scope: !430)
!439 = !DILocalVariable(name: "lg_a", scope: !430, file: !1, line: 144, type: !52)
!440 = !DILocation(line: 144, column: 21, scope: !430)
!441 = !DILocation(line: 145, column: 24, scope: !430)
!442 = !DILocation(line: 145, column: 25, scope: !430)
!443 = !DILocation(line: 145, column: 7, scope: !430)
!444 = !DILocation(line: 146, column: 24, scope: !430)
!445 = !DILocation(line: 146, column: 7, scope: !430)
!446 = !DILocation(line: 147, column: 19, scope: !430)
!447 = !DILocation(line: 147, column: 25, scope: !430)
!448 = !DILocation(line: 147, column: 23, scope: !430)
!449 = !DILocation(line: 147, column: 36, scope: !430)
!450 = !DILocation(line: 147, column: 27, scope: !430)
!451 = !DILocation(line: 147, column: 47, scope: !430)
!452 = !DILocation(line: 147, column: 40, scope: !430)
!453 = !DILocation(line: 147, column: 17, scope: !430)
!454 = !DILocation(line: 148, column: 26, scope: !430)
!455 = !DILocation(line: 148, column: 37, scope: !430)
!456 = !DILocation(line: 148, column: 30, scope: !430)
!457 = !DILocation(line: 148, column: 67, scope: !430)
!458 = !DILocation(line: 148, column: 62, scope: !430)
!459 = !DILocation(line: 148, column: 77, scope: !430)
!460 = !DILocation(line: 148, column: 72, scope: !461)
!461 = !DILexicalBlockFile(scope: !430, file: !1, discriminator: 1)
!462 = !DILocation(line: 148, column: 70, scope: !430)
!463 = !DILocation(line: 148, column: 59, scope: !430)
!464 = !DILocation(line: 148, column: 41, scope: !430)
!465 = !DILocation(line: 148, column: 17, scope: !430)
!466 = !DILocation(line: 149, column: 39, scope: !430)
!467 = !DILocation(line: 149, column: 38, scope: !430)
!468 = !DILocation(line: 149, column: 46, scope: !430)
!469 = !DILocation(line: 149, column: 45, scope: !430)
!470 = !DILocation(line: 149, column: 50, scope: !430)
!471 = !DILocation(line: 149, column: 49, scope: !430)
!472 = !DILocation(line: 149, column: 7, scope: !430)
!473 = !DILocation(line: 150, column: 5, scope: !430)
!474 = !DILocalVariable(name: "lg_1mb", scope: !475, file: !1, line: 152, type: !52)
!475 = distinct !DILexicalBlock(scope: !426, file: !1, line: 151, column: 10)
!476 = !DILocation(line: 152, column: 21, scope: !475)
!477 = !DILocalVariable(name: "lg_1pamb", scope: !475, file: !1, line: 153, type: !52)
!478 = !DILocation(line: 153, column: 21, scope: !475)
!479 = !DILocation(line: 154, column: 28, scope: !475)
!480 = !DILocation(line: 154, column: 27, scope: !475)
!481 = !DILocation(line: 154, column: 7, scope: !475)
!482 = !DILocation(line: 155, column: 28, scope: !475)
!483 = !DILocation(line: 155, column: 27, scope: !475)
!484 = !DILocation(line: 155, column: 30, scope: !475)
!485 = !DILocation(line: 155, column: 29, scope: !475)
!486 = !DILocation(line: 155, column: 7, scope: !475)
!487 = !DILocation(line: 156, column: 26, scope: !475)
!488 = !DILocation(line: 156, column: 41, scope: !475)
!489 = !DILocation(line: 156, column: 30, scope: !475)
!490 = !DILocation(line: 156, column: 17, scope: !475)
!491 = !DILocation(line: 157, column: 26, scope: !475)
!492 = !DILocation(line: 157, column: 41, scope: !475)
!493 = !DILocation(line: 157, column: 30, scope: !475)
!494 = !DILocation(line: 157, column: 17, scope: !475)
!495 = !DILocation(line: 158, column: 35, scope: !475)
!496 = !DILocation(line: 158, column: 38, scope: !475)
!497 = !DILocation(line: 158, column: 41, scope: !475)
!498 = !DILocation(line: 158, column: 7, scope: !475)
!499 = !DILocation(line: 161, column: 8, scope: !500)
!500 = distinct !DILexicalBlock(scope: !419, file: !1, line: 161, column: 8)
!501 = !DILocation(line: 161, column: 18, scope: !500)
!502 = !DILocation(line: 161, column: 8, scope: !419)
!503 = !DILocation(line: 162, column: 24, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !1, line: 161, column: 42)
!505 = !DILocation(line: 162, column: 7, scope: !504)
!506 = !DILocation(line: 162, column: 15, scope: !504)
!507 = !DILocation(line: 162, column: 20, scope: !504)
!508 = !DILocation(line: 163, column: 24, scope: !504)
!509 = !DILocation(line: 163, column: 7, scope: !504)
!510 = !DILocation(line: 163, column: 15, scope: !504)
!511 = !DILocation(line: 163, column: 20, scope: !504)
!512 = !DILocation(line: 164, column: 24, scope: !504)
!513 = !DILocation(line: 164, column: 8, scope: !504)
!514 = !DILocation(line: 164, column: 22, scope: !504)
!515 = !DILocation(line: 165, column: 7, scope: !504)
!516 = distinct !{!516, !515}
!517 = !DILocation(line: 165, column: 7, scope: !518)
!518 = !DILexicalBlockFile(scope: !519, file: !1, discriminator: 1)
!519 = distinct !DILexicalBlock(scope: !504, file: !1, line: 165, column: 7)
!520 = !DILocation(line: 166, column: 5, scope: !504)
!521 = !DILocalVariable(name: "epre", scope: !522, file: !1, line: 168, type: !52)
!522 = distinct !DILexicalBlock(scope: !500, file: !1, line: 167, column: 10)
!523 = !DILocation(line: 168, column: 21, scope: !522)
!524 = !DILocalVariable(name: "stat_e", scope: !522, file: !1, line: 169, type: !48)
!525 = !DILocation(line: 169, column: 11, scope: !522)
!526 = !DILocation(line: 169, column: 37, scope: !522)
!527 = !DILocation(line: 169, column: 48, scope: !522)
!528 = !DILocation(line: 169, column: 20, scope: !522)
!529 = !DILocation(line: 170, column: 27, scope: !522)
!530 = !DILocation(line: 170, column: 35, scope: !522)
!531 = !DILocation(line: 170, column: 31, scope: !522)
!532 = !DILocation(line: 170, column: 7, scope: !522)
!533 = !DILocation(line: 170, column: 15, scope: !522)
!534 = !DILocation(line: 170, column: 20, scope: !522)
!535 = !DILocation(line: 171, column: 27, scope: !522)
!536 = !DILocation(line: 171, column: 35, scope: !522)
!537 = !DILocation(line: 171, column: 31, scope: !522)
!538 = !DILocation(line: 171, column: 46, scope: !522)
!539 = !DILocation(line: 171, column: 59, scope: !522)
!540 = !DILocation(line: 171, column: 52, scope: !522)
!541 = !DILocation(line: 171, column: 50, scope: !522)
!542 = !DILocation(line: 171, column: 39, scope: !522)
!543 = !DILocation(line: 171, column: 7, scope: !522)
!544 = !DILocation(line: 171, column: 15, scope: !522)
!545 = !DILocation(line: 171, column: 20, scope: !522)
!546 = !DILocation(line: 172, column: 51, scope: !522)
!547 = !DILocation(line: 172, column: 59, scope: !522)
!548 = !DILocation(line: 172, column: 46, scope: !522)
!549 = !DILocation(line: 172, column: 44, scope: !522)
!550 = !DILocation(line: 172, column: 7, scope: !522)
!551 = !DILocation(line: 172, column: 15, scope: !522)
!552 = !DILocation(line: 172, column: 19, scope: !522)
!553 = !DILocation(line: 173, column: 8, scope: !522)
!554 = !DILocation(line: 173, column: 22, scope: !522)
!555 = !DILocation(line: 174, column: 14, scope: !522)
!556 = !DILocation(line: 174, column: 7, scope: !522)
!557 = !DILocation(line: 176, column: 3, scope: !419)
!558 = !DILocalVariable(name: "omb_lnx", scope: !559, file: !1, line: 178, type: !50)
!559 = distinct !DILexicalBlock(scope: !414, file: !1, line: 177, column: 8)
!560 = !DILocation(line: 178, column: 12, scope: !559)
!561 = !DILocation(line: 178, column: 27, scope: !559)
!562 = !DILocation(line: 178, column: 26, scope: !559)
!563 = !DILocation(line: 178, column: 34, scope: !559)
!564 = !DILocation(line: 178, column: 30, scope: !559)
!565 = !DILocation(line: 178, column: 29, scope: !559)
!566 = !DILocalVariable(name: "lg_1mb", scope: !559, file: !1, line: 179, type: !52)
!567 = !DILocation(line: 179, column: 19, scope: !559)
!568 = !DILocalVariable(name: "sgn_1mb", scope: !559, file: !1, line: 179, type: !50)
!569 = !DILocation(line: 179, column: 37, scope: !559)
!570 = !DILocalVariable(name: "lg_1pamb", scope: !559, file: !1, line: 180, type: !52)
!571 = !DILocation(line: 180, column: 19, scope: !559)
!572 = !DILocalVariable(name: "sgn_1pamb", scope: !559, file: !1, line: 180, type: !50)
!573 = !DILocation(line: 180, column: 37, scope: !559)
!574 = !DILocalVariable(name: "lg_bm1", scope: !559, file: !1, line: 181, type: !52)
!575 = !DILocation(line: 181, column: 19, scope: !559)
!576 = !DILocalVariable(name: "sgn_bm1", scope: !559, file: !1, line: 181, type: !50)
!577 = !DILocation(line: 181, column: 37, scope: !559)
!578 = !DILocalVariable(name: "lg_a", scope: !559, file: !1, line: 182, type: !52)
!579 = !DILocation(line: 182, column: 19, scope: !559)
!580 = !DILocalVariable(name: "sgn_a", scope: !559, file: !1, line: 182, type: !50)
!581 = !DILocation(line: 182, column: 37, scope: !559)
!582 = !DILocalVariable(name: "M1", scope: !559, file: !1, line: 183, type: !52)
!583 = !DILocation(line: 183, column: 19, scope: !559)
!584 = !DILocalVariable(name: "M2", scope: !559, file: !1, line: 183, type: !52)
!585 = !DILocation(line: 183, column: 23, scope: !559)
!586 = !DILocalVariable(name: "lnpre1_val", scope: !559, file: !1, line: 184, type: !50)
!587 = !DILocation(line: 184, column: 12, scope: !559)
!588 = !DILocalVariable(name: "lnpre2_val", scope: !559, file: !1, line: 184, type: !50)
!589 = !DILocation(line: 184, column: 24, scope: !559)
!590 = !DILocalVariable(name: "lnpre1_err", scope: !559, file: !1, line: 185, type: !50)
!591 = !DILocation(line: 185, column: 12, scope: !559)
!592 = !DILocalVariable(name: "lnpre2_err", scope: !559, file: !1, line: 185, type: !50)
!593 = !DILocation(line: 185, column: 24, scope: !559)
!594 = !DILocalVariable(name: "sgpre1", scope: !559, file: !1, line: 186, type: !50)
!595 = !DILocation(line: 186, column: 12, scope: !559)
!596 = !DILocalVariable(name: "sgpre2", scope: !559, file: !1, line: 186, type: !50)
!597 = !DILocation(line: 186, column: 20, scope: !559)
!598 = !DILocation(line: 187, column: 37, scope: !559)
!599 = !DILocation(line: 187, column: 44, scope: !559)
!600 = !DILocation(line: 187, column: 47, scope: !559)
!601 = !DILocation(line: 187, column: 5, scope: !559)
!602 = !DILocation(line: 188, column: 37, scope: !559)
!603 = !DILocation(line: 188, column: 36, scope: !559)
!604 = !DILocation(line: 188, column: 44, scope: !559)
!605 = !DILocation(line: 188, column: 43, scope: !559)
!606 = !DILocation(line: 188, column: 47, scope: !559)
!607 = !DILocation(line: 188, column: 5, scope: !559)
!608 = !DILocation(line: 190, column: 30, scope: !559)
!609 = !DILocation(line: 190, column: 29, scope: !559)
!610 = !DILocation(line: 190, column: 5, scope: !559)
!611 = !DILocation(line: 191, column: 30, scope: !559)
!612 = !DILocation(line: 191, column: 29, scope: !559)
!613 = !DILocation(line: 191, column: 32, scope: !559)
!614 = !DILocation(line: 191, column: 31, scope: !559)
!615 = !DILocation(line: 191, column: 5, scope: !559)
!616 = !DILocation(line: 193, column: 26, scope: !559)
!617 = !DILocation(line: 193, column: 27, scope: !559)
!618 = !DILocation(line: 193, column: 5, scope: !559)
!619 = !DILocation(line: 194, column: 26, scope: !559)
!620 = !DILocation(line: 194, column: 5, scope: !559)
!621 = !DILocation(line: 196, column: 25, scope: !559)
!622 = !DILocation(line: 196, column: 40, scope: !559)
!623 = !DILocation(line: 196, column: 29, scope: !559)
!624 = !DILocation(line: 196, column: 16, scope: !559)
!625 = !DILocation(line: 197, column: 25, scope: !559)
!626 = !DILocation(line: 197, column: 40, scope: !559)
!627 = !DILocation(line: 197, column: 29, scope: !559)
!628 = !DILocation(line: 197, column: 16, scope: !559)
!629 = !DILocation(line: 198, column: 25, scope: !559)
!630 = !DILocation(line: 198, column: 36, scope: !559)
!631 = !DILocation(line: 198, column: 29, scope: !559)
!632 = !DILocation(line: 198, column: 42, scope: !559)
!633 = !DILocation(line: 198, column: 40, scope: !559)
!634 = !DILocation(line: 198, column: 52, scope: !559)
!635 = !DILocation(line: 198, column: 50, scope: !559)
!636 = !DILocation(line: 198, column: 16, scope: !559)
!637 = !DILocation(line: 199, column: 25, scope: !559)
!638 = !DILocation(line: 199, column: 36, scope: !559)
!639 = !DILocation(line: 199, column: 29, scope: !559)
!640 = !DILocation(line: 199, column: 66, scope: !559)
!641 = !DILocation(line: 199, column: 61, scope: !559)
!642 = !DILocation(line: 199, column: 80, scope: !559)
!643 = !DILocation(line: 199, column: 75, scope: !644)
!644 = !DILexicalBlockFile(scope: !559, file: !1, discriminator: 1)
!645 = !DILocation(line: 199, column: 74, scope: !559)
!646 = !DILocation(line: 199, column: 58, scope: !559)
!647 = !DILocation(line: 199, column: 40, scope: !559)
!648 = !DILocation(line: 199, column: 16, scope: !559)
!649 = !DILocation(line: 200, column: 14, scope: !559)
!650 = !DILocation(line: 200, column: 24, scope: !559)
!651 = !DILocation(line: 200, column: 22, scope: !559)
!652 = !DILocation(line: 200, column: 12, scope: !559)
!653 = !DILocation(line: 201, column: 14, scope: !559)
!654 = !DILocation(line: 201, column: 24, scope: !559)
!655 = !DILocation(line: 201, column: 22, scope: !559)
!656 = !DILocation(line: 201, column: 12, scope: !559)
!657 = !DILocation(line: 203, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !559, file: !1, line: 203, column: 8)
!659 = !DILocation(line: 203, column: 19, scope: !658)
!660 = !DILocation(line: 203, column: 42, scope: !658)
!661 = !DILocation(line: 203, column: 45, scope: !662)
!662 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 1)
!663 = !DILocation(line: 203, column: 56, scope: !662)
!664 = !DILocation(line: 203, column: 8, scope: !662)
!665 = !DILocalVariable(name: "max_lnpre_val", scope: !666, file: !1, line: 204, type: !50)
!666 = distinct !DILexicalBlock(scope: !658, file: !1, line: 203, column: 80)
!667 = !DILocation(line: 204, column: 14, scope: !666)
!668 = !DILocation(line: 204, column: 30, scope: !666)
!669 = !DILocation(line: 204, column: 30, scope: !670)
!670 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 1)
!671 = !DILocation(line: 204, column: 30, scope: !672)
!672 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 2)
!673 = !DILocation(line: 204, column: 30, scope: !674)
!674 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 3)
!675 = !DILocation(line: 204, column: 14, scope: !674)
!676 = !DILocalVariable(name: "max_lnpre_err", scope: !666, file: !1, line: 205, type: !50)
!677 = !DILocation(line: 205, column: 14, scope: !666)
!678 = !DILocation(line: 205, column: 30, scope: !666)
!679 = !DILocation(line: 205, column: 30, scope: !670)
!680 = !DILocation(line: 205, column: 30, scope: !672)
!681 = !DILocation(line: 205, column: 30, scope: !674)
!682 = !DILocation(line: 205, column: 14, scope: !674)
!683 = !DILocalVariable(name: "lp1", scope: !666, file: !1, line: 206, type: !50)
!684 = !DILocation(line: 206, column: 14, scope: !666)
!685 = !DILocation(line: 206, column: 20, scope: !666)
!686 = !DILocation(line: 206, column: 33, scope: !666)
!687 = !DILocation(line: 206, column: 31, scope: !666)
!688 = !DILocalVariable(name: "lp2", scope: !666, file: !1, line: 207, type: !50)
!689 = !DILocation(line: 207, column: 14, scope: !666)
!690 = !DILocation(line: 207, column: 20, scope: !666)
!691 = !DILocation(line: 207, column: 33, scope: !666)
!692 = !DILocation(line: 207, column: 31, scope: !666)
!693 = !DILocalVariable(name: "t1", scope: !666, file: !1, line: 208, type: !50)
!694 = !DILocation(line: 208, column: 14, scope: !666)
!695 = !DILocation(line: 208, column: 20, scope: !666)
!696 = !DILocation(line: 208, column: 31, scope: !666)
!697 = !DILocation(line: 208, column: 27, scope: !666)
!698 = !DILocation(line: 208, column: 26, scope: !666)
!699 = !DILocalVariable(name: "t2", scope: !666, file: !1, line: 209, type: !50)
!700 = !DILocation(line: 209, column: 14, scope: !666)
!701 = !DILocation(line: 209, column: 20, scope: !666)
!702 = !DILocation(line: 209, column: 31, scope: !666)
!703 = !DILocation(line: 209, column: 27, scope: !666)
!704 = !DILocation(line: 209, column: 26, scope: !666)
!705 = !DILocation(line: 210, column: 22, scope: !666)
!706 = !DILocation(line: 210, column: 28, scope: !666)
!707 = !DILocation(line: 210, column: 24, scope: !666)
!708 = !DILocation(line: 210, column: 34, scope: !666)
!709 = !DILocation(line: 210, column: 40, scope: !666)
!710 = !DILocation(line: 210, column: 36, scope: !666)
!711 = !DILocation(line: 210, column: 32, scope: !666)
!712 = !DILocation(line: 210, column: 7, scope: !666)
!713 = !DILocation(line: 210, column: 15, scope: !666)
!714 = !DILocation(line: 210, column: 20, scope: !666)
!715 = !DILocation(line: 211, column: 27, scope: !666)
!716 = !DILocation(line: 211, column: 22, scope: !666)
!717 = !DILocation(line: 211, column: 34, scope: !666)
!718 = !DILocation(line: 211, column: 30, scope: !666)
!719 = !DILocation(line: 211, column: 45, scope: !666)
!720 = !DILocation(line: 211, column: 40, scope: !670)
!721 = !DILocation(line: 211, column: 52, scope: !666)
!722 = !DILocation(line: 211, column: 48, scope: !666)
!723 = !DILocation(line: 211, column: 38, scope: !666)
!724 = !DILocation(line: 211, column: 7, scope: !666)
!725 = !DILocation(line: 211, column: 15, scope: !666)
!726 = !DILocation(line: 211, column: 20, scope: !666)
!727 = !DILocation(line: 212, column: 44, scope: !666)
!728 = !DILocation(line: 212, column: 40, scope: !666)
!729 = !DILocation(line: 212, column: 38, scope: !666)
!730 = !DILocation(line: 212, column: 67, scope: !666)
!731 = !DILocation(line: 212, column: 73, scope: !666)
!732 = !DILocation(line: 212, column: 69, scope: !666)
!733 = !DILocation(line: 212, column: 62, scope: !670)
!734 = !DILocation(line: 212, column: 85, scope: !666)
!735 = !DILocation(line: 212, column: 91, scope: !666)
!736 = !DILocation(line: 212, column: 87, scope: !666)
!737 = !DILocation(line: 212, column: 80, scope: !672)
!738 = !DILocation(line: 212, column: 78, scope: !666)
!739 = !DILocation(line: 212, column: 59, scope: !666)
!740 = !DILocation(line: 212, column: 7, scope: !666)
!741 = !DILocation(line: 212, column: 15, scope: !666)
!742 = !DILocation(line: 212, column: 19, scope: !666)
!743 = !DILocation(line: 213, column: 51, scope: !666)
!744 = !DILocation(line: 213, column: 59, scope: !666)
!745 = !DILocation(line: 213, column: 46, scope: !666)
!746 = !DILocation(line: 213, column: 44, scope: !666)
!747 = !DILocation(line: 213, column: 7, scope: !666)
!748 = !DILocation(line: 213, column: 15, scope: !666)
!749 = !DILocation(line: 213, column: 19, scope: !666)
!750 = !DILocation(line: 214, column: 24, scope: !666)
!751 = !DILocation(line: 214, column: 8, scope: !666)
!752 = !DILocation(line: 214, column: 22, scope: !666)
!753 = !DILocation(line: 215, column: 7, scope: !666)
!754 = distinct !{!754, !753}
!755 = !DILocation(line: 215, column: 7, scope: !756)
!756 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 1)
!757 = distinct !DILexicalBlock(scope: !666, file: !1, line: 215, column: 7)
!758 = !DILocation(line: 216, column: 5, scope: !666)
!759 = !DILocalVariable(name: "t1", scope: !760, file: !1, line: 218, type: !50)
!760 = distinct !DILexicalBlock(scope: !658, file: !1, line: 217, column: 10)
!761 = !DILocation(line: 218, column: 14, scope: !760)
!762 = !DILocation(line: 218, column: 19, scope: !760)
!763 = !DILocation(line: 218, column: 30, scope: !760)
!764 = !DILocation(line: 218, column: 26, scope: !760)
!765 = !DILocation(line: 218, column: 25, scope: !760)
!766 = !DILocalVariable(name: "t2", scope: !760, file: !1, line: 219, type: !50)
!767 = !DILocation(line: 219, column: 14, scope: !760)
!768 = !DILocation(line: 219, column: 19, scope: !760)
!769 = !DILocation(line: 219, column: 30, scope: !760)
!770 = !DILocation(line: 219, column: 26, scope: !760)
!771 = !DILocation(line: 219, column: 25, scope: !760)
!772 = !DILocation(line: 220, column: 22, scope: !760)
!773 = !DILocation(line: 220, column: 28, scope: !760)
!774 = !DILocation(line: 220, column: 24, scope: !760)
!775 = !DILocation(line: 220, column: 34, scope: !760)
!776 = !DILocation(line: 220, column: 40, scope: !760)
!777 = !DILocation(line: 220, column: 36, scope: !760)
!778 = !DILocation(line: 220, column: 32, scope: !760)
!779 = !DILocation(line: 220, column: 7, scope: !760)
!780 = !DILocation(line: 220, column: 15, scope: !760)
!781 = !DILocation(line: 220, column: 20, scope: !760)
!782 = !DILocation(line: 221, column: 27, scope: !760)
!783 = !DILocation(line: 221, column: 22, scope: !760)
!784 = !DILocation(line: 221, column: 36, scope: !760)
!785 = !DILocation(line: 221, column: 31, scope: !760)
!786 = !DILocation(line: 221, column: 47, scope: !760)
!787 = !DILocation(line: 221, column: 42, scope: !788)
!788 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 1)
!789 = !DILocation(line: 221, column: 54, scope: !760)
!790 = !DILocation(line: 221, column: 50, scope: !760)
!791 = !DILocation(line: 221, column: 40, scope: !760)
!792 = !DILocation(line: 221, column: 7, scope: !760)
!793 = !DILocation(line: 221, column: 15, scope: !760)
!794 = !DILocation(line: 221, column: 20, scope: !760)
!795 = !DILocation(line: 222, column: 45, scope: !760)
!796 = !DILocation(line: 222, column: 41, scope: !760)
!797 = !DILocation(line: 222, column: 62, scope: !760)
!798 = !DILocation(line: 222, column: 68, scope: !760)
!799 = !DILocation(line: 222, column: 64, scope: !760)
!800 = !DILocation(line: 222, column: 57, scope: !788)
!801 = !DILocation(line: 222, column: 56, scope: !760)
!802 = !DILocation(line: 222, column: 79, scope: !760)
!803 = !DILocation(line: 222, column: 75, scope: !804)
!804 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 2)
!805 = !DILocation(line: 222, column: 96, scope: !760)
!806 = !DILocation(line: 222, column: 102, scope: !760)
!807 = !DILocation(line: 222, column: 98, scope: !760)
!808 = !DILocation(line: 222, column: 91, scope: !809)
!809 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 3)
!810 = !DILocation(line: 222, column: 90, scope: !760)
!811 = !DILocation(line: 222, column: 73, scope: !760)
!812 = !DILocation(line: 222, column: 38, scope: !760)
!813 = !DILocation(line: 222, column: 7, scope: !760)
!814 = !DILocation(line: 222, column: 15, scope: !760)
!815 = !DILocation(line: 222, column: 19, scope: !760)
!816 = !DILocation(line: 223, column: 51, scope: !760)
!817 = !DILocation(line: 223, column: 59, scope: !760)
!818 = !DILocation(line: 223, column: 46, scope: !760)
!819 = !DILocation(line: 223, column: 44, scope: !760)
!820 = !DILocation(line: 223, column: 7, scope: !760)
!821 = !DILocation(line: 223, column: 15, scope: !760)
!822 = !DILocation(line: 223, column: 19, scope: !760)
!823 = !DILocation(line: 224, column: 8, scope: !760)
!824 = !DILocation(line: 224, column: 22, scope: !760)
!825 = !DILocation(line: 225, column: 7, scope: !760)
!826 = !DILocation(line: 228, column: 1, scope: !390)
!827 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F0_series_e", scope: !1, file: !1, line: 240, type: !828, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!828 = !DISubroutineType(types: !829)
!829 = !{!48, !49, !49, !49, !48, !51}
!830 = !DILocalVariable(name: "a", arg: 1, scope: !827, file: !1, line: 240, type: !49)
!831 = !DILocation(line: 240, column: 41, scope: !827)
!832 = !DILocalVariable(name: "b", arg: 2, scope: !827, file: !1, line: 240, type: !49)
!833 = !DILocation(line: 240, column: 57, scope: !827)
!834 = !DILocalVariable(name: "x", arg: 3, scope: !827, file: !1, line: 240, type: !49)
!835 = !DILocation(line: 240, column: 73, scope: !827)
!836 = !DILocalVariable(name: "n_trunc", arg: 4, scope: !827, file: !1, line: 241, type: !48)
!837 = !DILocation(line: 241, column: 35, scope: !827)
!838 = !DILocalVariable(name: "result", arg: 5, scope: !827, file: !1, line: 242, type: !51)
!839 = !DILocation(line: 242, column: 47, scope: !827)
!840 = !DILocalVariable(name: "maxiter", scope: !827, file: !1, line: 245, type: !841)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!842 = !DILocation(line: 245, column: 13, scope: !827)
!843 = !DILocalVariable(name: "an", scope: !827, file: !1, line: 246, type: !50)
!844 = !DILocation(line: 246, column: 10, scope: !827)
!845 = !DILocation(line: 246, column: 15, scope: !827)
!846 = !DILocalVariable(name: "bn", scope: !827, file: !1, line: 247, type: !50)
!847 = !DILocation(line: 247, column: 10, scope: !827)
!848 = !DILocation(line: 247, column: 15, scope: !827)
!849 = !DILocalVariable(name: "n", scope: !827, file: !1, line: 248, type: !50)
!850 = !DILocation(line: 248, column: 10, scope: !827)
!851 = !DILocalVariable(name: "sum", scope: !827, file: !1, line: 249, type: !50)
!852 = !DILocation(line: 249, column: 10, scope: !827)
!853 = !DILocalVariable(name: "del", scope: !827, file: !1, line: 250, type: !50)
!854 = !DILocation(line: 250, column: 10, scope: !827)
!855 = !DILocalVariable(name: "abs_del", scope: !827, file: !1, line: 251, type: !50)
!856 = !DILocation(line: 251, column: 10, scope: !827)
!857 = !DILocalVariable(name: "max_abs_del", scope: !827, file: !1, line: 252, type: !50)
!858 = !DILocation(line: 252, column: 10, scope: !827)
!859 = !DILocalVariable(name: "last_abs_del", scope: !827, file: !1, line: 253, type: !50)
!860 = !DILocation(line: 253, column: 10, scope: !827)
!861 = !DILocation(line: 255, column: 3, scope: !827)
!862 = !DILocation(line: 255, column: 9, scope: !863)
!863 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 1)
!864 = !DILocation(line: 255, column: 22, scope: !863)
!865 = !DILocation(line: 255, column: 17, scope: !863)
!866 = !DILocation(line: 255, column: 16, scope: !863)
!867 = !DILocation(line: 255, column: 27, scope: !863)
!868 = !DILocation(line: 255, column: 45, scope: !863)
!869 = !DILocation(line: 255, column: 48, scope: !870)
!870 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 2)
!871 = !DILocation(line: 255, column: 50, scope: !870)
!872 = !DILocation(line: 255, column: 3, scope: !873)
!873 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 3)
!874 = !DILocalVariable(name: "u", scope: !875, file: !1, line: 257, type: !50)
!875 = distinct !DILexicalBlock(scope: !827, file: !1, line: 255, column: 61)
!876 = !DILocation(line: 257, column: 12, scope: !875)
!877 = !DILocation(line: 257, column: 16, scope: !875)
!878 = !DILocation(line: 257, column: 22, scope: !875)
!879 = !DILocation(line: 257, column: 25, scope: !875)
!880 = !DILocation(line: 257, column: 24, scope: !875)
!881 = !DILocation(line: 257, column: 29, scope: !875)
!882 = !DILocation(line: 257, column: 27, scope: !875)
!883 = !DILocation(line: 257, column: 19, scope: !875)
!884 = !DILocalVariable(name: "abs_u", scope: !875, file: !1, line: 258, type: !50)
!885 = !DILocation(line: 258, column: 12, scope: !875)
!886 = !DILocation(line: 258, column: 25, scope: !875)
!887 = !DILocation(line: 258, column: 20, scope: !875)
!888 = !DILocation(line: 260, column: 8, scope: !889)
!889 = distinct !DILexicalBlock(scope: !875, file: !1, line: 260, column: 8)
!890 = !DILocation(line: 260, column: 14, scope: !889)
!891 = !DILocation(line: 260, column: 20, scope: !889)
!892 = !DILocation(line: 260, column: 24, scope: !893)
!893 = !DILexicalBlockFile(scope: !889, file: !1, discriminator: 1)
!894 = !DILocation(line: 260, column: 50, scope: !893)
!895 = !DILocation(line: 260, column: 49, scope: !893)
!896 = !DILocation(line: 260, column: 36, scope: !893)
!897 = !DILocation(line: 260, column: 8, scope: !893)
!898 = !DILocation(line: 261, column: 21, scope: !899)
!899 = distinct !DILexicalBlock(scope: !889, file: !1, line: 260, column: 58)
!900 = !DILocation(line: 261, column: 7, scope: !899)
!901 = !DILocation(line: 261, column: 15, scope: !899)
!902 = !DILocation(line: 261, column: 19, scope: !899)
!903 = !DILocation(line: 262, column: 26, scope: !899)
!904 = !DILocation(line: 262, column: 21, scope: !899)
!905 = !DILocation(line: 262, column: 7, scope: !899)
!906 = !DILocation(line: 262, column: 15, scope: !899)
!907 = !DILocation(line: 262, column: 19, scope: !899)
!908 = !DILocation(line: 263, column: 7, scope: !899)
!909 = distinct !{!909, !908}
!910 = !DILocation(line: 263, column: 7, scope: !911)
!911 = !DILexicalBlockFile(scope: !912, file: !1, discriminator: 1)
!912 = distinct !DILexicalBlock(scope: !899, file: !1, line: 263, column: 7)
!913 = !DILocation(line: 264, column: 5, scope: !899)
!914 = !DILocation(line: 266, column: 12, scope: !875)
!915 = !DILocation(line: 266, column: 9, scope: !875)
!916 = !DILocation(line: 267, column: 12, scope: !875)
!917 = !DILocation(line: 267, column: 9, scope: !875)
!918 = !DILocation(line: 269, column: 20, scope: !875)
!919 = !DILocation(line: 269, column: 15, scope: !875)
!920 = !DILocation(line: 269, column: 13, scope: !875)
!921 = !DILocation(line: 271, column: 8, scope: !922)
!922 = distinct !DILexicalBlock(scope: !875, file: !1, line: 271, column: 8)
!923 = !DILocation(line: 271, column: 18, scope: !922)
!924 = !DILocation(line: 271, column: 16, scope: !922)
!925 = !DILocation(line: 271, column: 8, scope: !875)
!926 = !DILocation(line: 271, column: 32, scope: !927)
!927 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 1)
!928 = !DILocation(line: 273, column: 20, scope: !875)
!929 = !DILocation(line: 273, column: 18, scope: !875)
!930 = !DILocation(line: 274, column: 20, scope: !875)
!931 = !DILocation(line: 274, column: 20, scope: !932)
!932 = !DILexicalBlockFile(scope: !875, file: !1, discriminator: 1)
!933 = !DILocation(line: 274, column: 20, scope: !934)
!934 = !DILexicalBlockFile(scope: !875, file: !1, discriminator: 2)
!935 = !DILocation(line: 274, column: 20, scope: !936)
!936 = !DILexicalBlockFile(scope: !875, file: !1, discriminator: 3)
!937 = !DILocation(line: 274, column: 18, scope: !936)
!938 = !DILocation(line: 276, column: 8, scope: !875)
!939 = !DILocation(line: 277, column: 8, scope: !875)
!940 = !DILocation(line: 278, column: 8, scope: !875)
!941 = !DILocation(line: 280, column: 8, scope: !942)
!942 = distinct !DILexicalBlock(scope: !875, file: !1, line: 280, column: 8)
!943 = !DILocation(line: 280, column: 11, scope: !942)
!944 = !DILocation(line: 280, column: 18, scope: !942)
!945 = !DILocation(line: 280, column: 21, scope: !946)
!946 = !DILexicalBlockFile(scope: !942, file: !1, discriminator: 1)
!947 = !DILocation(line: 280, column: 24, scope: !946)
!948 = !DILocation(line: 280, column: 8, scope: !946)
!949 = !DILocation(line: 280, column: 32, scope: !950)
!950 = !DILexicalBlockFile(scope: !942, file: !1, discriminator: 2)
!951 = !DILocation(line: 282, column: 8, scope: !952)
!952 = distinct !DILexicalBlock(scope: !875, file: !1, line: 282, column: 8)
!953 = !DILocation(line: 282, column: 16, scope: !952)
!954 = !DILocation(line: 282, column: 21, scope: !952)
!955 = !DILocation(line: 282, column: 24, scope: !956)
!956 = !DILexicalBlockFile(scope: !952, file: !1, discriminator: 1)
!957 = !DILocation(line: 282, column: 29, scope: !956)
!958 = !DILocation(line: 282, column: 26, scope: !956)
!959 = !DILocation(line: 282, column: 8, scope: !956)
!960 = !DILocation(line: 282, column: 38, scope: !961)
!961 = !DILexicalBlockFile(scope: !952, file: !1, discriminator: 2)
!962 = !DILocation(line: 255, column: 3, scope: !963)
!963 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 4)
!964 = distinct !{!964, !861}
!965 = !DILocation(line: 285, column: 17, scope: !827)
!966 = !DILocation(line: 285, column: 3, scope: !827)
!967 = !DILocation(line: 285, column: 11, scope: !827)
!968 = !DILocation(line: 285, column: 15, scope: !827)
!969 = !DILocation(line: 286, column: 35, scope: !827)
!970 = !DILocation(line: 286, column: 33, scope: !827)
!971 = !DILocation(line: 286, column: 39, scope: !827)
!972 = !DILocation(line: 286, column: 37, scope: !827)
!973 = !DILocation(line: 286, column: 3, scope: !827)
!974 = !DILocation(line: 286, column: 11, scope: !827)
!975 = !DILocation(line: 286, column: 15, scope: !827)
!976 = !DILocation(line: 287, column: 6, scope: !977)
!977 = distinct !DILexicalBlock(scope: !827, file: !1, line: 287, column: 6)
!978 = !DILocation(line: 287, column: 8, scope: !977)
!979 = !DILocation(line: 287, column: 6, scope: !827)
!980 = !DILocation(line: 288, column: 5, scope: !977)
!981 = distinct !{!981, !980}
!982 = !DILocation(line: 288, column: 5, scope: !983)
!983 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 1)
!984 = distinct !DILexicalBlock(scope: !977, file: !1, line: 288, column: 5)
!985 = !DILocation(line: 288, column: 5, scope: !986)
!986 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 2)
!987 = !DILocation(line: 290, column: 5, scope: !977)
!988 = !DILocation(line: 291, column: 1, scope: !827)
