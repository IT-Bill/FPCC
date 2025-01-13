; ModuleID = 'beta.c'
source_filename = "beta.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"beta.c\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"gsl_sf_lnbeta_e(x, y, &result)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_beta_e(x, y, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnbeta_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  call void @llvm.dbg.declare(metadata double* %8, metadata !66, metadata !60), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %9, metadata !68, metadata !60), !dbg !69
  %10 = load double, double* %5, align 8, !dbg !70
  %11 = load double, double* %6, align 8, !dbg !71
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !72
  %13 = call i32 @gsl_sf_lnbeta_sgn_e(double %10, double %11, %struct.gsl_sf_result_struct* %12, double* %8), !dbg !73
  store i32 %13, i32* %9, align 4, !dbg !69
  %14 = load double, double* %8, align 8, !dbg !74
  %15 = fcmp oeq double %14, -1.000000e+00, !dbg !76
  br i1 %15, label %16, label %25, !dbg !77

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !78, !llvm.loop !80

; <label>:17:                                     ; preds = %16
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !81
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !81
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !81
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !81
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !81
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !81
  br label %22, !dbg !81, !llvm.loop !84

; <label>:22:                                     ; preds = %17
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 44, i32 1), !dbg !86
  store i32 1, i32* %4, align 4, !dbg !86
  br label %27, !dbg !86
                                                  ; No predecessors!
  br label %24, !dbg !89

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !91

; <label>:25:                                     ; preds = %24, %3
  %26 = load i32, i32* %9, align 4, !dbg !92
  store i32 %26, i32* %4, align 4, !dbg !93
  br label %27, !dbg !93

; <label>:27:                                     ; preds = %25, %22
  %28 = load i32, i32* %4, align 4, !dbg !94
  ret i32 %28, !dbg !94
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnbeta_sgn_e(double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !95 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double*, align 8
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
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca %struct.gsl_sf_result_struct, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !99, metadata !60), !dbg !100
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !101, metadata !60), !dbg !102
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !103, metadata !60), !dbg !104
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !105, metadata !60), !dbg !106
  %34 = load double, double* %6, align 8, !dbg !107
  %35 = fcmp oeq double %34, 0.000000e+00, !dbg !109
  br i1 %35, label %39, label %36, !dbg !110

; <label>:36:                                     ; preds = %4
  %37 = load double, double* %7, align 8, !dbg !111
  %38 = fcmp oeq double %37, 0.000000e+00, !dbg !113
  br i1 %38, label %39, label %49, !dbg !114

; <label>:39:                                     ; preds = %36, %4
  %40 = load double*, double** %9, align 8, !dbg !115
  store double 0.000000e+00, double* %40, align 8, !dbg !117
  br label %41, !dbg !118, !llvm.loop !119

; <label>:41:                                     ; preds = %39
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !120
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !120
  store double 0x7FF8000000000000, double* %43, align 8, !dbg !120
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !120
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !120
  store double 0x7FF8000000000000, double* %45, align 8, !dbg !120
  br label %46, !dbg !120, !llvm.loop !123

; <label>:46:                                     ; preds = %41
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 56, i32 1), !dbg !125
  store i32 1, i32* %5, align 4, !dbg !125
  br label %278, !dbg !125
                                                  ; No predecessors!
  br label %48, !dbg !128

; <label>:48:                                     ; preds = %47
  br label %68, !dbg !130

; <label>:49:                                     ; preds = %36
  %50 = load double, double* %6, align 8, !dbg !131
  %51 = call double @isnegint(double %50), !dbg !134
  %52 = fcmp une double %51, 0.000000e+00, !dbg !134
  br i1 %52, label %57, label %53, !dbg !135

; <label>:53:                                     ; preds = %49
  %54 = load double, double* %7, align 8, !dbg !136
  %55 = call double @isnegint(double %54), !dbg !138
  %56 = fcmp une double %55, 0.000000e+00, !dbg !138
  br i1 %56, label %57, label %67, !dbg !139

; <label>:57:                                     ; preds = %53, %49
  %58 = load double*, double** %9, align 8, !dbg !140
  store double 0.000000e+00, double* %58, align 8, !dbg !142
  br label %59, !dbg !143, !llvm.loop !144

; <label>:59:                                     ; preds = %57
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !145
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !145
  store double 0x7FF8000000000000, double* %61, align 8, !dbg !145
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !145
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !145
  store double 0x7FF8000000000000, double* %63, align 8, !dbg !145
  br label %64, !dbg !145, !llvm.loop !148

; <label>:64:                                     ; preds = %59
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 59, i32 1), !dbg !150
  store i32 1, i32* %5, align 4, !dbg !150
  br label %278, !dbg !150
                                                  ; No predecessors!
  br label %66, !dbg !153

; <label>:66:                                     ; preds = %65
  br label %67, !dbg !155

; <label>:67:                                     ; preds = %66, %53
  br label %68

; <label>:68:                                     ; preds = %67, %48
  %69 = load double, double* %6, align 8, !dbg !156
  %70 = fcmp ogt double %69, 0.000000e+00, !dbg !158
  br i1 %70, label %71, label %196, !dbg !159

; <label>:71:                                     ; preds = %68
  %72 = load double, double* %7, align 8, !dbg !160
  %73 = fcmp ogt double %72, 0.000000e+00, !dbg !162
  br i1 %73, label %74, label %196, !dbg !163

; <label>:74:                                     ; preds = %71
  call void @llvm.dbg.declare(metadata double* %10, metadata !164, metadata !60), !dbg !166
  %75 = load double, double* %6, align 8, !dbg !167
  %76 = load double, double* %7, align 8, !dbg !167
  %77 = fcmp ogt double %75, %76, !dbg !167
  br i1 %77, label %78, label %80, !dbg !167

; <label>:78:                                     ; preds = %74
  %79 = load double, double* %6, align 8, !dbg !168
  br label %82, !dbg !168

; <label>:80:                                     ; preds = %74
  %81 = load double, double* %7, align 8, !dbg !170
  br label %82, !dbg !170

; <label>:82:                                     ; preds = %80, %78
  %83 = phi double [ %79, %78 ], [ %81, %80 ], !dbg !172
  store double %83, double* %10, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata double* %11, metadata !175, metadata !60), !dbg !176
  %84 = load double, double* %6, align 8, !dbg !177
  %85 = load double, double* %7, align 8, !dbg !177
  %86 = fcmp olt double %84, %85, !dbg !177
  br i1 %86, label %87, label %89, !dbg !177

; <label>:87:                                     ; preds = %82
  %88 = load double, double* %6, align 8, !dbg !178
  br label %91, !dbg !178

; <label>:89:                                     ; preds = %82
  %90 = load double, double* %7, align 8, !dbg !179
  br label %91, !dbg !179

; <label>:91:                                     ; preds = %89, %87
  %92 = phi double [ %88, %87 ], [ %90, %89 ], !dbg !180
  store double %92, double* %11, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata double* %12, metadata !182, metadata !60), !dbg !183
  %93 = load double, double* %11, align 8, !dbg !184
  %94 = load double, double* %10, align 8, !dbg !185
  %95 = fdiv double %93, %94, !dbg !186
  store double %95, double* %12, align 8, !dbg !183
  %96 = load double, double* %12, align 8, !dbg !187
  %97 = fcmp olt double %96, 2.000000e-01, !dbg !189
  br i1 %97, label %98, label %195, !dbg !190

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.declare(metadata double* %13, metadata !191, metadata !60), !dbg !193
  call void @llvm.dbg.declare(metadata double* %14, metadata !194, metadata !60), !dbg !195
  call void @llvm.dbg.declare(metadata double* %15, metadata !196, metadata !60), !dbg !197
  call void @llvm.dbg.declare(metadata double* %16, metadata !198, metadata !60), !dbg !199
  call void @llvm.dbg.declare(metadata double* %17, metadata !200, metadata !60), !dbg !201
  call void @llvm.dbg.declare(metadata double* %18, metadata !202, metadata !60), !dbg !203
  call void @llvm.dbg.declare(metadata double* %19, metadata !204, metadata !60), !dbg !205
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !206, metadata !60), !dbg !207
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !208, metadata !60), !dbg !209
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !210, metadata !60), !dbg !211
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !212, metadata !60), !dbg !213
  %99 = load double, double* %6, align 8, !dbg !214
  %100 = call i32 @gsl_sf_gammastar_e(double %99, %struct.gsl_sf_result_struct* %21), !dbg !215
  %101 = load double, double* %7, align 8, !dbg !216
  %102 = call i32 @gsl_sf_gammastar_e(double %101, %struct.gsl_sf_result_struct* %22), !dbg !217
  %103 = load double, double* %6, align 8, !dbg !218
  %104 = load double, double* %7, align 8, !dbg !219
  %105 = fadd double %103, %104, !dbg !220
  %106 = call i32 @gsl_sf_gammastar_e(double %105, %struct.gsl_sf_result_struct* %23), !dbg !221
  %107 = load double, double* %12, align 8, !dbg !222
  %108 = call i32 @gsl_sf_log_1plusx_e(double %107, %struct.gsl_sf_result_struct* %20), !dbg !223
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !224
  %110 = load double, double* %109, align 8, !dbg !224
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !225
  %112 = load double, double* %111, align 8, !dbg !225
  %113 = fmul double %110, %112, !dbg !226
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !227
  %115 = load double, double* %114, align 8, !dbg !227
  %116 = fdiv double %113, %115, !dbg !228
  %117 = fmul double %116, 0x3FF6A09E667F3BCD, !dbg !229
  %118 = fmul double %117, 0x3FFC5BF891B4EF6B, !dbg !230
  %119 = call double @log(double %118) #5, !dbg !231
  store double %119, double* %13, align 8, !dbg !232
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !233
  %121 = load double, double* %120, align 8, !dbg !233
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !234
  %123 = load double, double* %122, align 8, !dbg !234
  %124 = fdiv double %121, %123, !dbg !235
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !236
  %126 = load double, double* %125, align 8, !dbg !236
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !237
  %128 = load double, double* %127, align 8, !dbg !237
  %129 = fdiv double %126, %128, !dbg !238
  %130 = fadd double %124, %129, !dbg !239
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !240
  %132 = load double, double* %131, align 8, !dbg !240
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !241
  %134 = load double, double* %133, align 8, !dbg !241
  %135 = fdiv double %132, %134, !dbg !242
  %136 = fadd double %130, %135, !dbg !243
  store double %136, double* %14, align 8, !dbg !244
  %137 = load double, double* %11, align 8, !dbg !245
  %138 = load double, double* %12, align 8, !dbg !246
  %139 = call double @log(double %138) #5, !dbg !247
  %140 = fmul double %137, %139, !dbg !248
  store double %140, double* %17, align 8, !dbg !249
  %141 = load double, double* %11, align 8, !dbg !250
  %142 = call double @log(double %141) #5, !dbg !251
  %143 = fmul double 5.000000e-01, %142, !dbg !252
  store double %143, double* %18, align 8, !dbg !253
  %144 = load double, double* %6, align 8, !dbg !254
  %145 = load double, double* %7, align 8, !dbg !255
  %146 = fadd double %144, %145, !dbg !256
  %147 = fsub double %146, 5.000000e-01, !dbg !257
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !258
  %149 = load double, double* %148, align 8, !dbg !258
  %150 = fmul double %147, %149, !dbg !259
  store double %150, double* %19, align 8, !dbg !260
  %151 = load double, double* %17, align 8, !dbg !261
  %152 = load double, double* %18, align 8, !dbg !262
  %153 = fsub double %151, %152, !dbg !263
  %154 = load double, double* %19, align 8, !dbg !264
  %155 = fsub double %153, %154, !dbg !265
  store double %155, double* %15, align 8, !dbg !266
  %156 = load double, double* %17, align 8, !dbg !267
  %157 = call double @fabs(double %156) #1, !dbg !268
  %158 = load double, double* %18, align 8, !dbg !269
  %159 = call double @fabs(double %158) #1, !dbg !270
  %160 = fadd double %157, %159, !dbg !272
  %161 = load double, double* %19, align 8, !dbg !273
  %162 = call double @fabs(double %161) #1, !dbg !274
  %163 = fadd double %160, %162, !dbg !276
  %164 = fmul double 0x3CB0000000000000, %163, !dbg !277
  store double %164, double* %16, align 8, !dbg !278
  %165 = load double, double* %6, align 8, !dbg !279
  %166 = load double, double* %7, align 8, !dbg !280
  %167 = fadd double %165, %166, !dbg !281
  %168 = fsub double %167, 5.000000e-01, !dbg !282
  %169 = call double @fabs(double %168) #1, !dbg !283
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !284
  %171 = load double, double* %170, align 8, !dbg !284
  %172 = fmul double %169, %171, !dbg !285
  %173 = load double, double* %16, align 8, !dbg !286
  %174 = fadd double %173, %172, !dbg !286
  store double %174, double* %16, align 8, !dbg !286
  %175 = load double, double* %13, align 8, !dbg !287
  %176 = load double, double* %15, align 8, !dbg !288
  %177 = fadd double %175, %176, !dbg !289
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !290
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !291
  store double %177, double* %179, align 8, !dbg !292
  %180 = load double, double* %14, align 8, !dbg !293
  %181 = load double, double* %16, align 8, !dbg !294
  %182 = fadd double %180, %181, !dbg !295
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !296
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %183, i32 0, i32 1, !dbg !297
  store double %182, double* %184, align 8, !dbg !298
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !299
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 0, !dbg !300
  %187 = load double, double* %186, align 8, !dbg !300
  %188 = call double @fabs(double %187) #1, !dbg !301
  %189 = fmul double 0x3CC0000000000000, %188, !dbg !302
  %190 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !303
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %190, i32 0, i32 1, !dbg !304
  %192 = load double, double* %191, align 8, !dbg !305
  %193 = fadd double %192, %189, !dbg !305
  store double %193, double* %191, align 8, !dbg !305
  %194 = load double*, double** %9, align 8, !dbg !306
  store double 1.000000e+00, double* %194, align 8, !dbg !307
  store i32 0, i32* %5, align 4, !dbg !308
  br label %278, !dbg !308

; <label>:195:                                    ; preds = %91
  br label %196, !dbg !309

; <label>:196:                                    ; preds = %195, %71, %68
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !310, metadata !60), !dbg !312
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !313, metadata !60), !dbg !314
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %26, metadata !315, metadata !60), !dbg !316
  call void @llvm.dbg.declare(metadata double* %27, metadata !317, metadata !60), !dbg !318
  call void @llvm.dbg.declare(metadata double* %28, metadata !319, metadata !60), !dbg !320
  call void @llvm.dbg.declare(metadata double* %29, metadata !321, metadata !60), !dbg !322
  call void @llvm.dbg.declare(metadata double* %30, metadata !323, metadata !60), !dbg !324
  %197 = load double, double* %6, align 8, !dbg !325
  %198 = load double, double* %7, align 8, !dbg !326
  %199 = fadd double %197, %198, !dbg !327
  store double %199, double* %30, align 8, !dbg !324
  call void @llvm.dbg.declare(metadata i32* %31, metadata !328, metadata !60), !dbg !329
  %200 = load double, double* %6, align 8, !dbg !330
  %201 = call i32 @gsl_sf_lngamma_sgn_e(double %200, %struct.gsl_sf_result_struct* %24, double* %27), !dbg !331
  store i32 %201, i32* %31, align 4, !dbg !329
  call void @llvm.dbg.declare(metadata i32* %32, metadata !332, metadata !60), !dbg !333
  %202 = load double, double* %7, align 8, !dbg !334
  %203 = call i32 @gsl_sf_lngamma_sgn_e(double %202, %struct.gsl_sf_result_struct* %25, double* %28), !dbg !335
  store i32 %203, i32* %32, align 4, !dbg !333
  call void @llvm.dbg.declare(metadata i32* %33, metadata !336, metadata !60), !dbg !337
  %204 = load double, double* %30, align 8, !dbg !338
  %205 = call i32 @gsl_sf_lngamma_sgn_e(double %204, %struct.gsl_sf_result_struct* %26, double* %29), !dbg !339
  store i32 %205, i32* %33, align 4, !dbg !337
  %206 = load double, double* %27, align 8, !dbg !340
  %207 = load double, double* %28, align 8, !dbg !341
  %208 = fmul double %206, %207, !dbg !342
  %209 = load double, double* %29, align 8, !dbg !343
  %210 = fmul double %208, %209, !dbg !344
  %211 = load double*, double** %9, align 8, !dbg !345
  store double %210, double* %211, align 8, !dbg !346
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !347
  %213 = load double, double* %212, align 8, !dbg !347
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !348
  %215 = load double, double* %214, align 8, !dbg !348
  %216 = fadd double %213, %215, !dbg !349
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !350
  %218 = load double, double* %217, align 8, !dbg !350
  %219 = fsub double %216, %218, !dbg !351
  %220 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !352
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %220, i32 0, i32 0, !dbg !353
  store double %219, double* %221, align 8, !dbg !354
  %222 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !355
  %223 = load double, double* %222, align 8, !dbg !355
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !356
  %225 = load double, double* %224, align 8, !dbg !356
  %226 = fadd double %223, %225, !dbg !357
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !358
  %228 = load double, double* %227, align 8, !dbg !358
  %229 = fadd double %226, %228, !dbg !359
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !360
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 1, !dbg !361
  store double %229, double* %231, align 8, !dbg !362
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !363
  %233 = load double, double* %232, align 8, !dbg !363
  %234 = call double @fabs(double %233) #1, !dbg !364
  %235 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !365
  %236 = load double, double* %235, align 8, !dbg !365
  %237 = call double @fabs(double %236) #1, !dbg !366
  %238 = fadd double %234, %237, !dbg !368
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !369
  %240 = load double, double* %239, align 8, !dbg !369
  %241 = call double @fabs(double %240) #1, !dbg !370
  %242 = fadd double %238, %241, !dbg !372
  %243 = fmul double 0x3CC0000000000000, %242, !dbg !373
  %244 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !374
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %244, i32 0, i32 1, !dbg !375
  %246 = load double, double* %245, align 8, !dbg !376
  %247 = fadd double %246, %243, !dbg !376
  store double %247, double* %245, align 8, !dbg !376
  %248 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !377
  %249 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %248, i32 0, i32 0, !dbg !378
  %250 = load double, double* %249, align 8, !dbg !378
  %251 = call double @fabs(double %250) #1, !dbg !379
  %252 = fmul double 0x3CC0000000000000, %251, !dbg !380
  %253 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !381
  %254 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %253, i32 0, i32 1, !dbg !382
  %255 = load double, double* %254, align 8, !dbg !383
  %256 = fadd double %255, %252, !dbg !383
  store double %256, double* %254, align 8, !dbg !383
  %257 = load i32, i32* %31, align 4, !dbg !384
  %258 = icmp ne i32 %257, 0, !dbg !384
  br i1 %258, label %259, label %261, !dbg !384

; <label>:259:                                    ; preds = %196
  %260 = load i32, i32* %31, align 4, !dbg !385
  br label %276, !dbg !385

; <label>:261:                                    ; preds = %196
  %262 = load i32, i32* %32, align 4, !dbg !386
  %263 = icmp ne i32 %262, 0, !dbg !386
  br i1 %263, label %264, label %266, !dbg !386

; <label>:264:                                    ; preds = %261
  %265 = load i32, i32* %32, align 4, !dbg !387
  br label %274, !dbg !387

; <label>:266:                                    ; preds = %261
  %267 = load i32, i32* %33, align 4, !dbg !389
  %268 = icmp ne i32 %267, 0, !dbg !389
  br i1 %268, label %269, label %271, !dbg !389

; <label>:269:                                    ; preds = %266
  %270 = load i32, i32* %33, align 4, !dbg !391
  br label %272, !dbg !391

; <label>:271:                                    ; preds = %266
  br label %272, !dbg !393

; <label>:272:                                    ; preds = %271, %269
  %273 = phi i32 [ %270, %269 ], [ 0, %271 ], !dbg !395
  br label %274, !dbg !395

; <label>:274:                                    ; preds = %272, %264
  %275 = phi i32 [ %265, %264 ], [ %273, %272 ], !dbg !397
  br label %276, !dbg !397

; <label>:276:                                    ; preds = %274, %259
  %277 = phi i32 [ %260, %259 ], [ %275, %274 ], !dbg !399
  store i32 %277, i32* %5, align 4, !dbg !401
  br label %278, !dbg !401

; <label>:278:                                    ; preds = %276, %98, %64, %46
  %279 = load i32, i32* %5, align 4, !dbg !402
  ret i32 %279, !dbg !402
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal double @isnegint(double) #0 !dbg !403 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !406, metadata !60), !dbg !407
  %3 = load double, double* %2, align 8, !dbg !408
  %4 = fcmp olt double %3, 0.000000e+00, !dbg !409
  br i1 %4, label %5, label %10, !dbg !410

; <label>:5:                                      ; preds = %1
  %6 = load double, double* %2, align 8, !dbg !411
  %7 = load double, double* %2, align 8, !dbg !413
  %8 = call double @floor(double %7) #1, !dbg !414
  %9 = fcmp oeq double %6, %8, !dbg !415
  br label %10

; <label>:10:                                     ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32, !dbg !416
  %13 = sitofp i32 %12 to double, !dbg !418
  ret double %13, !dbg !419
}

declare i32 @gsl_sf_gammastar_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_beta_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !420 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !421, metadata !60), !dbg !422
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !423, metadata !60), !dbg !424
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !425, metadata !60), !dbg !426
  %15 = load double, double* %5, align 8, !dbg !427
  %16 = fcmp ogt double %15, 0.000000e+00, !dbg !429
  br i1 %16, label %17, label %97, !dbg !430

; <label>:17:                                     ; preds = %3
  %18 = load double, double* %6, align 8, !dbg !431
  %19 = fcmp ogt double %18, 0.000000e+00, !dbg !433
  br i1 %19, label %20, label %97, !dbg !434

; <label>:20:                                     ; preds = %17
  %21 = load double, double* %5, align 8, !dbg !435
  %22 = fcmp olt double %21, 5.000000e+01, !dbg !437
  br i1 %22, label %23, label %97, !dbg !438

; <label>:23:                                     ; preds = %20
  %24 = load double, double* %6, align 8, !dbg !439
  %25 = fcmp olt double %24, 5.000000e+01, !dbg !441
  br i1 %25, label %26, label %97, !dbg !442

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !443, metadata !60), !dbg !445
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !446, metadata !60), !dbg !447
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !448, metadata !60), !dbg !449
  %27 = load double, double* %5, align 8, !dbg !450
  %28 = call i32 @gsl_sf_gamma_e(double %27, %struct.gsl_sf_result_struct* %8), !dbg !451
  %29 = load double, double* %6, align 8, !dbg !452
  %30 = call i32 @gsl_sf_gamma_e(double %29, %struct.gsl_sf_result_struct* %9), !dbg !453
  %31 = load double, double* %5, align 8, !dbg !454
  %32 = load double, double* %6, align 8, !dbg !455
  %33 = fadd double %31, %32, !dbg !456
  %34 = call i32 @gsl_sf_gamma_e(double %33, %struct.gsl_sf_result_struct* %10), !dbg !457
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !458
  %36 = load double, double* %35, align 8, !dbg !458
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !459
  %38 = load double, double* %37, align 8, !dbg !459
  %39 = fmul double %36, %38, !dbg !460
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !461
  %41 = load double, double* %40, align 8, !dbg !461
  %42 = fdiv double %39, %41, !dbg !462
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !463
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !464
  store double %42, double* %44, align 8, !dbg !465
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !466
  %46 = load double, double* %45, align 8, !dbg !466
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !467
  %48 = load double, double* %47, align 8, !dbg !467
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !468
  %50 = load double, double* %49, align 8, !dbg !468
  %51 = fdiv double %48, %50, !dbg !469
  %52 = call double @fabs(double %51) #1, !dbg !470
  %53 = fmul double %46, %52, !dbg !471
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !472
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !473
  store double %53, double* %55, align 8, !dbg !474
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !475
  %57 = load double, double* %56, align 8, !dbg !475
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !476
  %59 = load double, double* %58, align 8, !dbg !476
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !477
  %61 = load double, double* %60, align 8, !dbg !477
  %62 = fdiv double %59, %61, !dbg !478
  %63 = call double @fabs(double %62) #1, !dbg !479
  %64 = fmul double %57, %63, !dbg !480
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !481
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 1, !dbg !482
  %67 = load double, double* %66, align 8, !dbg !483
  %68 = fadd double %67, %64, !dbg !483
  store double %68, double* %66, align 8, !dbg !483
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !484
  %70 = load double, double* %69, align 8, !dbg !484
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !485
  %72 = load double, double* %71, align 8, !dbg !485
  %73 = fmul double %70, %72, !dbg !486
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !487
  %75 = load double, double* %74, align 8, !dbg !487
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !488
  %77 = load double, double* %76, align 8, !dbg !488
  %78 = fmul double %75, %77, !dbg !489
  %79 = fdiv double %73, %78, !dbg !490
  %80 = call double @fabs(double %79) #1, !dbg !491
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !492
  %82 = load double, double* %81, align 8, !dbg !492
  %83 = fmul double %80, %82, !dbg !493
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !494
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !495
  %86 = load double, double* %85, align 8, !dbg !496
  %87 = fadd double %86, %83, !dbg !496
  store double %87, double* %85, align 8, !dbg !496
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !497
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !498
  %90 = load double, double* %89, align 8, !dbg !498
  %91 = call double @fabs(double %90) #1, !dbg !499
  %92 = fmul double 0x3CC0000000000000, %91, !dbg !500
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !501
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 1, !dbg !502
  %95 = load double, double* %94, align 8, !dbg !503
  %96 = fadd double %95, %92, !dbg !503
  store double %96, double* %94, align 8, !dbg !503
  store i32 0, i32* %4, align 4, !dbg !504
  br label %151, !dbg !504

; <label>:97:                                     ; preds = %23, %20, %17, %3
  %98 = load double, double* %5, align 8, !dbg !505
  %99 = call double @isnegint(double %98), !dbg !507
  %100 = fcmp une double %99, 0.000000e+00, !dbg !507
  br i1 %100, label %105, label %101, !dbg !508

; <label>:101:                                    ; preds = %97
  %102 = load double, double* %6, align 8, !dbg !509
  %103 = call double @isnegint(double %102), !dbg !511
  %104 = fcmp une double %103, 0.000000e+00, !dbg !511
  br i1 %104, label %105, label %114, !dbg !512

; <label>:105:                                    ; preds = %101, %97
  br label %106, !dbg !513, !llvm.loop !515

; <label>:106:                                    ; preds = %105
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !516
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !516
  store double 0x7FF8000000000000, double* %108, align 8, !dbg !516
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !516
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !516
  store double 0x7FF8000000000000, double* %110, align 8, !dbg !516
  br label %111, !dbg !516, !llvm.loop !519

; <label>:111:                                    ; preds = %106
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 134, i32 1), !dbg !521
  store i32 1, i32* %4, align 4, !dbg !521
  br label %151, !dbg !521
                                                  ; No predecessors!
  br label %113, !dbg !524

; <label>:113:                                    ; preds = %112
  br label %150, !dbg !526

; <label>:114:                                    ; preds = %101
  %115 = load double, double* %5, align 8, !dbg !527
  %116 = load double, double* %6, align 8, !dbg !530
  %117 = fadd double %115, %116, !dbg !531
  %118 = call double @isnegint(double %117), !dbg !532
  %119 = fcmp une double %118, 0.000000e+00, !dbg !532
  br i1 %119, label %120, label %125, !dbg !532

; <label>:120:                                    ; preds = %114
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !533
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !535
  store double 0.000000e+00, double* %122, align 8, !dbg !536
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !537
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 1, !dbg !538
  store double 0.000000e+00, double* %124, align 8, !dbg !539
  store i32 0, i32* %4, align 4, !dbg !540
  br label %151, !dbg !540

; <label>:125:                                    ; preds = %114
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !541, metadata !60), !dbg !543
  call void @llvm.dbg.declare(metadata double* %12, metadata !544, metadata !60), !dbg !545
  call void @llvm.dbg.declare(metadata i32* %13, metadata !546, metadata !60), !dbg !547
  %126 = load double, double* %5, align 8, !dbg !548
  %127 = load double, double* %6, align 8, !dbg !549
  %128 = call i32 @gsl_sf_lnbeta_sgn_e(double %126, double %127, %struct.gsl_sf_result_struct* %11, double* %12), !dbg !550
  store i32 %128, i32* %13, align 4, !dbg !547
  %129 = load i32, i32* %13, align 4, !dbg !551
  %130 = icmp eq i32 %129, 0, !dbg !553
  br i1 %130, label %131, label %144, !dbg !554

; <label>:131:                                    ; preds = %125
  call void @llvm.dbg.declare(metadata i32* %14, metadata !555, metadata !60), !dbg !557
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !558
  %133 = load double, double* %132, align 8, !dbg !558
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !559
  %135 = load double, double* %134, align 8, !dbg !559
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !560
  %137 = call i32 @gsl_sf_exp_err_e(double %133, double %135, %struct.gsl_sf_result_struct* %136), !dbg !561
  store i32 %137, i32* %14, align 4, !dbg !557
  %138 = load double, double* %12, align 8, !dbg !562
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !563
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 0, !dbg !564
  %141 = load double, double* %140, align 8, !dbg !565
  %142 = fmul double %141, %138, !dbg !565
  store double %142, double* %140, align 8, !dbg !565
  %143 = load i32, i32* %14, align 4, !dbg !566
  store i32 %143, i32* %4, align 4, !dbg !567
  br label %151, !dbg !567

; <label>:144:                                    ; preds = %125
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !568
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 0, !dbg !570
  store double 0.000000e+00, double* %146, align 8, !dbg !571
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !572
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 1, !dbg !573
  store double 0.000000e+00, double* %148, align 8, !dbg !574
  %149 = load i32, i32* %13, align 4, !dbg !575
  store i32 %149, i32* %4, align 4, !dbg !576
  br label %151, !dbg !576

; <label>:150:                                    ; preds = %113
  br label %151

; <label>:151:                                    ; preds = %26, %111, %120, %131, %144, %150
  %152 = load i32, i32* %4, align 4, !dbg !577
  ret i32 %152, !dbg !577
}

declare i32 @gsl_sf_gamma_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_lnbeta(double, double) #0 !dbg !578 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !581, metadata !60), !dbg !582
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !583, metadata !60), !dbg !584
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !585, metadata !60), !dbg !586
  call void @llvm.dbg.declare(metadata i32* %7, metadata !587, metadata !60), !dbg !586
  %8 = load double, double* %4, align 8, !dbg !586
  %9 = load double, double* %5, align 8, !dbg !586
  %10 = call i32 @gsl_sf_lnbeta_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !586
  store i32 %10, i32* %7, align 4, !dbg !586
  %11 = load i32, i32* %7, align 4, !dbg !588
  %12 = icmp ne i32 %11, 0, !dbg !588
  br i1 %12, label %13, label %19, !dbg !586

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !590, !llvm.loop !593

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !595
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 163, i32 %15), !dbg !595
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !595
  %17 = load double, double* %16, align 8, !dbg !595
  store double %17, double* %3, align 8, !dbg !595
  br label %22, !dbg !595
                                                  ; No predecessors!
  br label %19, !dbg !598

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !600
  %21 = load double, double* %20, align 8, !dbg !600
  store double %21, double* %3, align 8, !dbg !600
  br label %22, !dbg !600

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !602
  ret double %23, !dbg !602
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_beta(double, double) #0 !dbg !603 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !604, metadata !60), !dbg !605
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !606, metadata !60), !dbg !607
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !608, metadata !60), !dbg !609
  call void @llvm.dbg.declare(metadata i32* %7, metadata !610, metadata !60), !dbg !609
  %8 = load double, double* %4, align 8, !dbg !609
  %9 = load double, double* %5, align 8, !dbg !609
  %10 = call i32 @gsl_sf_beta_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !609
  store i32 %10, i32* %7, align 4, !dbg !609
  %11 = load i32, i32* %7, align 4, !dbg !611
  %12 = icmp ne i32 %11, 0, !dbg !611
  br i1 %12, label %13, label %19, !dbg !609

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !613, !llvm.loop !616

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !618
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 168, i32 %15), !dbg !618
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !618
  %17 = load double, double* %16, align 8, !dbg !618
  store double %17, double* %3, align 8, !dbg !618
  br label %22, !dbg !618
                                                  ; No predecessors!
  br label %19, !dbg !621

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !623
  %21 = load double, double* %20, align 8, !dbg !623
  store double %21, double* %3, align 8, !dbg !623
  br label %22, !dbg !623

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !625
  ret double %23, !dbg !625
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "beta.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_lnbeta_e", scope: !1, file: !1, line: 39, type: !46, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
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
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 39, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 39, column: 30, scope: !45)
!62 = !DILocalVariable(name: "y", arg: 2, scope: !45, file: !1, line: 39, type: !49)
!63 = !DILocation(line: 39, column: 46, scope: !45)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !45, file: !1, line: 39, type: !51)
!65 = !DILocation(line: 39, column: 65, scope: !45)
!66 = !DILocalVariable(name: "sgn", scope: !45, file: !1, line: 41, type: !50)
!67 = !DILocation(line: 41, column: 10, scope: !45)
!68 = !DILocalVariable(name: "status", scope: !45, file: !1, line: 42, type: !48)
!69 = !DILocation(line: 42, column: 7, scope: !45)
!70 = !DILocation(line: 42, column: 36, scope: !45)
!71 = !DILocation(line: 42, column: 38, scope: !45)
!72 = !DILocation(line: 42, column: 40, scope: !45)
!73 = !DILocation(line: 42, column: 16, scope: !45)
!74 = !DILocation(line: 43, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !45, file: !1, line: 43, column: 7)
!76 = !DILocation(line: 43, column: 11, scope: !75)
!77 = !DILocation(line: 43, column: 7, scope: !45)
!78 = !DILocation(line: 44, column: 5, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 43, column: 18)
!80 = distinct !{!80, !78}
!81 = !DILocation(line: 44, column: 5, scope: !82)
!82 = !DILexicalBlockFile(scope: !83, file: !1, discriminator: 1)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 44, column: 5)
!84 = distinct !{!84, !85}
!85 = !DILocation(line: 44, column: 5, scope: !83)
!86 = !DILocation(line: 44, column: 5, scope: !87)
!87 = !DILexicalBlockFile(scope: !88, file: !1, discriminator: 2)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 44, column: 5)
!89 = !DILocation(line: 44, column: 5, scope: !90)
!90 = !DILexicalBlockFile(scope: !83, file: !1, discriminator: 3)
!91 = !DILocation(line: 45, column: 3, scope: !79)
!92 = !DILocation(line: 46, column: 10, scope: !45)
!93 = !DILocation(line: 46, column: 3, scope: !45)
!94 = !DILocation(line: 47, column: 1, scope: !45)
!95 = distinct !DISubprogram(name: "gsl_sf_lnbeta_sgn_e", scope: !1, file: !1, line: 50, type: !96, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!96 = !DISubroutineType(types: !97)
!97 = !{!48, !49, !49, !51, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!99 = !DILocalVariable(name: "x", arg: 1, scope: !95, file: !1, line: 50, type: !49)
!100 = !DILocation(line: 50, column: 34, scope: !95)
!101 = !DILocalVariable(name: "y", arg: 2, scope: !95, file: !1, line: 50, type: !49)
!102 = !DILocation(line: 50, column: 50, scope: !95)
!103 = !DILocalVariable(name: "result", arg: 3, scope: !95, file: !1, line: 50, type: !51)
!104 = !DILocation(line: 50, column: 69, scope: !95)
!105 = !DILocalVariable(name: "sgn", arg: 4, scope: !95, file: !1, line: 50, type: !98)
!106 = !DILocation(line: 50, column: 86, scope: !95)
!107 = !DILocation(line: 54, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !95, file: !1, line: 54, column: 6)
!109 = !DILocation(line: 54, column: 8, scope: !108)
!110 = !DILocation(line: 54, column: 15, scope: !108)
!111 = !DILocation(line: 54, column: 18, scope: !112)
!112 = !DILexicalBlockFile(scope: !108, file: !1, discriminator: 1)
!113 = !DILocation(line: 54, column: 20, scope: !112)
!114 = !DILocation(line: 54, column: 6, scope: !112)
!115 = !DILocation(line: 55, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !1, line: 54, column: 28)
!117 = !DILocation(line: 55, column: 10, scope: !116)
!118 = !DILocation(line: 56, column: 5, scope: !116)
!119 = distinct !{!119, !118}
!120 = !DILocation(line: 56, column: 5, scope: !121)
!121 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 1)
!122 = distinct !DILexicalBlock(scope: !116, file: !1, line: 56, column: 5)
!123 = distinct !{!123, !124}
!124 = !DILocation(line: 56, column: 5, scope: !122)
!125 = !DILocation(line: 56, column: 5, scope: !126)
!126 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 2)
!127 = distinct !DILexicalBlock(scope: !122, file: !1, line: 56, column: 5)
!128 = !DILocation(line: 56, column: 5, scope: !129)
!129 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 3)
!130 = !DILocation(line: 57, column: 3, scope: !116)
!131 = !DILocation(line: 57, column: 23, scope: !132)
!132 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 1)
!133 = distinct !DILexicalBlock(scope: !108, file: !1, line: 57, column: 14)
!134 = !DILocation(line: 57, column: 14, scope: !132)
!135 = !DILocation(line: 57, column: 26, scope: !132)
!136 = !DILocation(line: 57, column: 38, scope: !137)
!137 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 2)
!138 = !DILocation(line: 57, column: 29, scope: !137)
!139 = !DILocation(line: 57, column: 14, scope: !137)
!140 = !DILocation(line: 58, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !133, file: !1, line: 57, column: 42)
!142 = !DILocation(line: 58, column: 10, scope: !141)
!143 = !DILocation(line: 59, column: 5, scope: !141)
!144 = distinct !{!144, !143}
!145 = !DILocation(line: 59, column: 5, scope: !146)
!146 = !DILexicalBlockFile(scope: !147, file: !1, discriminator: 1)
!147 = distinct !DILexicalBlock(scope: !141, file: !1, line: 59, column: 5)
!148 = distinct !{!148, !149}
!149 = !DILocation(line: 59, column: 5, scope: !147)
!150 = !DILocation(line: 59, column: 5, scope: !151)
!151 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 2)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 59, column: 5)
!153 = !DILocation(line: 59, column: 5, scope: !154)
!154 = !DILexicalBlockFile(scope: !147, file: !1, discriminator: 3)
!155 = !DILocation(line: 60, column: 3, scope: !141)
!156 = !DILocation(line: 64, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !95, file: !1, line: 64, column: 7)
!158 = !DILocation(line: 64, column: 9, scope: !157)
!159 = !DILocation(line: 64, column: 13, scope: !157)
!160 = !DILocation(line: 64, column: 16, scope: !161)
!161 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 1)
!162 = !DILocation(line: 64, column: 18, scope: !161)
!163 = !DILocation(line: 64, column: 7, scope: !161)
!164 = !DILocalVariable(name: "max", scope: !165, file: !1, line: 65, type: !49)
!165 = distinct !DILexicalBlock(scope: !157, file: !1, line: 64, column: 23)
!166 = !DILocation(line: 65, column: 18, scope: !165)
!167 = !DILocation(line: 65, column: 24, scope: !165)
!168 = !DILocation(line: 65, column: 24, scope: !169)
!169 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 1)
!170 = !DILocation(line: 65, column: 24, scope: !171)
!171 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 2)
!172 = !DILocation(line: 65, column: 24, scope: !173)
!173 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 3)
!174 = !DILocation(line: 65, column: 18, scope: !173)
!175 = !DILocalVariable(name: "min", scope: !165, file: !1, line: 66, type: !49)
!176 = !DILocation(line: 66, column: 18, scope: !165)
!177 = !DILocation(line: 66, column: 24, scope: !165)
!178 = !DILocation(line: 66, column: 24, scope: !169)
!179 = !DILocation(line: 66, column: 24, scope: !171)
!180 = !DILocation(line: 66, column: 24, scope: !173)
!181 = !DILocation(line: 66, column: 18, scope: !173)
!182 = !DILocalVariable(name: "rat", scope: !165, file: !1, line: 67, type: !49)
!183 = !DILocation(line: 67, column: 18, scope: !165)
!184 = !DILocation(line: 67, column: 24, scope: !165)
!185 = !DILocation(line: 67, column: 28, scope: !165)
!186 = !DILocation(line: 67, column: 27, scope: !165)
!187 = !DILocation(line: 69, column: 8, scope: !188)
!188 = distinct !DILexicalBlock(scope: !165, file: !1, line: 69, column: 8)
!189 = !DILocation(line: 69, column: 12, scope: !188)
!190 = !DILocation(line: 69, column: 8, scope: !165)
!191 = !DILocalVariable(name: "lnpre_val", scope: !192, file: !1, line: 73, type: !50)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 69, column: 19)
!193 = !DILocation(line: 73, column: 14, scope: !192)
!194 = !DILocalVariable(name: "lnpre_err", scope: !192, file: !1, line: 74, type: !50)
!195 = !DILocation(line: 74, column: 14, scope: !192)
!196 = !DILocalVariable(name: "lnpow_val", scope: !192, file: !1, line: 75, type: !50)
!197 = !DILocation(line: 75, column: 14, scope: !192)
!198 = !DILocalVariable(name: "lnpow_err", scope: !192, file: !1, line: 76, type: !50)
!199 = !DILocation(line: 76, column: 14, scope: !192)
!200 = !DILocalVariable(name: "t1", scope: !192, file: !1, line: 77, type: !50)
!201 = !DILocation(line: 77, column: 14, scope: !192)
!202 = !DILocalVariable(name: "t2", scope: !192, file: !1, line: 77, type: !50)
!203 = !DILocation(line: 77, column: 18, scope: !192)
!204 = !DILocalVariable(name: "t3", scope: !192, file: !1, line: 77, type: !50)
!205 = !DILocation(line: 77, column: 22, scope: !192)
!206 = !DILocalVariable(name: "lnopr", scope: !192, file: !1, line: 78, type: !52)
!207 = !DILocation(line: 78, column: 21, scope: !192)
!208 = !DILocalVariable(name: "gsx", scope: !192, file: !1, line: 79, type: !52)
!209 = !DILocation(line: 79, column: 21, scope: !192)
!210 = !DILocalVariable(name: "gsy", scope: !192, file: !1, line: 79, type: !52)
!211 = !DILocation(line: 79, column: 26, scope: !192)
!212 = !DILocalVariable(name: "gsxy", scope: !192, file: !1, line: 79, type: !52)
!213 = !DILocation(line: 79, column: 31, scope: !192)
!214 = !DILocation(line: 80, column: 26, scope: !192)
!215 = !DILocation(line: 80, column: 7, scope: !192)
!216 = !DILocation(line: 81, column: 26, scope: !192)
!217 = !DILocation(line: 81, column: 7, scope: !192)
!218 = !DILocation(line: 82, column: 26, scope: !192)
!219 = !DILocation(line: 82, column: 28, scope: !192)
!220 = !DILocation(line: 82, column: 27, scope: !192)
!221 = !DILocation(line: 82, column: 7, scope: !192)
!222 = !DILocation(line: 83, column: 27, scope: !192)
!223 = !DILocation(line: 83, column: 7, scope: !192)
!224 = !DILocation(line: 84, column: 27, scope: !192)
!225 = !DILocation(line: 84, column: 35, scope: !192)
!226 = !DILocation(line: 84, column: 30, scope: !192)
!227 = !DILocation(line: 84, column: 44, scope: !192)
!228 = !DILocation(line: 84, column: 38, scope: !192)
!229 = !DILocation(line: 84, column: 48, scope: !192)
!230 = !DILocation(line: 84, column: 57, scope: !192)
!231 = !DILocation(line: 84, column: 19, scope: !192)
!232 = !DILocation(line: 84, column: 17, scope: !192)
!233 = !DILocation(line: 85, column: 23, scope: !192)
!234 = !DILocation(line: 85, column: 31, scope: !192)
!235 = !DILocation(line: 85, column: 26, scope: !192)
!236 = !DILocation(line: 85, column: 41, scope: !192)
!237 = !DILocation(line: 85, column: 49, scope: !192)
!238 = !DILocation(line: 85, column: 44, scope: !192)
!239 = !DILocation(line: 85, column: 35, scope: !192)
!240 = !DILocation(line: 85, column: 60, scope: !192)
!241 = !DILocation(line: 85, column: 69, scope: !192)
!242 = !DILocation(line: 85, column: 63, scope: !192)
!243 = !DILocation(line: 85, column: 53, scope: !192)
!244 = !DILocation(line: 85, column: 17, scope: !192)
!245 = !DILocation(line: 86, column: 12, scope: !192)
!246 = !DILocation(line: 86, column: 20, scope: !192)
!247 = !DILocation(line: 86, column: 16, scope: !192)
!248 = !DILocation(line: 86, column: 15, scope: !192)
!249 = !DILocation(line: 86, column: 10, scope: !192)
!250 = !DILocation(line: 87, column: 20, scope: !192)
!251 = !DILocation(line: 87, column: 16, scope: !192)
!252 = !DILocation(line: 87, column: 15, scope: !192)
!253 = !DILocation(line: 87, column: 10, scope: !192)
!254 = !DILocation(line: 88, column: 13, scope: !192)
!255 = !DILocation(line: 88, column: 15, scope: !192)
!256 = !DILocation(line: 88, column: 14, scope: !192)
!257 = !DILocation(line: 88, column: 16, scope: !192)
!258 = !DILocation(line: 88, column: 28, scope: !192)
!259 = !DILocation(line: 88, column: 21, scope: !192)
!260 = !DILocation(line: 88, column: 10, scope: !192)
!261 = !DILocation(line: 89, column: 20, scope: !192)
!262 = !DILocation(line: 89, column: 25, scope: !192)
!263 = !DILocation(line: 89, column: 23, scope: !192)
!264 = !DILocation(line: 89, column: 30, scope: !192)
!265 = !DILocation(line: 89, column: 28, scope: !192)
!266 = !DILocation(line: 89, column: 18, scope: !192)
!267 = !DILocation(line: 90, column: 44, scope: !192)
!268 = !DILocation(line: 90, column: 39, scope: !192)
!269 = !DILocation(line: 90, column: 55, scope: !192)
!270 = !DILocation(line: 90, column: 50, scope: !271)
!271 = !DILexicalBlockFile(scope: !192, file: !1, discriminator: 1)
!272 = !DILocation(line: 90, column: 48, scope: !192)
!273 = !DILocation(line: 90, column: 66, scope: !192)
!274 = !DILocation(line: 90, column: 61, scope: !275)
!275 = !DILexicalBlockFile(scope: !192, file: !1, discriminator: 2)
!276 = !DILocation(line: 90, column: 59, scope: !192)
!277 = !DILocation(line: 90, column: 36, scope: !192)
!278 = !DILocation(line: 90, column: 18, scope: !192)
!279 = !DILocation(line: 91, column: 25, scope: !192)
!280 = !DILocation(line: 91, column: 27, scope: !192)
!281 = !DILocation(line: 91, column: 26, scope: !192)
!282 = !DILocation(line: 91, column: 28, scope: !192)
!283 = !DILocation(line: 91, column: 20, scope: !192)
!284 = !DILocation(line: 91, column: 42, scope: !192)
!285 = !DILocation(line: 91, column: 34, scope: !192)
!286 = !DILocation(line: 91, column: 17, scope: !192)
!287 = !DILocation(line: 92, column: 22, scope: !192)
!288 = !DILocation(line: 92, column: 34, scope: !192)
!289 = !DILocation(line: 92, column: 32, scope: !192)
!290 = !DILocation(line: 92, column: 7, scope: !192)
!291 = !DILocation(line: 92, column: 15, scope: !192)
!292 = !DILocation(line: 92, column: 20, scope: !192)
!293 = !DILocation(line: 93, column: 22, scope: !192)
!294 = !DILocation(line: 93, column: 34, scope: !192)
!295 = !DILocation(line: 93, column: 32, scope: !192)
!296 = !DILocation(line: 93, column: 7, scope: !192)
!297 = !DILocation(line: 93, column: 15, scope: !192)
!298 = !DILocation(line: 93, column: 20, scope: !192)
!299 = !DILocation(line: 94, column: 51, scope: !192)
!300 = !DILocation(line: 94, column: 59, scope: !192)
!301 = !DILocation(line: 94, column: 46, scope: !192)
!302 = !DILocation(line: 94, column: 44, scope: !192)
!303 = !DILocation(line: 94, column: 7, scope: !192)
!304 = !DILocation(line: 94, column: 15, scope: !192)
!305 = !DILocation(line: 94, column: 19, scope: !192)
!306 = !DILocation(line: 95, column: 8, scope: !192)
!307 = !DILocation(line: 95, column: 12, scope: !192)
!308 = !DILocation(line: 96, column: 7, scope: !192)
!309 = !DILocation(line: 98, column: 3, scope: !165)
!310 = !DILocalVariable(name: "lgx", scope: !311, file: !1, line: 102, type: !52)
!311 = distinct !DILexicalBlock(scope: !95, file: !1, line: 101, column: 3)
!312 = !DILocation(line: 102, column: 19, scope: !311)
!313 = !DILocalVariable(name: "lgy", scope: !311, file: !1, line: 102, type: !52)
!314 = !DILocation(line: 102, column: 24, scope: !311)
!315 = !DILocalVariable(name: "lgxy", scope: !311, file: !1, line: 102, type: !52)
!316 = !DILocation(line: 102, column: 29, scope: !311)
!317 = !DILocalVariable(name: "sgx", scope: !311, file: !1, line: 103, type: !50)
!318 = !DILocation(line: 103, column: 12, scope: !311)
!319 = !DILocalVariable(name: "sgy", scope: !311, file: !1, line: 103, type: !50)
!320 = !DILocation(line: 103, column: 17, scope: !311)
!321 = !DILocalVariable(name: "sgxy", scope: !311, file: !1, line: 103, type: !50)
!322 = !DILocation(line: 103, column: 22, scope: !311)
!323 = !DILocalVariable(name: "xy", scope: !311, file: !1, line: 103, type: !50)
!324 = !DILocation(line: 103, column: 28, scope: !311)
!325 = !DILocation(line: 103, column: 33, scope: !311)
!326 = !DILocation(line: 103, column: 35, scope: !311)
!327 = !DILocation(line: 103, column: 34, scope: !311)
!328 = !DILocalVariable(name: "stat_gx", scope: !311, file: !1, line: 104, type: !48)
!329 = !DILocation(line: 104, column: 9, scope: !311)
!330 = !DILocation(line: 104, column: 41, scope: !311)
!331 = !DILocation(line: 104, column: 20, scope: !311)
!332 = !DILocalVariable(name: "stat_gy", scope: !311, file: !1, line: 105, type: !48)
!333 = !DILocation(line: 105, column: 9, scope: !311)
!334 = !DILocation(line: 105, column: 41, scope: !311)
!335 = !DILocation(line: 105, column: 20, scope: !311)
!336 = !DILocalVariable(name: "stat_gxy", scope: !311, file: !1, line: 106, type: !48)
!337 = !DILocation(line: 106, column: 9, scope: !311)
!338 = !DILocation(line: 106, column: 41, scope: !311)
!339 = !DILocation(line: 106, column: 20, scope: !311)
!340 = !DILocation(line: 107, column: 12, scope: !311)
!341 = !DILocation(line: 107, column: 18, scope: !311)
!342 = !DILocation(line: 107, column: 16, scope: !311)
!343 = !DILocation(line: 107, column: 24, scope: !311)
!344 = !DILocation(line: 107, column: 22, scope: !311)
!345 = !DILocation(line: 107, column: 6, scope: !311)
!346 = !DILocation(line: 107, column: 10, scope: !311)
!347 = !DILocation(line: 108, column: 24, scope: !311)
!348 = !DILocation(line: 108, column: 34, scope: !311)
!349 = !DILocation(line: 108, column: 28, scope: !311)
!350 = !DILocation(line: 108, column: 45, scope: !311)
!351 = !DILocation(line: 108, column: 38, scope: !311)
!352 = !DILocation(line: 108, column: 5, scope: !311)
!353 = !DILocation(line: 108, column: 13, scope: !311)
!354 = !DILocation(line: 108, column: 18, scope: !311)
!355 = !DILocation(line: 109, column: 24, scope: !311)
!356 = !DILocation(line: 109, column: 34, scope: !311)
!357 = !DILocation(line: 109, column: 28, scope: !311)
!358 = !DILocation(line: 109, column: 45, scope: !311)
!359 = !DILocation(line: 109, column: 38, scope: !311)
!360 = !DILocation(line: 109, column: 5, scope: !311)
!361 = !DILocation(line: 109, column: 13, scope: !311)
!362 = !DILocation(line: 109, column: 18, scope: !311)
!363 = !DILocation(line: 110, column: 54, scope: !311)
!364 = !DILocation(line: 110, column: 45, scope: !311)
!365 = !DILocation(line: 110, column: 70, scope: !311)
!366 = !DILocation(line: 110, column: 61, scope: !367)
!367 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 1)
!368 = !DILocation(line: 110, column: 59, scope: !311)
!369 = !DILocation(line: 110, column: 87, scope: !311)
!370 = !DILocation(line: 110, column: 77, scope: !371)
!371 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 2)
!372 = !DILocation(line: 110, column: 75, scope: !311)
!373 = !DILocation(line: 110, column: 42, scope: !311)
!374 = !DILocation(line: 110, column: 5, scope: !311)
!375 = !DILocation(line: 110, column: 13, scope: !311)
!376 = !DILocation(line: 110, column: 17, scope: !311)
!377 = !DILocation(line: 111, column: 49, scope: !311)
!378 = !DILocation(line: 111, column: 57, scope: !311)
!379 = !DILocation(line: 111, column: 44, scope: !311)
!380 = !DILocation(line: 111, column: 42, scope: !311)
!381 = !DILocation(line: 111, column: 5, scope: !311)
!382 = !DILocation(line: 111, column: 13, scope: !311)
!383 = !DILocation(line: 111, column: 17, scope: !311)
!384 = !DILocation(line: 112, column: 12, scope: !311)
!385 = !DILocation(line: 112, column: 12, scope: !367)
!386 = !DILocation(line: 112, column: 12, scope: !371)
!387 = !DILocation(line: 112, column: 12, scope: !388)
!388 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 3)
!389 = !DILocation(line: 112, column: 12, scope: !390)
!390 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 4)
!391 = !DILocation(line: 112, column: 12, scope: !392)
!392 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 5)
!393 = !DILocation(line: 112, column: 12, scope: !394)
!394 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 6)
!395 = !DILocation(line: 112, column: 12, scope: !396)
!396 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 7)
!397 = !DILocation(line: 112, column: 12, scope: !398)
!398 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 8)
!399 = !DILocation(line: 112, column: 12, scope: !400)
!400 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 9)
!401 = !DILocation(line: 112, column: 5, scope: !400)
!402 = !DILocation(line: 114, column: 1, scope: !95)
!403 = distinct !DISubprogram(name: "isnegint", scope: !1, file: !1, line: 33, type: !404, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!404 = !DISubroutineType(types: !405)
!405 = !{!50, !49}
!406 = !DILocalVariable(name: "x", arg: 1, scope: !403, file: !1, line: 33, type: !49)
!407 = !DILocation(line: 33, column: 24, scope: !403)
!408 = !DILocation(line: 35, column: 11, scope: !403)
!409 = !DILocation(line: 35, column: 13, scope: !403)
!410 = !DILocation(line: 35, column: 18, scope: !403)
!411 = !DILocation(line: 35, column: 22, scope: !412)
!412 = !DILexicalBlockFile(scope: !403, file: !1, discriminator: 1)
!413 = !DILocation(line: 35, column: 33, scope: !412)
!414 = !DILocation(line: 35, column: 27, scope: !412)
!415 = !DILocation(line: 35, column: 24, scope: !412)
!416 = !DILocation(line: 35, column: 18, scope: !417)
!417 = !DILexicalBlockFile(scope: !403, file: !1, discriminator: 2)
!418 = !DILocation(line: 35, column: 10, scope: !417)
!419 = !DILocation(line: 35, column: 3, scope: !417)
!420 = distinct !DISubprogram(name: "gsl_sf_beta_e", scope: !1, file: !1, line: 118, type: !46, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!421 = !DILocalVariable(name: "x", arg: 1, scope: !420, file: !1, line: 118, type: !49)
!422 = !DILocation(line: 118, column: 28, scope: !420)
!423 = !DILocalVariable(name: "y", arg: 2, scope: !420, file: !1, line: 118, type: !49)
!424 = !DILocation(line: 118, column: 44, scope: !420)
!425 = !DILocalVariable(name: "result", arg: 3, scope: !420, file: !1, line: 118, type: !51)
!426 = !DILocation(line: 118, column: 63, scope: !420)
!427 = !DILocation(line: 120, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !420, file: !1, line: 120, column: 6)
!429 = !DILocation(line: 120, column: 9, scope: !428)
!430 = !DILocation(line: 120, column: 13, scope: !428)
!431 = !DILocation(line: 120, column: 16, scope: !432)
!432 = !DILexicalBlockFile(scope: !428, file: !1, discriminator: 1)
!433 = !DILocation(line: 120, column: 18, scope: !432)
!434 = !DILocation(line: 120, column: 23, scope: !432)
!435 = !DILocation(line: 120, column: 26, scope: !436)
!436 = !DILexicalBlockFile(scope: !428, file: !1, discriminator: 2)
!437 = !DILocation(line: 120, column: 28, scope: !436)
!438 = !DILocation(line: 120, column: 35, scope: !436)
!439 = !DILocation(line: 120, column: 38, scope: !440)
!440 = !DILexicalBlockFile(scope: !428, file: !1, discriminator: 3)
!441 = !DILocation(line: 120, column: 40, scope: !440)
!442 = !DILocation(line: 120, column: 6, scope: !440)
!443 = !DILocalVariable(name: "gx", scope: !444, file: !1, line: 122, type: !52)
!444 = distinct !DILexicalBlock(scope: !428, file: !1, line: 120, column: 48)
!445 = !DILocation(line: 122, column: 19, scope: !444)
!446 = !DILocalVariable(name: "gy", scope: !444, file: !1, line: 122, type: !52)
!447 = !DILocation(line: 122, column: 23, scope: !444)
!448 = !DILocalVariable(name: "gxy", scope: !444, file: !1, line: 122, type: !52)
!449 = !DILocation(line: 122, column: 27, scope: !444)
!450 = !DILocation(line: 123, column: 20, scope: !444)
!451 = !DILocation(line: 123, column: 5, scope: !444)
!452 = !DILocation(line: 124, column: 20, scope: !444)
!453 = !DILocation(line: 124, column: 5, scope: !444)
!454 = !DILocation(line: 125, column: 20, scope: !444)
!455 = !DILocation(line: 125, column: 22, scope: !444)
!456 = !DILocation(line: 125, column: 21, scope: !444)
!457 = !DILocation(line: 125, column: 5, scope: !444)
!458 = !DILocation(line: 126, column: 24, scope: !444)
!459 = !DILocation(line: 126, column: 31, scope: !444)
!460 = !DILocation(line: 126, column: 27, scope: !444)
!461 = !DILocation(line: 126, column: 40, scope: !444)
!462 = !DILocation(line: 126, column: 35, scope: !444)
!463 = !DILocation(line: 126, column: 5, scope: !444)
!464 = !DILocation(line: 126, column: 13, scope: !444)
!465 = !DILocation(line: 126, column: 18, scope: !444)
!466 = !DILocation(line: 127, column: 23, scope: !444)
!467 = !DILocation(line: 127, column: 37, scope: !444)
!468 = !DILocation(line: 127, column: 45, scope: !444)
!469 = !DILocation(line: 127, column: 40, scope: !444)
!470 = !DILocation(line: 127, column: 29, scope: !444)
!471 = !DILocation(line: 127, column: 27, scope: !444)
!472 = !DILocation(line: 127, column: 5, scope: !444)
!473 = !DILocation(line: 127, column: 13, scope: !444)
!474 = !DILocation(line: 127, column: 18, scope: !444)
!475 = !DILocation(line: 128, column: 23, scope: !444)
!476 = !DILocation(line: 128, column: 37, scope: !444)
!477 = !DILocation(line: 128, column: 45, scope: !444)
!478 = !DILocation(line: 128, column: 40, scope: !444)
!479 = !DILocation(line: 128, column: 29, scope: !444)
!480 = !DILocation(line: 128, column: 27, scope: !444)
!481 = !DILocation(line: 128, column: 5, scope: !444)
!482 = !DILocation(line: 128, column: 13, scope: !444)
!483 = !DILocation(line: 128, column: 17, scope: !444)
!484 = !DILocation(line: 129, column: 29, scope: !444)
!485 = !DILocation(line: 129, column: 36, scope: !444)
!486 = !DILocation(line: 129, column: 32, scope: !444)
!487 = !DILocation(line: 129, column: 46, scope: !444)
!488 = !DILocation(line: 129, column: 54, scope: !444)
!489 = !DILocation(line: 129, column: 49, scope: !444)
!490 = !DILocation(line: 129, column: 40, scope: !444)
!491 = !DILocation(line: 129, column: 20, scope: !444)
!492 = !DILocation(line: 129, column: 66, scope: !444)
!493 = !DILocation(line: 129, column: 60, scope: !444)
!494 = !DILocation(line: 129, column: 5, scope: !444)
!495 = !DILocation(line: 129, column: 13, scope: !444)
!496 = !DILocation(line: 129, column: 17, scope: !444)
!497 = !DILocation(line: 130, column: 49, scope: !444)
!498 = !DILocation(line: 130, column: 57, scope: !444)
!499 = !DILocation(line: 130, column: 44, scope: !444)
!500 = !DILocation(line: 130, column: 42, scope: !444)
!501 = !DILocation(line: 130, column: 5, scope: !444)
!502 = !DILocation(line: 130, column: 13, scope: !444)
!503 = !DILocation(line: 130, column: 17, scope: !444)
!504 = !DILocation(line: 131, column: 5, scope: !444)
!505 = !DILocation(line: 133, column: 21, scope: !506)
!506 = distinct !DILexicalBlock(scope: !428, file: !1, line: 133, column: 12)
!507 = !DILocation(line: 133, column: 12, scope: !506)
!508 = !DILocation(line: 133, column: 24, scope: !506)
!509 = !DILocation(line: 133, column: 36, scope: !510)
!510 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 1)
!511 = !DILocation(line: 133, column: 27, scope: !510)
!512 = !DILocation(line: 133, column: 12, scope: !510)
!513 = !DILocation(line: 134, column: 5, scope: !514)
!514 = distinct !DILexicalBlock(scope: !506, file: !1, line: 133, column: 40)
!515 = distinct !{!515, !513}
!516 = !DILocation(line: 134, column: 5, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 1)
!518 = distinct !DILexicalBlock(scope: !514, file: !1, line: 134, column: 5)
!519 = distinct !{!519, !520}
!520 = !DILocation(line: 134, column: 5, scope: !518)
!521 = !DILocation(line: 134, column: 5, scope: !522)
!522 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 2)
!523 = distinct !DILexicalBlock(scope: !518, file: !1, line: 134, column: 5)
!524 = !DILocation(line: 134, column: 5, scope: !525)
!525 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 3)
!526 = !DILocation(line: 135, column: 3, scope: !514)
!527 = !DILocation(line: 135, column: 23, scope: !528)
!528 = !DILexicalBlockFile(scope: !529, file: !1, discriminator: 1)
!529 = distinct !DILexicalBlock(scope: !506, file: !1, line: 135, column: 14)
!530 = !DILocation(line: 135, column: 25, scope: !528)
!531 = !DILocation(line: 135, column: 24, scope: !528)
!532 = !DILocation(line: 135, column: 14, scope: !528)
!533 = !DILocation(line: 136, column: 5, scope: !534)
!534 = distinct !DILexicalBlock(scope: !529, file: !1, line: 135, column: 29)
!535 = !DILocation(line: 136, column: 13, scope: !534)
!536 = !DILocation(line: 136, column: 17, scope: !534)
!537 = !DILocation(line: 137, column: 5, scope: !534)
!538 = !DILocation(line: 137, column: 13, scope: !534)
!539 = !DILocation(line: 137, column: 17, scope: !534)
!540 = !DILocation(line: 138, column: 5, scope: !534)
!541 = !DILocalVariable(name: "lb", scope: !542, file: !1, line: 140, type: !52)
!542 = distinct !DILexicalBlock(scope: !529, file: !1, line: 139, column: 10)
!543 = !DILocation(line: 140, column: 19, scope: !542)
!544 = !DILocalVariable(name: "sgn", scope: !542, file: !1, line: 141, type: !50)
!545 = !DILocation(line: 141, column: 12, scope: !542)
!546 = !DILocalVariable(name: "stat_lb", scope: !542, file: !1, line: 142, type: !48)
!547 = !DILocation(line: 142, column: 9, scope: !542)
!548 = !DILocation(line: 142, column: 39, scope: !542)
!549 = !DILocation(line: 142, column: 42, scope: !542)
!550 = !DILocation(line: 142, column: 19, scope: !542)
!551 = !DILocation(line: 143, column: 8, scope: !552)
!552 = distinct !DILexicalBlock(scope: !542, file: !1, line: 143, column: 8)
!553 = !DILocation(line: 143, column: 16, scope: !552)
!554 = !DILocation(line: 143, column: 8, scope: !542)
!555 = !DILocalVariable(name: "status", scope: !556, file: !1, line: 144, type: !48)
!556 = distinct !DILexicalBlock(scope: !552, file: !1, line: 143, column: 32)
!557 = !DILocation(line: 144, column: 11, scope: !556)
!558 = !DILocation(line: 144, column: 40, scope: !556)
!559 = !DILocation(line: 144, column: 48, scope: !556)
!560 = !DILocation(line: 144, column: 53, scope: !556)
!561 = !DILocation(line: 144, column: 20, scope: !556)
!562 = !DILocation(line: 145, column: 22, scope: !556)
!563 = !DILocation(line: 145, column: 7, scope: !556)
!564 = !DILocation(line: 145, column: 15, scope: !556)
!565 = !DILocation(line: 145, column: 19, scope: !556)
!566 = !DILocation(line: 146, column: 14, scope: !556)
!567 = !DILocation(line: 146, column: 7, scope: !556)
!568 = !DILocation(line: 149, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !552, file: !1, line: 148, column: 10)
!570 = !DILocation(line: 149, column: 15, scope: !569)
!571 = !DILocation(line: 149, column: 19, scope: !569)
!572 = !DILocation(line: 150, column: 7, scope: !569)
!573 = !DILocation(line: 150, column: 15, scope: !569)
!574 = !DILocation(line: 150, column: 19, scope: !569)
!575 = !DILocation(line: 151, column: 14, scope: !569)
!576 = !DILocation(line: 151, column: 7, scope: !569)
!577 = !DILocation(line: 154, column: 1, scope: !420)
!578 = distinct !DISubprogram(name: "gsl_sf_lnbeta", scope: !1, file: !1, line: 161, type: !579, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!579 = !DISubroutineType(types: !580)
!580 = !{!50, !49, !49}
!581 = !DILocalVariable(name: "x", arg: 1, scope: !578, file: !1, line: 161, type: !49)
!582 = !DILocation(line: 161, column: 35, scope: !578)
!583 = !DILocalVariable(name: "y", arg: 2, scope: !578, file: !1, line: 161, type: !49)
!584 = !DILocation(line: 161, column: 51, scope: !578)
!585 = !DILocalVariable(name: "result", scope: !578, file: !1, line: 163, type: !52)
!586 = !DILocation(line: 163, column: 3, scope: !578)
!587 = !DILocalVariable(name: "status", scope: !578, file: !1, line: 163, type: !48)
!588 = !DILocation(line: 163, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !578, file: !1, line: 163, column: 3)
!590 = !DILocation(line: 163, column: 3, scope: !591)
!591 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 1)
!592 = distinct !DILexicalBlock(scope: !589, file: !1, line: 163, column: 3)
!593 = distinct !{!593, !594}
!594 = !DILocation(line: 163, column: 3, scope: !592)
!595 = !DILocation(line: 163, column: 3, scope: !596)
!596 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 2)
!597 = distinct !DILexicalBlock(scope: !592, file: !1, line: 163, column: 3)
!598 = !DILocation(line: 163, column: 3, scope: !599)
!599 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 3)
!600 = !DILocation(line: 163, column: 3, scope: !601)
!601 = !DILexicalBlockFile(scope: !578, file: !1, discriminator: 4)
!602 = !DILocation(line: 164, column: 1, scope: !578)
!603 = distinct !DISubprogram(name: "gsl_sf_beta", scope: !1, file: !1, line: 166, type: !579, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!604 = !DILocalVariable(name: "x", arg: 1, scope: !603, file: !1, line: 166, type: !49)
!605 = !DILocation(line: 166, column: 33, scope: !603)
!606 = !DILocalVariable(name: "y", arg: 2, scope: !603, file: !1, line: 166, type: !49)
!607 = !DILocation(line: 166, column: 49, scope: !603)
!608 = !DILocalVariable(name: "result", scope: !603, file: !1, line: 168, type: !52)
!609 = !DILocation(line: 168, column: 3, scope: !603)
!610 = !DILocalVariable(name: "status", scope: !603, file: !1, line: 168, type: !48)
!611 = !DILocation(line: 168, column: 3, scope: !612)
!612 = distinct !DILexicalBlock(scope: !603, file: !1, line: 168, column: 3)
!613 = !DILocation(line: 168, column: 3, scope: !614)
!614 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 1)
!615 = distinct !DILexicalBlock(scope: !612, file: !1, line: 168, column: 3)
!616 = distinct !{!616, !617}
!617 = !DILocation(line: 168, column: 3, scope: !615)
!618 = !DILocation(line: 168, column: 3, scope: !619)
!619 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 2)
!620 = distinct !DILexicalBlock(scope: !615, file: !1, line: 168, column: 3)
!621 = !DILocation(line: 168, column: 3, scope: !622)
!622 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 3)
!623 = !DILocation(line: 168, column: 3, scope: !624)
!624 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 4)
!625 = !DILocation(line: 169, column: 1, scope: !603)
