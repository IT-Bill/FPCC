; ModuleID = 'elljac.c'
source_filename = "elljac.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"|m| > 1.0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"elljac.c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_elljac_e(double, double, double*, double*, double*) #0 !dbg !45 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x double], align 16
  %15 = alloca [16 x double], align 16
  %16 = alloca [16 x double], align 16
  %17 = alloca [16 x double], align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !52, metadata !53), !dbg !54
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !55, metadata !53), !dbg !56
  store double* %2, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !57, metadata !53), !dbg !58
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !59, metadata !53), !dbg !60
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !61, metadata !53), !dbg !62
  %23 = load double, double* %8, align 8, !dbg !63
  %24 = call double @fabs(double %23) #1, !dbg !65
  %25 = fcmp ogt double %24, 1.000000e+00, !dbg !66
  br i1 %25, label %26, label %32, !dbg !67

; <label>:26:                                     ; preds = %5
  %27 = load double*, double** %9, align 8, !dbg !68
  store double 0.000000e+00, double* %27, align 8, !dbg !70
  %28 = load double*, double** %10, align 8, !dbg !71
  store double 0.000000e+00, double* %28, align 8, !dbg !72
  %29 = load double*, double** %11, align 8, !dbg !73
  store double 0.000000e+00, double* %29, align 8, !dbg !74
  br label %30, !dbg !75, !llvm.loop !76

; <label>:30:                                     ; preds = %26
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 46, i32 1), !dbg !77
  store i32 1, i32* %6, align 4, !dbg !77
  br label %345, !dbg !77
                                                  ; No predecessors!
  br label %345, !dbg !80

; <label>:32:                                     ; preds = %5
  %33 = load double, double* %8, align 8, !dbg !81
  %34 = call double @fabs(double %33) #1, !dbg !83
  %35 = fcmp olt double %34, 0x3CC0000000000000, !dbg !84
  br i1 %35, label %36, label %44, !dbg !85

; <label>:36:                                     ; preds = %32
  %37 = load double, double* %7, align 8, !dbg !86
  %38 = call double @sin(double %37) #5, !dbg !88
  %39 = load double*, double** %9, align 8, !dbg !89
  store double %38, double* %39, align 8, !dbg !90
  %40 = load double, double* %7, align 8, !dbg !91
  %41 = call double @cos(double %40) #5, !dbg !92
  %42 = load double*, double** %10, align 8, !dbg !93
  store double %41, double* %42, align 8, !dbg !94
  %43 = load double*, double** %11, align 8, !dbg !95
  store double 1.000000e+00, double* %43, align 8, !dbg !96
  store i32 0, i32* %6, align 4, !dbg !97
  br label %345, !dbg !97

; <label>:44:                                     ; preds = %32
  %45 = load double, double* %8, align 8, !dbg !98
  %46 = fsub double %45, 1.000000e+00, !dbg !100
  %47 = call double @fabs(double %46) #1, !dbg !101
  %48 = fcmp olt double %47, 0x3CC0000000000000, !dbg !102
  br i1 %48, label %49, label %60, !dbg !103

; <label>:49:                                     ; preds = %44
  %50 = load double, double* %7, align 8, !dbg !104
  %51 = call double @tanh(double %50) #5, !dbg !106
  %52 = load double*, double** %9, align 8, !dbg !107
  store double %51, double* %52, align 8, !dbg !108
  %53 = load double, double* %7, align 8, !dbg !109
  %54 = call double @cosh(double %53) #5, !dbg !110
  %55 = fdiv double 1.000000e+00, %54, !dbg !111
  %56 = load double*, double** %10, align 8, !dbg !112
  store double %55, double* %56, align 8, !dbg !113
  %57 = load double*, double** %10, align 8, !dbg !114
  %58 = load double, double* %57, align 8, !dbg !115
  %59 = load double*, double** %11, align 8, !dbg !116
  store double %58, double* %59, align 8, !dbg !117
  store i32 0, i32* %6, align 4, !dbg !118
  br label %345, !dbg !118

; <label>:60:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %12, metadata !119, metadata !53), !dbg !121
  store i32 0, i32* %12, align 4, !dbg !121
  call void @llvm.dbg.declare(metadata i32* %13, metadata !122, metadata !53), !dbg !124
  store i32 16, i32* %13, align 4, !dbg !124
  call void @llvm.dbg.declare(metadata [16 x double]* %14, metadata !125, metadata !53), !dbg !129
  call void @llvm.dbg.declare(metadata [16 x double]* %15, metadata !130, metadata !53), !dbg !131
  call void @llvm.dbg.declare(metadata [16 x double]* %16, metadata !132, metadata !53), !dbg !133
  call void @llvm.dbg.declare(metadata [16 x double]* %17, metadata !134, metadata !53), !dbg !135
  call void @llvm.dbg.declare(metadata double* %18, metadata !136, metadata !53), !dbg !137
  call void @llvm.dbg.declare(metadata double* %19, metadata !138, metadata !53), !dbg !139
  call void @llvm.dbg.declare(metadata double* %20, metadata !140, metadata !53), !dbg !141
  call void @llvm.dbg.declare(metadata double* %21, metadata !142, metadata !53), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %22, metadata !144, metadata !53), !dbg !145
  store i32 0, i32* %22, align 4, !dbg !145
  %61 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 0, !dbg !146
  store double 1.000000e+00, double* %61, align 16, !dbg !147
  %62 = load double, double* %8, align 8, !dbg !148
  %63 = fsub double 1.000000e+00, %62, !dbg !149
  %64 = call double @sqrt(double %63) #5, !dbg !150
  %65 = getelementptr inbounds [16 x double], [16 x double]* %15, i64 0, i64 0, !dbg !151
  store double %64, double* %65, align 16, !dbg !152
  br label %66, !dbg !153

; <label>:66:                                     ; preds = %123, %60
  %67 = load i32, i32* %22, align 4, !dbg !154
  %68 = sext i32 %67 to i64, !dbg !156
  %69 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %68, !dbg !156
  %70 = load double, double* %69, align 8, !dbg !156
  %71 = load i32, i32* %22, align 4, !dbg !157
  %72 = sext i32 %71 to i64, !dbg !158
  %73 = getelementptr inbounds [16 x double], [16 x double]* %15, i64 0, i64 %72, !dbg !158
  %74 = load double, double* %73, align 8, !dbg !158
  %75 = fsub double %70, %74, !dbg !159
  %76 = call double @fabs(double %75) #1, !dbg !160
  %77 = load i32, i32* %22, align 4, !dbg !161
  %78 = sext i32 %77 to i64, !dbg !162
  %79 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %78, !dbg !162
  %80 = load double, double* %79, align 8, !dbg !162
  %81 = load i32, i32* %22, align 4, !dbg !163
  %82 = sext i32 %81 to i64, !dbg !164
  %83 = getelementptr inbounds [16 x double], [16 x double]* %15, i64 0, i64 %82, !dbg !164
  %84 = load double, double* %83, align 8, !dbg !164
  %85 = fadd double %80, %84, !dbg !165
  %86 = call double @fabs(double %85) #1, !dbg !166
  %87 = fmul double 0x3CD0000000000000, %86, !dbg !168
  %88 = fcmp ogt double %76, %87, !dbg !169
  br i1 %88, label %89, label %124, !dbg !170

; <label>:89:                                     ; preds = %66
  %90 = load i32, i32* %22, align 4, !dbg !171
  %91 = sext i32 %90 to i64, !dbg !173
  %92 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %91, !dbg !173
  %93 = load double, double* %92, align 8, !dbg !173
  %94 = load i32, i32* %22, align 4, !dbg !174
  %95 = sext i32 %94 to i64, !dbg !175
  %96 = getelementptr inbounds [16 x double], [16 x double]* %15, i64 0, i64 %95, !dbg !175
  %97 = load double, double* %96, align 8, !dbg !175
  %98 = fadd double %93, %97, !dbg !176
  %99 = fmul double 5.000000e-01, %98, !dbg !177
  %100 = load i32, i32* %22, align 4, !dbg !178
  %101 = add nsw i32 %100, 1, !dbg !179
  %102 = sext i32 %101 to i64, !dbg !180
  %103 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %102, !dbg !180
  store double %99, double* %103, align 8, !dbg !181
  %104 = load i32, i32* %22, align 4, !dbg !182
  %105 = sext i32 %104 to i64, !dbg !183
  %106 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %105, !dbg !183
  %107 = load double, double* %106, align 8, !dbg !183
  %108 = load i32, i32* %22, align 4, !dbg !184
  %109 = sext i32 %108 to i64, !dbg !185
  %110 = getelementptr inbounds [16 x double], [16 x double]* %15, i64 0, i64 %109, !dbg !185
  %111 = load double, double* %110, align 8, !dbg !185
  %112 = fmul double %107, %111, !dbg !186
  %113 = call double @sqrt(double %112) #5, !dbg !187
  %114 = load i32, i32* %22, align 4, !dbg !188
  %115 = add nsw i32 %114, 1, !dbg !189
  %116 = sext i32 %115 to i64, !dbg !190
  %117 = getelementptr inbounds [16 x double], [16 x double]* %15, i64 0, i64 %116, !dbg !190
  store double %113, double* %117, align 8, !dbg !191
  %118 = load i32, i32* %22, align 4, !dbg !192
  %119 = add nsw i32 %118, 1, !dbg !192
  store i32 %119, i32* %22, align 4, !dbg !192
  %120 = load i32, i32* %22, align 4, !dbg !193
  %121 = icmp sge i32 %120, 15, !dbg !195
  br i1 %121, label %122, label %123, !dbg !196

; <label>:122:                                    ; preds = %89
  store i32 11, i32* %12, align 4, !dbg !197
  br label %124, !dbg !199

; <label>:123:                                    ; preds = %89
  br label %66, !dbg !200, !llvm.loop !202

; <label>:124:                                    ; preds = %122, %66
  %125 = load double, double* %7, align 8, !dbg !203
  %126 = load i32, i32* %22, align 4, !dbg !204
  %127 = sext i32 %126 to i64, !dbg !205
  %128 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %127, !dbg !205
  %129 = load double, double* %128, align 8, !dbg !205
  %130 = fmul double %125, %129, !dbg !206
  %131 = call double @sin(double %130) #5, !dbg !207
  store double %131, double* %18, align 8, !dbg !208
  %132 = load double, double* %7, align 8, !dbg !209
  %133 = load i32, i32* %22, align 4, !dbg !210
  %134 = sext i32 %133 to i64, !dbg !211
  %135 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %134, !dbg !211
  %136 = load double, double* %135, align 8, !dbg !211
  %137 = fmul double %132, %136, !dbg !212
  %138 = call double @cos(double %137) #5, !dbg !213
  store double %138, double* %19, align 8, !dbg !214
  %139 = load double, double* %18, align 8, !dbg !215
  %140 = call double @fabs(double %139) #1, !dbg !217
  %141 = load double, double* %19, align 8, !dbg !218
  %142 = call double @fabs(double %141) #1, !dbg !219
  %143 = fcmp olt double %140, %142, !dbg !221
  br i1 %143, label %144, label %249, !dbg !222

; <label>:144:                                    ; preds = %124
  %145 = load double, double* %18, align 8, !dbg !223
  %146 = load double, double* %19, align 8, !dbg !225
  %147 = fdiv double %145, %146, !dbg !226
  store double %147, double* %20, align 8, !dbg !227
  %148 = load i32, i32* %22, align 4, !dbg !228
  %149 = sext i32 %148 to i64, !dbg !229
  %150 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %149, !dbg !229
  %151 = load double, double* %150, align 8, !dbg !229
  %152 = load double, double* %20, align 8, !dbg !230
  %153 = fmul double %151, %152, !dbg !231
  %154 = load i32, i32* %22, align 4, !dbg !232
  %155 = sext i32 %154 to i64, !dbg !233
  %156 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %155, !dbg !233
  store double %153, double* %156, align 8, !dbg !234
  %157 = load i32, i32* %22, align 4, !dbg !235
  %158 = sext i32 %157 to i64, !dbg !236
  %159 = getelementptr inbounds [16 x double], [16 x double]* %17, i64 0, i64 %158, !dbg !236
  store double 1.000000e+00, double* %159, align 8, !dbg !237
  br label %160, !dbg !238

; <label>:160:                                    ; preds = %163, %144
  %161 = load i32, i32* %22, align 4, !dbg !239
  %162 = icmp sgt i32 %161, 0, !dbg !241
  br i1 %162, label %163, label %213, !dbg !242

; <label>:163:                                    ; preds = %160
  %164 = load i32, i32* %22, align 4, !dbg !243
  %165 = add nsw i32 %164, -1, !dbg !243
  store i32 %165, i32* %22, align 4, !dbg !243
  %166 = load i32, i32* %22, align 4, !dbg !245
  %167 = add nsw i32 %166, 1, !dbg !246
  %168 = sext i32 %167 to i64, !dbg !247
  %169 = getelementptr inbounds [16 x double], [16 x double]* %17, i64 0, i64 %168, !dbg !247
  %170 = load double, double* %169, align 8, !dbg !247
  %171 = load i32, i32* %22, align 4, !dbg !248
  %172 = add nsw i32 %171, 1, !dbg !249
  %173 = sext i32 %172 to i64, !dbg !250
  %174 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %173, !dbg !250
  %175 = load double, double* %174, align 8, !dbg !250
  %176 = fmul double %170, %175, !dbg !251
  %177 = load i32, i32* %22, align 4, !dbg !252
  %178 = sext i32 %177 to i64, !dbg !253
  %179 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %178, !dbg !253
  store double %176, double* %179, align 8, !dbg !254
  %180 = load i32, i32* %22, align 4, !dbg !255
  %181 = add nsw i32 %180, 1, !dbg !256
  %182 = sext i32 %181 to i64, !dbg !257
  %183 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %182, !dbg !257
  %184 = load double, double* %183, align 8, !dbg !257
  %185 = load i32, i32* %22, align 4, !dbg !258
  %186 = add nsw i32 %185, 1, !dbg !259
  %187 = sext i32 %186 to i64, !dbg !260
  %188 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %187, !dbg !260
  %189 = load double, double* %188, align 8, !dbg !260
  %190 = fmul double %184, %189, !dbg !261
  %191 = load i32, i32* %22, align 4, !dbg !262
  %192 = add nsw i32 %191, 1, !dbg !263
  %193 = sext i32 %192 to i64, !dbg !264
  %194 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %193, !dbg !264
  %195 = load double, double* %194, align 8, !dbg !264
  %196 = fdiv double %190, %195, !dbg !265
  store double %196, double* %21, align 8, !dbg !266
  %197 = load double, double* %21, align 8, !dbg !267
  %198 = load i32, i32* %22, align 4, !dbg !268
  %199 = sext i32 %198 to i64, !dbg !269
  %200 = getelementptr inbounds [16 x double], [16 x double]* %15, i64 0, i64 %199, !dbg !269
  %201 = load double, double* %200, align 8, !dbg !269
  %202 = fadd double %197, %201, !dbg !270
  %203 = load double, double* %21, align 8, !dbg !271
  %204 = load i32, i32* %22, align 4, !dbg !272
  %205 = sext i32 %204 to i64, !dbg !273
  %206 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %205, !dbg !273
  %207 = load double, double* %206, align 8, !dbg !273
  %208 = fadd double %203, %207, !dbg !274
  %209 = fdiv double %202, %208, !dbg !275
  %210 = load i32, i32* %22, align 4, !dbg !276
  %211 = sext i32 %210 to i64, !dbg !277
  %212 = getelementptr inbounds [16 x double], [16 x double]* %17, i64 0, i64 %211, !dbg !277
  store double %209, double* %212, align 8, !dbg !278
  br label %160, !dbg !279, !llvm.loop !281

; <label>:213:                                    ; preds = %160
  %214 = load double, double* %8, align 8, !dbg !282
  %215 = fsub double 1.000000e+00, %214, !dbg !283
  %216 = call double @sqrt(double %215) #5, !dbg !284
  %217 = load i32, i32* %22, align 4, !dbg !285
  %218 = sext i32 %217 to i64, !dbg !286
  %219 = getelementptr inbounds [16 x double], [16 x double]* %17, i64 0, i64 %218, !dbg !286
  %220 = load double, double* %219, align 8, !dbg !286
  %221 = fdiv double %216, %220, !dbg !287
  %222 = load double*, double** %11, align 8, !dbg !288
  store double %221, double* %222, align 8, !dbg !289
  %223 = load double*, double** %11, align 8, !dbg !290
  %224 = load double, double* %223, align 8, !dbg !291
  %225 = load double, double* %19, align 8, !dbg !292
  %226 = fcmp oge double %225, 0.000000e+00, !dbg !292
  %227 = select i1 %226, i32 1, i32 -1, !dbg !292
  %228 = sitofp i32 %227 to double, !dbg !292
  %229 = fmul double %224, %228, !dbg !293
  %230 = load i32, i32* %22, align 4, !dbg !294
  %231 = sext i32 %230 to i64, !dbg !295
  %232 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %231, !dbg !295
  %233 = load double, double* %232, align 8, !dbg !295
  %234 = call double @gsl_hypot(double 1.000000e+00, double %233), !dbg !296
  %235 = fdiv double %229, %234, !dbg !297
  %236 = load double*, double** %10, align 8, !dbg !298
  store double %235, double* %236, align 8, !dbg !299
  %237 = load double*, double** %10, align 8, !dbg !300
  %238 = load double, double* %237, align 8, !dbg !301
  %239 = load i32, i32* %22, align 4, !dbg !302
  %240 = sext i32 %239 to i64, !dbg !303
  %241 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %240, !dbg !303
  %242 = load double, double* %241, align 8, !dbg !303
  %243 = fmul double %238, %242, !dbg !304
  %244 = load double, double* %8, align 8, !dbg !305
  %245 = fsub double 1.000000e+00, %244, !dbg !306
  %246 = call double @sqrt(double %245) #5, !dbg !307
  %247 = fdiv double %243, %246, !dbg !308
  %248 = load double*, double** %9, align 8, !dbg !309
  store double %247, double* %248, align 8, !dbg !310
  br label %343, !dbg !311

; <label>:249:                                    ; preds = %124
  %250 = load double, double* %19, align 8, !dbg !312
  %251 = load double, double* %18, align 8, !dbg !314
  %252 = fdiv double %250, %251, !dbg !315
  store double %252, double* %20, align 8, !dbg !316
  %253 = load i32, i32* %22, align 4, !dbg !317
  %254 = sext i32 %253 to i64, !dbg !318
  %255 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %254, !dbg !318
  %256 = load double, double* %255, align 8, !dbg !318
  %257 = load double, double* %20, align 8, !dbg !319
  %258 = fmul double %256, %257, !dbg !320
  %259 = load i32, i32* %22, align 4, !dbg !321
  %260 = sext i32 %259 to i64, !dbg !322
  %261 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %260, !dbg !322
  store double %258, double* %261, align 8, !dbg !323
  %262 = load i32, i32* %22, align 4, !dbg !324
  %263 = sext i32 %262 to i64, !dbg !325
  %264 = getelementptr inbounds [16 x double], [16 x double]* %17, i64 0, i64 %263, !dbg !325
  store double 1.000000e+00, double* %264, align 8, !dbg !326
  br label %265, !dbg !327

; <label>:265:                                    ; preds = %268, %249
  %266 = load i32, i32* %22, align 4, !dbg !328
  %267 = icmp sgt i32 %266, 0, !dbg !330
  br i1 %267, label %268, label %318, !dbg !331

; <label>:268:                                    ; preds = %265
  %269 = load i32, i32* %22, align 4, !dbg !332
  %270 = add nsw i32 %269, -1, !dbg !332
  store i32 %270, i32* %22, align 4, !dbg !332
  %271 = load i32, i32* %22, align 4, !dbg !334
  %272 = add nsw i32 %271, 1, !dbg !335
  %273 = sext i32 %272 to i64, !dbg !336
  %274 = getelementptr inbounds [16 x double], [16 x double]* %17, i64 0, i64 %273, !dbg !336
  %275 = load double, double* %274, align 8, !dbg !336
  %276 = load i32, i32* %22, align 4, !dbg !337
  %277 = add nsw i32 %276, 1, !dbg !338
  %278 = sext i32 %277 to i64, !dbg !339
  %279 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %278, !dbg !339
  %280 = load double, double* %279, align 8, !dbg !339
  %281 = fmul double %275, %280, !dbg !340
  %282 = load i32, i32* %22, align 4, !dbg !341
  %283 = sext i32 %282 to i64, !dbg !342
  %284 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %283, !dbg !342
  store double %281, double* %284, align 8, !dbg !343
  %285 = load i32, i32* %22, align 4, !dbg !344
  %286 = add nsw i32 %285, 1, !dbg !345
  %287 = sext i32 %286 to i64, !dbg !346
  %288 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %287, !dbg !346
  %289 = load double, double* %288, align 8, !dbg !346
  %290 = load i32, i32* %22, align 4, !dbg !347
  %291 = add nsw i32 %290, 1, !dbg !348
  %292 = sext i32 %291 to i64, !dbg !349
  %293 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %292, !dbg !349
  %294 = load double, double* %293, align 8, !dbg !349
  %295 = fmul double %289, %294, !dbg !350
  %296 = load i32, i32* %22, align 4, !dbg !351
  %297 = add nsw i32 %296, 1, !dbg !352
  %298 = sext i32 %297 to i64, !dbg !353
  %299 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %298, !dbg !353
  %300 = load double, double* %299, align 8, !dbg !353
  %301 = fdiv double %295, %300, !dbg !354
  store double %301, double* %21, align 8, !dbg !355
  %302 = load double, double* %21, align 8, !dbg !356
  %303 = load i32, i32* %22, align 4, !dbg !357
  %304 = sext i32 %303 to i64, !dbg !358
  %305 = getelementptr inbounds [16 x double], [16 x double]* %15, i64 0, i64 %304, !dbg !358
  %306 = load double, double* %305, align 8, !dbg !358
  %307 = fadd double %302, %306, !dbg !359
  %308 = load double, double* %21, align 8, !dbg !360
  %309 = load i32, i32* %22, align 4, !dbg !361
  %310 = sext i32 %309 to i64, !dbg !362
  %311 = getelementptr inbounds [16 x double], [16 x double]* %14, i64 0, i64 %310, !dbg !362
  %312 = load double, double* %311, align 8, !dbg !362
  %313 = fadd double %308, %312, !dbg !363
  %314 = fdiv double %307, %313, !dbg !364
  %315 = load i32, i32* %22, align 4, !dbg !365
  %316 = sext i32 %315 to i64, !dbg !366
  %317 = getelementptr inbounds [16 x double], [16 x double]* %17, i64 0, i64 %316, !dbg !366
  store double %314, double* %317, align 8, !dbg !367
  br label %265, !dbg !368, !llvm.loop !370

; <label>:318:                                    ; preds = %265
  %319 = load i32, i32* %22, align 4, !dbg !371
  %320 = sext i32 %319 to i64, !dbg !372
  %321 = getelementptr inbounds [16 x double], [16 x double]* %17, i64 0, i64 %320, !dbg !372
  %322 = load double, double* %321, align 8, !dbg !372
  %323 = load double*, double** %11, align 8, !dbg !373
  store double %322, double* %323, align 8, !dbg !374
  %324 = load double, double* %18, align 8, !dbg !375
  %325 = fcmp oge double %324, 0.000000e+00, !dbg !375
  %326 = select i1 %325, i32 1, i32 -1, !dbg !375
  %327 = sitofp i32 %326 to double, !dbg !375
  %328 = load i32, i32* %22, align 4, !dbg !376
  %329 = sext i32 %328 to i64, !dbg !377
  %330 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %329, !dbg !377
  %331 = load double, double* %330, align 8, !dbg !377
  %332 = call double @gsl_hypot(double 1.000000e+00, double %331), !dbg !378
  %333 = fdiv double %327, %332, !dbg !379
  %334 = load double*, double** %9, align 8, !dbg !380
  store double %333, double* %334, align 8, !dbg !381
  %335 = load i32, i32* %22, align 4, !dbg !382
  %336 = sext i32 %335 to i64, !dbg !383
  %337 = getelementptr inbounds [16 x double], [16 x double]* %16, i64 0, i64 %336, !dbg !383
  %338 = load double, double* %337, align 8, !dbg !383
  %339 = load double*, double** %9, align 8, !dbg !384
  %340 = load double, double* %339, align 8, !dbg !385
  %341 = fmul double %338, %340, !dbg !386
  %342 = load double*, double** %10, align 8, !dbg !387
  store double %341, double* %342, align 8, !dbg !388
  br label %343

; <label>:343:                                    ; preds = %318, %213
  %344 = load i32, i32* %12, align 4, !dbg !389
  store i32 %344, i32* %6, align 4, !dbg !390
  br label %345, !dbg !390

; <label>:345:                                    ; preds = %30, %36, %49, %343, %31
  %346 = load i32, i32* %6, align 4, !dbg !391
  ret i32 %346, !dbg !391
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @tanh(double) #4

; Function Attrs: nounwind
declare double @cosh(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare double @gsl_hypot(double, double) #3

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
!1 = !DIFile(filename: "elljac.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_elljac_e", scope: !1, file: !1, line: 40, type: !46, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !51)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !50, !50, !50}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!51 = !{}
!52 = !DILocalVariable(name: "u", arg: 1, scope: !45, file: !1, line: 40, type: !49)
!53 = !DIExpression()
!54 = !DILocation(line: 40, column: 24, scope: !45)
!55 = !DILocalVariable(name: "m", arg: 2, scope: !45, file: !1, line: 40, type: !49)
!56 = !DILocation(line: 40, column: 34, scope: !45)
!57 = !DILocalVariable(name: "sn", arg: 3, scope: !45, file: !1, line: 40, type: !50)
!58 = !DILocation(line: 40, column: 46, scope: !45)
!59 = !DILocalVariable(name: "cn", arg: 4, scope: !45, file: !1, line: 40, type: !50)
!60 = !DILocation(line: 40, column: 59, scope: !45)
!61 = !DILocalVariable(name: "dn", arg: 5, scope: !45, file: !1, line: 40, type: !50)
!62 = !DILocation(line: 40, column: 72, scope: !45)
!63 = !DILocation(line: 42, column: 11, scope: !64)
!64 = distinct !DILexicalBlock(scope: !45, file: !1, line: 42, column: 6)
!65 = !DILocation(line: 42, column: 6, scope: !64)
!66 = !DILocation(line: 42, column: 14, scope: !64)
!67 = !DILocation(line: 42, column: 6, scope: !45)
!68 = !DILocation(line: 43, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !1, line: 42, column: 21)
!70 = !DILocation(line: 43, column: 9, scope: !69)
!71 = !DILocation(line: 44, column: 6, scope: !69)
!72 = !DILocation(line: 44, column: 9, scope: !69)
!73 = !DILocation(line: 45, column: 6, scope: !69)
!74 = !DILocation(line: 45, column: 9, scope: !69)
!75 = !DILocation(line: 46, column: 5, scope: !69)
!76 = distinct !{!76, !75}
!77 = !DILocation(line: 46, column: 5, scope: !78)
!78 = !DILexicalBlockFile(scope: !79, file: !1, discriminator: 1)
!79 = distinct !DILexicalBlock(scope: !69, file: !1, line: 46, column: 5)
!80 = !DILocation(line: 47, column: 3, scope: !69)
!81 = !DILocation(line: 48, column: 16, scope: !82)
!82 = distinct !DILexicalBlock(scope: !64, file: !1, line: 48, column: 11)
!83 = !DILocation(line: 48, column: 11, scope: !82)
!84 = !DILocation(line: 48, column: 19, scope: !82)
!85 = !DILocation(line: 48, column: 11, scope: !64)
!86 = !DILocation(line: 49, column: 15, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 48, column: 42)
!88 = !DILocation(line: 49, column: 11, scope: !87)
!89 = !DILocation(line: 49, column: 6, scope: !87)
!90 = !DILocation(line: 49, column: 9, scope: !87)
!91 = !DILocation(line: 50, column: 15, scope: !87)
!92 = !DILocation(line: 50, column: 11, scope: !87)
!93 = !DILocation(line: 50, column: 6, scope: !87)
!94 = !DILocation(line: 50, column: 9, scope: !87)
!95 = !DILocation(line: 51, column: 6, scope: !87)
!96 = !DILocation(line: 51, column: 9, scope: !87)
!97 = !DILocation(line: 52, column: 5, scope: !87)
!98 = !DILocation(line: 54, column: 16, scope: !99)
!99 = distinct !DILexicalBlock(scope: !82, file: !1, line: 54, column: 11)
!100 = !DILocation(line: 54, column: 18, scope: !99)
!101 = !DILocation(line: 54, column: 11, scope: !99)
!102 = !DILocation(line: 54, column: 25, scope: !99)
!103 = !DILocation(line: 54, column: 11, scope: !82)
!104 = !DILocation(line: 55, column: 16, scope: !105)
!105 = distinct !DILexicalBlock(scope: !99, file: !1, line: 54, column: 48)
!106 = !DILocation(line: 55, column: 11, scope: !105)
!107 = !DILocation(line: 55, column: 6, scope: !105)
!108 = !DILocation(line: 55, column: 9, scope: !105)
!109 = !DILocation(line: 56, column: 20, scope: !105)
!110 = !DILocation(line: 56, column: 15, scope: !105)
!111 = !DILocation(line: 56, column: 14, scope: !105)
!112 = !DILocation(line: 56, column: 6, scope: !105)
!113 = !DILocation(line: 56, column: 9, scope: !105)
!114 = !DILocation(line: 57, column: 12, scope: !105)
!115 = !DILocation(line: 57, column: 11, scope: !105)
!116 = !DILocation(line: 57, column: 6, scope: !105)
!117 = !DILocation(line: 57, column: 9, scope: !105)
!118 = !DILocation(line: 58, column: 5, scope: !105)
!119 = !DILocalVariable(name: "status", scope: !120, file: !1, line: 61, type: !48)
!120 = distinct !DILexicalBlock(scope: !99, file: !1, line: 60, column: 8)
!121 = !DILocation(line: 61, column: 9, scope: !120)
!122 = !DILocalVariable(name: "N", scope: !120, file: !1, line: 62, type: !123)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!124 = !DILocation(line: 62, column: 15, scope: !120)
!125 = !DILocalVariable(name: "mu", scope: !120, file: !1, line: 63, type: !126)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1024, align: 64, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 16)
!129 = !DILocation(line: 63, column: 12, scope: !120)
!130 = !DILocalVariable(name: "nu", scope: !120, file: !1, line: 64, type: !126)
!131 = !DILocation(line: 64, column: 12, scope: !120)
!132 = !DILocalVariable(name: "c", scope: !120, file: !1, line: 65, type: !126)
!133 = !DILocation(line: 65, column: 12, scope: !120)
!134 = !DILocalVariable(name: "d", scope: !120, file: !1, line: 66, type: !126)
!135 = !DILocation(line: 66, column: 12, scope: !120)
!136 = !DILocalVariable(name: "sin_umu", scope: !120, file: !1, line: 67, type: !49)
!137 = !DILocation(line: 67, column: 12, scope: !120)
!138 = !DILocalVariable(name: "cos_umu", scope: !120, file: !1, line: 67, type: !49)
!139 = !DILocation(line: 67, column: 21, scope: !120)
!140 = !DILocalVariable(name: "t", scope: !120, file: !1, line: 67, type: !49)
!141 = !DILocation(line: 67, column: 30, scope: !120)
!142 = !DILocalVariable(name: "r", scope: !120, file: !1, line: 67, type: !49)
!143 = !DILocation(line: 67, column: 33, scope: !120)
!144 = !DILocalVariable(name: "n", scope: !120, file: !1, line: 68, type: !48)
!145 = !DILocation(line: 68, column: 9, scope: !120)
!146 = !DILocation(line: 70, column: 5, scope: !120)
!147 = !DILocation(line: 70, column: 11, scope: !120)
!148 = !DILocation(line: 71, column: 24, scope: !120)
!149 = !DILocation(line: 71, column: 22, scope: !120)
!150 = !DILocation(line: 71, column: 13, scope: !120)
!151 = !DILocation(line: 71, column: 5, scope: !120)
!152 = !DILocation(line: 71, column: 11, scope: !120)
!153 = !DILocation(line: 73, column: 5, scope: !120)
!154 = !DILocation(line: 73, column: 20, scope: !155)
!155 = !DILexicalBlockFile(scope: !120, file: !1, discriminator: 1)
!156 = !DILocation(line: 73, column: 17, scope: !155)
!157 = !DILocation(line: 73, column: 28, scope: !155)
!158 = !DILocation(line: 73, column: 25, scope: !155)
!159 = !DILocation(line: 73, column: 23, scope: !155)
!160 = !DILocation(line: 73, column: 12, scope: !155)
!161 = !DILocation(line: 73, column: 66, scope: !155)
!162 = !DILocation(line: 73, column: 63, scope: !155)
!163 = !DILocation(line: 73, column: 72, scope: !155)
!164 = !DILocation(line: 73, column: 69, scope: !155)
!165 = !DILocation(line: 73, column: 68, scope: !155)
!166 = !DILocation(line: 73, column: 58, scope: !167)
!167 = !DILexicalBlockFile(scope: !155, file: !1, discriminator: 3)
!168 = !DILocation(line: 73, column: 56, scope: !155)
!169 = !DILocation(line: 73, column: 32, scope: !155)
!170 = !DILocation(line: 73, column: 5, scope: !155)
!171 = !DILocation(line: 74, column: 27, scope: !172)
!172 = distinct !DILexicalBlock(scope: !120, file: !1, line: 73, column: 77)
!173 = !DILocation(line: 74, column: 24, scope: !172)
!174 = !DILocation(line: 74, column: 35, scope: !172)
!175 = !DILocation(line: 74, column: 32, scope: !172)
!176 = !DILocation(line: 74, column: 30, scope: !172)
!177 = !DILocation(line: 74, column: 21, scope: !172)
!178 = !DILocation(line: 74, column: 10, scope: !172)
!179 = !DILocation(line: 74, column: 11, scope: !172)
!180 = !DILocation(line: 74, column: 7, scope: !172)
!181 = !DILocation(line: 74, column: 15, scope: !172)
!182 = !DILocation(line: 75, column: 25, scope: !172)
!183 = !DILocation(line: 75, column: 22, scope: !172)
!184 = !DILocation(line: 75, column: 33, scope: !172)
!185 = !DILocation(line: 75, column: 30, scope: !172)
!186 = !DILocation(line: 75, column: 28, scope: !172)
!187 = !DILocation(line: 75, column: 17, scope: !172)
!188 = !DILocation(line: 75, column: 10, scope: !172)
!189 = !DILocation(line: 75, column: 11, scope: !172)
!190 = !DILocation(line: 75, column: 7, scope: !172)
!191 = !DILocation(line: 75, column: 15, scope: !172)
!192 = !DILocation(line: 76, column: 7, scope: !172)
!193 = !DILocation(line: 77, column: 10, scope: !194)
!194 = distinct !DILexicalBlock(scope: !172, file: !1, line: 77, column: 10)
!195 = !DILocation(line: 77, column: 12, scope: !194)
!196 = !DILocation(line: 77, column: 10, scope: !172)
!197 = !DILocation(line: 78, column: 16, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !1, line: 77, column: 22)
!199 = !DILocation(line: 79, column: 9, scope: !198)
!200 = !DILocation(line: 73, column: 5, scope: !201)
!201 = !DILexicalBlockFile(scope: !120, file: !1, discriminator: 2)
!202 = distinct !{!202, !153}
!203 = !DILocation(line: 83, column: 19, scope: !120)
!204 = !DILocation(line: 83, column: 26, scope: !120)
!205 = !DILocation(line: 83, column: 23, scope: !120)
!206 = !DILocation(line: 83, column: 21, scope: !120)
!207 = !DILocation(line: 83, column: 15, scope: !120)
!208 = !DILocation(line: 83, column: 13, scope: !120)
!209 = !DILocation(line: 84, column: 19, scope: !120)
!210 = !DILocation(line: 84, column: 26, scope: !120)
!211 = !DILocation(line: 84, column: 23, scope: !120)
!212 = !DILocation(line: 84, column: 21, scope: !120)
!213 = !DILocation(line: 84, column: 15, scope: !120)
!214 = !DILocation(line: 84, column: 13, scope: !120)
!215 = !DILocation(line: 89, column: 14, scope: !216)
!216 = distinct !DILexicalBlock(scope: !120, file: !1, line: 89, column: 9)
!217 = !DILocation(line: 89, column: 9, scope: !216)
!218 = !DILocation(line: 89, column: 30, scope: !216)
!219 = !DILocation(line: 89, column: 25, scope: !220)
!220 = !DILexicalBlockFile(scope: !216, file: !1, discriminator: 1)
!221 = !DILocation(line: 89, column: 23, scope: !216)
!222 = !DILocation(line: 89, column: 9, scope: !120)
!223 = !DILocation(line: 91, column: 13, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !1, line: 90, column: 7)
!225 = !DILocation(line: 91, column: 23, scope: !224)
!226 = !DILocation(line: 91, column: 21, scope: !224)
!227 = !DILocation(line: 91, column: 11, scope: !224)
!228 = !DILocation(line: 93, column: 19, scope: !224)
!229 = !DILocation(line: 93, column: 16, scope: !224)
!230 = !DILocation(line: 93, column: 24, scope: !224)
!231 = !DILocation(line: 93, column: 22, scope: !224)
!232 = !DILocation(line: 93, column: 11, scope: !224)
!233 = !DILocation(line: 93, column: 9, scope: !224)
!234 = !DILocation(line: 93, column: 14, scope: !224)
!235 = !DILocation(line: 94, column: 11, scope: !224)
!236 = !DILocation(line: 94, column: 9, scope: !224)
!237 = !DILocation(line: 94, column: 14, scope: !224)
!238 = !DILocation(line: 96, column: 9, scope: !224)
!239 = !DILocation(line: 96, column: 15, scope: !240)
!240 = !DILexicalBlockFile(scope: !224, file: !1, discriminator: 1)
!241 = !DILocation(line: 96, column: 17, scope: !240)
!242 = !DILocation(line: 96, column: 9, scope: !240)
!243 = !DILocation(line: 97, column: 12, scope: !244)
!244 = distinct !DILexicalBlock(scope: !224, file: !1, line: 96, column: 22)
!245 = !DILocation(line: 98, column: 20, scope: !244)
!246 = !DILocation(line: 98, column: 21, scope: !244)
!247 = !DILocation(line: 98, column: 18, scope: !244)
!248 = !DILocation(line: 98, column: 29, scope: !244)
!249 = !DILocation(line: 98, column: 30, scope: !244)
!250 = !DILocation(line: 98, column: 27, scope: !244)
!251 = !DILocation(line: 98, column: 25, scope: !244)
!252 = !DILocation(line: 98, column: 13, scope: !244)
!253 = !DILocation(line: 98, column: 11, scope: !244)
!254 = !DILocation(line: 98, column: 16, scope: !244)
!255 = !DILocation(line: 99, column: 18, scope: !244)
!256 = !DILocation(line: 99, column: 19, scope: !244)
!257 = !DILocation(line: 99, column: 16, scope: !244)
!258 = !DILocation(line: 99, column: 27, scope: !244)
!259 = !DILocation(line: 99, column: 28, scope: !244)
!260 = !DILocation(line: 99, column: 25, scope: !244)
!261 = !DILocation(line: 99, column: 23, scope: !244)
!262 = !DILocation(line: 99, column: 38, scope: !244)
!263 = !DILocation(line: 99, column: 39, scope: !244)
!264 = !DILocation(line: 99, column: 35, scope: !244)
!265 = !DILocation(line: 99, column: 33, scope: !244)
!266 = !DILocation(line: 99, column: 13, scope: !244)
!267 = !DILocation(line: 100, column: 19, scope: !244)
!268 = !DILocation(line: 100, column: 26, scope: !244)
!269 = !DILocation(line: 100, column: 23, scope: !244)
!270 = !DILocation(line: 100, column: 21, scope: !244)
!271 = !DILocation(line: 100, column: 33, scope: !244)
!272 = !DILocation(line: 100, column: 40, scope: !244)
!273 = !DILocation(line: 100, column: 37, scope: !244)
!274 = !DILocation(line: 100, column: 35, scope: !244)
!275 = !DILocation(line: 100, column: 30, scope: !244)
!276 = !DILocation(line: 100, column: 13, scope: !244)
!277 = !DILocation(line: 100, column: 11, scope: !244)
!278 = !DILocation(line: 100, column: 16, scope: !244)
!279 = !DILocation(line: 96, column: 9, scope: !280)
!280 = !DILexicalBlockFile(scope: !224, file: !1, discriminator: 2)
!281 = distinct !{!281, !238}
!282 = !DILocation(line: 103, column: 24, scope: !224)
!283 = !DILocation(line: 103, column: 23, scope: !224)
!284 = !DILocation(line: 103, column: 15, scope: !224)
!285 = !DILocation(line: 103, column: 31, scope: !224)
!286 = !DILocation(line: 103, column: 29, scope: !224)
!287 = !DILocation(line: 103, column: 27, scope: !224)
!288 = !DILocation(line: 103, column: 10, scope: !224)
!289 = !DILocation(line: 103, column: 13, scope: !224)
!290 = !DILocation(line: 104, column: 17, scope: !224)
!291 = !DILocation(line: 104, column: 16, scope: !224)
!292 = !DILocation(line: 104, column: 23, scope: !224)
!293 = !DILocation(line: 104, column: 21, scope: !224)
!294 = !DILocation(line: 104, column: 60, scope: !224)
!295 = !DILocation(line: 104, column: 58, scope: !224)
!296 = !DILocation(line: 104, column: 43, scope: !224)
!297 = !DILocation(line: 104, column: 41, scope: !224)
!298 = !DILocation(line: 104, column: 10, scope: !224)
!299 = !DILocation(line: 104, column: 13, scope: !224)
!300 = !DILocation(line: 105, column: 17, scope: !224)
!301 = !DILocation(line: 105, column: 16, scope: !224)
!302 = !DILocation(line: 105, column: 25, scope: !224)
!303 = !DILocation(line: 105, column: 23, scope: !224)
!304 = !DILocation(line: 105, column: 21, scope: !224)
!305 = !DILocation(line: 105, column: 38, scope: !224)
!306 = !DILocation(line: 105, column: 37, scope: !224)
!307 = !DILocation(line: 105, column: 29, scope: !224)
!308 = !DILocation(line: 105, column: 28, scope: !224)
!309 = !DILocation(line: 105, column: 10, scope: !224)
!310 = !DILocation(line: 105, column: 13, scope: !224)
!311 = !DILocation(line: 106, column: 7, scope: !224)
!312 = !DILocation(line: 109, column: 13, scope: !313)
!313 = distinct !DILexicalBlock(scope: !216, file: !1, line: 108, column: 7)
!314 = !DILocation(line: 109, column: 23, scope: !313)
!315 = !DILocation(line: 109, column: 21, scope: !313)
!316 = !DILocation(line: 109, column: 11, scope: !313)
!317 = !DILocation(line: 111, column: 19, scope: !313)
!318 = !DILocation(line: 111, column: 16, scope: !313)
!319 = !DILocation(line: 111, column: 24, scope: !313)
!320 = !DILocation(line: 111, column: 22, scope: !313)
!321 = !DILocation(line: 111, column: 11, scope: !313)
!322 = !DILocation(line: 111, column: 9, scope: !313)
!323 = !DILocation(line: 111, column: 14, scope: !313)
!324 = !DILocation(line: 112, column: 11, scope: !313)
!325 = !DILocation(line: 112, column: 9, scope: !313)
!326 = !DILocation(line: 112, column: 14, scope: !313)
!327 = !DILocation(line: 114, column: 9, scope: !313)
!328 = !DILocation(line: 114, column: 15, scope: !329)
!329 = !DILexicalBlockFile(scope: !313, file: !1, discriminator: 1)
!330 = !DILocation(line: 114, column: 17, scope: !329)
!331 = !DILocation(line: 114, column: 9, scope: !329)
!332 = !DILocation(line: 115, column: 11, scope: !333)
!333 = distinct !DILexicalBlock(scope: !313, file: !1, line: 114, column: 22)
!334 = !DILocation(line: 116, column: 20, scope: !333)
!335 = !DILocation(line: 116, column: 21, scope: !333)
!336 = !DILocation(line: 116, column: 18, scope: !333)
!337 = !DILocation(line: 116, column: 29, scope: !333)
!338 = !DILocation(line: 116, column: 30, scope: !333)
!339 = !DILocation(line: 116, column: 27, scope: !333)
!340 = !DILocation(line: 116, column: 25, scope: !333)
!341 = !DILocation(line: 116, column: 13, scope: !333)
!342 = !DILocation(line: 116, column: 11, scope: !333)
!343 = !DILocation(line: 116, column: 16, scope: !333)
!344 = !DILocation(line: 117, column: 18, scope: !333)
!345 = !DILocation(line: 117, column: 19, scope: !333)
!346 = !DILocation(line: 117, column: 16, scope: !333)
!347 = !DILocation(line: 117, column: 27, scope: !333)
!348 = !DILocation(line: 117, column: 28, scope: !333)
!349 = !DILocation(line: 117, column: 25, scope: !333)
!350 = !DILocation(line: 117, column: 23, scope: !333)
!351 = !DILocation(line: 117, column: 38, scope: !333)
!352 = !DILocation(line: 117, column: 39, scope: !333)
!353 = !DILocation(line: 117, column: 35, scope: !333)
!354 = !DILocation(line: 117, column: 33, scope: !333)
!355 = !DILocation(line: 117, column: 13, scope: !333)
!356 = !DILocation(line: 118, column: 19, scope: !333)
!357 = !DILocation(line: 118, column: 26, scope: !333)
!358 = !DILocation(line: 118, column: 23, scope: !333)
!359 = !DILocation(line: 118, column: 21, scope: !333)
!360 = !DILocation(line: 118, column: 33, scope: !333)
!361 = !DILocation(line: 118, column: 40, scope: !333)
!362 = !DILocation(line: 118, column: 37, scope: !333)
!363 = !DILocation(line: 118, column: 35, scope: !333)
!364 = !DILocation(line: 118, column: 30, scope: !333)
!365 = !DILocation(line: 118, column: 13, scope: !333)
!366 = !DILocation(line: 118, column: 11, scope: !333)
!367 = !DILocation(line: 118, column: 16, scope: !333)
!368 = !DILocation(line: 114, column: 9, scope: !369)
!369 = !DILexicalBlockFile(scope: !313, file: !1, discriminator: 2)
!370 = distinct !{!370, !327}
!371 = !DILocation(line: 121, column: 17, scope: !313)
!372 = !DILocation(line: 121, column: 15, scope: !313)
!373 = !DILocation(line: 121, column: 10, scope: !313)
!374 = !DILocation(line: 121, column: 13, scope: !313)
!375 = !DILocation(line: 122, column: 15, scope: !313)
!376 = !DILocation(line: 122, column: 52, scope: !313)
!377 = !DILocation(line: 122, column: 50, scope: !313)
!378 = !DILocation(line: 122, column: 35, scope: !313)
!379 = !DILocation(line: 122, column: 33, scope: !313)
!380 = !DILocation(line: 122, column: 10, scope: !313)
!381 = !DILocation(line: 122, column: 13, scope: !313)
!382 = !DILocation(line: 123, column: 17, scope: !313)
!383 = !DILocation(line: 123, column: 15, scope: !313)
!384 = !DILocation(line: 123, column: 24, scope: !313)
!385 = !DILocation(line: 123, column: 23, scope: !313)
!386 = !DILocation(line: 123, column: 20, scope: !313)
!387 = !DILocation(line: 123, column: 10, scope: !313)
!388 = !DILocation(line: 123, column: 13, scope: !313)
!389 = !DILocation(line: 126, column: 12, scope: !120)
!390 = !DILocation(line: 126, column: 5, scope: !120)
!391 = !DILocation(line: 128, column: 1, scope: !45)
