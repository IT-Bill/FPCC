; ModuleID = 'mathieu_charv.c'
source_filename = "mathieu_charv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, double*, double*, double*, double*, double*, double*, double*, %struct.gsl_vector*, %struct.gsl_matrix*, %struct.gsl_eigen_symmv_workspace* }
%struct.gsl_vector = type { i64, i64, double*, %struct.gsl_block_struct*, i32 }
%struct.gsl_block_struct = type { i64, double* }
%struct.gsl_matrix = type { i64, i64, i64, double*, %struct.gsl_block_struct*, i32 }
%struct.gsl_eigen_symmv_workspace = type { i64, double*, double*, double*, double* }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct._gsl_vector_view = type { %struct.gsl_vector }

@.str = private unnamed_addr constant [35 x i8] c"Wrong characteristic Mathieu value\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"mathieu_charv.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Characteristic value undefined for order 0\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid range [order_min,order_max]\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Internal error in tridiagonal Mathieu matrix\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"gsl_sf_mathieu_a_e(order, qq, &result)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"gsl_sf_mathieu_b_e(order, qq, &result)\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Undefined order for Mathieu function\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_a_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !56 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !67, metadata !68), !dbg !69
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !70, metadata !68), !dbg !71
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !72, metadata !68), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %8, metadata !74, metadata !68), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %9, metadata !76, metadata !68), !dbg !77
  store i32 50, i32* %9, align 4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %10, metadata !78, metadata !68), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %11, metadata !80, metadata !68), !dbg !81
  store i32 0, i32* %11, align 4, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %12, metadata !82, metadata !68), !dbg !83
  store i32 1000, i32* %12, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %13, metadata !84, metadata !68), !dbg !85
  store i32 0, i32* %13, align 4, !dbg !85
  call void @llvm.dbg.declare(metadata double* %14, metadata !86, metadata !68), !dbg !87
  call void @llvm.dbg.declare(metadata double* %15, metadata !88, metadata !68), !dbg !89
  call void @llvm.dbg.declare(metadata double* %16, metadata !90, metadata !68), !dbg !91
  call void @llvm.dbg.declare(metadata double* %17, metadata !92, metadata !68), !dbg !93
  call void @llvm.dbg.declare(metadata double* %18, metadata !94, metadata !68), !dbg !95
  call void @llvm.dbg.declare(metadata double* %19, metadata !96, metadata !68), !dbg !97
  call void @llvm.dbg.declare(metadata double* %20, metadata !98, metadata !68), !dbg !99
  store double 2.500000e-02, double* %20, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata double* %21, metadata !100, metadata !68), !dbg !101
  call void @llvm.dbg.declare(metadata double* %22, metadata !102, metadata !68), !dbg !103
  store i32 0, i32* %8, align 4, !dbg !104
  %23 = load i32, i32* %5, align 4, !dbg !105
  %24 = srem i32 %23, 2, !dbg !107
  %25 = icmp ne i32 %24, 0, !dbg !108
  br i1 %25, label %26, label %27, !dbg !109

; <label>:26:                                     ; preds = %3
  store i32 1, i32* %8, align 4, !dbg !110
  br label %27, !dbg !111

; <label>:27:                                     ; preds = %26, %3
  %28 = load double, double* %6, align 8, !dbg !112
  %29 = fcmp oeq double %28, 0.000000e+00, !dbg !114
  br i1 %29, label %30, label %39, !dbg !115

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %5, align 4, !dbg !116
  %32 = load i32, i32* %5, align 4, !dbg !118
  %33 = mul nsw i32 %31, %32, !dbg !119
  %34 = sitofp i32 %33 to double, !dbg !116
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !120
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !121
  store double %34, double* %36, align 8, !dbg !122
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !123
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !124
  store double 0.000000e+00, double* %38, align 8, !dbg !125
  store i32 0, i32* %4, align 4, !dbg !126
  br label %225, !dbg !126

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %5, align 4, !dbg !127
  %41 = icmp slt i32 %40, 0, !dbg !129
  br i1 %41, label %42, label %45, !dbg !130

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %5, align 4, !dbg !131
  %44 = mul nsw i32 %43, -1, !dbg !131
  store i32 %44, i32* %5, align 4, !dbg !131
  br label %45, !dbg !132

; <label>:45:                                     ; preds = %42, %39
  %46 = load double, double* %6, align 8, !dbg !133
  %47 = fcmp olt double %46, 0.000000e+00, !dbg !135
  br i1 %47, label %48, label %63, !dbg !136

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %8, align 4, !dbg !137
  %50 = icmp eq i32 %49, 0, !dbg !140
  br i1 %50, label %51, label %57, !dbg !141

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %5, align 4, !dbg !142
  %53 = load double, double* %6, align 8, !dbg !143
  %54 = fsub double -0.000000e+00, %53, !dbg !144
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !145
  %56 = call i32 @gsl_sf_mathieu_a_e(i32 %52, double %54, %struct.gsl_sf_result_struct* %55), !dbg !146
  store i32 %56, i32* %4, align 4, !dbg !147
  br label %225, !dbg !147

; <label>:57:                                     ; preds = %48
  %58 = load i32, i32* %5, align 4, !dbg !148
  %59 = load double, double* %6, align 8, !dbg !149
  %60 = fsub double -0.000000e+00, %59, !dbg !150
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !151
  %62 = call i32 @gsl_sf_mathieu_b_e(i32 %58, double %60, %struct.gsl_sf_result_struct* %61), !dbg !152
  store i32 %62, i32* %4, align 4, !dbg !153
  br label %225, !dbg !153

; <label>:63:                                     ; preds = %45
  %64 = load i32, i32* %5, align 4, !dbg !154
  %65 = load double, double* %6, align 8, !dbg !155
  %66 = call double @approx_c(i32 %64, double %65), !dbg !156
  store double %66, double* %22, align 8, !dbg !157
  %67 = load double, double* %22, align 8, !dbg !158
  store double %67, double* %21, align 8, !dbg !159
  store double %67, double* %19, align 8, !dbg !160
  br label %68, !dbg !161

; <label>:68:                                     ; preds = %202, %63
  %69 = load i32, i32* %11, align 4, !dbg !162
  %70 = load i32, i32* %12, align 4, !dbg !164
  %71 = icmp slt i32 %69, %70, !dbg !165
  br i1 %71, label %72, label %214, !dbg !166

; <label>:72:                                     ; preds = %68
  %73 = load double, double* %21, align 8, !dbg !167
  %74 = fadd double %73, 1.000000e-03, !dbg !169
  store double %74, double* %14, align 8, !dbg !170
  store i32 0, i32* %10, align 4, !dbg !171
  %75 = load i32, i32* %8, align 4, !dbg !172
  %76 = icmp eq i32 %75, 0, !dbg !174
  br i1 %76, label %77, label %83, !dbg !175

; <label>:77:                                     ; preds = %72
  %78 = load i32, i32* %5, align 4, !dbg !176
  %79 = load double, double* %6, align 8, !dbg !177
  %80 = load double, double* %14, align 8, !dbg !178
  %81 = load i32, i32* %9, align 4, !dbg !179
  %82 = call double @ceer(i32 %78, double %79, double %80, i32 %81), !dbg !180
  store double %82, double* %17, align 8, !dbg !181
  br label %89, !dbg !182

; <label>:83:                                     ; preds = %72
  %84 = load i32, i32* %5, align 4, !dbg !183
  %85 = load double, double* %6, align 8, !dbg !184
  %86 = load double, double* %14, align 8, !dbg !185
  %87 = load i32, i32* %9, align 4, !dbg !186
  %88 = call double @ceor(i32 %84, double %85, double %86, i32 %87), !dbg !187
  store double %88, double* %17, align 8, !dbg !188
  br label %89

; <label>:89:                                     ; preds = %83, %77
  br label %90, !dbg !189

; <label>:90:                                     ; preds = %142, %89
  %91 = load i32, i32* %8, align 4, !dbg !190
  %92 = icmp eq i32 %91, 0, !dbg !195
  br i1 %92, label %93, label %99, !dbg !196

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* %5, align 4, !dbg !197
  %95 = load double, double* %6, align 8, !dbg !198
  %96 = load double, double* %21, align 8, !dbg !199
  %97 = load i32, i32* %9, align 4, !dbg !200
  %98 = call double @ceer(i32 %94, double %95, double %96, i32 %97), !dbg !201
  store double %98, double* %16, align 8, !dbg !202
  br label %105, !dbg !203

; <label>:99:                                     ; preds = %90
  %100 = load i32, i32* %5, align 4, !dbg !204
  %101 = load double, double* %6, align 8, !dbg !205
  %102 = load double, double* %21, align 8, !dbg !206
  %103 = load i32, i32* %9, align 4, !dbg !207
  %104 = call double @ceor(i32 %100, double %101, double %102, i32 %103), !dbg !208
  store double %104, double* %16, align 8, !dbg !209
  br label %105

; <label>:105:                                    ; preds = %99, %93
  %106 = load double, double* %14, align 8, !dbg !210
  store double %106, double* %15, align 8, !dbg !211
  %107 = load double, double* %21, align 8, !dbg !212
  store double %107, double* %14, align 8, !dbg !213
  %108 = load double, double* %16, align 8, !dbg !214
  %109 = load double, double* %17, align 8, !dbg !216
  %110 = fcmp oeq double %108, %109, !dbg !217
  br i1 %110, label %111, label %114, !dbg !218

; <label>:111:                                    ; preds = %105
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !219
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !221
  store double 0x3CB0000000000000, double* %113, align 8, !dbg !222
  br label %146, !dbg !223

; <label>:114:                                    ; preds = %105
  %115 = load double, double* %21, align 8, !dbg !224
  %116 = load double, double* %15, align 8, !dbg !225
  %117 = fsub double %115, %116, !dbg !226
  %118 = load double, double* %16, align 8, !dbg !227
  %119 = load double, double* %17, align 8, !dbg !228
  %120 = fsub double %118, %119, !dbg !229
  %121 = fdiv double %117, %120, !dbg !230
  %122 = load double, double* %16, align 8, !dbg !231
  %123 = fmul double %121, %122, !dbg !232
  %124 = load double, double* %21, align 8, !dbg !233
  %125 = fsub double %124, %123, !dbg !233
  store double %125, double* %21, align 8, !dbg !233
  %126 = load double, double* %21, align 8, !dbg !234
  %127 = load double, double* %15, align 8, !dbg !235
  %128 = fsub double %126, %127, !dbg !236
  %129 = call double @fabs(double %128) #1, !dbg !237
  store double %129, double* %18, align 8, !dbg !238
  %130 = load double, double* %18, align 8, !dbg !239
  %131 = fcmp olt double %130, 0x3CB0000000000000, !dbg !241
  br i1 %131, label %132, label %135, !dbg !242

; <label>:132:                                    ; preds = %114
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !243
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 1, !dbg !245
  store double 0x3CB0000000000000, double* %134, align 8, !dbg !246
  br label %146, !dbg !247

; <label>:135:                                    ; preds = %114
  %136 = load i32, i32* %10, align 4, !dbg !248
  %137 = icmp sgt i32 %136, 40, !dbg !250
  br i1 %137, label %138, label %142, !dbg !251

; <label>:138:                                    ; preds = %135
  %139 = load double, double* %18, align 8, !dbg !252
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !254
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 1, !dbg !255
  store double %139, double* %141, align 8, !dbg !256
  br label %146, !dbg !257

; <label>:142:                                    ; preds = %135
  %143 = load double, double* %16, align 8, !dbg !258
  store double %143, double* %17, align 8, !dbg !259
  %144 = load i32, i32* %10, align 4, !dbg !260
  %145 = add nsw i32 %144, 1, !dbg !260
  store i32 %145, i32* %10, align 4, !dbg !260
  br label %90, !dbg !261, !llvm.loop !263

; <label>:146:                                    ; preds = %138, %132, %111
  %147 = load double, double* %21, align 8, !dbg !264
  %148 = load double, double* %19, align 8, !dbg !266
  %149 = fsub double %147, %148, !dbg !267
  %150 = call double @fabs(double %149) #1, !dbg !268
  %151 = load i32, i32* %5, align 4, !dbg !269
  %152 = sitofp i32 %151 to double, !dbg !269
  %153 = fmul double 1.000000e-02, %152, !dbg !270
  %154 = load double, double* %19, align 8, !dbg !271
  %155 = call double @fabs(double %154) #1, !dbg !272
  %156 = fmul double %153, %155, !dbg !274
  %157 = fadd double 3.000000e+00, %156, !dbg !275
  %158 = fcmp ogt double %150, %157, !dbg !276
  br i1 %158, label %171, label %159, !dbg !277

; <label>:159:                                    ; preds = %146
  %160 = load i32, i32* %5, align 4, !dbg !278
  %161 = icmp sgt i32 %160, 10, !dbg !279
  br i1 %161, label %162, label %213, !dbg !280

; <label>:162:                                    ; preds = %159
  %163 = load double, double* %21, align 8, !dbg !281
  %164 = load double, double* %19, align 8, !dbg !283
  %165 = fsub double %163, %164, !dbg !284
  %166 = call double @fabs(double %165) #1, !dbg !285
  %167 = load i32, i32* %5, align 4, !dbg !286
  %168 = sitofp i32 %167 to double, !dbg !286
  %169 = fmul double 1.500000e+00, %168, !dbg !287
  %170 = fcmp ogt double %166, %169, !dbg !288
  br i1 %170, label %171, label %213, !dbg !289

; <label>:171:                                    ; preds = %162, %146
  %172 = load i32, i32* %11, align 4, !dbg !291
  %173 = add nsw i32 %172, 1, !dbg !291
  store i32 %173, i32* %11, align 4, !dbg !291
  %174 = load i32, i32* %11, align 4, !dbg !293
  %175 = load i32, i32* %12, align 4, !dbg !295
  %176 = icmp eq i32 %174, %175, !dbg !296
  br i1 %176, label %177, label %184, !dbg !297

; <label>:177:                                    ; preds = %171
  %178 = load double, double* %21, align 8, !dbg !298
  %179 = load double, double* %19, align 8, !dbg !300
  %180 = fsub double %178, %179, !dbg !301
  %181 = call double @fabs(double %180) #1, !dbg !302
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !303
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %182, i32 0, i32 1, !dbg !304
  store double %181, double* %183, align 8, !dbg !305
  br label %214, !dbg !306

; <label>:184:                                    ; preds = %171
  %185 = load double, double* %21, align 8, !dbg !307
  %186 = load double, double* %19, align 8, !dbg !309
  %187 = fcmp ogt double %185, %186, !dbg !310
  br i1 %187, label %188, label %195, !dbg !311

; <label>:188:                                    ; preds = %184
  %189 = load i32, i32* %13, align 4, !dbg !312
  %190 = icmp eq i32 %189, 1, !dbg !315
  br i1 %190, label %191, label %194, !dbg !316

; <label>:191:                                    ; preds = %188
  %192 = load double, double* %20, align 8, !dbg !317
  %193 = fdiv double %192, 2.000000e+00, !dbg !317
  store double %193, double* %20, align 8, !dbg !317
  br label %194, !dbg !318

; <label>:194:                                    ; preds = %191, %188
  store i32 -1, i32* %13, align 4, !dbg !319
  br label %202, !dbg !320

; <label>:195:                                    ; preds = %184
  %196 = load i32, i32* %13, align 4, !dbg !321
  %197 = icmp eq i32 %196, -1, !dbg !324
  br i1 %197, label %198, label %201, !dbg !325

; <label>:198:                                    ; preds = %195
  %199 = load double, double* %20, align 8, !dbg !326
  %200 = fdiv double %199, 2.000000e+00, !dbg !326
  store double %200, double* %20, align 8, !dbg !326
  br label %201, !dbg !327

; <label>:201:                                    ; preds = %198, %195
  store i32 1, i32* %13, align 4, !dbg !328
  br label %202

; <label>:202:                                    ; preds = %201, %194
  %203 = load i32, i32* %13, align 4, !dbg !329
  %204 = sitofp i32 %203 to double, !dbg !329
  %205 = load double, double* %20, align 8, !dbg !330
  %206 = fmul double %204, %205, !dbg !331
  %207 = load i32, i32* %11, align 4, !dbg !332
  %208 = sitofp i32 %207 to double, !dbg !332
  %209 = fmul double %206, %208, !dbg !333
  %210 = load double, double* %22, align 8, !dbg !334
  %211 = fadd double %210, %209, !dbg !334
  store double %211, double* %22, align 8, !dbg !334
  %212 = load double, double* %22, align 8, !dbg !335
  store double %212, double* %21, align 8, !dbg !336
  br label %68, !dbg !337, !llvm.loop !338

; <label>:213:                                    ; preds = %162, %159
  br label %214, !dbg !339

; <label>:214:                                    ; preds = %213, %177, %68
  %215 = load double, double* %21, align 8, !dbg !340
  %216 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !341
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %216, i32 0, i32 0, !dbg !342
  store double %215, double* %217, align 8, !dbg !343
  %218 = load i32, i32* %11, align 4, !dbg !344
  %219 = load i32, i32* %12, align 4, !dbg !346
  %220 = icmp eq i32 %218, %219, !dbg !347
  br i1 %220, label %221, label %224, !dbg !348

; <label>:221:                                    ; preds = %214
  br label %222, !dbg !349, !llvm.loop !351

; <label>:222:                                    ; preds = %221
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 489, i32 5), !dbg !352
  store i32 5, i32* %4, align 4, !dbg !352
  br label %225, !dbg !352
                                                  ; No predecessors!
  br label %224, !dbg !355

; <label>:224:                                    ; preds = %223, %214
  store i32 0, i32* %4, align 4, !dbg !356
  br label %225, !dbg !356

; <label>:225:                                    ; preds = %224, %222, %57, %51, %30
  %226 = load i32, i32* %4, align 4, !dbg !357
  ret i32 %226, !dbg !357
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_b_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !358 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !359, metadata !68), !dbg !360
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !361, metadata !68), !dbg !362
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !363, metadata !68), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %8, metadata !365, metadata !68), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %9, metadata !367, metadata !68), !dbg !368
  store i32 50, i32* %9, align 4, !dbg !368
  call void @llvm.dbg.declare(metadata i32* %10, metadata !369, metadata !68), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %11, metadata !371, metadata !68), !dbg !372
  store i32 0, i32* %11, align 4, !dbg !372
  call void @llvm.dbg.declare(metadata i32* %12, metadata !373, metadata !68), !dbg !374
  store i32 1000, i32* %12, align 4, !dbg !374
  call void @llvm.dbg.declare(metadata i32* %13, metadata !375, metadata !68), !dbg !376
  store i32 0, i32* %13, align 4, !dbg !376
  call void @llvm.dbg.declare(metadata double* %14, metadata !377, metadata !68), !dbg !378
  call void @llvm.dbg.declare(metadata double* %15, metadata !379, metadata !68), !dbg !380
  call void @llvm.dbg.declare(metadata double* %16, metadata !381, metadata !68), !dbg !382
  call void @llvm.dbg.declare(metadata double* %17, metadata !383, metadata !68), !dbg !384
  call void @llvm.dbg.declare(metadata double* %18, metadata !385, metadata !68), !dbg !386
  call void @llvm.dbg.declare(metadata double* %19, metadata !387, metadata !68), !dbg !388
  call void @llvm.dbg.declare(metadata double* %20, metadata !389, metadata !68), !dbg !390
  store double 2.500000e-02, double* %20, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata double* %21, metadata !391, metadata !68), !dbg !392
  call void @llvm.dbg.declare(metadata double* %22, metadata !393, metadata !68), !dbg !394
  store i32 0, i32* %8, align 4, !dbg !395
  %23 = load i32, i32* %5, align 4, !dbg !396
  %24 = srem i32 %23, 2, !dbg !398
  %25 = icmp ne i32 %24, 0, !dbg !399
  br i1 %25, label %26, label %27, !dbg !400

; <label>:26:                                     ; preds = %3
  store i32 1, i32* %8, align 4, !dbg !401
  br label %27, !dbg !402

; <label>:27:                                     ; preds = %26, %3
  %28 = load i32, i32* %5, align 4, !dbg !403
  %29 = icmp eq i32 %28, 0, !dbg !405
  br i1 %29, label %30, label %33, !dbg !406

; <label>:30:                                     ; preds = %27
  br label %31, !dbg !407, !llvm.loop !409

; <label>:31:                                     ; preds = %30
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 511, i32 5), !dbg !410
  store i32 5, i32* %4, align 4, !dbg !410
  br label %231, !dbg !410
                                                  ; No predecessors!
  br label %33, !dbg !413

; <label>:33:                                     ; preds = %32, %27
  %34 = load double, double* %6, align 8, !dbg !414
  %35 = fcmp oeq double %34, 0.000000e+00, !dbg !416
  br i1 %35, label %36, label %45, !dbg !417

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %5, align 4, !dbg !418
  %38 = load i32, i32* %5, align 4, !dbg !420
  %39 = mul nsw i32 %37, %38, !dbg !421
  %40 = sitofp i32 %39 to double, !dbg !418
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !422
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !423
  store double %40, double* %42, align 8, !dbg !424
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !425
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !426
  store double 0.000000e+00, double* %44, align 8, !dbg !427
  store i32 0, i32* %4, align 4, !dbg !428
  br label %231, !dbg !428

; <label>:45:                                     ; preds = %33
  %46 = load i32, i32* %5, align 4, !dbg !429
  %47 = icmp slt i32 %46, 0, !dbg !431
  br i1 %47, label %48, label %51, !dbg !432

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %5, align 4, !dbg !433
  %50 = mul nsw i32 %49, -1, !dbg !433
  store i32 %50, i32* %5, align 4, !dbg !433
  br label %51, !dbg !434

; <label>:51:                                     ; preds = %48, %45
  %52 = load double, double* %6, align 8, !dbg !435
  %53 = fcmp olt double %52, 0.000000e+00, !dbg !437
  br i1 %53, label %54, label %69, !dbg !438

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %8, align 4, !dbg !439
  %56 = icmp eq i32 %55, 0, !dbg !442
  br i1 %56, label %57, label %63, !dbg !443

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %5, align 4, !dbg !444
  %59 = load double, double* %6, align 8, !dbg !445
  %60 = fsub double -0.000000e+00, %59, !dbg !446
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !447
  %62 = call i32 @gsl_sf_mathieu_b_e(i32 %58, double %60, %struct.gsl_sf_result_struct* %61), !dbg !448
  store i32 %62, i32* %4, align 4, !dbg !449
  br label %231, !dbg !449

; <label>:63:                                     ; preds = %54
  %64 = load i32, i32* %5, align 4, !dbg !450
  %65 = load double, double* %6, align 8, !dbg !451
  %66 = fsub double -0.000000e+00, %65, !dbg !452
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !453
  %68 = call i32 @gsl_sf_mathieu_a_e(i32 %64, double %66, %struct.gsl_sf_result_struct* %67), !dbg !454
  store i32 %68, i32* %4, align 4, !dbg !455
  br label %231, !dbg !455

; <label>:69:                                     ; preds = %51
  %70 = load i32, i32* %5, align 4, !dbg !456
  %71 = load double, double* %6, align 8, !dbg !457
  %72 = call double @approx_s(i32 %70, double %71), !dbg !458
  store double %72, double* %22, align 8, !dbg !459
  %73 = load double, double* %22, align 8, !dbg !460
  store double %73, double* %21, align 8, !dbg !461
  store double %73, double* %19, align 8, !dbg !462
  br label %74, !dbg !463

; <label>:74:                                     ; preds = %208, %69
  %75 = load i32, i32* %11, align 4, !dbg !464
  %76 = load i32, i32* %12, align 4, !dbg !466
  %77 = icmp slt i32 %75, %76, !dbg !467
  br i1 %77, label %78, label %220, !dbg !468

; <label>:78:                                     ; preds = %74
  %79 = load double, double* %21, align 8, !dbg !469
  %80 = fadd double %79, 1.000000e-03, !dbg !471
  store double %80, double* %14, align 8, !dbg !472
  store i32 0, i32* %10, align 4, !dbg !473
  %81 = load i32, i32* %8, align 4, !dbg !474
  %82 = icmp eq i32 %81, 0, !dbg !476
  br i1 %82, label %83, label %89, !dbg !477

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %5, align 4, !dbg !478
  %85 = load double, double* %6, align 8, !dbg !479
  %86 = load double, double* %14, align 8, !dbg !480
  %87 = load i32, i32* %9, align 4, !dbg !481
  %88 = call double @seer(i32 %84, double %85, double %86, i32 %87), !dbg !482
  store double %88, double* %17, align 8, !dbg !483
  br label %95, !dbg !484

; <label>:89:                                     ; preds = %78
  %90 = load i32, i32* %5, align 4, !dbg !485
  %91 = load double, double* %6, align 8, !dbg !486
  %92 = load double, double* %14, align 8, !dbg !487
  %93 = load i32, i32* %9, align 4, !dbg !488
  %94 = call double @seor(i32 %90, double %91, double %92, i32 %93), !dbg !489
  store double %94, double* %17, align 8, !dbg !490
  br label %95

; <label>:95:                                     ; preds = %89, %83
  br label %96, !dbg !491

; <label>:96:                                     ; preds = %148, %95
  %97 = load i32, i32* %8, align 4, !dbg !492
  %98 = icmp eq i32 %97, 0, !dbg !497
  br i1 %98, label %99, label %105, !dbg !498

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %5, align 4, !dbg !499
  %101 = load double, double* %6, align 8, !dbg !500
  %102 = load double, double* %21, align 8, !dbg !501
  %103 = load i32, i32* %9, align 4, !dbg !502
  %104 = call double @seer(i32 %100, double %101, double %102, i32 %103), !dbg !503
  store double %104, double* %16, align 8, !dbg !504
  br label %111, !dbg !505

; <label>:105:                                    ; preds = %96
  %106 = load i32, i32* %5, align 4, !dbg !506
  %107 = load double, double* %6, align 8, !dbg !507
  %108 = load double, double* %21, align 8, !dbg !508
  %109 = load i32, i32* %9, align 4, !dbg !509
  %110 = call double @seor(i32 %106, double %107, double %108, i32 %109), !dbg !510
  store double %110, double* %16, align 8, !dbg !511
  br label %111

; <label>:111:                                    ; preds = %105, %99
  %112 = load double, double* %14, align 8, !dbg !512
  store double %112, double* %15, align 8, !dbg !513
  %113 = load double, double* %21, align 8, !dbg !514
  store double %113, double* %14, align 8, !dbg !515
  %114 = load double, double* %16, align 8, !dbg !516
  %115 = load double, double* %17, align 8, !dbg !518
  %116 = fcmp oeq double %114, %115, !dbg !519
  br i1 %116, label %117, label %120, !dbg !520

; <label>:117:                                    ; preds = %111
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !521
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !523
  store double 0x3CB0000000000000, double* %119, align 8, !dbg !524
  br label %152, !dbg !525

; <label>:120:                                    ; preds = %111
  %121 = load double, double* %21, align 8, !dbg !526
  %122 = load double, double* %15, align 8, !dbg !527
  %123 = fsub double %121, %122, !dbg !528
  %124 = load double, double* %16, align 8, !dbg !529
  %125 = load double, double* %17, align 8, !dbg !530
  %126 = fsub double %124, %125, !dbg !531
  %127 = fdiv double %123, %126, !dbg !532
  %128 = load double, double* %16, align 8, !dbg !533
  %129 = fmul double %127, %128, !dbg !534
  %130 = load double, double* %21, align 8, !dbg !535
  %131 = fsub double %130, %129, !dbg !535
  store double %131, double* %21, align 8, !dbg !535
  %132 = load double, double* %21, align 8, !dbg !536
  %133 = load double, double* %15, align 8, !dbg !537
  %134 = fsub double %132, %133, !dbg !538
  %135 = call double @fabs(double %134) #1, !dbg !539
  store double %135, double* %18, align 8, !dbg !540
  %136 = load double, double* %18, align 8, !dbg !541
  %137 = fcmp olt double %136, 1.000000e-18, !dbg !543
  br i1 %137, label %138, label %141, !dbg !544

; <label>:138:                                    ; preds = %120
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !545
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 1, !dbg !547
  store double 0x3CB0000000000000, double* %140, align 8, !dbg !548
  br label %152, !dbg !549

; <label>:141:                                    ; preds = %120
  %142 = load i32, i32* %10, align 4, !dbg !550
  %143 = icmp sgt i32 %142, 40, !dbg !552
  br i1 %143, label %144, label %148, !dbg !553

; <label>:144:                                    ; preds = %141
  %145 = load double, double* %18, align 8, !dbg !554
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !556
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 1, !dbg !557
  store double %145, double* %147, align 8, !dbg !558
  br label %152, !dbg !559

; <label>:148:                                    ; preds = %141
  %149 = load double, double* %16, align 8, !dbg !560
  store double %149, double* %17, align 8, !dbg !561
  %150 = load i32, i32* %10, align 4, !dbg !562
  %151 = add nsw i32 %150, 1, !dbg !562
  store i32 %151, i32* %10, align 4, !dbg !562
  br label %96, !dbg !563, !llvm.loop !565

; <label>:152:                                    ; preds = %144, %138, %117
  %153 = load double, double* %21, align 8, !dbg !566
  %154 = load double, double* %19, align 8, !dbg !568
  %155 = fsub double %153, %154, !dbg !569
  %156 = call double @fabs(double %155) #1, !dbg !570
  %157 = load i32, i32* %5, align 4, !dbg !571
  %158 = sitofp i32 %157 to double, !dbg !571
  %159 = fmul double 1.000000e-02, %158, !dbg !572
  %160 = load double, double* %19, align 8, !dbg !573
  %161 = call double @fabs(double %160) #1, !dbg !574
  %162 = fmul double %159, %161, !dbg !576
  %163 = fadd double 3.000000e+00, %162, !dbg !577
  %164 = fcmp ogt double %156, %163, !dbg !578
  br i1 %164, label %177, label %165, !dbg !579

; <label>:165:                                    ; preds = %152
  %166 = load i32, i32* %5, align 4, !dbg !580
  %167 = icmp sgt i32 %166, 10, !dbg !581
  br i1 %167, label %168, label %219, !dbg !582

; <label>:168:                                    ; preds = %165
  %169 = load double, double* %21, align 8, !dbg !583
  %170 = load double, double* %19, align 8, !dbg !585
  %171 = fsub double %169, %170, !dbg !586
  %172 = call double @fabs(double %171) #1, !dbg !587
  %173 = load i32, i32* %5, align 4, !dbg !588
  %174 = sitofp i32 %173 to double, !dbg !588
  %175 = fmul double 1.500000e+00, %174, !dbg !589
  %176 = fcmp ogt double %172, %175, !dbg !590
  br i1 %176, label %177, label %219, !dbg !591

; <label>:177:                                    ; preds = %168, %152
  %178 = load i32, i32* %11, align 4, !dbg !593
  %179 = add nsw i32 %178, 1, !dbg !593
  store i32 %179, i32* %11, align 4, !dbg !593
  %180 = load i32, i32* %11, align 4, !dbg !595
  %181 = load i32, i32* %12, align 4, !dbg !597
  %182 = icmp eq i32 %180, %181, !dbg !598
  br i1 %182, label %183, label %190, !dbg !599

; <label>:183:                                    ; preds = %177
  %184 = load double, double* %21, align 8, !dbg !600
  %185 = load double, double* %19, align 8, !dbg !602
  %186 = fsub double %184, %185, !dbg !603
  %187 = call double @fabs(double %186) #1, !dbg !604
  %188 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !605
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %188, i32 0, i32 1, !dbg !606
  store double %187, double* %189, align 8, !dbg !607
  br label %220, !dbg !608

; <label>:190:                                    ; preds = %177
  %191 = load double, double* %21, align 8, !dbg !609
  %192 = load double, double* %19, align 8, !dbg !611
  %193 = fcmp ogt double %191, %192, !dbg !612
  br i1 %193, label %194, label %201, !dbg !613

; <label>:194:                                    ; preds = %190
  %195 = load i32, i32* %13, align 4, !dbg !614
  %196 = icmp eq i32 %195, 1, !dbg !617
  br i1 %196, label %197, label %200, !dbg !618

; <label>:197:                                    ; preds = %194
  %198 = load double, double* %20, align 8, !dbg !619
  %199 = fdiv double %198, 2.000000e+00, !dbg !619
  store double %199, double* %20, align 8, !dbg !619
  br label %200, !dbg !620

; <label>:200:                                    ; preds = %197, %194
  store i32 -1, i32* %13, align 4, !dbg !621
  br label %208, !dbg !622

; <label>:201:                                    ; preds = %190
  %202 = load i32, i32* %13, align 4, !dbg !623
  %203 = icmp eq i32 %202, -1, !dbg !626
  br i1 %203, label %204, label %207, !dbg !627

; <label>:204:                                    ; preds = %201
  %205 = load double, double* %20, align 8, !dbg !628
  %206 = fdiv double %205, 2.000000e+00, !dbg !628
  store double %206, double* %20, align 8, !dbg !628
  br label %207, !dbg !629

; <label>:207:                                    ; preds = %204, %201
  store i32 1, i32* %13, align 4, !dbg !630
  br label %208

; <label>:208:                                    ; preds = %207, %200
  %209 = load i32, i32* %13, align 4, !dbg !631
  %210 = sitofp i32 %209 to double, !dbg !631
  %211 = load double, double* %20, align 8, !dbg !632
  %212 = fmul double %210, %211, !dbg !633
  %213 = load i32, i32* %11, align 4, !dbg !634
  %214 = sitofp i32 %213 to double, !dbg !634
  %215 = fmul double %212, %214, !dbg !635
  %216 = load double, double* %22, align 8, !dbg !636
  %217 = fadd double %216, %215, !dbg !636
  store double %217, double* %22, align 8, !dbg !636
  %218 = load double, double* %22, align 8, !dbg !637
  store double %218, double* %21, align 8, !dbg !638
  br label %74, !dbg !639, !llvm.loop !640

; <label>:219:                                    ; preds = %168, %165
  br label %220, !dbg !641

; <label>:220:                                    ; preds = %219, %183, %74
  %221 = load double, double* %21, align 8, !dbg !642
  %222 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !643
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %222, i32 0, i32 0, !dbg !644
  store double %221, double* %223, align 8, !dbg !645
  %224 = load i32, i32* %11, align 4, !dbg !646
  %225 = load i32, i32* %12, align 4, !dbg !648
  %226 = icmp eq i32 %224, %225, !dbg !649
  br i1 %226, label %227, label %230, !dbg !650

; <label>:227:                                    ; preds = %220
  br label %228, !dbg !651, !llvm.loop !653

; <label>:228:                                    ; preds = %227
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 621, i32 5), !dbg !654
  store i32 5, i32* %4, align 4, !dbg !654
  br label %231, !dbg !654
                                                  ; No predecessors!
  br label %230, !dbg !657

; <label>:230:                                    ; preds = %229, %220
  store i32 0, i32* %4, align 4, !dbg !658
  br label %231, !dbg !658

; <label>:231:                                    ; preds = %230, %228, %63, %57, %36, %31
  %232 = load i32, i32* %4, align 4, !dbg !659
  ret i32 %232, !dbg !659
}

; Function Attrs: nounwind uwtable
define internal double @approx_c(i32, double) #0 !dbg !660 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !663, metadata !68), !dbg !664
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !665, metadata !68), !dbg !666
  call void @llvm.dbg.declare(metadata double* %6, metadata !667, metadata !68), !dbg !668
  call void @llvm.dbg.declare(metadata double* %7, metadata !669, metadata !68), !dbg !670
  call void @llvm.dbg.declare(metadata double* %8, metadata !671, metadata !68), !dbg !672
  call void @llvm.dbg.declare(metadata double* %9, metadata !673, metadata !68), !dbg !674
  %14 = load i32, i32* %4, align 4, !dbg !675
  %15 = icmp slt i32 %14, 0, !dbg !677
  br i1 %15, label %16, label %19, !dbg !678

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !679, !llvm.loop !681

; <label>:17:                                     ; preds = %16
  call void @gsl_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 213, i32 4), !dbg !682
  store double 0.000000e+00, double* %3, align 8, !dbg !682
  br label %233, !dbg !682
                                                  ; No predecessors!
  br label %19, !dbg !685

; <label>:19:                                     ; preds = %18, %2
  %20 = load i32, i32* %4, align 4, !dbg !686
  switch i32 %20, label %101 [
    i32 0, label %21
    i32 1, label %36
    i32 2, label %57
    i32 3, label %75
  ], !dbg !687

; <label>:21:                                     ; preds = %19
  %22 = load double, double* %5, align 8, !dbg !688
  %23 = fcmp ole double %22, 4.000000e+00, !dbg !691
  br i1 %23, label %24, label %32, !dbg !692

; <label>:24:                                     ; preds = %21
  %25 = load double, double* %5, align 8, !dbg !693
  %26 = fmul double 2.000000e+00, %25, !dbg !694
  %27 = load double, double* %5, align 8, !dbg !695
  %28 = fmul double %26, %27, !dbg !696
  %29 = fadd double 4.000000e+00, %28, !dbg !697
  %30 = call double @sqrt(double %29) #6, !dbg !698
  %31 = fsub double 2.000000e+00, %30, !dbg !699
  store double %31, double* %3, align 8, !dbg !700
  br label %233, !dbg !700

; <label>:32:                                     ; preds = %21
  %33 = load i32, i32* %4, align 4, !dbg !701
  %34 = load double, double* %5, align 8, !dbg !702
  %35 = call double @asymptotic(i32 %33, double %34), !dbg !703
  store double %35, double* %3, align 8, !dbg !704
  br label %233, !dbg !704

; <label>:36:                                     ; preds = %19
  %37 = load double, double* %5, align 8, !dbg !705
  %38 = fcmp ole double %37, 4.000000e+00, !dbg !707
  br i1 %38, label %39, label %53, !dbg !708

; <label>:39:                                     ; preds = %36
  %40 = load double, double* %5, align 8, !dbg !709
  %41 = load double, double* %5, align 8, !dbg !710
  %42 = fmul double 5.000000e+00, %41, !dbg !711
  %43 = load double, double* %5, align 8, !dbg !712
  %44 = fmul double %42, %43, !dbg !713
  %45 = load double, double* %5, align 8, !dbg !714
  %46 = fmul double 1.600000e+01, %45, !dbg !715
  %47 = fsub double %44, %46, !dbg !716
  %48 = fadd double %47, 6.400000e+01, !dbg !717
  %49 = call double @sqrt(double %48) #6, !dbg !718
  %50 = fsub double %40, %49, !dbg !719
  %51 = fmul double 5.000000e-01, %50, !dbg !720
  %52 = fadd double 5.000000e+00, %51, !dbg !721
  store double %52, double* %3, align 8, !dbg !722
  br label %233, !dbg !722

; <label>:53:                                     ; preds = %36
  %54 = load i32, i32* %4, align 4, !dbg !723
  %55 = load double, double* %5, align 8, !dbg !724
  %56 = call double @asymptotic(i32 %54, double %55), !dbg !725
  store double %56, double* %3, align 8, !dbg !726
  br label %233, !dbg !726

; <label>:57:                                     ; preds = %19
  %58 = load double, double* %5, align 8, !dbg !727
  %59 = fcmp ole double %58, 3.000000e+00, !dbg !729
  br i1 %59, label %60, label %70, !dbg !730

; <label>:60:                                     ; preds = %57
  store double -8.000000e+00, double* %9, align 8, !dbg !731
  %61 = load double, double* %5, align 8, !dbg !733
  %62 = fmul double 3.000000e+00, %61, !dbg !734
  %63 = load double, double* %5, align 8, !dbg !735
  %64 = fmul double %62, %63, !dbg !736
  %65 = fsub double -4.800000e+01, %64, !dbg !737
  store double %65, double* %8, align 8, !dbg !738
  %66 = load double, double* %5, align 8, !dbg !739
  %67 = fmul double 2.000000e+01, %66, !dbg !740
  %68 = load double, double* %5, align 8, !dbg !741
  %69 = fmul double %67, %68, !dbg !742
  store double %69, double* %7, align 8, !dbg !743
  br label %74, !dbg !744

; <label>:70:                                     ; preds = %57
  %71 = load i32, i32* %4, align 4, !dbg !745
  %72 = load double, double* %5, align 8, !dbg !746
  %73 = call double @asymptotic(i32 %71, double %72), !dbg !747
  store double %73, double* %3, align 8, !dbg !748
  br label %233, !dbg !748

; <label>:74:                                     ; preds = %60
  br label %206, !dbg !749

; <label>:75:                                     ; preds = %19
  %76 = load double, double* %5, align 8, !dbg !750
  %77 = fcmp ole double %76, 6.250000e+00, !dbg !752
  br i1 %77, label %78, label %96, !dbg !753

; <label>:78:                                     ; preds = %75
  %79 = load double, double* %5, align 8, !dbg !754
  %80 = fsub double -0.000000e+00, %79, !dbg !756
  %81 = fsub double %80, 8.000000e+00, !dbg !757
  store double %81, double* %9, align 8, !dbg !758
  %82 = load double, double* %5, align 8, !dbg !759
  %83 = fmul double 1.600000e+01, %82, !dbg !760
  %84 = fsub double %83, 1.280000e+02, !dbg !761
  %85 = load double, double* %5, align 8, !dbg !762
  %86 = fmul double 2.000000e+00, %85, !dbg !763
  %87 = load double, double* %5, align 8, !dbg !764
  %88 = fmul double %86, %87, !dbg !765
  %89 = fsub double %84, %88, !dbg !766
  store double %89, double* %8, align 8, !dbg !767
  %90 = load double, double* %5, align 8, !dbg !768
  %91 = load double, double* %5, align 8, !dbg !769
  %92 = fmul double %90, %91, !dbg !770
  %93 = load double, double* %5, align 8, !dbg !771
  %94 = fadd double %93, 8.000000e+00, !dbg !772
  %95 = fmul double %92, %94, !dbg !773
  store double %95, double* %7, align 8, !dbg !774
  br label %100, !dbg !775

; <label>:96:                                     ; preds = %75
  %97 = load i32, i32* %4, align 4, !dbg !776
  %98 = load double, double* %5, align 8, !dbg !777
  %99 = call double @asymptotic(i32 %97, double %98), !dbg !778
  store double %99, double* %3, align 8, !dbg !779
  br label %233, !dbg !779

; <label>:100:                                    ; preds = %78
  br label %206, !dbg !780

; <label>:101:                                    ; preds = %19
  %102 = load i32, i32* %4, align 4, !dbg !781
  %103 = icmp slt i32 %102, 70, !dbg !783
  br i1 %103, label %104, label %201, !dbg !784

; <label>:104:                                    ; preds = %101
  %105 = load i32, i32* %4, align 4, !dbg !785
  %106 = sitofp i32 %105 to double, !dbg !785
  %107 = fmul double 1.700000e+00, %106, !dbg !788
  %108 = load double, double* %5, align 8, !dbg !789
  %109 = call double @sqrt(double %108) #6, !dbg !790
  %110 = fmul double 2.000000e+00, %109, !dbg !791
  %111 = fcmp ogt double %107, %110, !dbg !792
  br i1 %111, label %112, label %195, !dbg !793

; <label>:112:                                    ; preds = %104
  call void @llvm.dbg.declare(metadata double* %10, metadata !794, metadata !68), !dbg !796
  %113 = load i32, i32* %4, align 4, !dbg !797
  %114 = load i32, i32* %4, align 4, !dbg !798
  %115 = mul nsw i32 %113, %114, !dbg !799
  %116 = sitofp i32 %115 to double, !dbg !800
  store double %116, double* %10, align 8, !dbg !796
  call void @llvm.dbg.declare(metadata double* %11, metadata !801, metadata !68), !dbg !802
  %117 = load double, double* %10, align 8, !dbg !803
  %118 = fsub double %117, 1.000000e+00, !dbg !804
  %119 = load double, double* %10, align 8, !dbg !805
  %120 = fsub double %119, 1.000000e+00, !dbg !806
  %121 = fmul double %118, %120, !dbg !807
  store double %121, double* %11, align 8, !dbg !802
  call void @llvm.dbg.declare(metadata double* %12, metadata !808, metadata !68), !dbg !809
  %122 = load double, double* %5, align 8, !dbg !810
  %123 = load double, double* %5, align 8, !dbg !811
  %124 = fmul double %122, %123, !dbg !812
  store double %124, double* %12, align 8, !dbg !809
  call void @llvm.dbg.declare(metadata double* %13, metadata !813, metadata !68), !dbg !814
  %125 = load double, double* %12, align 8, !dbg !815
  %126 = load double, double* %12, align 8, !dbg !816
  %127 = fmul double %125, %126, !dbg !817
  store double %127, double* %13, align 8, !dbg !814
  %128 = load double, double* %10, align 8, !dbg !818
  %129 = load double, double* %12, align 8, !dbg !819
  %130 = fmul double 5.000000e-01, %129, !dbg !820
  %131 = load double, double* %10, align 8, !dbg !821
  %132 = fsub double %131, 1.000000e+00, !dbg !822
  %133 = fdiv double %130, %132, !dbg !823
  %134 = fadd double %128, %133, !dbg !824
  store double %134, double* %6, align 8, !dbg !825
  %135 = load double, double* %10, align 8, !dbg !826
  %136 = fmul double 5.000000e+00, %135, !dbg !827
  %137 = fadd double %136, 7.000000e+00, !dbg !828
  %138 = load double, double* %13, align 8, !dbg !829
  %139 = fmul double %137, %138, !dbg !830
  %140 = load double, double* %11, align 8, !dbg !831
  %141 = fmul double 3.200000e+01, %140, !dbg !832
  %142 = load double, double* %10, align 8, !dbg !833
  %143 = fsub double %142, 1.000000e+00, !dbg !834
  %144 = fmul double %141, %143, !dbg !835
  %145 = load double, double* %10, align 8, !dbg !836
  %146 = fsub double %145, 4.000000e+00, !dbg !837
  %147 = fmul double %144, %146, !dbg !838
  %148 = fdiv double %139, %147, !dbg !839
  %149 = load double, double* %6, align 8, !dbg !840
  %150 = fadd double %149, %148, !dbg !840
  store double %150, double* %6, align 8, !dbg !840
  %151 = load double, double* %10, align 8, !dbg !841
  %152 = fmul double 9.000000e+00, %151, !dbg !842
  %153 = load double, double* %10, align 8, !dbg !843
  %154 = fmul double %152, %153, !dbg !844
  %155 = load double, double* %10, align 8, !dbg !845
  %156 = fmul double 5.800000e+01, %155, !dbg !846
  %157 = fadd double %154, %156, !dbg !847
  %158 = fadd double %157, 2.900000e+01, !dbg !848
  %159 = load double, double* %13, align 8, !dbg !849
  %160 = fmul double %158, %159, !dbg !850
  %161 = load double, double* %12, align 8, !dbg !851
  %162 = fmul double %160, %161, !dbg !852
  %163 = load double, double* %11, align 8, !dbg !853
  %164 = fmul double 6.400000e+01, %163, !dbg !854
  %165 = load double, double* %11, align 8, !dbg !855
  %166 = fmul double %164, %165, !dbg !856
  %167 = load double, double* %10, align 8, !dbg !857
  %168 = fsub double %167, 1.000000e+00, !dbg !858
  %169 = fmul double %166, %168, !dbg !859
  %170 = load double, double* %10, align 8, !dbg !860
  %171 = fsub double %170, 4.000000e+00, !dbg !861
  %172 = fmul double %169, %171, !dbg !862
  %173 = load double, double* %10, align 8, !dbg !863
  %174 = fsub double %173, 9.000000e+00, !dbg !864
  %175 = fmul double %172, %174, !dbg !865
  %176 = fdiv double %162, %175, !dbg !866
  %177 = load double, double* %6, align 8, !dbg !867
  %178 = fadd double %177, %176, !dbg !867
  store double %178, double* %6, align 8, !dbg !867
  %179 = load i32, i32* %4, align 4, !dbg !868
  %180 = sitofp i32 %179 to double, !dbg !868
  %181 = fmul double 1.400000e+00, %180, !dbg !870
  %182 = load double, double* %5, align 8, !dbg !871
  %183 = call double @sqrt(double %182) #6, !dbg !872
  %184 = fmul double 2.000000e+00, %183, !dbg !873
  %185 = fcmp olt double %181, %184, !dbg !874
  br i1 %185, label %186, label %194, !dbg !875

; <label>:186:                                    ; preds = %112
  %187 = load i32, i32* %4, align 4, !dbg !876
  %188 = load double, double* %5, align 8, !dbg !878
  %189 = call double @asymptotic(i32 %187, double %188), !dbg !879
  %190 = load double, double* %6, align 8, !dbg !880
  %191 = fadd double %190, %189, !dbg !880
  store double %191, double* %6, align 8, !dbg !880
  %192 = load double, double* %6, align 8, !dbg !881
  %193 = fmul double %192, 5.000000e-01, !dbg !881
  store double %193, double* %6, align 8, !dbg !881
  br label %194, !dbg !882

; <label>:194:                                    ; preds = %186, %112
  br label %199, !dbg !883

; <label>:195:                                    ; preds = %104
  %196 = load i32, i32* %4, align 4, !dbg !884
  %197 = load double, double* %5, align 8, !dbg !885
  %198 = call double @asymptotic(i32 %196, double %197), !dbg !886
  store double %198, double* %6, align 8, !dbg !887
  br label %199

; <label>:199:                                    ; preds = %195, %194
  %200 = load double, double* %6, align 8, !dbg !888
  store double %200, double* %3, align 8, !dbg !889
  br label %233, !dbg !889

; <label>:201:                                    ; preds = %101
  %202 = load i32, i32* %4, align 4, !dbg !890
  %203 = load i32, i32* %4, align 4, !dbg !891
  %204 = mul nsw i32 %202, %203, !dbg !892
  %205 = sitofp i32 %204 to double, !dbg !890
  store double %205, double* %3, align 8, !dbg !893
  br label %233, !dbg !893

; <label>:206:                                    ; preds = %100, %74
  %207 = load double, double* %9, align 8, !dbg !894
  %208 = load double, double* %8, align 8, !dbg !895
  %209 = load double, double* %7, align 8, !dbg !896
  %210 = call double @solve_cubic(double %207, double %208, double %209), !dbg !897
  store double %210, double* %6, align 8, !dbg !898
  %211 = load double, double* %6, align 8, !dbg !899
  %212 = fcmp olt double %211, 0.000000e+00, !dbg !901
  br i1 %212, label %213, label %225, !dbg !902

; <label>:213:                                    ; preds = %206
  %214 = load double, double* %5, align 8, !dbg !903
  %215 = call double @sqrt(double %214) #6, !dbg !905
  %216 = load i32, i32* %4, align 4, !dbg !906
  %217 = sitofp i32 %216 to double, !dbg !906
  %218 = fmul double 1.000000e-01, %217, !dbg !907
  %219 = fcmp ogt double %215, %218, !dbg !908
  br i1 %219, label %220, label %225, !dbg !909

; <label>:220:                                    ; preds = %213
  %221 = load i32, i32* %4, align 4, !dbg !910
  %222 = sub nsw i32 %221, 1, !dbg !911
  %223 = load double, double* %5, align 8, !dbg !912
  %224 = call double @asymptotic(i32 %222, double %223), !dbg !913
  store double %224, double* %3, align 8, !dbg !914
  br label %233, !dbg !914

; <label>:225:                                    ; preds = %213, %206
  %226 = load i32, i32* %4, align 4, !dbg !915
  %227 = load i32, i32* %4, align 4, !dbg !916
  %228 = mul nsw i32 %226, %227, !dbg !917
  %229 = sitofp i32 %228 to double, !dbg !915
  %230 = load double, double* %6, align 8, !dbg !918
  %231 = call double @fabs(double %230) #1, !dbg !919
  %232 = fadd double %229, %231, !dbg !920
  store double %232, double* %3, align 8, !dbg !921
  br label %233, !dbg !921

; <label>:233:                                    ; preds = %225, %220, %201, %199, %96, %70, %53, %39, %32, %24, %17
  %234 = load double, double* %3, align 8, !dbg !922
  ret double %234, !dbg !922
}

; Function Attrs: nounwind uwtable
define internal double @ceer(i32, double, double, i32) #0 !dbg !923 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !926, metadata !68), !dbg !927
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !928, metadata !68), !dbg !929
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !930, metadata !68), !dbg !931
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !932, metadata !68), !dbg !933
  call void @llvm.dbg.declare(metadata double* %9, metadata !934, metadata !68), !dbg !935
  call void @llvm.dbg.declare(metadata double* %10, metadata !936, metadata !68), !dbg !937
  call void @llvm.dbg.declare(metadata i32* %11, metadata !938, metadata !68), !dbg !939
  call void @llvm.dbg.declare(metadata i32* %12, metadata !940, metadata !68), !dbg !941
  %13 = load i32, i32* %5, align 4, !dbg !942
  %14 = icmp eq i32 %13, 0, !dbg !944
  br i1 %14, label %15, label %16, !dbg !945

; <label>:15:                                     ; preds = %4
  store double 0.000000e+00, double* %9, align 8, !dbg !946
  br label %55, !dbg !947

; <label>:16:                                     ; preds = %4
  %17 = load double, double* %6, align 8, !dbg !948
  %18 = fmul double 2.000000e+00, %17, !dbg !950
  %19 = load double, double* %6, align 8, !dbg !951
  %20 = fmul double %18, %19, !dbg !952
  %21 = load double, double* %7, align 8, !dbg !953
  %22 = fdiv double %20, %21, !dbg !954
  store double %22, double* %9, align 8, !dbg !955
  %23 = load i32, i32* %5, align 4, !dbg !956
  %24 = icmp ne i32 %23, 2, !dbg !958
  br i1 %24, label %25, label %54, !dbg !959

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %5, align 4, !dbg !960
  %27 = sdiv i32 %26, 2, !dbg !962
  %28 = sub nsw i32 %27, 1, !dbg !963
  store i32 %28, i32* %12, align 4, !dbg !964
  store i32 0, i32* %11, align 4, !dbg !965
  br label %29, !dbg !967

; <label>:29:                                     ; preds = %50, %25
  %30 = load i32, i32* %11, align 4, !dbg !968
  %31 = load i32, i32* %12, align 4, !dbg !971
  %32 = icmp slt i32 %30, %31, !dbg !972
  br i1 %32, label %33, label %53, !dbg !973

; <label>:33:                                     ; preds = %29
  %34 = load double, double* %6, align 8, !dbg !974
  %35 = load double, double* %6, align 8, !dbg !975
  %36 = fmul double %34, %35, !dbg !976
  %37 = load double, double* %7, align 8, !dbg !977
  %38 = load i32, i32* %11, align 4, !dbg !978
  %39 = add nsw i32 %38, 1, !dbg !979
  %40 = sitofp i32 %39 to double, !dbg !980
  %41 = fmul double 4.000000e+00, %40, !dbg !981
  %42 = load i32, i32* %11, align 4, !dbg !982
  %43 = add nsw i32 %42, 1, !dbg !983
  %44 = sitofp i32 %43 to double, !dbg !984
  %45 = fmul double %41, %44, !dbg !985
  %46 = fsub double %37, %45, !dbg !986
  %47 = load double, double* %9, align 8, !dbg !987
  %48 = fsub double %46, %47, !dbg !988
  %49 = fdiv double %36, %48, !dbg !989
  store double %49, double* %9, align 8, !dbg !990
  br label %50, !dbg !991

; <label>:50:                                     ; preds = %33
  %51 = load i32, i32* %11, align 4, !dbg !992
  %52 = add nsw i32 %51, 1, !dbg !992
  store i32 %52, i32* %11, align 4, !dbg !992
  br label %29, !dbg !994, !llvm.loop !995

; <label>:53:                                     ; preds = %29
  br label %54, !dbg !997

; <label>:54:                                     ; preds = %53, %16
  br label %55

; <label>:55:                                     ; preds = %54, %15
  %56 = load i32, i32* %5, align 4, !dbg !998
  %57 = load i32, i32* %5, align 4, !dbg !999
  %58 = mul nsw i32 %56, %57, !dbg !1000
  %59 = sitofp i32 %58 to double, !dbg !998
  %60 = load double, double* %9, align 8, !dbg !1001
  %61 = fadd double %60, %59, !dbg !1001
  store double %61, double* %9, align 8, !dbg !1001
  store double 0.000000e+00, double* %10, align 8, !dbg !1002
  store i32 0, i32* %11, align 4, !dbg !1003
  br label %62, !dbg !1005

; <label>:62:                                     ; preds = %92, %55
  %63 = load i32, i32* %11, align 4, !dbg !1006
  %64 = load i32, i32* %8, align 4, !dbg !1009
  %65 = icmp slt i32 %63, %64, !dbg !1010
  br i1 %65, label %66, label %95, !dbg !1011

; <label>:66:                                     ; preds = %62
  %67 = load double, double* %6, align 8, !dbg !1012
  %68 = load double, double* %6, align 8, !dbg !1013
  %69 = fmul double %67, %68, !dbg !1014
  %70 = load double, double* %7, align 8, !dbg !1015
  %71 = load i32, i32* %5, align 4, !dbg !1016
  %72 = sitofp i32 %71 to double, !dbg !1016
  %73 = load i32, i32* %8, align 4, !dbg !1017
  %74 = load i32, i32* %11, align 4, !dbg !1018
  %75 = sub nsw i32 %73, %74, !dbg !1019
  %76 = sitofp i32 %75 to double, !dbg !1020
  %77 = fmul double 2.000000e+00, %76, !dbg !1021
  %78 = fadd double %72, %77, !dbg !1022
  %79 = load i32, i32* %5, align 4, !dbg !1023
  %80 = sitofp i32 %79 to double, !dbg !1023
  %81 = load i32, i32* %8, align 4, !dbg !1024
  %82 = load i32, i32* %11, align 4, !dbg !1025
  %83 = sub nsw i32 %81, %82, !dbg !1026
  %84 = sitofp i32 %83 to double, !dbg !1027
  %85 = fmul double 2.000000e+00, %84, !dbg !1028
  %86 = fadd double %80, %85, !dbg !1029
  %87 = fmul double %78, %86, !dbg !1030
  %88 = fsub double %70, %87, !dbg !1031
  %89 = load double, double* %10, align 8, !dbg !1032
  %90 = fsub double %88, %89, !dbg !1033
  %91 = fdiv double %69, %90, !dbg !1034
  store double %91, double* %10, align 8, !dbg !1035
  br label %92, !dbg !1036

; <label>:92:                                     ; preds = %66
  %93 = load i32, i32* %11, align 4, !dbg !1037
  %94 = add nsw i32 %93, 1, !dbg !1037
  store i32 %94, i32* %11, align 4, !dbg !1037
  br label %62, !dbg !1039, !llvm.loop !1040

; <label>:95:                                     ; preds = %62
  %96 = load i32, i32* %5, align 4, !dbg !1042
  %97 = icmp eq i32 %96, 0, !dbg !1044
  br i1 %97, label %98, label %101, !dbg !1045

; <label>:98:                                     ; preds = %95
  %99 = load double, double* %10, align 8, !dbg !1046
  %100 = fmul double %99, 2.000000e+00, !dbg !1046
  store double %100, double* %10, align 8, !dbg !1046
  br label %101, !dbg !1047

; <label>:101:                                    ; preds = %98, %95
  %102 = load double, double* %9, align 8, !dbg !1048
  %103 = load double, double* %10, align 8, !dbg !1049
  %104 = fadd double %102, %103, !dbg !1050
  %105 = load double, double* %7, align 8, !dbg !1051
  %106 = fsub double %104, %105, !dbg !1052
  ret double %106, !dbg !1053
}

; Function Attrs: nounwind uwtable
define internal double @ceor(i32, double, double, i32) #0 !dbg !1054 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1055, metadata !68), !dbg !1056
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1057, metadata !68), !dbg !1058
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1059, metadata !68), !dbg !1060
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1061, metadata !68), !dbg !1062
  call void @llvm.dbg.declare(metadata double* %9, metadata !1063, metadata !68), !dbg !1064
  call void @llvm.dbg.declare(metadata double* %10, metadata !1065, metadata !68), !dbg !1066
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1067, metadata !68), !dbg !1068
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1069, metadata !68), !dbg !1070
  %13 = load double, double* %6, align 8, !dbg !1071
  store double %13, double* %9, align 8, !dbg !1072
  %14 = load i32, i32* %5, align 4, !dbg !1073
  %15 = sitofp i32 %14 to float, !dbg !1074
  %16 = fpext float %15 to double, !dbg !1074
  %17 = fdiv double %16, 2.000000e+00, !dbg !1075
  %18 = fsub double %17, 5.000000e-01, !dbg !1076
  %19 = fptosi double %18 to i32, !dbg !1077
  store i32 %19, i32* %12, align 4, !dbg !1078
  store i32 0, i32* %11, align 4, !dbg !1079
  br label %20, !dbg !1081

; <label>:20:                                     ; preds = %42, %4
  %21 = load i32, i32* %11, align 4, !dbg !1082
  %22 = load i32, i32* %12, align 4, !dbg !1085
  %23 = icmp slt i32 %21, %22, !dbg !1086
  br i1 %23, label %24, label %45, !dbg !1087

; <label>:24:                                     ; preds = %20
  %25 = load double, double* %6, align 8, !dbg !1088
  %26 = load double, double* %6, align 8, !dbg !1089
  %27 = fmul double %25, %26, !dbg !1090
  %28 = load double, double* %7, align 8, !dbg !1091
  %29 = load i32, i32* %11, align 4, !dbg !1092
  %30 = sitofp i32 %29 to double, !dbg !1092
  %31 = fmul double 2.000000e+00, %30, !dbg !1093
  %32 = fadd double %31, 1.000000e+00, !dbg !1094
  %33 = load i32, i32* %11, align 4, !dbg !1095
  %34 = sitofp i32 %33 to double, !dbg !1095
  %35 = fmul double 2.000000e+00, %34, !dbg !1096
  %36 = fadd double %35, 1.000000e+00, !dbg !1097
  %37 = fmul double %32, %36, !dbg !1098
  %38 = fsub double %28, %37, !dbg !1099
  %39 = load double, double* %9, align 8, !dbg !1100
  %40 = fsub double %38, %39, !dbg !1101
  %41 = fdiv double %27, %40, !dbg !1102
  store double %41, double* %9, align 8, !dbg !1103
  br label %42, !dbg !1104

; <label>:42:                                     ; preds = %24
  %43 = load i32, i32* %11, align 4, !dbg !1105
  %44 = add nsw i32 %43, 1, !dbg !1105
  store i32 %44, i32* %11, align 4, !dbg !1105
  br label %20, !dbg !1107, !llvm.loop !1108

; <label>:45:                                     ; preds = %20
  %46 = load i32, i32* %5, align 4, !dbg !1110
  %47 = load i32, i32* %5, align 4, !dbg !1111
  %48 = mul nsw i32 %46, %47, !dbg !1112
  %49 = sitofp i32 %48 to double, !dbg !1110
  %50 = load double, double* %9, align 8, !dbg !1113
  %51 = fadd double %50, %49, !dbg !1113
  store double %51, double* %9, align 8, !dbg !1113
  store double 0.000000e+00, double* %10, align 8, !dbg !1114
  store i32 0, i32* %11, align 4, !dbg !1115
  br label %52, !dbg !1117

; <label>:52:                                     ; preds = %82, %45
  %53 = load i32, i32* %11, align 4, !dbg !1118
  %54 = load i32, i32* %8, align 4, !dbg !1121
  %55 = icmp slt i32 %53, %54, !dbg !1122
  br i1 %55, label %56, label %85, !dbg !1123

; <label>:56:                                     ; preds = %52
  %57 = load double, double* %6, align 8, !dbg !1124
  %58 = load double, double* %6, align 8, !dbg !1125
  %59 = fmul double %57, %58, !dbg !1126
  %60 = load double, double* %7, align 8, !dbg !1127
  %61 = load i32, i32* %5, align 4, !dbg !1128
  %62 = sitofp i32 %61 to double, !dbg !1128
  %63 = load i32, i32* %8, align 4, !dbg !1129
  %64 = load i32, i32* %11, align 4, !dbg !1130
  %65 = sub nsw i32 %63, %64, !dbg !1131
  %66 = sitofp i32 %65 to double, !dbg !1132
  %67 = fmul double 2.000000e+00, %66, !dbg !1133
  %68 = fadd double %62, %67, !dbg !1134
  %69 = load i32, i32* %5, align 4, !dbg !1135
  %70 = sitofp i32 %69 to double, !dbg !1135
  %71 = load i32, i32* %8, align 4, !dbg !1136
  %72 = load i32, i32* %11, align 4, !dbg !1137
  %73 = sub nsw i32 %71, %72, !dbg !1138
  %74 = sitofp i32 %73 to double, !dbg !1139
  %75 = fmul double 2.000000e+00, %74, !dbg !1140
  %76 = fadd double %70, %75, !dbg !1141
  %77 = fmul double %68, %76, !dbg !1142
  %78 = fsub double %60, %77, !dbg !1143
  %79 = load double, double* %10, align 8, !dbg !1144
  %80 = fsub double %78, %79, !dbg !1145
  %81 = fdiv double %59, %80, !dbg !1146
  store double %81, double* %10, align 8, !dbg !1147
  br label %82, !dbg !1148

; <label>:82:                                     ; preds = %56
  %83 = load i32, i32* %11, align 4, !dbg !1149
  %84 = add nsw i32 %83, 1, !dbg !1149
  store i32 %84, i32* %11, align 4, !dbg !1149
  br label %52, !dbg !1151, !llvm.loop !1152

; <label>:85:                                     ; preds = %52
  %86 = load double, double* %9, align 8, !dbg !1154
  %87 = load double, double* %10, align 8, !dbg !1155
  %88 = fadd double %86, %87, !dbg !1156
  %89 = load double, double* %7, align 8, !dbg !1157
  %90 = fsub double %88, %89, !dbg !1158
  ret double %90, !dbg !1159
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal double @approx_s(i32, double) #0 !dbg !1160 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1161, metadata !68), !dbg !1162
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1163, metadata !68), !dbg !1164
  call void @llvm.dbg.declare(metadata double* %6, metadata !1165, metadata !68), !dbg !1166
  call void @llvm.dbg.declare(metadata double* %7, metadata !1167, metadata !68), !dbg !1168
  call void @llvm.dbg.declare(metadata double* %8, metadata !1169, metadata !68), !dbg !1170
  call void @llvm.dbg.declare(metadata double* %9, metadata !1171, metadata !68), !dbg !1172
  %14 = load i32, i32* %4, align 4, !dbg !1173
  %15 = icmp slt i32 %14, 1, !dbg !1175
  br i1 %15, label %16, label %19, !dbg !1176

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !1177, !llvm.loop !1179

; <label>:17:                                     ; preds = %16
  call void @gsl_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 301, i32 4), !dbg !1180
  store double 0.000000e+00, double* %3, align 8, !dbg !1180
  br label %218, !dbg !1180
                                                  ; No predecessors!
  br label %19, !dbg !1183

; <label>:19:                                     ; preds = %18, %2
  %20 = load i32, i32* %4, align 4, !dbg !1184
  switch i32 %20, label %84 [
    i32 1, label %21
    i32 2, label %43
    i32 3, label %58
  ], !dbg !1185

; <label>:21:                                     ; preds = %19
  %22 = load double, double* %5, align 8, !dbg !1186
  %23 = fcmp ole double %22, 4.000000e+00, !dbg !1189
  br i1 %23, label %24, label %38, !dbg !1190

; <label>:24:                                     ; preds = %21
  %25 = load double, double* %5, align 8, !dbg !1191
  %26 = load double, double* %5, align 8, !dbg !1192
  %27 = fmul double 5.000000e+00, %26, !dbg !1193
  %28 = load double, double* %5, align 8, !dbg !1194
  %29 = fmul double %27, %28, !dbg !1195
  %30 = load double, double* %5, align 8, !dbg !1196
  %31 = fmul double 1.600000e+01, %30, !dbg !1197
  %32 = fadd double %29, %31, !dbg !1198
  %33 = fadd double %32, 6.400000e+01, !dbg !1199
  %34 = call double @sqrt(double %33) #6, !dbg !1200
  %35 = fadd double %25, %34, !dbg !1201
  %36 = fmul double 5.000000e-01, %35, !dbg !1202
  %37 = fsub double 5.000000e+00, %36, !dbg !1203
  store double %37, double* %3, align 8, !dbg !1204
  br label %218, !dbg !1204

; <label>:38:                                     ; preds = %21
  %39 = load i32, i32* %4, align 4, !dbg !1205
  %40 = sub nsw i32 %39, 1, !dbg !1206
  %41 = load double, double* %5, align 8, !dbg !1207
  %42 = call double @asymptotic(i32 %40, double %41), !dbg !1208
  store double %42, double* %3, align 8, !dbg !1209
  br label %218, !dbg !1209

; <label>:43:                                     ; preds = %19
  %44 = load double, double* %5, align 8, !dbg !1210
  %45 = fcmp ole double %44, 5.000000e+00, !dbg !1212
  br i1 %45, label %46, label %53, !dbg !1213

; <label>:46:                                     ; preds = %43
  %47 = load double, double* %5, align 8, !dbg !1214
  %48 = load double, double* %5, align 8, !dbg !1215
  %49 = fmul double %47, %48, !dbg !1216
  %50 = fadd double 3.600000e+01, %49, !dbg !1217
  %51 = call double @sqrt(double %50) #6, !dbg !1218
  %52 = fsub double 1.000000e+01, %51, !dbg !1219
  store double %52, double* %3, align 8, !dbg !1220
  br label %218, !dbg !1220

; <label>:53:                                     ; preds = %43
  %54 = load i32, i32* %4, align 4, !dbg !1221
  %55 = sub nsw i32 %54, 1, !dbg !1222
  %56 = load double, double* %5, align 8, !dbg !1223
  %57 = call double @asymptotic(i32 %55, double %56), !dbg !1224
  store double %57, double* %3, align 8, !dbg !1225
  br label %218, !dbg !1225

; <label>:58:                                     ; preds = %19
  %59 = load double, double* %5, align 8, !dbg !1226
  %60 = fcmp ole double %59, 6.250000e+00, !dbg !1228
  br i1 %60, label %61, label %78, !dbg !1229

; <label>:61:                                     ; preds = %58
  %62 = load double, double* %5, align 8, !dbg !1230
  %63 = fsub double %62, 8.000000e+00, !dbg !1232
  store double %63, double* %9, align 8, !dbg !1233
  %64 = load double, double* %5, align 8, !dbg !1234
  %65 = fmul double 1.600000e+01, %64, !dbg !1235
  %66 = fsub double -1.280000e+02, %65, !dbg !1236
  %67 = load double, double* %5, align 8, !dbg !1237
  %68 = fmul double 2.000000e+00, %67, !dbg !1238
  %69 = load double, double* %5, align 8, !dbg !1239
  %70 = fmul double %68, %69, !dbg !1240
  %71 = fsub double %66, %70, !dbg !1241
  store double %71, double* %8, align 8, !dbg !1242
  %72 = load double, double* %5, align 8, !dbg !1243
  %73 = load double, double* %5, align 8, !dbg !1244
  %74 = fmul double %72, %73, !dbg !1245
  %75 = load double, double* %5, align 8, !dbg !1246
  %76 = fsub double 8.000000e+00, %75, !dbg !1247
  %77 = fmul double %74, %76, !dbg !1248
  store double %77, double* %7, align 8, !dbg !1249
  br label %83, !dbg !1250

; <label>:78:                                     ; preds = %58
  %79 = load i32, i32* %4, align 4, !dbg !1251
  %80 = sub nsw i32 %79, 1, !dbg !1252
  %81 = load double, double* %5, align 8, !dbg !1253
  %82 = call double @asymptotic(i32 %80, double %81), !dbg !1254
  store double %82, double* %3, align 8, !dbg !1255
  br label %218, !dbg !1255

; <label>:83:                                     ; preds = %61
  br label %191, !dbg !1256

; <label>:84:                                     ; preds = %19
  %85 = load i32, i32* %4, align 4, !dbg !1257
  %86 = icmp slt i32 %85, 70, !dbg !1259
  br i1 %86, label %87, label %186, !dbg !1260

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %4, align 4, !dbg !1261
  %89 = sitofp i32 %88 to double, !dbg !1261
  %90 = fmul double 1.700000e+00, %89, !dbg !1264
  %91 = load double, double* %5, align 8, !dbg !1265
  %92 = call double @sqrt(double %91) #6, !dbg !1266
  %93 = fmul double 2.000000e+00, %92, !dbg !1267
  %94 = fcmp ogt double %90, %93, !dbg !1268
  br i1 %94, label %95, label %179, !dbg !1269

; <label>:95:                                     ; preds = %87
  call void @llvm.dbg.declare(metadata double* %10, metadata !1270, metadata !68), !dbg !1272
  %96 = load i32, i32* %4, align 4, !dbg !1273
  %97 = load i32, i32* %4, align 4, !dbg !1274
  %98 = mul nsw i32 %96, %97, !dbg !1275
  %99 = sitofp i32 %98 to double, !dbg !1276
  store double %99, double* %10, align 8, !dbg !1272
  call void @llvm.dbg.declare(metadata double* %11, metadata !1277, metadata !68), !dbg !1278
  %100 = load double, double* %10, align 8, !dbg !1279
  %101 = fsub double %100, 1.000000e+00, !dbg !1280
  %102 = load double, double* %10, align 8, !dbg !1281
  %103 = fsub double %102, 1.000000e+00, !dbg !1282
  %104 = fmul double %101, %103, !dbg !1283
  store double %104, double* %11, align 8, !dbg !1278
  call void @llvm.dbg.declare(metadata double* %12, metadata !1284, metadata !68), !dbg !1285
  %105 = load double, double* %5, align 8, !dbg !1286
  %106 = load double, double* %5, align 8, !dbg !1287
  %107 = fmul double %105, %106, !dbg !1288
  store double %107, double* %12, align 8, !dbg !1285
  call void @llvm.dbg.declare(metadata double* %13, metadata !1289, metadata !68), !dbg !1290
  %108 = load double, double* %12, align 8, !dbg !1291
  %109 = load double, double* %12, align 8, !dbg !1292
  %110 = fmul double %108, %109, !dbg !1293
  store double %110, double* %13, align 8, !dbg !1290
  %111 = load double, double* %10, align 8, !dbg !1294
  %112 = load double, double* %12, align 8, !dbg !1295
  %113 = fmul double 5.000000e-01, %112, !dbg !1296
  %114 = load double, double* %10, align 8, !dbg !1297
  %115 = fsub double %114, 1.000000e+00, !dbg !1298
  %116 = fdiv double %113, %115, !dbg !1299
  %117 = fadd double %111, %116, !dbg !1300
  store double %117, double* %6, align 8, !dbg !1301
  %118 = load double, double* %10, align 8, !dbg !1302
  %119 = fmul double 5.000000e+00, %118, !dbg !1303
  %120 = fadd double %119, 7.000000e+00, !dbg !1304
  %121 = load double, double* %13, align 8, !dbg !1305
  %122 = fmul double %120, %121, !dbg !1306
  %123 = load double, double* %11, align 8, !dbg !1307
  %124 = fmul double 3.200000e+01, %123, !dbg !1308
  %125 = load double, double* %10, align 8, !dbg !1309
  %126 = fsub double %125, 1.000000e+00, !dbg !1310
  %127 = fmul double %124, %126, !dbg !1311
  %128 = load double, double* %10, align 8, !dbg !1312
  %129 = fsub double %128, 4.000000e+00, !dbg !1313
  %130 = fmul double %127, %129, !dbg !1314
  %131 = fdiv double %122, %130, !dbg !1315
  %132 = load double, double* %6, align 8, !dbg !1316
  %133 = fadd double %132, %131, !dbg !1316
  store double %133, double* %6, align 8, !dbg !1316
  %134 = load double, double* %10, align 8, !dbg !1317
  %135 = fmul double 9.000000e+00, %134, !dbg !1318
  %136 = load double, double* %10, align 8, !dbg !1319
  %137 = fmul double %135, %136, !dbg !1320
  %138 = load double, double* %10, align 8, !dbg !1321
  %139 = fmul double 5.800000e+01, %138, !dbg !1322
  %140 = fadd double %137, %139, !dbg !1323
  %141 = fadd double %140, 2.900000e+01, !dbg !1324
  %142 = load double, double* %13, align 8, !dbg !1325
  %143 = fmul double %141, %142, !dbg !1326
  %144 = load double, double* %12, align 8, !dbg !1327
  %145 = fmul double %143, %144, !dbg !1328
  %146 = load double, double* %11, align 8, !dbg !1329
  %147 = fmul double 6.400000e+01, %146, !dbg !1330
  %148 = load double, double* %11, align 8, !dbg !1331
  %149 = fmul double %147, %148, !dbg !1332
  %150 = load double, double* %10, align 8, !dbg !1333
  %151 = fsub double %150, 1.000000e+00, !dbg !1334
  %152 = fmul double %149, %151, !dbg !1335
  %153 = load double, double* %10, align 8, !dbg !1336
  %154 = fsub double %153, 4.000000e+00, !dbg !1337
  %155 = fmul double %152, %154, !dbg !1338
  %156 = load double, double* %10, align 8, !dbg !1339
  %157 = fsub double %156, 9.000000e+00, !dbg !1340
  %158 = fmul double %155, %157, !dbg !1341
  %159 = fdiv double %145, %158, !dbg !1342
  %160 = load double, double* %6, align 8, !dbg !1343
  %161 = fadd double %160, %159, !dbg !1343
  store double %161, double* %6, align 8, !dbg !1343
  %162 = load i32, i32* %4, align 4, !dbg !1344
  %163 = sitofp i32 %162 to double, !dbg !1344
  %164 = fmul double 1.400000e+00, %163, !dbg !1346
  %165 = load double, double* %5, align 8, !dbg !1347
  %166 = call double @sqrt(double %165) #6, !dbg !1348
  %167 = fmul double 2.000000e+00, %166, !dbg !1349
  %168 = fcmp olt double %164, %167, !dbg !1350
  br i1 %168, label %169, label %178, !dbg !1351

; <label>:169:                                    ; preds = %95
  %170 = load i32, i32* %4, align 4, !dbg !1352
  %171 = sub nsw i32 %170, 1, !dbg !1354
  %172 = load double, double* %5, align 8, !dbg !1355
  %173 = call double @asymptotic(i32 %171, double %172), !dbg !1356
  %174 = load double, double* %6, align 8, !dbg !1357
  %175 = fadd double %174, %173, !dbg !1357
  store double %175, double* %6, align 8, !dbg !1357
  %176 = load double, double* %6, align 8, !dbg !1358
  %177 = fmul double %176, 5.000000e-01, !dbg !1358
  store double %177, double* %6, align 8, !dbg !1358
  br label %178, !dbg !1359

; <label>:178:                                    ; preds = %169, %95
  br label %184, !dbg !1360

; <label>:179:                                    ; preds = %87
  %180 = load i32, i32* %4, align 4, !dbg !1361
  %181 = sub nsw i32 %180, 1, !dbg !1362
  %182 = load double, double* %5, align 8, !dbg !1363
  %183 = call double @asymptotic(i32 %181, double %182), !dbg !1364
  store double %183, double* %6, align 8, !dbg !1365
  br label %184

; <label>:184:                                    ; preds = %179, %178
  %185 = load double, double* %6, align 8, !dbg !1366
  store double %185, double* %3, align 8, !dbg !1367
  br label %218, !dbg !1367

; <label>:186:                                    ; preds = %84
  %187 = load i32, i32* %4, align 4, !dbg !1368
  %188 = load i32, i32* %4, align 4, !dbg !1369
  %189 = mul nsw i32 %187, %188, !dbg !1370
  %190 = sitofp i32 %189 to double, !dbg !1368
  store double %190, double* %3, align 8, !dbg !1371
  br label %218, !dbg !1371

; <label>:191:                                    ; preds = %83
  %192 = load double, double* %9, align 8, !dbg !1372
  %193 = load double, double* %8, align 8, !dbg !1373
  %194 = load double, double* %7, align 8, !dbg !1374
  %195 = call double @solve_cubic(double %192, double %193, double %194), !dbg !1375
  store double %195, double* %6, align 8, !dbg !1376
  %196 = load double, double* %6, align 8, !dbg !1377
  %197 = fcmp olt double %196, 0.000000e+00, !dbg !1379
  br i1 %197, label %198, label %210, !dbg !1380

; <label>:198:                                    ; preds = %191
  %199 = load double, double* %5, align 8, !dbg !1381
  %200 = call double @sqrt(double %199) #6, !dbg !1383
  %201 = load i32, i32* %4, align 4, !dbg !1384
  %202 = sitofp i32 %201 to double, !dbg !1384
  %203 = fmul double 1.000000e-01, %202, !dbg !1385
  %204 = fcmp ogt double %200, %203, !dbg !1386
  br i1 %204, label %205, label %210, !dbg !1387

; <label>:205:                                    ; preds = %198
  %206 = load i32, i32* %4, align 4, !dbg !1388
  %207 = sub nsw i32 %206, 1, !dbg !1389
  %208 = load double, double* %5, align 8, !dbg !1390
  %209 = call double @asymptotic(i32 %207, double %208), !dbg !1391
  store double %209, double* %3, align 8, !dbg !1392
  br label %218, !dbg !1392

; <label>:210:                                    ; preds = %198, %191
  %211 = load i32, i32* %4, align 4, !dbg !1393
  %212 = load i32, i32* %4, align 4, !dbg !1394
  %213 = mul nsw i32 %211, %212, !dbg !1395
  %214 = sitofp i32 %213 to double, !dbg !1393
  %215 = load double, double* %6, align 8, !dbg !1396
  %216 = call double @fabs(double %215) #1, !dbg !1397
  %217 = fadd double %214, %216, !dbg !1398
  store double %217, double* %3, align 8, !dbg !1399
  br label %218, !dbg !1399

; <label>:218:                                    ; preds = %210, %205, %186, %184, %78, %53, %46, %38, %24, %17
  %219 = load double, double* %3, align 8, !dbg !1400
  ret double %219, !dbg !1400
}

; Function Attrs: nounwind uwtable
define internal double @seer(i32, double, double, i32) #0 !dbg !1401 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1402, metadata !68), !dbg !1403
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1404, metadata !68), !dbg !1405
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1406, metadata !68), !dbg !1407
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1408, metadata !68), !dbg !1409
  call void @llvm.dbg.declare(metadata double* %9, metadata !1410, metadata !68), !dbg !1411
  call void @llvm.dbg.declare(metadata double* %10, metadata !1412, metadata !68), !dbg !1413
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1414, metadata !68), !dbg !1415
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1416, metadata !68), !dbg !1417
  store double 0.000000e+00, double* %9, align 8, !dbg !1418
  %13 = load i32, i32* %5, align 4, !dbg !1419
  %14 = sdiv i32 %13, 2, !dbg !1420
  %15 = sub nsw i32 %14, 1, !dbg !1421
  store i32 %15, i32* %12, align 4, !dbg !1422
  store i32 0, i32* %11, align 4, !dbg !1423
  br label %16, !dbg !1425

; <label>:16:                                     ; preds = %37, %4
  %17 = load i32, i32* %11, align 4, !dbg !1426
  %18 = load i32, i32* %12, align 4, !dbg !1429
  %19 = icmp slt i32 %17, %18, !dbg !1430
  br i1 %19, label %20, label %40, !dbg !1431

; <label>:20:                                     ; preds = %16
  %21 = load double, double* %6, align 8, !dbg !1432
  %22 = load double, double* %6, align 8, !dbg !1433
  %23 = fmul double %21, %22, !dbg !1434
  %24 = load double, double* %7, align 8, !dbg !1435
  %25 = load i32, i32* %11, align 4, !dbg !1436
  %26 = add nsw i32 %25, 1, !dbg !1437
  %27 = sitofp i32 %26 to double, !dbg !1438
  %28 = fmul double 4.000000e+00, %27, !dbg !1439
  %29 = load i32, i32* %11, align 4, !dbg !1440
  %30 = add nsw i32 %29, 1, !dbg !1441
  %31 = sitofp i32 %30 to double, !dbg !1442
  %32 = fmul double %28, %31, !dbg !1443
  %33 = fsub double %24, %32, !dbg !1444
  %34 = load double, double* %9, align 8, !dbg !1445
  %35 = fsub double %33, %34, !dbg !1446
  %36 = fdiv double %23, %35, !dbg !1447
  store double %36, double* %9, align 8, !dbg !1448
  br label %37, !dbg !1449

; <label>:37:                                     ; preds = %20
  %38 = load i32, i32* %11, align 4, !dbg !1450
  %39 = add nsw i32 %38, 1, !dbg !1450
  store i32 %39, i32* %11, align 4, !dbg !1450
  br label %16, !dbg !1452, !llvm.loop !1453

; <label>:40:                                     ; preds = %16
  %41 = load i32, i32* %5, align 4, !dbg !1455
  %42 = load i32, i32* %5, align 4, !dbg !1456
  %43 = mul nsw i32 %41, %42, !dbg !1457
  %44 = sitofp i32 %43 to double, !dbg !1455
  %45 = load double, double* %9, align 8, !dbg !1458
  %46 = fadd double %45, %44, !dbg !1458
  store double %46, double* %9, align 8, !dbg !1458
  store double 0.000000e+00, double* %10, align 8, !dbg !1459
  store i32 0, i32* %11, align 4, !dbg !1460
  br label %47, !dbg !1462

; <label>:47:                                     ; preds = %77, %40
  %48 = load i32, i32* %11, align 4, !dbg !1463
  %49 = load i32, i32* %8, align 4, !dbg !1466
  %50 = icmp slt i32 %48, %49, !dbg !1467
  br i1 %50, label %51, label %80, !dbg !1468

; <label>:51:                                     ; preds = %47
  %52 = load double, double* %6, align 8, !dbg !1469
  %53 = load double, double* %6, align 8, !dbg !1470
  %54 = fmul double %52, %53, !dbg !1471
  %55 = load double, double* %7, align 8, !dbg !1472
  %56 = load i32, i32* %5, align 4, !dbg !1473
  %57 = sitofp i32 %56 to double, !dbg !1473
  %58 = load i32, i32* %8, align 4, !dbg !1474
  %59 = load i32, i32* %11, align 4, !dbg !1475
  %60 = sub nsw i32 %58, %59, !dbg !1476
  %61 = sitofp i32 %60 to double, !dbg !1477
  %62 = fmul double 2.000000e+00, %61, !dbg !1478
  %63 = fadd double %57, %62, !dbg !1479
  %64 = load i32, i32* %5, align 4, !dbg !1480
  %65 = sitofp i32 %64 to double, !dbg !1480
  %66 = load i32, i32* %8, align 4, !dbg !1481
  %67 = load i32, i32* %11, align 4, !dbg !1482
  %68 = sub nsw i32 %66, %67, !dbg !1483
  %69 = sitofp i32 %68 to double, !dbg !1484
  %70 = fmul double 2.000000e+00, %69, !dbg !1485
  %71 = fadd double %65, %70, !dbg !1486
  %72 = fmul double %63, %71, !dbg !1487
  %73 = fsub double %55, %72, !dbg !1488
  %74 = load double, double* %10, align 8, !dbg !1489
  %75 = fsub double %73, %74, !dbg !1490
  %76 = fdiv double %54, %75, !dbg !1491
  store double %76, double* %10, align 8, !dbg !1492
  br label %77, !dbg !1493

; <label>:77:                                     ; preds = %51
  %78 = load i32, i32* %11, align 4, !dbg !1494
  %79 = add nsw i32 %78, 1, !dbg !1494
  store i32 %79, i32* %11, align 4, !dbg !1494
  br label %47, !dbg !1496, !llvm.loop !1497

; <label>:80:                                     ; preds = %47
  %81 = load double, double* %9, align 8, !dbg !1499
  %82 = load double, double* %10, align 8, !dbg !1500
  %83 = fadd double %81, %82, !dbg !1501
  %84 = load double, double* %7, align 8, !dbg !1502
  %85 = fsub double %83, %84, !dbg !1503
  ret double %85, !dbg !1504
}

; Function Attrs: nounwind uwtable
define internal double @seor(i32, double, double, i32) #0 !dbg !1505 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1506, metadata !68), !dbg !1507
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1508, metadata !68), !dbg !1509
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1510, metadata !68), !dbg !1511
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1512, metadata !68), !dbg !1513
  call void @llvm.dbg.declare(metadata double* %9, metadata !1514, metadata !68), !dbg !1515
  call void @llvm.dbg.declare(metadata double* %10, metadata !1516, metadata !68), !dbg !1517
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1518, metadata !68), !dbg !1519
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1520, metadata !68), !dbg !1521
  %13 = load double, double* %6, align 8, !dbg !1522
  %14 = fmul double -1.000000e+00, %13, !dbg !1523
  store double %14, double* %9, align 8, !dbg !1524
  %15 = load i32, i32* %5, align 4, !dbg !1525
  %16 = sitofp i32 %15 to float, !dbg !1526
  %17 = fpext float %16 to double, !dbg !1526
  %18 = fdiv double %17, 2.000000e+00, !dbg !1527
  %19 = fsub double %18, 5.000000e-01, !dbg !1528
  %20 = fptosi double %19 to i32, !dbg !1529
  store i32 %20, i32* %12, align 4, !dbg !1530
  store i32 0, i32* %11, align 4, !dbg !1531
  br label %21, !dbg !1533

; <label>:21:                                     ; preds = %43, %4
  %22 = load i32, i32* %11, align 4, !dbg !1534
  %23 = load i32, i32* %12, align 4, !dbg !1537
  %24 = icmp slt i32 %22, %23, !dbg !1538
  br i1 %24, label %25, label %46, !dbg !1539

; <label>:25:                                     ; preds = %21
  %26 = load double, double* %6, align 8, !dbg !1540
  %27 = load double, double* %6, align 8, !dbg !1541
  %28 = fmul double %26, %27, !dbg !1542
  %29 = load double, double* %7, align 8, !dbg !1543
  %30 = load i32, i32* %11, align 4, !dbg !1544
  %31 = sitofp i32 %30 to double, !dbg !1544
  %32 = fmul double 2.000000e+00, %31, !dbg !1545
  %33 = fadd double %32, 1.000000e+00, !dbg !1546
  %34 = load i32, i32* %11, align 4, !dbg !1547
  %35 = sitofp i32 %34 to double, !dbg !1547
  %36 = fmul double 2.000000e+00, %35, !dbg !1548
  %37 = fadd double %36, 1.000000e+00, !dbg !1549
  %38 = fmul double %33, %37, !dbg !1550
  %39 = fsub double %29, %38, !dbg !1551
  %40 = load double, double* %9, align 8, !dbg !1552
  %41 = fsub double %39, %40, !dbg !1553
  %42 = fdiv double %28, %41, !dbg !1554
  store double %42, double* %9, align 8, !dbg !1555
  br label %43, !dbg !1556

; <label>:43:                                     ; preds = %25
  %44 = load i32, i32* %11, align 4, !dbg !1557
  %45 = add nsw i32 %44, 1, !dbg !1557
  store i32 %45, i32* %11, align 4, !dbg !1557
  br label %21, !dbg !1559, !llvm.loop !1560

; <label>:46:                                     ; preds = %21
  %47 = load i32, i32* %5, align 4, !dbg !1562
  %48 = load i32, i32* %5, align 4, !dbg !1563
  %49 = mul nsw i32 %47, %48, !dbg !1564
  %50 = sitofp i32 %49 to double, !dbg !1562
  %51 = load double, double* %9, align 8, !dbg !1565
  %52 = fadd double %51, %50, !dbg !1565
  store double %52, double* %9, align 8, !dbg !1565
  store double 0.000000e+00, double* %10, align 8, !dbg !1566
  store i32 0, i32* %11, align 4, !dbg !1567
  br label %53, !dbg !1569

; <label>:53:                                     ; preds = %83, %46
  %54 = load i32, i32* %11, align 4, !dbg !1570
  %55 = load i32, i32* %8, align 4, !dbg !1573
  %56 = icmp slt i32 %54, %55, !dbg !1574
  br i1 %56, label %57, label %86, !dbg !1575

; <label>:57:                                     ; preds = %53
  %58 = load double, double* %6, align 8, !dbg !1576
  %59 = load double, double* %6, align 8, !dbg !1577
  %60 = fmul double %58, %59, !dbg !1578
  %61 = load double, double* %7, align 8, !dbg !1579
  %62 = load i32, i32* %5, align 4, !dbg !1580
  %63 = sitofp i32 %62 to double, !dbg !1580
  %64 = load i32, i32* %8, align 4, !dbg !1581
  %65 = load i32, i32* %11, align 4, !dbg !1582
  %66 = sub nsw i32 %64, %65, !dbg !1583
  %67 = sitofp i32 %66 to double, !dbg !1584
  %68 = fmul double 2.000000e+00, %67, !dbg !1585
  %69 = fadd double %63, %68, !dbg !1586
  %70 = load i32, i32* %5, align 4, !dbg !1587
  %71 = sitofp i32 %70 to double, !dbg !1587
  %72 = load i32, i32* %8, align 4, !dbg !1588
  %73 = load i32, i32* %11, align 4, !dbg !1589
  %74 = sub nsw i32 %72, %73, !dbg !1590
  %75 = sitofp i32 %74 to double, !dbg !1591
  %76 = fmul double 2.000000e+00, %75, !dbg !1592
  %77 = fadd double %71, %76, !dbg !1593
  %78 = fmul double %69, %77, !dbg !1594
  %79 = fsub double %61, %78, !dbg !1595
  %80 = load double, double* %10, align 8, !dbg !1596
  %81 = fsub double %79, %80, !dbg !1597
  %82 = fdiv double %60, %81, !dbg !1598
  store double %82, double* %10, align 8, !dbg !1599
  br label %83, !dbg !1600

; <label>:83:                                     ; preds = %57
  %84 = load i32, i32* %11, align 4, !dbg !1601
  %85 = add nsw i32 %84, 1, !dbg !1601
  store i32 %85, i32* %11, align 4, !dbg !1601
  br label %53, !dbg !1603, !llvm.loop !1604

; <label>:86:                                     ; preds = %53
  %87 = load double, double* %9, align 8, !dbg !1606
  %88 = load double, double* %10, align 8, !dbg !1607
  %89 = fadd double %87, %88, !dbg !1608
  %90 = load double, double* %7, align 8, !dbg !1609
  %91 = fsub double %89, %90, !dbg !1610
  ret double %91, !dbg !1611
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_a_array(i32, i32, double, %struct.gsl_sf_mathieu_workspace*, double*) #0 !dbg !1612 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca %struct._gsl_matrix_view, align 8
  %25 = alloca %struct._gsl_matrix_view, align 8
  %26 = alloca %struct._gsl_vector_view, align 8
  %27 = alloca %struct.gsl_eigen_symmv_workspace*, align 8
  %28 = alloca %struct._gsl_matrix_view, align 8
  %29 = alloca %struct._gsl_vector_view, align 8
  %30 = alloca %struct._gsl_matrix_view, align 8
  %31 = alloca %struct._gsl_matrix_view, align 8
  %32 = alloca %struct._gsl_vector_view, align 8
  %33 = alloca %struct._gsl_matrix_view, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1677, metadata !68), !dbg !1678
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1679, metadata !68), !dbg !1680
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1681, metadata !68), !dbg !1682
  store %struct.gsl_sf_mathieu_workspace* %3, %struct.gsl_sf_mathieu_workspace** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_mathieu_workspace** %10, metadata !1683, metadata !68), !dbg !1684
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !1685, metadata !68), !dbg !1686
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1687, metadata !68), !dbg !1689
  %34 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1690
  %35 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %34, i32 0, i32 1, !dbg !1691
  %36 = load i64, i64* %35, align 8, !dbg !1691
  %37 = trunc i64 %36 to i32, !dbg !1690
  store i32 %37, i32* %12, align 4, !dbg !1689
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1692, metadata !68), !dbg !1693
  %38 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1694
  %39 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %38, i32 0, i32 2, !dbg !1695
  %40 = load i64, i64* %39, align 8, !dbg !1695
  %41 = trunc i64 %40 to i32, !dbg !1694
  store i32 %41, i32* %13, align 4, !dbg !1693
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1696, metadata !68), !dbg !1697
  %42 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1698
  %43 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %42, i32 0, i32 3, !dbg !1699
  %44 = load i32, i32* %43, align 8, !dbg !1699
  store i32 %44, i32* %14, align 4, !dbg !1697
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1700, metadata !68), !dbg !1701
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1702, metadata !68), !dbg !1703
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1704, metadata !68), !dbg !1705
  call void @llvm.dbg.declare(metadata double** %18, metadata !1706, metadata !68), !dbg !1707
  %45 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1708
  %46 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %45, i32 0, i32 10, !dbg !1709
  %47 = load double*, double** %46, align 8, !dbg !1709
  store double* %47, double** %18, align 8, !dbg !1707
  call void @llvm.dbg.declare(metadata double** %19, metadata !1710, metadata !68), !dbg !1711
  %48 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1712
  %49 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %48, i32 0, i32 8, !dbg !1713
  %50 = load double*, double** %49, align 8, !dbg !1713
  store double* %50, double** %19, align 8, !dbg !1711
  call void @llvm.dbg.declare(metadata double** %20, metadata !1714, metadata !68), !dbg !1715
  %51 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1716
  %52 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %51, i32 0, i32 9, !dbg !1717
  %53 = load double*, double** %52, align 8, !dbg !1717
  store double* %53, double** %20, align 8, !dbg !1715
  call void @llvm.dbg.declare(metadata double** %21, metadata !1718, metadata !68), !dbg !1719
  %54 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1720
  %55 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %54, i32 0, i32 11, !dbg !1721
  %56 = load double*, double** %55, align 8, !dbg !1721
  store double* %56, double** %21, align 8, !dbg !1719
  call void @llvm.dbg.declare(metadata double** %22, metadata !1722, metadata !68), !dbg !1723
  %57 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1724
  %58 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %57, i32 0, i32 12, !dbg !1725
  %59 = load double*, double** %58, align 8, !dbg !1725
  store double* %59, double** %22, align 8, !dbg !1723
  call void @llvm.dbg.declare(metadata double** %23, metadata !1726, metadata !68), !dbg !1727
  %60 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1728
  %61 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %60, i32 0, i32 6, !dbg !1729
  %62 = load double*, double** %61, align 8, !dbg !1729
  store double* %62, double** %23, align 8, !dbg !1727
  call void @llvm.dbg.declare(metadata %struct._gsl_matrix_view* %24, metadata !1730, metadata !68), !dbg !1736
  call void @llvm.dbg.declare(metadata %struct._gsl_matrix_view* %25, metadata !1737, metadata !68), !dbg !1738
  call void @llvm.dbg.declare(metadata %struct._gsl_vector_view* %26, metadata !1739, metadata !68), !dbg !1745
  call void @llvm.dbg.declare(metadata %struct.gsl_eigen_symmv_workspace** %27, metadata !1746, metadata !68), !dbg !1747
  %63 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1748
  %64 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %63, i32 0, i32 15, !dbg !1749
  %65 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %64, align 8, !dbg !1749
  store %struct.gsl_eigen_symmv_workspace* %65, %struct.gsl_eigen_symmv_workspace** %27, align 8, !dbg !1747
  %66 = load i32, i32* %8, align 4, !dbg !1750
  %67 = sext i32 %66 to i64, !dbg !1750
  %68 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1752
  %69 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %68, i32 0, i32 0, !dbg !1753
  %70 = load i64, i64* %69, align 8, !dbg !1753
  %71 = icmp ugt i64 %67, %70, !dbg !1754
  br i1 %71, label %79, label %72, !dbg !1755

; <label>:72:                                     ; preds = %5
  %73 = load i32, i32* %8, align 4, !dbg !1756
  %74 = load i32, i32* %7, align 4, !dbg !1758
  %75 = icmp sle i32 %73, %74, !dbg !1759
  br i1 %75, label %79, label %76, !dbg !1760

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %7, align 4, !dbg !1761
  %78 = icmp slt i32 %77, 0, !dbg !1763
  br i1 %78, label %79, label %82, !dbg !1764

; <label>:79:                                     ; preds = %76, %72, %5
  br label %80, !dbg !1765, !llvm.loop !1767

; <label>:80:                                     ; preds = %79
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 723, i32 4), !dbg !1768
  store i32 4, i32* %6, align 4, !dbg !1768
  br label %476, !dbg !1768
                                                  ; No predecessors!
  br label %82, !dbg !1771

; <label>:82:                                     ; preds = %81, %76
  %83 = load double*, double** %18, align 8, !dbg !1772
  %84 = getelementptr inbounds double, double* %83, i64 0, !dbg !1772
  store double 0.000000e+00, double* %84, align 8, !dbg !1773
  %85 = load double*, double** %18, align 8, !dbg !1774
  %86 = getelementptr inbounds double, double* %85, i64 1, !dbg !1774
  store double 0.000000e+00, double* %86, align 8, !dbg !1775
  %87 = load double, double* %9, align 8, !dbg !1776
  %88 = load double*, double** %18, align 8, !dbg !1777
  %89 = getelementptr inbounds double, double* %88, i64 2, !dbg !1777
  store double %87, double* %89, align 8, !dbg !1778
  store i32 1, i32* %15, align 4, !dbg !1779
  br label %90, !dbg !1781

; <label>:90:                                     ; preds = %120, %82
  %91 = load i32, i32* %15, align 4, !dbg !1782
  %92 = load i32, i32* %12, align 4, !dbg !1785
  %93 = sub i32 %92, 1, !dbg !1786
  %94 = icmp ult i32 %91, %93, !dbg !1787
  br i1 %94, label %95, label %123, !dbg !1788

; <label>:95:                                     ; preds = %90
  %96 = load double, double* %9, align 8, !dbg !1789
  %97 = load i32, i32* %15, align 4, !dbg !1791
  %98 = mul i32 3, %97, !dbg !1792
  %99 = zext i32 %98 to i64, !dbg !1793
  %100 = load double*, double** %18, align 8, !dbg !1793
  %101 = getelementptr inbounds double, double* %100, i64 %99, !dbg !1793
  store double %96, double* %101, align 8, !dbg !1794
  %102 = load i32, i32* %15, align 4, !dbg !1795
  %103 = mul i32 4, %102, !dbg !1796
  %104 = load i32, i32* %15, align 4, !dbg !1797
  %105 = mul i32 %103, %104, !dbg !1798
  %106 = uitofp i32 %105 to double, !dbg !1799
  %107 = load i32, i32* %15, align 4, !dbg !1800
  %108 = mul i32 3, %107, !dbg !1801
  %109 = add i32 %108, 1, !dbg !1802
  %110 = zext i32 %109 to i64, !dbg !1803
  %111 = load double*, double** %18, align 8, !dbg !1803
  %112 = getelementptr inbounds double, double* %111, i64 %110, !dbg !1803
  store double %106, double* %112, align 8, !dbg !1804
  %113 = load double, double* %9, align 8, !dbg !1805
  %114 = load i32, i32* %15, align 4, !dbg !1806
  %115 = mul i32 3, %114, !dbg !1807
  %116 = add i32 %115, 2, !dbg !1808
  %117 = zext i32 %116 to i64, !dbg !1809
  %118 = load double*, double** %18, align 8, !dbg !1809
  %119 = getelementptr inbounds double, double* %118, i64 %117, !dbg !1809
  store double %113, double* %119, align 8, !dbg !1810
  br label %120, !dbg !1811

; <label>:120:                                    ; preds = %95
  %121 = load i32, i32* %15, align 4, !dbg !1812
  %122 = add i32 %121, 1, !dbg !1812
  store i32 %122, i32* %15, align 4, !dbg !1812
  br label %90, !dbg !1814, !llvm.loop !1815

; <label>:123:                                    ; preds = %90
  %124 = load double, double* %9, align 8, !dbg !1817
  %125 = load i32, i32* %12, align 4, !dbg !1818
  %126 = mul i32 3, %125, !dbg !1819
  %127 = sub i32 %126, 3, !dbg !1820
  %128 = zext i32 %127 to i64, !dbg !1821
  %129 = load double*, double** %18, align 8, !dbg !1821
  %130 = getelementptr inbounds double, double* %129, i64 %128, !dbg !1821
  store double %124, double* %130, align 8, !dbg !1822
  %131 = load i32, i32* %12, align 4, !dbg !1823
  %132 = sub i32 %131, 1, !dbg !1824
  %133 = mul i32 4, %132, !dbg !1825
  %134 = load i32, i32* %12, align 4, !dbg !1826
  %135 = sub i32 %134, 1, !dbg !1827
  %136 = mul i32 %133, %135, !dbg !1828
  %137 = uitofp i32 %136 to double, !dbg !1829
  %138 = load i32, i32* %12, align 4, !dbg !1830
  %139 = mul i32 3, %138, !dbg !1831
  %140 = sub i32 %139, 2, !dbg !1832
  %141 = zext i32 %140 to i64, !dbg !1833
  %142 = load double*, double** %18, align 8, !dbg !1833
  %143 = getelementptr inbounds double, double* %142, i64 %141, !dbg !1833
  store double %137, double* %143, align 8, !dbg !1834
  %144 = load i32, i32* %12, align 4, !dbg !1835
  %145 = mul i32 3, %144, !dbg !1836
  %146 = sub i32 %145, 1, !dbg !1837
  %147 = zext i32 %146 to i64, !dbg !1838
  %148 = load double*, double** %18, align 8, !dbg !1838
  %149 = getelementptr inbounds double, double* %148, i64 %147, !dbg !1838
  store double 0.000000e+00, double* %149, align 8, !dbg !1839
  %150 = load double*, double** %18, align 8, !dbg !1840
  %151 = getelementptr inbounds double, double* %150, i64 3, !dbg !1840
  %152 = load double, double* %151, align 8, !dbg !1841
  %153 = fmul double %152, 2.000000e+00, !dbg !1841
  store double %153, double* %151, align 8, !dbg !1841
  %154 = load i32, i32* %12, align 4, !dbg !1842
  %155 = load double*, double** %18, align 8, !dbg !1843
  %156 = load double*, double** %19, align 8, !dbg !1844
  %157 = load double*, double** %20, align 8, !dbg !1845
  %158 = load double*, double** %21, align 8, !dbg !1846
  %159 = call i32 @figi(i32 %154, double* %155, double* %156, double* %157, double* %158), !dbg !1847
  store i32 %159, i32* %17, align 4, !dbg !1848
  %160 = load i32, i32* %17, align 4, !dbg !1849
  %161 = icmp ne i32 %160, 0, !dbg !1849
  br i1 %161, label %162, label %165, !dbg !1851

; <label>:162:                                    ; preds = %123
  br label %163, !dbg !1852, !llvm.loop !1854

; <label>:163:                                    ; preds = %162
  call void @gsl_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 748, i32 5), !dbg !1855
  store i32 5, i32* %6, align 4, !dbg !1855
  br label %476, !dbg !1855
                                                  ; No predecessors!
  br label %165, !dbg !1858

; <label>:165:                                    ; preds = %164, %123
  store i32 0, i32* %15, align 4, !dbg !1859
  br label %166, !dbg !1861

; <label>:166:                                    ; preds = %177, %165
  %167 = load i32, i32* %15, align 4, !dbg !1862
  %168 = load i32, i32* %12, align 4, !dbg !1865
  %169 = load i32, i32* %12, align 4, !dbg !1866
  %170 = mul i32 %168, %169, !dbg !1867
  %171 = icmp ult i32 %167, %170, !dbg !1868
  br i1 %171, label %172, label %180, !dbg !1869

; <label>:172:                                    ; preds = %166
  %173 = load i32, i32* %15, align 4, !dbg !1870
  %174 = zext i32 %173 to i64, !dbg !1871
  %175 = load double*, double** %22, align 8, !dbg !1871
  %176 = getelementptr inbounds double, double* %175, i64 %174, !dbg !1871
  store double 0.000000e+00, double* %176, align 8, !dbg !1872
  br label %177, !dbg !1871

; <label>:177:                                    ; preds = %172
  %178 = load i32, i32* %15, align 4, !dbg !1873
  %179 = add i32 %178, 1, !dbg !1873
  store i32 %179, i32* %15, align 4, !dbg !1873
  br label %166, !dbg !1875, !llvm.loop !1876

; <label>:180:                                    ; preds = %166
  %181 = load double*, double** %19, align 8, !dbg !1878
  %182 = getelementptr inbounds double, double* %181, i64 0, !dbg !1878
  %183 = load double, double* %182, align 8, !dbg !1878
  %184 = load double*, double** %22, align 8, !dbg !1879
  %185 = getelementptr inbounds double, double* %184, i64 0, !dbg !1879
  store double %183, double* %185, align 8, !dbg !1880
  %186 = load double*, double** %20, align 8, !dbg !1881
  %187 = getelementptr inbounds double, double* %186, i64 1, !dbg !1881
  %188 = load double, double* %187, align 8, !dbg !1881
  %189 = load double*, double** %22, align 8, !dbg !1882
  %190 = getelementptr inbounds double, double* %189, i64 1, !dbg !1882
  store double %188, double* %190, align 8, !dbg !1883
  store i32 1, i32* %15, align 4, !dbg !1884
  br label %191, !dbg !1886

; <label>:191:                                    ; preds = %239, %180
  %192 = load i32, i32* %15, align 4, !dbg !1887
  %193 = load i32, i32* %12, align 4, !dbg !1890
  %194 = sub i32 %193, 1, !dbg !1891
  %195 = icmp ult i32 %192, %194, !dbg !1892
  br i1 %195, label %196, label %242, !dbg !1893

; <label>:196:                                    ; preds = %191
  %197 = load i32, i32* %15, align 4, !dbg !1894
  %198 = zext i32 %197 to i64, !dbg !1896
  %199 = load double*, double** %20, align 8, !dbg !1896
  %200 = getelementptr inbounds double, double* %199, i64 %198, !dbg !1896
  %201 = load double, double* %200, align 8, !dbg !1896
  %202 = load i32, i32* %15, align 4, !dbg !1897
  %203 = load i32, i32* %12, align 4, !dbg !1898
  %204 = mul i32 %202, %203, !dbg !1899
  %205 = load i32, i32* %15, align 4, !dbg !1900
  %206 = add i32 %204, %205, !dbg !1901
  %207 = sub i32 %206, 1, !dbg !1902
  %208 = zext i32 %207 to i64, !dbg !1903
  %209 = load double*, double** %22, align 8, !dbg !1903
  %210 = getelementptr inbounds double, double* %209, i64 %208, !dbg !1903
  store double %201, double* %210, align 8, !dbg !1904
  %211 = load i32, i32* %15, align 4, !dbg !1905
  %212 = zext i32 %211 to i64, !dbg !1906
  %213 = load double*, double** %19, align 8, !dbg !1906
  %214 = getelementptr inbounds double, double* %213, i64 %212, !dbg !1906
  %215 = load double, double* %214, align 8, !dbg !1906
  %216 = load i32, i32* %15, align 4, !dbg !1907
  %217 = load i32, i32* %12, align 4, !dbg !1908
  %218 = mul i32 %216, %217, !dbg !1909
  %219 = load i32, i32* %15, align 4, !dbg !1910
  %220 = add i32 %218, %219, !dbg !1911
  %221 = zext i32 %220 to i64, !dbg !1912
  %222 = load double*, double** %22, align 8, !dbg !1912
  %223 = getelementptr inbounds double, double* %222, i64 %221, !dbg !1912
  store double %215, double* %223, align 8, !dbg !1913
  %224 = load i32, i32* %15, align 4, !dbg !1914
  %225 = add i32 %224, 1, !dbg !1915
  %226 = zext i32 %225 to i64, !dbg !1916
  %227 = load double*, double** %20, align 8, !dbg !1916
  %228 = getelementptr inbounds double, double* %227, i64 %226, !dbg !1916
  %229 = load double, double* %228, align 8, !dbg !1916
  %230 = load i32, i32* %15, align 4, !dbg !1917
  %231 = load i32, i32* %12, align 4, !dbg !1918
  %232 = mul i32 %230, %231, !dbg !1919
  %233 = load i32, i32* %15, align 4, !dbg !1920
  %234 = add i32 %232, %233, !dbg !1921
  %235 = add i32 %234, 1, !dbg !1922
  %236 = zext i32 %235 to i64, !dbg !1923
  %237 = load double*, double** %22, align 8, !dbg !1923
  %238 = getelementptr inbounds double, double* %237, i64 %236, !dbg !1923
  store double %229, double* %238, align 8, !dbg !1924
  br label %239, !dbg !1925

; <label>:239:                                    ; preds = %196
  %240 = load i32, i32* %15, align 4, !dbg !1926
  %241 = add i32 %240, 1, !dbg !1926
  store i32 %241, i32* %15, align 4, !dbg !1926
  br label %191, !dbg !1928, !llvm.loop !1929

; <label>:242:                                    ; preds = %191
  %243 = load i32, i32* %12, align 4, !dbg !1931
  %244 = sub i32 %243, 1, !dbg !1932
  %245 = zext i32 %244 to i64, !dbg !1933
  %246 = load double*, double** %20, align 8, !dbg !1933
  %247 = getelementptr inbounds double, double* %246, i64 %245, !dbg !1933
  %248 = load double, double* %247, align 8, !dbg !1933
  %249 = load i32, i32* %12, align 4, !dbg !1934
  %250 = load i32, i32* %12, align 4, !dbg !1935
  %251 = sub i32 %250, 1, !dbg !1936
  %252 = mul i32 %249, %251, !dbg !1937
  %253 = load i32, i32* %12, align 4, !dbg !1938
  %254 = add i32 %252, %253, !dbg !1939
  %255 = sub i32 %254, 2, !dbg !1940
  %256 = zext i32 %255 to i64, !dbg !1941
  %257 = load double*, double** %22, align 8, !dbg !1941
  %258 = getelementptr inbounds double, double* %257, i64 %256, !dbg !1941
  store double %248, double* %258, align 8, !dbg !1942
  %259 = load i32, i32* %12, align 4, !dbg !1943
  %260 = sub i32 %259, 1, !dbg !1944
  %261 = zext i32 %260 to i64, !dbg !1945
  %262 = load double*, double** %19, align 8, !dbg !1945
  %263 = getelementptr inbounds double, double* %262, i64 %261, !dbg !1945
  %264 = load double, double* %263, align 8, !dbg !1945
  %265 = load i32, i32* %12, align 4, !dbg !1946
  %266 = load i32, i32* %12, align 4, !dbg !1947
  %267 = mul i32 %265, %266, !dbg !1948
  %268 = sub i32 %267, 1, !dbg !1949
  %269 = zext i32 %268 to i64, !dbg !1950
  %270 = load double*, double** %22, align 8, !dbg !1950
  %271 = getelementptr inbounds double, double* %270, i64 %269, !dbg !1950
  store double %264, double* %271, align 8, !dbg !1951
  %272 = load double*, double** %22, align 8, !dbg !1952
  %273 = load i32, i32* %12, align 4, !dbg !1953
  %274 = zext i32 %273 to i64, !dbg !1953
  %275 = load i32, i32* %12, align 4, !dbg !1954
  %276 = zext i32 %275 to i64, !dbg !1954
  call void @gsl_matrix_view_array(%struct._gsl_matrix_view* sret %28, double* %272, i64 %274, i64 %276), !dbg !1955
  %277 = bitcast %struct._gsl_matrix_view* %24 to i8*, !dbg !1955
  %278 = bitcast %struct._gsl_matrix_view* %28 to i8*, !dbg !1955
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %277, i8* %278, i64 48, i32 8, i1 false), !dbg !1956
  %279 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1958
  %280 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %279, i32 0, i32 13, !dbg !1959
  %281 = load %struct.gsl_vector*, %struct.gsl_vector** %280, align 8, !dbg !1959
  %282 = load i32, i32* %12, align 4, !dbg !1960
  %283 = zext i32 %282 to i64, !dbg !1960
  call void @gsl_vector_subvector(%struct._gsl_vector_view* sret %29, %struct.gsl_vector* %281, i64 0, i64 %283), !dbg !1961
  %284 = bitcast %struct._gsl_vector_view* %26 to i8*, !dbg !1961
  %285 = bitcast %struct._gsl_vector_view* %29 to i8*, !dbg !1961
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %284, i8* %285, i64 40, i32 8, i1 false), !dbg !1962
  %286 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1963
  %287 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %286, i32 0, i32 14, !dbg !1964
  %288 = load %struct.gsl_matrix*, %struct.gsl_matrix** %287, align 8, !dbg !1964
  %289 = load i32, i32* %12, align 4, !dbg !1965
  %290 = zext i32 %289 to i64, !dbg !1965
  %291 = load i32, i32* %12, align 4, !dbg !1966
  %292 = zext i32 %291 to i64, !dbg !1966
  call void @gsl_matrix_submatrix(%struct._gsl_matrix_view* sret %30, %struct.gsl_matrix* %288, i64 0, i64 0, i64 %290, i64 %292), !dbg !1967
  %293 = bitcast %struct._gsl_matrix_view* %25 to i8*, !dbg !1967
  %294 = bitcast %struct._gsl_matrix_view* %30 to i8*, !dbg !1967
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %293, i8* %294, i64 48, i32 8, i1 false), !dbg !1968
  %295 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %24, i32 0, i32 0, !dbg !1969
  %296 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !1970
  %297 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %25, i32 0, i32 0, !dbg !1971
  %298 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %27, align 8, !dbg !1972
  %299 = call i32 @gsl_eigen_symmv(%struct.gsl_matrix* %295, %struct.gsl_vector* %296, %struct.gsl_matrix* %297, %struct.gsl_eigen_symmv_workspace* %298), !dbg !1973
  %300 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !1974
  %301 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %25, i32 0, i32 0, !dbg !1975
  %302 = call i32 @gsl_eigen_symmv_sort(%struct.gsl_vector* %300, %struct.gsl_matrix* %301, i32 0), !dbg !1976
  store i32 0, i32* %15, align 4, !dbg !1977
  br label %303, !dbg !1979

; <label>:303:                                    ; preds = %319, %242
  %304 = load i32, i32* %15, align 4, !dbg !1980
  %305 = load i32, i32* %12, align 4, !dbg !1983
  %306 = load i32, i32* %14, align 4, !dbg !1984
  %307 = sub i32 %305, %306, !dbg !1985
  %308 = icmp ult i32 %304, %307, !dbg !1986
  br i1 %308, label %309, label %322, !dbg !1987

; <label>:309:                                    ; preds = %303
  %310 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !1988
  %311 = load i32, i32* %15, align 4, !dbg !1989
  %312 = zext i32 %311 to i64, !dbg !1989
  %313 = call double @gsl_vector_get(%struct.gsl_vector* %310, i64 %312), !dbg !1990
  %314 = load i32, i32* %15, align 4, !dbg !1991
  %315 = mul i32 2, %314, !dbg !1992
  %316 = zext i32 %315 to i64, !dbg !1993
  %317 = load double*, double** %23, align 8, !dbg !1993
  %318 = getelementptr inbounds double, double* %317, i64 %316, !dbg !1993
  store double %313, double* %318, align 8, !dbg !1994
  br label %319, !dbg !1993

; <label>:319:                                    ; preds = %309
  %320 = load i32, i32* %15, align 4, !dbg !1995
  %321 = add i32 %320, 1, !dbg !1995
  store i32 %321, i32* %15, align 4, !dbg !1995
  br label %303, !dbg !1997, !llvm.loop !1998

; <label>:322:                                    ; preds = %303
  store i32 0, i32* %15, align 4, !dbg !2000
  br label %323, !dbg !2002

; <label>:323:                                    ; preds = %334, %322
  %324 = load i32, i32* %15, align 4, !dbg !2003
  %325 = load i32, i32* %13, align 4, !dbg !2006
  %326 = load i32, i32* %13, align 4, !dbg !2007
  %327 = mul i32 %325, %326, !dbg !2008
  %328 = icmp ult i32 %324, %327, !dbg !2009
  br i1 %328, label %329, label %337, !dbg !2010

; <label>:329:                                    ; preds = %323
  %330 = load i32, i32* %15, align 4, !dbg !2011
  %331 = zext i32 %330 to i64, !dbg !2012
  %332 = load double*, double** %22, align 8, !dbg !2012
  %333 = getelementptr inbounds double, double* %332, i64 %331, !dbg !2012
  store double 0.000000e+00, double* %333, align 8, !dbg !2013
  br label %334, !dbg !2012

; <label>:334:                                    ; preds = %329
  %335 = load i32, i32* %15, align 4, !dbg !2014
  %336 = add i32 %335, 1, !dbg !2014
  store i32 %336, i32* %15, align 4, !dbg !2014
  br label %323, !dbg !2016, !llvm.loop !2017

; <label>:337:                                    ; preds = %323
  store i32 0, i32* %15, align 4, !dbg !2019
  br label %338, !dbg !2021

; <label>:338:                                    ; preds = %394, %337
  %339 = load i32, i32* %15, align 4, !dbg !2022
  %340 = load i32, i32* %13, align 4, !dbg !2025
  %341 = icmp ult i32 %339, %340, !dbg !2026
  br i1 %341, label %342, label %397, !dbg !2027

; <label>:342:                                    ; preds = %338
  store i32 0, i32* %16, align 4, !dbg !2028
  br label %343, !dbg !2030

; <label>:343:                                    ; preds = %390, %342
  %344 = load i32, i32* %16, align 4, !dbg !2031
  %345 = load i32, i32* %13, align 4, !dbg !2034
  %346 = icmp ult i32 %344, %345, !dbg !2035
  br i1 %346, label %347, label %393, !dbg !2036

; <label>:347:                                    ; preds = %343
  %348 = load i32, i32* %15, align 4, !dbg !2037
  %349 = load i32, i32* %16, align 4, !dbg !2040
  %350 = icmp eq i32 %348, %349, !dbg !2041
  br i1 %350, label %351, label %368, !dbg !2042

; <label>:351:                                    ; preds = %347
  %352 = load i32, i32* %15, align 4, !dbg !2043
  %353 = mul i32 2, %352, !dbg !2044
  %354 = add i32 %353, 1, !dbg !2045
  %355 = load i32, i32* %15, align 4, !dbg !2046
  %356 = mul i32 2, %355, !dbg !2047
  %357 = add i32 %356, 1, !dbg !2048
  %358 = mul i32 %354, %357, !dbg !2049
  %359 = uitofp i32 %358 to double, !dbg !2050
  %360 = load i32, i32* %15, align 4, !dbg !2051
  %361 = load i32, i32* %13, align 4, !dbg !2052
  %362 = mul i32 %360, %361, !dbg !2053
  %363 = load i32, i32* %16, align 4, !dbg !2054
  %364 = add i32 %362, %363, !dbg !2055
  %365 = zext i32 %364 to i64, !dbg !2056
  %366 = load double*, double** %22, align 8, !dbg !2056
  %367 = getelementptr inbounds double, double* %366, i64 %365, !dbg !2056
  store double %359, double* %367, align 8, !dbg !2057
  br label %389, !dbg !2056

; <label>:368:                                    ; preds = %347
  %369 = load i32, i32* %15, align 4, !dbg !2058
  %370 = load i32, i32* %16, align 4, !dbg !2060
  %371 = add i32 %370, 1, !dbg !2061
  %372 = icmp eq i32 %369, %371, !dbg !2062
  br i1 %372, label %378, label %373, !dbg !2063

; <label>:373:                                    ; preds = %368
  %374 = load i32, i32* %15, align 4, !dbg !2064
  %375 = add i32 %374, 1, !dbg !2066
  %376 = load i32, i32* %16, align 4, !dbg !2067
  %377 = icmp eq i32 %375, %376, !dbg !2068
  br i1 %377, label %378, label %388, !dbg !2069

; <label>:378:                                    ; preds = %373, %368
  %379 = load double, double* %9, align 8, !dbg !2070
  %380 = load i32, i32* %15, align 4, !dbg !2071
  %381 = load i32, i32* %13, align 4, !dbg !2072
  %382 = mul i32 %380, %381, !dbg !2073
  %383 = load i32, i32* %16, align 4, !dbg !2074
  %384 = add i32 %382, %383, !dbg !2075
  %385 = zext i32 %384 to i64, !dbg !2076
  %386 = load double*, double** %22, align 8, !dbg !2076
  %387 = getelementptr inbounds double, double* %386, i64 %385, !dbg !2076
  store double %379, double* %387, align 8, !dbg !2077
  br label %388, !dbg !2076

; <label>:388:                                    ; preds = %378, %373
  br label %389

; <label>:389:                                    ; preds = %388, %351
  br label %390, !dbg !2078

; <label>:390:                                    ; preds = %389
  %391 = load i32, i32* %16, align 4, !dbg !2079
  %392 = add i32 %391, 1, !dbg !2079
  store i32 %392, i32* %16, align 4, !dbg !2079
  br label %343, !dbg !2081, !llvm.loop !2082

; <label>:393:                                    ; preds = %343
  br label %394, !dbg !2084

; <label>:394:                                    ; preds = %393
  %395 = load i32, i32* %15, align 4, !dbg !2086
  %396 = add i32 %395, 1, !dbg !2086
  store i32 %396, i32* %15, align 4, !dbg !2086
  br label %338, !dbg !2088, !llvm.loop !2089

; <label>:397:                                    ; preds = %338
  %398 = load double, double* %9, align 8, !dbg !2091
  %399 = load double*, double** %22, align 8, !dbg !2092
  %400 = getelementptr inbounds double, double* %399, i64 0, !dbg !2092
  %401 = load double, double* %400, align 8, !dbg !2093
  %402 = fadd double %401, %398, !dbg !2093
  store double %402, double* %400, align 8, !dbg !2093
  %403 = load double*, double** %22, align 8, !dbg !2094
  %404 = load i32, i32* %13, align 4, !dbg !2095
  %405 = zext i32 %404 to i64, !dbg !2095
  %406 = load i32, i32* %13, align 4, !dbg !2096
  %407 = zext i32 %406 to i64, !dbg !2096
  call void @gsl_matrix_view_array(%struct._gsl_matrix_view* sret %31, double* %403, i64 %405, i64 %407), !dbg !2097
  %408 = bitcast %struct._gsl_matrix_view* %24 to i8*, !dbg !2097
  %409 = bitcast %struct._gsl_matrix_view* %31 to i8*, !dbg !2097
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %408, i8* %409, i64 48, i32 8, i1 false), !dbg !2098
  %410 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2099
  %411 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %410, i32 0, i32 13, !dbg !2100
  %412 = load %struct.gsl_vector*, %struct.gsl_vector** %411, align 8, !dbg !2100
  %413 = load i32, i32* %13, align 4, !dbg !2101
  %414 = zext i32 %413 to i64, !dbg !2101
  call void @gsl_vector_subvector(%struct._gsl_vector_view* sret %32, %struct.gsl_vector* %412, i64 0, i64 %414), !dbg !2102
  %415 = bitcast %struct._gsl_vector_view* %26 to i8*, !dbg !2102
  %416 = bitcast %struct._gsl_vector_view* %32 to i8*, !dbg !2102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %415, i8* %416, i64 40, i32 8, i1 false), !dbg !2103
  %417 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2104
  %418 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %417, i32 0, i32 14, !dbg !2105
  %419 = load %struct.gsl_matrix*, %struct.gsl_matrix** %418, align 8, !dbg !2105
  %420 = load i32, i32* %13, align 4, !dbg !2106
  %421 = zext i32 %420 to i64, !dbg !2106
  %422 = load i32, i32* %13, align 4, !dbg !2107
  %423 = zext i32 %422 to i64, !dbg !2107
  call void @gsl_matrix_submatrix(%struct._gsl_matrix_view* sret %33, %struct.gsl_matrix* %419, i64 0, i64 0, i64 %421, i64 %423), !dbg !2108
  %424 = bitcast %struct._gsl_matrix_view* %25 to i8*, !dbg !2108
  %425 = bitcast %struct._gsl_matrix_view* %33 to i8*, !dbg !2108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %424, i8* %425, i64 48, i32 8, i1 false), !dbg !2109
  %426 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %24, i32 0, i32 0, !dbg !2110
  %427 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !2111
  %428 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %25, i32 0, i32 0, !dbg !2112
  %429 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %27, align 8, !dbg !2113
  %430 = call i32 @gsl_eigen_symmv(%struct.gsl_matrix* %426, %struct.gsl_vector* %427, %struct.gsl_matrix* %428, %struct.gsl_eigen_symmv_workspace* %429), !dbg !2114
  %431 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !2115
  %432 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %25, i32 0, i32 0, !dbg !2116
  %433 = call i32 @gsl_eigen_symmv_sort(%struct.gsl_vector* %431, %struct.gsl_matrix* %432, i32 0), !dbg !2117
  store i32 0, i32* %15, align 4, !dbg !2118
  br label %434, !dbg !2120

; <label>:434:                                    ; preds = %451, %397
  %435 = load i32, i32* %15, align 4, !dbg !2121
  %436 = load i32, i32* %13, align 4, !dbg !2124
  %437 = load i32, i32* %14, align 4, !dbg !2125
  %438 = sub i32 %436, %437, !dbg !2126
  %439 = icmp ult i32 %435, %438, !dbg !2127
  br i1 %439, label %440, label %454, !dbg !2128

; <label>:440:                                    ; preds = %434
  %441 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !2129
  %442 = load i32, i32* %15, align 4, !dbg !2130
  %443 = zext i32 %442 to i64, !dbg !2130
  %444 = call double @gsl_vector_get(%struct.gsl_vector* %441, i64 %443), !dbg !2131
  %445 = load i32, i32* %15, align 4, !dbg !2132
  %446 = mul i32 2, %445, !dbg !2133
  %447 = add i32 %446, 1, !dbg !2134
  %448 = zext i32 %447 to i64, !dbg !2135
  %449 = load double*, double** %23, align 8, !dbg !2135
  %450 = getelementptr inbounds double, double* %449, i64 %448, !dbg !2135
  store double %444, double* %450, align 8, !dbg !2136
  br label %451, !dbg !2135

; <label>:451:                                    ; preds = %440
  %452 = load i32, i32* %15, align 4, !dbg !2137
  %453 = add i32 %452, 1, !dbg !2137
  store i32 %453, i32* %15, align 4, !dbg !2137
  br label %434, !dbg !2139, !llvm.loop !2140

; <label>:454:                                    ; preds = %434
  %455 = load i32, i32* %7, align 4, !dbg !2142
  store i32 %455, i32* %15, align 4, !dbg !2144
  br label %456, !dbg !2145

; <label>:456:                                    ; preds = %472, %454
  %457 = load i32, i32* %15, align 4, !dbg !2146
  %458 = load i32, i32* %8, align 4, !dbg !2149
  %459 = icmp ule i32 %457, %458, !dbg !2150
  br i1 %459, label %460, label %475, !dbg !2151

; <label>:460:                                    ; preds = %456
  %461 = load i32, i32* %15, align 4, !dbg !2152
  %462 = zext i32 %461 to i64, !dbg !2154
  %463 = load double*, double** %23, align 8, !dbg !2154
  %464 = getelementptr inbounds double, double* %463, i64 %462, !dbg !2154
  %465 = load double, double* %464, align 8, !dbg !2154
  %466 = load i32, i32* %15, align 4, !dbg !2155
  %467 = load i32, i32* %7, align 4, !dbg !2156
  %468 = sub i32 %466, %467, !dbg !2157
  %469 = zext i32 %468 to i64, !dbg !2158
  %470 = load double*, double** %11, align 8, !dbg !2158
  %471 = getelementptr inbounds double, double* %470, i64 %469, !dbg !2158
  store double %465, double* %471, align 8, !dbg !2159
  br label %472, !dbg !2160

; <label>:472:                                    ; preds = %460
  %473 = load i32, i32* %15, align 4, !dbg !2161
  %474 = add i32 %473, 1, !dbg !2161
  store i32 %474, i32* %15, align 4, !dbg !2161
  br label %456, !dbg !2163, !llvm.loop !2164

; <label>:475:                                    ; preds = %456
  store i32 0, i32* %6, align 4, !dbg !2166
  br label %476, !dbg !2166

; <label>:476:                                    ; preds = %475, %163, %80
  %477 = load i32, i32* %6, align 4, !dbg !2167
  ret i32 %477, !dbg !2167
}

; Function Attrs: nounwind uwtable
define internal i32 @figi(i32, double*, double*, double*, double*) #0 !dbg !2168 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2171, metadata !68), !dbg !2172
  store double* %1, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !2173, metadata !68), !dbg !2174
  store double* %2, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !2175, metadata !68), !dbg !2176
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !2177, metadata !68), !dbg !2178
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !2179, metadata !68), !dbg !2180
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2181, metadata !68), !dbg !2182
  store i32 0, i32* %12, align 4, !dbg !2183
  br label %13, !dbg !2185

; <label>:13:                                     ; preds = %104, %5
  %14 = load i32, i32* %12, align 4, !dbg !2186
  %15 = load i32, i32* %7, align 4, !dbg !2189
  %16 = icmp slt i32 %14, %15, !dbg !2190
  br i1 %16, label %17, label %107, !dbg !2191

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %12, align 4, !dbg !2192
  %19 = icmp ne i32 %18, 0, !dbg !2195
  br i1 %19, label %20, label %92, !dbg !2196

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !2197
  %22 = mul nsw i32 3, %21, !dbg !2199
  %23 = sext i32 %22 to i64, !dbg !2200
  %24 = load double*, double** %8, align 8, !dbg !2200
  %25 = getelementptr inbounds double, double* %24, i64 %23, !dbg !2200
  %26 = load double, double* %25, align 8, !dbg !2200
  %27 = load i32, i32* %12, align 4, !dbg !2201
  %28 = sub nsw i32 %27, 1, !dbg !2202
  %29 = mul nsw i32 3, %28, !dbg !2203
  %30 = add nsw i32 %29, 2, !dbg !2204
  %31 = sext i32 %30 to i64, !dbg !2205
  %32 = load double*, double** %8, align 8, !dbg !2205
  %33 = getelementptr inbounds double, double* %32, i64 %31, !dbg !2205
  %34 = load double, double* %33, align 8, !dbg !2205
  %35 = fmul double %26, %34, !dbg !2206
  %36 = load i32, i32* %12, align 4, !dbg !2207
  %37 = sext i32 %36 to i64, !dbg !2208
  %38 = load double*, double** %11, align 8, !dbg !2208
  %39 = getelementptr inbounds double, double* %38, i64 %37, !dbg !2208
  store double %35, double* %39, align 8, !dbg !2209
  %40 = load i32, i32* %12, align 4, !dbg !2210
  %41 = sext i32 %40 to i64, !dbg !2212
  %42 = load double*, double** %11, align 8, !dbg !2212
  %43 = getelementptr inbounds double, double* %42, i64 %41, !dbg !2212
  %44 = load double, double* %43, align 8, !dbg !2212
  %45 = fcmp olt double %44, 0.000000e+00, !dbg !2213
  br i1 %45, label %46, label %50, !dbg !2214

; <label>:46:                                     ; preds = %20
  %47 = load i32, i32* %7, align 4, !dbg !2215
  %48 = load i32, i32* %12, align 4, !dbg !2217
  %49 = add nsw i32 %47, %48, !dbg !2218
  store i32 %49, i32* %6, align 4, !dbg !2219
  br label %108, !dbg !2219

; <label>:50:                                     ; preds = %20
  %51 = load i32, i32* %12, align 4, !dbg !2220
  %52 = sext i32 %51 to i64, !dbg !2222
  %53 = load double*, double** %11, align 8, !dbg !2222
  %54 = getelementptr inbounds double, double* %53, i64 %52, !dbg !2222
  %55 = load double, double* %54, align 8, !dbg !2222
  %56 = fcmp oeq double %55, 0.000000e+00, !dbg !2223
  br i1 %56, label %57, label %81, !dbg !2224

; <label>:57:                                     ; preds = %50
  %58 = load i32, i32* %12, align 4, !dbg !2225
  %59 = mul nsw i32 3, %58, !dbg !2227
  %60 = sext i32 %59 to i64, !dbg !2228
  %61 = load double*, double** %8, align 8, !dbg !2228
  %62 = getelementptr inbounds double, double* %61, i64 %60, !dbg !2228
  %63 = load double, double* %62, align 8, !dbg !2228
  %64 = fcmp une double %63, 0.000000e+00, !dbg !2229
  br i1 %64, label %75, label %65, !dbg !2230

; <label>:65:                                     ; preds = %57
  %66 = load i32, i32* %12, align 4, !dbg !2231
  %67 = sub nsw i32 %66, 1, !dbg !2233
  %68 = mul nsw i32 3, %67, !dbg !2234
  %69 = add nsw i32 %68, 2, !dbg !2235
  %70 = sext i32 %69 to i64, !dbg !2236
  %71 = load double*, double** %8, align 8, !dbg !2236
  %72 = getelementptr inbounds double, double* %71, i64 %70, !dbg !2236
  %73 = load double, double* %72, align 8, !dbg !2236
  %74 = fcmp une double %73, 0.000000e+00, !dbg !2237
  br i1 %74, label %75, label %81, !dbg !2238

; <label>:75:                                     ; preds = %65, %57
  %76 = load i32, i32* %7, align 4, !dbg !2239
  %77 = mul nsw i32 3, %76, !dbg !2241
  %78 = load i32, i32* %12, align 4, !dbg !2242
  %79 = add nsw i32 %77, %78, !dbg !2243
  %80 = mul nsw i32 -1, %79, !dbg !2244
  store i32 %80, i32* %6, align 4, !dbg !2245
  br label %108, !dbg !2245

; <label>:81:                                     ; preds = %65, %50
  %82 = load i32, i32* %12, align 4, !dbg !2246
  %83 = sext i32 %82 to i64, !dbg !2247
  %84 = load double*, double** %11, align 8, !dbg !2247
  %85 = getelementptr inbounds double, double* %84, i64 %83, !dbg !2247
  %86 = load double, double* %85, align 8, !dbg !2247
  %87 = call double @sqrt(double %86) #6, !dbg !2248
  %88 = load i32, i32* %12, align 4, !dbg !2249
  %89 = sext i32 %88 to i64, !dbg !2250
  %90 = load double*, double** %10, align 8, !dbg !2250
  %91 = getelementptr inbounds double, double* %90, i64 %89, !dbg !2250
  store double %87, double* %91, align 8, !dbg !2251
  br label %92, !dbg !2252

; <label>:92:                                     ; preds = %81, %17
  %93 = load i32, i32* %12, align 4, !dbg !2253
  %94 = mul nsw i32 3, %93, !dbg !2254
  %95 = add nsw i32 %94, 1, !dbg !2255
  %96 = sext i32 %95 to i64, !dbg !2256
  %97 = load double*, double** %8, align 8, !dbg !2256
  %98 = getelementptr inbounds double, double* %97, i64 %96, !dbg !2256
  %99 = load double, double* %98, align 8, !dbg !2256
  %100 = load i32, i32* %12, align 4, !dbg !2257
  %101 = sext i32 %100 to i64, !dbg !2258
  %102 = load double*, double** %9, align 8, !dbg !2258
  %103 = getelementptr inbounds double, double* %102, i64 %101, !dbg !2258
  store double %99, double* %103, align 8, !dbg !2259
  br label %104, !dbg !2260

; <label>:104:                                    ; preds = %92
  %105 = load i32, i32* %12, align 4, !dbg !2261
  %106 = add nsw i32 %105, 1, !dbg !2261
  store i32 %106, i32* %12, align 4, !dbg !2261
  br label %13, !dbg !2263, !llvm.loop !2264

; <label>:107:                                    ; preds = %13
  store i32 0, i32* %6, align 4, !dbg !2266
  br label %108, !dbg !2266

; <label>:108:                                    ; preds = %107, %75, %46
  %109 = load i32, i32* %6, align 4, !dbg !2267
  ret i32 %109, !dbg !2267
}

declare void @gsl_matrix_view_array(%struct._gsl_matrix_view* sret, double*, i64, i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @gsl_vector_subvector(%struct._gsl_vector_view* sret, %struct.gsl_vector*, i64, i64) #3

declare void @gsl_matrix_submatrix(%struct._gsl_matrix_view* sret, %struct.gsl_matrix*, i64, i64, i64, i64) #3

declare i32 @gsl_eigen_symmv(%struct.gsl_matrix*, %struct.gsl_vector*, %struct.gsl_matrix*, %struct.gsl_eigen_symmv_workspace*) #3

declare i32 @gsl_eigen_symmv_sort(%struct.gsl_vector*, %struct.gsl_matrix*, i32) #3

declare double @gsl_vector_get(%struct.gsl_vector*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_b_array(i32, i32, double, %struct.gsl_sf_mathieu_workspace*, double*) #0 !dbg !2268 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca %struct._gsl_matrix_view, align 8
  %20 = alloca %struct._gsl_matrix_view, align 8
  %21 = alloca %struct._gsl_vector_view, align 8
  %22 = alloca %struct.gsl_eigen_symmv_workspace*, align 8
  %23 = alloca %struct._gsl_matrix_view, align 8
  %24 = alloca %struct._gsl_vector_view, align 8
  %25 = alloca %struct._gsl_matrix_view, align 8
  %26 = alloca %struct._gsl_matrix_view, align 8
  %27 = alloca %struct._gsl_vector_view, align 8
  %28 = alloca %struct._gsl_matrix_view, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2269, metadata !68), !dbg !2270
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2271, metadata !68), !dbg !2272
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2273, metadata !68), !dbg !2274
  store %struct.gsl_sf_mathieu_workspace* %3, %struct.gsl_sf_mathieu_workspace** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_mathieu_workspace** %10, metadata !2275, metadata !68), !dbg !2276
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !2277, metadata !68), !dbg !2278
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2279, metadata !68), !dbg !2280
  %29 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2281
  %30 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %29, i32 0, i32 1, !dbg !2282
  %31 = load i64, i64* %30, align 8, !dbg !2282
  %32 = sub i64 %31, 1, !dbg !2283
  %33 = trunc i64 %32 to i32, !dbg !2281
  store i32 %33, i32* %12, align 4, !dbg !2280
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2284, metadata !68), !dbg !2285
  %34 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2286
  %35 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %34, i32 0, i32 2, !dbg !2287
  %36 = load i64, i64* %35, align 8, !dbg !2287
  %37 = trunc i64 %36 to i32, !dbg !2286
  store i32 %37, i32* %13, align 4, !dbg !2285
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2288, metadata !68), !dbg !2289
  %38 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2290
  %39 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %38, i32 0, i32 3, !dbg !2291
  %40 = load i32, i32* %39, align 8, !dbg !2291
  store i32 %40, i32* %14, align 4, !dbg !2289
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2292, metadata !68), !dbg !2293
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2294, metadata !68), !dbg !2295
  call void @llvm.dbg.declare(metadata double** %17, metadata !2296, metadata !68), !dbg !2297
  %41 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2298
  %42 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %41, i32 0, i32 12, !dbg !2299
  %43 = load double*, double** %42, align 8, !dbg !2299
  store double* %43, double** %17, align 8, !dbg !2297
  call void @llvm.dbg.declare(metadata double** %18, metadata !2300, metadata !68), !dbg !2301
  %44 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2302
  %45 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %44, i32 0, i32 7, !dbg !2303
  %46 = load double*, double** %45, align 8, !dbg !2303
  store double* %46, double** %18, align 8, !dbg !2301
  call void @llvm.dbg.declare(metadata %struct._gsl_matrix_view* %19, metadata !2304, metadata !68), !dbg !2305
  call void @llvm.dbg.declare(metadata %struct._gsl_matrix_view* %20, metadata !2306, metadata !68), !dbg !2307
  call void @llvm.dbg.declare(metadata %struct._gsl_vector_view* %21, metadata !2308, metadata !68), !dbg !2309
  call void @llvm.dbg.declare(metadata %struct.gsl_eigen_symmv_workspace** %22, metadata !2310, metadata !68), !dbg !2311
  %47 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2312
  %48 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %47, i32 0, i32 15, !dbg !2313
  %49 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %48, align 8, !dbg !2313
  store %struct.gsl_eigen_symmv_workspace* %49, %struct.gsl_eigen_symmv_workspace** %22, align 8, !dbg !2311
  %50 = load i32, i32* %8, align 4, !dbg !2314
  %51 = sext i32 %50 to i64, !dbg !2314
  %52 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2316
  %53 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %52, i32 0, i32 0, !dbg !2317
  %54 = load i64, i64* %53, align 8, !dbg !2317
  %55 = icmp ugt i64 %51, %54, !dbg !2318
  br i1 %55, label %63, label %56, !dbg !2319

; <label>:56:                                     ; preds = %5
  %57 = load i32, i32* %8, align 4, !dbg !2320
  %58 = load i32, i32* %7, align 4, !dbg !2322
  %59 = icmp sle i32 %57, %58, !dbg !2323
  br i1 %59, label %63, label %60, !dbg !2324

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %7, align 4, !dbg !2325
  %62 = icmp slt i32 %61, 0, !dbg !2327
  br i1 %62, label %63, label %66, !dbg !2328

; <label>:63:                                     ; preds = %60, %56, %5
  br label %64, !dbg !2329, !llvm.loop !2331

; <label>:64:                                     ; preds = %63
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 819, i32 4), !dbg !2332
  store i32 4, i32* %6, align 4, !dbg !2332
  br label %348, !dbg !2332
                                                  ; No predecessors!
  br label %66, !dbg !2335

; <label>:66:                                     ; preds = %65, %60
  store i32 0, i32* %15, align 4, !dbg !2336
  br label %67, !dbg !2338

; <label>:67:                                     ; preds = %78, %66
  %68 = load i32, i32* %15, align 4, !dbg !2339
  %69 = load i32, i32* %12, align 4, !dbg !2342
  %70 = load i32, i32* %12, align 4, !dbg !2343
  %71 = mul i32 %69, %70, !dbg !2344
  %72 = icmp ult i32 %68, %71, !dbg !2345
  br i1 %72, label %73, label %81, !dbg !2346

; <label>:73:                                     ; preds = %67
  %74 = load i32, i32* %15, align 4, !dbg !2347
  %75 = zext i32 %74 to i64, !dbg !2348
  %76 = load double*, double** %17, align 8, !dbg !2348
  %77 = getelementptr inbounds double, double* %76, i64 %75, !dbg !2348
  store double 0.000000e+00, double* %77, align 8, !dbg !2349
  br label %78, !dbg !2348

; <label>:78:                                     ; preds = %73
  %79 = load i32, i32* %15, align 4, !dbg !2350
  %80 = add i32 %79, 1, !dbg !2350
  store i32 %80, i32* %15, align 4, !dbg !2350
  br label %67, !dbg !2352, !llvm.loop !2353

; <label>:81:                                     ; preds = %67
  store i32 0, i32* %15, align 4, !dbg !2355
  br label %82, !dbg !2357

; <label>:82:                                     ; preds = %137, %81
  %83 = load i32, i32* %15, align 4, !dbg !2358
  %84 = load i32, i32* %12, align 4, !dbg !2361
  %85 = icmp ult i32 %83, %84, !dbg !2362
  br i1 %85, label %86, label %140, !dbg !2363

; <label>:86:                                     ; preds = %82
  store i32 0, i32* %16, align 4, !dbg !2364
  br label %87, !dbg !2366

; <label>:87:                                     ; preds = %133, %86
  %88 = load i32, i32* %16, align 4, !dbg !2367
  %89 = load i32, i32* %12, align 4, !dbg !2370
  %90 = icmp ult i32 %88, %89, !dbg !2371
  br i1 %90, label %91, label %136, !dbg !2372

; <label>:91:                                     ; preds = %87
  %92 = load i32, i32* %15, align 4, !dbg !2373
  %93 = load i32, i32* %16, align 4, !dbg !2376
  %94 = icmp eq i32 %92, %93, !dbg !2377
  br i1 %94, label %95, label %111, !dbg !2378

; <label>:95:                                     ; preds = %91
  %96 = load i32, i32* %15, align 4, !dbg !2379
  %97 = add i32 %96, 1, !dbg !2380
  %98 = mul i32 4, %97, !dbg !2381
  %99 = load i32, i32* %15, align 4, !dbg !2382
  %100 = add i32 %99, 1, !dbg !2383
  %101 = mul i32 %98, %100, !dbg !2384
  %102 = uitofp i32 %101 to double, !dbg !2385
  %103 = load i32, i32* %15, align 4, !dbg !2386
  %104 = load i32, i32* %12, align 4, !dbg !2387
  %105 = mul i32 %103, %104, !dbg !2388
  %106 = load i32, i32* %16, align 4, !dbg !2389
  %107 = add i32 %105, %106, !dbg !2390
  %108 = zext i32 %107 to i64, !dbg !2391
  %109 = load double*, double** %17, align 8, !dbg !2391
  %110 = getelementptr inbounds double, double* %109, i64 %108, !dbg !2391
  store double %102, double* %110, align 8, !dbg !2392
  br label %132, !dbg !2391

; <label>:111:                                    ; preds = %91
  %112 = load i32, i32* %15, align 4, !dbg !2393
  %113 = load i32, i32* %16, align 4, !dbg !2395
  %114 = add i32 %113, 1, !dbg !2396
  %115 = icmp eq i32 %112, %114, !dbg !2397
  br i1 %115, label %121, label %116, !dbg !2398

; <label>:116:                                    ; preds = %111
  %117 = load i32, i32* %15, align 4, !dbg !2399
  %118 = add i32 %117, 1, !dbg !2401
  %119 = load i32, i32* %16, align 4, !dbg !2402
  %120 = icmp eq i32 %118, %119, !dbg !2403
  br i1 %120, label %121, label %131, !dbg !2404

; <label>:121:                                    ; preds = %116, %111
  %122 = load double, double* %9, align 8, !dbg !2405
  %123 = load i32, i32* %15, align 4, !dbg !2406
  %124 = load i32, i32* %12, align 4, !dbg !2407
  %125 = mul i32 %123, %124, !dbg !2408
  %126 = load i32, i32* %16, align 4, !dbg !2409
  %127 = add i32 %125, %126, !dbg !2410
  %128 = zext i32 %127 to i64, !dbg !2411
  %129 = load double*, double** %17, align 8, !dbg !2411
  %130 = getelementptr inbounds double, double* %129, i64 %128, !dbg !2411
  store double %122, double* %130, align 8, !dbg !2412
  br label %131, !dbg !2411

; <label>:131:                                    ; preds = %121, %116
  br label %132

; <label>:132:                                    ; preds = %131, %95
  br label %133, !dbg !2413

; <label>:133:                                    ; preds = %132
  %134 = load i32, i32* %16, align 4, !dbg !2414
  %135 = add i32 %134, 1, !dbg !2414
  store i32 %135, i32* %16, align 4, !dbg !2414
  br label %87, !dbg !2416, !llvm.loop !2417

; <label>:136:                                    ; preds = %87
  br label %137, !dbg !2419

; <label>:137:                                    ; preds = %136
  %138 = load i32, i32* %15, align 4, !dbg !2421
  %139 = add i32 %138, 1, !dbg !2421
  store i32 %139, i32* %15, align 4, !dbg !2421
  br label %82, !dbg !2423, !llvm.loop !2424

; <label>:140:                                    ; preds = %82
  %141 = load double*, double** %17, align 8, !dbg !2426
  %142 = load i32, i32* %12, align 4, !dbg !2427
  %143 = zext i32 %142 to i64, !dbg !2427
  %144 = load i32, i32* %12, align 4, !dbg !2428
  %145 = zext i32 %144 to i64, !dbg !2428
  call void @gsl_matrix_view_array(%struct._gsl_matrix_view* sret %23, double* %141, i64 %143, i64 %145), !dbg !2429
  %146 = bitcast %struct._gsl_matrix_view* %19 to i8*, !dbg !2429
  %147 = bitcast %struct._gsl_matrix_view* %23 to i8*, !dbg !2429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %146, i8* %147, i64 48, i32 8, i1 false), !dbg !2430
  %148 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2432
  %149 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %148, i32 0, i32 13, !dbg !2433
  %150 = load %struct.gsl_vector*, %struct.gsl_vector** %149, align 8, !dbg !2433
  %151 = load i32, i32* %12, align 4, !dbg !2434
  %152 = zext i32 %151 to i64, !dbg !2434
  call void @gsl_vector_subvector(%struct._gsl_vector_view* sret %24, %struct.gsl_vector* %150, i64 0, i64 %152), !dbg !2435
  %153 = bitcast %struct._gsl_vector_view* %21 to i8*, !dbg !2435
  %154 = bitcast %struct._gsl_vector_view* %24 to i8*, !dbg !2435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %153, i8* %154, i64 40, i32 8, i1 false), !dbg !2436
  %155 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2437
  %156 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %155, i32 0, i32 14, !dbg !2438
  %157 = load %struct.gsl_matrix*, %struct.gsl_matrix** %156, align 8, !dbg !2438
  %158 = load i32, i32* %12, align 4, !dbg !2439
  %159 = zext i32 %158 to i64, !dbg !2439
  %160 = load i32, i32* %12, align 4, !dbg !2440
  %161 = zext i32 %160 to i64, !dbg !2440
  call void @gsl_matrix_submatrix(%struct._gsl_matrix_view* sret %25, %struct.gsl_matrix* %157, i64 0, i64 0, i64 %159, i64 %161), !dbg !2441
  %162 = bitcast %struct._gsl_matrix_view* %20 to i8*, !dbg !2441
  %163 = bitcast %struct._gsl_matrix_view* %25 to i8*, !dbg !2441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 48, i32 8, i1 false), !dbg !2442
  %164 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %19, i32 0, i32 0, !dbg !2443
  %165 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2444
  %166 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %20, i32 0, i32 0, !dbg !2445
  %167 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %22, align 8, !dbg !2446
  %168 = call i32 @gsl_eigen_symmv(%struct.gsl_matrix* %164, %struct.gsl_vector* %165, %struct.gsl_matrix* %166, %struct.gsl_eigen_symmv_workspace* %167), !dbg !2447
  %169 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2448
  %170 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %20, i32 0, i32 0, !dbg !2449
  %171 = call i32 @gsl_eigen_symmv_sort(%struct.gsl_vector* %169, %struct.gsl_matrix* %170, i32 0), !dbg !2450
  %172 = load double*, double** %18, align 8, !dbg !2451
  %173 = getelementptr inbounds double, double* %172, i64 0, !dbg !2451
  store double 0.000000e+00, double* %173, align 8, !dbg !2452
  store i32 0, i32* %15, align 4, !dbg !2453
  br label %174, !dbg !2455

; <label>:174:                                    ; preds = %191, %140
  %175 = load i32, i32* %15, align 4, !dbg !2456
  %176 = load i32, i32* %12, align 4, !dbg !2459
  %177 = load i32, i32* %14, align 4, !dbg !2460
  %178 = sub i32 %176, %177, !dbg !2461
  %179 = icmp ult i32 %175, %178, !dbg !2462
  br i1 %179, label %180, label %194, !dbg !2463

; <label>:180:                                    ; preds = %174
  %181 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2464
  %182 = load i32, i32* %15, align 4, !dbg !2465
  %183 = zext i32 %182 to i64, !dbg !2465
  %184 = call double @gsl_vector_get(%struct.gsl_vector* %181, i64 %183), !dbg !2466
  %185 = load i32, i32* %15, align 4, !dbg !2467
  %186 = add i32 %185, 1, !dbg !2468
  %187 = mul i32 2, %186, !dbg !2469
  %188 = zext i32 %187 to i64, !dbg !2470
  %189 = load double*, double** %18, align 8, !dbg !2470
  %190 = getelementptr inbounds double, double* %189, i64 %188, !dbg !2470
  store double %184, double* %190, align 8, !dbg !2471
  br label %191, !dbg !2470

; <label>:191:                                    ; preds = %180
  %192 = load i32, i32* %15, align 4, !dbg !2472
  %193 = add i32 %192, 1, !dbg !2472
  store i32 %193, i32* %15, align 4, !dbg !2472
  br label %174, !dbg !2474, !llvm.loop !2475

; <label>:194:                                    ; preds = %174
  store i32 0, i32* %15, align 4, !dbg !2477
  br label %195, !dbg !2479

; <label>:195:                                    ; preds = %206, %194
  %196 = load i32, i32* %15, align 4, !dbg !2480
  %197 = load i32, i32* %13, align 4, !dbg !2483
  %198 = load i32, i32* %13, align 4, !dbg !2484
  %199 = mul i32 %197, %198, !dbg !2485
  %200 = icmp ult i32 %196, %199, !dbg !2486
  br i1 %200, label %201, label %209, !dbg !2487

; <label>:201:                                    ; preds = %195
  %202 = load i32, i32* %15, align 4, !dbg !2488
  %203 = zext i32 %202 to i64, !dbg !2489
  %204 = load double*, double** %17, align 8, !dbg !2489
  %205 = getelementptr inbounds double, double* %204, i64 %203, !dbg !2489
  store double 0.000000e+00, double* %205, align 8, !dbg !2490
  br label %206, !dbg !2489

; <label>:206:                                    ; preds = %201
  %207 = load i32, i32* %15, align 4, !dbg !2491
  %208 = add i32 %207, 1, !dbg !2491
  store i32 %208, i32* %15, align 4, !dbg !2491
  br label %195, !dbg !2493, !llvm.loop !2494

; <label>:209:                                    ; preds = %195
  store i32 0, i32* %15, align 4, !dbg !2496
  br label %210, !dbg !2498

; <label>:210:                                    ; preds = %266, %209
  %211 = load i32, i32* %15, align 4, !dbg !2499
  %212 = load i32, i32* %13, align 4, !dbg !2502
  %213 = icmp ult i32 %211, %212, !dbg !2503
  br i1 %213, label %214, label %269, !dbg !2504

; <label>:214:                                    ; preds = %210
  store i32 0, i32* %16, align 4, !dbg !2505
  br label %215, !dbg !2507

; <label>:215:                                    ; preds = %262, %214
  %216 = load i32, i32* %16, align 4, !dbg !2508
  %217 = load i32, i32* %13, align 4, !dbg !2511
  %218 = icmp ult i32 %216, %217, !dbg !2512
  br i1 %218, label %219, label %265, !dbg !2513

; <label>:219:                                    ; preds = %215
  %220 = load i32, i32* %15, align 4, !dbg !2514
  %221 = load i32, i32* %16, align 4, !dbg !2517
  %222 = icmp eq i32 %220, %221, !dbg !2518
  br i1 %222, label %223, label %240, !dbg !2519

; <label>:223:                                    ; preds = %219
  %224 = load i32, i32* %15, align 4, !dbg !2520
  %225 = mul i32 2, %224, !dbg !2521
  %226 = add i32 %225, 1, !dbg !2522
  %227 = load i32, i32* %15, align 4, !dbg !2523
  %228 = mul i32 2, %227, !dbg !2524
  %229 = add i32 %228, 1, !dbg !2525
  %230 = mul i32 %226, %229, !dbg !2526
  %231 = uitofp i32 %230 to double, !dbg !2527
  %232 = load i32, i32* %15, align 4, !dbg !2528
  %233 = load i32, i32* %13, align 4, !dbg !2529
  %234 = mul i32 %232, %233, !dbg !2530
  %235 = load i32, i32* %16, align 4, !dbg !2531
  %236 = add i32 %234, %235, !dbg !2532
  %237 = zext i32 %236 to i64, !dbg !2533
  %238 = load double*, double** %17, align 8, !dbg !2533
  %239 = getelementptr inbounds double, double* %238, i64 %237, !dbg !2533
  store double %231, double* %239, align 8, !dbg !2534
  br label %261, !dbg !2533

; <label>:240:                                    ; preds = %219
  %241 = load i32, i32* %15, align 4, !dbg !2535
  %242 = load i32, i32* %16, align 4, !dbg !2537
  %243 = add i32 %242, 1, !dbg !2538
  %244 = icmp eq i32 %241, %243, !dbg !2539
  br i1 %244, label %250, label %245, !dbg !2540

; <label>:245:                                    ; preds = %240
  %246 = load i32, i32* %15, align 4, !dbg !2541
  %247 = add i32 %246, 1, !dbg !2543
  %248 = load i32, i32* %16, align 4, !dbg !2544
  %249 = icmp eq i32 %247, %248, !dbg !2545
  br i1 %249, label %250, label %260, !dbg !2546

; <label>:250:                                    ; preds = %245, %240
  %251 = load double, double* %9, align 8, !dbg !2547
  %252 = load i32, i32* %15, align 4, !dbg !2548
  %253 = load i32, i32* %13, align 4, !dbg !2549
  %254 = mul i32 %252, %253, !dbg !2550
  %255 = load i32, i32* %16, align 4, !dbg !2551
  %256 = add i32 %254, %255, !dbg !2552
  %257 = zext i32 %256 to i64, !dbg !2553
  %258 = load double*, double** %17, align 8, !dbg !2553
  %259 = getelementptr inbounds double, double* %258, i64 %257, !dbg !2553
  store double %251, double* %259, align 8, !dbg !2554
  br label %260, !dbg !2553

; <label>:260:                                    ; preds = %250, %245
  br label %261

; <label>:261:                                    ; preds = %260, %223
  br label %262, !dbg !2555

; <label>:262:                                    ; preds = %261
  %263 = load i32, i32* %16, align 4, !dbg !2556
  %264 = add i32 %263, 1, !dbg !2556
  store i32 %264, i32* %16, align 4, !dbg !2556
  br label %215, !dbg !2558, !llvm.loop !2559

; <label>:265:                                    ; preds = %215
  br label %266, !dbg !2561

; <label>:266:                                    ; preds = %265
  %267 = load i32, i32* %15, align 4, !dbg !2563
  %268 = add i32 %267, 1, !dbg !2563
  store i32 %268, i32* %15, align 4, !dbg !2563
  br label %210, !dbg !2565, !llvm.loop !2566

; <label>:269:                                    ; preds = %210
  %270 = load double, double* %9, align 8, !dbg !2568
  %271 = load double*, double** %17, align 8, !dbg !2569
  %272 = getelementptr inbounds double, double* %271, i64 0, !dbg !2569
  %273 = load double, double* %272, align 8, !dbg !2570
  %274 = fsub double %273, %270, !dbg !2570
  store double %274, double* %272, align 8, !dbg !2570
  %275 = load double*, double** %17, align 8, !dbg !2571
  %276 = load i32, i32* %13, align 4, !dbg !2572
  %277 = zext i32 %276 to i64, !dbg !2572
  %278 = load i32, i32* %13, align 4, !dbg !2573
  %279 = zext i32 %278 to i64, !dbg !2573
  call void @gsl_matrix_view_array(%struct._gsl_matrix_view* sret %26, double* %275, i64 %277, i64 %279), !dbg !2574
  %280 = bitcast %struct._gsl_matrix_view* %19 to i8*, !dbg !2574
  %281 = bitcast %struct._gsl_matrix_view* %26 to i8*, !dbg !2574
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %280, i8* %281, i64 48, i32 8, i1 false), !dbg !2575
  %282 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2576
  %283 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %282, i32 0, i32 13, !dbg !2577
  %284 = load %struct.gsl_vector*, %struct.gsl_vector** %283, align 8, !dbg !2577
  %285 = load i32, i32* %13, align 4, !dbg !2578
  %286 = zext i32 %285 to i64, !dbg !2578
  call void @gsl_vector_subvector(%struct._gsl_vector_view* sret %27, %struct.gsl_vector* %284, i64 0, i64 %286), !dbg !2579
  %287 = bitcast %struct._gsl_vector_view* %21 to i8*, !dbg !2579
  %288 = bitcast %struct._gsl_vector_view* %27 to i8*, !dbg !2579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %287, i8* %288, i64 40, i32 8, i1 false), !dbg !2580
  %289 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2581
  %290 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %289, i32 0, i32 14, !dbg !2582
  %291 = load %struct.gsl_matrix*, %struct.gsl_matrix** %290, align 8, !dbg !2582
  %292 = load i32, i32* %13, align 4, !dbg !2583
  %293 = zext i32 %292 to i64, !dbg !2583
  %294 = load i32, i32* %13, align 4, !dbg !2584
  %295 = zext i32 %294 to i64, !dbg !2584
  call void @gsl_matrix_submatrix(%struct._gsl_matrix_view* sret %28, %struct.gsl_matrix* %291, i64 0, i64 0, i64 %293, i64 %295), !dbg !2585
  %296 = bitcast %struct._gsl_matrix_view* %20 to i8*, !dbg !2585
  %297 = bitcast %struct._gsl_matrix_view* %28 to i8*, !dbg !2585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %296, i8* %297, i64 48, i32 8, i1 false), !dbg !2586
  %298 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %19, i32 0, i32 0, !dbg !2587
  %299 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2588
  %300 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %20, i32 0, i32 0, !dbg !2589
  %301 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %22, align 8, !dbg !2590
  %302 = call i32 @gsl_eigen_symmv(%struct.gsl_matrix* %298, %struct.gsl_vector* %299, %struct.gsl_matrix* %300, %struct.gsl_eigen_symmv_workspace* %301), !dbg !2591
  %303 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2592
  %304 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %20, i32 0, i32 0, !dbg !2593
  %305 = call i32 @gsl_eigen_symmv_sort(%struct.gsl_vector* %303, %struct.gsl_matrix* %304, i32 0), !dbg !2594
  store i32 0, i32* %15, align 4, !dbg !2595
  br label %306, !dbg !2597

; <label>:306:                                    ; preds = %323, %269
  %307 = load i32, i32* %15, align 4, !dbg !2598
  %308 = load i32, i32* %13, align 4, !dbg !2601
  %309 = load i32, i32* %14, align 4, !dbg !2602
  %310 = sub i32 %308, %309, !dbg !2603
  %311 = icmp ult i32 %307, %310, !dbg !2604
  br i1 %311, label %312, label %326, !dbg !2605

; <label>:312:                                    ; preds = %306
  %313 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2606
  %314 = load i32, i32* %15, align 4, !dbg !2607
  %315 = zext i32 %314 to i64, !dbg !2607
  %316 = call double @gsl_vector_get(%struct.gsl_vector* %313, i64 %315), !dbg !2608
  %317 = load i32, i32* %15, align 4, !dbg !2609
  %318 = mul i32 2, %317, !dbg !2610
  %319 = add i32 %318, 1, !dbg !2611
  %320 = zext i32 %319 to i64, !dbg !2612
  %321 = load double*, double** %18, align 8, !dbg !2612
  %322 = getelementptr inbounds double, double* %321, i64 %320, !dbg !2612
  store double %316, double* %322, align 8, !dbg !2613
  br label %323, !dbg !2612

; <label>:323:                                    ; preds = %312
  %324 = load i32, i32* %15, align 4, !dbg !2614
  %325 = add i32 %324, 1, !dbg !2614
  store i32 %325, i32* %15, align 4, !dbg !2614
  br label %306, !dbg !2616, !llvm.loop !2617

; <label>:326:                                    ; preds = %306
  %327 = load i32, i32* %7, align 4, !dbg !2619
  store i32 %327, i32* %15, align 4, !dbg !2621
  br label %328, !dbg !2622

; <label>:328:                                    ; preds = %344, %326
  %329 = load i32, i32* %15, align 4, !dbg !2623
  %330 = load i32, i32* %8, align 4, !dbg !2626
  %331 = icmp ule i32 %329, %330, !dbg !2627
  br i1 %331, label %332, label %347, !dbg !2628

; <label>:332:                                    ; preds = %328
  %333 = load i32, i32* %15, align 4, !dbg !2629
  %334 = zext i32 %333 to i64, !dbg !2631
  %335 = load double*, double** %18, align 8, !dbg !2631
  %336 = getelementptr inbounds double, double* %335, i64 %334, !dbg !2631
  %337 = load double, double* %336, align 8, !dbg !2631
  %338 = load i32, i32* %15, align 4, !dbg !2632
  %339 = load i32, i32* %7, align 4, !dbg !2633
  %340 = sub i32 %338, %339, !dbg !2634
  %341 = zext i32 %340 to i64, !dbg !2635
  %342 = load double*, double** %11, align 8, !dbg !2635
  %343 = getelementptr inbounds double, double* %342, i64 %341, !dbg !2635
  store double %337, double* %343, align 8, !dbg !2636
  br label %344, !dbg !2637

; <label>:344:                                    ; preds = %332
  %345 = load i32, i32* %15, align 4, !dbg !2638
  %346 = add i32 %345, 1, !dbg !2638
  store i32 %346, i32* %15, align 4, !dbg !2638
  br label %328, !dbg !2640, !llvm.loop !2641

; <label>:347:                                    ; preds = %328
  store i32 0, i32* %6, align 4, !dbg !2643
  br label %348, !dbg !2643

; <label>:348:                                    ; preds = %347, %64
  %349 = load i32, i32* %6, align 4, !dbg !2644
  ret i32 %349, !dbg !2644
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_mathieu_a(i32, double) #0 !dbg !2645 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2646, metadata !68), !dbg !2647
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2648, metadata !68), !dbg !2649
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2650, metadata !68), !dbg !2651
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2652, metadata !68), !dbg !2651
  %8 = load i32, i32* %4, align 4, !dbg !2651
  %9 = load double, double* %5, align 8, !dbg !2651
  %10 = call i32 @gsl_sf_mathieu_a_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !2651
  store i32 %10, i32* %7, align 4, !dbg !2651
  %11 = load i32, i32* %7, align 4, !dbg !2653
  %12 = icmp ne i32 %11, 0, !dbg !2653
  br i1 %12, label %13, label %19, !dbg !2651

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !2655, !llvm.loop !2658

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !2660
  call void @gsl_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 884, i32 %15), !dbg !2660
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2660
  %17 = load double, double* %16, align 8, !dbg !2660
  store double %17, double* %3, align 8, !dbg !2660
  br label %22, !dbg !2660
                                                  ; No predecessors!
  br label %19, !dbg !2663

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2665
  %21 = load double, double* %20, align 8, !dbg !2665
  store double %21, double* %3, align 8, !dbg !2665
  br label %22, !dbg !2665

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !2667
  ret double %23, !dbg !2667
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_mathieu_b(i32, double) #0 !dbg !2668 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2669, metadata !68), !dbg !2670
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2671, metadata !68), !dbg !2672
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2673, metadata !68), !dbg !2674
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2675, metadata !68), !dbg !2674
  %8 = load i32, i32* %4, align 4, !dbg !2674
  %9 = load double, double* %5, align 8, !dbg !2674
  %10 = call i32 @gsl_sf_mathieu_b_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !2674
  store i32 %10, i32* %7, align 4, !dbg !2674
  %11 = load i32, i32* %7, align 4, !dbg !2676
  %12 = icmp ne i32 %11, 0, !dbg !2676
  br i1 %12, label %13, label %19, !dbg !2674

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !2678, !llvm.loop !2681

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !2683
  call void @gsl_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 889, i32 %15), !dbg !2683
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2683
  %17 = load double, double* %16, align 8, !dbg !2683
  store double %17, double* %3, align 8, !dbg !2683
  br label %22, !dbg !2683
                                                  ; No predecessors!
  br label %19, !dbg !2686

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2688
  %21 = load double, double* %20, align 8, !dbg !2688
  store double %21, double* %3, align 8, !dbg !2688
  br label %22, !dbg !2688

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !2690
  ret double %23, !dbg !2690
}

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define internal double @asymptotic(i32, double) #0 !dbg !2691 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
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
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2692, metadata !68), !dbg !2693
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2694, metadata !68), !dbg !2695
  call void @llvm.dbg.declare(metadata double* %5, metadata !2696, metadata !68), !dbg !2697
  call void @llvm.dbg.declare(metadata double* %6, metadata !2698, metadata !68), !dbg !2699
  call void @llvm.dbg.declare(metadata double* %7, metadata !2700, metadata !68), !dbg !2701
  call void @llvm.dbg.declare(metadata double* %8, metadata !2702, metadata !68), !dbg !2703
  call void @llvm.dbg.declare(metadata double* %9, metadata !2704, metadata !68), !dbg !2705
  call void @llvm.dbg.declare(metadata double* %10, metadata !2706, metadata !68), !dbg !2707
  call void @llvm.dbg.declare(metadata double* %11, metadata !2708, metadata !68), !dbg !2709
  call void @llvm.dbg.declare(metadata double* %12, metadata !2710, metadata !68), !dbg !2711
  call void @llvm.dbg.declare(metadata double* %13, metadata !2712, metadata !68), !dbg !2713
  call void @llvm.dbg.declare(metadata double* %14, metadata !2714, metadata !68), !dbg !2715
  call void @llvm.dbg.declare(metadata double* %15, metadata !2716, metadata !68), !dbg !2717
  %16 = load i32, i32* %3, align 4, !dbg !2718
  %17 = mul nsw i32 2, %16, !dbg !2719
  %18 = add nsw i32 %17, 1, !dbg !2720
  %19 = sitofp i32 %18 to double, !dbg !2721
  store double %19, double* %6, align 8, !dbg !2722
  %20 = load double, double* %6, align 8, !dbg !2723
  %21 = load double, double* %6, align 8, !dbg !2724
  %22 = fmul double %20, %21, !dbg !2725
  store double %22, double* %7, align 8, !dbg !2726
  %23 = load double, double* %7, align 8, !dbg !2727
  %24 = load double, double* %7, align 8, !dbg !2728
  %25 = fmul double %23, %24, !dbg !2729
  store double %25, double* %8, align 8, !dbg !2730
  %26 = load double, double* %8, align 8, !dbg !2731
  %27 = load double, double* %7, align 8, !dbg !2732
  %28 = fmul double %26, %27, !dbg !2733
  store double %28, double* %9, align 8, !dbg !2734
  %29 = load double, double* %4, align 8, !dbg !2735
  %30 = call double @sqrt(double %29) #6, !dbg !2736
  %31 = fmul double 2.000000e+00, %30, !dbg !2737
  store double %31, double* %10, align 8, !dbg !2738
  %32 = load double, double* %10, align 8, !dbg !2739
  %33 = fmul double 1.600000e+01, %32, !dbg !2740
  store double %33, double* %11, align 8, !dbg !2741
  %34 = load double, double* %11, align 8, !dbg !2742
  %35 = load double, double* %11, align 8, !dbg !2743
  %36 = fmul double %34, %35, !dbg !2744
  store double %36, double* %12, align 8, !dbg !2745
  %37 = load double, double* %12, align 8, !dbg !2746
  %38 = load double, double* %11, align 8, !dbg !2747
  %39 = fmul double %37, %38, !dbg !2748
  store double %39, double* %13, align 8, !dbg !2749
  %40 = load double, double* %13, align 8, !dbg !2750
  %41 = load double, double* %11, align 8, !dbg !2751
  %42 = fmul double %40, %41, !dbg !2752
  store double %42, double* %14, align 8, !dbg !2753
  %43 = load double, double* %14, align 8, !dbg !2754
  %44 = load double, double* %11, align 8, !dbg !2755
  %45 = fmul double %43, %44, !dbg !2756
  store double %45, double* %15, align 8, !dbg !2757
  %46 = load double, double* %4, align 8, !dbg !2758
  %47 = fmul double -2.000000e+00, %46, !dbg !2759
  %48 = load double, double* %6, align 8, !dbg !2760
  %49 = load double, double* %10, align 8, !dbg !2761
  %50 = fmul double %48, %49, !dbg !2762
  %51 = fadd double %47, %50, !dbg !2763
  %52 = load double, double* %7, align 8, !dbg !2764
  %53 = fadd double %52, 1.000000e+00, !dbg !2765
  %54 = fmul double 1.250000e-01, %53, !dbg !2766
  %55 = fsub double %51, %54, !dbg !2767
  store double %55, double* %5, align 8, !dbg !2768
  %56 = load double, double* %6, align 8, !dbg !2769
  %57 = fmul double 2.500000e-01, %56, !dbg !2770
  %58 = load double, double* %7, align 8, !dbg !2771
  %59 = fadd double %58, 3.000000e+00, !dbg !2772
  %60 = fmul double %57, %59, !dbg !2773
  %61 = load double, double* %11, align 8, !dbg !2774
  %62 = fdiv double %60, %61, !dbg !2775
  %63 = load double, double* %5, align 8, !dbg !2776
  %64 = fsub double %63, %62, !dbg !2776
  store double %64, double* %5, align 8, !dbg !2776
  %65 = load double, double* %8, align 8, !dbg !2777
  %66 = fmul double 5.000000e+00, %65, !dbg !2778
  %67 = load double, double* %7, align 8, !dbg !2779
  %68 = fmul double 3.400000e+01, %67, !dbg !2780
  %69 = fadd double %66, %68, !dbg !2781
  %70 = fadd double %69, 9.000000e+00, !dbg !2782
  %71 = fmul double 2.500000e-01, %70, !dbg !2783
  %72 = load double, double* %12, align 8, !dbg !2784
  %73 = fdiv double %71, %72, !dbg !2785
  %74 = load double, double* %5, align 8, !dbg !2786
  %75 = fsub double %74, %73, !dbg !2786
  store double %75, double* %5, align 8, !dbg !2786
  %76 = load double, double* %6, align 8, !dbg !2787
  %77 = fmul double 2.500000e-01, %76, !dbg !2788
  %78 = load double, double* %8, align 8, !dbg !2789
  %79 = fmul double 3.300000e+01, %78, !dbg !2790
  %80 = load double, double* %7, align 8, !dbg !2791
  %81 = fmul double 4.100000e+02, %80, !dbg !2792
  %82 = fadd double %79, %81, !dbg !2793
  %83 = fadd double %82, 4.050000e+02, !dbg !2794
  %84 = fmul double %77, %83, !dbg !2795
  %85 = load double, double* %13, align 8, !dbg !2796
  %86 = fdiv double %84, %85, !dbg !2797
  %87 = load double, double* %5, align 8, !dbg !2798
  %88 = fsub double %87, %86, !dbg !2798
  store double %88, double* %5, align 8, !dbg !2798
  %89 = load double, double* %9, align 8, !dbg !2799
  %90 = fmul double 6.300000e+01, %89, !dbg !2800
  %91 = load double, double* %8, align 8, !dbg !2801
  %92 = fmul double 1.260000e+03, %91, !dbg !2802
  %93 = fadd double %90, %92, !dbg !2803
  %94 = load double, double* %7, align 8, !dbg !2804
  %95 = fmul double 2.943000e+03, %94, !dbg !2805
  %96 = fadd double %93, %95, !dbg !2806
  %97 = fadd double %96, 4.860000e+02, !dbg !2807
  %98 = load double, double* %14, align 8, !dbg !2808
  %99 = fdiv double %97, %98, !dbg !2809
  %100 = load double, double* %5, align 8, !dbg !2810
  %101 = fsub double %100, %99, !dbg !2810
  store double %101, double* %5, align 8, !dbg !2810
  %102 = load double, double* %6, align 8, !dbg !2811
  %103 = load double, double* %9, align 8, !dbg !2812
  %104 = fmul double 5.270000e+02, %103, !dbg !2813
  %105 = load double, double* %8, align 8, !dbg !2814
  %106 = fmul double 1.561700e+04, %105, !dbg !2815
  %107 = fadd double %104, %106, !dbg !2816
  %108 = load double, double* %7, align 8, !dbg !2817
  %109 = fmul double 6.900100e+04, %108, !dbg !2818
  %110 = fadd double %107, %109, !dbg !2819
  %111 = fadd double %110, 4.160700e+04, !dbg !2820
  %112 = fmul double %102, %111, !dbg !2821
  %113 = load double, double* %15, align 8, !dbg !2822
  %114 = fdiv double %112, %113, !dbg !2823
  %115 = load double, double* %5, align 8, !dbg !2824
  %116 = fsub double %115, %114, !dbg !2824
  store double %116, double* %5, align 8, !dbg !2824
  %117 = load double, double* %5, align 8, !dbg !2825
  ret double %117, !dbg !2826
}

; Function Attrs: nounwind uwtable
define internal double @solve_cubic(double, double, double) #0 !dbg !2827 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2830, metadata !68), !dbg !2831
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2832, metadata !68), !dbg !2833
  store double %2, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2834, metadata !68), !dbg !2835
  call void @llvm.dbg.declare(metadata double* %7, metadata !2836, metadata !68), !dbg !2837
  call void @llvm.dbg.declare(metadata double* %8, metadata !2838, metadata !68), !dbg !2839
  call void @llvm.dbg.declare(metadata double* %9, metadata !2840, metadata !68), !dbg !2841
  call void @llvm.dbg.declare(metadata double* %10, metadata !2842, metadata !68), !dbg !2843
  call void @llvm.dbg.declare(metadata double* %11, metadata !2844, metadata !68), !dbg !2845
  %14 = load double, double* %5, align 8, !dbg !2846
  %15 = fmul double 3.000000e+00, %14, !dbg !2847
  %16 = load double, double* %4, align 8, !dbg !2848
  %17 = load double, double* %4, align 8, !dbg !2849
  %18 = fmul double %16, %17, !dbg !2850
  %19 = fsub double %15, %18, !dbg !2851
  %20 = fdiv double %19, 9.000000e+00, !dbg !2852
  store double %20, double* %7, align 8, !dbg !2853
  %21 = load double, double* %4, align 8, !dbg !2854
  %22 = fmul double 9.000000e+00, %21, !dbg !2855
  %23 = load double, double* %5, align 8, !dbg !2856
  %24 = fmul double %22, %23, !dbg !2857
  %25 = load double, double* %6, align 8, !dbg !2858
  %26 = fmul double 2.700000e+01, %25, !dbg !2859
  %27 = fsub double %24, %26, !dbg !2860
  %28 = load double, double* %4, align 8, !dbg !2861
  %29 = fmul double 2.000000e+00, %28, !dbg !2862
  %30 = load double, double* %4, align 8, !dbg !2863
  %31 = fmul double %29, %30, !dbg !2864
  %32 = load double, double* %4, align 8, !dbg !2865
  %33 = fmul double %31, %32, !dbg !2866
  %34 = fsub double %27, %33, !dbg !2867
  %35 = fdiv double %34, 5.400000e+01, !dbg !2868
  store double %35, double* %8, align 8, !dbg !2869
  %36 = load double, double* %7, align 8, !dbg !2870
  %37 = load double, double* %7, align 8, !dbg !2871
  %38 = fmul double %36, %37, !dbg !2872
  %39 = load double, double* %7, align 8, !dbg !2873
  %40 = fmul double %38, %39, !dbg !2874
  %41 = load double, double* %8, align 8, !dbg !2875
  %42 = load double, double* %8, align 8, !dbg !2876
  %43 = fmul double %41, %42, !dbg !2877
  %44 = fadd double %40, %43, !dbg !2878
  store double %44, double* %9, align 8, !dbg !2879
  %45 = load double, double* %9, align 8, !dbg !2880
  %46 = fcmp oge double %45, 0.000000e+00, !dbg !2882
  br i1 %46, label %47, label %72, !dbg !2883

; <label>:47:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %12, metadata !2884, metadata !68), !dbg !2886
  %48 = load double, double* %8, align 8, !dbg !2887
  %49 = load double, double* %9, align 8, !dbg !2888
  %50 = call double @sqrt(double %49) #6, !dbg !2889
  %51 = fadd double %48, %50, !dbg !2890
  store double %51, double* %12, align 8, !dbg !2886
  %52 = load double, double* %12, align 8, !dbg !2891
  %53 = call double @fabs(double %52) #1, !dbg !2892
  %54 = load double, double* %12, align 8, !dbg !2893
  %55 = fdiv double %53, %54, !dbg !2894
  %56 = load double, double* %12, align 8, !dbg !2895
  %57 = call double @fabs(double %56) #1, !dbg !2896
  %58 = call double @pow(double %57, double 0x3FD5555555555555) #6, !dbg !2898
  %59 = fmul double %55, %58, !dbg !2900
  store double %59, double* %10, align 8, !dbg !2901
  %60 = load double, double* %8, align 8, !dbg !2902
  %61 = load double, double* %9, align 8, !dbg !2903
  %62 = call double @sqrt(double %61) #6, !dbg !2904
  %63 = fsub double %60, %62, !dbg !2905
  store double %63, double* %12, align 8, !dbg !2906
  %64 = load double, double* %12, align 8, !dbg !2907
  %65 = call double @fabs(double %64) #1, !dbg !2908
  %66 = load double, double* %12, align 8, !dbg !2909
  %67 = fdiv double %65, %66, !dbg !2910
  %68 = load double, double* %12, align 8, !dbg !2911
  %69 = call double @fabs(double %68) #1, !dbg !2912
  %70 = call double @pow(double %69, double 0x3FD5555555555555) #6, !dbg !2913
  %71 = fmul double %67, %70, !dbg !2914
  store double %71, double* %11, align 8, !dbg !2915
  br label %92, !dbg !2916

; <label>:72:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %13, metadata !2917, metadata !68), !dbg !2919
  %73 = load double, double* %8, align 8, !dbg !2920
  %74 = load double, double* %7, align 8, !dbg !2921
  %75 = fsub double -0.000000e+00, %74, !dbg !2922
  %76 = load double, double* %7, align 8, !dbg !2923
  %77 = fmul double %75, %76, !dbg !2924
  %78 = load double, double* %7, align 8, !dbg !2925
  %79 = fmul double %77, %78, !dbg !2926
  %80 = call double @sqrt(double %79) #6, !dbg !2927
  %81 = fdiv double %73, %80, !dbg !2928
  %82 = call double @acos(double %81) #6, !dbg !2929
  store double %82, double* %13, align 8, !dbg !2919
  %83 = load double, double* %7, align 8, !dbg !2931
  %84 = fsub double -0.000000e+00, %83, !dbg !2932
  %85 = call double @sqrt(double %84) #6, !dbg !2933
  %86 = fmul double 2.000000e+00, %85, !dbg !2934
  %87 = load double, double* %13, align 8, !dbg !2935
  %88 = fadd double %87, 0x402921FB54442D18, !dbg !2936
  %89 = fdiv double %88, 3.000000e+00, !dbg !2937
  %90 = call double @cos(double %89) #6, !dbg !2938
  %91 = fmul double %86, %90, !dbg !2939
  store double %91, double* %10, align 8, !dbg !2940
  store double 0.000000e+00, double* %11, align 8, !dbg !2941
  br label %92

; <label>:92:                                     ; preds = %72, %47
  %93 = load double, double* %10, align 8, !dbg !2942
  %94 = load double, double* %11, align 8, !dbg !2943
  %95 = fadd double %93, %94, !dbg !2944
  %96 = load double, double* %4, align 8, !dbg !2945
  %97 = fdiv double %96, 3.000000e+00, !dbg !2946
  %98 = fsub double %95, %97, !dbg !2947
  ret double %98, !dbg !2948
}

; Function Attrs: nounwind
declare double @pow(double, double) #5

; Function Attrs: nounwind
declare double @acos(double) #5

; Function Attrs: nounwind
declare double @cos(double) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !48)
!1 = !DIFile(filename: "mathieu_charv.c", directory: "/fpcc/gsl-2.5/specfunc")
!2 = !{!3, !41}
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
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 265, size: 32, align: 32, elements: !43)
!42 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/fpcc/gsl-2.5/specfunc")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "GSL_EIGEN_SORT_VAL_ASC", value: 0)
!45 = !DIEnumerator(name: "GSL_EIGEN_SORT_VAL_DESC", value: 1)
!46 = !DIEnumerator(name: "GSL_EIGEN_SORT_ABS_ASC", value: 2)
!47 = !DIEnumerator(name: "GSL_EIGEN_SORT_ABS_DESC", value: 3)
!48 = !{!49, !50, !51}
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!51 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!52 = !{i32 2, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"PIC Level", i32 2}
!55 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!56 = distinct !DISubprogram(name: "gsl_sf_mathieu_a_e", scope: !1, file: !1, line: 370, type: !57, isLocal: false, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!57 = !DISubroutineType(types: !58)
!58 = !{!49, !49, !50, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !61, line: 41, baseType: !62)
!61 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !61, line: 37, size: 128, align: 64, elements: !63)
!63 = !{!64, !65}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !62, file: !61, line: 38, baseType: !50, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !62, file: !61, line: 39, baseType: !50, size: 64, align: 64, offset: 64)
!66 = !{}
!67 = !DILocalVariable(name: "order", arg: 1, scope: !56, file: !1, line: 370, type: !49)
!68 = !DIExpression()
!69 = !DILocation(line: 370, column: 28, scope: !56)
!70 = !DILocalVariable(name: "qq", arg: 2, scope: !56, file: !1, line: 370, type: !50)
!71 = !DILocation(line: 370, column: 42, scope: !56)
!72 = !DILocalVariable(name: "result", arg: 3, scope: !56, file: !1, line: 370, type: !59)
!73 = !DILocation(line: 370, column: 61, scope: !56)
!74 = !DILocalVariable(name: "even_odd", scope: !56, file: !1, line: 372, type: !49)
!75 = !DILocation(line: 372, column: 7, scope: !56)
!76 = !DILocalVariable(name: "nterms", scope: !56, file: !1, line: 372, type: !49)
!77 = !DILocation(line: 372, column: 17, scope: !56)
!78 = !DILocalVariable(name: "ii", scope: !56, file: !1, line: 372, type: !49)
!79 = !DILocation(line: 372, column: 30, scope: !56)
!80 = !DILocalVariable(name: "counter", scope: !56, file: !1, line: 372, type: !49)
!81 = !DILocation(line: 372, column: 34, scope: !56)
!82 = !DILocalVariable(name: "maxcount", scope: !56, file: !1, line: 372, type: !49)
!83 = !DILocation(line: 372, column: 47, scope: !56)
!84 = !DILocalVariable(name: "dir", scope: !56, file: !1, line: 373, type: !49)
!85 = !DILocation(line: 373, column: 7, scope: !56)
!86 = !DILocalVariable(name: "a1", scope: !56, file: !1, line: 374, type: !50)
!87 = !DILocation(line: 374, column: 10, scope: !56)
!88 = !DILocalVariable(name: "a2", scope: !56, file: !1, line: 374, type: !50)
!89 = !DILocation(line: 374, column: 14, scope: !56)
!90 = !DILocalVariable(name: "fa", scope: !56, file: !1, line: 374, type: !50)
!91 = !DILocation(line: 374, column: 18, scope: !56)
!92 = !DILocalVariable(name: "fa1", scope: !56, file: !1, line: 374, type: !50)
!93 = !DILocation(line: 374, column: 22, scope: !56)
!94 = !DILocalVariable(name: "dela", scope: !56, file: !1, line: 374, type: !50)
!95 = !DILocation(line: 374, column: 27, scope: !56)
!96 = !DILocalVariable(name: "aa_orig", scope: !56, file: !1, line: 374, type: !50)
!97 = !DILocation(line: 374, column: 33, scope: !56)
!98 = !DILocalVariable(name: "da", scope: !56, file: !1, line: 374, type: !50)
!99 = !DILocation(line: 374, column: 42, scope: !56)
!100 = !DILocalVariable(name: "aa", scope: !56, file: !1, line: 374, type: !50)
!101 = !DILocation(line: 374, column: 54, scope: !56)
!102 = !DILocalVariable(name: "aa_approx", scope: !56, file: !1, line: 375, type: !50)
!103 = !DILocation(line: 375, column: 10, scope: !56)
!104 = !DILocation(line: 378, column: 12, scope: !56)
!105 = !DILocation(line: 379, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !56, file: !1, line: 379, column: 7)
!107 = !DILocation(line: 379, column: 13, scope: !106)
!108 = !DILocation(line: 379, column: 17, scope: !106)
!109 = !DILocation(line: 379, column: 7, scope: !56)
!110 = !DILocation(line: 380, column: 16, scope: !106)
!111 = !DILocation(line: 380, column: 7, scope: !106)
!112 = !DILocation(line: 384, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !56, file: !1, line: 384, column: 7)
!114 = !DILocation(line: 384, column: 10, scope: !113)
!115 = !DILocation(line: 384, column: 7, scope: !56)
!116 = !DILocation(line: 386, column: 21, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 385, column: 3)
!118 = !DILocation(line: 386, column: 27, scope: !117)
!119 = !DILocation(line: 386, column: 26, scope: !117)
!120 = !DILocation(line: 386, column: 7, scope: !117)
!121 = !DILocation(line: 386, column: 15, scope: !117)
!122 = !DILocation(line: 386, column: 19, scope: !117)
!123 = !DILocation(line: 387, column: 7, scope: !117)
!124 = !DILocation(line: 387, column: 15, scope: !117)
!125 = !DILocation(line: 387, column: 19, scope: !117)
!126 = !DILocation(line: 388, column: 7, scope: !117)
!127 = !DILocation(line: 393, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !56, file: !1, line: 393, column: 7)
!129 = !DILocation(line: 393, column: 13, scope: !128)
!130 = !DILocation(line: 393, column: 7, scope: !56)
!131 = !DILocation(line: 394, column: 13, scope: !128)
!132 = !DILocation(line: 394, column: 7, scope: !128)
!133 = !DILocation(line: 395, column: 7, scope: !134)
!134 = distinct !DILexicalBlock(scope: !56, file: !1, line: 395, column: 7)
!135 = !DILocation(line: 395, column: 10, scope: !134)
!136 = !DILocation(line: 395, column: 7, scope: !56)
!137 = !DILocation(line: 397, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 397, column: 11)
!139 = distinct !DILexicalBlock(scope: !134, file: !1, line: 396, column: 3)
!140 = !DILocation(line: 397, column: 20, scope: !138)
!141 = !DILocation(line: 397, column: 11, scope: !139)
!142 = !DILocation(line: 398, column: 37, scope: !138)
!143 = !DILocation(line: 398, column: 45, scope: !138)
!144 = !DILocation(line: 398, column: 44, scope: !138)
!145 = !DILocation(line: 398, column: 49, scope: !138)
!146 = !DILocation(line: 398, column: 18, scope: !138)
!147 = !DILocation(line: 398, column: 11, scope: !138)
!148 = !DILocation(line: 400, column: 37, scope: !138)
!149 = !DILocation(line: 400, column: 45, scope: !138)
!150 = !DILocation(line: 400, column: 44, scope: !138)
!151 = !DILocation(line: 400, column: 49, scope: !138)
!152 = !DILocation(line: 400, column: 18, scope: !138)
!153 = !DILocation(line: 400, column: 11, scope: !138)
!154 = !DILocation(line: 404, column: 24, scope: !56)
!155 = !DILocation(line: 404, column: 31, scope: !56)
!156 = !DILocation(line: 404, column: 15, scope: !56)
!157 = !DILocation(line: 404, column: 13, scope: !56)
!158 = !DILocation(line: 407, column: 18, scope: !56)
!159 = !DILocation(line: 407, column: 16, scope: !56)
!160 = !DILocation(line: 407, column: 11, scope: !56)
!161 = !DILocation(line: 411, column: 3, scope: !56)
!162 = !DILocation(line: 411, column: 10, scope: !163)
!163 = !DILexicalBlockFile(scope: !56, file: !1, discriminator: 1)
!164 = !DILocation(line: 411, column: 20, scope: !163)
!165 = !DILocation(line: 411, column: 18, scope: !163)
!166 = !DILocation(line: 411, column: 3, scope: !163)
!167 = !DILocation(line: 413, column: 12, scope: !168)
!168 = distinct !DILexicalBlock(scope: !56, file: !1, line: 412, column: 3)
!169 = !DILocation(line: 413, column: 15, scope: !168)
!170 = !DILocation(line: 413, column: 10, scope: !168)
!171 = !DILocation(line: 414, column: 10, scope: !168)
!172 = !DILocation(line: 415, column: 11, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !1, line: 415, column: 11)
!174 = !DILocation(line: 415, column: 20, scope: !173)
!175 = !DILocation(line: 415, column: 11, scope: !168)
!176 = !DILocation(line: 416, column: 22, scope: !173)
!177 = !DILocation(line: 416, column: 29, scope: !173)
!178 = !DILocation(line: 416, column: 33, scope: !173)
!179 = !DILocation(line: 416, column: 37, scope: !173)
!180 = !DILocation(line: 416, column: 17, scope: !173)
!181 = !DILocation(line: 416, column: 15, scope: !173)
!182 = !DILocation(line: 416, column: 11, scope: !173)
!183 = !DILocation(line: 418, column: 22, scope: !173)
!184 = !DILocation(line: 418, column: 29, scope: !173)
!185 = !DILocation(line: 418, column: 33, scope: !173)
!186 = !DILocation(line: 418, column: 37, scope: !173)
!187 = !DILocation(line: 418, column: 17, scope: !173)
!188 = !DILocation(line: 418, column: 15, scope: !173)
!189 = !DILocation(line: 420, column: 7, scope: !168)
!190 = !DILocation(line: 422, column: 15, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 422, column: 15)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 421, column: 7)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 420, column: 7)
!194 = distinct !DILexicalBlock(scope: !168, file: !1, line: 420, column: 7)
!195 = !DILocation(line: 422, column: 24, scope: !191)
!196 = !DILocation(line: 422, column: 15, scope: !192)
!197 = !DILocation(line: 423, column: 25, scope: !191)
!198 = !DILocation(line: 423, column: 32, scope: !191)
!199 = !DILocation(line: 423, column: 36, scope: !191)
!200 = !DILocation(line: 423, column: 40, scope: !191)
!201 = !DILocation(line: 423, column: 20, scope: !191)
!202 = !DILocation(line: 423, column: 18, scope: !191)
!203 = !DILocation(line: 423, column: 15, scope: !191)
!204 = !DILocation(line: 425, column: 25, scope: !191)
!205 = !DILocation(line: 425, column: 32, scope: !191)
!206 = !DILocation(line: 425, column: 36, scope: !191)
!207 = !DILocation(line: 425, column: 40, scope: !191)
!208 = !DILocation(line: 425, column: 20, scope: !191)
!209 = !DILocation(line: 425, column: 18, scope: !191)
!210 = !DILocation(line: 427, column: 16, scope: !192)
!211 = !DILocation(line: 427, column: 14, scope: !192)
!212 = !DILocation(line: 428, column: 16, scope: !192)
!213 = !DILocation(line: 428, column: 14, scope: !192)
!214 = !DILocation(line: 430, column: 15, scope: !215)
!215 = distinct !DILexicalBlock(scope: !192, file: !1, line: 430, column: 15)
!216 = !DILocation(line: 430, column: 21, scope: !215)
!217 = !DILocation(line: 430, column: 18, scope: !215)
!218 = !DILocation(line: 430, column: 15, scope: !192)
!219 = !DILocation(line: 432, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 431, column: 11)
!221 = !DILocation(line: 432, column: 23, scope: !220)
!222 = !DILocation(line: 432, column: 27, scope: !220)
!223 = !DILocation(line: 433, column: 15, scope: !220)
!224 = !DILocation(line: 435, column: 18, scope: !192)
!225 = !DILocation(line: 435, column: 23, scope: !192)
!226 = !DILocation(line: 435, column: 21, scope: !192)
!227 = !DILocation(line: 435, column: 28, scope: !192)
!228 = !DILocation(line: 435, column: 33, scope: !192)
!229 = !DILocation(line: 435, column: 31, scope: !192)
!230 = !DILocation(line: 435, column: 26, scope: !192)
!231 = !DILocation(line: 435, column: 38, scope: !192)
!232 = !DILocation(line: 435, column: 37, scope: !192)
!233 = !DILocation(line: 435, column: 14, scope: !192)
!234 = !DILocation(line: 436, column: 23, scope: !192)
!235 = !DILocation(line: 436, column: 28, scope: !192)
!236 = !DILocation(line: 436, column: 26, scope: !192)
!237 = !DILocation(line: 436, column: 18, scope: !192)
!238 = !DILocation(line: 436, column: 16, scope: !192)
!239 = !DILocation(line: 437, column: 15, scope: !240)
!240 = distinct !DILexicalBlock(scope: !192, file: !1, line: 437, column: 15)
!241 = !DILocation(line: 437, column: 20, scope: !240)
!242 = !DILocation(line: 437, column: 15, scope: !192)
!243 = !DILocation(line: 439, column: 15, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !1, line: 438, column: 11)
!245 = !DILocation(line: 439, column: 23, scope: !244)
!246 = !DILocation(line: 439, column: 27, scope: !244)
!247 = !DILocation(line: 440, column: 15, scope: !244)
!248 = !DILocation(line: 442, column: 15, scope: !249)
!249 = distinct !DILexicalBlock(scope: !192, file: !1, line: 442, column: 15)
!250 = !DILocation(line: 442, column: 18, scope: !249)
!251 = !DILocation(line: 442, column: 15, scope: !192)
!252 = !DILocation(line: 444, column: 29, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !1, line: 443, column: 11)
!254 = !DILocation(line: 444, column: 15, scope: !253)
!255 = !DILocation(line: 444, column: 23, scope: !253)
!256 = !DILocation(line: 444, column: 27, scope: !253)
!257 = !DILocation(line: 445, column: 15, scope: !253)
!258 = !DILocation(line: 447, column: 17, scope: !192)
!259 = !DILocation(line: 447, column: 15, scope: !192)
!260 = !DILocation(line: 448, column: 13, scope: !192)
!261 = !DILocation(line: 420, column: 7, scope: !262)
!262 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 1)
!263 = distinct !{!263, !189}
!264 = !DILocation(line: 453, column: 16, scope: !265)
!265 = distinct !DILexicalBlock(scope: !168, file: !1, line: 453, column: 11)
!266 = !DILocation(line: 453, column: 21, scope: !265)
!267 = !DILocation(line: 453, column: 19, scope: !265)
!268 = !DILocation(line: 453, column: 11, scope: !265)
!269 = !DILocation(line: 453, column: 42, scope: !265)
!270 = !DILocation(line: 453, column: 41, scope: !265)
!271 = !DILocation(line: 453, column: 53, scope: !265)
!272 = !DILocation(line: 453, column: 48, scope: !273)
!273 = !DILexicalBlockFile(scope: !265, file: !1, discriminator: 2)
!274 = !DILocation(line: 453, column: 47, scope: !265)
!275 = !DILocation(line: 453, column: 35, scope: !265)
!276 = !DILocation(line: 453, column: 30, scope: !265)
!277 = !DILocation(line: 453, column: 63, scope: !265)
!278 = !DILocation(line: 454, column: 12, scope: !265)
!279 = !DILocation(line: 454, column: 18, scope: !265)
!280 = !DILocation(line: 454, column: 23, scope: !265)
!281 = !DILocation(line: 454, column: 31, scope: !282)
!282 = !DILexicalBlockFile(scope: !265, file: !1, discriminator: 1)
!283 = !DILocation(line: 454, column: 36, scope: !282)
!284 = !DILocation(line: 454, column: 34, scope: !282)
!285 = !DILocation(line: 454, column: 26, scope: !282)
!286 = !DILocation(line: 454, column: 51, scope: !282)
!287 = !DILocation(line: 454, column: 50, scope: !282)
!288 = !DILocation(line: 454, column: 45, scope: !282)
!289 = !DILocation(line: 453, column: 11, scope: !290)
!290 = !DILexicalBlockFile(scope: !168, file: !1, discriminator: 1)
!291 = !DILocation(line: 456, column: 18, scope: !292)
!292 = distinct !DILexicalBlock(scope: !265, file: !1, line: 455, column: 7)
!293 = !DILocation(line: 457, column: 15, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !1, line: 457, column: 15)
!295 = !DILocation(line: 457, column: 26, scope: !294)
!296 = !DILocation(line: 457, column: 23, scope: !294)
!297 = !DILocation(line: 457, column: 15, scope: !292)
!298 = !DILocation(line: 459, column: 34, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !1, line: 458, column: 11)
!300 = !DILocation(line: 459, column: 39, scope: !299)
!301 = !DILocation(line: 459, column: 37, scope: !299)
!302 = !DILocation(line: 459, column: 29, scope: !299)
!303 = !DILocation(line: 459, column: 15, scope: !299)
!304 = !DILocation(line: 459, column: 23, scope: !299)
!305 = !DILocation(line: 459, column: 27, scope: !299)
!306 = !DILocation(line: 460, column: 15, scope: !299)
!307 = !DILocation(line: 462, column: 15, scope: !308)
!308 = distinct !DILexicalBlock(scope: !292, file: !1, line: 462, column: 15)
!309 = !DILocation(line: 462, column: 20, scope: !308)
!310 = !DILocation(line: 462, column: 18, scope: !308)
!311 = !DILocation(line: 462, column: 15, scope: !292)
!312 = !DILocation(line: 464, column: 19, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 464, column: 19)
!314 = distinct !DILexicalBlock(scope: !308, file: !1, line: 463, column: 11)
!315 = !DILocation(line: 464, column: 23, scope: !313)
!316 = !DILocation(line: 464, column: 19, scope: !314)
!317 = !DILocation(line: 465, column: 22, scope: !313)
!318 = !DILocation(line: 465, column: 19, scope: !313)
!319 = !DILocation(line: 466, column: 19, scope: !314)
!320 = !DILocation(line: 467, column: 11, scope: !314)
!321 = !DILocation(line: 470, column: 19, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 470, column: 19)
!323 = distinct !DILexicalBlock(scope: !308, file: !1, line: 469, column: 11)
!324 = !DILocation(line: 470, column: 23, scope: !322)
!325 = !DILocation(line: 470, column: 19, scope: !323)
!326 = !DILocation(line: 471, column: 22, scope: !322)
!327 = !DILocation(line: 471, column: 19, scope: !322)
!328 = !DILocation(line: 472, column: 19, scope: !323)
!329 = !DILocation(line: 474, column: 24, scope: !292)
!330 = !DILocation(line: 474, column: 28, scope: !292)
!331 = !DILocation(line: 474, column: 27, scope: !292)
!332 = !DILocation(line: 474, column: 31, scope: !292)
!333 = !DILocation(line: 474, column: 30, scope: !292)
!334 = !DILocation(line: 474, column: 21, scope: !292)
!335 = !DILocation(line: 475, column: 16, scope: !292)
!336 = !DILocation(line: 475, column: 14, scope: !292)
!337 = !DILocation(line: 477, column: 11, scope: !292)
!338 = distinct !{!338, !161}
!339 = !DILocation(line: 480, column: 11, scope: !265)
!340 = !DILocation(line: 483, column: 17, scope: !56)
!341 = !DILocation(line: 483, column: 3, scope: !56)
!342 = !DILocation(line: 483, column: 11, scope: !56)
!343 = !DILocation(line: 483, column: 15, scope: !56)
!344 = !DILocation(line: 487, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !56, file: !1, line: 487, column: 7)
!346 = !DILocation(line: 487, column: 18, scope: !345)
!347 = !DILocation(line: 487, column: 15, scope: !345)
!348 = !DILocation(line: 487, column: 7, scope: !56)
!349 = !DILocation(line: 489, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !1, line: 488, column: 3)
!351 = distinct !{!351, !349}
!352 = !DILocation(line: 489, column: 7, scope: !353)
!353 = !DILexicalBlockFile(scope: !354, file: !1, discriminator: 1)
!354 = distinct !DILexicalBlock(scope: !350, file: !1, line: 489, column: 7)
!355 = !DILocation(line: 490, column: 3, scope: !350)
!356 = !DILocation(line: 492, column: 3, scope: !56)
!357 = !DILocation(line: 493, column: 1, scope: !56)
!358 = distinct !DISubprogram(name: "gsl_sf_mathieu_b_e", scope: !1, file: !1, line: 496, type: !57, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!359 = !DILocalVariable(name: "order", arg: 1, scope: !358, file: !1, line: 496, type: !49)
!360 = !DILocation(line: 496, column: 28, scope: !358)
!361 = !DILocalVariable(name: "qq", arg: 2, scope: !358, file: !1, line: 496, type: !50)
!362 = !DILocation(line: 496, column: 42, scope: !358)
!363 = !DILocalVariable(name: "result", arg: 3, scope: !358, file: !1, line: 496, type: !59)
!364 = !DILocation(line: 496, column: 61, scope: !358)
!365 = !DILocalVariable(name: "even_odd", scope: !358, file: !1, line: 498, type: !49)
!366 = !DILocation(line: 498, column: 7, scope: !358)
!367 = !DILocalVariable(name: "nterms", scope: !358, file: !1, line: 498, type: !49)
!368 = !DILocation(line: 498, column: 17, scope: !358)
!369 = !DILocalVariable(name: "ii", scope: !358, file: !1, line: 498, type: !49)
!370 = !DILocation(line: 498, column: 30, scope: !358)
!371 = !DILocalVariable(name: "counter", scope: !358, file: !1, line: 498, type: !49)
!372 = !DILocation(line: 498, column: 34, scope: !358)
!373 = !DILocalVariable(name: "maxcount", scope: !358, file: !1, line: 498, type: !49)
!374 = !DILocation(line: 498, column: 47, scope: !358)
!375 = !DILocalVariable(name: "dir", scope: !358, file: !1, line: 499, type: !49)
!376 = !DILocation(line: 499, column: 7, scope: !358)
!377 = !DILocalVariable(name: "a1", scope: !358, file: !1, line: 500, type: !50)
!378 = !DILocation(line: 500, column: 10, scope: !358)
!379 = !DILocalVariable(name: "a2", scope: !358, file: !1, line: 500, type: !50)
!380 = !DILocation(line: 500, column: 14, scope: !358)
!381 = !DILocalVariable(name: "fa", scope: !358, file: !1, line: 500, type: !50)
!382 = !DILocation(line: 500, column: 18, scope: !358)
!383 = !DILocalVariable(name: "fa1", scope: !358, file: !1, line: 500, type: !50)
!384 = !DILocation(line: 500, column: 22, scope: !358)
!385 = !DILocalVariable(name: "dela", scope: !358, file: !1, line: 500, type: !50)
!386 = !DILocation(line: 500, column: 27, scope: !358)
!387 = !DILocalVariable(name: "aa_orig", scope: !358, file: !1, line: 500, type: !50)
!388 = !DILocation(line: 500, column: 33, scope: !358)
!389 = !DILocalVariable(name: "da", scope: !358, file: !1, line: 500, type: !50)
!390 = !DILocation(line: 500, column: 42, scope: !358)
!391 = !DILocalVariable(name: "aa", scope: !358, file: !1, line: 500, type: !50)
!392 = !DILocation(line: 500, column: 54, scope: !358)
!393 = !DILocalVariable(name: "aa_approx", scope: !358, file: !1, line: 501, type: !50)
!394 = !DILocation(line: 501, column: 10, scope: !358)
!395 = !DILocation(line: 504, column: 12, scope: !358)
!396 = !DILocation(line: 505, column: 7, scope: !397)
!397 = distinct !DILexicalBlock(scope: !358, file: !1, line: 505, column: 7)
!398 = !DILocation(line: 505, column: 13, scope: !397)
!399 = !DILocation(line: 505, column: 17, scope: !397)
!400 = !DILocation(line: 505, column: 7, scope: !358)
!401 = !DILocation(line: 506, column: 16, scope: !397)
!402 = !DILocation(line: 506, column: 7, scope: !397)
!403 = !DILocation(line: 509, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !358, file: !1, line: 509, column: 7)
!405 = !DILocation(line: 509, column: 13, scope: !404)
!406 = !DILocation(line: 509, column: 7, scope: !358)
!407 = !DILocation(line: 511, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 510, column: 3)
!409 = distinct !{!409, !407}
!410 = !DILocation(line: 511, column: 7, scope: !411)
!411 = !DILexicalBlockFile(scope: !412, file: !1, discriminator: 1)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 511, column: 7)
!413 = !DILocation(line: 512, column: 3, scope: !408)
!414 = !DILocation(line: 516, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !358, file: !1, line: 516, column: 7)
!416 = !DILocation(line: 516, column: 10, scope: !415)
!417 = !DILocation(line: 516, column: 7, scope: !358)
!418 = !DILocation(line: 518, column: 21, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !1, line: 517, column: 3)
!420 = !DILocation(line: 518, column: 27, scope: !419)
!421 = !DILocation(line: 518, column: 26, scope: !419)
!422 = !DILocation(line: 518, column: 7, scope: !419)
!423 = !DILocation(line: 518, column: 15, scope: !419)
!424 = !DILocation(line: 518, column: 19, scope: !419)
!425 = !DILocation(line: 519, column: 7, scope: !419)
!426 = !DILocation(line: 519, column: 15, scope: !419)
!427 = !DILocation(line: 519, column: 19, scope: !419)
!428 = !DILocation(line: 520, column: 7, scope: !419)
!429 = !DILocation(line: 525, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !358, file: !1, line: 525, column: 7)
!431 = !DILocation(line: 525, column: 13, scope: !430)
!432 = !DILocation(line: 525, column: 7, scope: !358)
!433 = !DILocation(line: 526, column: 13, scope: !430)
!434 = !DILocation(line: 526, column: 7, scope: !430)
!435 = !DILocation(line: 527, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !358, file: !1, line: 527, column: 7)
!437 = !DILocation(line: 527, column: 10, scope: !436)
!438 = !DILocation(line: 527, column: 7, scope: !358)
!439 = !DILocation(line: 529, column: 11, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 529, column: 11)
!441 = distinct !DILexicalBlock(scope: !436, file: !1, line: 528, column: 3)
!442 = !DILocation(line: 529, column: 20, scope: !440)
!443 = !DILocation(line: 529, column: 11, scope: !441)
!444 = !DILocation(line: 530, column: 37, scope: !440)
!445 = !DILocation(line: 530, column: 45, scope: !440)
!446 = !DILocation(line: 530, column: 44, scope: !440)
!447 = !DILocation(line: 530, column: 49, scope: !440)
!448 = !DILocation(line: 530, column: 18, scope: !440)
!449 = !DILocation(line: 530, column: 11, scope: !440)
!450 = !DILocation(line: 532, column: 37, scope: !440)
!451 = !DILocation(line: 532, column: 45, scope: !440)
!452 = !DILocation(line: 532, column: 44, scope: !440)
!453 = !DILocation(line: 532, column: 49, scope: !440)
!454 = !DILocation(line: 532, column: 18, scope: !440)
!455 = !DILocation(line: 532, column: 11, scope: !440)
!456 = !DILocation(line: 536, column: 24, scope: !358)
!457 = !DILocation(line: 536, column: 31, scope: !358)
!458 = !DILocation(line: 536, column: 15, scope: !358)
!459 = !DILocation(line: 536, column: 13, scope: !358)
!460 = !DILocation(line: 539, column: 18, scope: !358)
!461 = !DILocation(line: 539, column: 16, scope: !358)
!462 = !DILocation(line: 539, column: 11, scope: !358)
!463 = !DILocation(line: 543, column: 3, scope: !358)
!464 = !DILocation(line: 543, column: 10, scope: !465)
!465 = !DILexicalBlockFile(scope: !358, file: !1, discriminator: 1)
!466 = !DILocation(line: 543, column: 20, scope: !465)
!467 = !DILocation(line: 543, column: 18, scope: !465)
!468 = !DILocation(line: 543, column: 3, scope: !465)
!469 = !DILocation(line: 545, column: 12, scope: !470)
!470 = distinct !DILexicalBlock(scope: !358, file: !1, line: 544, column: 3)
!471 = !DILocation(line: 545, column: 15, scope: !470)
!472 = !DILocation(line: 545, column: 10, scope: !470)
!473 = !DILocation(line: 546, column: 10, scope: !470)
!474 = !DILocation(line: 547, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !1, line: 547, column: 11)
!476 = !DILocation(line: 547, column: 20, scope: !475)
!477 = !DILocation(line: 547, column: 11, scope: !470)
!478 = !DILocation(line: 548, column: 22, scope: !475)
!479 = !DILocation(line: 548, column: 29, scope: !475)
!480 = !DILocation(line: 548, column: 33, scope: !475)
!481 = !DILocation(line: 548, column: 37, scope: !475)
!482 = !DILocation(line: 548, column: 17, scope: !475)
!483 = !DILocation(line: 548, column: 15, scope: !475)
!484 = !DILocation(line: 548, column: 11, scope: !475)
!485 = !DILocation(line: 550, column: 22, scope: !475)
!486 = !DILocation(line: 550, column: 29, scope: !475)
!487 = !DILocation(line: 550, column: 33, scope: !475)
!488 = !DILocation(line: 550, column: 37, scope: !475)
!489 = !DILocation(line: 550, column: 17, scope: !475)
!490 = !DILocation(line: 550, column: 15, scope: !475)
!491 = !DILocation(line: 552, column: 7, scope: !470)
!492 = !DILocation(line: 554, column: 15, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 554, column: 15)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 553, column: 7)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 552, column: 7)
!496 = distinct !DILexicalBlock(scope: !470, file: !1, line: 552, column: 7)
!497 = !DILocation(line: 554, column: 24, scope: !493)
!498 = !DILocation(line: 554, column: 15, scope: !494)
!499 = !DILocation(line: 555, column: 25, scope: !493)
!500 = !DILocation(line: 555, column: 32, scope: !493)
!501 = !DILocation(line: 555, column: 36, scope: !493)
!502 = !DILocation(line: 555, column: 40, scope: !493)
!503 = !DILocation(line: 555, column: 20, scope: !493)
!504 = !DILocation(line: 555, column: 18, scope: !493)
!505 = !DILocation(line: 555, column: 15, scope: !493)
!506 = !DILocation(line: 557, column: 25, scope: !493)
!507 = !DILocation(line: 557, column: 32, scope: !493)
!508 = !DILocation(line: 557, column: 36, scope: !493)
!509 = !DILocation(line: 557, column: 40, scope: !493)
!510 = !DILocation(line: 557, column: 20, scope: !493)
!511 = !DILocation(line: 557, column: 18, scope: !493)
!512 = !DILocation(line: 559, column: 16, scope: !494)
!513 = !DILocation(line: 559, column: 14, scope: !494)
!514 = !DILocation(line: 560, column: 16, scope: !494)
!515 = !DILocation(line: 560, column: 14, scope: !494)
!516 = !DILocation(line: 562, column: 15, scope: !517)
!517 = distinct !DILexicalBlock(scope: !494, file: !1, line: 562, column: 15)
!518 = !DILocation(line: 562, column: 21, scope: !517)
!519 = !DILocation(line: 562, column: 18, scope: !517)
!520 = !DILocation(line: 562, column: 15, scope: !494)
!521 = !DILocation(line: 564, column: 15, scope: !522)
!522 = distinct !DILexicalBlock(scope: !517, file: !1, line: 563, column: 11)
!523 = !DILocation(line: 564, column: 23, scope: !522)
!524 = !DILocation(line: 564, column: 27, scope: !522)
!525 = !DILocation(line: 565, column: 15, scope: !522)
!526 = !DILocation(line: 567, column: 18, scope: !494)
!527 = !DILocation(line: 567, column: 23, scope: !494)
!528 = !DILocation(line: 567, column: 21, scope: !494)
!529 = !DILocation(line: 567, column: 28, scope: !494)
!530 = !DILocation(line: 567, column: 33, scope: !494)
!531 = !DILocation(line: 567, column: 31, scope: !494)
!532 = !DILocation(line: 567, column: 26, scope: !494)
!533 = !DILocation(line: 567, column: 38, scope: !494)
!534 = !DILocation(line: 567, column: 37, scope: !494)
!535 = !DILocation(line: 567, column: 14, scope: !494)
!536 = !DILocation(line: 568, column: 23, scope: !494)
!537 = !DILocation(line: 568, column: 28, scope: !494)
!538 = !DILocation(line: 568, column: 26, scope: !494)
!539 = !DILocation(line: 568, column: 18, scope: !494)
!540 = !DILocation(line: 568, column: 16, scope: !494)
!541 = !DILocation(line: 569, column: 15, scope: !542)
!542 = distinct !DILexicalBlock(scope: !494, file: !1, line: 569, column: 15)
!543 = !DILocation(line: 569, column: 20, scope: !542)
!544 = !DILocation(line: 569, column: 15, scope: !494)
!545 = !DILocation(line: 571, column: 15, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !1, line: 570, column: 11)
!547 = !DILocation(line: 571, column: 23, scope: !546)
!548 = !DILocation(line: 571, column: 27, scope: !546)
!549 = !DILocation(line: 572, column: 15, scope: !546)
!550 = !DILocation(line: 574, column: 15, scope: !551)
!551 = distinct !DILexicalBlock(scope: !494, file: !1, line: 574, column: 15)
!552 = !DILocation(line: 574, column: 18, scope: !551)
!553 = !DILocation(line: 574, column: 15, scope: !494)
!554 = !DILocation(line: 576, column: 29, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 575, column: 11)
!556 = !DILocation(line: 576, column: 15, scope: !555)
!557 = !DILocation(line: 576, column: 23, scope: !555)
!558 = !DILocation(line: 576, column: 27, scope: !555)
!559 = !DILocation(line: 577, column: 15, scope: !555)
!560 = !DILocation(line: 579, column: 17, scope: !494)
!561 = !DILocation(line: 579, column: 15, scope: !494)
!562 = !DILocation(line: 580, column: 13, scope: !494)
!563 = !DILocation(line: 552, column: 7, scope: !564)
!564 = !DILexicalBlockFile(scope: !495, file: !1, discriminator: 1)
!565 = distinct !{!565, !491}
!566 = !DILocation(line: 585, column: 16, scope: !567)
!567 = distinct !DILexicalBlock(scope: !470, file: !1, line: 585, column: 11)
!568 = !DILocation(line: 585, column: 21, scope: !567)
!569 = !DILocation(line: 585, column: 19, scope: !567)
!570 = !DILocation(line: 585, column: 11, scope: !567)
!571 = !DILocation(line: 585, column: 42, scope: !567)
!572 = !DILocation(line: 585, column: 41, scope: !567)
!573 = !DILocation(line: 585, column: 53, scope: !567)
!574 = !DILocation(line: 585, column: 48, scope: !575)
!575 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 2)
!576 = !DILocation(line: 585, column: 47, scope: !567)
!577 = !DILocation(line: 585, column: 35, scope: !567)
!578 = !DILocation(line: 585, column: 30, scope: !567)
!579 = !DILocation(line: 585, column: 63, scope: !567)
!580 = !DILocation(line: 586, column: 12, scope: !567)
!581 = !DILocation(line: 586, column: 18, scope: !567)
!582 = !DILocation(line: 586, column: 23, scope: !567)
!583 = !DILocation(line: 586, column: 31, scope: !584)
!584 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 1)
!585 = !DILocation(line: 586, column: 36, scope: !584)
!586 = !DILocation(line: 586, column: 34, scope: !584)
!587 = !DILocation(line: 586, column: 26, scope: !584)
!588 = !DILocation(line: 586, column: 51, scope: !584)
!589 = !DILocation(line: 586, column: 50, scope: !584)
!590 = !DILocation(line: 586, column: 45, scope: !584)
!591 = !DILocation(line: 585, column: 11, scope: !592)
!592 = !DILexicalBlockFile(scope: !470, file: !1, discriminator: 1)
!593 = !DILocation(line: 588, column: 18, scope: !594)
!594 = distinct !DILexicalBlock(scope: !567, file: !1, line: 587, column: 7)
!595 = !DILocation(line: 589, column: 15, scope: !596)
!596 = distinct !DILexicalBlock(scope: !594, file: !1, line: 589, column: 15)
!597 = !DILocation(line: 589, column: 26, scope: !596)
!598 = !DILocation(line: 589, column: 23, scope: !596)
!599 = !DILocation(line: 589, column: 15, scope: !594)
!600 = !DILocation(line: 591, column: 34, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !1, line: 590, column: 11)
!602 = !DILocation(line: 591, column: 39, scope: !601)
!603 = !DILocation(line: 591, column: 37, scope: !601)
!604 = !DILocation(line: 591, column: 29, scope: !601)
!605 = !DILocation(line: 591, column: 15, scope: !601)
!606 = !DILocation(line: 591, column: 23, scope: !601)
!607 = !DILocation(line: 591, column: 27, scope: !601)
!608 = !DILocation(line: 592, column: 15, scope: !601)
!609 = !DILocation(line: 594, column: 15, scope: !610)
!610 = distinct !DILexicalBlock(scope: !594, file: !1, line: 594, column: 15)
!611 = !DILocation(line: 594, column: 20, scope: !610)
!612 = !DILocation(line: 594, column: 18, scope: !610)
!613 = !DILocation(line: 594, column: 15, scope: !594)
!614 = !DILocation(line: 596, column: 19, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 596, column: 19)
!616 = distinct !DILexicalBlock(scope: !610, file: !1, line: 595, column: 11)
!617 = !DILocation(line: 596, column: 23, scope: !615)
!618 = !DILocation(line: 596, column: 19, scope: !616)
!619 = !DILocation(line: 597, column: 22, scope: !615)
!620 = !DILocation(line: 597, column: 19, scope: !615)
!621 = !DILocation(line: 598, column: 19, scope: !616)
!622 = !DILocation(line: 599, column: 11, scope: !616)
!623 = !DILocation(line: 602, column: 19, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 602, column: 19)
!625 = distinct !DILexicalBlock(scope: !610, file: !1, line: 601, column: 11)
!626 = !DILocation(line: 602, column: 23, scope: !624)
!627 = !DILocation(line: 602, column: 19, scope: !625)
!628 = !DILocation(line: 603, column: 22, scope: !624)
!629 = !DILocation(line: 603, column: 19, scope: !624)
!630 = !DILocation(line: 604, column: 19, scope: !625)
!631 = !DILocation(line: 606, column: 24, scope: !594)
!632 = !DILocation(line: 606, column: 28, scope: !594)
!633 = !DILocation(line: 606, column: 27, scope: !594)
!634 = !DILocation(line: 606, column: 31, scope: !594)
!635 = !DILocation(line: 606, column: 30, scope: !594)
!636 = !DILocation(line: 606, column: 21, scope: !594)
!637 = !DILocation(line: 607, column: 16, scope: !594)
!638 = !DILocation(line: 607, column: 14, scope: !594)
!639 = !DILocation(line: 609, column: 11, scope: !594)
!640 = distinct !{!640, !463}
!641 = !DILocation(line: 612, column: 11, scope: !567)
!642 = !DILocation(line: 615, column: 17, scope: !358)
!643 = !DILocation(line: 615, column: 3, scope: !358)
!644 = !DILocation(line: 615, column: 11, scope: !358)
!645 = !DILocation(line: 615, column: 15, scope: !358)
!646 = !DILocation(line: 619, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !358, file: !1, line: 619, column: 7)
!648 = !DILocation(line: 619, column: 18, scope: !647)
!649 = !DILocation(line: 619, column: 15, scope: !647)
!650 = !DILocation(line: 619, column: 7, scope: !358)
!651 = !DILocation(line: 621, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !647, file: !1, line: 620, column: 3)
!653 = distinct !{!653, !651}
!654 = !DILocation(line: 621, column: 7, scope: !655)
!655 = !DILexicalBlockFile(scope: !656, file: !1, discriminator: 1)
!656 = distinct !DILexicalBlock(scope: !652, file: !1, line: 621, column: 7)
!657 = !DILocation(line: 622, column: 3, scope: !652)
!658 = !DILocation(line: 624, column: 3, scope: !358)
!659 = !DILocation(line: 625, column: 1, scope: !358)
!660 = distinct !DISubprogram(name: "approx_c", scope: !1, file: !1, line: 205, type: !661, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!661 = !DISubroutineType(types: !662)
!662 = !{!50, !49, !50}
!663 = !DILocalVariable(name: "order", arg: 1, scope: !660, file: !1, line: 205, type: !49)
!664 = !DILocation(line: 205, column: 28, scope: !660)
!665 = !DILocalVariable(name: "qq", arg: 2, scope: !660, file: !1, line: 205, type: !50)
!666 = !DILocation(line: 205, column: 42, scope: !660)
!667 = !DILocalVariable(name: "approx", scope: !660, file: !1, line: 207, type: !50)
!668 = !DILocation(line: 207, column: 10, scope: !660)
!669 = !DILocalVariable(name: "c0", scope: !660, file: !1, line: 208, type: !50)
!670 = !DILocation(line: 208, column: 10, scope: !660)
!671 = !DILocalVariable(name: "c1", scope: !660, file: !1, line: 208, type: !50)
!672 = !DILocation(line: 208, column: 14, scope: !660)
!673 = !DILocalVariable(name: "c2", scope: !660, file: !1, line: 208, type: !50)
!674 = !DILocation(line: 208, column: 18, scope: !660)
!675 = !DILocation(line: 211, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !660, file: !1, line: 211, column: 7)
!677 = !DILocation(line: 211, column: 13, scope: !676)
!678 = !DILocation(line: 211, column: 7, scope: !660)
!679 = !DILocation(line: 213, column: 5, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !1, line: 212, column: 3)
!681 = distinct !{!681, !679}
!682 = !DILocation(line: 213, column: 5, scope: !683)
!683 = !DILexicalBlockFile(scope: !684, file: !1, discriminator: 1)
!684 = distinct !DILexicalBlock(scope: !680, file: !1, line: 213, column: 5)
!685 = !DILocation(line: 214, column: 3, scope: !680)
!686 = !DILocation(line: 216, column: 11, scope: !660)
!687 = !DILocation(line: 216, column: 3, scope: !660)
!688 = !DILocation(line: 219, column: 15, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !1, line: 219, column: 15)
!690 = distinct !DILexicalBlock(scope: !660, file: !1, line: 217, column: 3)
!691 = !DILocation(line: 219, column: 18, scope: !689)
!692 = !DILocation(line: 219, column: 15, scope: !690)
!693 = !DILocation(line: 220, column: 38, scope: !689)
!694 = !DILocation(line: 220, column: 37, scope: !689)
!695 = !DILocation(line: 220, column: 41, scope: !689)
!696 = !DILocation(line: 220, column: 40, scope: !689)
!697 = !DILocation(line: 220, column: 34, scope: !689)
!698 = !DILocation(line: 220, column: 27, scope: !689)
!699 = !DILocation(line: 220, column: 25, scope: !689)
!700 = !DILocation(line: 220, column: 15, scope: !689)
!701 = !DILocation(line: 222, column: 33, scope: !689)
!702 = !DILocation(line: 222, column: 40, scope: !689)
!703 = !DILocation(line: 222, column: 22, scope: !689)
!704 = !DILocation(line: 222, column: 15, scope: !689)
!705 = !DILocation(line: 226, column: 15, scope: !706)
!706 = distinct !DILexicalBlock(scope: !690, file: !1, line: 226, column: 15)
!707 = !DILocation(line: 226, column: 18, scope: !706)
!708 = !DILocation(line: 226, column: 15, scope: !690)
!709 = !DILocation(line: 227, column: 32, scope: !706)
!710 = !DILocation(line: 227, column: 44, scope: !706)
!711 = !DILocation(line: 227, column: 43, scope: !706)
!712 = !DILocation(line: 227, column: 47, scope: !706)
!713 = !DILocation(line: 227, column: 46, scope: !706)
!714 = !DILocation(line: 227, column: 55, scope: !706)
!715 = !DILocation(line: 227, column: 54, scope: !706)
!716 = !DILocation(line: 227, column: 50, scope: !706)
!717 = !DILocation(line: 227, column: 58, scope: !706)
!718 = !DILocation(line: 227, column: 37, scope: !706)
!719 = !DILocation(line: 227, column: 35, scope: !706)
!720 = !DILocation(line: 227, column: 30, scope: !706)
!721 = !DILocation(line: 227, column: 25, scope: !706)
!722 = !DILocation(line: 227, column: 15, scope: !706)
!723 = !DILocation(line: 229, column: 33, scope: !706)
!724 = !DILocation(line: 229, column: 40, scope: !706)
!725 = !DILocation(line: 229, column: 22, scope: !706)
!726 = !DILocation(line: 229, column: 15, scope: !706)
!727 = !DILocation(line: 233, column: 15, scope: !728)
!728 = distinct !DILexicalBlock(scope: !690, file: !1, line: 233, column: 15)
!729 = !DILocation(line: 233, column: 18, scope: !728)
!730 = !DILocation(line: 233, column: 15, scope: !690)
!731 = !DILocation(line: 235, column: 18, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !1, line: 234, column: 11)
!733 = !DILocation(line: 236, column: 28, scope: !732)
!734 = !DILocation(line: 236, column: 27, scope: !732)
!735 = !DILocation(line: 236, column: 31, scope: !732)
!736 = !DILocation(line: 236, column: 30, scope: !732)
!737 = !DILocation(line: 236, column: 24, scope: !732)
!738 = !DILocation(line: 236, column: 18, scope: !732)
!739 = !DILocation(line: 237, column: 23, scope: !732)
!740 = !DILocation(line: 237, column: 22, scope: !732)
!741 = !DILocation(line: 237, column: 26, scope: !732)
!742 = !DILocation(line: 237, column: 25, scope: !732)
!743 = !DILocation(line: 237, column: 18, scope: !732)
!744 = !DILocation(line: 238, column: 11, scope: !732)
!745 = !DILocation(line: 240, column: 33, scope: !728)
!746 = !DILocation(line: 240, column: 40, scope: !728)
!747 = !DILocation(line: 240, column: 22, scope: !728)
!748 = !DILocation(line: 240, column: 15, scope: !728)
!749 = !DILocation(line: 241, column: 11, scope: !690)
!750 = !DILocation(line: 244, column: 15, scope: !751)
!751 = distinct !DILexicalBlock(scope: !690, file: !1, line: 244, column: 15)
!752 = !DILocation(line: 244, column: 18, scope: !751)
!753 = !DILocation(line: 244, column: 15, scope: !690)
!754 = !DILocation(line: 246, column: 21, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !1, line: 245, column: 11)
!756 = !DILocation(line: 246, column: 20, scope: !755)
!757 = !DILocation(line: 246, column: 24, scope: !755)
!758 = !DILocation(line: 246, column: 18, scope: !755)
!759 = !DILocation(line: 247, column: 23, scope: !755)
!760 = !DILocation(line: 247, column: 22, scope: !755)
!761 = !DILocation(line: 247, column: 26, scope: !755)
!762 = !DILocation(line: 247, column: 36, scope: !755)
!763 = !DILocation(line: 247, column: 35, scope: !755)
!764 = !DILocation(line: 247, column: 39, scope: !755)
!765 = !DILocation(line: 247, column: 38, scope: !755)
!766 = !DILocation(line: 247, column: 32, scope: !755)
!767 = !DILocation(line: 247, column: 18, scope: !755)
!768 = !DILocation(line: 248, column: 20, scope: !755)
!769 = !DILocation(line: 248, column: 23, scope: !755)
!770 = !DILocation(line: 248, column: 22, scope: !755)
!771 = !DILocation(line: 248, column: 27, scope: !755)
!772 = !DILocation(line: 248, column: 30, scope: !755)
!773 = !DILocation(line: 248, column: 25, scope: !755)
!774 = !DILocation(line: 248, column: 18, scope: !755)
!775 = !DILocation(line: 249, column: 11, scope: !755)
!776 = !DILocation(line: 251, column: 33, scope: !751)
!777 = !DILocation(line: 251, column: 40, scope: !751)
!778 = !DILocation(line: 251, column: 22, scope: !751)
!779 = !DILocation(line: 251, column: 15, scope: !751)
!780 = !DILocation(line: 252, column: 11, scope: !690)
!781 = !DILocation(line: 255, column: 15, scope: !782)
!782 = distinct !DILexicalBlock(scope: !690, file: !1, line: 255, column: 15)
!783 = !DILocation(line: 255, column: 21, scope: !782)
!784 = !DILocation(line: 255, column: 15, scope: !690)
!785 = !DILocation(line: 257, column: 23, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !1, line: 257, column: 19)
!787 = distinct !DILexicalBlock(scope: !782, file: !1, line: 256, column: 11)
!788 = !DILocation(line: 257, column: 22, scope: !786)
!789 = !DILocation(line: 257, column: 38, scope: !786)
!790 = !DILocation(line: 257, column: 33, scope: !786)
!791 = !DILocation(line: 257, column: 32, scope: !786)
!792 = !DILocation(line: 257, column: 29, scope: !786)
!793 = !DILocation(line: 257, column: 19, scope: !787)
!794 = !DILocalVariable(name: "n2", scope: !795, file: !1, line: 260, type: !50)
!795 = distinct !DILexicalBlock(scope: !786, file: !1, line: 258, column: 15)
!796 = !DILocation(line: 260, column: 26, scope: !795)
!797 = !DILocation(line: 260, column: 40, scope: !795)
!798 = !DILocation(line: 260, column: 46, scope: !795)
!799 = !DILocation(line: 260, column: 45, scope: !795)
!800 = !DILocation(line: 260, column: 31, scope: !795)
!801 = !DILocalVariable(name: "n22", scope: !795, file: !1, line: 261, type: !50)
!802 = !DILocation(line: 261, column: 26, scope: !795)
!803 = !DILocation(line: 261, column: 42, scope: !795)
!804 = !DILocation(line: 261, column: 45, scope: !795)
!805 = !DILocation(line: 261, column: 51, scope: !795)
!806 = !DILocation(line: 261, column: 54, scope: !795)
!807 = !DILocation(line: 261, column: 49, scope: !795)
!808 = !DILocalVariable(name: "q2", scope: !795, file: !1, line: 262, type: !50)
!809 = !DILocation(line: 262, column: 26, scope: !795)
!810 = !DILocation(line: 262, column: 31, scope: !795)
!811 = !DILocation(line: 262, column: 34, scope: !795)
!812 = !DILocation(line: 262, column: 33, scope: !795)
!813 = !DILocalVariable(name: "q4", scope: !795, file: !1, line: 263, type: !50)
!814 = !DILocation(line: 263, column: 26, scope: !795)
!815 = !DILocation(line: 263, column: 31, scope: !795)
!816 = !DILocation(line: 263, column: 34, scope: !795)
!817 = !DILocation(line: 263, column: 33, scope: !795)
!818 = !DILocation(line: 264, column: 28, scope: !795)
!819 = !DILocation(line: 264, column: 37, scope: !795)
!820 = !DILocation(line: 264, column: 36, scope: !795)
!821 = !DILocation(line: 264, column: 41, scope: !795)
!822 = !DILocation(line: 264, column: 44, scope: !795)
!823 = !DILocation(line: 264, column: 39, scope: !795)
!824 = !DILocation(line: 264, column: 31, scope: !795)
!825 = !DILocation(line: 264, column: 26, scope: !795)
!826 = !DILocation(line: 265, column: 32, scope: !795)
!827 = !DILocation(line: 265, column: 31, scope: !795)
!828 = !DILocation(line: 265, column: 35, scope: !795)
!829 = !DILocation(line: 265, column: 40, scope: !795)
!830 = !DILocation(line: 265, column: 39, scope: !795)
!831 = !DILocation(line: 265, column: 47, scope: !795)
!832 = !DILocation(line: 265, column: 46, scope: !795)
!833 = !DILocation(line: 265, column: 52, scope: !795)
!834 = !DILocation(line: 265, column: 55, scope: !795)
!835 = !DILocation(line: 265, column: 50, scope: !795)
!836 = !DILocation(line: 265, column: 61, scope: !795)
!837 = !DILocation(line: 265, column: 64, scope: !795)
!838 = !DILocation(line: 265, column: 59, scope: !795)
!839 = !DILocation(line: 265, column: 42, scope: !795)
!840 = !DILocation(line: 265, column: 26, scope: !795)
!841 = !DILocation(line: 266, column: 32, scope: !795)
!842 = !DILocation(line: 266, column: 31, scope: !795)
!843 = !DILocation(line: 266, column: 35, scope: !795)
!844 = !DILocation(line: 266, column: 34, scope: !795)
!845 = !DILocation(line: 266, column: 43, scope: !795)
!846 = !DILocation(line: 266, column: 42, scope: !795)
!847 = !DILocation(line: 266, column: 38, scope: !795)
!848 = !DILocation(line: 266, column: 46, scope: !795)
!849 = !DILocation(line: 266, column: 52, scope: !795)
!850 = !DILocation(line: 266, column: 51, scope: !795)
!851 = !DILocation(line: 266, column: 55, scope: !795)
!852 = !DILocation(line: 266, column: 54, scope: !795)
!853 = !DILocation(line: 267, column: 27, scope: !795)
!854 = !DILocation(line: 267, column: 26, scope: !795)
!855 = !DILocation(line: 267, column: 31, scope: !795)
!856 = !DILocation(line: 267, column: 30, scope: !795)
!857 = !DILocation(line: 267, column: 36, scope: !795)
!858 = !DILocation(line: 267, column: 39, scope: !795)
!859 = !DILocation(line: 267, column: 34, scope: !795)
!860 = !DILocation(line: 267, column: 45, scope: !795)
!861 = !DILocation(line: 267, column: 48, scope: !795)
!862 = !DILocation(line: 267, column: 43, scope: !795)
!863 = !DILocation(line: 267, column: 54, scope: !795)
!864 = !DILocation(line: 267, column: 57, scope: !795)
!865 = !DILocation(line: 267, column: 52, scope: !795)
!866 = !DILocation(line: 266, column: 57, scope: !795)
!867 = !DILocation(line: 266, column: 26, scope: !795)
!868 = !DILocation(line: 268, column: 27, scope: !869)
!869 = distinct !DILexicalBlock(scope: !795, file: !1, line: 268, column: 23)
!870 = !DILocation(line: 268, column: 26, scope: !869)
!871 = !DILocation(line: 268, column: 42, scope: !869)
!872 = !DILocation(line: 268, column: 37, scope: !869)
!873 = !DILocation(line: 268, column: 36, scope: !869)
!874 = !DILocation(line: 268, column: 33, scope: !869)
!875 = !DILocation(line: 268, column: 23, scope: !795)
!876 = !DILocation(line: 270, column: 44, scope: !877)
!877 = distinct !DILexicalBlock(scope: !869, file: !1, line: 269, column: 19)
!878 = !DILocation(line: 270, column: 51, scope: !877)
!879 = !DILocation(line: 270, column: 33, scope: !877)
!880 = !DILocation(line: 270, column: 30, scope: !877)
!881 = !DILocation(line: 271, column: 30, scope: !877)
!882 = !DILocation(line: 272, column: 19, scope: !877)
!883 = !DILocation(line: 273, column: 15, scope: !795)
!884 = !DILocation(line: 275, column: 39, scope: !786)
!885 = !DILocation(line: 275, column: 46, scope: !786)
!886 = !DILocation(line: 275, column: 28, scope: !786)
!887 = !DILocation(line: 275, column: 26, scope: !786)
!888 = !DILocation(line: 277, column: 22, scope: !787)
!889 = !DILocation(line: 277, column: 15, scope: !787)
!890 = !DILocation(line: 280, column: 22, scope: !782)
!891 = !DILocation(line: 280, column: 28, scope: !782)
!892 = !DILocation(line: 280, column: 27, scope: !782)
!893 = !DILocation(line: 280, column: 15, scope: !782)
!894 = !DILocation(line: 284, column: 24, scope: !660)
!895 = !DILocation(line: 284, column: 28, scope: !660)
!896 = !DILocation(line: 284, column: 32, scope: !660)
!897 = !DILocation(line: 284, column: 12, scope: !660)
!898 = !DILocation(line: 284, column: 10, scope: !660)
!899 = !DILocation(line: 286, column: 8, scope: !900)
!900 = distinct !DILexicalBlock(scope: !660, file: !1, line: 286, column: 8)
!901 = !DILocation(line: 286, column: 15, scope: !900)
!902 = !DILocation(line: 286, column: 19, scope: !900)
!903 = !DILocation(line: 286, column: 27, scope: !904)
!904 = !DILexicalBlockFile(scope: !900, file: !1, discriminator: 1)
!905 = !DILocation(line: 286, column: 22, scope: !904)
!906 = !DILocation(line: 286, column: 37, scope: !904)
!907 = !DILocation(line: 286, column: 36, scope: !904)
!908 = !DILocation(line: 286, column: 31, scope: !904)
!909 = !DILocation(line: 286, column: 8, scope: !904)
!910 = !DILocation(line: 287, column: 25, scope: !900)
!911 = !DILocation(line: 287, column: 30, scope: !900)
!912 = !DILocation(line: 287, column: 34, scope: !900)
!913 = !DILocation(line: 287, column: 14, scope: !900)
!914 = !DILocation(line: 287, column: 7, scope: !900)
!915 = !DILocation(line: 289, column: 15, scope: !900)
!916 = !DILocation(line: 289, column: 21, scope: !900)
!917 = !DILocation(line: 289, column: 20, scope: !900)
!918 = !DILocation(line: 289, column: 34, scope: !900)
!919 = !DILocation(line: 289, column: 29, scope: !900)
!920 = !DILocation(line: 289, column: 27, scope: !900)
!921 = !DILocation(line: 289, column: 7, scope: !900)
!922 = !DILocation(line: 290, column: 1, scope: !660)
!923 = distinct !DISubprogram(name: "ceer", scope: !1, file: !1, line: 36, type: !924, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!924 = !DISubroutineType(types: !925)
!925 = !{!50, !49, !50, !50, !49}
!926 = !DILocalVariable(name: "order", arg: 1, scope: !923, file: !1, line: 36, type: !49)
!927 = !DILocation(line: 36, column: 24, scope: !923)
!928 = !DILocalVariable(name: "qq", arg: 2, scope: !923, file: !1, line: 36, type: !50)
!929 = !DILocation(line: 36, column: 38, scope: !923)
!930 = !DILocalVariable(name: "aa", arg: 3, scope: !923, file: !1, line: 36, type: !50)
!931 = !DILocation(line: 36, column: 49, scope: !923)
!932 = !DILocalVariable(name: "nterms", arg: 4, scope: !923, file: !1, line: 36, type: !49)
!933 = !DILocation(line: 36, column: 57, scope: !923)
!934 = !DILocalVariable(name: "term", scope: !923, file: !1, line: 39, type: !50)
!935 = !DILocation(line: 39, column: 10, scope: !923)
!936 = !DILocalVariable(name: "term1", scope: !923, file: !1, line: 39, type: !50)
!937 = !DILocation(line: 39, column: 16, scope: !923)
!938 = !DILocalVariable(name: "ii", scope: !923, file: !1, line: 40, type: !49)
!939 = !DILocation(line: 40, column: 7, scope: !923)
!940 = !DILocalVariable(name: "n1", scope: !923, file: !1, line: 40, type: !49)
!941 = !DILocation(line: 40, column: 11, scope: !923)
!942 = !DILocation(line: 43, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !923, file: !1, line: 43, column: 7)
!944 = !DILocation(line: 43, column: 13, scope: !943)
!945 = !DILocation(line: 43, column: 7, scope: !923)
!946 = !DILocation(line: 44, column: 12, scope: !943)
!947 = !DILocation(line: 44, column: 7, scope: !943)
!948 = !DILocation(line: 47, column: 18, scope: !949)
!949 = distinct !DILexicalBlock(scope: !943, file: !1, line: 46, column: 3)
!950 = !DILocation(line: 47, column: 17, scope: !949)
!951 = !DILocation(line: 47, column: 21, scope: !949)
!952 = !DILocation(line: 47, column: 20, scope: !949)
!953 = !DILocation(line: 47, column: 24, scope: !949)
!954 = !DILocation(line: 47, column: 23, scope: !949)
!955 = !DILocation(line: 47, column: 12, scope: !949)
!956 = !DILocation(line: 49, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !949, file: !1, line: 49, column: 11)
!958 = !DILocation(line: 49, column: 17, scope: !957)
!959 = !DILocation(line: 49, column: 11, scope: !949)
!960 = !DILocation(line: 51, column: 16, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !1, line: 50, column: 7)
!962 = !DILocation(line: 51, column: 21, scope: !961)
!963 = !DILocation(line: 51, column: 24, scope: !961)
!964 = !DILocation(line: 51, column: 14, scope: !961)
!965 = !DILocation(line: 53, column: 18, scope: !966)
!966 = distinct !DILexicalBlock(scope: !961, file: !1, line: 53, column: 11)
!967 = !DILocation(line: 53, column: 16, scope: !966)
!968 = !DILocation(line: 53, column: 22, scope: !969)
!969 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 1)
!970 = distinct !DILexicalBlock(scope: !966, file: !1, line: 53, column: 11)
!971 = !DILocation(line: 53, column: 25, scope: !969)
!972 = !DILocation(line: 53, column: 24, scope: !969)
!973 = !DILocation(line: 53, column: 11, scope: !969)
!974 = !DILocation(line: 54, column: 22, scope: !970)
!975 = !DILocation(line: 54, column: 25, scope: !970)
!976 = !DILocation(line: 54, column: 24, scope: !970)
!977 = !DILocation(line: 54, column: 29, scope: !970)
!978 = !DILocation(line: 54, column: 39, scope: !970)
!979 = !DILocation(line: 54, column: 41, scope: !970)
!980 = !DILocation(line: 54, column: 38, scope: !970)
!981 = !DILocation(line: 54, column: 37, scope: !970)
!982 = !DILocation(line: 54, column: 46, scope: !970)
!983 = !DILocation(line: 54, column: 48, scope: !970)
!984 = !DILocation(line: 54, column: 45, scope: !970)
!985 = !DILocation(line: 54, column: 44, scope: !970)
!986 = !DILocation(line: 54, column: 32, scope: !970)
!987 = !DILocation(line: 54, column: 54, scope: !970)
!988 = !DILocation(line: 54, column: 52, scope: !970)
!989 = !DILocation(line: 54, column: 27, scope: !970)
!990 = !DILocation(line: 54, column: 20, scope: !970)
!991 = !DILocation(line: 54, column: 15, scope: !970)
!992 = !DILocation(line: 53, column: 31, scope: !993)
!993 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 2)
!994 = !DILocation(line: 53, column: 11, scope: !993)
!995 = distinct !{!995, !996}
!996 = !DILocation(line: 53, column: 11, scope: !961)
!997 = !DILocation(line: 55, column: 7, scope: !961)
!998 = !DILocation(line: 58, column: 11, scope: !923)
!999 = !DILocation(line: 58, column: 17, scope: !923)
!1000 = !DILocation(line: 58, column: 16, scope: !923)
!1001 = !DILocation(line: 58, column: 8, scope: !923)
!1002 = !DILocation(line: 60, column: 9, scope: !923)
!1003 = !DILocation(line: 62, column: 10, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !923, file: !1, line: 62, column: 3)
!1005 = !DILocation(line: 62, column: 8, scope: !1004)
!1006 = !DILocation(line: 62, column: 14, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1008, file: !1, discriminator: 1)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 62, column: 3)
!1009 = !DILocation(line: 62, column: 17, scope: !1007)
!1010 = !DILocation(line: 62, column: 16, scope: !1007)
!1011 = !DILocation(line: 62, column: 3, scope: !1007)
!1012 = !DILocation(line: 63, column: 15, scope: !1008)
!1013 = !DILocation(line: 63, column: 18, scope: !1008)
!1014 = !DILocation(line: 63, column: 17, scope: !1008)
!1015 = !DILocation(line: 64, column: 10, scope: !1008)
!1016 = !DILocation(line: 64, column: 16, scope: !1008)
!1017 = !DILocation(line: 64, column: 29, scope: !1008)
!1018 = !DILocation(line: 64, column: 38, scope: !1008)
!1019 = !DILocation(line: 64, column: 36, scope: !1008)
!1020 = !DILocation(line: 64, column: 28, scope: !1008)
!1021 = !DILocation(line: 64, column: 27, scope: !1008)
!1022 = !DILocation(line: 64, column: 22, scope: !1008)
!1023 = !DILocation(line: 64, column: 44, scope: !1008)
!1024 = !DILocation(line: 64, column: 57, scope: !1008)
!1025 = !DILocation(line: 64, column: 66, scope: !1008)
!1026 = !DILocation(line: 64, column: 64, scope: !1008)
!1027 = !DILocation(line: 64, column: 56, scope: !1008)
!1028 = !DILocation(line: 64, column: 55, scope: !1008)
!1029 = !DILocation(line: 64, column: 50, scope: !1008)
!1030 = !DILocation(line: 64, column: 42, scope: !1008)
!1031 = !DILocation(line: 64, column: 13, scope: !1008)
!1032 = !DILocation(line: 64, column: 73, scope: !1008)
!1033 = !DILocation(line: 64, column: 71, scope: !1008)
!1034 = !DILocation(line: 63, column: 20, scope: !1008)
!1035 = !DILocation(line: 63, column: 13, scope: !1008)
!1036 = !DILocation(line: 63, column: 7, scope: !1008)
!1037 = !DILocation(line: 62, column: 27, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1008, file: !1, discriminator: 2)
!1039 = !DILocation(line: 62, column: 3, scope: !1038)
!1040 = distinct !{!1040, !1041}
!1041 = !DILocation(line: 62, column: 3, scope: !923)
!1042 = !DILocation(line: 66, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !923, file: !1, line: 66, column: 7)
!1044 = !DILocation(line: 66, column: 13, scope: !1043)
!1045 = !DILocation(line: 66, column: 7, scope: !923)
!1046 = !DILocation(line: 67, column: 13, scope: !1043)
!1047 = !DILocation(line: 67, column: 7, scope: !1043)
!1048 = !DILocation(line: 69, column: 11, scope: !923)
!1049 = !DILocation(line: 69, column: 18, scope: !923)
!1050 = !DILocation(line: 69, column: 16, scope: !923)
!1051 = !DILocation(line: 69, column: 26, scope: !923)
!1052 = !DILocation(line: 69, column: 24, scope: !923)
!1053 = !DILocation(line: 69, column: 3, scope: !923)
!1054 = distinct !DISubprogram(name: "ceor", scope: !1, file: !1, line: 73, type: !924, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!1055 = !DILocalVariable(name: "order", arg: 1, scope: !1054, file: !1, line: 73, type: !49)
!1056 = !DILocation(line: 73, column: 24, scope: !1054)
!1057 = !DILocalVariable(name: "qq", arg: 2, scope: !1054, file: !1, line: 73, type: !50)
!1058 = !DILocation(line: 73, column: 38, scope: !1054)
!1059 = !DILocalVariable(name: "aa", arg: 3, scope: !1054, file: !1, line: 73, type: !50)
!1060 = !DILocation(line: 73, column: 49, scope: !1054)
!1061 = !DILocalVariable(name: "nterms", arg: 4, scope: !1054, file: !1, line: 73, type: !49)
!1062 = !DILocation(line: 73, column: 57, scope: !1054)
!1063 = !DILocalVariable(name: "term", scope: !1054, file: !1, line: 75, type: !50)
!1064 = !DILocation(line: 75, column: 10, scope: !1054)
!1065 = !DILocalVariable(name: "term1", scope: !1054, file: !1, line: 75, type: !50)
!1066 = !DILocation(line: 75, column: 16, scope: !1054)
!1067 = !DILocalVariable(name: "ii", scope: !1054, file: !1, line: 76, type: !49)
!1068 = !DILocation(line: 76, column: 7, scope: !1054)
!1069 = !DILocalVariable(name: "n1", scope: !1054, file: !1, line: 76, type: !49)
!1070 = !DILocation(line: 76, column: 11, scope: !1054)
!1071 = !DILocation(line: 78, column: 10, scope: !1054)
!1072 = !DILocation(line: 78, column: 8, scope: !1054)
!1073 = !DILocation(line: 79, column: 21, scope: !1054)
!1074 = !DILocation(line: 79, column: 14, scope: !1054)
!1075 = !DILocation(line: 79, column: 26, scope: !1054)
!1076 = !DILocation(line: 79, column: 31, scope: !1054)
!1077 = !DILocation(line: 79, column: 8, scope: !1054)
!1078 = !DILocation(line: 79, column: 6, scope: !1054)
!1079 = !DILocation(line: 81, column: 10, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 81, column: 3)
!1081 = !DILocation(line: 81, column: 8, scope: !1080)
!1082 = !DILocation(line: 81, column: 14, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 1)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 81, column: 3)
!1085 = !DILocation(line: 81, column: 17, scope: !1083)
!1086 = !DILocation(line: 81, column: 16, scope: !1083)
!1087 = !DILocation(line: 81, column: 3, scope: !1083)
!1088 = !DILocation(line: 82, column: 14, scope: !1084)
!1089 = !DILocation(line: 82, column: 17, scope: !1084)
!1090 = !DILocation(line: 82, column: 16, scope: !1084)
!1091 = !DILocation(line: 82, column: 21, scope: !1084)
!1092 = !DILocation(line: 82, column: 31, scope: !1084)
!1093 = !DILocation(line: 82, column: 30, scope: !1084)
!1094 = !DILocation(line: 82, column: 34, scope: !1084)
!1095 = !DILocation(line: 82, column: 46, scope: !1084)
!1096 = !DILocation(line: 82, column: 45, scope: !1084)
!1097 = !DILocation(line: 82, column: 49, scope: !1084)
!1098 = !DILocation(line: 82, column: 40, scope: !1084)
!1099 = !DILocation(line: 82, column: 24, scope: !1084)
!1100 = !DILocation(line: 82, column: 58, scope: !1084)
!1101 = !DILocation(line: 82, column: 56, scope: !1084)
!1102 = !DILocation(line: 82, column: 19, scope: !1084)
!1103 = !DILocation(line: 82, column: 12, scope: !1084)
!1104 = !DILocation(line: 82, column: 7, scope: !1084)
!1105 = !DILocation(line: 81, column: 23, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 2)
!1107 = !DILocation(line: 81, column: 3, scope: !1106)
!1108 = distinct !{!1108, !1109}
!1109 = !DILocation(line: 81, column: 3, scope: !1054)
!1110 = !DILocation(line: 83, column: 11, scope: !1054)
!1111 = !DILocation(line: 83, column: 17, scope: !1054)
!1112 = !DILocation(line: 83, column: 16, scope: !1054)
!1113 = !DILocation(line: 83, column: 8, scope: !1054)
!1114 = !DILocation(line: 85, column: 9, scope: !1054)
!1115 = !DILocation(line: 86, column: 10, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 86, column: 3)
!1117 = !DILocation(line: 86, column: 8, scope: !1116)
!1118 = !DILocation(line: 86, column: 14, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1120, file: !1, discriminator: 1)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 86, column: 3)
!1121 = !DILocation(line: 86, column: 17, scope: !1119)
!1122 = !DILocation(line: 86, column: 16, scope: !1119)
!1123 = !DILocation(line: 86, column: 3, scope: !1119)
!1124 = !DILocation(line: 87, column: 15, scope: !1120)
!1125 = !DILocation(line: 87, column: 18, scope: !1120)
!1126 = !DILocation(line: 87, column: 17, scope: !1120)
!1127 = !DILocation(line: 88, column: 10, scope: !1120)
!1128 = !DILocation(line: 88, column: 16, scope: !1120)
!1129 = !DILocation(line: 88, column: 29, scope: !1120)
!1130 = !DILocation(line: 88, column: 38, scope: !1120)
!1131 = !DILocation(line: 88, column: 36, scope: !1120)
!1132 = !DILocation(line: 88, column: 28, scope: !1120)
!1133 = !DILocation(line: 88, column: 27, scope: !1120)
!1134 = !DILocation(line: 88, column: 22, scope: !1120)
!1135 = !DILocation(line: 88, column: 44, scope: !1120)
!1136 = !DILocation(line: 88, column: 57, scope: !1120)
!1137 = !DILocation(line: 88, column: 66, scope: !1120)
!1138 = !DILocation(line: 88, column: 64, scope: !1120)
!1139 = !DILocation(line: 88, column: 56, scope: !1120)
!1140 = !DILocation(line: 88, column: 55, scope: !1120)
!1141 = !DILocation(line: 88, column: 50, scope: !1120)
!1142 = !DILocation(line: 88, column: 42, scope: !1120)
!1143 = !DILocation(line: 88, column: 13, scope: !1120)
!1144 = !DILocation(line: 88, column: 73, scope: !1120)
!1145 = !DILocation(line: 88, column: 71, scope: !1120)
!1146 = !DILocation(line: 87, column: 20, scope: !1120)
!1147 = !DILocation(line: 87, column: 13, scope: !1120)
!1148 = !DILocation(line: 87, column: 7, scope: !1120)
!1149 = !DILocation(line: 86, column: 27, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1120, file: !1, discriminator: 2)
!1151 = !DILocation(line: 86, column: 3, scope: !1150)
!1152 = distinct !{!1152, !1153}
!1153 = !DILocation(line: 86, column: 3, scope: !1054)
!1154 = !DILocation(line: 90, column: 11, scope: !1054)
!1155 = !DILocation(line: 90, column: 18, scope: !1054)
!1156 = !DILocation(line: 90, column: 16, scope: !1054)
!1157 = !DILocation(line: 90, column: 26, scope: !1054)
!1158 = !DILocation(line: 90, column: 24, scope: !1054)
!1159 = !DILocation(line: 90, column: 3, scope: !1054)
!1160 = distinct !DISubprogram(name: "approx_s", scope: !1, file: !1, line: 293, type: !661, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!1161 = !DILocalVariable(name: "order", arg: 1, scope: !1160, file: !1, line: 293, type: !49)
!1162 = !DILocation(line: 293, column: 28, scope: !1160)
!1163 = !DILocalVariable(name: "qq", arg: 2, scope: !1160, file: !1, line: 293, type: !50)
!1164 = !DILocation(line: 293, column: 42, scope: !1160)
!1165 = !DILocalVariable(name: "approx", scope: !1160, file: !1, line: 295, type: !50)
!1166 = !DILocation(line: 295, column: 10, scope: !1160)
!1167 = !DILocalVariable(name: "c0", scope: !1160, file: !1, line: 296, type: !50)
!1168 = !DILocation(line: 296, column: 10, scope: !1160)
!1169 = !DILocalVariable(name: "c1", scope: !1160, file: !1, line: 296, type: !50)
!1170 = !DILocation(line: 296, column: 14, scope: !1160)
!1171 = !DILocalVariable(name: "c2", scope: !1160, file: !1, line: 296, type: !50)
!1172 = !DILocation(line: 296, column: 18, scope: !1160)
!1173 = !DILocation(line: 299, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 299, column: 7)
!1175 = !DILocation(line: 299, column: 13, scope: !1174)
!1176 = !DILocation(line: 299, column: 7, scope: !1160)
!1177 = !DILocation(line: 301, column: 5, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 300, column: 3)
!1179 = distinct !{!1179, !1177}
!1180 = !DILocation(line: 301, column: 5, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1182, file: !1, discriminator: 1)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 301, column: 5)
!1183 = !DILocation(line: 302, column: 3, scope: !1178)
!1184 = !DILocation(line: 304, column: 11, scope: !1160)
!1185 = !DILocation(line: 304, column: 3, scope: !1160)
!1186 = !DILocation(line: 307, column: 15, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 307, column: 15)
!1188 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 305, column: 3)
!1189 = !DILocation(line: 307, column: 18, scope: !1187)
!1190 = !DILocation(line: 307, column: 15, scope: !1188)
!1191 = !DILocation(line: 308, column: 32, scope: !1187)
!1192 = !DILocation(line: 308, column: 44, scope: !1187)
!1193 = !DILocation(line: 308, column: 43, scope: !1187)
!1194 = !DILocation(line: 308, column: 47, scope: !1187)
!1195 = !DILocation(line: 308, column: 46, scope: !1187)
!1196 = !DILocation(line: 308, column: 55, scope: !1187)
!1197 = !DILocation(line: 308, column: 54, scope: !1187)
!1198 = !DILocation(line: 308, column: 50, scope: !1187)
!1199 = !DILocation(line: 308, column: 58, scope: !1187)
!1200 = !DILocation(line: 308, column: 37, scope: !1187)
!1201 = !DILocation(line: 308, column: 35, scope: !1187)
!1202 = !DILocation(line: 308, column: 30, scope: !1187)
!1203 = !DILocation(line: 308, column: 25, scope: !1187)
!1204 = !DILocation(line: 308, column: 15, scope: !1187)
!1205 = !DILocation(line: 310, column: 33, scope: !1187)
!1206 = !DILocation(line: 310, column: 38, scope: !1187)
!1207 = !DILocation(line: 310, column: 42, scope: !1187)
!1208 = !DILocation(line: 310, column: 22, scope: !1187)
!1209 = !DILocation(line: 310, column: 15, scope: !1187)
!1210 = !DILocation(line: 314, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 314, column: 15)
!1212 = !DILocation(line: 314, column: 18, scope: !1211)
!1213 = !DILocation(line: 314, column: 15, scope: !1188)
!1214 = !DILocation(line: 315, column: 38, scope: !1211)
!1215 = !DILocation(line: 315, column: 41, scope: !1211)
!1216 = !DILocation(line: 315, column: 40, scope: !1211)
!1217 = !DILocation(line: 315, column: 36, scope: !1211)
!1218 = !DILocation(line: 315, column: 28, scope: !1211)
!1219 = !DILocation(line: 315, column: 26, scope: !1211)
!1220 = !DILocation(line: 315, column: 15, scope: !1211)
!1221 = !DILocation(line: 317, column: 33, scope: !1211)
!1222 = !DILocation(line: 317, column: 38, scope: !1211)
!1223 = !DILocation(line: 317, column: 42, scope: !1211)
!1224 = !DILocation(line: 317, column: 22, scope: !1211)
!1225 = !DILocation(line: 317, column: 15, scope: !1211)
!1226 = !DILocation(line: 321, column: 15, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 321, column: 15)
!1228 = !DILocation(line: 321, column: 18, scope: !1227)
!1229 = !DILocation(line: 321, column: 15, scope: !1188)
!1230 = !DILocation(line: 323, column: 20, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 322, column: 11)
!1232 = !DILocation(line: 323, column: 23, scope: !1231)
!1233 = !DILocation(line: 323, column: 18, scope: !1231)
!1234 = !DILocation(line: 324, column: 30, scope: !1231)
!1235 = !DILocation(line: 324, column: 29, scope: !1231)
!1236 = !DILocation(line: 324, column: 25, scope: !1231)
!1237 = !DILocation(line: 324, column: 37, scope: !1231)
!1238 = !DILocation(line: 324, column: 36, scope: !1231)
!1239 = !DILocation(line: 324, column: 40, scope: !1231)
!1240 = !DILocation(line: 324, column: 39, scope: !1231)
!1241 = !DILocation(line: 324, column: 33, scope: !1231)
!1242 = !DILocation(line: 324, column: 18, scope: !1231)
!1243 = !DILocation(line: 325, column: 20, scope: !1231)
!1244 = !DILocation(line: 325, column: 23, scope: !1231)
!1245 = !DILocation(line: 325, column: 22, scope: !1231)
!1246 = !DILocation(line: 325, column: 31, scope: !1231)
!1247 = !DILocation(line: 325, column: 29, scope: !1231)
!1248 = !DILocation(line: 325, column: 25, scope: !1231)
!1249 = !DILocation(line: 325, column: 18, scope: !1231)
!1250 = !DILocation(line: 326, column: 11, scope: !1231)
!1251 = !DILocation(line: 328, column: 33, scope: !1227)
!1252 = !DILocation(line: 328, column: 38, scope: !1227)
!1253 = !DILocation(line: 328, column: 42, scope: !1227)
!1254 = !DILocation(line: 328, column: 22, scope: !1227)
!1255 = !DILocation(line: 328, column: 15, scope: !1227)
!1256 = !DILocation(line: 329, column: 11, scope: !1188)
!1257 = !DILocation(line: 332, column: 15, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 332, column: 15)
!1259 = !DILocation(line: 332, column: 21, scope: !1258)
!1260 = !DILocation(line: 332, column: 15, scope: !1188)
!1261 = !DILocation(line: 334, column: 23, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 334, column: 19)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 333, column: 11)
!1264 = !DILocation(line: 334, column: 22, scope: !1262)
!1265 = !DILocation(line: 334, column: 38, scope: !1262)
!1266 = !DILocation(line: 334, column: 33, scope: !1262)
!1267 = !DILocation(line: 334, column: 32, scope: !1262)
!1268 = !DILocation(line: 334, column: 29, scope: !1262)
!1269 = !DILocation(line: 334, column: 19, scope: !1263)
!1270 = !DILocalVariable(name: "n2", scope: !1271, file: !1, line: 337, type: !50)
!1271 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 335, column: 15)
!1272 = !DILocation(line: 337, column: 26, scope: !1271)
!1273 = !DILocation(line: 337, column: 40, scope: !1271)
!1274 = !DILocation(line: 337, column: 46, scope: !1271)
!1275 = !DILocation(line: 337, column: 45, scope: !1271)
!1276 = !DILocation(line: 337, column: 31, scope: !1271)
!1277 = !DILocalVariable(name: "n22", scope: !1271, file: !1, line: 338, type: !50)
!1278 = !DILocation(line: 338, column: 26, scope: !1271)
!1279 = !DILocation(line: 338, column: 42, scope: !1271)
!1280 = !DILocation(line: 338, column: 45, scope: !1271)
!1281 = !DILocation(line: 338, column: 51, scope: !1271)
!1282 = !DILocation(line: 338, column: 54, scope: !1271)
!1283 = !DILocation(line: 338, column: 49, scope: !1271)
!1284 = !DILocalVariable(name: "q2", scope: !1271, file: !1, line: 339, type: !50)
!1285 = !DILocation(line: 339, column: 26, scope: !1271)
!1286 = !DILocation(line: 339, column: 31, scope: !1271)
!1287 = !DILocation(line: 339, column: 34, scope: !1271)
!1288 = !DILocation(line: 339, column: 33, scope: !1271)
!1289 = !DILocalVariable(name: "q4", scope: !1271, file: !1, line: 340, type: !50)
!1290 = !DILocation(line: 340, column: 26, scope: !1271)
!1291 = !DILocation(line: 340, column: 31, scope: !1271)
!1292 = !DILocation(line: 340, column: 34, scope: !1271)
!1293 = !DILocation(line: 340, column: 33, scope: !1271)
!1294 = !DILocation(line: 341, column: 28, scope: !1271)
!1295 = !DILocation(line: 341, column: 37, scope: !1271)
!1296 = !DILocation(line: 341, column: 36, scope: !1271)
!1297 = !DILocation(line: 341, column: 41, scope: !1271)
!1298 = !DILocation(line: 341, column: 44, scope: !1271)
!1299 = !DILocation(line: 341, column: 39, scope: !1271)
!1300 = !DILocation(line: 341, column: 31, scope: !1271)
!1301 = !DILocation(line: 341, column: 26, scope: !1271)
!1302 = !DILocation(line: 342, column: 32, scope: !1271)
!1303 = !DILocation(line: 342, column: 31, scope: !1271)
!1304 = !DILocation(line: 342, column: 35, scope: !1271)
!1305 = !DILocation(line: 342, column: 40, scope: !1271)
!1306 = !DILocation(line: 342, column: 39, scope: !1271)
!1307 = !DILocation(line: 342, column: 47, scope: !1271)
!1308 = !DILocation(line: 342, column: 46, scope: !1271)
!1309 = !DILocation(line: 342, column: 52, scope: !1271)
!1310 = !DILocation(line: 342, column: 55, scope: !1271)
!1311 = !DILocation(line: 342, column: 50, scope: !1271)
!1312 = !DILocation(line: 342, column: 61, scope: !1271)
!1313 = !DILocation(line: 342, column: 64, scope: !1271)
!1314 = !DILocation(line: 342, column: 59, scope: !1271)
!1315 = !DILocation(line: 342, column: 42, scope: !1271)
!1316 = !DILocation(line: 342, column: 26, scope: !1271)
!1317 = !DILocation(line: 343, column: 32, scope: !1271)
!1318 = !DILocation(line: 343, column: 31, scope: !1271)
!1319 = !DILocation(line: 343, column: 35, scope: !1271)
!1320 = !DILocation(line: 343, column: 34, scope: !1271)
!1321 = !DILocation(line: 343, column: 43, scope: !1271)
!1322 = !DILocation(line: 343, column: 42, scope: !1271)
!1323 = !DILocation(line: 343, column: 38, scope: !1271)
!1324 = !DILocation(line: 343, column: 46, scope: !1271)
!1325 = !DILocation(line: 343, column: 52, scope: !1271)
!1326 = !DILocation(line: 343, column: 51, scope: !1271)
!1327 = !DILocation(line: 343, column: 55, scope: !1271)
!1328 = !DILocation(line: 343, column: 54, scope: !1271)
!1329 = !DILocation(line: 344, column: 27, scope: !1271)
!1330 = !DILocation(line: 344, column: 26, scope: !1271)
!1331 = !DILocation(line: 344, column: 31, scope: !1271)
!1332 = !DILocation(line: 344, column: 30, scope: !1271)
!1333 = !DILocation(line: 344, column: 36, scope: !1271)
!1334 = !DILocation(line: 344, column: 39, scope: !1271)
!1335 = !DILocation(line: 344, column: 34, scope: !1271)
!1336 = !DILocation(line: 344, column: 45, scope: !1271)
!1337 = !DILocation(line: 344, column: 48, scope: !1271)
!1338 = !DILocation(line: 344, column: 43, scope: !1271)
!1339 = !DILocation(line: 344, column: 54, scope: !1271)
!1340 = !DILocation(line: 344, column: 57, scope: !1271)
!1341 = !DILocation(line: 344, column: 52, scope: !1271)
!1342 = !DILocation(line: 343, column: 57, scope: !1271)
!1343 = !DILocation(line: 343, column: 26, scope: !1271)
!1344 = !DILocation(line: 345, column: 27, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 345, column: 23)
!1346 = !DILocation(line: 345, column: 26, scope: !1345)
!1347 = !DILocation(line: 345, column: 42, scope: !1345)
!1348 = !DILocation(line: 345, column: 37, scope: !1345)
!1349 = !DILocation(line: 345, column: 36, scope: !1345)
!1350 = !DILocation(line: 345, column: 33, scope: !1345)
!1351 = !DILocation(line: 345, column: 23, scope: !1271)
!1352 = !DILocation(line: 347, column: 44, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 346, column: 19)
!1354 = !DILocation(line: 347, column: 49, scope: !1353)
!1355 = !DILocation(line: 347, column: 53, scope: !1353)
!1356 = !DILocation(line: 347, column: 33, scope: !1353)
!1357 = !DILocation(line: 347, column: 30, scope: !1353)
!1358 = !DILocation(line: 348, column: 30, scope: !1353)
!1359 = !DILocation(line: 349, column: 19, scope: !1353)
!1360 = !DILocation(line: 350, column: 15, scope: !1271)
!1361 = !DILocation(line: 352, column: 39, scope: !1262)
!1362 = !DILocation(line: 352, column: 44, scope: !1262)
!1363 = !DILocation(line: 352, column: 48, scope: !1262)
!1364 = !DILocation(line: 352, column: 28, scope: !1262)
!1365 = !DILocation(line: 352, column: 26, scope: !1262)
!1366 = !DILocation(line: 354, column: 22, scope: !1263)
!1367 = !DILocation(line: 354, column: 15, scope: !1263)
!1368 = !DILocation(line: 357, column: 22, scope: !1258)
!1369 = !DILocation(line: 357, column: 28, scope: !1258)
!1370 = !DILocation(line: 357, column: 27, scope: !1258)
!1371 = !DILocation(line: 357, column: 15, scope: !1258)
!1372 = !DILocation(line: 361, column: 24, scope: !1160)
!1373 = !DILocation(line: 361, column: 28, scope: !1160)
!1374 = !DILocation(line: 361, column: 32, scope: !1160)
!1375 = !DILocation(line: 361, column: 12, scope: !1160)
!1376 = !DILocation(line: 361, column: 10, scope: !1160)
!1377 = !DILocation(line: 363, column: 8, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 363, column: 8)
!1379 = !DILocation(line: 363, column: 15, scope: !1378)
!1380 = !DILocation(line: 363, column: 19, scope: !1378)
!1381 = !DILocation(line: 363, column: 27, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1378, file: !1, discriminator: 1)
!1383 = !DILocation(line: 363, column: 22, scope: !1382)
!1384 = !DILocation(line: 363, column: 37, scope: !1382)
!1385 = !DILocation(line: 363, column: 36, scope: !1382)
!1386 = !DILocation(line: 363, column: 31, scope: !1382)
!1387 = !DILocation(line: 363, column: 8, scope: !1382)
!1388 = !DILocation(line: 364, column: 25, scope: !1378)
!1389 = !DILocation(line: 364, column: 30, scope: !1378)
!1390 = !DILocation(line: 364, column: 34, scope: !1378)
!1391 = !DILocation(line: 364, column: 14, scope: !1378)
!1392 = !DILocation(line: 364, column: 7, scope: !1378)
!1393 = !DILocation(line: 366, column: 15, scope: !1378)
!1394 = !DILocation(line: 366, column: 21, scope: !1378)
!1395 = !DILocation(line: 366, column: 20, scope: !1378)
!1396 = !DILocation(line: 366, column: 34, scope: !1378)
!1397 = !DILocation(line: 366, column: 29, scope: !1378)
!1398 = !DILocation(line: 366, column: 27, scope: !1378)
!1399 = !DILocation(line: 366, column: 7, scope: !1378)
!1400 = !DILocation(line: 367, column: 1, scope: !1160)
!1401 = distinct !DISubprogram(name: "seer", scope: !1, file: !1, line: 94, type: !924, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!1402 = !DILocalVariable(name: "order", arg: 1, scope: !1401, file: !1, line: 94, type: !49)
!1403 = !DILocation(line: 94, column: 24, scope: !1401)
!1404 = !DILocalVariable(name: "qq", arg: 2, scope: !1401, file: !1, line: 94, type: !50)
!1405 = !DILocation(line: 94, column: 38, scope: !1401)
!1406 = !DILocalVariable(name: "aa", arg: 3, scope: !1401, file: !1, line: 94, type: !50)
!1407 = !DILocation(line: 94, column: 49, scope: !1401)
!1408 = !DILocalVariable(name: "nterms", arg: 4, scope: !1401, file: !1, line: 94, type: !49)
!1409 = !DILocation(line: 94, column: 57, scope: !1401)
!1410 = !DILocalVariable(name: "term", scope: !1401, file: !1, line: 96, type: !50)
!1411 = !DILocation(line: 96, column: 10, scope: !1401)
!1412 = !DILocalVariable(name: "term1", scope: !1401, file: !1, line: 96, type: !50)
!1413 = !DILocation(line: 96, column: 16, scope: !1401)
!1414 = !DILocalVariable(name: "ii", scope: !1401, file: !1, line: 97, type: !49)
!1415 = !DILocation(line: 97, column: 7, scope: !1401)
!1416 = !DILocalVariable(name: "n1", scope: !1401, file: !1, line: 97, type: !49)
!1417 = !DILocation(line: 97, column: 11, scope: !1401)
!1418 = !DILocation(line: 99, column: 8, scope: !1401)
!1419 = !DILocation(line: 100, column: 8, scope: !1401)
!1420 = !DILocation(line: 100, column: 13, scope: !1401)
!1421 = !DILocation(line: 100, column: 16, scope: !1401)
!1422 = !DILocation(line: 100, column: 6, scope: !1401)
!1423 = !DILocation(line: 102, column: 10, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 102, column: 3)
!1425 = !DILocation(line: 102, column: 8, scope: !1424)
!1426 = !DILocation(line: 102, column: 14, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1428, file: !1, discriminator: 1)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 102, column: 3)
!1429 = !DILocation(line: 102, column: 17, scope: !1427)
!1430 = !DILocation(line: 102, column: 16, scope: !1427)
!1431 = !DILocation(line: 102, column: 3, scope: !1427)
!1432 = !DILocation(line: 103, column: 14, scope: !1428)
!1433 = !DILocation(line: 103, column: 17, scope: !1428)
!1434 = !DILocation(line: 103, column: 16, scope: !1428)
!1435 = !DILocation(line: 103, column: 21, scope: !1428)
!1436 = !DILocation(line: 103, column: 31, scope: !1428)
!1437 = !DILocation(line: 103, column: 34, scope: !1428)
!1438 = !DILocation(line: 103, column: 30, scope: !1428)
!1439 = !DILocation(line: 103, column: 29, scope: !1428)
!1440 = !DILocation(line: 103, column: 40, scope: !1428)
!1441 = !DILocation(line: 103, column: 43, scope: !1428)
!1442 = !DILocation(line: 103, column: 39, scope: !1428)
!1443 = !DILocation(line: 103, column: 38, scope: !1428)
!1444 = !DILocation(line: 103, column: 24, scope: !1428)
!1445 = !DILocation(line: 103, column: 50, scope: !1428)
!1446 = !DILocation(line: 103, column: 48, scope: !1428)
!1447 = !DILocation(line: 103, column: 19, scope: !1428)
!1448 = !DILocation(line: 103, column: 12, scope: !1428)
!1449 = !DILocation(line: 103, column: 7, scope: !1428)
!1450 = !DILocation(line: 102, column: 23, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1428, file: !1, discriminator: 2)
!1452 = !DILocation(line: 102, column: 3, scope: !1451)
!1453 = distinct !{!1453, !1454}
!1454 = !DILocation(line: 102, column: 3, scope: !1401)
!1455 = !DILocation(line: 104, column: 11, scope: !1401)
!1456 = !DILocation(line: 104, column: 17, scope: !1401)
!1457 = !DILocation(line: 104, column: 16, scope: !1401)
!1458 = !DILocation(line: 104, column: 8, scope: !1401)
!1459 = !DILocation(line: 106, column: 9, scope: !1401)
!1460 = !DILocation(line: 107, column: 10, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 107, column: 3)
!1462 = !DILocation(line: 107, column: 8, scope: !1461)
!1463 = !DILocation(line: 107, column: 14, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1465, file: !1, discriminator: 1)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !1, line: 107, column: 3)
!1466 = !DILocation(line: 107, column: 17, scope: !1464)
!1467 = !DILocation(line: 107, column: 16, scope: !1464)
!1468 = !DILocation(line: 107, column: 3, scope: !1464)
!1469 = !DILocation(line: 108, column: 15, scope: !1465)
!1470 = !DILocation(line: 108, column: 18, scope: !1465)
!1471 = !DILocation(line: 108, column: 17, scope: !1465)
!1472 = !DILocation(line: 109, column: 10, scope: !1465)
!1473 = !DILocation(line: 109, column: 16, scope: !1465)
!1474 = !DILocation(line: 109, column: 29, scope: !1465)
!1475 = !DILocation(line: 109, column: 38, scope: !1465)
!1476 = !DILocation(line: 109, column: 36, scope: !1465)
!1477 = !DILocation(line: 109, column: 28, scope: !1465)
!1478 = !DILocation(line: 109, column: 27, scope: !1465)
!1479 = !DILocation(line: 109, column: 22, scope: !1465)
!1480 = !DILocation(line: 109, column: 44, scope: !1465)
!1481 = !DILocation(line: 109, column: 57, scope: !1465)
!1482 = !DILocation(line: 109, column: 66, scope: !1465)
!1483 = !DILocation(line: 109, column: 64, scope: !1465)
!1484 = !DILocation(line: 109, column: 56, scope: !1465)
!1485 = !DILocation(line: 109, column: 55, scope: !1465)
!1486 = !DILocation(line: 109, column: 50, scope: !1465)
!1487 = !DILocation(line: 109, column: 42, scope: !1465)
!1488 = !DILocation(line: 109, column: 13, scope: !1465)
!1489 = !DILocation(line: 109, column: 73, scope: !1465)
!1490 = !DILocation(line: 109, column: 71, scope: !1465)
!1491 = !DILocation(line: 108, column: 20, scope: !1465)
!1492 = !DILocation(line: 108, column: 13, scope: !1465)
!1493 = !DILocation(line: 108, column: 7, scope: !1465)
!1494 = !DILocation(line: 107, column: 27, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1465, file: !1, discriminator: 2)
!1496 = !DILocation(line: 107, column: 3, scope: !1495)
!1497 = distinct !{!1497, !1498}
!1498 = !DILocation(line: 107, column: 3, scope: !1401)
!1499 = !DILocation(line: 111, column: 11, scope: !1401)
!1500 = !DILocation(line: 111, column: 18, scope: !1401)
!1501 = !DILocation(line: 111, column: 16, scope: !1401)
!1502 = !DILocation(line: 111, column: 26, scope: !1401)
!1503 = !DILocation(line: 111, column: 24, scope: !1401)
!1504 = !DILocation(line: 111, column: 3, scope: !1401)
!1505 = distinct !DISubprogram(name: "seor", scope: !1, file: !1, line: 115, type: !924, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!1506 = !DILocalVariable(name: "order", arg: 1, scope: !1505, file: !1, line: 115, type: !49)
!1507 = !DILocation(line: 115, column: 24, scope: !1505)
!1508 = !DILocalVariable(name: "qq", arg: 2, scope: !1505, file: !1, line: 115, type: !50)
!1509 = !DILocation(line: 115, column: 38, scope: !1505)
!1510 = !DILocalVariable(name: "aa", arg: 3, scope: !1505, file: !1, line: 115, type: !50)
!1511 = !DILocation(line: 115, column: 49, scope: !1505)
!1512 = !DILocalVariable(name: "nterms", arg: 4, scope: !1505, file: !1, line: 115, type: !49)
!1513 = !DILocation(line: 115, column: 57, scope: !1505)
!1514 = !DILocalVariable(name: "term", scope: !1505, file: !1, line: 117, type: !50)
!1515 = !DILocation(line: 117, column: 10, scope: !1505)
!1516 = !DILocalVariable(name: "term1", scope: !1505, file: !1, line: 117, type: !50)
!1517 = !DILocation(line: 117, column: 16, scope: !1505)
!1518 = !DILocalVariable(name: "ii", scope: !1505, file: !1, line: 118, type: !49)
!1519 = !DILocation(line: 118, column: 7, scope: !1505)
!1520 = !DILocalVariable(name: "n1", scope: !1505, file: !1, line: 118, type: !49)
!1521 = !DILocation(line: 118, column: 11, scope: !1505)
!1522 = !DILocation(line: 121, column: 15, scope: !1505)
!1523 = !DILocation(line: 121, column: 14, scope: !1505)
!1524 = !DILocation(line: 121, column: 8, scope: !1505)
!1525 = !DILocation(line: 122, column: 21, scope: !1505)
!1526 = !DILocation(line: 122, column: 14, scope: !1505)
!1527 = !DILocation(line: 122, column: 26, scope: !1505)
!1528 = !DILocation(line: 122, column: 31, scope: !1505)
!1529 = !DILocation(line: 122, column: 8, scope: !1505)
!1530 = !DILocation(line: 122, column: 6, scope: !1505)
!1531 = !DILocation(line: 123, column: 10, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 123, column: 3)
!1533 = !DILocation(line: 123, column: 8, scope: !1532)
!1534 = !DILocation(line: 123, column: 14, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1536, file: !1, discriminator: 1)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 123, column: 3)
!1537 = !DILocation(line: 123, column: 17, scope: !1535)
!1538 = !DILocation(line: 123, column: 16, scope: !1535)
!1539 = !DILocation(line: 123, column: 3, scope: !1535)
!1540 = !DILocation(line: 124, column: 14, scope: !1536)
!1541 = !DILocation(line: 124, column: 17, scope: !1536)
!1542 = !DILocation(line: 124, column: 16, scope: !1536)
!1543 = !DILocation(line: 124, column: 21, scope: !1536)
!1544 = !DILocation(line: 124, column: 31, scope: !1536)
!1545 = !DILocation(line: 124, column: 30, scope: !1536)
!1546 = !DILocation(line: 124, column: 34, scope: !1536)
!1547 = !DILocation(line: 124, column: 46, scope: !1536)
!1548 = !DILocation(line: 124, column: 45, scope: !1536)
!1549 = !DILocation(line: 124, column: 49, scope: !1536)
!1550 = !DILocation(line: 124, column: 40, scope: !1536)
!1551 = !DILocation(line: 124, column: 24, scope: !1536)
!1552 = !DILocation(line: 124, column: 58, scope: !1536)
!1553 = !DILocation(line: 124, column: 56, scope: !1536)
!1554 = !DILocation(line: 124, column: 19, scope: !1536)
!1555 = !DILocation(line: 124, column: 12, scope: !1536)
!1556 = !DILocation(line: 124, column: 7, scope: !1536)
!1557 = !DILocation(line: 123, column: 23, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1536, file: !1, discriminator: 2)
!1559 = !DILocation(line: 123, column: 3, scope: !1558)
!1560 = distinct !{!1560, !1561}
!1561 = !DILocation(line: 123, column: 3, scope: !1505)
!1562 = !DILocation(line: 125, column: 11, scope: !1505)
!1563 = !DILocation(line: 125, column: 17, scope: !1505)
!1564 = !DILocation(line: 125, column: 16, scope: !1505)
!1565 = !DILocation(line: 125, column: 8, scope: !1505)
!1566 = !DILocation(line: 127, column: 9, scope: !1505)
!1567 = !DILocation(line: 128, column: 10, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 128, column: 3)
!1569 = !DILocation(line: 128, column: 8, scope: !1568)
!1570 = !DILocation(line: 128, column: 14, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !1, discriminator: 1)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 128, column: 3)
!1573 = !DILocation(line: 128, column: 17, scope: !1571)
!1574 = !DILocation(line: 128, column: 16, scope: !1571)
!1575 = !DILocation(line: 128, column: 3, scope: !1571)
!1576 = !DILocation(line: 129, column: 15, scope: !1572)
!1577 = !DILocation(line: 129, column: 18, scope: !1572)
!1578 = !DILocation(line: 129, column: 17, scope: !1572)
!1579 = !DILocation(line: 130, column: 10, scope: !1572)
!1580 = !DILocation(line: 130, column: 16, scope: !1572)
!1581 = !DILocation(line: 130, column: 29, scope: !1572)
!1582 = !DILocation(line: 130, column: 38, scope: !1572)
!1583 = !DILocation(line: 130, column: 36, scope: !1572)
!1584 = !DILocation(line: 130, column: 28, scope: !1572)
!1585 = !DILocation(line: 130, column: 27, scope: !1572)
!1586 = !DILocation(line: 130, column: 22, scope: !1572)
!1587 = !DILocation(line: 130, column: 44, scope: !1572)
!1588 = !DILocation(line: 130, column: 57, scope: !1572)
!1589 = !DILocation(line: 130, column: 66, scope: !1572)
!1590 = !DILocation(line: 130, column: 64, scope: !1572)
!1591 = !DILocation(line: 130, column: 56, scope: !1572)
!1592 = !DILocation(line: 130, column: 55, scope: !1572)
!1593 = !DILocation(line: 130, column: 50, scope: !1572)
!1594 = !DILocation(line: 130, column: 42, scope: !1572)
!1595 = !DILocation(line: 130, column: 13, scope: !1572)
!1596 = !DILocation(line: 130, column: 73, scope: !1572)
!1597 = !DILocation(line: 130, column: 71, scope: !1572)
!1598 = !DILocation(line: 129, column: 20, scope: !1572)
!1599 = !DILocation(line: 129, column: 13, scope: !1572)
!1600 = !DILocation(line: 129, column: 7, scope: !1572)
!1601 = !DILocation(line: 128, column: 27, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1572, file: !1, discriminator: 2)
!1603 = !DILocation(line: 128, column: 3, scope: !1602)
!1604 = distinct !{!1604, !1605}
!1605 = !DILocation(line: 128, column: 3, scope: !1505)
!1606 = !DILocation(line: 132, column: 11, scope: !1505)
!1607 = !DILocation(line: 132, column: 18, scope: !1505)
!1608 = !DILocation(line: 132, column: 16, scope: !1505)
!1609 = !DILocation(line: 132, column: 26, scope: !1505)
!1610 = !DILocation(line: 132, column: 24, scope: !1505)
!1611 = !DILocation(line: 132, column: 3, scope: !1505)
!1612 = distinct !DISubprogram(name: "gsl_sf_mathieu_a_array", scope: !1, file: !1, line: 710, type: !1613, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!49, !49, !49, !50, !1615, !1630}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64, align: 64)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !1617, line: 60, baseType: !1618)
!1617 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/fpcc/gsl-2.5/specfunc")
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1617, line: 42, size: 1024, align: 64, elements: !1619)
!1619 = !{!1620, !1624, !1625, !1626, !1627, !1628, !1629, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1655, !1667}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1618, file: !1617, line: 44, baseType: !1621, size: 64, align: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1622, line: 62, baseType: !1623)
!1622 = !DIFile(filename: "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include/stddef.h", directory: "/fpcc/gsl-2.5/specfunc")
!1623 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !1618, file: !1617, line: 45, baseType: !1621, size: 64, align: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !1618, file: !1617, line: 46, baseType: !1621, size: 64, align: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !1618, file: !1617, line: 47, baseType: !49, size: 32, align: 32, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !1618, file: !1617, line: 48, baseType: !50, size: 64, align: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !1618, file: !1617, line: 49, baseType: !50, size: 64, align: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !1618, file: !1617, line: 50, baseType: !1630, size: 64, align: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1618, file: !1617, line: 51, baseType: !1630, size: 64, align: 64, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !1618, file: !1617, line: 52, baseType: !1630, size: 64, align: 64, offset: 512)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !1618, file: !1617, line: 53, baseType: !1630, size: 64, align: 64, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !1618, file: !1617, line: 54, baseType: !1630, size: 64, align: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !1618, file: !1617, line: 55, baseType: !1630, size: 64, align: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !1618, file: !1617, line: 56, baseType: !1630, size: 64, align: 64, offset: 768)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1618, file: !1617, line: 57, baseType: !1638, size: 64, align: 64, offset: 832)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64, align: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !1640, line: 50, baseType: !1641)
!1640 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1640, line: 42, size: 320, align: 64, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1646, !1654}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1641, file: !1640, line: 44, baseType: !1621, size: 64, align: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1641, file: !1640, line: 45, baseType: !1621, size: 64, align: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1641, file: !1640, line: 46, baseType: !1630, size: 64, align: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1641, file: !1640, line: 47, baseType: !1647, size: 64, align: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !1649, line: 44, baseType: !1650)
!1649 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !1649, line: 38, size: 128, align: 64, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1650, file: !1649, line: 40, baseType: !1621, size: 64, align: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1650, file: !1649, line: 41, baseType: !1630, size: 64, align: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1641, file: !1640, line: 48, baseType: !49, size: 32, align: 32, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !1618, file: !1617, line: 58, baseType: !1656, size: 64, align: 64, offset: 896)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64, align: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !1658, line: 50, baseType: !1659)
!1658 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1658, line: 42, size: 384, align: 64, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !1659, file: !1658, line: 44, baseType: !1621, size: 64, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !1659, file: !1658, line: 45, baseType: !1621, size: 64, align: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !1659, file: !1658, line: 46, baseType: !1621, size: 64, align: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1659, file: !1658, line: 47, baseType: !1630, size: 64, align: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1659, file: !1658, line: 48, baseType: !1647, size: 64, align: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1659, file: !1658, line: 49, baseType: !49, size: 32, align: 32, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !1618, file: !1617, line: 59, baseType: !1668, size: 64, align: 64, offset: 960)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64, align: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !42, line: 54, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 48, size: 320, align: 64, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1670, file: !42, line: 49, baseType: !1621, size: 64, align: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1670, file: !42, line: 50, baseType: !1630, size: 64, align: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1670, file: !42, line: 51, baseType: !1630, size: 64, align: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1670, file: !42, line: 52, baseType: !1630, size: 64, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1670, file: !42, line: 53, baseType: !1630, size: 64, align: 64, offset: 256)
!1677 = !DILocalVariable(name: "order_min", arg: 1, scope: !1612, file: !1, line: 710, type: !49)
!1678 = !DILocation(line: 710, column: 32, scope: !1612)
!1679 = !DILocalVariable(name: "order_max", arg: 2, scope: !1612, file: !1, line: 710, type: !49)
!1680 = !DILocation(line: 710, column: 47, scope: !1612)
!1681 = !DILocalVariable(name: "qq", arg: 3, scope: !1612, file: !1, line: 710, type: !50)
!1682 = !DILocation(line: 710, column: 65, scope: !1612)
!1683 = !DILocalVariable(name: "work", arg: 4, scope: !1612, file: !1, line: 710, type: !1615)
!1684 = !DILocation(line: 710, column: 95, scope: !1612)
!1685 = !DILocalVariable(name: "result_array", arg: 5, scope: !1612, file: !1, line: 710, type: !1630)
!1686 = !DILocation(line: 710, column: 108, scope: !1612)
!1687 = !DILocalVariable(name: "even_order", scope: !1612, file: !1, line: 712, type: !1688)
!1688 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!1689 = !DILocation(line: 712, column: 16, scope: !1612)
!1690 = !DILocation(line: 712, column: 29, scope: !1612)
!1691 = !DILocation(line: 712, column: 35, scope: !1612)
!1692 = !DILocalVariable(name: "odd_order", scope: !1612, file: !1, line: 712, type: !1688)
!1693 = !DILocation(line: 712, column: 47, scope: !1612)
!1694 = !DILocation(line: 712, column: 59, scope: !1612)
!1695 = !DILocation(line: 712, column: 65, scope: !1612)
!1696 = !DILocalVariable(name: "extra_values", scope: !1612, file: !1, line: 713, type: !1688)
!1697 = !DILocation(line: 713, column: 7, scope: !1612)
!1698 = !DILocation(line: 713, column: 22, scope: !1612)
!1699 = !DILocation(line: 713, column: 28, scope: !1612)
!1700 = !DILocalVariable(name: "ii", scope: !1612, file: !1, line: 713, type: !1688)
!1701 = !DILocation(line: 713, column: 42, scope: !1612)
!1702 = !DILocalVariable(name: "jj", scope: !1612, file: !1, line: 713, type: !1688)
!1703 = !DILocation(line: 713, column: 46, scope: !1612)
!1704 = !DILocalVariable(name: "status", scope: !1612, file: !1, line: 714, type: !49)
!1705 = !DILocation(line: 714, column: 7, scope: !1612)
!1706 = !DILocalVariable(name: "tt", scope: !1612, file: !1, line: 715, type: !1630)
!1707 = !DILocation(line: 715, column: 11, scope: !1612)
!1708 = !DILocation(line: 715, column: 16, scope: !1612)
!1709 = !DILocation(line: 715, column: 22, scope: !1612)
!1710 = !DILocalVariable(name: "dd", scope: !1612, file: !1, line: 715, type: !1630)
!1711 = !DILocation(line: 715, column: 27, scope: !1612)
!1712 = !DILocation(line: 715, column: 32, scope: !1612)
!1713 = !DILocation(line: 715, column: 38, scope: !1612)
!1714 = !DILocalVariable(name: "ee", scope: !1612, file: !1, line: 715, type: !1630)
!1715 = !DILocation(line: 715, column: 43, scope: !1612)
!1716 = !DILocation(line: 715, column: 48, scope: !1612)
!1717 = !DILocation(line: 715, column: 54, scope: !1612)
!1718 = !DILocalVariable(name: "e2", scope: !1612, file: !1, line: 715, type: !1630)
!1719 = !DILocation(line: 715, column: 59, scope: !1612)
!1720 = !DILocation(line: 715, column: 64, scope: !1612)
!1721 = !DILocation(line: 715, column: 70, scope: !1612)
!1722 = !DILocalVariable(name: "zz", scope: !1612, file: !1, line: 716, type: !1630)
!1723 = !DILocation(line: 716, column: 11, scope: !1612)
!1724 = !DILocation(line: 716, column: 16, scope: !1612)
!1725 = !DILocation(line: 716, column: 22, scope: !1612)
!1726 = !DILocalVariable(name: "aa", scope: !1612, file: !1, line: 716, type: !1630)
!1727 = !DILocation(line: 716, column: 27, scope: !1612)
!1728 = !DILocation(line: 716, column: 32, scope: !1612)
!1729 = !DILocation(line: 716, column: 38, scope: !1612)
!1730 = !DILocalVariable(name: "mat", scope: !1612, file: !1, line: 717, type: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !1658, line: 57, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !1658, line: 55, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1658, line: 52, size: 384, align: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !1733, file: !1658, line: 54, baseType: !1657, size: 384, align: 64)
!1736 = !DILocation(line: 717, column: 19, scope: !1612)
!1737 = !DILocalVariable(name: "evec", scope: !1612, file: !1, line: 717, type: !1731)
!1738 = !DILocation(line: 717, column: 24, scope: !1612)
!1739 = !DILocalVariable(name: "eval", scope: !1612, file: !1, line: 718, type: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !1640, line: 57, baseType: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !1640, line: 55, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1640, line: 52, size: 320, align: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1742, file: !1640, line: 54, baseType: !1639, size: 320, align: 64)
!1745 = !DILocation(line: 718, column: 19, scope: !1612)
!1746 = !DILocalVariable(name: "wmat", scope: !1612, file: !1, line: 719, type: !1668)
!1747 = !DILocation(line: 719, column: 30, scope: !1612)
!1748 = !DILocation(line: 719, column: 37, scope: !1612)
!1749 = !DILocation(line: 719, column: 43, scope: !1612)
!1750 = !DILocation(line: 721, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 721, column: 7)
!1752 = !DILocation(line: 721, column: 19, scope: !1751)
!1753 = !DILocation(line: 721, column: 25, scope: !1751)
!1754 = !DILocation(line: 721, column: 17, scope: !1751)
!1755 = !DILocation(line: 721, column: 30, scope: !1751)
!1756 = !DILocation(line: 721, column: 33, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1751, file: !1, discriminator: 1)
!1758 = !DILocation(line: 721, column: 46, scope: !1757)
!1759 = !DILocation(line: 721, column: 43, scope: !1757)
!1760 = !DILocation(line: 721, column: 56, scope: !1757)
!1761 = !DILocation(line: 721, column: 59, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1751, file: !1, discriminator: 2)
!1763 = !DILocation(line: 721, column: 69, scope: !1762)
!1764 = !DILocation(line: 721, column: 7, scope: !1762)
!1765 = !DILocation(line: 723, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1751, file: !1, line: 722, column: 5)
!1767 = distinct !{!1767, !1765}
!1768 = !DILocation(line: 723, column: 7, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1770, file: !1, discriminator: 1)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 723, column: 7)
!1771 = !DILocation(line: 724, column: 5, scope: !1766)
!1772 = !DILocation(line: 729, column: 3, scope: !1612)
!1773 = !DILocation(line: 729, column: 9, scope: !1612)
!1774 = !DILocation(line: 730, column: 3, scope: !1612)
!1775 = !DILocation(line: 730, column: 9, scope: !1612)
!1776 = !DILocation(line: 731, column: 11, scope: !1612)
!1777 = !DILocation(line: 731, column: 3, scope: !1612)
!1778 = !DILocation(line: 731, column: 9, scope: !1612)
!1779 = !DILocation(line: 732, column: 10, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 732, column: 3)
!1781 = !DILocation(line: 732, column: 8, scope: !1780)
!1782 = !DILocation(line: 732, column: 14, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1784, file: !1, discriminator: 1)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !1, line: 732, column: 3)
!1785 = !DILocation(line: 732, column: 17, scope: !1783)
!1786 = !DILocation(line: 732, column: 27, scope: !1783)
!1787 = !DILocation(line: 732, column: 16, scope: !1783)
!1788 = !DILocation(line: 732, column: 3, scope: !1783)
!1789 = !DILocation(line: 734, column: 18, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1784, file: !1, line: 733, column: 3)
!1791 = !DILocation(line: 734, column: 12, scope: !1790)
!1792 = !DILocation(line: 734, column: 11, scope: !1790)
!1793 = !DILocation(line: 734, column: 7, scope: !1790)
!1794 = !DILocation(line: 734, column: 16, scope: !1790)
!1795 = !DILocation(line: 735, column: 22, scope: !1790)
!1796 = !DILocation(line: 735, column: 21, scope: !1790)
!1797 = !DILocation(line: 735, column: 25, scope: !1790)
!1798 = !DILocation(line: 735, column: 24, scope: !1790)
!1799 = !DILocation(line: 735, column: 20, scope: !1790)
!1800 = !DILocation(line: 735, column: 12, scope: !1790)
!1801 = !DILocation(line: 735, column: 11, scope: !1790)
!1802 = !DILocation(line: 735, column: 14, scope: !1790)
!1803 = !DILocation(line: 735, column: 7, scope: !1790)
!1804 = !DILocation(line: 735, column: 18, scope: !1790)
!1805 = !DILocation(line: 736, column: 20, scope: !1790)
!1806 = !DILocation(line: 736, column: 12, scope: !1790)
!1807 = !DILocation(line: 736, column: 11, scope: !1790)
!1808 = !DILocation(line: 736, column: 14, scope: !1790)
!1809 = !DILocation(line: 736, column: 7, scope: !1790)
!1810 = !DILocation(line: 736, column: 18, scope: !1790)
!1811 = !DILocation(line: 737, column: 3, scope: !1790)
!1812 = !DILocation(line: 732, column: 33, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1784, file: !1, discriminator: 2)
!1814 = !DILocation(line: 732, column: 3, scope: !1813)
!1815 = distinct !{!1815, !1816}
!1816 = !DILocation(line: 732, column: 3, scope: !1612)
!1817 = !DILocation(line: 738, column: 24, scope: !1612)
!1818 = !DILocation(line: 738, column: 8, scope: !1612)
!1819 = !DILocation(line: 738, column: 7, scope: !1612)
!1820 = !DILocation(line: 738, column: 18, scope: !1612)
!1821 = !DILocation(line: 738, column: 3, scope: !1612)
!1822 = !DILocation(line: 738, column: 22, scope: !1612)
!1823 = !DILocation(line: 739, column: 27, scope: !1612)
!1824 = !DILocation(line: 739, column: 38, scope: !1612)
!1825 = !DILocation(line: 739, column: 25, scope: !1612)
!1826 = !DILocation(line: 739, column: 44, scope: !1612)
!1827 = !DILocation(line: 739, column: 55, scope: !1612)
!1828 = !DILocation(line: 739, column: 42, scope: !1612)
!1829 = !DILocation(line: 739, column: 24, scope: !1612)
!1830 = !DILocation(line: 739, column: 8, scope: !1612)
!1831 = !DILocation(line: 739, column: 7, scope: !1612)
!1832 = !DILocation(line: 739, column: 18, scope: !1612)
!1833 = !DILocation(line: 739, column: 3, scope: !1612)
!1834 = !DILocation(line: 739, column: 22, scope: !1612)
!1835 = !DILocation(line: 740, column: 8, scope: !1612)
!1836 = !DILocation(line: 740, column: 7, scope: !1612)
!1837 = !DILocation(line: 740, column: 18, scope: !1612)
!1838 = !DILocation(line: 740, column: 3, scope: !1612)
!1839 = !DILocation(line: 740, column: 22, scope: !1612)
!1840 = !DILocation(line: 742, column: 3, scope: !1612)
!1841 = !DILocation(line: 742, column: 9, scope: !1612)
!1842 = !DILocation(line: 744, column: 29, scope: !1612)
!1843 = !DILocation(line: 744, column: 41, scope: !1612)
!1844 = !DILocation(line: 744, column: 45, scope: !1612)
!1845 = !DILocation(line: 744, column: 49, scope: !1612)
!1846 = !DILocation(line: 744, column: 53, scope: !1612)
!1847 = !DILocation(line: 744, column: 12, scope: !1612)
!1848 = !DILocation(line: 744, column: 10, scope: !1612)
!1849 = !DILocation(line: 746, column: 7, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 746, column: 7)
!1851 = !DILocation(line: 746, column: 7, scope: !1612)
!1852 = !DILocation(line: 748, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 747, column: 5)
!1854 = distinct !{!1854, !1852}
!1855 = !DILocation(line: 748, column: 7, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1857, file: !1, discriminator: 1)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 748, column: 7)
!1858 = !DILocation(line: 749, column: 5, scope: !1853)
!1859 = !DILocation(line: 752, column: 10, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 752, column: 3)
!1861 = !DILocation(line: 752, column: 8, scope: !1860)
!1862 = !DILocation(line: 752, column: 14, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1864, file: !1, discriminator: 1)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !1, line: 752, column: 3)
!1865 = !DILocation(line: 752, column: 17, scope: !1863)
!1866 = !DILocation(line: 752, column: 28, scope: !1863)
!1867 = !DILocation(line: 752, column: 27, scope: !1863)
!1868 = !DILocation(line: 752, column: 16, scope: !1863)
!1869 = !DILocation(line: 752, column: 3, scope: !1863)
!1870 = !DILocation(line: 753, column: 10, scope: !1864)
!1871 = !DILocation(line: 753, column: 7, scope: !1864)
!1872 = !DILocation(line: 753, column: 14, scope: !1864)
!1873 = !DILocation(line: 752, column: 42, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1864, file: !1, discriminator: 2)
!1875 = !DILocation(line: 752, column: 3, scope: !1874)
!1876 = distinct !{!1876, !1877}
!1877 = !DILocation(line: 752, column: 3, scope: !1612)
!1878 = !DILocation(line: 755, column: 11, scope: !1612)
!1879 = !DILocation(line: 755, column: 3, scope: !1612)
!1880 = !DILocation(line: 755, column: 9, scope: !1612)
!1881 = !DILocation(line: 756, column: 11, scope: !1612)
!1882 = !DILocation(line: 756, column: 3, scope: !1612)
!1883 = !DILocation(line: 756, column: 9, scope: !1612)
!1884 = !DILocation(line: 757, column: 10, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 757, column: 3)
!1886 = !DILocation(line: 757, column: 8, scope: !1885)
!1887 = !DILocation(line: 757, column: 14, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1889, file: !1, discriminator: 1)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !1, line: 757, column: 3)
!1890 = !DILocation(line: 757, column: 17, scope: !1888)
!1891 = !DILocation(line: 757, column: 27, scope: !1888)
!1892 = !DILocation(line: 757, column: 16, scope: !1888)
!1893 = !DILocation(line: 757, column: 3, scope: !1888)
!1894 = !DILocation(line: 759, column: 35, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !1, line: 758, column: 3)
!1896 = !DILocation(line: 759, column: 32, scope: !1895)
!1897 = !DILocation(line: 759, column: 10, scope: !1895)
!1898 = !DILocation(line: 759, column: 13, scope: !1895)
!1899 = !DILocation(line: 759, column: 12, scope: !1895)
!1900 = !DILocation(line: 759, column: 24, scope: !1895)
!1901 = !DILocation(line: 759, column: 23, scope: !1895)
!1902 = !DILocation(line: 759, column: 26, scope: !1895)
!1903 = !DILocation(line: 759, column: 7, scope: !1895)
!1904 = !DILocation(line: 759, column: 30, scope: !1895)
!1905 = !DILocation(line: 760, column: 33, scope: !1895)
!1906 = !DILocation(line: 760, column: 30, scope: !1895)
!1907 = !DILocation(line: 760, column: 10, scope: !1895)
!1908 = !DILocation(line: 760, column: 13, scope: !1895)
!1909 = !DILocation(line: 760, column: 12, scope: !1895)
!1910 = !DILocation(line: 760, column: 24, scope: !1895)
!1911 = !DILocation(line: 760, column: 23, scope: !1895)
!1912 = !DILocation(line: 760, column: 7, scope: !1895)
!1913 = !DILocation(line: 760, column: 28, scope: !1895)
!1914 = !DILocation(line: 761, column: 35, scope: !1895)
!1915 = !DILocation(line: 761, column: 37, scope: !1895)
!1916 = !DILocation(line: 761, column: 32, scope: !1895)
!1917 = !DILocation(line: 761, column: 10, scope: !1895)
!1918 = !DILocation(line: 761, column: 13, scope: !1895)
!1919 = !DILocation(line: 761, column: 12, scope: !1895)
!1920 = !DILocation(line: 761, column: 24, scope: !1895)
!1921 = !DILocation(line: 761, column: 23, scope: !1895)
!1922 = !DILocation(line: 761, column: 26, scope: !1895)
!1923 = !DILocation(line: 761, column: 7, scope: !1895)
!1924 = !DILocation(line: 761, column: 30, scope: !1895)
!1925 = !DILocation(line: 762, column: 3, scope: !1895)
!1926 = !DILocation(line: 757, column: 33, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1889, file: !1, discriminator: 2)
!1928 = !DILocation(line: 757, column: 3, scope: !1927)
!1929 = distinct !{!1929, !1930}
!1930 = !DILocation(line: 757, column: 3, scope: !1612)
!1931 = !DILocation(line: 763, column: 51, scope: !1612)
!1932 = !DILocation(line: 763, column: 61, scope: !1612)
!1933 = !DILocation(line: 763, column: 48, scope: !1612)
!1934 = !DILocation(line: 763, column: 6, scope: !1612)
!1935 = !DILocation(line: 763, column: 18, scope: !1612)
!1936 = !DILocation(line: 763, column: 28, scope: !1612)
!1937 = !DILocation(line: 763, column: 16, scope: !1612)
!1938 = !DILocation(line: 763, column: 32, scope: !1612)
!1939 = !DILocation(line: 763, column: 31, scope: !1612)
!1940 = !DILocation(line: 763, column: 42, scope: !1612)
!1941 = !DILocation(line: 763, column: 3, scope: !1612)
!1942 = !DILocation(line: 763, column: 46, scope: !1612)
!1943 = !DILocation(line: 764, column: 36, scope: !1612)
!1944 = !DILocation(line: 764, column: 46, scope: !1612)
!1945 = !DILocation(line: 764, column: 33, scope: !1612)
!1946 = !DILocation(line: 764, column: 6, scope: !1612)
!1947 = !DILocation(line: 764, column: 17, scope: !1612)
!1948 = !DILocation(line: 764, column: 16, scope: !1612)
!1949 = !DILocation(line: 764, column: 27, scope: !1612)
!1950 = !DILocation(line: 764, column: 3, scope: !1612)
!1951 = !DILocation(line: 764, column: 31, scope: !1612)
!1952 = !DILocation(line: 767, column: 31, scope: !1612)
!1953 = !DILocation(line: 767, column: 35, scope: !1612)
!1954 = !DILocation(line: 767, column: 47, scope: !1612)
!1955 = !DILocation(line: 767, column: 9, scope: !1612)
!1956 = !DILocation(line: 767, column: 9, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1612, file: !1, discriminator: 1)
!1958 = !DILocation(line: 768, column: 31, scope: !1612)
!1959 = !DILocation(line: 768, column: 37, scope: !1612)
!1960 = !DILocation(line: 768, column: 46, scope: !1612)
!1961 = !DILocation(line: 768, column: 10, scope: !1612)
!1962 = !DILocation(line: 768, column: 10, scope: !1957)
!1963 = !DILocation(line: 769, column: 31, scope: !1612)
!1964 = !DILocation(line: 769, column: 37, scope: !1612)
!1965 = !DILocation(line: 769, column: 49, scope: !1612)
!1966 = !DILocation(line: 769, column: 61, scope: !1612)
!1967 = !DILocation(line: 769, column: 10, scope: !1612)
!1968 = !DILocation(line: 769, column: 10, scope: !1957)
!1969 = !DILocation(line: 770, column: 24, scope: !1612)
!1970 = !DILocation(line: 770, column: 38, scope: !1612)
!1971 = !DILocation(line: 770, column: 52, scope: !1612)
!1972 = !DILocation(line: 770, column: 60, scope: !1612)
!1973 = !DILocation(line: 770, column: 3, scope: !1612)
!1974 = !DILocation(line: 771, column: 30, scope: !1612)
!1975 = !DILocation(line: 771, column: 44, scope: !1612)
!1976 = !DILocation(line: 771, column: 3, scope: !1612)
!1977 = !DILocation(line: 773, column: 10, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 773, column: 3)
!1979 = !DILocation(line: 773, column: 8, scope: !1978)
!1980 = !DILocation(line: 773, column: 14, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1982, file: !1, discriminator: 1)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !1, line: 773, column: 3)
!1983 = !DILocation(line: 773, column: 17, scope: !1981)
!1984 = !DILocation(line: 773, column: 28, scope: !1981)
!1985 = !DILocation(line: 773, column: 27, scope: !1981)
!1986 = !DILocation(line: 773, column: 16, scope: !1981)
!1987 = !DILocation(line: 773, column: 3, scope: !1981)
!1988 = !DILocation(line: 774, column: 39, scope: !1982)
!1989 = !DILocation(line: 774, column: 47, scope: !1982)
!1990 = !DILocation(line: 774, column: 18, scope: !1982)
!1991 = !DILocation(line: 774, column: 12, scope: !1982)
!1992 = !DILocation(line: 774, column: 11, scope: !1982)
!1993 = !DILocation(line: 774, column: 7, scope: !1982)
!1994 = !DILocation(line: 774, column: 16, scope: !1982)
!1995 = !DILocation(line: 773, column: 44, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1982, file: !1, discriminator: 2)
!1997 = !DILocation(line: 773, column: 3, scope: !1996)
!1998 = distinct !{!1998, !1999}
!1999 = !DILocation(line: 773, column: 3, scope: !1612)
!2000 = !DILocation(line: 777, column: 10, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 777, column: 3)
!2002 = !DILocation(line: 777, column: 8, scope: !2001)
!2003 = !DILocation(line: 777, column: 14, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 1)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !1, line: 777, column: 3)
!2006 = !DILocation(line: 777, column: 17, scope: !2004)
!2007 = !DILocation(line: 777, column: 27, scope: !2004)
!2008 = !DILocation(line: 777, column: 26, scope: !2004)
!2009 = !DILocation(line: 777, column: 16, scope: !2004)
!2010 = !DILocation(line: 777, column: 3, scope: !2004)
!2011 = !DILocation(line: 778, column: 10, scope: !2005)
!2012 = !DILocation(line: 778, column: 7, scope: !2005)
!2013 = !DILocation(line: 778, column: 14, scope: !2005)
!2014 = !DILocation(line: 777, column: 40, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 2)
!2016 = !DILocation(line: 777, column: 3, scope: !2015)
!2017 = distinct !{!2017, !2018}
!2018 = !DILocation(line: 777, column: 3, scope: !1612)
!2019 = !DILocation(line: 779, column: 10, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 779, column: 3)
!2021 = !DILocation(line: 779, column: 8, scope: !2020)
!2022 = !DILocation(line: 779, column: 14, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2024, file: !1, discriminator: 1)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !1, line: 779, column: 3)
!2025 = !DILocation(line: 779, column: 17, scope: !2023)
!2026 = !DILocation(line: 779, column: 16, scope: !2023)
!2027 = !DILocation(line: 779, column: 3, scope: !2023)
!2028 = !DILocation(line: 780, column: 14, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !1, line: 780, column: 7)
!2030 = !DILocation(line: 780, column: 12, scope: !2029)
!2031 = !DILocation(line: 780, column: 18, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2033, file: !1, discriminator: 1)
!2033 = distinct !DILexicalBlock(scope: !2029, file: !1, line: 780, column: 7)
!2034 = !DILocation(line: 780, column: 21, scope: !2032)
!2035 = !DILocation(line: 780, column: 20, scope: !2032)
!2036 = !DILocation(line: 780, column: 7, scope: !2032)
!2037 = !DILocation(line: 782, column: 15, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 782, column: 15)
!2039 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 781, column: 7)
!2040 = !DILocation(line: 782, column: 21, scope: !2038)
!2041 = !DILocation(line: 782, column: 18, scope: !2038)
!2042 = !DILocation(line: 782, column: 15, scope: !2039)
!2043 = !DILocation(line: 783, column: 40, scope: !2038)
!2044 = !DILocation(line: 783, column: 39, scope: !2038)
!2045 = !DILocation(line: 783, column: 43, scope: !2038)
!2046 = !DILocation(line: 783, column: 51, scope: !2038)
!2047 = !DILocation(line: 783, column: 50, scope: !2038)
!2048 = !DILocation(line: 783, column: 54, scope: !2038)
!2049 = !DILocation(line: 783, column: 47, scope: !2038)
!2050 = !DILocation(line: 783, column: 37, scope: !2038)
!2051 = !DILocation(line: 783, column: 18, scope: !2038)
!2052 = !DILocation(line: 783, column: 21, scope: !2038)
!2053 = !DILocation(line: 783, column: 20, scope: !2038)
!2054 = !DILocation(line: 783, column: 31, scope: !2038)
!2055 = !DILocation(line: 783, column: 30, scope: !2038)
!2056 = !DILocation(line: 783, column: 15, scope: !2038)
!2057 = !DILocation(line: 783, column: 35, scope: !2038)
!2058 = !DILocation(line: 784, column: 20, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2038, file: !1, line: 784, column: 20)
!2060 = !DILocation(line: 784, column: 26, scope: !2059)
!2061 = !DILocation(line: 784, column: 29, scope: !2059)
!2062 = !DILocation(line: 784, column: 23, scope: !2059)
!2063 = !DILocation(line: 784, column: 33, scope: !2059)
!2064 = !DILocation(line: 784, column: 36, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2059, file: !1, discriminator: 1)
!2066 = !DILocation(line: 784, column: 39, scope: !2065)
!2067 = !DILocation(line: 784, column: 46, scope: !2065)
!2068 = !DILocation(line: 784, column: 43, scope: !2065)
!2069 = !DILocation(line: 784, column: 20, scope: !2065)
!2070 = !DILocation(line: 785, column: 37, scope: !2059)
!2071 = !DILocation(line: 785, column: 18, scope: !2059)
!2072 = !DILocation(line: 785, column: 21, scope: !2059)
!2073 = !DILocation(line: 785, column: 20, scope: !2059)
!2074 = !DILocation(line: 785, column: 31, scope: !2059)
!2075 = !DILocation(line: 785, column: 30, scope: !2059)
!2076 = !DILocation(line: 785, column: 15, scope: !2059)
!2077 = !DILocation(line: 785, column: 35, scope: !2059)
!2078 = !DILocation(line: 786, column: 7, scope: !2039)
!2079 = !DILocation(line: 780, column: 34, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2033, file: !1, discriminator: 2)
!2081 = !DILocation(line: 780, column: 7, scope: !2080)
!2082 = distinct !{!2082, !2083}
!2083 = !DILocation(line: 780, column: 7, scope: !2024)
!2084 = !DILocation(line: 786, column: 7, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2029, file: !1, discriminator: 1)
!2086 = !DILocation(line: 779, column: 30, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2024, file: !1, discriminator: 2)
!2088 = !DILocation(line: 779, column: 3, scope: !2087)
!2089 = distinct !{!2089, !2090}
!2090 = !DILocation(line: 779, column: 3, scope: !1612)
!2091 = !DILocation(line: 787, column: 12, scope: !1612)
!2092 = !DILocation(line: 787, column: 3, scope: !1612)
!2093 = !DILocation(line: 787, column: 9, scope: !1612)
!2094 = !DILocation(line: 790, column: 31, scope: !1612)
!2095 = !DILocation(line: 790, column: 35, scope: !1612)
!2096 = !DILocation(line: 790, column: 46, scope: !1612)
!2097 = !DILocation(line: 790, column: 9, scope: !1612)
!2098 = !DILocation(line: 790, column: 9, scope: !1957)
!2099 = !DILocation(line: 791, column: 31, scope: !1612)
!2100 = !DILocation(line: 791, column: 37, scope: !1612)
!2101 = !DILocation(line: 791, column: 46, scope: !1612)
!2102 = !DILocation(line: 791, column: 10, scope: !1612)
!2103 = !DILocation(line: 791, column: 10, scope: !1957)
!2104 = !DILocation(line: 792, column: 31, scope: !1612)
!2105 = !DILocation(line: 792, column: 37, scope: !1612)
!2106 = !DILocation(line: 792, column: 49, scope: !1612)
!2107 = !DILocation(line: 792, column: 60, scope: !1612)
!2108 = !DILocation(line: 792, column: 10, scope: !1612)
!2109 = !DILocation(line: 792, column: 10, scope: !1957)
!2110 = !DILocation(line: 793, column: 24, scope: !1612)
!2111 = !DILocation(line: 793, column: 38, scope: !1612)
!2112 = !DILocation(line: 793, column: 52, scope: !1612)
!2113 = !DILocation(line: 793, column: 60, scope: !1612)
!2114 = !DILocation(line: 793, column: 3, scope: !1612)
!2115 = !DILocation(line: 794, column: 30, scope: !1612)
!2116 = !DILocation(line: 794, column: 44, scope: !1612)
!2117 = !DILocation(line: 794, column: 3, scope: !1612)
!2118 = !DILocation(line: 796, column: 10, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 796, column: 3)
!2120 = !DILocation(line: 796, column: 8, scope: !2119)
!2121 = !DILocation(line: 796, column: 14, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2123, file: !1, discriminator: 1)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !1, line: 796, column: 3)
!2124 = !DILocation(line: 796, column: 17, scope: !2122)
!2125 = !DILocation(line: 796, column: 27, scope: !2122)
!2126 = !DILocation(line: 796, column: 26, scope: !2122)
!2127 = !DILocation(line: 796, column: 16, scope: !2122)
!2128 = !DILocation(line: 796, column: 3, scope: !2122)
!2129 = !DILocation(line: 797, column: 41, scope: !2123)
!2130 = !DILocation(line: 797, column: 49, scope: !2123)
!2131 = !DILocation(line: 797, column: 20, scope: !2123)
!2132 = !DILocation(line: 797, column: 12, scope: !2123)
!2133 = !DILocation(line: 797, column: 11, scope: !2123)
!2134 = !DILocation(line: 797, column: 14, scope: !2123)
!2135 = !DILocation(line: 797, column: 7, scope: !2123)
!2136 = !DILocation(line: 797, column: 18, scope: !2123)
!2137 = !DILocation(line: 796, column: 43, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2123, file: !1, discriminator: 2)
!2139 = !DILocation(line: 796, column: 3, scope: !2138)
!2140 = distinct !{!2140, !2141}
!2141 = !DILocation(line: 796, column: 3, scope: !1612)
!2142 = !DILocation(line: 799, column: 13, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 799, column: 3)
!2144 = !DILocation(line: 799, column: 11, scope: !2143)
!2145 = !DILocation(line: 799, column: 8, scope: !2143)
!2146 = !DILocation(line: 799, column: 25, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 1)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !1, line: 799, column: 3)
!2149 = !DILocation(line: 799, column: 31, scope: !2147)
!2150 = !DILocation(line: 799, column: 28, scope: !2147)
!2151 = !DILocation(line: 799, column: 3, scope: !2147)
!2152 = !DILocation(line: 801, column: 41, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 800, column: 5)
!2154 = !DILocation(line: 801, column: 38, scope: !2153)
!2155 = !DILocation(line: 801, column: 20, scope: !2153)
!2156 = !DILocation(line: 801, column: 25, scope: !2153)
!2157 = !DILocation(line: 801, column: 23, scope: !2153)
!2158 = !DILocation(line: 801, column: 7, scope: !2153)
!2159 = !DILocation(line: 801, column: 36, scope: !2153)
!2160 = !DILocation(line: 802, column: 5, scope: !2153)
!2161 = !DILocation(line: 799, column: 45, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 2)
!2163 = !DILocation(line: 799, column: 3, scope: !2162)
!2164 = distinct !{!2164, !2165}
!2165 = !DILocation(line: 799, column: 3, scope: !1612)
!2166 = !DILocation(line: 804, column: 3, scope: !1612)
!2167 = !DILocation(line: 805, column: 1, scope: !1612)
!2168 = distinct !DISubprogram(name: "figi", scope: !1, file: !1, line: 675, type: !2169, isLocal: true, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!49, !49, !1630, !1630, !1630, !1630}
!2171 = !DILocalVariable(name: "nn", arg: 1, scope: !2168, file: !1, line: 675, type: !49)
!2172 = !DILocation(line: 675, column: 21, scope: !2168)
!2173 = !DILocalVariable(name: "tt", arg: 2, scope: !2168, file: !1, line: 675, type: !1630)
!2174 = !DILocation(line: 675, column: 33, scope: !2168)
!2175 = !DILocalVariable(name: "dd", arg: 3, scope: !2168, file: !1, line: 675, type: !1630)
!2176 = !DILocation(line: 675, column: 45, scope: !2168)
!2177 = !DILocalVariable(name: "ee", arg: 4, scope: !2168, file: !1, line: 675, type: !1630)
!2178 = !DILocation(line: 675, column: 57, scope: !2168)
!2179 = !DILocalVariable(name: "e2", arg: 5, scope: !2168, file: !1, line: 676, type: !1630)
!2180 = !DILocation(line: 676, column: 25, scope: !2168)
!2181 = !DILocalVariable(name: "ii", scope: !2168, file: !1, line: 678, type: !49)
!2182 = !DILocation(line: 678, column: 7, scope: !2168)
!2183 = !DILocation(line: 680, column: 10, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2168, file: !1, line: 680, column: 3)
!2185 = !DILocation(line: 680, column: 8, scope: !2184)
!2186 = !DILocation(line: 680, column: 14, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 1)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !1, line: 680, column: 3)
!2189 = !DILocation(line: 680, column: 17, scope: !2187)
!2190 = !DILocation(line: 680, column: 16, scope: !2187)
!2191 = !DILocation(line: 680, column: 3, scope: !2187)
!2192 = !DILocation(line: 682, column: 11, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !1, line: 682, column: 11)
!2194 = distinct !DILexicalBlock(scope: !2188, file: !1, line: 681, column: 3)
!2195 = !DILocation(line: 682, column: 14, scope: !2193)
!2196 = !DILocation(line: 682, column: 11, scope: !2194)
!2197 = !DILocation(line: 684, column: 25, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2193, file: !1, line: 683, column: 7)
!2199 = !DILocation(line: 684, column: 24, scope: !2198)
!2200 = !DILocation(line: 684, column: 20, scope: !2198)
!2201 = !DILocation(line: 684, column: 35, scope: !2198)
!2202 = !DILocation(line: 684, column: 37, scope: !2198)
!2203 = !DILocation(line: 684, column: 33, scope: !2198)
!2204 = !DILocation(line: 684, column: 40, scope: !2198)
!2205 = !DILocation(line: 684, column: 29, scope: !2198)
!2206 = !DILocation(line: 684, column: 28, scope: !2198)
!2207 = !DILocation(line: 684, column: 14, scope: !2198)
!2208 = !DILocation(line: 684, column: 11, scope: !2198)
!2209 = !DILocation(line: 684, column: 18, scope: !2198)
!2210 = !DILocation(line: 686, column: 18, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 686, column: 15)
!2212 = !DILocation(line: 686, column: 15, scope: !2211)
!2213 = !DILocation(line: 686, column: 22, scope: !2211)
!2214 = !DILocation(line: 686, column: 15, scope: !2198)
!2215 = !DILocation(line: 690, column: 23, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !1, line: 687, column: 11)
!2217 = !DILocation(line: 690, column: 28, scope: !2216)
!2218 = !DILocation(line: 690, column: 26, scope: !2216)
!2219 = !DILocation(line: 690, column: 15, scope: !2216)
!2220 = !DILocation(line: 693, column: 18, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 693, column: 15)
!2222 = !DILocation(line: 693, column: 15, scope: !2221)
!2223 = !DILocation(line: 693, column: 22, scope: !2221)
!2224 = !DILocation(line: 693, column: 29, scope: !2221)
!2225 = !DILocation(line: 693, column: 38, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2221, file: !1, discriminator: 1)
!2227 = !DILocation(line: 693, column: 37, scope: !2226)
!2228 = !DILocation(line: 693, column: 33, scope: !2226)
!2229 = !DILocation(line: 693, column: 42, scope: !2226)
!2230 = !DILocation(line: 693, column: 49, scope: !2226)
!2231 = !DILocation(line: 693, column: 58, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2221, file: !1, discriminator: 2)
!2233 = !DILocation(line: 693, column: 60, scope: !2232)
!2234 = !DILocation(line: 693, column: 56, scope: !2232)
!2235 = !DILocation(line: 693, column: 63, scope: !2232)
!2236 = !DILocation(line: 693, column: 52, scope: !2232)
!2237 = !DILocation(line: 693, column: 67, scope: !2232)
!2238 = !DILocation(line: 693, column: 15, scope: !2232)
!2239 = !DILocation(line: 697, column: 29, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2221, file: !1, line: 694, column: 11)
!2241 = !DILocation(line: 697, column: 28, scope: !2240)
!2242 = !DILocation(line: 697, column: 34, scope: !2240)
!2243 = !DILocation(line: 697, column: 32, scope: !2240)
!2244 = !DILocation(line: 697, column: 25, scope: !2240)
!2245 = !DILocation(line: 697, column: 15, scope: !2240)
!2246 = !DILocation(line: 700, column: 28, scope: !2198)
!2247 = !DILocation(line: 700, column: 25, scope: !2198)
!2248 = !DILocation(line: 700, column: 20, scope: !2198)
!2249 = !DILocation(line: 700, column: 14, scope: !2198)
!2250 = !DILocation(line: 700, column: 11, scope: !2198)
!2251 = !DILocation(line: 700, column: 18, scope: !2198)
!2252 = !DILocation(line: 701, column: 7, scope: !2198)
!2253 = !DILocation(line: 703, column: 21, scope: !2194)
!2254 = !DILocation(line: 703, column: 20, scope: !2194)
!2255 = !DILocation(line: 703, column: 23, scope: !2194)
!2256 = !DILocation(line: 703, column: 16, scope: !2194)
!2257 = !DILocation(line: 703, column: 10, scope: !2194)
!2258 = !DILocation(line: 703, column: 7, scope: !2194)
!2259 = !DILocation(line: 703, column: 14, scope: !2194)
!2260 = !DILocation(line: 704, column: 3, scope: !2194)
!2261 = !DILocation(line: 680, column: 23, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 2)
!2263 = !DILocation(line: 680, column: 3, scope: !2262)
!2264 = distinct !{!2264, !2265}
!2265 = !DILocation(line: 680, column: 3, scope: !2168)
!2266 = !DILocation(line: 706, column: 3, scope: !2168)
!2267 = !DILocation(line: 707, column: 1, scope: !2168)
!2268 = distinct !DISubprogram(name: "gsl_sf_mathieu_b_array", scope: !1, file: !1, line: 808, type: !1613, isLocal: false, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2269 = !DILocalVariable(name: "order_min", arg: 1, scope: !2268, file: !1, line: 808, type: !49)
!2270 = !DILocation(line: 808, column: 32, scope: !2268)
!2271 = !DILocalVariable(name: "order_max", arg: 2, scope: !2268, file: !1, line: 808, type: !49)
!2272 = !DILocation(line: 808, column: 47, scope: !2268)
!2273 = !DILocalVariable(name: "qq", arg: 3, scope: !2268, file: !1, line: 808, type: !50)
!2274 = !DILocation(line: 808, column: 65, scope: !2268)
!2275 = !DILocalVariable(name: "work", arg: 4, scope: !2268, file: !1, line: 808, type: !1615)
!2276 = !DILocation(line: 808, column: 95, scope: !2268)
!2277 = !DILocalVariable(name: "result_array", arg: 5, scope: !2268, file: !1, line: 808, type: !1630)
!2278 = !DILocation(line: 808, column: 108, scope: !2268)
!2279 = !DILocalVariable(name: "even_order", scope: !2268, file: !1, line: 810, type: !1688)
!2280 = !DILocation(line: 810, column: 16, scope: !2268)
!2281 = !DILocation(line: 810, column: 29, scope: !2268)
!2282 = !DILocation(line: 810, column: 35, scope: !2268)
!2283 = !DILocation(line: 810, column: 45, scope: !2268)
!2284 = !DILocalVariable(name: "odd_order", scope: !2268, file: !1, line: 810, type: !1688)
!2285 = !DILocation(line: 810, column: 49, scope: !2268)
!2286 = !DILocation(line: 810, column: 61, scope: !2268)
!2287 = !DILocation(line: 810, column: 67, scope: !2268)
!2288 = !DILocalVariable(name: "extra_values", scope: !2268, file: !1, line: 811, type: !1688)
!2289 = !DILocation(line: 811, column: 7, scope: !2268)
!2290 = !DILocation(line: 811, column: 22, scope: !2268)
!2291 = !DILocation(line: 811, column: 28, scope: !2268)
!2292 = !DILocalVariable(name: "ii", scope: !2268, file: !1, line: 811, type: !1688)
!2293 = !DILocation(line: 811, column: 42, scope: !2268)
!2294 = !DILocalVariable(name: "jj", scope: !2268, file: !1, line: 811, type: !1688)
!2295 = !DILocation(line: 811, column: 46, scope: !2268)
!2296 = !DILocalVariable(name: "zz", scope: !2268, file: !1, line: 812, type: !1630)
!2297 = !DILocation(line: 812, column: 11, scope: !2268)
!2298 = !DILocation(line: 812, column: 16, scope: !2268)
!2299 = !DILocation(line: 812, column: 22, scope: !2268)
!2300 = !DILocalVariable(name: "bb", scope: !2268, file: !1, line: 812, type: !1630)
!2301 = !DILocation(line: 812, column: 27, scope: !2268)
!2302 = !DILocation(line: 812, column: 32, scope: !2268)
!2303 = !DILocation(line: 812, column: 38, scope: !2268)
!2304 = !DILocalVariable(name: "mat", scope: !2268, file: !1, line: 813, type: !1731)
!2305 = !DILocation(line: 813, column: 19, scope: !2268)
!2306 = !DILocalVariable(name: "evec", scope: !2268, file: !1, line: 813, type: !1731)
!2307 = !DILocation(line: 813, column: 24, scope: !2268)
!2308 = !DILocalVariable(name: "eval", scope: !2268, file: !1, line: 814, type: !1740)
!2309 = !DILocation(line: 814, column: 19, scope: !2268)
!2310 = !DILocalVariable(name: "wmat", scope: !2268, file: !1, line: 815, type: !1668)
!2311 = !DILocation(line: 815, column: 30, scope: !2268)
!2312 = !DILocation(line: 815, column: 37, scope: !2268)
!2313 = !DILocation(line: 815, column: 43, scope: !2268)
!2314 = !DILocation(line: 817, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 817, column: 7)
!2316 = !DILocation(line: 817, column: 19, scope: !2315)
!2317 = !DILocation(line: 817, column: 25, scope: !2315)
!2318 = !DILocation(line: 817, column: 17, scope: !2315)
!2319 = !DILocation(line: 817, column: 30, scope: !2315)
!2320 = !DILocation(line: 817, column: 33, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2315, file: !1, discriminator: 1)
!2322 = !DILocation(line: 817, column: 46, scope: !2321)
!2323 = !DILocation(line: 817, column: 43, scope: !2321)
!2324 = !DILocation(line: 817, column: 56, scope: !2321)
!2325 = !DILocation(line: 817, column: 59, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2315, file: !1, discriminator: 2)
!2327 = !DILocation(line: 817, column: 69, scope: !2326)
!2328 = !DILocation(line: 817, column: 7, scope: !2326)
!2329 = !DILocation(line: 819, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2315, file: !1, line: 818, column: 5)
!2331 = distinct !{!2331, !2329}
!2332 = !DILocation(line: 819, column: 7, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2334, file: !1, discriminator: 1)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 819, column: 7)
!2335 = !DILocation(line: 820, column: 5, scope: !2330)
!2336 = !DILocation(line: 823, column: 10, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 823, column: 3)
!2338 = !DILocation(line: 823, column: 8, scope: !2337)
!2339 = !DILocation(line: 823, column: 14, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2341, file: !1, discriminator: 1)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !1, line: 823, column: 3)
!2342 = !DILocation(line: 823, column: 17, scope: !2340)
!2343 = !DILocation(line: 823, column: 28, scope: !2340)
!2344 = !DILocation(line: 823, column: 27, scope: !2340)
!2345 = !DILocation(line: 823, column: 16, scope: !2340)
!2346 = !DILocation(line: 823, column: 3, scope: !2340)
!2347 = !DILocation(line: 824, column: 10, scope: !2341)
!2348 = !DILocation(line: 824, column: 7, scope: !2341)
!2349 = !DILocation(line: 824, column: 14, scope: !2341)
!2350 = !DILocation(line: 823, column: 42, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2341, file: !1, discriminator: 2)
!2352 = !DILocation(line: 823, column: 3, scope: !2351)
!2353 = distinct !{!2353, !2354}
!2354 = !DILocation(line: 823, column: 3, scope: !2268)
!2355 = !DILocation(line: 825, column: 10, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 825, column: 3)
!2357 = !DILocation(line: 825, column: 8, scope: !2356)
!2358 = !DILocation(line: 825, column: 14, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2360, file: !1, discriminator: 1)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 825, column: 3)
!2361 = !DILocation(line: 825, column: 17, scope: !2359)
!2362 = !DILocation(line: 825, column: 16, scope: !2359)
!2363 = !DILocation(line: 825, column: 3, scope: !2359)
!2364 = !DILocation(line: 826, column: 14, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 826, column: 7)
!2366 = !DILocation(line: 826, column: 12, scope: !2365)
!2367 = !DILocation(line: 826, column: 18, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2369, file: !1, discriminator: 1)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !1, line: 826, column: 7)
!2370 = !DILocation(line: 826, column: 21, scope: !2368)
!2371 = !DILocation(line: 826, column: 20, scope: !2368)
!2372 = !DILocation(line: 826, column: 7, scope: !2368)
!2373 = !DILocation(line: 828, column: 15, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !1, line: 828, column: 15)
!2375 = distinct !DILexicalBlock(scope: !2369, file: !1, line: 827, column: 7)
!2376 = !DILocation(line: 828, column: 21, scope: !2374)
!2377 = !DILocation(line: 828, column: 18, scope: !2374)
!2378 = !DILocation(line: 828, column: 15, scope: !2375)
!2379 = !DILocation(line: 829, column: 41, scope: !2374)
!2380 = !DILocation(line: 829, column: 44, scope: !2374)
!2381 = !DILocation(line: 829, column: 39, scope: !2374)
!2382 = !DILocation(line: 829, column: 50, scope: !2374)
!2383 = !DILocation(line: 829, column: 53, scope: !2374)
!2384 = !DILocation(line: 829, column: 48, scope: !2374)
!2385 = !DILocation(line: 829, column: 38, scope: !2374)
!2386 = !DILocation(line: 829, column: 18, scope: !2374)
!2387 = !DILocation(line: 829, column: 21, scope: !2374)
!2388 = !DILocation(line: 829, column: 20, scope: !2374)
!2389 = !DILocation(line: 829, column: 32, scope: !2374)
!2390 = !DILocation(line: 829, column: 31, scope: !2374)
!2391 = !DILocation(line: 829, column: 15, scope: !2374)
!2392 = !DILocation(line: 829, column: 36, scope: !2374)
!2393 = !DILocation(line: 830, column: 20, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2374, file: !1, line: 830, column: 20)
!2395 = !DILocation(line: 830, column: 26, scope: !2394)
!2396 = !DILocation(line: 830, column: 29, scope: !2394)
!2397 = !DILocation(line: 830, column: 23, scope: !2394)
!2398 = !DILocation(line: 830, column: 33, scope: !2394)
!2399 = !DILocation(line: 830, column: 36, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2394, file: !1, discriminator: 1)
!2401 = !DILocation(line: 830, column: 39, scope: !2400)
!2402 = !DILocation(line: 830, column: 46, scope: !2400)
!2403 = !DILocation(line: 830, column: 43, scope: !2400)
!2404 = !DILocation(line: 830, column: 20, scope: !2400)
!2405 = !DILocation(line: 831, column: 38, scope: !2394)
!2406 = !DILocation(line: 831, column: 18, scope: !2394)
!2407 = !DILocation(line: 831, column: 21, scope: !2394)
!2408 = !DILocation(line: 831, column: 20, scope: !2394)
!2409 = !DILocation(line: 831, column: 32, scope: !2394)
!2410 = !DILocation(line: 831, column: 31, scope: !2394)
!2411 = !DILocation(line: 831, column: 15, scope: !2394)
!2412 = !DILocation(line: 831, column: 36, scope: !2394)
!2413 = !DILocation(line: 832, column: 7, scope: !2375)
!2414 = !DILocation(line: 826, column: 35, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2369, file: !1, discriminator: 2)
!2416 = !DILocation(line: 826, column: 7, scope: !2415)
!2417 = distinct !{!2417, !2418}
!2418 = !DILocation(line: 826, column: 7, scope: !2360)
!2419 = !DILocation(line: 832, column: 7, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2365, file: !1, discriminator: 1)
!2421 = !DILocation(line: 825, column: 31, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !2360, file: !1, discriminator: 2)
!2423 = !DILocation(line: 825, column: 3, scope: !2422)
!2424 = distinct !{!2424, !2425}
!2425 = !DILocation(line: 825, column: 3, scope: !2268)
!2426 = !DILocation(line: 835, column: 31, scope: !2268)
!2427 = !DILocation(line: 835, column: 35, scope: !2268)
!2428 = !DILocation(line: 835, column: 47, scope: !2268)
!2429 = !DILocation(line: 835, column: 9, scope: !2268)
!2430 = !DILocation(line: 835, column: 9, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2268, file: !1, discriminator: 1)
!2432 = !DILocation(line: 836, column: 31, scope: !2268)
!2433 = !DILocation(line: 836, column: 37, scope: !2268)
!2434 = !DILocation(line: 836, column: 46, scope: !2268)
!2435 = !DILocation(line: 836, column: 10, scope: !2268)
!2436 = !DILocation(line: 836, column: 10, scope: !2431)
!2437 = !DILocation(line: 837, column: 31, scope: !2268)
!2438 = !DILocation(line: 837, column: 37, scope: !2268)
!2439 = !DILocation(line: 837, column: 49, scope: !2268)
!2440 = !DILocation(line: 837, column: 61, scope: !2268)
!2441 = !DILocation(line: 837, column: 10, scope: !2268)
!2442 = !DILocation(line: 837, column: 10, scope: !2431)
!2443 = !DILocation(line: 838, column: 24, scope: !2268)
!2444 = !DILocation(line: 838, column: 38, scope: !2268)
!2445 = !DILocation(line: 838, column: 52, scope: !2268)
!2446 = !DILocation(line: 838, column: 60, scope: !2268)
!2447 = !DILocation(line: 838, column: 3, scope: !2268)
!2448 = !DILocation(line: 839, column: 30, scope: !2268)
!2449 = !DILocation(line: 839, column: 44, scope: !2268)
!2450 = !DILocation(line: 839, column: 3, scope: !2268)
!2451 = !DILocation(line: 841, column: 3, scope: !2268)
!2452 = !DILocation(line: 841, column: 9, scope: !2268)
!2453 = !DILocation(line: 842, column: 10, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 842, column: 3)
!2455 = !DILocation(line: 842, column: 8, scope: !2454)
!2456 = !DILocation(line: 842, column: 14, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2458, file: !1, discriminator: 1)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 842, column: 3)
!2459 = !DILocation(line: 842, column: 17, scope: !2457)
!2460 = !DILocation(line: 842, column: 28, scope: !2457)
!2461 = !DILocation(line: 842, column: 27, scope: !2457)
!2462 = !DILocation(line: 842, column: 16, scope: !2457)
!2463 = !DILocation(line: 842, column: 3, scope: !2457)
!2464 = !DILocation(line: 843, column: 43, scope: !2458)
!2465 = !DILocation(line: 843, column: 51, scope: !2458)
!2466 = !DILocation(line: 843, column: 22, scope: !2458)
!2467 = !DILocation(line: 843, column: 13, scope: !2458)
!2468 = !DILocation(line: 843, column: 15, scope: !2458)
!2469 = !DILocation(line: 843, column: 11, scope: !2458)
!2470 = !DILocation(line: 843, column: 7, scope: !2458)
!2471 = !DILocation(line: 843, column: 20, scope: !2458)
!2472 = !DILocation(line: 842, column: 44, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2458, file: !1, discriminator: 2)
!2474 = !DILocation(line: 842, column: 3, scope: !2473)
!2475 = distinct !{!2475, !2476}
!2476 = !DILocation(line: 842, column: 3, scope: !2268)
!2477 = !DILocation(line: 846, column: 10, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 846, column: 3)
!2479 = !DILocation(line: 846, column: 8, scope: !2478)
!2480 = !DILocation(line: 846, column: 14, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2482, file: !1, discriminator: 1)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !1, line: 846, column: 3)
!2483 = !DILocation(line: 846, column: 17, scope: !2481)
!2484 = !DILocation(line: 846, column: 27, scope: !2481)
!2485 = !DILocation(line: 846, column: 26, scope: !2481)
!2486 = !DILocation(line: 846, column: 16, scope: !2481)
!2487 = !DILocation(line: 846, column: 3, scope: !2481)
!2488 = !DILocation(line: 847, column: 10, scope: !2482)
!2489 = !DILocation(line: 847, column: 7, scope: !2482)
!2490 = !DILocation(line: 847, column: 14, scope: !2482)
!2491 = !DILocation(line: 846, column: 40, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2482, file: !1, discriminator: 2)
!2493 = !DILocation(line: 846, column: 3, scope: !2492)
!2494 = distinct !{!2494, !2495}
!2495 = !DILocation(line: 846, column: 3, scope: !2268)
!2496 = !DILocation(line: 848, column: 10, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 848, column: 3)
!2498 = !DILocation(line: 848, column: 8, scope: !2497)
!2499 = !DILocation(line: 848, column: 14, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2501, file: !1, discriminator: 1)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 848, column: 3)
!2502 = !DILocation(line: 848, column: 17, scope: !2500)
!2503 = !DILocation(line: 848, column: 16, scope: !2500)
!2504 = !DILocation(line: 848, column: 3, scope: !2500)
!2505 = !DILocation(line: 849, column: 14, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2501, file: !1, line: 849, column: 7)
!2507 = !DILocation(line: 849, column: 12, scope: !2506)
!2508 = !DILocation(line: 849, column: 18, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !2510, file: !1, discriminator: 1)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !1, line: 849, column: 7)
!2511 = !DILocation(line: 849, column: 21, scope: !2509)
!2512 = !DILocation(line: 849, column: 20, scope: !2509)
!2513 = !DILocation(line: 849, column: 7, scope: !2509)
!2514 = !DILocation(line: 851, column: 15, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !1, line: 851, column: 15)
!2516 = distinct !DILexicalBlock(scope: !2510, file: !1, line: 850, column: 7)
!2517 = !DILocation(line: 851, column: 21, scope: !2515)
!2518 = !DILocation(line: 851, column: 18, scope: !2515)
!2519 = !DILocation(line: 851, column: 15, scope: !2516)
!2520 = !DILocation(line: 852, column: 40, scope: !2515)
!2521 = !DILocation(line: 852, column: 39, scope: !2515)
!2522 = !DILocation(line: 852, column: 43, scope: !2515)
!2523 = !DILocation(line: 852, column: 51, scope: !2515)
!2524 = !DILocation(line: 852, column: 50, scope: !2515)
!2525 = !DILocation(line: 852, column: 54, scope: !2515)
!2526 = !DILocation(line: 852, column: 47, scope: !2515)
!2527 = !DILocation(line: 852, column: 37, scope: !2515)
!2528 = !DILocation(line: 852, column: 18, scope: !2515)
!2529 = !DILocation(line: 852, column: 21, scope: !2515)
!2530 = !DILocation(line: 852, column: 20, scope: !2515)
!2531 = !DILocation(line: 852, column: 31, scope: !2515)
!2532 = !DILocation(line: 852, column: 30, scope: !2515)
!2533 = !DILocation(line: 852, column: 15, scope: !2515)
!2534 = !DILocation(line: 852, column: 35, scope: !2515)
!2535 = !DILocation(line: 853, column: 20, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2515, file: !1, line: 853, column: 20)
!2537 = !DILocation(line: 853, column: 26, scope: !2536)
!2538 = !DILocation(line: 853, column: 29, scope: !2536)
!2539 = !DILocation(line: 853, column: 23, scope: !2536)
!2540 = !DILocation(line: 853, column: 33, scope: !2536)
!2541 = !DILocation(line: 853, column: 36, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2536, file: !1, discriminator: 1)
!2543 = !DILocation(line: 853, column: 39, scope: !2542)
!2544 = !DILocation(line: 853, column: 46, scope: !2542)
!2545 = !DILocation(line: 853, column: 43, scope: !2542)
!2546 = !DILocation(line: 853, column: 20, scope: !2542)
!2547 = !DILocation(line: 854, column: 37, scope: !2536)
!2548 = !DILocation(line: 854, column: 18, scope: !2536)
!2549 = !DILocation(line: 854, column: 21, scope: !2536)
!2550 = !DILocation(line: 854, column: 20, scope: !2536)
!2551 = !DILocation(line: 854, column: 31, scope: !2536)
!2552 = !DILocation(line: 854, column: 30, scope: !2536)
!2553 = !DILocation(line: 854, column: 15, scope: !2536)
!2554 = !DILocation(line: 854, column: 35, scope: !2536)
!2555 = !DILocation(line: 855, column: 7, scope: !2516)
!2556 = !DILocation(line: 849, column: 34, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2510, file: !1, discriminator: 2)
!2558 = !DILocation(line: 849, column: 7, scope: !2557)
!2559 = distinct !{!2559, !2560}
!2560 = !DILocation(line: 849, column: 7, scope: !2501)
!2561 = !DILocation(line: 855, column: 7, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2506, file: !1, discriminator: 1)
!2563 = !DILocation(line: 848, column: 30, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2501, file: !1, discriminator: 2)
!2565 = !DILocation(line: 848, column: 3, scope: !2564)
!2566 = distinct !{!2566, !2567}
!2567 = !DILocation(line: 848, column: 3, scope: !2268)
!2568 = !DILocation(line: 857, column: 12, scope: !2268)
!2569 = !DILocation(line: 857, column: 3, scope: !2268)
!2570 = !DILocation(line: 857, column: 9, scope: !2268)
!2571 = !DILocation(line: 860, column: 31, scope: !2268)
!2572 = !DILocation(line: 860, column: 35, scope: !2268)
!2573 = !DILocation(line: 860, column: 46, scope: !2268)
!2574 = !DILocation(line: 860, column: 9, scope: !2268)
!2575 = !DILocation(line: 860, column: 9, scope: !2431)
!2576 = !DILocation(line: 861, column: 31, scope: !2268)
!2577 = !DILocation(line: 861, column: 37, scope: !2268)
!2578 = !DILocation(line: 861, column: 46, scope: !2268)
!2579 = !DILocation(line: 861, column: 10, scope: !2268)
!2580 = !DILocation(line: 861, column: 10, scope: !2431)
!2581 = !DILocation(line: 862, column: 31, scope: !2268)
!2582 = !DILocation(line: 862, column: 37, scope: !2268)
!2583 = !DILocation(line: 862, column: 49, scope: !2268)
!2584 = !DILocation(line: 862, column: 60, scope: !2268)
!2585 = !DILocation(line: 862, column: 10, scope: !2268)
!2586 = !DILocation(line: 862, column: 10, scope: !2431)
!2587 = !DILocation(line: 863, column: 24, scope: !2268)
!2588 = !DILocation(line: 863, column: 38, scope: !2268)
!2589 = !DILocation(line: 863, column: 52, scope: !2268)
!2590 = !DILocation(line: 863, column: 60, scope: !2268)
!2591 = !DILocation(line: 863, column: 3, scope: !2268)
!2592 = !DILocation(line: 864, column: 30, scope: !2268)
!2593 = !DILocation(line: 864, column: 44, scope: !2268)
!2594 = !DILocation(line: 864, column: 3, scope: !2268)
!2595 = !DILocation(line: 866, column: 10, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 866, column: 3)
!2597 = !DILocation(line: 866, column: 8, scope: !2596)
!2598 = !DILocation(line: 866, column: 14, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2600, file: !1, discriminator: 1)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 866, column: 3)
!2601 = !DILocation(line: 866, column: 17, scope: !2599)
!2602 = !DILocation(line: 866, column: 27, scope: !2599)
!2603 = !DILocation(line: 866, column: 26, scope: !2599)
!2604 = !DILocation(line: 866, column: 16, scope: !2599)
!2605 = !DILocation(line: 866, column: 3, scope: !2599)
!2606 = !DILocation(line: 867, column: 41, scope: !2600)
!2607 = !DILocation(line: 867, column: 49, scope: !2600)
!2608 = !DILocation(line: 867, column: 20, scope: !2600)
!2609 = !DILocation(line: 867, column: 12, scope: !2600)
!2610 = !DILocation(line: 867, column: 11, scope: !2600)
!2611 = !DILocation(line: 867, column: 14, scope: !2600)
!2612 = !DILocation(line: 867, column: 7, scope: !2600)
!2613 = !DILocation(line: 867, column: 18, scope: !2600)
!2614 = !DILocation(line: 866, column: 43, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2600, file: !1, discriminator: 2)
!2616 = !DILocation(line: 866, column: 3, scope: !2615)
!2617 = distinct !{!2617, !2618}
!2618 = !DILocation(line: 866, column: 3, scope: !2268)
!2619 = !DILocation(line: 869, column: 13, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 869, column: 3)
!2621 = !DILocation(line: 869, column: 11, scope: !2620)
!2622 = !DILocation(line: 869, column: 8, scope: !2620)
!2623 = !DILocation(line: 869, column: 25, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2625, file: !1, discriminator: 1)
!2625 = distinct !DILexicalBlock(scope: !2620, file: !1, line: 869, column: 3)
!2626 = !DILocation(line: 869, column: 31, scope: !2624)
!2627 = !DILocation(line: 869, column: 28, scope: !2624)
!2628 = !DILocation(line: 869, column: 3, scope: !2624)
!2629 = !DILocation(line: 871, column: 41, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2625, file: !1, line: 870, column: 5)
!2631 = !DILocation(line: 871, column: 38, scope: !2630)
!2632 = !DILocation(line: 871, column: 20, scope: !2630)
!2633 = !DILocation(line: 871, column: 25, scope: !2630)
!2634 = !DILocation(line: 871, column: 23, scope: !2630)
!2635 = !DILocation(line: 871, column: 7, scope: !2630)
!2636 = !DILocation(line: 871, column: 36, scope: !2630)
!2637 = !DILocation(line: 872, column: 5, scope: !2630)
!2638 = !DILocation(line: 869, column: 45, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2625, file: !1, discriminator: 2)
!2640 = !DILocation(line: 869, column: 3, scope: !2639)
!2641 = distinct !{!2641, !2642}
!2642 = !DILocation(line: 869, column: 3, scope: !2268)
!2643 = !DILocation(line: 874, column: 3, scope: !2268)
!2644 = !DILocation(line: 875, column: 1, scope: !2268)
!2645 = distinct !DISubprogram(name: "gsl_sf_mathieu_a", scope: !1, file: !1, line: 882, type: !661, isLocal: false, isDefinition: true, scopeLine: 883, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2646 = !DILocalVariable(name: "order", arg: 1, scope: !2645, file: !1, line: 882, type: !49)
!2647 = !DILocation(line: 882, column: 29, scope: !2645)
!2648 = !DILocalVariable(name: "qq", arg: 2, scope: !2645, file: !1, line: 882, type: !50)
!2649 = !DILocation(line: 882, column: 43, scope: !2645)
!2650 = !DILocalVariable(name: "result", scope: !2645, file: !1, line: 884, type: !60)
!2651 = !DILocation(line: 884, column: 2, scope: !2645)
!2652 = !DILocalVariable(name: "status", scope: !2645, file: !1, line: 884, type: !49)
!2653 = !DILocation(line: 884, column: 2, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 884, column: 2)
!2655 = !DILocation(line: 884, column: 2, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2657, file: !1, discriminator: 1)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !1, line: 884, column: 2)
!2658 = distinct !{!2658, !2659}
!2659 = !DILocation(line: 884, column: 2, scope: !2657)
!2660 = !DILocation(line: 884, column: 2, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2662, file: !1, discriminator: 2)
!2662 = distinct !DILexicalBlock(scope: !2657, file: !1, line: 884, column: 2)
!2663 = !DILocation(line: 884, column: 2, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2657, file: !1, discriminator: 3)
!2665 = !DILocation(line: 884, column: 2, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2645, file: !1, discriminator: 4)
!2667 = !DILocation(line: 885, column: 1, scope: !2645)
!2668 = distinct !DISubprogram(name: "gsl_sf_mathieu_b", scope: !1, file: !1, line: 887, type: !661, isLocal: false, isDefinition: true, scopeLine: 888, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2669 = !DILocalVariable(name: "order", arg: 1, scope: !2668, file: !1, line: 887, type: !49)
!2670 = !DILocation(line: 887, column: 29, scope: !2668)
!2671 = !DILocalVariable(name: "qq", arg: 2, scope: !2668, file: !1, line: 887, type: !50)
!2672 = !DILocation(line: 887, column: 43, scope: !2668)
!2673 = !DILocalVariable(name: "result", scope: !2668, file: !1, line: 889, type: !60)
!2674 = !DILocation(line: 889, column: 2, scope: !2668)
!2675 = !DILocalVariable(name: "status", scope: !2668, file: !1, line: 889, type: !49)
!2676 = !DILocation(line: 889, column: 2, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 889, column: 2)
!2678 = !DILocation(line: 889, column: 2, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2680, file: !1, discriminator: 1)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !1, line: 889, column: 2)
!2681 = distinct !{!2681, !2682}
!2682 = !DILocation(line: 889, column: 2, scope: !2680)
!2683 = !DILocation(line: 889, column: 2, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !2685, file: !1, discriminator: 2)
!2685 = distinct !DILexicalBlock(scope: !2680, file: !1, line: 889, column: 2)
!2686 = !DILocation(line: 889, column: 2, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2680, file: !1, discriminator: 3)
!2688 = !DILocation(line: 889, column: 2, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2668, file: !1, discriminator: 4)
!2690 = !DILocation(line: 890, column: 1, scope: !2668)
!2691 = distinct !DISubprogram(name: "asymptotic", scope: !1, file: !1, line: 144, type: !661, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2692 = !DILocalVariable(name: "order", arg: 1, scope: !2691, file: !1, line: 144, type: !49)
!2693 = !DILocation(line: 144, column: 30, scope: !2691)
!2694 = !DILocalVariable(name: "qq", arg: 2, scope: !2691, file: !1, line: 144, type: !50)
!2695 = !DILocation(line: 144, column: 44, scope: !2691)
!2696 = !DILocalVariable(name: "asymp", scope: !2691, file: !1, line: 146, type: !50)
!2697 = !DILocation(line: 146, column: 10, scope: !2691)
!2698 = !DILocalVariable(name: "nn", scope: !2691, file: !1, line: 147, type: !50)
!2699 = !DILocation(line: 147, column: 10, scope: !2691)
!2700 = !DILocalVariable(name: "n2", scope: !2691, file: !1, line: 147, type: !50)
!2701 = !DILocation(line: 147, column: 14, scope: !2691)
!2702 = !DILocalVariable(name: "n4", scope: !2691, file: !1, line: 147, type: !50)
!2703 = !DILocation(line: 147, column: 18, scope: !2691)
!2704 = !DILocalVariable(name: "n6", scope: !2691, file: !1, line: 147, type: !50)
!2705 = !DILocation(line: 147, column: 22, scope: !2691)
!2706 = !DILocalVariable(name: "hh", scope: !2691, file: !1, line: 148, type: !50)
!2707 = !DILocation(line: 148, column: 10, scope: !2691)
!2708 = !DILocalVariable(name: "ah", scope: !2691, file: !1, line: 148, type: !50)
!2709 = !DILocation(line: 148, column: 14, scope: !2691)
!2710 = !DILocalVariable(name: "ah2", scope: !2691, file: !1, line: 148, type: !50)
!2711 = !DILocation(line: 148, column: 18, scope: !2691)
!2712 = !DILocalVariable(name: "ah3", scope: !2691, file: !1, line: 148, type: !50)
!2713 = !DILocation(line: 148, column: 23, scope: !2691)
!2714 = !DILocalVariable(name: "ah4", scope: !2691, file: !1, line: 148, type: !50)
!2715 = !DILocation(line: 148, column: 28, scope: !2691)
!2716 = !DILocalVariable(name: "ah5", scope: !2691, file: !1, line: 148, type: !50)
!2717 = !DILocation(line: 148, column: 33, scope: !2691)
!2718 = !DILocation(line: 152, column: 10, scope: !2691)
!2719 = !DILocation(line: 152, column: 9, scope: !2691)
!2720 = !DILocation(line: 152, column: 16, scope: !2691)
!2721 = !DILocation(line: 152, column: 8, scope: !2691)
!2722 = !DILocation(line: 152, column: 6, scope: !2691)
!2723 = !DILocation(line: 153, column: 8, scope: !2691)
!2724 = !DILocation(line: 153, column: 11, scope: !2691)
!2725 = !DILocation(line: 153, column: 10, scope: !2691)
!2726 = !DILocation(line: 153, column: 6, scope: !2691)
!2727 = !DILocation(line: 154, column: 8, scope: !2691)
!2728 = !DILocation(line: 154, column: 11, scope: !2691)
!2729 = !DILocation(line: 154, column: 10, scope: !2691)
!2730 = !DILocation(line: 154, column: 6, scope: !2691)
!2731 = !DILocation(line: 155, column: 8, scope: !2691)
!2732 = !DILocation(line: 155, column: 11, scope: !2691)
!2733 = !DILocation(line: 155, column: 10, scope: !2691)
!2734 = !DILocation(line: 155, column: 6, scope: !2691)
!2735 = !DILocation(line: 157, column: 15, scope: !2691)
!2736 = !DILocation(line: 157, column: 10, scope: !2691)
!2737 = !DILocation(line: 157, column: 9, scope: !2691)
!2738 = !DILocation(line: 157, column: 6, scope: !2691)
!2739 = !DILocation(line: 158, column: 11, scope: !2691)
!2740 = !DILocation(line: 158, column: 10, scope: !2691)
!2741 = !DILocation(line: 158, column: 6, scope: !2691)
!2742 = !DILocation(line: 159, column: 9, scope: !2691)
!2743 = !DILocation(line: 159, column: 12, scope: !2691)
!2744 = !DILocation(line: 159, column: 11, scope: !2691)
!2745 = !DILocation(line: 159, column: 7, scope: !2691)
!2746 = !DILocation(line: 160, column: 9, scope: !2691)
!2747 = !DILocation(line: 160, column: 13, scope: !2691)
!2748 = !DILocation(line: 160, column: 12, scope: !2691)
!2749 = !DILocation(line: 160, column: 7, scope: !2691)
!2750 = !DILocation(line: 161, column: 9, scope: !2691)
!2751 = !DILocation(line: 161, column: 13, scope: !2691)
!2752 = !DILocation(line: 161, column: 12, scope: !2691)
!2753 = !DILocation(line: 161, column: 7, scope: !2691)
!2754 = !DILocation(line: 162, column: 9, scope: !2691)
!2755 = !DILocation(line: 162, column: 13, scope: !2691)
!2756 = !DILocation(line: 162, column: 12, scope: !2691)
!2757 = !DILocation(line: 162, column: 7, scope: !2691)
!2758 = !DILocation(line: 165, column: 14, scope: !2691)
!2759 = !DILocation(line: 165, column: 13, scope: !2691)
!2760 = !DILocation(line: 165, column: 19, scope: !2691)
!2761 = !DILocation(line: 165, column: 22, scope: !2691)
!2762 = !DILocation(line: 165, column: 21, scope: !2691)
!2763 = !DILocation(line: 165, column: 17, scope: !2691)
!2764 = !DILocation(line: 165, column: 34, scope: !2691)
!2765 = !DILocation(line: 165, column: 37, scope: !2691)
!2766 = !DILocation(line: 165, column: 32, scope: !2691)
!2767 = !DILocation(line: 165, column: 25, scope: !2691)
!2768 = !DILocation(line: 165, column: 9, scope: !2691)
!2769 = !DILocation(line: 166, column: 17, scope: !2691)
!2770 = !DILocation(line: 166, column: 16, scope: !2691)
!2771 = !DILocation(line: 166, column: 47, scope: !2691)
!2772 = !DILocation(line: 166, column: 50, scope: !2691)
!2773 = !DILocation(line: 166, column: 19, scope: !2691)
!2774 = !DILocation(line: 166, column: 59, scope: !2691)
!2775 = !DILocation(line: 166, column: 58, scope: !2691)
!2776 = !DILocation(line: 166, column: 9, scope: !2691)
!2777 = !DILocation(line: 167, column: 36, scope: !2691)
!2778 = !DILocation(line: 167, column: 35, scope: !2691)
!2779 = !DILocation(line: 167, column: 47, scope: !2691)
!2780 = !DILocation(line: 167, column: 46, scope: !2691)
!2781 = !DILocation(line: 167, column: 39, scope: !2691)
!2782 = !DILocation(line: 167, column: 50, scope: !2691)
!2783 = !DILocation(line: 167, column: 16, scope: !2691)
!2784 = !DILocation(line: 167, column: 59, scope: !2691)
!2785 = !DILocation(line: 167, column: 58, scope: !2691)
!2786 = !DILocation(line: 167, column: 9, scope: !2691)
!2787 = !DILocation(line: 168, column: 17, scope: !2691)
!2788 = !DILocation(line: 168, column: 16, scope: !2691)
!2789 = !DILocation(line: 168, column: 36, scope: !2691)
!2790 = !DILocation(line: 168, column: 35, scope: !2691)
!2791 = !DILocation(line: 168, column: 47, scope: !2691)
!2792 = !DILocation(line: 168, column: 46, scope: !2691)
!2793 = !DILocation(line: 168, column: 39, scope: !2691)
!2794 = !DILocation(line: 168, column: 50, scope: !2691)
!2795 = !DILocation(line: 168, column: 19, scope: !2691)
!2796 = !DILocation(line: 168, column: 59, scope: !2691)
!2797 = !DILocation(line: 168, column: 58, scope: !2691)
!2798 = !DILocation(line: 168, column: 9, scope: !2691)
!2799 = !DILocation(line: 169, column: 25, scope: !2691)
!2800 = !DILocation(line: 169, column: 24, scope: !2691)
!2801 = !DILocation(line: 169, column: 36, scope: !2691)
!2802 = !DILocation(line: 169, column: 35, scope: !2691)
!2803 = !DILocation(line: 169, column: 28, scope: !2691)
!2804 = !DILocation(line: 169, column: 47, scope: !2691)
!2805 = !DILocation(line: 169, column: 46, scope: !2691)
!2806 = !DILocation(line: 169, column: 39, scope: !2691)
!2807 = !DILocation(line: 169, column: 50, scope: !2691)
!2808 = !DILocation(line: 169, column: 59, scope: !2691)
!2809 = !DILocation(line: 169, column: 58, scope: !2691)
!2810 = !DILocation(line: 169, column: 9, scope: !2691)
!2811 = !DILocation(line: 170, column: 17, scope: !2691)
!2812 = !DILocation(line: 170, column: 25, scope: !2691)
!2813 = !DILocation(line: 170, column: 24, scope: !2691)
!2814 = !DILocation(line: 170, column: 36, scope: !2691)
!2815 = !DILocation(line: 170, column: 35, scope: !2691)
!2816 = !DILocation(line: 170, column: 28, scope: !2691)
!2817 = !DILocation(line: 170, column: 47, scope: !2691)
!2818 = !DILocation(line: 170, column: 46, scope: !2691)
!2819 = !DILocation(line: 170, column: 39, scope: !2691)
!2820 = !DILocation(line: 170, column: 50, scope: !2691)
!2821 = !DILocation(line: 170, column: 19, scope: !2691)
!2822 = !DILocation(line: 170, column: 59, scope: !2691)
!2823 = !DILocation(line: 170, column: 58, scope: !2691)
!2824 = !DILocation(line: 170, column: 9, scope: !2691)
!2825 = !DILocation(line: 172, column: 10, scope: !2691)
!2826 = !DILocation(line: 172, column: 3, scope: !2691)
!2827 = distinct !DISubprogram(name: "solve_cubic", scope: !1, file: !1, line: 177, type: !2828, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!50, !50, !50, !50}
!2830 = !DILocalVariable(name: "c2", arg: 1, scope: !2827, file: !1, line: 177, type: !50)
!2831 = !DILocation(line: 177, column: 34, scope: !2827)
!2832 = !DILocalVariable(name: "c1", arg: 2, scope: !2827, file: !1, line: 177, type: !50)
!2833 = !DILocation(line: 177, column: 45, scope: !2827)
!2834 = !DILocalVariable(name: "c0", arg: 3, scope: !2827, file: !1, line: 177, type: !50)
!2835 = !DILocation(line: 177, column: 56, scope: !2827)
!2836 = !DILocalVariable(name: "qq", scope: !2827, file: !1, line: 179, type: !50)
!2837 = !DILocation(line: 179, column: 10, scope: !2827)
!2838 = !DILocalVariable(name: "rr", scope: !2827, file: !1, line: 179, type: !50)
!2839 = !DILocation(line: 179, column: 14, scope: !2827)
!2840 = !DILocalVariable(name: "ww", scope: !2827, file: !1, line: 179, type: !50)
!2841 = !DILocation(line: 179, column: 18, scope: !2827)
!2842 = !DILocalVariable(name: "ss", scope: !2827, file: !1, line: 179, type: !50)
!2843 = !DILocation(line: 179, column: 22, scope: !2827)
!2844 = !DILocalVariable(name: "tt", scope: !2827, file: !1, line: 179, type: !50)
!2845 = !DILocation(line: 179, column: 26, scope: !2827)
!2846 = !DILocation(line: 182, column: 11, scope: !2827)
!2847 = !DILocation(line: 182, column: 10, scope: !2827)
!2848 = !DILocation(line: 182, column: 16, scope: !2827)
!2849 = !DILocation(line: 182, column: 19, scope: !2827)
!2850 = !DILocation(line: 182, column: 18, scope: !2827)
!2851 = !DILocation(line: 182, column: 14, scope: !2827)
!2852 = !DILocation(line: 182, column: 22, scope: !2827)
!2853 = !DILocation(line: 182, column: 6, scope: !2827)
!2854 = !DILocation(line: 183, column: 11, scope: !2827)
!2855 = !DILocation(line: 183, column: 10, scope: !2827)
!2856 = !DILocation(line: 183, column: 14, scope: !2827)
!2857 = !DILocation(line: 183, column: 13, scope: !2827)
!2858 = !DILocation(line: 183, column: 22, scope: !2827)
!2859 = !DILocation(line: 183, column: 21, scope: !2827)
!2860 = !DILocation(line: 183, column: 17, scope: !2827)
!2861 = !DILocation(line: 183, column: 29, scope: !2827)
!2862 = !DILocation(line: 183, column: 28, scope: !2827)
!2863 = !DILocation(line: 183, column: 32, scope: !2827)
!2864 = !DILocation(line: 183, column: 31, scope: !2827)
!2865 = !DILocation(line: 183, column: 35, scope: !2827)
!2866 = !DILocation(line: 183, column: 34, scope: !2827)
!2867 = !DILocation(line: 183, column: 25, scope: !2827)
!2868 = !DILocation(line: 183, column: 38, scope: !2827)
!2869 = !DILocation(line: 183, column: 6, scope: !2827)
!2870 = !DILocation(line: 184, column: 8, scope: !2827)
!2871 = !DILocation(line: 184, column: 11, scope: !2827)
!2872 = !DILocation(line: 184, column: 10, scope: !2827)
!2873 = !DILocation(line: 184, column: 14, scope: !2827)
!2874 = !DILocation(line: 184, column: 13, scope: !2827)
!2875 = !DILocation(line: 184, column: 19, scope: !2827)
!2876 = !DILocation(line: 184, column: 22, scope: !2827)
!2877 = !DILocation(line: 184, column: 21, scope: !2827)
!2878 = !DILocation(line: 184, column: 17, scope: !2827)
!2879 = !DILocation(line: 184, column: 6, scope: !2827)
!2880 = !DILocation(line: 186, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2827, file: !1, line: 186, column: 7)
!2882 = !DILocation(line: 186, column: 10, scope: !2881)
!2883 = !DILocation(line: 186, column: 7, scope: !2827)
!2884 = !DILocalVariable(name: "t1", scope: !2885, file: !1, line: 188, type: !50)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !1, line: 187, column: 3)
!2886 = !DILocation(line: 188, column: 14, scope: !2885)
!2887 = !DILocation(line: 188, column: 19, scope: !2885)
!2888 = !DILocation(line: 188, column: 29, scope: !2885)
!2889 = !DILocation(line: 188, column: 24, scope: !2885)
!2890 = !DILocation(line: 188, column: 22, scope: !2885)
!2891 = !DILocation(line: 189, column: 17, scope: !2885)
!2892 = !DILocation(line: 189, column: 12, scope: !2885)
!2893 = !DILocation(line: 189, column: 21, scope: !2885)
!2894 = !DILocation(line: 189, column: 20, scope: !2885)
!2895 = !DILocation(line: 189, column: 33, scope: !2885)
!2896 = !DILocation(line: 189, column: 28, scope: !2897)
!2897 = !DILexicalBlockFile(scope: !2885, file: !1, discriminator: 1)
!2898 = !DILocation(line: 189, column: 24, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2885, file: !1, discriminator: 2)
!2900 = !DILocation(line: 189, column: 23, scope: !2885)
!2901 = !DILocation(line: 189, column: 10, scope: !2885)
!2902 = !DILocation(line: 190, column: 12, scope: !2885)
!2903 = !DILocation(line: 190, column: 22, scope: !2885)
!2904 = !DILocation(line: 190, column: 17, scope: !2885)
!2905 = !DILocation(line: 190, column: 15, scope: !2885)
!2906 = !DILocation(line: 190, column: 10, scope: !2885)
!2907 = !DILocation(line: 191, column: 17, scope: !2885)
!2908 = !DILocation(line: 191, column: 12, scope: !2885)
!2909 = !DILocation(line: 191, column: 21, scope: !2885)
!2910 = !DILocation(line: 191, column: 20, scope: !2885)
!2911 = !DILocation(line: 191, column: 33, scope: !2885)
!2912 = !DILocation(line: 191, column: 28, scope: !2897)
!2913 = !DILocation(line: 191, column: 24, scope: !2899)
!2914 = !DILocation(line: 191, column: 23, scope: !2885)
!2915 = !DILocation(line: 191, column: 10, scope: !2885)
!2916 = !DILocation(line: 192, column: 3, scope: !2885)
!2917 = !DILocalVariable(name: "theta", scope: !2918, file: !1, line: 195, type: !50)
!2918 = distinct !DILexicalBlock(scope: !2881, file: !1, line: 194, column: 3)
!2919 = !DILocation(line: 195, column: 14, scope: !2918)
!2920 = !DILocation(line: 195, column: 27, scope: !2918)
!2921 = !DILocation(line: 195, column: 36, scope: !2918)
!2922 = !DILocation(line: 195, column: 35, scope: !2918)
!2923 = !DILocation(line: 195, column: 39, scope: !2918)
!2924 = !DILocation(line: 195, column: 38, scope: !2918)
!2925 = !DILocation(line: 195, column: 42, scope: !2918)
!2926 = !DILocation(line: 195, column: 41, scope: !2918)
!2927 = !DILocation(line: 195, column: 30, scope: !2918)
!2928 = !DILocation(line: 195, column: 29, scope: !2918)
!2929 = !DILocation(line: 195, column: 22, scope: !2930)
!2930 = !DILexicalBlockFile(scope: !2918, file: !1, discriminator: 1)
!2931 = !DILocation(line: 196, column: 20, scope: !2918)
!2932 = !DILocation(line: 196, column: 19, scope: !2918)
!2933 = !DILocation(line: 196, column: 14, scope: !2918)
!2934 = !DILocation(line: 196, column: 13, scope: !2918)
!2935 = !DILocation(line: 196, column: 29, scope: !2918)
!2936 = !DILocation(line: 196, column: 35, scope: !2918)
!2937 = !DILocation(line: 196, column: 44, scope: !2918)
!2938 = !DILocation(line: 196, column: 24, scope: !2930)
!2939 = !DILocation(line: 196, column: 23, scope: !2918)
!2940 = !DILocation(line: 196, column: 10, scope: !2918)
!2941 = !DILocation(line: 197, column: 10, scope: !2918)
!2942 = !DILocation(line: 200, column: 11, scope: !2827)
!2943 = !DILocation(line: 200, column: 16, scope: !2827)
!2944 = !DILocation(line: 200, column: 14, scope: !2827)
!2945 = !DILocation(line: 200, column: 21, scope: !2827)
!2946 = !DILocation(line: 200, column: 23, scope: !2827)
!2947 = !DILocation(line: 200, column: 19, scope: !2827)
!2948 = !DILocation(line: 200, column: 3, scope: !2827)
