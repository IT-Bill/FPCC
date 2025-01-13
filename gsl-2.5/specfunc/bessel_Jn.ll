; ModuleID = 'bessel_Jn.c'
source_filename = "bessel_Jn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Jn.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_Jn_e(n, x, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jn_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.gsl_sf_result_struct, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %8, metadata !66, metadata !60), !dbg !67
  store i32 1, i32* %8, align 4, !dbg !67
  %30 = load i32, i32* %5, align 4, !dbg !68
  %31 = icmp slt i32 %30, 0, !dbg !70
  br i1 %31, label %32, label %42, !dbg !71

; <label>:32:                                     ; preds = %3
  %33 = load i32, i32* %5, align 4, !dbg !72
  %34 = sub nsw i32 0, %33, !dbg !74
  store i32 %34, i32* %5, align 4, !dbg !75
  %35 = load i32, i32* %5, align 4, !dbg !76
  %36 = and i32 %35, 1, !dbg !76
  %37 = icmp ne i32 %36, 0, !dbg !76
  br i1 %37, label %38, label %41, !dbg !78

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %8, align 4, !dbg !79
  %40 = sub nsw i32 0, %39, !dbg !81
  store i32 %40, i32* %8, align 4, !dbg !82
  br label %41, !dbg !83

; <label>:41:                                     ; preds = %38, %32
  br label %42, !dbg !84

; <label>:42:                                     ; preds = %41, %3
  %43 = load double, double* %6, align 8, !dbg !85
  %44 = fcmp olt double %43, 0.000000e+00, !dbg !87
  br i1 %44, label %45, label %55, !dbg !88

; <label>:45:                                     ; preds = %42
  %46 = load double, double* %6, align 8, !dbg !89
  %47 = fsub double -0.000000e+00, %46, !dbg !91
  store double %47, double* %6, align 8, !dbg !92
  %48 = load i32, i32* %5, align 4, !dbg !93
  %49 = and i32 %48, 1, !dbg !93
  %50 = icmp ne i32 %49, 0, !dbg !93
  br i1 %50, label %51, label %54, !dbg !95

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %8, align 4, !dbg !96
  %53 = sub nsw i32 0, %52, !dbg !98
  store i32 %53, i32* %8, align 4, !dbg !99
  br label %54, !dbg !100

; <label>:54:                                     ; preds = %51, %45
  br label %55, !dbg !101

; <label>:55:                                     ; preds = %54, %42
  %56 = load i32, i32* %5, align 4, !dbg !102
  %57 = icmp eq i32 %56, 0, !dbg !104
  br i1 %57, label %58, label %73, !dbg !105

; <label>:58:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !106, metadata !60), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %10, metadata !109, metadata !60), !dbg !110
  %59 = load double, double* %6, align 8, !dbg !111
  %60 = call i32 @gsl_sf_bessel_J0_e(double %59, %struct.gsl_sf_result_struct* %9), !dbg !112
  store i32 %60, i32* %10, align 4, !dbg !110
  %61 = load i32, i32* %8, align 4, !dbg !113
  %62 = sitofp i32 %61 to double, !dbg !113
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !114
  %64 = load double, double* %63, align 8, !dbg !114
  %65 = fmul double %62, %64, !dbg !115
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !116
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !117
  store double %65, double* %67, align 8, !dbg !118
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !119
  %69 = load double, double* %68, align 8, !dbg !119
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !120
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !121
  store double %69, double* %71, align 8, !dbg !122
  %72 = load i32, i32* %10, align 4, !dbg !123
  store i32 %72, i32* %4, align 4, !dbg !124
  br label %272, !dbg !124

; <label>:73:                                     ; preds = %55
  %74 = load i32, i32* %5, align 4, !dbg !125
  %75 = icmp eq i32 %74, 1, !dbg !127
  br i1 %75, label %76, label %91, !dbg !128

; <label>:76:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !129, metadata !60), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %12, metadata !132, metadata !60), !dbg !133
  %77 = load double, double* %6, align 8, !dbg !134
  %78 = call i32 @gsl_sf_bessel_J1_e(double %77, %struct.gsl_sf_result_struct* %11), !dbg !135
  store i32 %78, i32* %12, align 4, !dbg !133
  %79 = load i32, i32* %8, align 4, !dbg !136
  %80 = sitofp i32 %79 to double, !dbg !136
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !137
  %82 = load double, double* %81, align 8, !dbg !137
  %83 = fmul double %80, %82, !dbg !138
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !139
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !140
  store double %83, double* %85, align 8, !dbg !141
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !142
  %87 = load double, double* %86, align 8, !dbg !142
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !143
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !144
  store double %87, double* %89, align 8, !dbg !145
  %90 = load i32, i32* %12, align 4, !dbg !146
  store i32 %90, i32* %4, align 4, !dbg !147
  br label %272, !dbg !147

; <label>:91:                                     ; preds = %73
  %92 = load double, double* %6, align 8, !dbg !148
  %93 = fcmp oeq double %92, 0.000000e+00, !dbg !151
  br i1 %93, label %94, label %99, !dbg !152

; <label>:94:                                     ; preds = %91
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !153
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 0, !dbg !155
  store double 0.000000e+00, double* %96, align 8, !dbg !156
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !157
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !158
  store double 0.000000e+00, double* %98, align 8, !dbg !159
  store i32 0, i32* %4, align 4, !dbg !160
  br label %272, !dbg !160

; <label>:99:                                     ; preds = %91
  %100 = load double, double* %6, align 8, !dbg !161
  %101 = load double, double* %6, align 8, !dbg !163
  %102 = fmul double %100, %101, !dbg !164
  %103 = load i32, i32* %5, align 4, !dbg !165
  %104 = sitofp i32 %103 to double, !dbg !165
  %105 = fadd double %104, 1.000000e+00, !dbg !166
  %106 = fmul double 1.000000e+01, %105, !dbg !167
  %107 = fmul double %106, 0x3F48406003B2AE5A, !dbg !168
  %108 = fcmp olt double %102, %107, !dbg !169
  br i1 %108, label %109, label %135, !dbg !170

; <label>:109:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !171, metadata !60), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %14, metadata !174, metadata !60), !dbg !175
  %110 = load i32, i32* %5, align 4, !dbg !176
  %111 = sitofp i32 %110 to double, !dbg !177
  %112 = load double, double* %6, align 8, !dbg !178
  %113 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %111, double %112, i32 -1, i32 50, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %13), !dbg !179
  store i32 %113, i32* %14, align 4, !dbg !175
  %114 = load i32, i32* %8, align 4, !dbg !180
  %115 = sitofp i32 %114 to double, !dbg !180
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !181
  %117 = load double, double* %116, align 8, !dbg !181
  %118 = fmul double %115, %117, !dbg !182
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !183
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 0, !dbg !184
  store double %118, double* %120, align 8, !dbg !185
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !186
  %122 = load double, double* %121, align 8, !dbg !186
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !187
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 1, !dbg !188
  store double %122, double* %124, align 8, !dbg !189
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !190
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !191
  %127 = load double, double* %126, align 8, !dbg !191
  %128 = call double @fabs(double %127) #1, !dbg !192
  %129 = fmul double 0x3CB0000000000000, %128, !dbg !193
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !194
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !195
  %132 = load double, double* %131, align 8, !dbg !196
  %133 = fadd double %132, %129, !dbg !196
  store double %133, double* %131, align 8, !dbg !196
  %134 = load i32, i32* %14, align 4, !dbg !197
  store i32 %134, i32* %4, align 4, !dbg !198
  br label %272, !dbg !198

; <label>:135:                                    ; preds = %99
  %136 = load double, double* %6, align 8, !dbg !199
  %137 = fmul double 0x3F20000000000000, %136, !dbg !201
  %138 = load i32, i32* %5, align 4, !dbg !202
  %139 = load i32, i32* %5, align 4, !dbg !203
  %140 = mul nsw i32 %138, %139, !dbg !204
  %141 = sitofp i32 %140 to double, !dbg !202
  %142 = fadd double %141, 1.000000e+00, !dbg !205
  %143 = fcmp ogt double %137, %142, !dbg !206
  br i1 %143, label %144, label %157, !dbg !207

; <label>:144:                                    ; preds = %135
  call void @llvm.dbg.declare(metadata i32* %15, metadata !208, metadata !60), !dbg !210
  %145 = load i32, i32* %5, align 4, !dbg !211
  %146 = sitofp i32 %145 to double, !dbg !212
  %147 = load double, double* %6, align 8, !dbg !213
  %148 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !214
  %149 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %146, double %147, %struct.gsl_sf_result_struct* %148), !dbg !215
  store i32 %149, i32* %15, align 4, !dbg !210
  %150 = load i32, i32* %8, align 4, !dbg !216
  %151 = sitofp i32 %150 to double, !dbg !216
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !217
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !218
  %154 = load double, double* %153, align 8, !dbg !219
  %155 = fmul double %154, %151, !dbg !219
  store double %155, double* %153, align 8, !dbg !219
  %156 = load i32, i32* %15, align 4, !dbg !220
  store i32 %156, i32* %4, align 4, !dbg !221
  br label %272, !dbg !221

; <label>:157:                                    ; preds = %135
  %158 = load i32, i32* %5, align 4, !dbg !222
  %159 = icmp sgt i32 %158, 50, !dbg !224
  br i1 %159, label %160, label %173, !dbg !225

; <label>:160:                                    ; preds = %157
  call void @llvm.dbg.declare(metadata i32* %16, metadata !226, metadata !60), !dbg !228
  %161 = load i32, i32* %5, align 4, !dbg !229
  %162 = sitofp i32 %161 to double, !dbg !230
  %163 = load double, double* %6, align 8, !dbg !231
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !232
  %165 = call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double %162, double %163, %struct.gsl_sf_result_struct* %164), !dbg !233
  store i32 %165, i32* %16, align 4, !dbg !228
  %166 = load i32, i32* %8, align 4, !dbg !234
  %167 = sitofp i32 %166 to double, !dbg !234
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !235
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 0, !dbg !236
  %170 = load double, double* %169, align 8, !dbg !237
  %171 = fmul double %170, %167, !dbg !237
  store double %171, double* %169, align 8, !dbg !237
  %172 = load i32, i32* %16, align 4, !dbg !238
  store i32 %172, i32* %4, align 4, !dbg !239
  br label %272, !dbg !239

; <label>:173:                                    ; preds = %157
  %174 = load double, double* %6, align 8, !dbg !240
  %175 = fcmp ogt double %174, 1.000000e+03, !dbg !242
  br i1 %175, label %176, label %189, !dbg !243

; <label>:176:                                    ; preds = %173
  call void @llvm.dbg.declare(metadata i32* %17, metadata !244, metadata !60), !dbg !246
  %177 = load i32, i32* %5, align 4, !dbg !247
  %178 = sitofp i32 %177 to double, !dbg !248
  %179 = load double, double* %6, align 8, !dbg !249
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !250
  %181 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %178, double %179, %struct.gsl_sf_result_struct* %180), !dbg !251
  store i32 %181, i32* %17, align 4, !dbg !246
  %182 = load i32, i32* %8, align 4, !dbg !252
  %183 = sitofp i32 %182 to double, !dbg !252
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !253
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 0, !dbg !254
  %186 = load double, double* %185, align 8, !dbg !255
  %187 = fmul double %186, %183, !dbg !255
  store double %187, double* %185, align 8, !dbg !255
  %188 = load i32, i32* %17, align 4, !dbg !256
  store i32 %188, i32* %4, align 4, !dbg !257
  br label %272, !dbg !257

; <label>:189:                                    ; preds = %173
  call void @llvm.dbg.declare(metadata double* %18, metadata !258, metadata !60), !dbg !260
  call void @llvm.dbg.declare(metadata double* %19, metadata !261, metadata !60), !dbg !262
  call void @llvm.dbg.declare(metadata double* %20, metadata !263, metadata !60), !dbg !264
  call void @llvm.dbg.declare(metadata double* %21, metadata !265, metadata !60), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %22, metadata !267, metadata !60), !dbg !268
  call void @llvm.dbg.declare(metadata i32* %23, metadata !269, metadata !60), !dbg !270
  %190 = load i32, i32* %5, align 4, !dbg !271
  %191 = sitofp i32 %190 to double, !dbg !272
  %192 = load double, double* %6, align 8, !dbg !273
  %193 = call i32 @gsl_sf_bessel_J_CF1(double %191, double %192, double* %20, double* %21), !dbg !274
  store i32 %193, i32* %23, align 4, !dbg !270
  call void @llvm.dbg.declare(metadata double* %24, metadata !275, metadata !60), !dbg !276
  %194 = load double, double* %20, align 8, !dbg !277
  %195 = fmul double 0x2000000000000000, %194, !dbg !278
  store double %195, double* %24, align 8, !dbg !276
  call void @llvm.dbg.declare(metadata double* %25, metadata !279, metadata !60), !dbg !280
  store double 0x2000000000000000, double* %25, align 8, !dbg !280
  call void @llvm.dbg.declare(metadata double* %26, metadata !281, metadata !60), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %27, metadata !283, metadata !60), !dbg !284
  %196 = load i32, i32* %5, align 4, !dbg !285
  store i32 %196, i32* %27, align 4, !dbg !287
  br label %197, !dbg !288

; <label>:197:                                    ; preds = %212, %189
  %198 = load i32, i32* %27, align 4, !dbg !289
  %199 = icmp sgt i32 %198, 0, !dbg !292
  br i1 %199, label %200, label %215, !dbg !293

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* %27, align 4, !dbg !294
  %202 = sitofp i32 %201 to double, !dbg !294
  %203 = fmul double 2.000000e+00, %202, !dbg !296
  %204 = load double, double* %6, align 8, !dbg !297
  %205 = fdiv double %203, %204, !dbg !298
  %206 = load double, double* %25, align 8, !dbg !299
  %207 = fmul double %205, %206, !dbg !300
  %208 = load double, double* %24, align 8, !dbg !301
  %209 = fsub double %207, %208, !dbg !302
  store double %209, double* %26, align 8, !dbg !303
  %210 = load double, double* %25, align 8, !dbg !304
  store double %210, double* %24, align 8, !dbg !305
  %211 = load double, double* %26, align 8, !dbg !306
  store double %211, double* %25, align 8, !dbg !307
  br label %212, !dbg !308

; <label>:212:                                    ; preds = %200
  %213 = load i32, i32* %27, align 4, !dbg !309
  %214 = add nsw i32 %213, -1, !dbg !309
  store i32 %214, i32* %27, align 4, !dbg !309
  br label %197, !dbg !311, !llvm.loop !312

; <label>:215:                                    ; preds = %197
  %216 = load double, double* %24, align 8, !dbg !314
  %217 = call double @fabs(double %216) #1, !dbg !316
  %218 = load double, double* %25, align 8, !dbg !317
  %219 = call double @fabs(double %218) #1, !dbg !318
  %220 = fcmp ogt double %217, %219, !dbg !320
  br i1 %220, label %221, label %234, !dbg !321

; <label>:221:                                    ; preds = %215
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !322, metadata !60), !dbg !324
  %222 = load double, double* %6, align 8, !dbg !325
  %223 = call i32 @gsl_sf_bessel_J1_e(double %222, %struct.gsl_sf_result_struct* %28), !dbg !326
  store i32 %223, i32* %22, align 4, !dbg !327
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !328
  %225 = load double, double* %224, align 8, !dbg !328
  %226 = load double, double* %24, align 8, !dbg !329
  %227 = fdiv double %225, %226, !dbg !330
  %228 = fmul double %227, 0x2000000000000000, !dbg !331
  store double %228, double* %18, align 8, !dbg !332
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !333
  %230 = load double, double* %229, align 8, !dbg !333
  %231 = load double, double* %24, align 8, !dbg !334
  %232 = fdiv double %230, %231, !dbg !335
  %233 = fmul double %232, 0x2000000000000000, !dbg !336
  store double %233, double* %19, align 8, !dbg !337
  br label %247, !dbg !338

; <label>:234:                                    ; preds = %215
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !339, metadata !60), !dbg !341
  %235 = load double, double* %6, align 8, !dbg !342
  %236 = call i32 @gsl_sf_bessel_J0_e(double %235, %struct.gsl_sf_result_struct* %29), !dbg !343
  store i32 %236, i32* %22, align 4, !dbg !344
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !345
  %238 = load double, double* %237, align 8, !dbg !345
  %239 = load double, double* %25, align 8, !dbg !346
  %240 = fdiv double %238, %239, !dbg !347
  %241 = fmul double %240, 0x2000000000000000, !dbg !348
  store double %241, double* %18, align 8, !dbg !349
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !350
  %243 = load double, double* %242, align 8, !dbg !350
  %244 = load double, double* %25, align 8, !dbg !351
  %245 = fdiv double %243, %244, !dbg !352
  %246 = fmul double %245, 0x2000000000000000, !dbg !353
  store double %246, double* %19, align 8, !dbg !354
  br label %247

; <label>:247:                                    ; preds = %234, %221
  %248 = load i32, i32* %8, align 4, !dbg !355
  %249 = sitofp i32 %248 to double, !dbg !355
  %250 = load double, double* %18, align 8, !dbg !356
  %251 = fmul double %249, %250, !dbg !357
  %252 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !358
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %252, i32 0, i32 0, !dbg !359
  store double %251, double* %253, align 8, !dbg !360
  %254 = load double, double* %19, align 8, !dbg !361
  %255 = call double @fabs(double %254) #1, !dbg !362
  %256 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !363
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %256, i32 0, i32 1, !dbg !364
  store double %255, double* %257, align 8, !dbg !365
  %258 = load i32, i32* %23, align 4, !dbg !366
  %259 = icmp ne i32 %258, 0, !dbg !366
  br i1 %259, label %260, label %262, !dbg !366

; <label>:260:                                    ; preds = %247
  %261 = load i32, i32* %23, align 4, !dbg !367
  br label %270, !dbg !367

; <label>:262:                                    ; preds = %247
  %263 = load i32, i32* %22, align 4, !dbg !369
  %264 = icmp ne i32 %263, 0, !dbg !369
  br i1 %264, label %265, label %267, !dbg !369

; <label>:265:                                    ; preds = %262
  %266 = load i32, i32* %22, align 4, !dbg !371
  br label %268, !dbg !371

; <label>:267:                                    ; preds = %262
  br label %268, !dbg !373

; <label>:268:                                    ; preds = %267, %265
  %269 = phi i32 [ %266, %265 ], [ 0, %267 ], !dbg !375
  br label %270, !dbg !375

; <label>:270:                                    ; preds = %268, %260
  %271 = phi i32 [ %261, %260 ], [ %269, %268 ], !dbg !377
  store i32 %271, i32* %4, align 4, !dbg !379
  br label %272, !dbg !379

; <label>:272:                                    ; preds = %270, %176, %160, %144, %109, %94, %76, %58
  %273 = load i32, i32* %4, align 4, !dbg !380
  ret i32 %273, !dbg !380
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gsl_sf_bessel_J0_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_J1_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gsl_sf_bessel_Jnu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_J_CF1(double, double, double*, double*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jn_array(i32, i32, double, double*) #0 !dbg !381 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !385, metadata !60), !dbg !386
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !387, metadata !60), !dbg !388
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !389, metadata !60), !dbg !390
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !391, metadata !60), !dbg !392
  %21 = load i32, i32* %6, align 4, !dbg !393
  %22 = icmp slt i32 %21, 0, !dbg !395
  br i1 %22, label %27, label %23, !dbg !396

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* %7, align 4, !dbg !397
  %25 = load i32, i32* %6, align 4, !dbg !399
  %26 = icmp slt i32 %24, %25, !dbg !400
  br i1 %26, label %27, label %46, !dbg !401

; <label>:27:                                     ; preds = %23, %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !402, metadata !60), !dbg !404
  %28 = load i32, i32* %7, align 4, !dbg !405
  store i32 %28, i32* %10, align 4, !dbg !407
  br label %29, !dbg !408

; <label>:29:                                     ; preds = %40, %27
  %30 = load i32, i32* %10, align 4, !dbg !409
  %31 = load i32, i32* %6, align 4, !dbg !412
  %32 = icmp sge i32 %30, %31, !dbg !413
  br i1 %32, label %33, label %43, !dbg !414

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %10, align 4, !dbg !415
  %35 = load i32, i32* %6, align 4, !dbg !417
  %36 = sub nsw i32 %34, %35, !dbg !418
  %37 = sext i32 %36 to i64, !dbg !419
  %38 = load double*, double** %9, align 8, !dbg !419
  %39 = getelementptr inbounds double, double* %38, i64 %37, !dbg !419
  store double 0.000000e+00, double* %39, align 8, !dbg !420
  br label %40, !dbg !421

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %10, align 4, !dbg !422
  %42 = add nsw i32 %41, -1, !dbg !422
  store i32 %42, i32* %10, align 4, !dbg !422
  br label %29, !dbg !424, !llvm.loop !425

; <label>:43:                                     ; preds = %29
  br label %44, !dbg !427, !llvm.loop !428

; <label>:44:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 152, i32 1), !dbg !429
  store i32 1, i32* %5, align 4, !dbg !429
  br label %149, !dbg !429
                                                  ; No predecessors!
  br label %149, !dbg !432

; <label>:46:                                     ; preds = %23
  %47 = load double, double* %8, align 8, !dbg !433
  %48 = fcmp oeq double %47, 0.000000e+00, !dbg !435
  br i1 %48, label %49, label %72, !dbg !436

; <label>:49:                                     ; preds = %46
  call void @llvm.dbg.declare(metadata i32* %11, metadata !437, metadata !60), !dbg !439
  %50 = load i32, i32* %7, align 4, !dbg !440
  store i32 %50, i32* %11, align 4, !dbg !442
  br label %51, !dbg !443

; <label>:51:                                     ; preds = %62, %49
  %52 = load i32, i32* %11, align 4, !dbg !444
  %53 = load i32, i32* %6, align 4, !dbg !447
  %54 = icmp sge i32 %52, %53, !dbg !448
  br i1 %54, label %55, label %65, !dbg !449

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %11, align 4, !dbg !450
  %57 = load i32, i32* %6, align 4, !dbg !452
  %58 = sub nsw i32 %56, %57, !dbg !453
  %59 = sext i32 %58 to i64, !dbg !454
  %60 = load double*, double** %9, align 8, !dbg !454
  %61 = getelementptr inbounds double, double* %60, i64 %59, !dbg !454
  store double 0.000000e+00, double* %61, align 8, !dbg !455
  br label %62, !dbg !456

; <label>:62:                                     ; preds = %55
  %63 = load i32, i32* %11, align 4, !dbg !457
  %64 = add nsw i32 %63, -1, !dbg !457
  store i32 %64, i32* %11, align 4, !dbg !457
  br label %51, !dbg !459, !llvm.loop !460

; <label>:65:                                     ; preds = %51
  %66 = load i32, i32* %6, align 4, !dbg !462
  %67 = icmp eq i32 %66, 0, !dbg !464
  br i1 %67, label %68, label %71, !dbg !465

; <label>:68:                                     ; preds = %65
  %69 = load double*, double** %9, align 8, !dbg !466
  %70 = getelementptr inbounds double, double* %69, i64 0, !dbg !466
  store double 1.000000e+00, double* %70, align 8, !dbg !468
  br label %71, !dbg !466

; <label>:71:                                     ; preds = %68, %65
  store i32 0, i32* %5, align 4, !dbg !469
  br label %149, !dbg !469

; <label>:72:                                     ; preds = %46
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !470, metadata !60), !dbg !472
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !473, metadata !60), !dbg !474
  call void @llvm.dbg.declare(metadata i32* %14, metadata !475, metadata !60), !dbg !476
  %73 = load i32, i32* %7, align 4, !dbg !477
  %74 = add nsw i32 %73, 1, !dbg !478
  %75 = load double, double* %8, align 8, !dbg !479
  %76 = call i32 @gsl_sf_bessel_Jn_e(i32 %74, double %75, %struct.gsl_sf_result_struct* %12), !dbg !480
  store i32 %76, i32* %14, align 4, !dbg !476
  call void @llvm.dbg.declare(metadata i32* %15, metadata !481, metadata !60), !dbg !482
  %77 = load i32, i32* %7, align 4, !dbg !483
  %78 = load double, double* %8, align 8, !dbg !484
  %79 = call i32 @gsl_sf_bessel_Jn_e(i32 %77, double %78, %struct.gsl_sf_result_struct* %13), !dbg !485
  store i32 %79, i32* %15, align 4, !dbg !482
  call void @llvm.dbg.declare(metadata i32* %16, metadata !486, metadata !60), !dbg !487
  %80 = load i32, i32* %14, align 4, !dbg !488
  %81 = icmp ne i32 %80, 0, !dbg !488
  br i1 %81, label %82, label %84, !dbg !488

; <label>:82:                                     ; preds = %72
  %83 = load i32, i32* %14, align 4, !dbg !489
  br label %92, !dbg !489

; <label>:84:                                     ; preds = %72
  %85 = load i32, i32* %15, align 4, !dbg !491
  %86 = icmp ne i32 %85, 0, !dbg !491
  br i1 %86, label %87, label %89, !dbg !491

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %15, align 4, !dbg !493
  br label %90, !dbg !493

; <label>:89:                                     ; preds = %84
  br label %90, !dbg !495

; <label>:90:                                     ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ], !dbg !497
  br label %92, !dbg !497

; <label>:92:                                     ; preds = %90, %82
  %93 = phi i32 [ %83, %82 ], [ %91, %90 ], !dbg !499
  store i32 %93, i32* %16, align 4, !dbg !501
  call void @llvm.dbg.declare(metadata double* %17, metadata !502, metadata !60), !dbg !503
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !504
  %95 = load double, double* %94, align 8, !dbg !504
  store double %95, double* %17, align 8, !dbg !503
  call void @llvm.dbg.declare(metadata double* %18, metadata !505, metadata !60), !dbg !506
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !507
  %97 = load double, double* %96, align 8, !dbg !507
  store double %97, double* %18, align 8, !dbg !506
  call void @llvm.dbg.declare(metadata double* %19, metadata !508, metadata !60), !dbg !509
  call void @llvm.dbg.declare(metadata i32* %20, metadata !510, metadata !60), !dbg !511
  %98 = load i32, i32* %16, align 4, !dbg !512
  %99 = icmp eq i32 %98, 0, !dbg !514
  br i1 %99, label %100, label %130, !dbg !515

; <label>:100:                                    ; preds = %92
  %101 = load i32, i32* %7, align 4, !dbg !516
  store i32 %101, i32* %20, align 4, !dbg !519
  br label %102, !dbg !520

; <label>:102:                                    ; preds = %126, %100
  %103 = load i32, i32* %20, align 4, !dbg !521
  %104 = load i32, i32* %6, align 4, !dbg !524
  %105 = icmp sge i32 %103, %104, !dbg !525
  br i1 %105, label %106, label %129, !dbg !526

; <label>:106:                                    ; preds = %102
  %107 = load double, double* %18, align 8, !dbg !527
  %108 = load i32, i32* %20, align 4, !dbg !529
  %109 = load i32, i32* %6, align 4, !dbg !530
  %110 = sub nsw i32 %108, %109, !dbg !531
  %111 = sext i32 %110 to i64, !dbg !532
  %112 = load double*, double** %9, align 8, !dbg !532
  %113 = getelementptr inbounds double, double* %112, i64 %111, !dbg !532
  store double %107, double* %113, align 8, !dbg !533
  %114 = load double, double* %17, align 8, !dbg !534
  %115 = fsub double -0.000000e+00, %114, !dbg !535
  %116 = load i32, i32* %20, align 4, !dbg !536
  %117 = sitofp i32 %116 to double, !dbg !536
  %118 = fmul double 2.000000e+00, %117, !dbg !537
  %119 = load double, double* %8, align 8, !dbg !538
  %120 = fdiv double %118, %119, !dbg !539
  %121 = load double, double* %18, align 8, !dbg !540
  %122 = fmul double %120, %121, !dbg !541
  %123 = fadd double %115, %122, !dbg !542
  store double %123, double* %19, align 8, !dbg !543
  %124 = load double, double* %18, align 8, !dbg !544
  store double %124, double* %17, align 8, !dbg !545
  %125 = load double, double* %19, align 8, !dbg !546
  store double %125, double* %18, align 8, !dbg !547
  br label %126, !dbg !548

; <label>:126:                                    ; preds = %106
  %127 = load i32, i32* %20, align 4, !dbg !549
  %128 = add nsw i32 %127, -1, !dbg !549
  store i32 %128, i32* %20, align 4, !dbg !549
  br label %102, !dbg !551, !llvm.loop !552

; <label>:129:                                    ; preds = %102
  br label %147, !dbg !554

; <label>:130:                                    ; preds = %92
  %131 = load i32, i32* %7, align 4, !dbg !555
  store i32 %131, i32* %20, align 4, !dbg !558
  br label %132, !dbg !559

; <label>:132:                                    ; preds = %143, %130
  %133 = load i32, i32* %20, align 4, !dbg !560
  %134 = load i32, i32* %6, align 4, !dbg !563
  %135 = icmp sge i32 %133, %134, !dbg !564
  br i1 %135, label %136, label %146, !dbg !565

; <label>:136:                                    ; preds = %132
  %137 = load i32, i32* %20, align 4, !dbg !566
  %138 = load i32, i32* %6, align 4, !dbg !568
  %139 = sub nsw i32 %137, %138, !dbg !569
  %140 = sext i32 %139 to i64, !dbg !570
  %141 = load double*, double** %9, align 8, !dbg !570
  %142 = getelementptr inbounds double, double* %141, i64 %140, !dbg !570
  store double 0.000000e+00, double* %142, align 8, !dbg !571
  br label %143, !dbg !572

; <label>:143:                                    ; preds = %136
  %144 = load i32, i32* %20, align 4, !dbg !573
  %145 = add nsw i32 %144, -1, !dbg !573
  store i32 %145, i32* %20, align 4, !dbg !573
  br label %132, !dbg !575, !llvm.loop !576

; <label>:146:                                    ; preds = %132
  br label %147

; <label>:147:                                    ; preds = %146, %129
  %148 = load i32, i32* %16, align 4, !dbg !578
  store i32 %148, i32* %5, align 4, !dbg !579
  br label %149, !dbg !579

; <label>:149:                                    ; preds = %44, %71, %147, %45
  %150 = load i32, i32* %5, align 4, !dbg !580
  ret i32 %150, !dbg !580
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Jn(i32, double) #0 !dbg !581 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !586, metadata !60), !dbg !587
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !588, metadata !60), !dbg !589
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !590, metadata !60), !dbg !591
  call void @llvm.dbg.declare(metadata i32* %7, metadata !592, metadata !60), !dbg !591
  %8 = load i32, i32* %4, align 4, !dbg !591
  %9 = load double, double* %5, align 8, !dbg !591
  %10 = call i32 @gsl_sf_bessel_Jn_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !591
  store i32 %10, i32* %7, align 4, !dbg !591
  %11 = load i32, i32* %7, align 4, !dbg !593
  %12 = icmp ne i32 %11, 0, !dbg !593
  br i1 %12, label %13, label %19, !dbg !591

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !595, !llvm.loop !598

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !600
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 198, i32 %15), !dbg !600
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !600
  %17 = load double, double* %16, align 8, !dbg !600
  store double %17, double* %3, align 8, !dbg !600
  br label %22, !dbg !600
                                                  ; No predecessors!
  br label %19, !dbg !603

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !605
  %21 = load double, double* %20, align 8, !dbg !605
  store double %21, double* %3, align 8, !dbg !605
  br label %22, !dbg !605

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !607
  ret double %23, !dbg !607
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_Jn.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn_e", scope: !1, file: !1, line: 36, type: !48, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !50, !42, !51}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !42, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "n", arg: 1, scope: !47, file: !1, line: 36, type: !50)
!60 = !DIExpression()
!61 = !DILocation(line: 36, column: 28, scope: !47)
!62 = !DILocalVariable(name: "x", arg: 2, scope: !47, file: !1, line: 36, type: !42)
!63 = !DILocation(line: 36, column: 38, scope: !47)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !47, file: !1, line: 36, type: !51)
!65 = !DILocation(line: 36, column: 57, scope: !47)
!66 = !DILocalVariable(name: "sign", scope: !47, file: !1, line: 38, type: !50)
!67 = !DILocation(line: 38, column: 7, scope: !47)
!68 = !DILocation(line: 40, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !47, file: !1, line: 40, column: 6)
!70 = !DILocation(line: 40, column: 8, scope: !69)
!71 = !DILocation(line: 40, column: 6, scope: !47)
!72 = !DILocation(line: 42, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 40, column: 13)
!74 = !DILocation(line: 42, column: 9, scope: !73)
!75 = !DILocation(line: 42, column: 7, scope: !73)
!76 = !DILocation(line: 43, column: 8, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 43, column: 8)
!78 = !DILocation(line: 43, column: 8, scope: !73)
!79 = !DILocation(line: 43, column: 31, scope: !80)
!80 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 1)
!81 = !DILocation(line: 43, column: 30, scope: !80)
!82 = !DILocation(line: 43, column: 28, scope: !80)
!83 = !DILocation(line: 43, column: 23, scope: !80)
!84 = !DILocation(line: 44, column: 3, scope: !73)
!85 = !DILocation(line: 46, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !47, file: !1, line: 46, column: 6)
!87 = !DILocation(line: 46, column: 8, scope: !86)
!88 = !DILocation(line: 46, column: 6, scope: !47)
!89 = !DILocation(line: 48, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 46, column: 15)
!91 = !DILocation(line: 48, column: 9, scope: !90)
!92 = !DILocation(line: 48, column: 7, scope: !90)
!93 = !DILocation(line: 49, column: 8, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 49, column: 8)
!95 = !DILocation(line: 49, column: 8, scope: !90)
!96 = !DILocation(line: 49, column: 31, scope: !97)
!97 = !DILexicalBlockFile(scope: !94, file: !1, discriminator: 1)
!98 = !DILocation(line: 49, column: 30, scope: !97)
!99 = !DILocation(line: 49, column: 28, scope: !97)
!100 = !DILocation(line: 49, column: 23, scope: !97)
!101 = !DILocation(line: 50, column: 3, scope: !90)
!102 = !DILocation(line: 54, column: 6, scope: !103)
!103 = distinct !DILexicalBlock(scope: !47, file: !1, line: 54, column: 6)
!104 = !DILocation(line: 54, column: 8, scope: !103)
!105 = !DILocation(line: 54, column: 6, scope: !47)
!106 = !DILocalVariable(name: "b0", scope: !107, file: !1, line: 55, type: !52)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 54, column: 14)
!108 = !DILocation(line: 55, column: 19, scope: !107)
!109 = !DILocalVariable(name: "stat_J0", scope: !107, file: !1, line: 56, type: !50)
!110 = !DILocation(line: 56, column: 9, scope: !107)
!111 = !DILocation(line: 56, column: 38, scope: !107)
!112 = !DILocation(line: 56, column: 19, scope: !107)
!113 = !DILocation(line: 57, column: 19, scope: !107)
!114 = !DILocation(line: 57, column: 29, scope: !107)
!115 = !DILocation(line: 57, column: 24, scope: !107)
!116 = !DILocation(line: 57, column: 5, scope: !107)
!117 = !DILocation(line: 57, column: 13, scope: !107)
!118 = !DILocation(line: 57, column: 17, scope: !107)
!119 = !DILocation(line: 58, column: 22, scope: !107)
!120 = !DILocation(line: 58, column: 5, scope: !107)
!121 = !DILocation(line: 58, column: 13, scope: !107)
!122 = !DILocation(line: 58, column: 17, scope: !107)
!123 = !DILocation(line: 59, column: 12, scope: !107)
!124 = !DILocation(line: 59, column: 5, scope: !107)
!125 = !DILocation(line: 61, column: 11, scope: !126)
!126 = distinct !DILexicalBlock(scope: !103, file: !1, line: 61, column: 11)
!127 = !DILocation(line: 61, column: 13, scope: !126)
!128 = !DILocation(line: 61, column: 11, scope: !103)
!129 = !DILocalVariable(name: "b1", scope: !130, file: !1, line: 62, type: !52)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 61, column: 19)
!131 = !DILocation(line: 62, column: 19, scope: !130)
!132 = !DILocalVariable(name: "stat_J1", scope: !130, file: !1, line: 63, type: !50)
!133 = !DILocation(line: 63, column: 9, scope: !130)
!134 = !DILocation(line: 63, column: 38, scope: !130)
!135 = !DILocation(line: 63, column: 19, scope: !130)
!136 = !DILocation(line: 64, column: 19, scope: !130)
!137 = !DILocation(line: 64, column: 29, scope: !130)
!138 = !DILocation(line: 64, column: 24, scope: !130)
!139 = !DILocation(line: 64, column: 5, scope: !130)
!140 = !DILocation(line: 64, column: 13, scope: !130)
!141 = !DILocation(line: 64, column: 17, scope: !130)
!142 = !DILocation(line: 65, column: 22, scope: !130)
!143 = !DILocation(line: 65, column: 5, scope: !130)
!144 = !DILocation(line: 65, column: 13, scope: !130)
!145 = !DILocation(line: 65, column: 17, scope: !130)
!146 = !DILocation(line: 66, column: 12, scope: !130)
!147 = !DILocation(line: 66, column: 5, scope: !130)
!148 = !DILocation(line: 69, column: 8, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 69, column: 8)
!150 = distinct !DILexicalBlock(scope: !126, file: !1, line: 68, column: 8)
!151 = !DILocation(line: 69, column: 10, scope: !149)
!152 = !DILocation(line: 69, column: 8, scope: !150)
!153 = !DILocation(line: 70, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 69, column: 18)
!155 = !DILocation(line: 70, column: 15, scope: !154)
!156 = !DILocation(line: 70, column: 19, scope: !154)
!157 = !DILocation(line: 71, column: 7, scope: !154)
!158 = !DILocation(line: 71, column: 15, scope: !154)
!159 = !DILocation(line: 71, column: 19, scope: !154)
!160 = !DILocation(line: 72, column: 7, scope: !154)
!161 = !DILocation(line: 74, column: 13, scope: !162)
!162 = distinct !DILexicalBlock(scope: !149, file: !1, line: 74, column: 13)
!163 = !DILocation(line: 74, column: 15, scope: !162)
!164 = !DILocation(line: 74, column: 14, scope: !162)
!165 = !DILocation(line: 74, column: 25, scope: !162)
!166 = !DILocation(line: 74, column: 26, scope: !162)
!167 = !DILocation(line: 74, column: 23, scope: !162)
!168 = !DILocation(line: 74, column: 31, scope: !162)
!169 = !DILocation(line: 74, column: 17, scope: !162)
!170 = !DILocation(line: 74, column: 13, scope: !149)
!171 = !DILocalVariable(name: "b", scope: !172, file: !1, line: 75, type: !52)
!172 = distinct !DILexicalBlock(scope: !162, file: !1, line: 74, column: 55)
!173 = !DILocation(line: 75, column: 21, scope: !172)
!174 = !DILocalVariable(name: "status", scope: !172, file: !1, line: 76, type: !50)
!175 = !DILocation(line: 76, column: 11, scope: !172)
!176 = !DILocation(line: 76, column: 54, scope: !172)
!177 = !DILocation(line: 76, column: 46, scope: !172)
!178 = !DILocation(line: 76, column: 57, scope: !172)
!179 = !DILocation(line: 76, column: 20, scope: !172)
!180 = !DILocation(line: 77, column: 22, scope: !172)
!181 = !DILocation(line: 77, column: 31, scope: !172)
!182 = !DILocation(line: 77, column: 27, scope: !172)
!183 = !DILocation(line: 77, column: 7, scope: !172)
!184 = !DILocation(line: 77, column: 15, scope: !172)
!185 = !DILocation(line: 77, column: 20, scope: !172)
!186 = !DILocation(line: 78, column: 24, scope: !172)
!187 = !DILocation(line: 78, column: 7, scope: !172)
!188 = !DILocation(line: 78, column: 15, scope: !172)
!189 = !DILocation(line: 78, column: 20, scope: !172)
!190 = !DILocation(line: 79, column: 45, scope: !172)
!191 = !DILocation(line: 79, column: 53, scope: !172)
!192 = !DILocation(line: 79, column: 40, scope: !172)
!193 = !DILocation(line: 79, column: 38, scope: !172)
!194 = !DILocation(line: 79, column: 7, scope: !172)
!195 = !DILocation(line: 79, column: 15, scope: !172)
!196 = !DILocation(line: 79, column: 19, scope: !172)
!197 = !DILocation(line: 80, column: 14, scope: !172)
!198 = !DILocation(line: 80, column: 7, scope: !172)
!199 = !DILocation(line: 82, column: 37, scope: !200)
!200 = distinct !DILexicalBlock(scope: !162, file: !1, line: 82, column: 13)
!201 = !DILocation(line: 82, column: 35, scope: !200)
!202 = !DILocation(line: 82, column: 42, scope: !200)
!203 = !DILocation(line: 82, column: 44, scope: !200)
!204 = !DILocation(line: 82, column: 43, scope: !200)
!205 = !DILocation(line: 82, column: 45, scope: !200)
!206 = !DILocation(line: 82, column: 39, scope: !200)
!207 = !DILocation(line: 82, column: 13, scope: !162)
!208 = !DILocalVariable(name: "status", scope: !209, file: !1, line: 83, type: !50)
!209 = distinct !DILexicalBlock(scope: !200, file: !1, line: 82, column: 52)
!210 = !DILocation(line: 83, column: 11, scope: !209)
!211 = !DILocation(line: 83, column: 55, scope: !209)
!212 = !DILocation(line: 83, column: 47, scope: !209)
!213 = !DILocation(line: 83, column: 58, scope: !209)
!214 = !DILocation(line: 83, column: 61, scope: !209)
!215 = !DILocation(line: 83, column: 20, scope: !209)
!216 = !DILocation(line: 84, column: 22, scope: !209)
!217 = !DILocation(line: 84, column: 7, scope: !209)
!218 = !DILocation(line: 84, column: 15, scope: !209)
!219 = !DILocation(line: 84, column: 19, scope: !209)
!220 = !DILocation(line: 85, column: 14, scope: !209)
!221 = !DILocation(line: 85, column: 7, scope: !209)
!222 = !DILocation(line: 87, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !200, file: !1, line: 87, column: 13)
!224 = !DILocation(line: 87, column: 15, scope: !223)
!225 = !DILocation(line: 87, column: 13, scope: !200)
!226 = !DILocalVariable(name: "status", scope: !227, file: !1, line: 88, type: !50)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 87, column: 21)
!228 = !DILocation(line: 88, column: 11, scope: !227)
!229 = !DILocation(line: 88, column: 60, scope: !227)
!230 = !DILocation(line: 88, column: 52, scope: !227)
!231 = !DILocation(line: 88, column: 63, scope: !227)
!232 = !DILocation(line: 88, column: 66, scope: !227)
!233 = !DILocation(line: 88, column: 20, scope: !227)
!234 = !DILocation(line: 89, column: 22, scope: !227)
!235 = !DILocation(line: 89, column: 7, scope: !227)
!236 = !DILocation(line: 89, column: 15, scope: !227)
!237 = !DILocation(line: 89, column: 19, scope: !227)
!238 = !DILocation(line: 90, column: 14, scope: !227)
!239 = !DILocation(line: 90, column: 7, scope: !227)
!240 = !DILocation(line: 92, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !223, file: !1, line: 92, column: 13)
!242 = !DILocation(line: 92, column: 15, scope: !241)
!243 = !DILocation(line: 92, column: 13, scope: !223)
!244 = !DILocalVariable(name: "status", scope: !245, file: !1, line: 97, type: !50)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 93, column: 5)
!246 = !DILocation(line: 97, column: 11, scope: !245)
!247 = !DILocation(line: 97, column: 55, scope: !245)
!248 = !DILocation(line: 97, column: 47, scope: !245)
!249 = !DILocation(line: 97, column: 58, scope: !245)
!250 = !DILocation(line: 97, column: 61, scope: !245)
!251 = !DILocation(line: 97, column: 20, scope: !245)
!252 = !DILocation(line: 98, column: 22, scope: !245)
!253 = !DILocation(line: 98, column: 7, scope: !245)
!254 = !DILocation(line: 98, column: 15, scope: !245)
!255 = !DILocation(line: 98, column: 19, scope: !245)
!256 = !DILocation(line: 99, column: 14, scope: !245)
!257 = !DILocation(line: 99, column: 7, scope: !245)
!258 = !DILocalVariable(name: "ans", scope: !259, file: !1, line: 102, type: !42)
!259 = distinct !DILexicalBlock(scope: !241, file: !1, line: 101, column: 10)
!260 = !DILocation(line: 102, column: 14, scope: !259)
!261 = !DILocalVariable(name: "err", scope: !259, file: !1, line: 103, type: !42)
!262 = !DILocation(line: 103, column: 14, scope: !259)
!263 = !DILocalVariable(name: "ratio", scope: !259, file: !1, line: 104, type: !42)
!264 = !DILocation(line: 104, column: 14, scope: !259)
!265 = !DILocalVariable(name: "sgn", scope: !259, file: !1, line: 105, type: !42)
!266 = !DILocation(line: 105, column: 14, scope: !259)
!267 = !DILocalVariable(name: "stat_b", scope: !259, file: !1, line: 106, type: !50)
!268 = !DILocation(line: 106, column: 11, scope: !259)
!269 = !DILocalVariable(name: "stat_CF1", scope: !259, file: !1, line: 107, type: !50)
!270 = !DILocation(line: 107, column: 11, scope: !259)
!271 = !DILocation(line: 107, column: 50, scope: !259)
!272 = !DILocation(line: 107, column: 42, scope: !259)
!273 = !DILocation(line: 107, column: 53, scope: !259)
!274 = !DILocation(line: 107, column: 22, scope: !259)
!275 = !DILocalVariable(name: "Jkp1", scope: !259, file: !1, line: 110, type: !42)
!276 = !DILocation(line: 110, column: 14, scope: !259)
!277 = !DILocation(line: 110, column: 40, scope: !259)
!278 = !DILocation(line: 110, column: 38, scope: !259)
!279 = !DILocalVariable(name: "Jk", scope: !259, file: !1, line: 111, type: !42)
!280 = !DILocation(line: 111, column: 14, scope: !259)
!281 = !DILocalVariable(name: "Jkm1", scope: !259, file: !1, line: 112, type: !42)
!282 = !DILocation(line: 112, column: 14, scope: !259)
!283 = !DILocalVariable(name: "k", scope: !259, file: !1, line: 113, type: !50)
!284 = !DILocation(line: 113, column: 11, scope: !259)
!285 = !DILocation(line: 115, column: 13, scope: !286)
!286 = distinct !DILexicalBlock(scope: !259, file: !1, line: 115, column: 7)
!287 = !DILocation(line: 115, column: 12, scope: !286)
!288 = !DILocation(line: 115, column: 11, scope: !286)
!289 = !DILocation(line: 115, column: 16, scope: !290)
!290 = !DILexicalBlockFile(scope: !291, file: !1, discriminator: 1)
!291 = distinct !DILexicalBlock(scope: !286, file: !1, line: 115, column: 7)
!292 = !DILocation(line: 115, column: 17, scope: !290)
!293 = !DILocation(line: 115, column: 7, scope: !290)
!294 = !DILocation(line: 116, column: 20, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 115, column: 26)
!296 = !DILocation(line: 116, column: 19, scope: !295)
!297 = !DILocation(line: 116, column: 22, scope: !295)
!298 = !DILocation(line: 116, column: 21, scope: !295)
!299 = !DILocation(line: 116, column: 26, scope: !295)
!300 = !DILocation(line: 116, column: 24, scope: !295)
!301 = !DILocation(line: 116, column: 31, scope: !295)
!302 = !DILocation(line: 116, column: 29, scope: !295)
!303 = !DILocation(line: 116, column: 14, scope: !295)
!304 = !DILocation(line: 117, column: 16, scope: !295)
!305 = !DILocation(line: 117, column: 14, scope: !295)
!306 = !DILocation(line: 118, column: 16, scope: !295)
!307 = !DILocation(line: 118, column: 14, scope: !295)
!308 = !DILocation(line: 119, column: 7, scope: !295)
!309 = !DILocation(line: 115, column: 22, scope: !310)
!310 = !DILexicalBlockFile(scope: !291, file: !1, discriminator: 2)
!311 = !DILocation(line: 115, column: 7, scope: !310)
!312 = distinct !{!312, !313}
!313 = !DILocation(line: 115, column: 7, scope: !259)
!314 = !DILocation(line: 121, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !259, file: !1, line: 121, column: 10)
!316 = !DILocation(line: 121, column: 10, scope: !315)
!317 = !DILocation(line: 121, column: 28, scope: !315)
!318 = !DILocation(line: 121, column: 23, scope: !319)
!319 = !DILexicalBlockFile(scope: !315, file: !1, discriminator: 1)
!320 = !DILocation(line: 121, column: 21, scope: !315)
!321 = !DILocation(line: 121, column: 10, scope: !259)
!322 = !DILocalVariable(name: "b1", scope: !323, file: !1, line: 122, type: !52)
!323 = distinct !DILexicalBlock(scope: !315, file: !1, line: 121, column: 33)
!324 = !DILocation(line: 122, column: 23, scope: !323)
!325 = !DILocation(line: 123, column: 37, scope: !323)
!326 = !DILocation(line: 123, column: 18, scope: !323)
!327 = !DILocation(line: 123, column: 16, scope: !323)
!328 = !DILocation(line: 124, column: 18, scope: !323)
!329 = !DILocation(line: 124, column: 22, scope: !323)
!330 = !DILocation(line: 124, column: 21, scope: !323)
!331 = !DILocation(line: 124, column: 27, scope: !323)
!332 = !DILocation(line: 124, column: 13, scope: !323)
!333 = !DILocation(line: 125, column: 18, scope: !323)
!334 = !DILocation(line: 125, column: 22, scope: !323)
!335 = !DILocation(line: 125, column: 21, scope: !323)
!336 = !DILocation(line: 125, column: 27, scope: !323)
!337 = !DILocation(line: 125, column: 13, scope: !323)
!338 = !DILocation(line: 126, column: 7, scope: !323)
!339 = !DILocalVariable(name: "b0", scope: !340, file: !1, line: 128, type: !52)
!340 = distinct !DILexicalBlock(scope: !315, file: !1, line: 127, column: 12)
!341 = !DILocation(line: 128, column: 23, scope: !340)
!342 = !DILocation(line: 129, column: 37, scope: !340)
!343 = !DILocation(line: 129, column: 18, scope: !340)
!344 = !DILocation(line: 129, column: 16, scope: !340)
!345 = !DILocation(line: 130, column: 18, scope: !340)
!346 = !DILocation(line: 130, column: 22, scope: !340)
!347 = !DILocation(line: 130, column: 21, scope: !340)
!348 = !DILocation(line: 130, column: 25, scope: !340)
!349 = !DILocation(line: 130, column: 13, scope: !340)
!350 = !DILocation(line: 131, column: 18, scope: !340)
!351 = !DILocation(line: 131, column: 22, scope: !340)
!352 = !DILocation(line: 131, column: 21, scope: !340)
!353 = !DILocation(line: 131, column: 25, scope: !340)
!354 = !DILocation(line: 131, column: 13, scope: !340)
!355 = !DILocation(line: 134, column: 21, scope: !259)
!356 = !DILocation(line: 134, column: 28, scope: !259)
!357 = !DILocation(line: 134, column: 26, scope: !259)
!358 = !DILocation(line: 134, column: 7, scope: !259)
!359 = !DILocation(line: 134, column: 15, scope: !259)
!360 = !DILocation(line: 134, column: 19, scope: !259)
!361 = !DILocation(line: 135, column: 26, scope: !259)
!362 = !DILocation(line: 135, column: 21, scope: !259)
!363 = !DILocation(line: 135, column: 7, scope: !259)
!364 = !DILocation(line: 135, column: 15, scope: !259)
!365 = !DILocation(line: 135, column: 19, scope: !259)
!366 = !DILocation(line: 136, column: 14, scope: !259)
!367 = !DILocation(line: 136, column: 14, scope: !368)
!368 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 1)
!369 = !DILocation(line: 136, column: 14, scope: !370)
!370 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 2)
!371 = !DILocation(line: 136, column: 14, scope: !372)
!372 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 3)
!373 = !DILocation(line: 136, column: 14, scope: !374)
!374 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 4)
!375 = !DILocation(line: 136, column: 14, scope: !376)
!376 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 5)
!377 = !DILocation(line: 136, column: 14, scope: !378)
!378 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 6)
!379 = !DILocation(line: 136, column: 7, scope: !378)
!380 = !DILocation(line: 139, column: 1, scope: !47)
!381 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn_array", scope: !1, file: !1, line: 143, type: !382, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!382 = !DISubroutineType(types: !383)
!383 = !{!50, !50, !50, !42, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!385 = !DILocalVariable(name: "nmin", arg: 1, scope: !381, file: !1, line: 143, type: !50)
!386 = !DILocation(line: 143, column: 28, scope: !381)
!387 = !DILocalVariable(name: "nmax", arg: 2, scope: !381, file: !1, line: 143, type: !50)
!388 = !DILocation(line: 143, column: 38, scope: !381)
!389 = !DILocalVariable(name: "x", arg: 3, scope: !381, file: !1, line: 143, type: !42)
!390 = !DILocation(line: 143, column: 51, scope: !381)
!391 = !DILocalVariable(name: "result_array", arg: 4, scope: !381, file: !1, line: 143, type: !384)
!392 = !DILocation(line: 143, column: 63, scope: !381)
!393 = !DILocation(line: 147, column: 6, scope: !394)
!394 = distinct !DILexicalBlock(scope: !381, file: !1, line: 147, column: 6)
!395 = !DILocation(line: 147, column: 11, scope: !394)
!396 = !DILocation(line: 147, column: 15, scope: !394)
!397 = !DILocation(line: 147, column: 18, scope: !398)
!398 = !DILexicalBlockFile(scope: !394, file: !1, discriminator: 1)
!399 = !DILocation(line: 147, column: 25, scope: !398)
!400 = !DILocation(line: 147, column: 23, scope: !398)
!401 = !DILocation(line: 147, column: 6, scope: !398)
!402 = !DILocalVariable(name: "n", scope: !403, file: !1, line: 148, type: !50)
!403 = distinct !DILexicalBlock(scope: !394, file: !1, line: 147, column: 31)
!404 = !DILocation(line: 148, column: 9, scope: !403)
!405 = !DILocation(line: 149, column: 11, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !1, line: 149, column: 5)
!407 = !DILocation(line: 149, column: 10, scope: !406)
!408 = !DILocation(line: 149, column: 9, scope: !406)
!409 = !DILocation(line: 149, column: 17, scope: !410)
!410 = !DILexicalBlockFile(scope: !411, file: !1, discriminator: 1)
!411 = distinct !DILexicalBlock(scope: !406, file: !1, line: 149, column: 5)
!412 = !DILocation(line: 149, column: 20, scope: !410)
!413 = !DILocation(line: 149, column: 18, scope: !410)
!414 = !DILocation(line: 149, column: 5, scope: !410)
!415 = !DILocation(line: 150, column: 20, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !1, line: 149, column: 31)
!417 = !DILocation(line: 150, column: 22, scope: !416)
!418 = !DILocation(line: 150, column: 21, scope: !416)
!419 = !DILocation(line: 150, column: 7, scope: !416)
!420 = !DILocation(line: 150, column: 28, scope: !416)
!421 = !DILocation(line: 151, column: 5, scope: !416)
!422 = !DILocation(line: 149, column: 27, scope: !423)
!423 = !DILexicalBlockFile(scope: !411, file: !1, discriminator: 2)
!424 = !DILocation(line: 149, column: 5, scope: !423)
!425 = distinct !{!425, !426}
!426 = !DILocation(line: 149, column: 5, scope: !403)
!427 = !DILocation(line: 152, column: 5, scope: !403)
!428 = distinct !{!428, !427}
!429 = !DILocation(line: 152, column: 5, scope: !430)
!430 = !DILexicalBlockFile(scope: !431, file: !1, discriminator: 1)
!431 = distinct !DILexicalBlock(scope: !403, file: !1, line: 152, column: 5)
!432 = !DILocation(line: 153, column: 3, scope: !403)
!433 = !DILocation(line: 154, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !394, file: !1, line: 154, column: 11)
!435 = !DILocation(line: 154, column: 13, scope: !434)
!436 = !DILocation(line: 154, column: 11, scope: !394)
!437 = !DILocalVariable(name: "n", scope: !438, file: !1, line: 155, type: !50)
!438 = distinct !DILexicalBlock(scope: !434, file: !1, line: 154, column: 21)
!439 = !DILocation(line: 155, column: 9, scope: !438)
!440 = !DILocation(line: 156, column: 11, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !1, line: 156, column: 5)
!442 = !DILocation(line: 156, column: 10, scope: !441)
!443 = !DILocation(line: 156, column: 9, scope: !441)
!444 = !DILocation(line: 156, column: 17, scope: !445)
!445 = !DILexicalBlockFile(scope: !446, file: !1, discriminator: 1)
!446 = distinct !DILexicalBlock(scope: !441, file: !1, line: 156, column: 5)
!447 = !DILocation(line: 156, column: 20, scope: !445)
!448 = !DILocation(line: 156, column: 18, scope: !445)
!449 = !DILocation(line: 156, column: 5, scope: !445)
!450 = !DILocation(line: 157, column: 20, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !1, line: 156, column: 31)
!452 = !DILocation(line: 157, column: 22, scope: !451)
!453 = !DILocation(line: 157, column: 21, scope: !451)
!454 = !DILocation(line: 157, column: 7, scope: !451)
!455 = !DILocation(line: 157, column: 28, scope: !451)
!456 = !DILocation(line: 158, column: 5, scope: !451)
!457 = !DILocation(line: 156, column: 27, scope: !458)
!458 = !DILexicalBlockFile(scope: !446, file: !1, discriminator: 2)
!459 = !DILocation(line: 156, column: 5, scope: !458)
!460 = distinct !{!460, !461}
!461 = !DILocation(line: 156, column: 5, scope: !438)
!462 = !DILocation(line: 159, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !438, file: !1, line: 159, column: 8)
!464 = !DILocation(line: 159, column: 13, scope: !463)
!465 = !DILocation(line: 159, column: 8, scope: !438)
!466 = !DILocation(line: 159, column: 19, scope: !467)
!467 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 1)
!468 = !DILocation(line: 159, column: 35, scope: !467)
!469 = !DILocation(line: 160, column: 5, scope: !438)
!470 = !DILocalVariable(name: "r_Jnp1", scope: !471, file: !1, line: 163, type: !52)
!471 = distinct !DILexicalBlock(scope: !434, file: !1, line: 162, column: 8)
!472 = !DILocation(line: 163, column: 19, scope: !471)
!473 = !DILocalVariable(name: "r_Jn", scope: !471, file: !1, line: 164, type: !52)
!474 = !DILocation(line: 164, column: 19, scope: !471)
!475 = !DILocalVariable(name: "stat_np1", scope: !471, file: !1, line: 165, type: !50)
!476 = !DILocation(line: 165, column: 9, scope: !471)
!477 = !DILocation(line: 165, column: 39, scope: !471)
!478 = !DILocation(line: 165, column: 43, scope: !471)
!479 = !DILocation(line: 165, column: 47, scope: !471)
!480 = !DILocation(line: 165, column: 20, scope: !471)
!481 = !DILocalVariable(name: "stat_n", scope: !471, file: !1, line: 166, type: !50)
!482 = !DILocation(line: 166, column: 9, scope: !471)
!483 = !DILocation(line: 166, column: 39, scope: !471)
!484 = !DILocation(line: 166, column: 47, scope: !471)
!485 = !DILocation(line: 166, column: 20, scope: !471)
!486 = !DILocalVariable(name: "stat", scope: !471, file: !1, line: 167, type: !50)
!487 = !DILocation(line: 167, column: 9, scope: !471)
!488 = !DILocation(line: 167, column: 16, scope: !471)
!489 = !DILocation(line: 167, column: 16, scope: !490)
!490 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 1)
!491 = !DILocation(line: 167, column: 16, scope: !492)
!492 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 2)
!493 = !DILocation(line: 167, column: 16, scope: !494)
!494 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 3)
!495 = !DILocation(line: 167, column: 16, scope: !496)
!496 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 4)
!497 = !DILocation(line: 167, column: 16, scope: !498)
!498 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 5)
!499 = !DILocation(line: 167, column: 16, scope: !500)
!500 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 6)
!501 = !DILocation(line: 167, column: 9, scope: !500)
!502 = !DILocalVariable(name: "Jnp1", scope: !471, file: !1, line: 169, type: !42)
!503 = !DILocation(line: 169, column: 12, scope: !471)
!504 = !DILocation(line: 169, column: 26, scope: !471)
!505 = !DILocalVariable(name: "Jn", scope: !471, file: !1, line: 170, type: !42)
!506 = !DILocation(line: 170, column: 12, scope: !471)
!507 = !DILocation(line: 170, column: 24, scope: !471)
!508 = !DILocalVariable(name: "Jnm1", scope: !471, file: !1, line: 171, type: !42)
!509 = !DILocation(line: 171, column: 12, scope: !471)
!510 = !DILocalVariable(name: "n", scope: !471, file: !1, line: 172, type: !50)
!511 = !DILocation(line: 172, column: 9, scope: !471)
!512 = !DILocation(line: 174, column: 8, scope: !513)
!513 = distinct !DILexicalBlock(scope: !471, file: !1, line: 174, column: 8)
!514 = !DILocation(line: 174, column: 13, scope: !513)
!515 = !DILocation(line: 174, column: 8, scope: !471)
!516 = !DILocation(line: 175, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 175, column: 7)
!518 = distinct !DILexicalBlock(scope: !513, file: !1, line: 174, column: 29)
!519 = !DILocation(line: 175, column: 12, scope: !517)
!520 = !DILocation(line: 175, column: 11, scope: !517)
!521 = !DILocation(line: 175, column: 19, scope: !522)
!522 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 1)
!523 = distinct !DILexicalBlock(scope: !517, file: !1, line: 175, column: 7)
!524 = !DILocation(line: 175, column: 22, scope: !522)
!525 = !DILocation(line: 175, column: 20, scope: !522)
!526 = !DILocation(line: 175, column: 7, scope: !522)
!527 = !DILocation(line: 176, column: 32, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !1, line: 175, column: 33)
!529 = !DILocation(line: 176, column: 22, scope: !528)
!530 = !DILocation(line: 176, column: 24, scope: !528)
!531 = !DILocation(line: 176, column: 23, scope: !528)
!532 = !DILocation(line: 176, column: 9, scope: !528)
!533 = !DILocation(line: 176, column: 30, scope: !528)
!534 = !DILocation(line: 177, column: 17, scope: !528)
!535 = !DILocation(line: 177, column: 16, scope: !528)
!536 = !DILocation(line: 177, column: 28, scope: !528)
!537 = !DILocation(line: 177, column: 27, scope: !528)
!538 = !DILocation(line: 177, column: 30, scope: !528)
!539 = !DILocation(line: 177, column: 29, scope: !528)
!540 = !DILocation(line: 177, column: 34, scope: !528)
!541 = !DILocation(line: 177, column: 32, scope: !528)
!542 = !DILocation(line: 177, column: 22, scope: !528)
!543 = !DILocation(line: 177, column: 14, scope: !528)
!544 = !DILocation(line: 178, column: 16, scope: !528)
!545 = !DILocation(line: 178, column: 14, scope: !528)
!546 = !DILocation(line: 179, column: 16, scope: !528)
!547 = !DILocation(line: 179, column: 14, scope: !528)
!548 = !DILocation(line: 180, column: 7, scope: !528)
!549 = !DILocation(line: 175, column: 29, scope: !550)
!550 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 2)
!551 = !DILocation(line: 175, column: 7, scope: !550)
!552 = distinct !{!552, !553}
!553 = !DILocation(line: 175, column: 7, scope: !518)
!554 = !DILocation(line: 181, column: 5, scope: !518)
!555 = !DILocation(line: 183, column: 13, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 183, column: 7)
!557 = distinct !DILexicalBlock(scope: !513, file: !1, line: 182, column: 10)
!558 = !DILocation(line: 183, column: 12, scope: !556)
!559 = !DILocation(line: 183, column: 11, scope: !556)
!560 = !DILocation(line: 183, column: 19, scope: !561)
!561 = !DILexicalBlockFile(scope: !562, file: !1, discriminator: 1)
!562 = distinct !DILexicalBlock(scope: !556, file: !1, line: 183, column: 7)
!563 = !DILocation(line: 183, column: 22, scope: !561)
!564 = !DILocation(line: 183, column: 20, scope: !561)
!565 = !DILocation(line: 183, column: 7, scope: !561)
!566 = !DILocation(line: 184, column: 22, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !1, line: 183, column: 33)
!568 = !DILocation(line: 184, column: 24, scope: !567)
!569 = !DILocation(line: 184, column: 23, scope: !567)
!570 = !DILocation(line: 184, column: 9, scope: !567)
!571 = !DILocation(line: 184, column: 30, scope: !567)
!572 = !DILocation(line: 185, column: 7, scope: !567)
!573 = !DILocation(line: 183, column: 29, scope: !574)
!574 = !DILexicalBlockFile(scope: !562, file: !1, discriminator: 2)
!575 = !DILocation(line: 183, column: 7, scope: !574)
!576 = distinct !{!576, !577}
!577 = !DILocation(line: 183, column: 7, scope: !557)
!578 = !DILocation(line: 188, column: 12, scope: !471)
!579 = !DILocation(line: 188, column: 5, scope: !471)
!580 = !DILocation(line: 190, column: 1, scope: !381)
!581 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn", scope: !1, file: !1, line: 196, type: !582, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!582 = !DISubroutineType(types: !583)
!583 = !{!42, !584, !585}
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!586 = !DILocalVariable(name: "n", arg: 1, scope: !581, file: !1, line: 196, type: !584)
!587 = !DILocation(line: 196, column: 35, scope: !581)
!588 = !DILocalVariable(name: "x", arg: 2, scope: !581, file: !1, line: 196, type: !585)
!589 = !DILocation(line: 196, column: 51, scope: !581)
!590 = !DILocalVariable(name: "result", scope: !581, file: !1, line: 198, type: !52)
!591 = !DILocation(line: 198, column: 3, scope: !581)
!592 = !DILocalVariable(name: "status", scope: !581, file: !1, line: 198, type: !50)
!593 = !DILocation(line: 198, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !581, file: !1, line: 198, column: 3)
!595 = !DILocation(line: 198, column: 3, scope: !596)
!596 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 1)
!597 = distinct !DILexicalBlock(scope: !594, file: !1, line: 198, column: 3)
!598 = distinct !{!598, !599}
!599 = !DILocation(line: 198, column: 3, scope: !597)
!600 = !DILocation(line: 198, column: 3, scope: !601)
!601 = !DILexicalBlockFile(scope: !602, file: !1, discriminator: 2)
!602 = distinct !DILexicalBlock(scope: !597, file: !1, line: 198, column: 3)
!603 = !DILocation(line: 198, column: 3, scope: !604)
!604 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 3)
!605 = !DILocation(line: 198, column: 3, scope: !606)
!606 = !DILexicalBlockFile(scope: !581, file: !1, discriminator: 4)
!607 = !DILocation(line: 199, column: 1, scope: !581)
