; ModuleID = 'hyperg_0F1.c'
source_filename = "hyperg_0F1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"hyperg_0F1.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"gsl_sf_hyperg_0F1_e(c, x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_0F1_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !58, metadata !59), !dbg !60
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !61, metadata !59), !dbg !62
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !63, metadata !59), !dbg !64
  call void @llvm.dbg.declare(metadata double* %8, metadata !65, metadata !59), !dbg !67
  %26 = load double, double* %5, align 8, !dbg !68
  %27 = fadd double %26, 5.000000e-01, !dbg !69
  %28 = call double @floor(double %27) #1, !dbg !70
  store double %28, double* %8, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %9, metadata !71, metadata !59), !dbg !73
  %29 = load double, double* %5, align 8, !dbg !74
  %30 = fcmp olt double %29, 0.000000e+00, !dbg !75
  br i1 %30, label %31, label %37, !dbg !76

; <label>:31:                                     ; preds = %3
  %32 = load double, double* %5, align 8, !dbg !77
  %33 = load double, double* %8, align 8, !dbg !79
  %34 = fsub double %32, %33, !dbg !80
  %35 = call double @fabs(double %34) #1, !dbg !81
  %36 = fcmp olt double %35, 0x3D4F400000000000, !dbg !82
  br label %37

; <label>:37:                                     ; preds = %31, %3
  %38 = phi i1 [ false, %3 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32, !dbg !83
  store i32 %39, i32* %9, align 4, !dbg !85
  %40 = load double, double* %5, align 8, !dbg !86
  %41 = fcmp oeq double %40, 0.000000e+00, !dbg !88
  br i1 %41, label %45, label %42, !dbg !89

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %9, align 4, !dbg !90
  %44 = icmp ne i32 %43, 0, !dbg !90
  br i1 %44, label %45, label %54, !dbg !92

; <label>:45:                                     ; preds = %42, %37
  br label %46, !dbg !93, !llvm.loop !95

; <label>:46:                                     ; preds = %45
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !96
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !96
  store double 0x7FF8000000000000, double* %48, align 8, !dbg !96
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !96
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !96
  store double 0x7FF8000000000000, double* %50, align 8, !dbg !96
  br label %51, !dbg !96, !llvm.loop !99

; <label>:51:                                     ; preds = %46
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 111, i32 1), !dbg !101
  store i32 1, i32* %4, align 4, !dbg !101
  br label %175, !dbg !101
                                                  ; No predecessors!
  br label %53, !dbg !104

; <label>:53:                                     ; preds = %52
  br label %175, !dbg !106

; <label>:54:                                     ; preds = %42
  %55 = load double, double* %6, align 8, !dbg !107
  %56 = fcmp olt double %55, 0.000000e+00, !dbg !109
  br i1 %56, label %57, label %113, !dbg !110

; <label>:57:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !111, metadata !59), !dbg !113
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !114, metadata !59), !dbg !115
  call void @llvm.dbg.declare(metadata double* %12, metadata !116, metadata !59), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %13, metadata !118, metadata !59), !dbg !119
  %58 = load double, double* %5, align 8, !dbg !120
  %59 = call i32 @gsl_sf_lngamma_sgn_e(double %58, %struct.gsl_sf_result_struct* %11, double* %12), !dbg !121
  store i32 %59, i32* %13, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %14, metadata !122, metadata !59), !dbg !123
  %60 = load double, double* %5, align 8, !dbg !124
  %61 = fsub double %60, 1.000000e+00, !dbg !125
  %62 = load double, double* %6, align 8, !dbg !126
  %63 = fsub double -0.000000e+00, %62, !dbg !127
  %64 = call double @sqrt(double %63) #5, !dbg !128
  %65 = fmul double 2.000000e+00, %64, !dbg !129
  %66 = call i32 @hyperg_0F1_bessel_J(double %61, double %65, %struct.gsl_sf_result_struct* %10), !dbg !130
  store i32 %66, i32* %14, align 4, !dbg !123
  %67 = load i32, i32* %13, align 4, !dbg !132
  %68 = icmp ne i32 %67, 0, !dbg !134
  br i1 %68, label %69, label %75, !dbg !135

; <label>:69:                                     ; preds = %57
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !136
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !138
  store double 0.000000e+00, double* %71, align 8, !dbg !139
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !140
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !141
  store double 0.000000e+00, double* %73, align 8, !dbg !142
  %74 = load i32, i32* %13, align 4, !dbg !143
  store i32 %74, i32* %4, align 4, !dbg !144
  br label %175, !dbg !144

; <label>:75:                                     ; preds = %57
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !145
  %77 = load double, double* %76, align 8, !dbg !145
  %78 = fcmp oeq double %77, 0.000000e+00, !dbg !147
  br i1 %78, label %79, label %85, !dbg !148

; <label>:79:                                     ; preds = %75
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !149
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !151
  store double 0.000000e+00, double* %81, align 8, !dbg !152
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !153
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !154
  store double 0.000000e+00, double* %83, align 8, !dbg !155
  %84 = load i32, i32* %14, align 4, !dbg !156
  store i32 %84, i32* %4, align 4, !dbg !157
  br label %175, !dbg !157

; <label>:85:                                     ; preds = %75
  call void @llvm.dbg.declare(metadata double* %15, metadata !158, metadata !59), !dbg !160
  %86 = load double, double* %6, align 8, !dbg !161
  %87 = fsub double -0.000000e+00, %86, !dbg !162
  %88 = call double @log(double %87) #5, !dbg !163
  %89 = fmul double %88, 5.000000e-01, !dbg !164
  %90 = load double, double* %5, align 8, !dbg !165
  %91 = fsub double 1.000000e+00, %90, !dbg !166
  %92 = fmul double %89, %91, !dbg !167
  store double %92, double* %15, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata double* %16, metadata !168, metadata !59), !dbg !169
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !170
  %94 = load double, double* %93, align 8, !dbg !170
  %95 = load double, double* %15, align 8, !dbg !171
  %96 = fadd double %94, %95, !dbg !172
  store double %96, double* %16, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata double* %17, metadata !173, metadata !59), !dbg !174
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !175
  %98 = load double, double* %97, align 8, !dbg !175
  %99 = load double, double* %15, align 8, !dbg !176
  %100 = call double @fabs(double %99) #1, !dbg !177
  %101 = fmul double 0x3CC0000000000000, %100, !dbg !178
  %102 = fadd double %98, %101, !dbg !179
  store double %102, double* %17, align 8, !dbg !174
  %103 = load double, double* %16, align 8, !dbg !180
  %104 = load double, double* %17, align 8, !dbg !181
  %105 = load double, double* %12, align 8, !dbg !182
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !183
  %107 = load double, double* %106, align 8, !dbg !183
  %108 = fmul double %105, %107, !dbg !184
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !185
  %110 = load double, double* %109, align 8, !dbg !185
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !186
  %112 = call i32 @gsl_sf_exp_mult_err_e(double %103, double %104, double %108, double %110, %struct.gsl_sf_result_struct* %111), !dbg !187
  store i32 %112, i32* %4, align 4, !dbg !188
  br label %175, !dbg !188

; <label>:113:                                    ; preds = %54
  %114 = load double, double* %6, align 8, !dbg !189
  %115 = fcmp oeq double %114, 0.000000e+00, !dbg !191
  br i1 %115, label %116, label %121, !dbg !192

; <label>:116:                                    ; preds = %113
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !193
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 0, !dbg !195
  store double 1.000000e+00, double* %118, align 8, !dbg !196
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !197
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 1, !dbg !198
  store double 1.000000e+00, double* %120, align 8, !dbg !199
  store i32 0, i32* %4, align 4, !dbg !200
  br label %175, !dbg !200

; <label>:121:                                    ; preds = %113
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !201, metadata !59), !dbg !203
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !204, metadata !59), !dbg !205
  call void @llvm.dbg.declare(metadata double* %20, metadata !206, metadata !59), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %21, metadata !208, metadata !59), !dbg !209
  %122 = load double, double* %5, align 8, !dbg !210
  %123 = call i32 @gsl_sf_lngamma_sgn_e(double %122, %struct.gsl_sf_result_struct* %19, double* %20), !dbg !211
  store i32 %123, i32* %21, align 4, !dbg !209
  call void @llvm.dbg.declare(metadata i32* %22, metadata !212, metadata !59), !dbg !213
  %124 = load double, double* %5, align 8, !dbg !214
  %125 = fsub double %124, 1.000000e+00, !dbg !215
  %126 = load double, double* %6, align 8, !dbg !216
  %127 = call double @sqrt(double %126) #5, !dbg !217
  %128 = fmul double 2.000000e+00, %127, !dbg !218
  %129 = call i32 @hyperg_0F1_bessel_I(double %125, double %128, %struct.gsl_sf_result_struct* %18), !dbg !219
  store i32 %129, i32* %22, align 4, !dbg !213
  %130 = load i32, i32* %21, align 4, !dbg !221
  %131 = icmp ne i32 %130, 0, !dbg !223
  br i1 %131, label %132, label %138, !dbg !224

; <label>:132:                                    ; preds = %121
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !225
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 0, !dbg !227
  store double 0.000000e+00, double* %134, align 8, !dbg !228
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !229
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 1, !dbg !230
  store double 0.000000e+00, double* %136, align 8, !dbg !231
  %137 = load i32, i32* %21, align 4, !dbg !232
  store i32 %137, i32* %4, align 4, !dbg !233
  br label %175, !dbg !233

; <label>:138:                                    ; preds = %121
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !234
  %140 = load double, double* %139, align 8, !dbg !234
  %141 = fcmp oeq double %140, 0.000000e+00, !dbg !236
  br i1 %141, label %142, label %148, !dbg !237

; <label>:142:                                    ; preds = %138
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !238
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 0, !dbg !240
  store double 0.000000e+00, double* %144, align 8, !dbg !241
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !242
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 1, !dbg !243
  store double 0.000000e+00, double* %146, align 8, !dbg !244
  %147 = load i32, i32* %22, align 4, !dbg !245
  store i32 %147, i32* %4, align 4, !dbg !246
  br label %175, !dbg !246

; <label>:148:                                    ; preds = %138
  call void @llvm.dbg.declare(metadata double* %23, metadata !247, metadata !59), !dbg !249
  %149 = load double, double* %6, align 8, !dbg !250
  %150 = call double @log(double %149) #5, !dbg !251
  %151 = fmul double %150, 5.000000e-01, !dbg !252
  %152 = load double, double* %5, align 8, !dbg !253
  %153 = fsub double 1.000000e+00, %152, !dbg !254
  %154 = fmul double %151, %153, !dbg !255
  store double %154, double* %23, align 8, !dbg !249
  call void @llvm.dbg.declare(metadata double* %24, metadata !256, metadata !59), !dbg !257
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !258
  %156 = load double, double* %155, align 8, !dbg !258
  %157 = load double, double* %23, align 8, !dbg !259
  %158 = fadd double %156, %157, !dbg !260
  store double %158, double* %24, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata double* %25, metadata !261, metadata !59), !dbg !262
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !263
  %160 = load double, double* %159, align 8, !dbg !263
  %161 = load double, double* %23, align 8, !dbg !264
  %162 = call double @fabs(double %161) #1, !dbg !265
  %163 = fmul double 0x3CC0000000000000, %162, !dbg !266
  %164 = fadd double %160, %163, !dbg !267
  store double %164, double* %25, align 8, !dbg !262
  %165 = load double, double* %24, align 8, !dbg !268
  %166 = load double, double* %25, align 8, !dbg !269
  %167 = load double, double* %20, align 8, !dbg !270
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !271
  %169 = load double, double* %168, align 8, !dbg !271
  %170 = fmul double %167, %169, !dbg !272
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !273
  %172 = load double, double* %171, align 8, !dbg !273
  %173 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !274
  %174 = call i32 @gsl_sf_exp_mult_err_e(double %165, double %166, double %170, double %172, %struct.gsl_sf_result_struct* %173), !dbg !275
  store i32 %174, i32* %4, align 4, !dbg !276
  br label %175, !dbg !276

; <label>:175:                                    ; preds = %51, %69, %79, %85, %116, %132, %142, %148, %53
  %176 = load i32, i32* %4, align 4, !dbg !277
  ret i32 %176, !dbg !277
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gsl_error(i8*, i8*, i32, i32) #3

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #3

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_0F1_bessel_J(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !278 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !281, metadata !59), !dbg !282
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !283, metadata !59), !dbg !284
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !285, metadata !59), !dbg !286
  %15 = load double, double* %5, align 8, !dbg !287
  %16 = fcmp olt double %15, 0.000000e+00, !dbg !289
  br i1 %16, label %17, label %85, !dbg !290

; <label>:17:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !291, metadata !59), !dbg !293
  %18 = load double, double* %5, align 8, !dbg !294
  %19 = fsub double -0.000000e+00, %18, !dbg !295
  store double %19, double* %8, align 8, !dbg !293
  call void @llvm.dbg.declare(metadata double* %9, metadata !296, metadata !59), !dbg !297
  %20 = load double, double* %8, align 8, !dbg !298
  %21 = fmul double %20, 0x400921FB54442D18, !dbg !299
  %22 = call double @sin(double %21) #5, !dbg !300
  store double %22, double* %9, align 8, !dbg !297
  call void @llvm.dbg.declare(metadata double* %10, metadata !301, metadata !59), !dbg !302
  %23 = load double, double* %8, align 8, !dbg !303
  %24 = fmul double %23, 0x400921FB54442D18, !dbg !304
  %25 = call double @cos(double %24) #5, !dbg !305
  store double %25, double* %10, align 8, !dbg !302
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !306, metadata !59), !dbg !307
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !308, metadata !59), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %13, metadata !310, metadata !59), !dbg !311
  %26 = load double, double* %8, align 8, !dbg !312
  %27 = load double, double* %6, align 8, !dbg !313
  %28 = call i32 @gsl_sf_bessel_Jnu_e(double %26, double %27, %struct.gsl_sf_result_struct* %11), !dbg !314
  store i32 %28, i32* %13, align 4, !dbg !311
  call void @llvm.dbg.declare(metadata i32* %14, metadata !315, metadata !59), !dbg !316
  %29 = load double, double* %8, align 8, !dbg !317
  %30 = load double, double* %6, align 8, !dbg !318
  %31 = call i32 @gsl_sf_bessel_Ynu_e(double %29, double %30, %struct.gsl_sf_result_struct* %12), !dbg !319
  store i32 %31, i32* %14, align 4, !dbg !316
  %32 = load double, double* %10, align 8, !dbg !320
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !321
  %34 = load double, double* %33, align 8, !dbg !321
  %35 = fmul double %32, %34, !dbg !322
  %36 = load double, double* %9, align 8, !dbg !323
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !324
  %38 = load double, double* %37, align 8, !dbg !324
  %39 = fmul double %36, %38, !dbg !325
  %40 = fsub double %35, %39, !dbg !326
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !327
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !328
  store double %40, double* %42, align 8, !dbg !329
  %43 = load double, double* %10, align 8, !dbg !330
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !331
  %45 = load double, double* %44, align 8, !dbg !331
  %46 = fmul double %43, %45, !dbg !332
  %47 = call double @fabs(double %46) #1, !dbg !333
  %48 = load double, double* %9, align 8, !dbg !334
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !335
  %50 = load double, double* %49, align 8, !dbg !335
  %51 = fmul double %48, %50, !dbg !336
  %52 = call double @fabs(double %51) #1, !dbg !337
  %53 = fadd double %47, %52, !dbg !339
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !340
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !341
  store double %53, double* %55, align 8, !dbg !342
  %56 = load double, double* %8, align 8, !dbg !343
  %57 = fmul double %56, 0x400921FB54442D18, !dbg !344
  %58 = call double @fabs(double %57) #1, !dbg !345
  %59 = fmul double %58, 0x3CB0000000000000, !dbg !346
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !347
  %61 = load double, double* %60, align 8, !dbg !347
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !348
  %63 = load double, double* %62, align 8, !dbg !348
  %64 = fadd double %61, %63, !dbg !349
  %65 = call double @fabs(double %64) #1, !dbg !350
  %66 = fmul double %59, %65, !dbg !351
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !352
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !353
  %69 = load double, double* %68, align 8, !dbg !354
  %70 = fadd double %69, %66, !dbg !354
  store double %70, double* %68, align 8, !dbg !354
  %71 = load i32, i32* %14, align 4, !dbg !355
  %72 = icmp ne i32 %71, 0, !dbg !355
  br i1 %72, label %73, label %75, !dbg !355

; <label>:73:                                     ; preds = %17
  %74 = load i32, i32* %14, align 4, !dbg !356
  br label %83, !dbg !356

; <label>:75:                                     ; preds = %17
  %76 = load i32, i32* %13, align 4, !dbg !357
  %77 = icmp ne i32 %76, 0, !dbg !357
  br i1 %77, label %78, label %80, !dbg !357

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %13, align 4, !dbg !359
  br label %81, !dbg !359

; <label>:80:                                     ; preds = %75
  br label %81, !dbg !361

; <label>:81:                                     ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ], !dbg !363
  br label %83, !dbg !363

; <label>:83:                                     ; preds = %81, %73
  %84 = phi i32 [ %74, %73 ], [ %82, %81 ], !dbg !365
  store i32 %84, i32* %4, align 4, !dbg !367
  br label %90, !dbg !367

; <label>:85:                                     ; preds = %3
  %86 = load double, double* %5, align 8, !dbg !368
  %87 = load double, double* %6, align 8, !dbg !370
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !371
  %89 = call i32 @gsl_sf_bessel_Jnu_e(double %86, double %87, %struct.gsl_sf_result_struct* %88), !dbg !372
  store i32 %89, i32* %4, align 4, !dbg !373
  br label %90, !dbg !373

; <label>:90:                                     ; preds = %85, %83
  %91 = load i32, i32* %4, align 4, !dbg !374
  ret i32 %91, !dbg !374
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_0F1_bessel_I(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !375 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !376, metadata !59), !dbg !377
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !378, metadata !59), !dbg !379
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !380, metadata !59), !dbg !381
  %18 = load double, double* %6, align 8, !dbg !382
  %19 = fcmp ogt double %18, 0x40862E42FEFA39EF, !dbg !384
  br i1 %19, label %20, label %29, !dbg !385

; <label>:20:                                     ; preds = %3
  br label %21, !dbg !386, !llvm.loop !388

; <label>:21:                                     ; preds = %20
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !389
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !389
  store double 0x7FF0000000000000, double* %23, align 8, !dbg !389
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !389
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !389
  store double 0x7FF0000000000000, double* %25, align 8, !dbg !389
  br label %26, !dbg !389, !llvm.loop !392

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 45, i32 16), !dbg !394
  store i32 16, i32* %4, align 4, !dbg !394
  br label %128, !dbg !394
                                                  ; No predecessors!
  br label %28, !dbg !397

; <label>:28:                                     ; preds = %27
  br label %29, !dbg !399

; <label>:29:                                     ; preds = %28, %3
  %30 = load double, double* %5, align 8, !dbg !400
  %31 = fcmp olt double %30, 0.000000e+00, !dbg !402
  br i1 %31, label %32, label %103, !dbg !403

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata double* %8, metadata !404, metadata !59), !dbg !406
  %33 = load double, double* %5, align 8, !dbg !407
  %34 = fsub double -0.000000e+00, %33, !dbg !408
  store double %34, double* %8, align 8, !dbg !406
  call void @llvm.dbg.declare(metadata double* %9, metadata !409, metadata !59), !dbg !410
  %35 = load double, double* %8, align 8, !dbg !411
  %36 = fmul double %35, 0x400921FB54442D18, !dbg !412
  %37 = call double @sin(double %36) #5, !dbg !413
  %38 = fmul double 0x3FE45F306DC9C883, %37, !dbg !414
  store double %38, double* %9, align 8, !dbg !410
  call void @llvm.dbg.declare(metadata double* %10, metadata !415, metadata !59), !dbg !416
  %39 = load double, double* %6, align 8, !dbg !417
  %40 = call double @exp(double %39) #5, !dbg !418
  store double %40, double* %10, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !419, metadata !59), !dbg !420
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !421, metadata !59), !dbg !422
  call void @llvm.dbg.declare(metadata i32* %13, metadata !423, metadata !59), !dbg !424
  %41 = load double, double* %8, align 8, !dbg !425
  %42 = load double, double* %6, align 8, !dbg !426
  %43 = call i32 @gsl_sf_bessel_Inu_scaled_e(double %41, double %42, %struct.gsl_sf_result_struct* %11), !dbg !427
  store i32 %43, i32* %13, align 4, !dbg !424
  call void @llvm.dbg.declare(metadata i32* %14, metadata !428, metadata !59), !dbg !429
  %44 = load double, double* %8, align 8, !dbg !430
  %45 = load double, double* %6, align 8, !dbg !431
  %46 = call i32 @gsl_sf_bessel_Knu_scaled_e(double %44, double %45, %struct.gsl_sf_result_struct* %12), !dbg !432
  store i32 %46, i32* %14, align 4, !dbg !429
  %47 = load double, double* %10, align 8, !dbg !433
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !434
  %49 = load double, double* %48, align 8, !dbg !434
  %50 = fmul double %47, %49, !dbg !435
  %51 = load double, double* %9, align 8, !dbg !436
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !437
  %53 = load double, double* %52, align 8, !dbg !437
  %54 = load double, double* %10, align 8, !dbg !438
  %55 = fdiv double %53, %54, !dbg !439
  %56 = fmul double %51, %55, !dbg !440
  %57 = fadd double %50, %56, !dbg !441
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !442
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !443
  store double %57, double* %59, align 8, !dbg !444
  %60 = load double, double* %10, align 8, !dbg !445
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !446
  %62 = load double, double* %61, align 8, !dbg !446
  %63 = fmul double %60, %62, !dbg !447
  %64 = load double, double* %9, align 8, !dbg !448
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !449
  %66 = load double, double* %65, align 8, !dbg !449
  %67 = fmul double %64, %66, !dbg !450
  %68 = load double, double* %10, align 8, !dbg !451
  %69 = fdiv double %67, %68, !dbg !452
  %70 = call double @fabs(double %69) #1, !dbg !453
  %71 = fadd double %63, %70, !dbg !454
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !455
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !456
  store double %71, double* %73, align 8, !dbg !457
  %74 = load double, double* %9, align 8, !dbg !458
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !459
  %76 = load double, double* %75, align 8, !dbg !459
  %77 = load double, double* %10, align 8, !dbg !460
  %78 = fdiv double %76, %77, !dbg !461
  %79 = fmul double %74, %78, !dbg !462
  %80 = call double @fabs(double %79) #1, !dbg !463
  %81 = fmul double %80, 0x3CB0000000000000, !dbg !464
  %82 = load double, double* %8, align 8, !dbg !465
  %83 = fmul double %81, %82, !dbg !466
  %84 = fmul double %83, 0x400921FB54442D18, !dbg !467
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !468
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !469
  %87 = load double, double* %86, align 8, !dbg !470
  %88 = fadd double %87, %84, !dbg !470
  store double %88, double* %86, align 8, !dbg !470
  %89 = load i32, i32* %14, align 4, !dbg !471
  %90 = icmp ne i32 %89, 0, !dbg !471
  br i1 %90, label %91, label %93, !dbg !471

; <label>:91:                                     ; preds = %32
  %92 = load i32, i32* %14, align 4, !dbg !472
  br label %101, !dbg !472

; <label>:93:                                     ; preds = %32
  %94 = load i32, i32* %13, align 4, !dbg !474
  %95 = icmp ne i32 %94, 0, !dbg !474
  br i1 %95, label %96, label %98, !dbg !474

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %13, align 4, !dbg !476
  br label %99, !dbg !476

; <label>:98:                                     ; preds = %93
  br label %99, !dbg !478

; <label>:99:                                     ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ], !dbg !480
  br label %101, !dbg !480

; <label>:101:                                    ; preds = %99, %91
  %102 = phi i32 [ %92, %91 ], [ %100, %99 ], !dbg !482
  store i32 %102, i32* %4, align 4, !dbg !484
  br label %128, !dbg !484

; <label>:103:                                    ; preds = %29
  call void @llvm.dbg.declare(metadata double* %15, metadata !485, metadata !59), !dbg !487
  %104 = load double, double* %6, align 8, !dbg !488
  %105 = call double @exp(double %104) #5, !dbg !489
  store double %105, double* %15, align 8, !dbg !487
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !490, metadata !59), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %17, metadata !492, metadata !59), !dbg !493
  %106 = load double, double* %5, align 8, !dbg !494
  %107 = load double, double* %6, align 8, !dbg !495
  %108 = call i32 @gsl_sf_bessel_Inu_scaled_e(double %106, double %107, %struct.gsl_sf_result_struct* %16), !dbg !496
  store i32 %108, i32* %17, align 4, !dbg !493
  %109 = load double, double* %15, align 8, !dbg !497
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !498
  %111 = load double, double* %110, align 8, !dbg !498
  %112 = fmul double %109, %111, !dbg !499
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !500
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !501
  store double %112, double* %114, align 8, !dbg !502
  %115 = load double, double* %15, align 8, !dbg !503
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !504
  %117 = load double, double* %116, align 8, !dbg !504
  %118 = fmul double %115, %117, !dbg !505
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !506
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 0, !dbg !507
  %121 = load double, double* %120, align 8, !dbg !507
  %122 = call double @fabs(double %121) #1, !dbg !508
  %123 = fmul double 0x3CB0000000000000, %122, !dbg !509
  %124 = fadd double %118, %123, !dbg !510
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !511
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !512
  store double %124, double* %126, align 8, !dbg !513
  %127 = load i32, i32* %17, align 4, !dbg !514
  store i32 %127, i32* %4, align 4, !dbg !515
  br label %128, !dbg !515

; <label>:128:                                    ; preds = %103, %101, %26
  %129 = load i32, i32* %4, align 4, !dbg !516
  ret i32 %129, !dbg !516
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_0F1(double, double) #0 !dbg !517 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !520, metadata !59), !dbg !521
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !522, metadata !59), !dbg !523
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !524, metadata !59), !dbg !525
  call void @llvm.dbg.declare(metadata i32* %7, metadata !526, metadata !59), !dbg !525
  %8 = load double, double* %4, align 8, !dbg !525
  %9 = load double, double* %5, align 8, !dbg !525
  %10 = call i32 @gsl_sf_hyperg_0F1_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !525
  store i32 %10, i32* %7, align 4, !dbg !525
  %11 = load i32, i32* %7, align 4, !dbg !527
  %12 = icmp ne i32 %11, 0, !dbg !527
  br i1 %12, label %13, label %19, !dbg !525

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !529, !llvm.loop !532

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !534
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 177, i32 %15), !dbg !534
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !534
  %17 = load double, double* %16, align 8, !dbg !534
  store double %17, double* %3, align 8, !dbg !534
  br label %22, !dbg !534
                                                  ; No predecessors!
  br label %19, !dbg !537

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !539
  %21 = load double, double* %20, align 8, !dbg !539
  store double %21, double* %3, align 8, !dbg !539
  br label %22, !dbg !539

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !541
  ret double %23, !dbg !541
}

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare double @cos(double) #4

declare i32 @gsl_sf_bessel_Jnu_e(double, double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_Ynu_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @exp(double) #4

declare i32 @gsl_sf_bessel_Inu_scaled_e(double, double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_Knu_scaled_e(double, double, %struct.gsl_sf_result_struct*) #3

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
!1 = !DIFile(filename: "hyperg_0F1.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_hyperg_0F1_e", scope: !1, file: !1, line: 103, type: !46, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !50}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !52, line: 41, baseType: !53)
!52 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !52, line: 37, size: 128, align: 64, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !52, line: 38, baseType: !49, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !53, file: !52, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!57 = !{}
!58 = !DILocalVariable(name: "c", arg: 1, scope: !45, file: !1, line: 103, type: !49)
!59 = !DIExpression()
!60 = !DILocation(line: 103, column: 28, scope: !45)
!61 = !DILocalVariable(name: "x", arg: 2, scope: !45, file: !1, line: 103, type: !49)
!62 = !DILocation(line: 103, column: 38, scope: !45)
!63 = !DILocalVariable(name: "result", arg: 3, scope: !45, file: !1, line: 103, type: !50)
!64 = !DILocation(line: 103, column: 57, scope: !45)
!65 = !DILocalVariable(name: "rintc", scope: !45, file: !1, line: 105, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!67 = !DILocation(line: 105, column: 16, scope: !45)
!68 = !DILocation(line: 105, column: 30, scope: !45)
!69 = !DILocation(line: 105, column: 32, scope: !45)
!70 = !DILocation(line: 105, column: 24, scope: !45)
!71 = !DILocalVariable(name: "c_neg_integer", scope: !45, file: !1, line: 106, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!73 = !DILocation(line: 106, column: 13, scope: !45)
!74 = !DILocation(line: 106, column: 30, scope: !45)
!75 = !DILocation(line: 106, column: 32, scope: !45)
!76 = !DILocation(line: 106, column: 38, scope: !45)
!77 = !DILocation(line: 106, column: 46, scope: !78)
!78 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 1)
!79 = !DILocation(line: 106, column: 50, scope: !78)
!80 = !DILocation(line: 106, column: 48, scope: !78)
!81 = !DILocation(line: 106, column: 41, scope: !78)
!82 = !DILocation(line: 106, column: 57, scope: !78)
!83 = !DILocation(line: 106, column: 38, scope: !84)
!84 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 2)
!85 = !DILocation(line: 106, column: 13, scope: !84)
!86 = !DILocation(line: 110, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !45, file: !1, line: 110, column: 6)
!88 = !DILocation(line: 110, column: 8, scope: !87)
!89 = !DILocation(line: 110, column: 15, scope: !87)
!90 = !DILocation(line: 110, column: 18, scope: !91)
!91 = !DILexicalBlockFile(scope: !87, file: !1, discriminator: 1)
!92 = !DILocation(line: 110, column: 6, scope: !91)
!93 = !DILocation(line: 111, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 110, column: 33)
!95 = distinct !{!95, !93}
!96 = !DILocation(line: 111, column: 5, scope: !97)
!97 = !DILexicalBlockFile(scope: !98, file: !1, discriminator: 1)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 111, column: 5)
!99 = distinct !{!99, !100}
!100 = !DILocation(line: 111, column: 5, scope: !98)
!101 = !DILocation(line: 111, column: 5, scope: !102)
!102 = !DILexicalBlockFile(scope: !103, file: !1, discriminator: 2)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 111, column: 5)
!104 = !DILocation(line: 111, column: 5, scope: !105)
!105 = !DILexicalBlockFile(scope: !98, file: !1, discriminator: 3)
!106 = !DILocation(line: 112, column: 3, scope: !94)
!107 = !DILocation(line: 113, column: 11, scope: !108)
!108 = distinct !DILexicalBlock(scope: !87, file: !1, line: 113, column: 11)
!109 = !DILocation(line: 113, column: 13, scope: !108)
!110 = !DILocation(line: 113, column: 11, scope: !87)
!111 = !DILocalVariable(name: "Jcm1", scope: !112, file: !1, line: 114, type: !51)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 113, column: 20)
!113 = !DILocation(line: 114, column: 19, scope: !112)
!114 = !DILocalVariable(name: "lg_c", scope: !112, file: !1, line: 115, type: !51)
!115 = !DILocation(line: 115, column: 19, scope: !112)
!116 = !DILocalVariable(name: "sgn", scope: !112, file: !1, line: 116, type: !49)
!117 = !DILocation(line: 116, column: 12, scope: !112)
!118 = !DILocalVariable(name: "stat_g", scope: !112, file: !1, line: 117, type: !48)
!119 = !DILocation(line: 117, column: 9, scope: !112)
!120 = !DILocation(line: 117, column: 39, scope: !112)
!121 = !DILocation(line: 117, column: 18, scope: !112)
!122 = !DILocalVariable(name: "stat_J", scope: !112, file: !1, line: 118, type: !48)
!123 = !DILocation(line: 118, column: 9, scope: !112)
!124 = !DILocation(line: 118, column: 38, scope: !112)
!125 = !DILocation(line: 118, column: 39, scope: !112)
!126 = !DILocation(line: 118, column: 55, scope: !112)
!127 = !DILocation(line: 118, column: 54, scope: !112)
!128 = !DILocation(line: 118, column: 49, scope: !112)
!129 = !DILocation(line: 118, column: 48, scope: !112)
!130 = !DILocation(line: 118, column: 18, scope: !131)
!131 = !DILexicalBlockFile(scope: !112, file: !1, discriminator: 1)
!132 = !DILocation(line: 119, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !112, file: !1, line: 119, column: 8)
!134 = !DILocation(line: 119, column: 15, scope: !133)
!135 = !DILocation(line: 119, column: 8, scope: !112)
!136 = !DILocation(line: 120, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 119, column: 31)
!138 = !DILocation(line: 120, column: 15, scope: !137)
!139 = !DILocation(line: 120, column: 19, scope: !137)
!140 = !DILocation(line: 121, column: 7, scope: !137)
!141 = !DILocation(line: 121, column: 15, scope: !137)
!142 = !DILocation(line: 121, column: 19, scope: !137)
!143 = !DILocation(line: 122, column: 14, scope: !137)
!144 = !DILocation(line: 122, column: 7, scope: !137)
!145 = !DILocation(line: 124, column: 18, scope: !146)
!146 = distinct !DILexicalBlock(scope: !133, file: !1, line: 124, column: 13)
!147 = !DILocation(line: 124, column: 22, scope: !146)
!148 = !DILocation(line: 124, column: 13, scope: !133)
!149 = !DILocation(line: 125, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 124, column: 30)
!151 = !DILocation(line: 125, column: 15, scope: !150)
!152 = !DILocation(line: 125, column: 19, scope: !150)
!153 = !DILocation(line: 126, column: 7, scope: !150)
!154 = !DILocation(line: 126, column: 15, scope: !150)
!155 = !DILocation(line: 126, column: 19, scope: !150)
!156 = !DILocation(line: 127, column: 14, scope: !150)
!157 = !DILocation(line: 127, column: 7, scope: !150)
!158 = !DILocalVariable(name: "tl", scope: !159, file: !1, line: 130, type: !66)
!159 = distinct !DILexicalBlock(scope: !146, file: !1, line: 129, column: 10)
!160 = !DILocation(line: 130, column: 20, scope: !159)
!161 = !DILocation(line: 130, column: 30, scope: !159)
!162 = !DILocation(line: 130, column: 29, scope: !159)
!163 = !DILocation(line: 130, column: 25, scope: !159)
!164 = !DILocation(line: 130, column: 32, scope: !159)
!165 = !DILocation(line: 130, column: 42, scope: !159)
!166 = !DILocation(line: 130, column: 41, scope: !159)
!167 = !DILocation(line: 130, column: 36, scope: !159)
!168 = !DILocalVariable(name: "ln_pre_val", scope: !159, file: !1, line: 131, type: !49)
!169 = !DILocation(line: 131, column: 14, scope: !159)
!170 = !DILocation(line: 131, column: 32, scope: !159)
!171 = !DILocation(line: 131, column: 38, scope: !159)
!172 = !DILocation(line: 131, column: 36, scope: !159)
!173 = !DILocalVariable(name: "ln_pre_err", scope: !159, file: !1, line: 132, type: !49)
!174 = !DILocation(line: 132, column: 14, scope: !159)
!175 = !DILocation(line: 132, column: 32, scope: !159)
!176 = !DILocation(line: 132, column: 67, scope: !159)
!177 = !DILocation(line: 132, column: 62, scope: !159)
!178 = !DILocation(line: 132, column: 60, scope: !159)
!179 = !DILocation(line: 132, column: 36, scope: !159)
!180 = !DILocation(line: 133, column: 36, scope: !159)
!181 = !DILocation(line: 133, column: 48, scope: !159)
!182 = !DILocation(line: 134, column: 39, scope: !159)
!183 = !DILocation(line: 134, column: 48, scope: !159)
!184 = !DILocation(line: 134, column: 42, scope: !159)
!185 = !DILocation(line: 134, column: 58, scope: !159)
!186 = !DILocation(line: 135, column: 39, scope: !159)
!187 = !DILocation(line: 133, column: 14, scope: !159)
!188 = !DILocation(line: 133, column: 7, scope: !159)
!189 = !DILocation(line: 138, column: 11, scope: !190)
!190 = distinct !DILexicalBlock(scope: !108, file: !1, line: 138, column: 11)
!191 = !DILocation(line: 138, column: 13, scope: !190)
!192 = !DILocation(line: 138, column: 11, scope: !108)
!193 = !DILocation(line: 139, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 138, column: 21)
!195 = !DILocation(line: 139, column: 13, scope: !194)
!196 = !DILocation(line: 139, column: 17, scope: !194)
!197 = !DILocation(line: 140, column: 5, scope: !194)
!198 = !DILocation(line: 140, column: 13, scope: !194)
!199 = !DILocation(line: 140, column: 17, scope: !194)
!200 = !DILocation(line: 141, column: 5, scope: !194)
!201 = !DILocalVariable(name: "Icm1", scope: !202, file: !1, line: 144, type: !51)
!202 = distinct !DILexicalBlock(scope: !190, file: !1, line: 143, column: 8)
!203 = !DILocation(line: 144, column: 19, scope: !202)
!204 = !DILocalVariable(name: "lg_c", scope: !202, file: !1, line: 145, type: !51)
!205 = !DILocation(line: 145, column: 19, scope: !202)
!206 = !DILocalVariable(name: "sgn", scope: !202, file: !1, line: 146, type: !49)
!207 = !DILocation(line: 146, column: 12, scope: !202)
!208 = !DILocalVariable(name: "stat_g", scope: !202, file: !1, line: 147, type: !48)
!209 = !DILocation(line: 147, column: 9, scope: !202)
!210 = !DILocation(line: 147, column: 39, scope: !202)
!211 = !DILocation(line: 147, column: 18, scope: !202)
!212 = !DILocalVariable(name: "stat_I", scope: !202, file: !1, line: 148, type: !48)
!213 = !DILocation(line: 148, column: 9, scope: !202)
!214 = !DILocation(line: 148, column: 38, scope: !202)
!215 = !DILocation(line: 148, column: 39, scope: !202)
!216 = !DILocation(line: 148, column: 54, scope: !202)
!217 = !DILocation(line: 148, column: 49, scope: !202)
!218 = !DILocation(line: 148, column: 48, scope: !202)
!219 = !DILocation(line: 148, column: 18, scope: !220)
!220 = !DILexicalBlockFile(scope: !202, file: !1, discriminator: 1)
!221 = !DILocation(line: 149, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !202, file: !1, line: 149, column: 8)
!223 = !DILocation(line: 149, column: 15, scope: !222)
!224 = !DILocation(line: 149, column: 8, scope: !202)
!225 = !DILocation(line: 150, column: 7, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 149, column: 31)
!227 = !DILocation(line: 150, column: 15, scope: !226)
!228 = !DILocation(line: 150, column: 19, scope: !226)
!229 = !DILocation(line: 151, column: 7, scope: !226)
!230 = !DILocation(line: 151, column: 15, scope: !226)
!231 = !DILocation(line: 151, column: 19, scope: !226)
!232 = !DILocation(line: 152, column: 14, scope: !226)
!233 = !DILocation(line: 152, column: 7, scope: !226)
!234 = !DILocation(line: 154, column: 18, scope: !235)
!235 = distinct !DILexicalBlock(scope: !222, file: !1, line: 154, column: 13)
!236 = !DILocation(line: 154, column: 22, scope: !235)
!237 = !DILocation(line: 154, column: 13, scope: !222)
!238 = !DILocation(line: 155, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !1, line: 154, column: 30)
!240 = !DILocation(line: 155, column: 15, scope: !239)
!241 = !DILocation(line: 155, column: 19, scope: !239)
!242 = !DILocation(line: 156, column: 7, scope: !239)
!243 = !DILocation(line: 156, column: 15, scope: !239)
!244 = !DILocation(line: 156, column: 19, scope: !239)
!245 = !DILocation(line: 157, column: 14, scope: !239)
!246 = !DILocation(line: 157, column: 7, scope: !239)
!247 = !DILocalVariable(name: "tl", scope: !248, file: !1, line: 160, type: !66)
!248 = distinct !DILexicalBlock(scope: !235, file: !1, line: 159, column: 10)
!249 = !DILocation(line: 160, column: 20, scope: !248)
!250 = !DILocation(line: 160, column: 29, scope: !248)
!251 = !DILocation(line: 160, column: 25, scope: !248)
!252 = !DILocation(line: 160, column: 31, scope: !248)
!253 = !DILocation(line: 160, column: 41, scope: !248)
!254 = !DILocation(line: 160, column: 40, scope: !248)
!255 = !DILocation(line: 160, column: 35, scope: !248)
!256 = !DILocalVariable(name: "ln_pre_val", scope: !248, file: !1, line: 161, type: !66)
!257 = !DILocation(line: 161, column: 20, scope: !248)
!258 = !DILocation(line: 161, column: 38, scope: !248)
!259 = !DILocation(line: 161, column: 44, scope: !248)
!260 = !DILocation(line: 161, column: 42, scope: !248)
!261 = !DILocalVariable(name: "ln_pre_err", scope: !248, file: !1, line: 162, type: !66)
!262 = !DILocation(line: 162, column: 20, scope: !248)
!263 = !DILocation(line: 162, column: 38, scope: !248)
!264 = !DILocation(line: 162, column: 73, scope: !248)
!265 = !DILocation(line: 162, column: 68, scope: !248)
!266 = !DILocation(line: 162, column: 66, scope: !248)
!267 = !DILocation(line: 162, column: 42, scope: !248)
!268 = !DILocation(line: 163, column: 36, scope: !248)
!269 = !DILocation(line: 163, column: 48, scope: !248)
!270 = !DILocation(line: 164, column: 39, scope: !248)
!271 = !DILocation(line: 164, column: 48, scope: !248)
!272 = !DILocation(line: 164, column: 42, scope: !248)
!273 = !DILocation(line: 164, column: 58, scope: !248)
!274 = !DILocation(line: 165, column: 39, scope: !248)
!275 = !DILocation(line: 163, column: 14, scope: !248)
!276 = !DILocation(line: 163, column: 7, scope: !248)
!277 = !DILocation(line: 168, column: 1, scope: !45)
!278 = distinct !DISubprogram(name: "hyperg_0F1_bessel_J", scope: !1, file: !1, line: 79, type: !279, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!279 = !DISubroutineType(types: !280)
!280 = !{!48, !66, !66, !50}
!281 = !DILocalVariable(name: "nu", arg: 1, scope: !278, file: !1, line: 79, type: !66)
!282 = !DILocation(line: 79, column: 34, scope: !278)
!283 = !DILocalVariable(name: "x", arg: 2, scope: !278, file: !1, line: 79, type: !66)
!284 = !DILocation(line: 79, column: 51, scope: !278)
!285 = !DILocalVariable(name: "result", arg: 3, scope: !278, file: !1, line: 79, type: !50)
!286 = !DILocation(line: 79, column: 70, scope: !278)
!287 = !DILocation(line: 81, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !278, file: !1, line: 81, column: 6)
!289 = !DILocation(line: 81, column: 9, scope: !288)
!290 = !DILocation(line: 81, column: 6, scope: !278)
!291 = !DILocalVariable(name: "anu", scope: !292, file: !1, line: 82, type: !66)
!292 = distinct !DILexicalBlock(scope: !288, file: !1, line: 81, column: 16)
!293 = !DILocation(line: 82, column: 18, scope: !292)
!294 = !DILocation(line: 82, column: 25, scope: !292)
!295 = !DILocation(line: 82, column: 24, scope: !292)
!296 = !DILocalVariable(name: "s", scope: !292, file: !1, line: 83, type: !66)
!297 = !DILocation(line: 83, column: 18, scope: !292)
!298 = !DILocation(line: 83, column: 28, scope: !292)
!299 = !DILocation(line: 83, column: 31, scope: !292)
!300 = !DILocation(line: 83, column: 24, scope: !292)
!301 = !DILocalVariable(name: "c", scope: !292, file: !1, line: 84, type: !66)
!302 = !DILocation(line: 84, column: 18, scope: !292)
!303 = !DILocation(line: 84, column: 28, scope: !292)
!304 = !DILocation(line: 84, column: 31, scope: !292)
!305 = !DILocation(line: 84, column: 24, scope: !292)
!306 = !DILocalVariable(name: "J", scope: !292, file: !1, line: 85, type: !51)
!307 = !DILocation(line: 85, column: 19, scope: !292)
!308 = !DILocalVariable(name: "Y", scope: !292, file: !1, line: 86, type: !51)
!309 = !DILocation(line: 86, column: 19, scope: !292)
!310 = !DILocalVariable(name: "stat_J", scope: !292, file: !1, line: 87, type: !48)
!311 = !DILocation(line: 87, column: 9, scope: !292)
!312 = !DILocation(line: 87, column: 38, scope: !292)
!313 = !DILocation(line: 87, column: 43, scope: !292)
!314 = !DILocation(line: 87, column: 18, scope: !292)
!315 = !DILocalVariable(name: "stat_Y", scope: !292, file: !1, line: 88, type: !48)
!316 = !DILocation(line: 88, column: 9, scope: !292)
!317 = !DILocation(line: 88, column: 38, scope: !292)
!318 = !DILocation(line: 88, column: 43, scope: !292)
!319 = !DILocation(line: 88, column: 18, scope: !292)
!320 = !DILocation(line: 89, column: 20, scope: !292)
!321 = !DILocation(line: 89, column: 26, scope: !292)
!322 = !DILocation(line: 89, column: 22, scope: !292)
!323 = !DILocation(line: 89, column: 32, scope: !292)
!324 = !DILocation(line: 89, column: 38, scope: !292)
!325 = !DILocation(line: 89, column: 34, scope: !292)
!326 = !DILocation(line: 89, column: 30, scope: !292)
!327 = !DILocation(line: 89, column: 5, scope: !292)
!328 = !DILocation(line: 89, column: 13, scope: !292)
!329 = !DILocation(line: 89, column: 18, scope: !292)
!330 = !DILocation(line: 90, column: 25, scope: !292)
!331 = !DILocation(line: 90, column: 31, scope: !292)
!332 = !DILocation(line: 90, column: 27, scope: !292)
!333 = !DILocation(line: 90, column: 20, scope: !292)
!334 = !DILocation(line: 90, column: 43, scope: !292)
!335 = !DILocation(line: 90, column: 49, scope: !292)
!336 = !DILocation(line: 90, column: 45, scope: !292)
!337 = !DILocation(line: 90, column: 38, scope: !338)
!338 = !DILexicalBlockFile(scope: !292, file: !1, discriminator: 1)
!339 = !DILocation(line: 90, column: 36, scope: !292)
!340 = !DILocation(line: 90, column: 5, scope: !292)
!341 = !DILocation(line: 90, column: 13, scope: !292)
!342 = !DILocation(line: 90, column: 18, scope: !292)
!343 = !DILocation(line: 91, column: 25, scope: !292)
!344 = !DILocation(line: 91, column: 29, scope: !292)
!345 = !DILocation(line: 91, column: 20, scope: !292)
!346 = !DILocation(line: 91, column: 37, scope: !292)
!347 = !DILocation(line: 91, column: 64, scope: !292)
!348 = !DILocation(line: 91, column: 72, scope: !292)
!349 = !DILocation(line: 91, column: 68, scope: !292)
!350 = !DILocation(line: 91, column: 57, scope: !338)
!351 = !DILocation(line: 91, column: 55, scope: !292)
!352 = !DILocation(line: 91, column: 5, scope: !292)
!353 = !DILocation(line: 91, column: 13, scope: !292)
!354 = !DILocation(line: 91, column: 17, scope: !292)
!355 = !DILocation(line: 92, column: 12, scope: !292)
!356 = !DILocation(line: 92, column: 12, scope: !338)
!357 = !DILocation(line: 92, column: 12, scope: !358)
!358 = !DILexicalBlockFile(scope: !292, file: !1, discriminator: 2)
!359 = !DILocation(line: 92, column: 12, scope: !360)
!360 = !DILexicalBlockFile(scope: !292, file: !1, discriminator: 3)
!361 = !DILocation(line: 92, column: 12, scope: !362)
!362 = !DILexicalBlockFile(scope: !292, file: !1, discriminator: 4)
!363 = !DILocation(line: 92, column: 12, scope: !364)
!364 = !DILexicalBlockFile(scope: !292, file: !1, discriminator: 5)
!365 = !DILocation(line: 92, column: 12, scope: !366)
!366 = !DILexicalBlockFile(scope: !292, file: !1, discriminator: 6)
!367 = !DILocation(line: 92, column: 5, scope: !366)
!368 = !DILocation(line: 95, column: 32, scope: !369)
!369 = distinct !DILexicalBlock(scope: !288, file: !1, line: 94, column: 8)
!370 = !DILocation(line: 95, column: 36, scope: !369)
!371 = !DILocation(line: 95, column: 39, scope: !369)
!372 = !DILocation(line: 95, column: 12, scope: !369)
!373 = !DILocation(line: 95, column: 5, scope: !369)
!374 = !DILocation(line: 97, column: 1, scope: !278)
!375 = distinct !DISubprogram(name: "hyperg_0F1_bessel_I", scope: !1, file: !1, line: 42, type: !279, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!376 = !DILocalVariable(name: "nu", arg: 1, scope: !375, file: !1, line: 42, type: !66)
!377 = !DILocation(line: 42, column: 34, scope: !375)
!378 = !DILocalVariable(name: "x", arg: 2, scope: !375, file: !1, line: 42, type: !66)
!379 = !DILocation(line: 42, column: 51, scope: !375)
!380 = !DILocalVariable(name: "result", arg: 3, scope: !375, file: !1, line: 42, type: !50)
!381 = !DILocation(line: 42, column: 70, scope: !375)
!382 = !DILocation(line: 44, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !375, file: !1, line: 44, column: 6)
!384 = !DILocation(line: 44, column: 8, scope: !383)
!385 = !DILocation(line: 44, column: 6, scope: !375)
!386 = !DILocation(line: 45, column: 5, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !1, line: 44, column: 27)
!388 = distinct !{!388, !386}
!389 = !DILocation(line: 45, column: 5, scope: !390)
!390 = !DILexicalBlockFile(scope: !391, file: !1, discriminator: 1)
!391 = distinct !DILexicalBlock(scope: !387, file: !1, line: 45, column: 5)
!392 = distinct !{!392, !393}
!393 = !DILocation(line: 45, column: 5, scope: !391)
!394 = !DILocation(line: 45, column: 5, scope: !395)
!395 = !DILexicalBlockFile(scope: !396, file: !1, discriminator: 2)
!396 = distinct !DILexicalBlock(scope: !391, file: !1, line: 45, column: 5)
!397 = !DILocation(line: 45, column: 5, scope: !398)
!398 = !DILexicalBlockFile(scope: !391, file: !1, discriminator: 3)
!399 = !DILocation(line: 46, column: 3, scope: !387)
!400 = !DILocation(line: 48, column: 6, scope: !401)
!401 = distinct !DILexicalBlock(scope: !375, file: !1, line: 48, column: 6)
!402 = !DILocation(line: 48, column: 9, scope: !401)
!403 = !DILocation(line: 48, column: 6, scope: !375)
!404 = !DILocalVariable(name: "anu", scope: !405, file: !1, line: 49, type: !66)
!405 = distinct !DILexicalBlock(scope: !401, file: !1, line: 48, column: 16)
!406 = !DILocation(line: 49, column: 18, scope: !405)
!407 = !DILocation(line: 49, column: 25, scope: !405)
!408 = !DILocation(line: 49, column: 24, scope: !405)
!409 = !DILocalVariable(name: "s", scope: !405, file: !1, line: 50, type: !66)
!410 = !DILocation(line: 50, column: 18, scope: !405)
!411 = !DILocation(line: 50, column: 39, scope: !405)
!412 = !DILocation(line: 50, column: 42, scope: !405)
!413 = !DILocation(line: 50, column: 35, scope: !405)
!414 = !DILocation(line: 50, column: 33, scope: !405)
!415 = !DILocalVariable(name: "ex", scope: !405, file: !1, line: 51, type: !66)
!416 = !DILocation(line: 51, column: 18, scope: !405)
!417 = !DILocation(line: 51, column: 28, scope: !405)
!418 = !DILocation(line: 51, column: 24, scope: !405)
!419 = !DILocalVariable(name: "I", scope: !405, file: !1, line: 52, type: !51)
!420 = !DILocation(line: 52, column: 19, scope: !405)
!421 = !DILocalVariable(name: "K", scope: !405, file: !1, line: 53, type: !51)
!422 = !DILocation(line: 53, column: 19, scope: !405)
!423 = !DILocalVariable(name: "stat_I", scope: !405, file: !1, line: 54, type: !48)
!424 = !DILocation(line: 54, column: 9, scope: !405)
!425 = !DILocation(line: 54, column: 45, scope: !405)
!426 = !DILocation(line: 54, column: 50, scope: !405)
!427 = !DILocation(line: 54, column: 18, scope: !405)
!428 = !DILocalVariable(name: "stat_K", scope: !405, file: !1, line: 55, type: !48)
!429 = !DILocation(line: 55, column: 9, scope: !405)
!430 = !DILocation(line: 55, column: 45, scope: !405)
!431 = !DILocation(line: 55, column: 50, scope: !405)
!432 = !DILocation(line: 55, column: 18, scope: !405)
!433 = !DILocation(line: 56, column: 20, scope: !405)
!434 = !DILocation(line: 56, column: 27, scope: !405)
!435 = !DILocation(line: 56, column: 23, scope: !405)
!436 = !DILocation(line: 56, column: 33, scope: !405)
!437 = !DILocation(line: 56, column: 40, scope: !405)
!438 = !DILocation(line: 56, column: 46, scope: !405)
!439 = !DILocation(line: 56, column: 44, scope: !405)
!440 = !DILocation(line: 56, column: 35, scope: !405)
!441 = !DILocation(line: 56, column: 31, scope: !405)
!442 = !DILocation(line: 56, column: 5, scope: !405)
!443 = !DILocation(line: 56, column: 13, scope: !405)
!444 = !DILocation(line: 56, column: 18, scope: !405)
!445 = !DILocation(line: 57, column: 20, scope: !405)
!446 = !DILocation(line: 57, column: 27, scope: !405)
!447 = !DILocation(line: 57, column: 23, scope: !405)
!448 = !DILocation(line: 57, column: 38, scope: !405)
!449 = !DILocation(line: 57, column: 44, scope: !405)
!450 = !DILocation(line: 57, column: 40, scope: !405)
!451 = !DILocation(line: 57, column: 48, scope: !405)
!452 = !DILocation(line: 57, column: 47, scope: !405)
!453 = !DILocation(line: 57, column: 33, scope: !405)
!454 = !DILocation(line: 57, column: 31, scope: !405)
!455 = !DILocation(line: 57, column: 5, scope: !405)
!456 = !DILocation(line: 57, column: 13, scope: !405)
!457 = !DILocation(line: 57, column: 18, scope: !405)
!458 = !DILocation(line: 58, column: 25, scope: !405)
!459 = !DILocation(line: 58, column: 32, scope: !405)
!460 = !DILocation(line: 58, column: 36, scope: !405)
!461 = !DILocation(line: 58, column: 35, scope: !405)
!462 = !DILocation(line: 58, column: 27, scope: !405)
!463 = !DILocation(line: 58, column: 20, scope: !405)
!464 = !DILocation(line: 58, column: 41, scope: !405)
!465 = !DILocation(line: 58, column: 61, scope: !405)
!466 = !DILocation(line: 58, column: 59, scope: !405)
!467 = !DILocation(line: 58, column: 65, scope: !405)
!468 = !DILocation(line: 58, column: 5, scope: !405)
!469 = !DILocation(line: 58, column: 13, scope: !405)
!470 = !DILocation(line: 58, column: 17, scope: !405)
!471 = !DILocation(line: 59, column: 12, scope: !405)
!472 = !DILocation(line: 59, column: 12, scope: !473)
!473 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 1)
!474 = !DILocation(line: 59, column: 12, scope: !475)
!475 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 2)
!476 = !DILocation(line: 59, column: 12, scope: !477)
!477 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 3)
!478 = !DILocation(line: 59, column: 12, scope: !479)
!479 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 4)
!480 = !DILocation(line: 59, column: 12, scope: !481)
!481 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 5)
!482 = !DILocation(line: 59, column: 12, scope: !483)
!483 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 6)
!484 = !DILocation(line: 59, column: 5, scope: !483)
!485 = !DILocalVariable(name: "ex", scope: !486, file: !1, line: 62, type: !66)
!486 = distinct !DILexicalBlock(scope: !401, file: !1, line: 61, column: 8)
!487 = !DILocation(line: 62, column: 18, scope: !486)
!488 = !DILocation(line: 62, column: 28, scope: !486)
!489 = !DILocation(line: 62, column: 24, scope: !486)
!490 = !DILocalVariable(name: "I", scope: !486, file: !1, line: 63, type: !51)
!491 = !DILocation(line: 63, column: 19, scope: !486)
!492 = !DILocalVariable(name: "stat_I", scope: !486, file: !1, line: 64, type: !48)
!493 = !DILocation(line: 64, column: 9, scope: !486)
!494 = !DILocation(line: 64, column: 45, scope: !486)
!495 = !DILocation(line: 64, column: 49, scope: !486)
!496 = !DILocation(line: 64, column: 18, scope: !486)
!497 = !DILocation(line: 65, column: 19, scope: !486)
!498 = !DILocation(line: 65, column: 26, scope: !486)
!499 = !DILocation(line: 65, column: 22, scope: !486)
!500 = !DILocation(line: 65, column: 5, scope: !486)
!501 = !DILocation(line: 65, column: 13, scope: !486)
!502 = !DILocation(line: 65, column: 17, scope: !486)
!503 = !DILocation(line: 66, column: 19, scope: !486)
!504 = !DILocation(line: 66, column: 26, scope: !486)
!505 = !DILocation(line: 66, column: 22, scope: !486)
!506 = !DILocation(line: 66, column: 55, scope: !486)
!507 = !DILocation(line: 66, column: 63, scope: !486)
!508 = !DILocation(line: 66, column: 50, scope: !486)
!509 = !DILocation(line: 66, column: 48, scope: !486)
!510 = !DILocation(line: 66, column: 30, scope: !486)
!511 = !DILocation(line: 66, column: 5, scope: !486)
!512 = !DILocation(line: 66, column: 13, scope: !486)
!513 = !DILocation(line: 66, column: 17, scope: !486)
!514 = !DILocation(line: 67, column: 12, scope: !486)
!515 = !DILocation(line: 67, column: 5, scope: !486)
!516 = !DILocation(line: 69, column: 1, scope: !375)
!517 = distinct !DISubprogram(name: "gsl_sf_hyperg_0F1", scope: !1, file: !1, line: 175, type: !518, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!518 = !DISubroutineType(types: !519)
!519 = !{!49, !66, !66}
!520 = !DILocalVariable(name: "c", arg: 1, scope: !517, file: !1, line: 175, type: !66)
!521 = !DILocation(line: 175, column: 39, scope: !517)
!522 = !DILocalVariable(name: "x", arg: 2, scope: !517, file: !1, line: 175, type: !66)
!523 = !DILocation(line: 175, column: 55, scope: !517)
!524 = !DILocalVariable(name: "result", scope: !517, file: !1, line: 177, type: !51)
!525 = !DILocation(line: 177, column: 3, scope: !517)
!526 = !DILocalVariable(name: "status", scope: !517, file: !1, line: 177, type: !48)
!527 = !DILocation(line: 177, column: 3, scope: !528)
!528 = distinct !DILexicalBlock(scope: !517, file: !1, line: 177, column: 3)
!529 = !DILocation(line: 177, column: 3, scope: !530)
!530 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 1)
!531 = distinct !DILexicalBlock(scope: !528, file: !1, line: 177, column: 3)
!532 = distinct !{!532, !533}
!533 = !DILocation(line: 177, column: 3, scope: !531)
!534 = !DILocation(line: 177, column: 3, scope: !535)
!535 = !DILexicalBlockFile(scope: !536, file: !1, discriminator: 2)
!536 = distinct !DILexicalBlock(scope: !531, file: !1, line: 177, column: 3)
!537 = !DILocation(line: 177, column: 3, scope: !538)
!538 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 3)
!539 = !DILocation(line: 177, column: 3, scope: !540)
!540 = !DILexicalBlockFile(scope: !517, file: !1, discriminator: 4)
!541 = !DILocation(line: 178, column: 1, scope: !517)
