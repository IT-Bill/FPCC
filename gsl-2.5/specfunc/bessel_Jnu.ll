; ModuleID = 'bessel_Jnu.c'
source_filename = "bessel_Jnu.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Jnu.c\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Jnu_e(nu, x, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jnupos_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !60, metadata !61), !dbg !62
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !63, metadata !61), !dbg !64
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !65, metadata !61), !dbg !66
  %32 = load double, double* %6, align 8, !dbg !67
  %33 = fcmp oeq double %32, 0.000000e+00, !dbg !69
  br i1 %33, label %34, label %48, !dbg !70

; <label>:34:                                     ; preds = %3
  %35 = load double, double* %5, align 8, !dbg !71
  %36 = fcmp oeq double %35, 0.000000e+00, !dbg !74
  br i1 %36, label %37, label %42, !dbg !75

; <label>:37:                                     ; preds = %34
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !76
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !78
  store double 1.000000e+00, double* %39, align 8, !dbg !79
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !80
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !81
  store double 0.000000e+00, double* %41, align 8, !dbg !82
  br label %47, !dbg !83

; <label>:42:                                     ; preds = %34
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !84
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !86
  store double 0.000000e+00, double* %44, align 8, !dbg !87
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !88
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !89
  store double 0.000000e+00, double* %46, align 8, !dbg !90
  br label %47

; <label>:47:                                     ; preds = %42, %37
  store i32 0, i32* %4, align 4, !dbg !91
  br label %252, !dbg !91

; <label>:48:                                     ; preds = %3
  %49 = load double, double* %6, align 8, !dbg !92
  %50 = load double, double* %6, align 8, !dbg !94
  %51 = fmul double %49, %50, !dbg !95
  %52 = load double, double* %5, align 8, !dbg !96
  %53 = fadd double %52, 1.000000e+00, !dbg !97
  %54 = fmul double 1.000000e+01, %53, !dbg !98
  %55 = fcmp olt double %51, %54, !dbg !99
  br i1 %55, label %56, label %61, !dbg !100

; <label>:56:                                     ; preds = %48
  %57 = load double, double* %5, align 8, !dbg !101
  %58 = load double, double* %6, align 8, !dbg !103
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !104
  %60 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %57, double %58, i32 -1, i32 100, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %59), !dbg !105
  store i32 %60, i32* %4, align 4, !dbg !106
  br label %252, !dbg !106

; <label>:61:                                     ; preds = %48
  %62 = load double, double* %5, align 8, !dbg !107
  %63 = fcmp ogt double %62, 5.000000e+01, !dbg !109
  br i1 %63, label %64, label %69, !dbg !110

; <label>:64:                                     ; preds = %61
  %65 = load double, double* %5, align 8, !dbg !111
  %66 = load double, double* %6, align 8, !dbg !113
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !114
  %68 = call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double %65, double %66, %struct.gsl_sf_result_struct* %67), !dbg !115
  store i32 %68, i32* %4, align 4, !dbg !116
  br label %252, !dbg !116

; <label>:69:                                     ; preds = %61
  %70 = load double, double* %6, align 8, !dbg !117
  %71 = fcmp ogt double %70, 1.000000e+03, !dbg !119
  br i1 %71, label %72, label %77, !dbg !120

; <label>:72:                                     ; preds = %69
  %73 = load double, double* %5, align 8, !dbg !121
  %74 = load double, double* %6, align 8, !dbg !123
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !124
  %76 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %73, double %74, %struct.gsl_sf_result_struct* %75), !dbg !125
  store i32 %76, i32* %4, align 4, !dbg !126
  br label %252, !dbg !126

; <label>:77:                                     ; preds = %69
  call void @llvm.dbg.declare(metadata i32* %8, metadata !127, metadata !61), !dbg !129
  %78 = load double, double* %5, align 8, !dbg !130
  %79 = fadd double %78, 5.000000e-01, !dbg !131
  %80 = fptosi double %79 to i32, !dbg !132
  store i32 %80, i32* %8, align 4, !dbg !129
  call void @llvm.dbg.declare(metadata double* %9, metadata !133, metadata !61), !dbg !134
  %81 = load double, double* %5, align 8, !dbg !135
  %82 = load i32, i32* %8, align 4, !dbg !136
  %83 = sitofp i32 %82 to double, !dbg !136
  %84 = fsub double %81, %83, !dbg !137
  store double %84, double* %9, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata double* %10, metadata !138, metadata !61), !dbg !139
  call void @llvm.dbg.declare(metadata double* %11, metadata !140, metadata !61), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %12, metadata !142, metadata !61), !dbg !144
  %85 = load double, double* %5, align 8, !dbg !145
  %86 = load double, double* %6, align 8, !dbg !146
  %87 = call i32 @gsl_sf_bessel_J_CF1(double %85, double %86, double* %10, double* %11), !dbg !147
  store i32 %87, i32* %12, align 4, !dbg !144
  %88 = load double, double* %6, align 8, !dbg !148
  %89 = fcmp olt double %88, 2.000000e+00, !dbg !150
  br i1 %89, label %90, label %156, !dbg !151

; <label>:90:                                     ; preds = %77
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !152, metadata !61), !dbg !154
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !155, metadata !61), !dbg !156
  call void @llvm.dbg.declare(metadata i32* %15, metadata !157, metadata !61), !dbg !158
  %91 = load double, double* %9, align 8, !dbg !159
  %92 = load double, double* %6, align 8, !dbg !160
  %93 = call i32 @gsl_sf_bessel_Y_temme(double %91, double %92, %struct.gsl_sf_result_struct* %13, %struct.gsl_sf_result_struct* %14), !dbg !161
  store i32 %93, i32* %15, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata double* %16, metadata !162, metadata !61), !dbg !163
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !164
  %95 = load double, double* %94, align 8, !dbg !164
  store double %95, double* %16, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata double* %17, metadata !165, metadata !61), !dbg !166
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !167
  %97 = load double, double* %96, align 8, !dbg !167
  store double %97, double* %17, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata double* %18, metadata !168, metadata !61), !dbg !169
  store double 0.000000e+00, double* %18, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata i32* %19, metadata !170, metadata !61), !dbg !171
  store i32 1, i32* %19, align 4, !dbg !172
  br label %98, !dbg !174

; <label>:98:                                     ; preds = %116, %90
  %99 = load i32, i32* %19, align 4, !dbg !175
  %100 = load i32, i32* %8, align 4, !dbg !178
  %101 = icmp slt i32 %99, %100, !dbg !179
  br i1 %101, label %102, label %119, !dbg !180

; <label>:102:                                    ; preds = %98
  %103 = load double, double* %9, align 8, !dbg !181
  %104 = load i32, i32* %19, align 4, !dbg !183
  %105 = sitofp i32 %104 to double, !dbg !183
  %106 = fadd double %103, %105, !dbg !184
  %107 = fmul double 2.000000e+00, %106, !dbg !185
  %108 = load double, double* %6, align 8, !dbg !186
  %109 = fdiv double %107, %108, !dbg !187
  %110 = load double, double* %17, align 8, !dbg !188
  %111 = fmul double %109, %110, !dbg !189
  %112 = load double, double* %16, align 8, !dbg !190
  %113 = fsub double %111, %112, !dbg !191
  store double %113, double* %18, align 8, !dbg !192
  %114 = load double, double* %17, align 8, !dbg !193
  store double %114, double* %16, align 8, !dbg !194
  %115 = load double, double* %18, align 8, !dbg !195
  store double %115, double* %17, align 8, !dbg !196
  br label %116, !dbg !197

; <label>:116:                                    ; preds = %102
  %117 = load i32, i32* %19, align 4, !dbg !198
  %118 = add nsw i32 %117, 1, !dbg !198
  store i32 %118, i32* %19, align 4, !dbg !198
  br label %98, !dbg !200, !llvm.loop !201

; <label>:119:                                    ; preds = %98
  %120 = load double, double* %6, align 8, !dbg !203
  %121 = fmul double 0x400921FB54442D18, %120, !dbg !204
  %122 = fdiv double 2.000000e+00, %121, !dbg !205
  %123 = load double, double* %10, align 8, !dbg !206
  %124 = load double, double* %17, align 8, !dbg !207
  %125 = fmul double %123, %124, !dbg !208
  %126 = load double, double* %18, align 8, !dbg !209
  %127 = fsub double %125, %126, !dbg !210
  %128 = fdiv double %122, %127, !dbg !211
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !212
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !213
  store double %128, double* %130, align 8, !dbg !214
  %131 = load i32, i32* %8, align 4, !dbg !215
  %132 = sitofp i32 %131 to double, !dbg !215
  %133 = fadd double %132, 2.000000e+00, !dbg !216
  %134 = fmul double 0x3CB0000000000000, %133, !dbg !217
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !218
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 0, !dbg !219
  %137 = load double, double* %136, align 8, !dbg !219
  %138 = call double @fabs(double %137) #1, !dbg !220
  %139 = fmul double %134, %138, !dbg !221
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !222
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 1, !dbg !223
  store double %139, double* %141, align 8, !dbg !224
  %142 = load i32, i32* %15, align 4, !dbg !225
  %143 = icmp ne i32 %142, 0, !dbg !225
  br i1 %143, label %144, label %146, !dbg !225

; <label>:144:                                    ; preds = %119
  %145 = load i32, i32* %15, align 4, !dbg !226
  br label %154, !dbg !226

; <label>:146:                                    ; preds = %119
  %147 = load i32, i32* %12, align 4, !dbg !228
  %148 = icmp ne i32 %147, 0, !dbg !228
  br i1 %148, label %149, label %151, !dbg !228

; <label>:149:                                    ; preds = %146
  %150 = load i32, i32* %12, align 4, !dbg !230
  br label %152, !dbg !230

; <label>:151:                                    ; preds = %146
  br label %152, !dbg !232

; <label>:152:                                    ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ], !dbg !234
  br label %154, !dbg !234

; <label>:154:                                    ; preds = %152, %144
  %155 = phi i32 [ %145, %144 ], [ %153, %152 ], !dbg !236
  store i32 %155, i32* %4, align 4, !dbg !238
  br label %252, !dbg !238

; <label>:156:                                    ; preds = %77
  call void @llvm.dbg.declare(metadata double* %20, metadata !239, metadata !61), !dbg !241
  call void @llvm.dbg.declare(metadata double* %21, metadata !242, metadata !61), !dbg !243
  call void @llvm.dbg.declare(metadata double* %22, metadata !244, metadata !61), !dbg !245
  call void @llvm.dbg.declare(metadata double* %23, metadata !246, metadata !61), !dbg !247
  call void @llvm.dbg.declare(metadata double* %24, metadata !248, metadata !61), !dbg !249
  call void @llvm.dbg.declare(metadata double* %25, metadata !250, metadata !61), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %26, metadata !252, metadata !61), !dbg !253
  %157 = load double, double* %9, align 8, !dbg !254
  %158 = load double, double* %6, align 8, !dbg !255
  %159 = call i32 @gsl_sf_bessel_JY_steed_CF2(double %157, double %158, double* %24, double* %25), !dbg !256
  store i32 %159, i32* %26, align 4, !dbg !253
  call void @llvm.dbg.declare(metadata double* %27, metadata !257, metadata !61), !dbg !258
  call void @llvm.dbg.declare(metadata double* %28, metadata !259, metadata !61), !dbg !260
  %160 = load double, double* %11, align 8, !dbg !261
  %161 = fmul double %160, 0x2000000000000000, !dbg !262
  %162 = load double, double* %10, align 8, !dbg !263
  %163 = fmul double %161, %162, !dbg !264
  store double %163, double* %28, align 8, !dbg !260
  call void @llvm.dbg.declare(metadata double* %29, metadata !265, metadata !61), !dbg !266
  %164 = load double, double* %11, align 8, !dbg !267
  %165 = fmul double %164, 0x2000000000000000, !dbg !268
  store double %165, double* %29, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata double* %30, metadata !269, metadata !61), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %31, metadata !271, metadata !61), !dbg !272
  %166 = load i32, i32* %8, align 4, !dbg !273
  store i32 %166, i32* %31, align 4, !dbg !275
  br label %167, !dbg !276

; <label>:167:                                    ; preds = %184, %156
  %168 = load i32, i32* %31, align 4, !dbg !277
  %169 = icmp sgt i32 %168, 0, !dbg !280
  br i1 %169, label %170, label %187, !dbg !281

; <label>:170:                                    ; preds = %167
  %171 = load double, double* %9, align 8, !dbg !282
  %172 = load i32, i32* %31, align 4, !dbg !284
  %173 = sitofp i32 %172 to double, !dbg !284
  %174 = fadd double %171, %173, !dbg !285
  %175 = fmul double 2.000000e+00, %174, !dbg !286
  %176 = load double, double* %6, align 8, !dbg !287
  %177 = fdiv double %175, %176, !dbg !288
  %178 = load double, double* %29, align 8, !dbg !289
  %179 = fmul double %177, %178, !dbg !290
  %180 = load double, double* %28, align 8, !dbg !291
  %181 = fsub double %179, %180, !dbg !292
  store double %181, double* %30, align 8, !dbg !293
  %182 = load double, double* %29, align 8, !dbg !294
  store double %182, double* %28, align 8, !dbg !295
  %183 = load double, double* %30, align 8, !dbg !296
  store double %183, double* %29, align 8, !dbg !297
  br label %184, !dbg !298

; <label>:184:                                    ; preds = %170
  %185 = load i32, i32* %31, align 4, !dbg !299
  %186 = add nsw i32 %185, -1, !dbg !299
  store i32 %186, i32* %31, align 4, !dbg !299
  br label %167, !dbg !301, !llvm.loop !302

; <label>:187:                                    ; preds = %167
  %188 = load double, double* %28, align 8, !dbg !304
  %189 = load double, double* %29, align 8, !dbg !305
  %190 = fdiv double %188, %189, !dbg !306
  store double %190, double* %21, align 8, !dbg !307
  %191 = load double, double* %29, align 8, !dbg !308
  %192 = fcmp oge double %191, 0.000000e+00, !dbg !308
  %193 = select i1 %192, i32 1, i32 -1, !dbg !308
  %194 = sitofp i32 %193 to double, !dbg !308
  store double %194, double* %22, align 8, !dbg !309
  %195 = load double, double* %9, align 8, !dbg !310
  %196 = load double, double* %6, align 8, !dbg !311
  %197 = fdiv double %195, %196, !dbg !312
  %198 = load double, double* %21, align 8, !dbg !313
  %199 = fsub double %197, %198, !dbg !314
  store double %199, double* %23, align 8, !dbg !315
  %200 = load double, double* %24, align 8, !dbg !316
  %201 = load double, double* %23, align 8, !dbg !317
  %202 = fsub double %200, %201, !dbg !318
  %203 = load double, double* %25, align 8, !dbg !319
  %204 = fdiv double %202, %203, !dbg !320
  store double %204, double* %27, align 8, !dbg !321
  %205 = load double, double* %22, align 8, !dbg !322
  %206 = load double, double* %6, align 8, !dbg !323
  %207 = fmul double 0x400921FB54442D18, %206, !dbg !324
  %208 = fdiv double 2.000000e+00, %207, !dbg !325
  %209 = load double, double* %25, align 8, !dbg !326
  %210 = load double, double* %27, align 8, !dbg !327
  %211 = load double, double* %24, align 8, !dbg !328
  %212 = load double, double* %23, align 8, !dbg !329
  %213 = fsub double %211, %212, !dbg !330
  %214 = fmul double %210, %213, !dbg !331
  %215 = fadd double %209, %214, !dbg !332
  %216 = fdiv double %208, %215, !dbg !333
  %217 = call double @sqrt(double %216) #5, !dbg !334
  %218 = fmul double %205, %217, !dbg !335
  store double %218, double* %20, align 8, !dbg !336
  %219 = load double, double* %20, align 8, !dbg !337
  %220 = load double, double* %11, align 8, !dbg !338
  %221 = fmul double %220, 0x2000000000000000, !dbg !339
  %222 = fmul double %219, %221, !dbg !340
  %223 = load double, double* %29, align 8, !dbg !341
  %224 = fdiv double %222, %223, !dbg !342
  %225 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !343
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %225, i32 0, i32 0, !dbg !344
  store double %224, double* %226, align 8, !dbg !345
  %227 = load i32, i32* %8, align 4, !dbg !346
  %228 = sitofp i32 %227 to double, !dbg !346
  %229 = fadd double %228, 2.000000e+00, !dbg !347
  %230 = fmul double 0x3CC0000000000000, %229, !dbg !348
  %231 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !349
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %231, i32 0, i32 0, !dbg !350
  %233 = load double, double* %232, align 8, !dbg !350
  %234 = call double @fabs(double %233) #1, !dbg !351
  %235 = fmul double %230, %234, !dbg !352
  %236 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !353
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %236, i32 0, i32 1, !dbg !354
  store double %235, double* %237, align 8, !dbg !355
  %238 = load i32, i32* %26, align 4, !dbg !356
  %239 = icmp ne i32 %238, 0, !dbg !356
  br i1 %239, label %240, label %242, !dbg !356

; <label>:240:                                    ; preds = %187
  %241 = load i32, i32* %26, align 4, !dbg !357
  br label %250, !dbg !357

; <label>:242:                                    ; preds = %187
  %243 = load i32, i32* %12, align 4, !dbg !359
  %244 = icmp ne i32 %243, 0, !dbg !359
  br i1 %244, label %245, label %247, !dbg !359

; <label>:245:                                    ; preds = %242
  %246 = load i32, i32* %12, align 4, !dbg !361
  br label %248, !dbg !361

; <label>:247:                                    ; preds = %242
  br label %248, !dbg !363

; <label>:248:                                    ; preds = %247, %245
  %249 = phi i32 [ %246, %245 ], [ 0, %247 ], !dbg !365
  br label %250, !dbg !365

; <label>:250:                                    ; preds = %248, %240
  %251 = phi i32 [ %241, %240 ], [ %249, %248 ], !dbg !367
  store i32 %251, i32* %4, align 4, !dbg !369
  br label %252, !dbg !369

; <label>:252:                                    ; preds = %250, %154, %72, %64, %56, %47
  %253 = load i32, i32* %4, align 4, !dbg !370
  ret i32 %253, !dbg !370
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Jnu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_J_CF1(double, double, double*, double*) #2

declare i32 @gsl_sf_bessel_Y_temme(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gsl_sf_bessel_JY_steed_CF2(double, double, double*, double*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jnu_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !371 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !372, metadata !61), !dbg !373
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !374, metadata !61), !dbg !375
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !376, metadata !61), !dbg !377
  %20 = load double, double* %6, align 8, !dbg !378
  %21 = fcmp ole double %20, 0.000000e+00, !dbg !380
  br i1 %21, label %22, label %31, !dbg !381

; <label>:22:                                     ; preds = %3
  br label %23, !dbg !382, !llvm.loop !384

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !385
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !385
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !385
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !385
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !385
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !385
  br label %28, !dbg !385, !llvm.loop !388

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 182, i32 1), !dbg !390
  store i32 1, i32* %4, align 4, !dbg !390
  br label %138, !dbg !390
                                                  ; No predecessors!
  br label %30, !dbg !393

; <label>:30:                                     ; preds = %29
  br label %138, !dbg !395

; <label>:31:                                     ; preds = %3
  %32 = load double, double* %5, align 8, !dbg !396
  %33 = fcmp olt double %32, 0.000000e+00, !dbg !398
  br i1 %33, label %34, label %133, !dbg !399

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !400, metadata !61), !dbg !402
  %35 = load double, double* %5, align 8, !dbg !403
  %36 = fsub double -0.000000e+00, %35, !dbg !404
  %37 = load double, double* %6, align 8, !dbg !405
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !406
  %39 = call i32 @gsl_sf_bessel_Jnupos_e(double %36, double %37, %struct.gsl_sf_result_struct* %38), !dbg !407
  store i32 %39, i32* %8, align 4, !dbg !402
  call void @llvm.dbg.declare(metadata double* %9, metadata !408, metadata !61), !dbg !409
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !410
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !411
  %42 = load double, double* %41, align 8, !dbg !411
  store double %42, double* %9, align 8, !dbg !409
  call void @llvm.dbg.declare(metadata double* %10, metadata !412, metadata !61), !dbg !413
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !414
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !415
  %45 = load double, double* %44, align 8, !dbg !415
  store double %45, double* %10, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata i32* %11, metadata !416, metadata !61), !dbg !417
  %46 = load double, double* %5, align 8, !dbg !418
  %47 = fsub double -0.000000e+00, %46, !dbg !419
  %48 = load double, double* %6, align 8, !dbg !420
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !421
  %50 = call i32 @gsl_sf_bessel_Ynupos_e(double %47, double %48, %struct.gsl_sf_result_struct* %49), !dbg !422
  store i32 %50, i32* %11, align 4, !dbg !417
  call void @llvm.dbg.declare(metadata double* %12, metadata !423, metadata !61), !dbg !424
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !425
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !426
  %53 = load double, double* %52, align 8, !dbg !426
  store double %53, double* %12, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata double* %13, metadata !427, metadata !61), !dbg !428
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !429
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !430
  %56 = load double, double* %55, align 8, !dbg !430
  store double %56, double* %13, align 8, !dbg !428
  call void @llvm.dbg.declare(metadata i32* %14, metadata !431, metadata !61), !dbg !432
  %57 = load double, double* %5, align 8, !dbg !433
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !434
  %59 = call i32 @gsl_sf_sin_pi_e(double %57, %struct.gsl_sf_result_struct* %58), !dbg !435
  store i32 %59, i32* %14, align 4, !dbg !432
  call void @llvm.dbg.declare(metadata double* %15, metadata !436, metadata !61), !dbg !437
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !438
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !439
  %62 = load double, double* %61, align 8, !dbg !439
  store double %62, double* %15, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata double* %16, metadata !440, metadata !61), !dbg !441
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !442
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !443
  %65 = load double, double* %64, align 8, !dbg !443
  store double %65, double* %16, align 8, !dbg !441
  call void @llvm.dbg.declare(metadata i32* %17, metadata !444, metadata !61), !dbg !445
  %66 = load double, double* %5, align 8, !dbg !446
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !447
  %68 = call i32 @gsl_sf_cos_pi_e(double %66, %struct.gsl_sf_result_struct* %67), !dbg !448
  store i32 %68, i32* %17, align 4, !dbg !445
  call void @llvm.dbg.declare(metadata double* %18, metadata !449, metadata !61), !dbg !450
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !451
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !452
  %71 = load double, double* %70, align 8, !dbg !452
  store double %71, double* %18, align 8, !dbg !450
  call void @llvm.dbg.declare(metadata double* %19, metadata !453, metadata !61), !dbg !454
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !455
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !456
  %74 = load double, double* %73, align 8, !dbg !456
  store double %74, double* %19, align 8, !dbg !454
  %75 = load double, double* %15, align 8, !dbg !457
  %76 = load double, double* %12, align 8, !dbg !458
  %77 = fmul double %75, %76, !dbg !459
  %78 = load double, double* %18, align 8, !dbg !460
  %79 = load double, double* %9, align 8, !dbg !461
  %80 = fmul double %78, %79, !dbg !462
  %81 = fadd double %77, %80, !dbg !463
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !464
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !465
  store double %81, double* %83, align 8, !dbg !466
  %84 = load double, double* %18, align 8, !dbg !467
  %85 = load double, double* %13, align 8, !dbg !468
  %86 = fmul double %84, %85, !dbg !469
  %87 = call double @fabs(double %86) #1, !dbg !470
  %88 = load double, double* %15, align 8, !dbg !471
  %89 = load double, double* %10, align 8, !dbg !472
  %90 = fmul double %88, %89, !dbg !473
  %91 = call double @fabs(double %90) #1, !dbg !474
  %92 = fadd double %87, %91, !dbg !476
  %93 = load double, double* %19, align 8, !dbg !477
  %94 = load double, double* %12, align 8, !dbg !478
  %95 = fmul double %93, %94, !dbg !479
  %96 = call double @fabs(double %95) #1, !dbg !480
  %97 = fadd double %92, %96, !dbg !482
  %98 = load double, double* %16, align 8, !dbg !483
  %99 = load double, double* %9, align 8, !dbg !484
  %100 = fmul double %98, %99, !dbg !485
  %101 = call double @fabs(double %100) #1, !dbg !486
  %102 = fadd double %97, %101, !dbg !488
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !489
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !490
  store double %102, double* %104, align 8, !dbg !491
  %105 = load i32, i32* %8, align 4, !dbg !492
  %106 = icmp ne i32 %105, 0, !dbg !492
  br i1 %106, label %107, label %109, !dbg !492

; <label>:107:                                    ; preds = %34
  %108 = load i32, i32* %8, align 4, !dbg !493
  br label %131, !dbg !493

; <label>:109:                                    ; preds = %34
  %110 = load i32, i32* %11, align 4, !dbg !494
  %111 = icmp ne i32 %110, 0, !dbg !494
  br i1 %111, label %112, label %114, !dbg !494

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %11, align 4, !dbg !495
  br label %129, !dbg !495

; <label>:114:                                    ; preds = %109
  %115 = load i32, i32* %14, align 4, !dbg !496
  %116 = icmp ne i32 %115, 0, !dbg !496
  br i1 %116, label %117, label %119, !dbg !496

; <label>:117:                                    ; preds = %114
  %118 = load i32, i32* %14, align 4, !dbg !498
  br label %127, !dbg !498

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* %17, align 4, !dbg !500
  %121 = icmp ne i32 %120, 0, !dbg !500
  br i1 %121, label %122, label %124, !dbg !500

; <label>:122:                                    ; preds = %119
  %123 = load i32, i32* %17, align 4, !dbg !502
  br label %125, !dbg !502

; <label>:124:                                    ; preds = %119
  br label %125, !dbg !504

; <label>:125:                                    ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 0, %124 ], !dbg !506
  br label %127, !dbg !506

; <label>:127:                                    ; preds = %125, %117
  %128 = phi i32 [ %118, %117 ], [ %126, %125 ], !dbg !508
  br label %129, !dbg !508

; <label>:129:                                    ; preds = %127, %112
  %130 = phi i32 [ %113, %112 ], [ %128, %127 ], !dbg !510
  br label %131, !dbg !510

; <label>:131:                                    ; preds = %129, %107
  %132 = phi i32 [ %108, %107 ], [ %130, %129 ], !dbg !512
  store i32 %132, i32* %4, align 4, !dbg !514
  br label %138, !dbg !514

; <label>:133:                                    ; preds = %31
  %134 = load double, double* %5, align 8, !dbg !515
  %135 = load double, double* %6, align 8, !dbg !516
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !517
  %137 = call i32 @gsl_sf_bessel_Jnupos_e(double %134, double %135, %struct.gsl_sf_result_struct* %136), !dbg !518
  store i32 %137, i32* %4, align 4, !dbg !519
  br label %138, !dbg !519

; <label>:138:                                    ; preds = %28, %131, %133, %30
  %139 = load i32, i32* %4, align 4, !dbg !520
  ret i32 %139, !dbg !520
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

declare i32 @gsl_sf_bessel_Ynupos_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_sin_pi_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_cos_pi_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Jnu(double, double) #0 !dbg !521 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !524, metadata !61), !dbg !525
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !526, metadata !61), !dbg !527
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !528, metadata !61), !dbg !529
  call void @llvm.dbg.declare(metadata i32* %7, metadata !530, metadata !61), !dbg !529
  %8 = load double, double* %4, align 8, !dbg !529
  %9 = load double, double* %5, align 8, !dbg !529
  %10 = call i32 @gsl_sf_bessel_Jnu_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !529
  store i32 %10, i32* %7, align 4, !dbg !529
  %11 = load i32, i32* %7, align 4, !dbg !531
  %12 = icmp ne i32 %11, 0, !dbg !531
  br i1 %12, label %13, label %19, !dbg !529

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !533, !llvm.loop !536

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !538
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 211, i32 %15), !dbg !538
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !538
  %17 = load double, double* %16, align 8, !dbg !538
  store double %17, double* %3, align 8, !dbg !538
  br label %22, !dbg !538
                                                  ; No predecessors!
  br label %19, !dbg !541

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !543
  %21 = load double, double* %20, align 8, !dbg !543
  store double %21, double* %3, align 8, !dbg !543
  br label %22, !dbg !543

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !545
  ret double %23, !dbg !545
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_Jnu.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnupos_e", scope: !1, file: !1, line: 78, type: !48, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!48 = !DISubroutineType(types: !49)
!49 = !{!42, !50, !50, !52}
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
!60 = !DILocalVariable(name: "nu", arg: 1, scope: !47, file: !1, line: 78, type: !50)
!61 = !DIExpression()
!62 = !DILocation(line: 78, column: 37, scope: !47)
!63 = !DILocalVariable(name: "x", arg: 2, scope: !47, file: !1, line: 78, type: !50)
!64 = !DILocation(line: 78, column: 54, scope: !47)
!65 = !DILocalVariable(name: "result", arg: 3, scope: !47, file: !1, line: 78, type: !52)
!66 = !DILocation(line: 78, column: 73, scope: !47)
!67 = !DILocation(line: 82, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !47, file: !1, line: 82, column: 6)
!69 = !DILocation(line: 82, column: 8, scope: !68)
!70 = !DILocation(line: 82, column: 6, scope: !47)
!71 = !DILocation(line: 83, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 83, column: 8)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 82, column: 16)
!74 = !DILocation(line: 83, column: 11, scope: !72)
!75 = !DILocation(line: 83, column: 8, scope: !73)
!76 = !DILocation(line: 84, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 83, column: 19)
!78 = !DILocation(line: 84, column: 15, scope: !77)
!79 = !DILocation(line: 84, column: 19, scope: !77)
!80 = !DILocation(line: 85, column: 7, scope: !77)
!81 = !DILocation(line: 85, column: 15, scope: !77)
!82 = !DILocation(line: 85, column: 19, scope: !77)
!83 = !DILocation(line: 86, column: 5, scope: !77)
!84 = !DILocation(line: 88, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !72, file: !1, line: 87, column: 10)
!86 = !DILocation(line: 88, column: 15, scope: !85)
!87 = !DILocation(line: 88, column: 19, scope: !85)
!88 = !DILocation(line: 89, column: 7, scope: !85)
!89 = !DILocation(line: 89, column: 15, scope: !85)
!90 = !DILocation(line: 89, column: 19, scope: !85)
!91 = !DILocation(line: 91, column: 5, scope: !73)
!92 = !DILocation(line: 93, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !68, file: !1, line: 93, column: 11)
!94 = !DILocation(line: 93, column: 13, scope: !93)
!95 = !DILocation(line: 93, column: 12, scope: !93)
!96 = !DILocation(line: 93, column: 23, scope: !93)
!97 = !DILocation(line: 93, column: 25, scope: !93)
!98 = !DILocation(line: 93, column: 21, scope: !93)
!99 = !DILocation(line: 93, column: 15, scope: !93)
!100 = !DILocation(line: 93, column: 11, scope: !68)
!101 = !DILocation(line: 94, column: 38, scope: !102)
!102 = distinct !DILexicalBlock(scope: !93, file: !1, line: 93, column: 32)
!103 = !DILocation(line: 94, column: 42, scope: !102)
!104 = !DILocation(line: 94, column: 71, scope: !102)
!105 = !DILocation(line: 94, column: 12, scope: !102)
!106 = !DILocation(line: 94, column: 5, scope: !102)
!107 = !DILocation(line: 96, column: 11, scope: !108)
!108 = distinct !DILexicalBlock(scope: !93, file: !1, line: 96, column: 11)
!109 = !DILocation(line: 96, column: 14, scope: !108)
!110 = !DILocation(line: 96, column: 11, scope: !93)
!111 = !DILocation(line: 97, column: 44, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 96, column: 22)
!113 = !DILocation(line: 97, column: 48, scope: !112)
!114 = !DILocation(line: 97, column: 51, scope: !112)
!115 = !DILocation(line: 97, column: 12, scope: !112)
!116 = !DILocation(line: 97, column: 5, scope: !112)
!117 = !DILocation(line: 99, column: 11, scope: !118)
!118 = distinct !DILexicalBlock(scope: !108, file: !1, line: 99, column: 11)
!119 = !DILocation(line: 99, column: 13, scope: !118)
!120 = !DILocation(line: 99, column: 11, scope: !108)
!121 = !DILocation(line: 105, column: 39, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 100, column: 3)
!123 = !DILocation(line: 105, column: 43, scope: !122)
!124 = !DILocation(line: 105, column: 46, scope: !122)
!125 = !DILocation(line: 105, column: 12, scope: !122)
!126 = !DILocation(line: 105, column: 5, scope: !122)
!127 = !DILocalVariable(name: "N", scope: !128, file: !1, line: 109, type: !42)
!128 = distinct !DILexicalBlock(scope: !118, file: !1, line: 107, column: 8)
!129 = !DILocation(line: 109, column: 9, scope: !128)
!130 = !DILocation(line: 109, column: 19, scope: !128)
!131 = !DILocation(line: 109, column: 22, scope: !128)
!132 = !DILocation(line: 109, column: 13, scope: !128)
!133 = !DILocalVariable(name: "mu", scope: !128, file: !1, line: 110, type: !51)
!134 = !DILocation(line: 110, column: 12, scope: !128)
!135 = !DILocation(line: 110, column: 17, scope: !128)
!136 = !DILocation(line: 110, column: 22, scope: !128)
!137 = !DILocation(line: 110, column: 20, scope: !128)
!138 = !DILocalVariable(name: "Jnup1_Jnu", scope: !128, file: !1, line: 114, type: !51)
!139 = !DILocation(line: 114, column: 12, scope: !128)
!140 = !DILocalVariable(name: "sgn_Jnu", scope: !128, file: !1, line: 115, type: !51)
!141 = !DILocation(line: 115, column: 12, scope: !128)
!142 = !DILocalVariable(name: "stat_CF1", scope: !128, file: !1, line: 116, type: !143)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!144 = !DILocation(line: 116, column: 15, scope: !128)
!145 = !DILocation(line: 116, column: 46, scope: !128)
!146 = !DILocation(line: 116, column: 50, scope: !128)
!147 = !DILocation(line: 116, column: 26, scope: !128)
!148 = !DILocation(line: 118, column: 8, scope: !149)
!149 = distinct !DILexicalBlock(scope: !128, file: !1, line: 118, column: 8)
!150 = !DILocation(line: 118, column: 10, scope: !149)
!151 = !DILocation(line: 118, column: 8, scope: !128)
!152 = !DILocalVariable(name: "Y_mu", scope: !153, file: !1, line: 122, type: !53)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 118, column: 17)
!154 = !DILocation(line: 122, column: 21, scope: !153)
!155 = !DILocalVariable(name: "Y_mup1", scope: !153, file: !1, line: 122, type: !53)
!156 = !DILocation(line: 122, column: 27, scope: !153)
!157 = !DILocalVariable(name: "stat_mu", scope: !153, file: !1, line: 123, type: !143)
!158 = !DILocation(line: 123, column: 17, scope: !153)
!159 = !DILocation(line: 123, column: 49, scope: !153)
!160 = !DILocation(line: 123, column: 53, scope: !153)
!161 = !DILocation(line: 123, column: 27, scope: !153)
!162 = !DILocalVariable(name: "Ynm1", scope: !153, file: !1, line: 125, type: !51)
!163 = !DILocation(line: 125, column: 14, scope: !153)
!164 = !DILocation(line: 125, column: 26, scope: !153)
!165 = !DILocalVariable(name: "Yn", scope: !153, file: !1, line: 126, type: !51)
!166 = !DILocation(line: 126, column: 14, scope: !153)
!167 = !DILocation(line: 126, column: 28, scope: !153)
!168 = !DILocalVariable(name: "Ynp1", scope: !153, file: !1, line: 127, type: !51)
!169 = !DILocation(line: 127, column: 14, scope: !153)
!170 = !DILocalVariable(name: "n", scope: !153, file: !1, line: 128, type: !42)
!171 = !DILocation(line: 128, column: 11, scope: !153)
!172 = !DILocation(line: 129, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !153, file: !1, line: 129, column: 7)
!174 = !DILocation(line: 129, column: 11, scope: !173)
!175 = !DILocation(line: 129, column: 16, scope: !176)
!176 = !DILexicalBlockFile(scope: !177, file: !1, discriminator: 1)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 129, column: 7)
!178 = !DILocation(line: 129, column: 18, scope: !176)
!179 = !DILocation(line: 129, column: 17, scope: !176)
!180 = !DILocation(line: 129, column: 7, scope: !176)
!181 = !DILocation(line: 130, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !1, line: 129, column: 26)
!183 = !DILocation(line: 130, column: 24, scope: !182)
!184 = !DILocation(line: 130, column: 23, scope: !182)
!185 = !DILocation(line: 130, column: 19, scope: !182)
!186 = !DILocation(line: 130, column: 27, scope: !182)
!187 = !DILocation(line: 130, column: 26, scope: !182)
!188 = !DILocation(line: 130, column: 31, scope: !182)
!189 = !DILocation(line: 130, column: 29, scope: !182)
!190 = !DILocation(line: 130, column: 36, scope: !182)
!191 = !DILocation(line: 130, column: 34, scope: !182)
!192 = !DILocation(line: 130, column: 14, scope: !182)
!193 = !DILocation(line: 131, column: 16, scope: !182)
!194 = !DILocation(line: 131, column: 14, scope: !182)
!195 = !DILocation(line: 132, column: 16, scope: !182)
!196 = !DILocation(line: 132, column: 14, scope: !182)
!197 = !DILocation(line: 133, column: 7, scope: !182)
!198 = !DILocation(line: 129, column: 22, scope: !199)
!199 = !DILexicalBlockFile(scope: !177, file: !1, discriminator: 2)
!200 = !DILocation(line: 129, column: 7, scope: !199)
!201 = distinct !{!201, !202}
!202 = !DILocation(line: 129, column: 7, scope: !153)
!203 = !DILocation(line: 135, column: 31, scope: !153)
!204 = !DILocation(line: 135, column: 30, scope: !153)
!205 = !DILocation(line: 135, column: 24, scope: !153)
!206 = !DILocation(line: 135, column: 37, scope: !153)
!207 = !DILocation(line: 135, column: 47, scope: !153)
!208 = !DILocation(line: 135, column: 46, scope: !153)
!209 = !DILocation(line: 135, column: 52, scope: !153)
!210 = !DILocation(line: 135, column: 50, scope: !153)
!211 = !DILocation(line: 135, column: 34, scope: !153)
!212 = !DILocation(line: 135, column: 7, scope: !153)
!213 = !DILocation(line: 135, column: 15, scope: !153)
!214 = !DILocation(line: 135, column: 19, scope: !153)
!215 = !DILocation(line: 136, column: 40, scope: !153)
!216 = !DILocation(line: 136, column: 42, scope: !153)
!217 = !DILocation(line: 136, column: 37, scope: !153)
!218 = !DILocation(line: 136, column: 56, scope: !153)
!219 = !DILocation(line: 136, column: 64, scope: !153)
!220 = !DILocation(line: 136, column: 51, scope: !153)
!221 = !DILocation(line: 136, column: 49, scope: !153)
!222 = !DILocation(line: 136, column: 7, scope: !153)
!223 = !DILocation(line: 136, column: 15, scope: !153)
!224 = !DILocation(line: 136, column: 19, scope: !153)
!225 = !DILocation(line: 137, column: 14, scope: !153)
!226 = !DILocation(line: 137, column: 14, scope: !227)
!227 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 1)
!228 = !DILocation(line: 137, column: 14, scope: !229)
!229 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 2)
!230 = !DILocation(line: 137, column: 14, scope: !231)
!231 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 3)
!232 = !DILocation(line: 137, column: 14, scope: !233)
!233 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 4)
!234 = !DILocation(line: 137, column: 14, scope: !235)
!235 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 5)
!236 = !DILocation(line: 137, column: 14, scope: !237)
!237 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 6)
!238 = !DILocation(line: 137, column: 7, scope: !237)
!239 = !DILocalVariable(name: "Jmu", scope: !240, file: !1, line: 144, type: !51)
!240 = distinct !DILexicalBlock(scope: !149, file: !1, line: 139, column: 10)
!241 = !DILocation(line: 144, column: 14, scope: !240)
!242 = !DILocalVariable(name: "Jmup1_Jmu", scope: !240, file: !1, line: 145, type: !51)
!243 = !DILocation(line: 145, column: 14, scope: !240)
!244 = !DILocalVariable(name: "sgn_Jmu", scope: !240, file: !1, line: 146, type: !51)
!245 = !DILocation(line: 146, column: 14, scope: !240)
!246 = !DILocalVariable(name: "Jmuprime_Jmu", scope: !240, file: !1, line: 147, type: !51)
!247 = !DILocation(line: 147, column: 14, scope: !240)
!248 = !DILocalVariable(name: "P", scope: !240, file: !1, line: 148, type: !51)
!249 = !DILocation(line: 148, column: 14, scope: !240)
!250 = !DILocalVariable(name: "Q", scope: !240, file: !1, line: 148, type: !51)
!251 = !DILocation(line: 148, column: 17, scope: !240)
!252 = !DILocalVariable(name: "stat_CF2", scope: !240, file: !1, line: 149, type: !143)
!253 = !DILocation(line: 149, column: 17, scope: !240)
!254 = !DILocation(line: 149, column: 55, scope: !240)
!255 = !DILocation(line: 149, column: 59, scope: !240)
!256 = !DILocation(line: 149, column: 28, scope: !240)
!257 = !DILocalVariable(name: "gamma", scope: !240, file: !1, line: 150, type: !51)
!258 = !DILocation(line: 150, column: 14, scope: !240)
!259 = !DILocalVariable(name: "Jnp1", scope: !240, file: !1, line: 152, type: !51)
!260 = !DILocation(line: 152, column: 14, scope: !240)
!261 = !DILocation(line: 152, column: 21, scope: !240)
!262 = !DILocation(line: 152, column: 29, scope: !240)
!263 = !DILocation(line: 152, column: 50, scope: !240)
!264 = !DILocation(line: 152, column: 48, scope: !240)
!265 = !DILocalVariable(name: "Jn", scope: !240, file: !1, line: 153, type: !51)
!266 = !DILocation(line: 153, column: 14, scope: !240)
!267 = !DILocation(line: 153, column: 21, scope: !240)
!268 = !DILocation(line: 153, column: 29, scope: !240)
!269 = !DILocalVariable(name: "Jnm1", scope: !240, file: !1, line: 154, type: !51)
!270 = !DILocation(line: 154, column: 14, scope: !240)
!271 = !DILocalVariable(name: "n", scope: !240, file: !1, line: 155, type: !42)
!272 = !DILocation(line: 155, column: 11, scope: !240)
!273 = !DILocation(line: 156, column: 13, scope: !274)
!274 = distinct !DILexicalBlock(scope: !240, file: !1, line: 156, column: 7)
!275 = !DILocation(line: 156, column: 12, scope: !274)
!276 = !DILocation(line: 156, column: 11, scope: !274)
!277 = !DILocation(line: 156, column: 16, scope: !278)
!278 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 1)
!279 = distinct !DILexicalBlock(scope: !274, file: !1, line: 156, column: 7)
!280 = !DILocation(line: 156, column: 17, scope: !278)
!281 = !DILocation(line: 156, column: 7, scope: !278)
!282 = !DILocation(line: 157, column: 21, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !1, line: 156, column: 26)
!284 = !DILocation(line: 157, column: 24, scope: !283)
!285 = !DILocation(line: 157, column: 23, scope: !283)
!286 = !DILocation(line: 157, column: 19, scope: !283)
!287 = !DILocation(line: 157, column: 27, scope: !283)
!288 = !DILocation(line: 157, column: 26, scope: !283)
!289 = !DILocation(line: 157, column: 31, scope: !283)
!290 = !DILocation(line: 157, column: 29, scope: !283)
!291 = !DILocation(line: 157, column: 36, scope: !283)
!292 = !DILocation(line: 157, column: 34, scope: !283)
!293 = !DILocation(line: 157, column: 14, scope: !283)
!294 = !DILocation(line: 158, column: 16, scope: !283)
!295 = !DILocation(line: 158, column: 14, scope: !283)
!296 = !DILocation(line: 159, column: 16, scope: !283)
!297 = !DILocation(line: 159, column: 14, scope: !283)
!298 = !DILocation(line: 160, column: 7, scope: !283)
!299 = !DILocation(line: 156, column: 22, scope: !300)
!300 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 2)
!301 = !DILocation(line: 156, column: 7, scope: !300)
!302 = distinct !{!302, !303}
!303 = !DILocation(line: 156, column: 7, scope: !240)
!304 = !DILocation(line: 161, column: 19, scope: !240)
!305 = !DILocation(line: 161, column: 24, scope: !240)
!306 = !DILocation(line: 161, column: 23, scope: !240)
!307 = !DILocation(line: 161, column: 17, scope: !240)
!308 = !DILocation(line: 162, column: 19, scope: !240)
!309 = !DILocation(line: 162, column: 17, scope: !240)
!310 = !DILocation(line: 163, column: 22, scope: !240)
!311 = !DILocation(line: 163, column: 25, scope: !240)
!312 = !DILocation(line: 163, column: 24, scope: !240)
!313 = !DILocation(line: 163, column: 29, scope: !240)
!314 = !DILocation(line: 163, column: 27, scope: !240)
!315 = !DILocation(line: 163, column: 20, scope: !240)
!316 = !DILocation(line: 165, column: 16, scope: !240)
!317 = !DILocation(line: 165, column: 20, scope: !240)
!318 = !DILocation(line: 165, column: 18, scope: !240)
!319 = !DILocation(line: 165, column: 34, scope: !240)
!320 = !DILocation(line: 165, column: 33, scope: !240)
!321 = !DILocation(line: 165, column: 13, scope: !240)
!322 = !DILocation(line: 166, column: 15, scope: !240)
!323 = !DILocation(line: 166, column: 40, scope: !240)
!324 = !DILocation(line: 166, column: 39, scope: !240)
!325 = !DILocation(line: 166, column: 33, scope: !240)
!326 = !DILocation(line: 166, column: 46, scope: !240)
!327 = !DILocation(line: 166, column: 50, scope: !240)
!328 = !DILocation(line: 166, column: 57, scope: !240)
!329 = !DILocation(line: 166, column: 59, scope: !240)
!330 = !DILocation(line: 166, column: 58, scope: !240)
!331 = !DILocation(line: 166, column: 55, scope: !240)
!332 = !DILocation(line: 166, column: 48, scope: !240)
!333 = !DILocation(line: 166, column: 43, scope: !240)
!334 = !DILocation(line: 166, column: 25, scope: !240)
!335 = !DILocation(line: 166, column: 23, scope: !240)
!336 = !DILocation(line: 166, column: 13, scope: !240)
!337 = !DILocation(line: 168, column: 21, scope: !240)
!338 = !DILocation(line: 168, column: 28, scope: !240)
!339 = !DILocation(line: 168, column: 36, scope: !240)
!340 = !DILocation(line: 168, column: 25, scope: !240)
!341 = !DILocation(line: 168, column: 58, scope: !240)
!342 = !DILocation(line: 168, column: 56, scope: !240)
!343 = !DILocation(line: 168, column: 7, scope: !240)
!344 = !DILocation(line: 168, column: 15, scope: !240)
!345 = !DILocation(line: 168, column: 19, scope: !240)
!346 = !DILocation(line: 169, column: 46, scope: !240)
!347 = !DILocation(line: 169, column: 48, scope: !240)
!348 = !DILocation(line: 169, column: 43, scope: !240)
!349 = !DILocation(line: 169, column: 62, scope: !240)
!350 = !DILocation(line: 169, column: 70, scope: !240)
!351 = !DILocation(line: 169, column: 57, scope: !240)
!352 = !DILocation(line: 169, column: 55, scope: !240)
!353 = !DILocation(line: 169, column: 7, scope: !240)
!354 = !DILocation(line: 169, column: 15, scope: !240)
!355 = !DILocation(line: 169, column: 19, scope: !240)
!356 = !DILocation(line: 171, column: 14, scope: !240)
!357 = !DILocation(line: 171, column: 14, scope: !358)
!358 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 1)
!359 = !DILocation(line: 171, column: 14, scope: !360)
!360 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 2)
!361 = !DILocation(line: 171, column: 14, scope: !362)
!362 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 3)
!363 = !DILocation(line: 171, column: 14, scope: !364)
!364 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 4)
!365 = !DILocation(line: 171, column: 14, scope: !366)
!366 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 5)
!367 = !DILocation(line: 171, column: 14, scope: !368)
!368 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 6)
!369 = !DILocation(line: 171, column: 7, scope: !368)
!370 = !DILocation(line: 174, column: 1, scope: !47)
!371 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu_e", scope: !1, file: !1, line: 177, type: !48, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!372 = !DILocalVariable(name: "nu", arg: 1, scope: !371, file: !1, line: 177, type: !50)
!373 = !DILocation(line: 177, column: 34, scope: !371)
!374 = !DILocalVariable(name: "x", arg: 2, scope: !371, file: !1, line: 177, type: !50)
!375 = !DILocation(line: 177, column: 51, scope: !371)
!376 = !DILocalVariable(name: "result", arg: 3, scope: !371, file: !1, line: 177, type: !52)
!377 = !DILocation(line: 177, column: 70, scope: !371)
!378 = !DILocation(line: 181, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !371, file: !1, line: 181, column: 6)
!380 = !DILocation(line: 181, column: 8, scope: !379)
!381 = !DILocation(line: 181, column: 6, scope: !371)
!382 = !DILocation(line: 182, column: 5, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !1, line: 181, column: 16)
!384 = distinct !{!384, !382}
!385 = !DILocation(line: 182, column: 5, scope: !386)
!386 = !DILexicalBlockFile(scope: !387, file: !1, discriminator: 1)
!387 = distinct !DILexicalBlock(scope: !383, file: !1, line: 182, column: 5)
!388 = distinct !{!388, !389}
!389 = !DILocation(line: 182, column: 5, scope: !387)
!390 = !DILocation(line: 182, column: 5, scope: !391)
!391 = !DILexicalBlockFile(scope: !392, file: !1, discriminator: 2)
!392 = distinct !DILexicalBlock(scope: !387, file: !1, line: 182, column: 5)
!393 = !DILocation(line: 182, column: 5, scope: !394)
!394 = !DILexicalBlockFile(scope: !387, file: !1, discriminator: 3)
!395 = !DILocation(line: 183, column: 3, scope: !383)
!396 = !DILocation(line: 184, column: 12, scope: !397)
!397 = distinct !DILexicalBlock(scope: !379, file: !1, line: 184, column: 12)
!398 = !DILocation(line: 184, column: 15, scope: !397)
!399 = !DILocation(line: 184, column: 12, scope: !379)
!400 = !DILocalVariable(name: "Jstatus", scope: !401, file: !1, line: 185, type: !42)
!401 = distinct !DILexicalBlock(scope: !397, file: !1, line: 184, column: 22)
!402 = !DILocation(line: 185, column: 9, scope: !401)
!403 = !DILocation(line: 185, column: 43, scope: !401)
!404 = !DILocation(line: 185, column: 42, scope: !401)
!405 = !DILocation(line: 185, column: 47, scope: !401)
!406 = !DILocation(line: 185, column: 50, scope: !401)
!407 = !DILocation(line: 185, column: 19, scope: !401)
!408 = !DILocalVariable(name: "Jval", scope: !401, file: !1, line: 186, type: !51)
!409 = !DILocation(line: 186, column: 12, scope: !401)
!410 = !DILocation(line: 186, column: 19, scope: !401)
!411 = !DILocation(line: 186, column: 27, scope: !401)
!412 = !DILocalVariable(name: "Jerr", scope: !401, file: !1, line: 187, type: !51)
!413 = !DILocation(line: 187, column: 12, scope: !401)
!414 = !DILocation(line: 187, column: 19, scope: !401)
!415 = !DILocation(line: 187, column: 27, scope: !401)
!416 = !DILocalVariable(name: "Ystatus", scope: !401, file: !1, line: 188, type: !42)
!417 = !DILocation(line: 188, column: 9, scope: !401)
!418 = !DILocation(line: 188, column: 43, scope: !401)
!419 = !DILocation(line: 188, column: 42, scope: !401)
!420 = !DILocation(line: 188, column: 47, scope: !401)
!421 = !DILocation(line: 188, column: 50, scope: !401)
!422 = !DILocation(line: 188, column: 19, scope: !401)
!423 = !DILocalVariable(name: "Yval", scope: !401, file: !1, line: 189, type: !51)
!424 = !DILocation(line: 189, column: 12, scope: !401)
!425 = !DILocation(line: 189, column: 19, scope: !401)
!426 = !DILocation(line: 189, column: 27, scope: !401)
!427 = !DILocalVariable(name: "Yerr", scope: !401, file: !1, line: 190, type: !51)
!428 = !DILocation(line: 190, column: 12, scope: !401)
!429 = !DILocation(line: 190, column: 19, scope: !401)
!430 = !DILocation(line: 190, column: 27, scope: !401)
!431 = !DILocalVariable(name: "sinstatus", scope: !401, file: !1, line: 192, type: !42)
!432 = !DILocation(line: 192, column: 9, scope: !401)
!433 = !DILocation(line: 192, column: 37, scope: !401)
!434 = !DILocation(line: 192, column: 41, scope: !401)
!435 = !DILocation(line: 192, column: 21, scope: !401)
!436 = !DILocalVariable(name: "s", scope: !401, file: !1, line: 193, type: !51)
!437 = !DILocation(line: 193, column: 12, scope: !401)
!438 = !DILocation(line: 193, column: 16, scope: !401)
!439 = !DILocation(line: 193, column: 24, scope: !401)
!440 = !DILocalVariable(name: "serr", scope: !401, file: !1, line: 194, type: !51)
!441 = !DILocation(line: 194, column: 12, scope: !401)
!442 = !DILocation(line: 194, column: 19, scope: !401)
!443 = !DILocation(line: 194, column: 27, scope: !401)
!444 = !DILocalVariable(name: "cosstatus", scope: !401, file: !1, line: 195, type: !42)
!445 = !DILocation(line: 195, column: 9, scope: !401)
!446 = !DILocation(line: 195, column: 37, scope: !401)
!447 = !DILocation(line: 195, column: 41, scope: !401)
!448 = !DILocation(line: 195, column: 21, scope: !401)
!449 = !DILocalVariable(name: "c", scope: !401, file: !1, line: 196, type: !51)
!450 = !DILocation(line: 196, column: 12, scope: !401)
!451 = !DILocation(line: 196, column: 16, scope: !401)
!452 = !DILocation(line: 196, column: 24, scope: !401)
!453 = !DILocalVariable(name: "cerr", scope: !401, file: !1, line: 197, type: !51)
!454 = !DILocation(line: 197, column: 12, scope: !401)
!455 = !DILocation(line: 197, column: 19, scope: !401)
!456 = !DILocation(line: 197, column: 27, scope: !401)
!457 = !DILocation(line: 198, column: 19, scope: !401)
!458 = !DILocation(line: 198, column: 21, scope: !401)
!459 = !DILocation(line: 198, column: 20, scope: !401)
!460 = !DILocation(line: 198, column: 28, scope: !401)
!461 = !DILocation(line: 198, column: 30, scope: !401)
!462 = !DILocation(line: 198, column: 29, scope: !401)
!463 = !DILocation(line: 198, column: 26, scope: !401)
!464 = !DILocation(line: 198, column: 5, scope: !401)
!465 = !DILocation(line: 198, column: 13, scope: !401)
!466 = !DILocation(line: 198, column: 17, scope: !401)
!467 = !DILocation(line: 199, column: 24, scope: !401)
!468 = !DILocation(line: 199, column: 26, scope: !401)
!469 = !DILocation(line: 199, column: 25, scope: !401)
!470 = !DILocation(line: 199, column: 19, scope: !401)
!471 = !DILocation(line: 199, column: 39, scope: !401)
!472 = !DILocation(line: 199, column: 41, scope: !401)
!473 = !DILocation(line: 199, column: 40, scope: !401)
!474 = !DILocation(line: 199, column: 34, scope: !475)
!475 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 1)
!476 = !DILocation(line: 199, column: 32, scope: !401)
!477 = !DILocation(line: 199, column: 54, scope: !401)
!478 = !DILocation(line: 199, column: 59, scope: !401)
!479 = !DILocation(line: 199, column: 58, scope: !401)
!480 = !DILocation(line: 199, column: 49, scope: !481)
!481 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 2)
!482 = !DILocation(line: 199, column: 47, scope: !401)
!483 = !DILocation(line: 199, column: 72, scope: !401)
!484 = !DILocation(line: 199, column: 77, scope: !401)
!485 = !DILocation(line: 199, column: 76, scope: !401)
!486 = !DILocation(line: 199, column: 67, scope: !487)
!487 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 3)
!488 = !DILocation(line: 199, column: 65, scope: !401)
!489 = !DILocation(line: 199, column: 5, scope: !401)
!490 = !DILocation(line: 199, column: 13, scope: !401)
!491 = !DILocation(line: 199, column: 17, scope: !401)
!492 = !DILocation(line: 200, column: 12, scope: !401)
!493 = !DILocation(line: 200, column: 12, scope: !475)
!494 = !DILocation(line: 200, column: 12, scope: !481)
!495 = !DILocation(line: 200, column: 12, scope: !487)
!496 = !DILocation(line: 200, column: 12, scope: !497)
!497 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 4)
!498 = !DILocation(line: 200, column: 12, scope: !499)
!499 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 5)
!500 = !DILocation(line: 200, column: 12, scope: !501)
!501 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 6)
!502 = !DILocation(line: 200, column: 12, scope: !503)
!503 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 7)
!504 = !DILocation(line: 200, column: 12, scope: !505)
!505 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 8)
!506 = !DILocation(line: 200, column: 12, scope: !507)
!507 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 9)
!508 = !DILocation(line: 200, column: 12, scope: !509)
!509 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 10)
!510 = !DILocation(line: 200, column: 12, scope: !511)
!511 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 11)
!512 = !DILocation(line: 200, column: 12, scope: !513)
!513 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 12)
!514 = !DILocation(line: 200, column: 5, scope: !513)
!515 = !DILocation(line: 202, column: 38, scope: !397)
!516 = !DILocation(line: 202, column: 42, scope: !397)
!517 = !DILocation(line: 202, column: 45, scope: !397)
!518 = !DILocation(line: 202, column: 15, scope: !397)
!519 = !DILocation(line: 202, column: 8, scope: !397)
!520 = !DILocation(line: 203, column: 1, scope: !371)
!521 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu", scope: !1, file: !1, line: 209, type: !522, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!522 = !DISubroutineType(types: !523)
!523 = !{!51, !50, !50}
!524 = !DILocalVariable(name: "nu", arg: 1, scope: !521, file: !1, line: 209, type: !50)
!525 = !DILocation(line: 209, column: 39, scope: !521)
!526 = !DILocalVariable(name: "x", arg: 2, scope: !521, file: !1, line: 209, type: !50)
!527 = !DILocation(line: 209, column: 56, scope: !521)
!528 = !DILocalVariable(name: "result", scope: !521, file: !1, line: 211, type: !53)
!529 = !DILocation(line: 211, column: 3, scope: !521)
!530 = !DILocalVariable(name: "status", scope: !521, file: !1, line: 211, type: !42)
!531 = !DILocation(line: 211, column: 3, scope: !532)
!532 = distinct !DILexicalBlock(scope: !521, file: !1, line: 211, column: 3)
!533 = !DILocation(line: 211, column: 3, scope: !534)
!534 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 1)
!535 = distinct !DILexicalBlock(scope: !532, file: !1, line: 211, column: 3)
!536 = distinct !{!536, !537}
!537 = !DILocation(line: 211, column: 3, scope: !535)
!538 = !DILocation(line: 211, column: 3, scope: !539)
!539 = !DILexicalBlockFile(scope: !540, file: !1, discriminator: 2)
!540 = distinct !DILexicalBlock(scope: !535, file: !1, line: 211, column: 3)
!541 = !DILocation(line: 211, column: 3, scope: !542)
!542 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 3)
!543 = !DILocation(line: 211, column: 3, scope: !544)
!544 = !DILexicalBlockFile(scope: !521, file: !1, discriminator: 4)
!545 = !DILocation(line: 212, column: 1, scope: !521)
