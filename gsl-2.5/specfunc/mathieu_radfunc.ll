; ModuleID = 'mathieu_radfunc.c'
source_filename = "mathieu_radfunc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, double*, double*, double*, double*, double*, double*, double*, %struct.gsl_vector*, %struct.gsl_matrix*, %struct.gsl_eigen_symmv_workspace* }
%struct.gsl_vector = type { i64, i64, double*, %struct.gsl_block_struct*, i32 }
%struct.gsl_block_struct = type { i64, double* }
%struct.gsl_matrix = type { i64, i64, i64, double*, %struct.gsl_block_struct*, i32 }
%struct.gsl_eigen_symmv_workspace = type { i64, double*, double*, double*, double* }

@.str = private unnamed_addr constant [28 x i8] c"q must be greater than zero\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mathieu_radfunc.c\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"kind must be 1 or 2\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"gsl_sf_mathieu_Mc_e(kind, order, qq, zz, &result)\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"gsl_sf_mathieu_Ms_e(kind, order, qq, zz, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_Mc_e(i32, i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca [100 x double], align 16
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !58, metadata !59), !dbg !60
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !61, metadata !59), !dbg !62
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !63, metadata !59), !dbg !64
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !65, metadata !59), !dbg !66
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !67, metadata !59), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %12, metadata !69, metadata !59), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %13, metadata !71, metadata !59), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %14, metadata !73, metadata !59), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %15, metadata !75, metadata !59), !dbg !76
  call void @llvm.dbg.declare(metadata double* %16, metadata !77, metadata !59), !dbg !78
  store double 1.000000e-14, double* %16, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata double* %17, metadata !79, metadata !59), !dbg !80
  call void @llvm.dbg.declare(metadata double* %18, metadata !81, metadata !59), !dbg !82
  store double 0x400921FB54442D18, double* %18, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata double* %19, metadata !83, metadata !59), !dbg !84
  call void @llvm.dbg.declare(metadata double* %20, metadata !85, metadata !59), !dbg !86
  call void @llvm.dbg.declare(metadata [100 x double]* %21, metadata !87, metadata !59), !dbg !91
  call void @llvm.dbg.declare(metadata double* %22, metadata !92, metadata !59), !dbg !93
  call void @llvm.dbg.declare(metadata double* %23, metadata !94, metadata !59), !dbg !95
  call void @llvm.dbg.declare(metadata double* %24, metadata !96, metadata !59), !dbg !97
  call void @llvm.dbg.declare(metadata double* %25, metadata !98, metadata !59), !dbg !99
  call void @llvm.dbg.declare(metadata double* %26, metadata !100, metadata !59), !dbg !101
  call void @llvm.dbg.declare(metadata double* %27, metadata !102, metadata !59), !dbg !103
  call void @llvm.dbg.declare(metadata double* %28, metadata !104, metadata !59), !dbg !105
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !106, metadata !59), !dbg !107
  %30 = load double, double* %9, align 8, !dbg !108
  %31 = fcmp ole double %30, 0.000000e+00, !dbg !110
  br i1 %31, label %32, label %35, !dbg !111

; <label>:32:                                     ; preds = %5
  br label %33, !dbg !112, !llvm.loop !114

; <label>:33:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 44, i32 4), !dbg !115
  store i32 4, i32* %6, align 4, !dbg !115
  br label %272, !dbg !115
                                                  ; No predecessors!
  br label %35, !dbg !118

; <label>:35:                                     ; preds = %34, %5
  %36 = load i32, i32* %7, align 4, !dbg !119
  %37 = icmp slt i32 %36, 1, !dbg !121
  br i1 %37, label %41, label %38, !dbg !122

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %7, align 4, !dbg !123
  %40 = icmp sgt i32 %39, 2, !dbg !125
  br i1 %40, label %41, label %44, !dbg !126

; <label>:41:                                     ; preds = %38, %35
  br label %42, !dbg !127, !llvm.loop !129

; <label>:42:                                     ; preds = %41
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 48, i32 4), !dbg !130
  store i32 4, i32* %6, align 4, !dbg !130
  br label %272, !dbg !130
                                                  ; No predecessors!
  br label %44, !dbg !133

; <label>:44:                                     ; preds = %43, %38
  store i32 0, i32* %14, align 4, !dbg !134
  store double 0.000000e+00, double* %17, align 8, !dbg !135
  store double 0.000000e+00, double* %19, align 8, !dbg !136
  %45 = load double, double* %9, align 8, !dbg !137
  %46 = call double @sqrt(double %45) #5, !dbg !138
  %47 = load double, double* %10, align 8, !dbg !139
  %48 = fmul double -1.000000e+00, %47, !dbg !140
  %49 = call double @exp(double %48) #5, !dbg !141
  %50 = fmul double %46, %49, !dbg !143
  store double %50, double* %27, align 8, !dbg !144
  %51 = load double, double* %9, align 8, !dbg !145
  %52 = call double @sqrt(double %51) #5, !dbg !146
  %53 = load double, double* %10, align 8, !dbg !147
  %54 = call double @exp(double %53) #5, !dbg !148
  %55 = fmul double %52, %54, !dbg !149
  store double %55, double* %28, align 8, !dbg !150
  store i32 0, i32* %12, align 4, !dbg !151
  %56 = load i32, i32* %8, align 4, !dbg !152
  %57 = srem i32 %56, 2, !dbg !154
  %58 = icmp ne i32 %57, 0, !dbg !155
  br i1 %58, label %59, label %60, !dbg !156

; <label>:59:                                     ; preds = %44
  store i32 1, i32* %12, align 4, !dbg !157
  br label %60, !dbg !158

; <label>:60:                                     ; preds = %59, %44
  %61 = load i32, i32* %8, align 4, !dbg !159
  %62 = load double, double* %9, align 8, !dbg !160
  %63 = call i32 @gsl_sf_mathieu_a_e(i32 %61, double %62, %struct.gsl_sf_result_struct* %29), !dbg !161
  store i32 %63, i32* %15, align 4, !dbg !162
  %64 = load i32, i32* %15, align 4, !dbg !163
  %65 = icmp ne i32 %64, 0, !dbg !165
  br i1 %65, label %66, label %68, !dbg !166

; <label>:66:                                     ; preds = %60
  %67 = load i32, i32* %15, align 4, !dbg !167
  store i32 %67, i32* %6, align 4, !dbg !169
  br label %272, !dbg !169

; <label>:68:                                     ; preds = %60
  %69 = load i32, i32* %8, align 4, !dbg !170
  %70 = load double, double* %9, align 8, !dbg !171
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !172
  %72 = load double, double* %71, align 8, !dbg !172
  %73 = getelementptr inbounds [100 x double], [100 x double]* %21, i32 0, i32 0, !dbg !173
  %74 = call i32 @gsl_sf_mathieu_a_coeff(i32 %69, double %70, double %72, double* %73), !dbg !174
  store i32 %74, i32* %15, align 4, !dbg !175
  %75 = load i32, i32* %15, align 4, !dbg !176
  %76 = icmp ne i32 %75, 0, !dbg !178
  br i1 %76, label %77, label %79, !dbg !179

; <label>:77:                                     ; preds = %68
  %78 = load i32, i32* %15, align 4, !dbg !180
  store i32 %78, i32* %6, align 4, !dbg !182
  br label %272, !dbg !182

; <label>:79:                                     ; preds = %68
  %80 = load i32, i32* %12, align 4, !dbg !183
  %81 = icmp eq i32 %80, 0, !dbg !185
  br i1 %81, label %82, label %160, !dbg !186

; <label>:82:                                     ; preds = %79
  store i32 0, i32* %13, align 4, !dbg !187
  br label %83, !dbg !190

; <label>:83:                                     ; preds = %148, %82
  %84 = load i32, i32* %13, align 4, !dbg !191
  %85 = icmp slt i32 %84, 100, !dbg !194
  br i1 %85, label %86, label %151, !dbg !195

; <label>:86:                                     ; preds = %83
  %87 = load double, double* %17, align 8, !dbg !196
  %88 = load i32, i32* %13, align 4, !dbg !196
  %89 = sext i32 %88 to i64, !dbg !196
  %90 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %89, !dbg !196
  %91 = load double, double* %90, align 8, !dbg !196
  %92 = call double @fabs(double %91) #1, !dbg !196
  %93 = fcmp ogt double %87, %92, !dbg !196
  br i1 %93, label %94, label %96, !dbg !196

; <label>:94:                                     ; preds = %86
  %95 = load double, double* %17, align 8, !dbg !198
  br label %102, !dbg !198

; <label>:96:                                     ; preds = %86
  %97 = load i32, i32* %13, align 4, !dbg !200
  %98 = sext i32 %97 to i64, !dbg !200
  %99 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %98, !dbg !200
  %100 = load double, double* %99, align 8, !dbg !200
  %101 = call double @fabs(double %100) #1, !dbg !200
  br label %102, !dbg !200

; <label>:102:                                    ; preds = %96, %94
  %103 = phi double [ %95, %94 ], [ %101, %96 ], !dbg !202
  store double %103, double* %17, align 8, !dbg !204
  %104 = load i32, i32* %13, align 4, !dbg !205
  %105 = sext i32 %104 to i64, !dbg !207
  %106 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %105, !dbg !207
  %107 = load double, double* %106, align 8, !dbg !207
  %108 = call double @fabs(double %107) #1, !dbg !208
  %109 = load double, double* %17, align 8, !dbg !209
  %110 = fdiv double %108, %109, !dbg !210
  %111 = load double, double* %16, align 8, !dbg !211
  %112 = fcmp olt double %110, %111, !dbg !212
  br i1 %112, label %113, label %114, !dbg !213

; <label>:113:                                    ; preds = %102
  br label %151, !dbg !214

; <label>:114:                                    ; preds = %102
  %115 = load i32, i32* %13, align 4, !dbg !215
  %116 = load double, double* %27, align 8, !dbg !216
  %117 = call double @gsl_sf_bessel_Jn(i32 %115, double %116), !dbg !217
  store double %117, double* %23, align 8, !dbg !218
  %118 = load i32, i32* %7, align 4, !dbg !219
  %119 = icmp eq i32 %118, 1, !dbg !221
  br i1 %119, label %120, label %124, !dbg !222

; <label>:120:                                    ; preds = %114
  %121 = load i32, i32* %13, align 4, !dbg !223
  %122 = load double, double* %28, align 8, !dbg !225
  %123 = call double @gsl_sf_bessel_Jn(i32 %121, double %122), !dbg !226
  store double %123, double* %24, align 8, !dbg !227
  br label %128, !dbg !228

; <label>:124:                                    ; preds = %114
  %125 = load i32, i32* %13, align 4, !dbg !229
  %126 = load double, double* %28, align 8, !dbg !231
  %127 = call double @gsl_sf_bessel_Yn(i32 %125, double %126), !dbg !232
  store double %127, double* %24, align 8, !dbg !233
  br label %128

; <label>:128:                                    ; preds = %124, %120
  %129 = load i32, i32* %8, align 4, !dbg !234
  %130 = sitofp i32 %129 to double, !dbg !234
  %131 = fmul double 5.000000e-01, %130, !dbg !235
  %132 = load i32, i32* %13, align 4, !dbg !236
  %133 = sitofp i32 %132 to double, !dbg !236
  %134 = fadd double %131, %133, !dbg !237
  %135 = call double @pow(double -1.000000e+00, double %134) #5, !dbg !238
  %136 = load i32, i32* %13, align 4, !dbg !239
  %137 = sext i32 %136 to i64, !dbg !240
  %138 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %137, !dbg !240
  %139 = load double, double* %138, align 8, !dbg !240
  %140 = fmul double %135, %139, !dbg !241
  store double %140, double* %22, align 8, !dbg !242
  %141 = load double, double* %22, align 8, !dbg !243
  %142 = load double, double* %23, align 8, !dbg !244
  %143 = fmul double %141, %142, !dbg !245
  %144 = load double, double* %24, align 8, !dbg !246
  %145 = fmul double %143, %144, !dbg !247
  %146 = load double, double* %19, align 8, !dbg !248
  %147 = fadd double %146, %145, !dbg !248
  store double %147, double* %19, align 8, !dbg !248
  br label %148, !dbg !249

; <label>:148:                                    ; preds = %128
  %149 = load i32, i32* %13, align 4, !dbg !250
  %150 = add nsw i32 %149, 1, !dbg !250
  store i32 %150, i32* %13, align 4, !dbg !250
  br label %83, !dbg !252, !llvm.loop !253

; <label>:151:                                    ; preds = %113, %83
  %152 = load double, double* %18, align 8, !dbg !255
  %153 = fdiv double %152, 2.000000e+00, !dbg !256
  %154 = call double @sqrt(double %153) #5, !dbg !257
  %155 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 0, !dbg !258
  %156 = load double, double* %155, align 16, !dbg !258
  %157 = fdiv double %154, %156, !dbg !259
  %158 = load double, double* %19, align 8, !dbg !260
  %159 = fmul double %158, %157, !dbg !260
  store double %159, double* %19, align 8, !dbg !260
  br label %255, !dbg !261

; <label>:160:                                    ; preds = %79
  store i32 0, i32* %13, align 4, !dbg !262
  br label %161, !dbg !265

; <label>:161:                                    ; preds = %243, %160
  %162 = load i32, i32* %13, align 4, !dbg !266
  %163 = icmp slt i32 %162, 100, !dbg !269
  br i1 %163, label %164, label %246, !dbg !270

; <label>:164:                                    ; preds = %161
  %165 = load double, double* %17, align 8, !dbg !271
  %166 = load i32, i32* %13, align 4, !dbg !271
  %167 = sext i32 %166 to i64, !dbg !271
  %168 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %167, !dbg !271
  %169 = load double, double* %168, align 8, !dbg !271
  %170 = call double @fabs(double %169) #1, !dbg !271
  %171 = fcmp ogt double %165, %170, !dbg !271
  br i1 %171, label %172, label %174, !dbg !271

; <label>:172:                                    ; preds = %164
  %173 = load double, double* %17, align 8, !dbg !273
  br label %180, !dbg !273

; <label>:174:                                    ; preds = %164
  %175 = load i32, i32* %13, align 4, !dbg !275
  %176 = sext i32 %175 to i64, !dbg !275
  %177 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %176, !dbg !275
  %178 = load double, double* %177, align 8, !dbg !275
  %179 = call double @fabs(double %178) #1, !dbg !275
  br label %180, !dbg !275

; <label>:180:                                    ; preds = %174, %172
  %181 = phi double [ %173, %172 ], [ %179, %174 ], !dbg !277
  store double %181, double* %17, align 8, !dbg !279
  %182 = load i32, i32* %13, align 4, !dbg !280
  %183 = sext i32 %182 to i64, !dbg !282
  %184 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %183, !dbg !282
  %185 = load double, double* %184, align 8, !dbg !282
  %186 = call double @fabs(double %185) #1, !dbg !283
  %187 = load double, double* %17, align 8, !dbg !284
  %188 = fdiv double %186, %187, !dbg !285
  %189 = load double, double* %16, align 8, !dbg !286
  %190 = fcmp olt double %188, %189, !dbg !287
  br i1 %190, label %191, label %192, !dbg !288

; <label>:191:                                    ; preds = %180
  br label %246, !dbg !289

; <label>:192:                                    ; preds = %180
  %193 = load i32, i32* %13, align 4, !dbg !290
  %194 = load double, double* %27, align 8, !dbg !291
  %195 = call double @gsl_sf_bessel_Jn(i32 %193, double %194), !dbg !292
  store double %195, double* %23, align 8, !dbg !293
  %196 = load i32, i32* %13, align 4, !dbg !294
  %197 = add nsw i32 %196, 1, !dbg !295
  %198 = load double, double* %27, align 8, !dbg !296
  %199 = call double @gsl_sf_bessel_Jn(i32 %197, double %198), !dbg !297
  store double %199, double* %25, align 8, !dbg !298
  %200 = load i32, i32* %7, align 4, !dbg !299
  %201 = icmp eq i32 %200, 1, !dbg !301
  br i1 %201, label %202, label %210, !dbg !302

; <label>:202:                                    ; preds = %192
  %203 = load i32, i32* %13, align 4, !dbg !303
  %204 = load double, double* %28, align 8, !dbg !305
  %205 = call double @gsl_sf_bessel_Jn(i32 %203, double %204), !dbg !306
  store double %205, double* %24, align 8, !dbg !307
  %206 = load i32, i32* %13, align 4, !dbg !308
  %207 = add nsw i32 %206, 1, !dbg !309
  %208 = load double, double* %28, align 8, !dbg !310
  %209 = call double @gsl_sf_bessel_Jn(i32 %207, double %208), !dbg !311
  store double %209, double* %26, align 8, !dbg !312
  br label %218, !dbg !313

; <label>:210:                                    ; preds = %192
  %211 = load i32, i32* %13, align 4, !dbg !314
  %212 = load double, double* %28, align 8, !dbg !316
  %213 = call double @gsl_sf_bessel_Yn(i32 %211, double %212), !dbg !317
  store double %213, double* %24, align 8, !dbg !318
  %214 = load i32, i32* %13, align 4, !dbg !319
  %215 = add nsw i32 %214, 1, !dbg !320
  %216 = load double, double* %28, align 8, !dbg !321
  %217 = call double @gsl_sf_bessel_Yn(i32 %215, double %216), !dbg !322
  store double %217, double* %26, align 8, !dbg !323
  br label %218

; <label>:218:                                    ; preds = %210, %202
  %219 = load i32, i32* %8, align 4, !dbg !324
  %220 = sub nsw i32 %219, 1, !dbg !325
  %221 = sitofp i32 %220 to double, !dbg !326
  %222 = fmul double 5.000000e-01, %221, !dbg !327
  %223 = load i32, i32* %13, align 4, !dbg !328
  %224 = sitofp i32 %223 to double, !dbg !328
  %225 = fadd double %222, %224, !dbg !329
  %226 = call double @pow(double -1.000000e+00, double %225) #5, !dbg !330
  %227 = load i32, i32* %13, align 4, !dbg !331
  %228 = sext i32 %227 to i64, !dbg !332
  %229 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %228, !dbg !332
  %230 = load double, double* %229, align 8, !dbg !332
  %231 = fmul double %226, %230, !dbg !333
  store double %231, double* %22, align 8, !dbg !334
  %232 = load double, double* %22, align 8, !dbg !335
  %233 = load double, double* %23, align 8, !dbg !336
  %234 = load double, double* %26, align 8, !dbg !337
  %235 = fmul double %233, %234, !dbg !338
  %236 = load double, double* %25, align 8, !dbg !339
  %237 = load double, double* %24, align 8, !dbg !340
  %238 = fmul double %236, %237, !dbg !341
  %239 = fadd double %235, %238, !dbg !342
  %240 = fmul double %232, %239, !dbg !343
  %241 = load double, double* %19, align 8, !dbg !344
  %242 = fadd double %241, %240, !dbg !344
  store double %242, double* %19, align 8, !dbg !344
  br label %243, !dbg !345

; <label>:243:                                    ; preds = %218
  %244 = load i32, i32* %13, align 4, !dbg !346
  %245 = add nsw i32 %244, 1, !dbg !346
  store i32 %245, i32* %13, align 4, !dbg !346
  br label %161, !dbg !348, !llvm.loop !349

; <label>:246:                                    ; preds = %191, %161
  %247 = load double, double* %18, align 8, !dbg !351
  %248 = fdiv double %247, 2.000000e+00, !dbg !352
  %249 = call double @sqrt(double %248) #5, !dbg !353
  %250 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 0, !dbg !354
  %251 = load double, double* %250, align 16, !dbg !354
  %252 = fdiv double %249, %251, !dbg !355
  %253 = load double, double* %19, align 8, !dbg !356
  %254 = fmul double %253, %252, !dbg !356
  store double %254, double* %19, align 8, !dbg !356
  br label %255

; <label>:255:                                    ; preds = %246, %151
  %256 = load double, double* %19, align 8, !dbg !357
  %257 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !358
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %257, i32 0, i32 0, !dbg !359
  store double %256, double* %258, align 8, !dbg !360
  %259 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !361
  %260 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %259, i32 0, i32 1, !dbg !362
  store double 0x3CC0000000000000, double* %260, align 8, !dbg !363
  %261 = load double, double* %19, align 8, !dbg !364
  %262 = call double @fabs(double %261) #1, !dbg !365
  store double %262, double* %20, align 8, !dbg !366
  %263 = load double, double* %20, align 8, !dbg !367
  %264 = fcmp ogt double %263, 1.000000e+00, !dbg !369
  br i1 %264, label %265, label %271, !dbg !370

; <label>:265:                                    ; preds = %255
  %266 = load double, double* %20, align 8, !dbg !371
  %267 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !372
  %268 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %267, i32 0, i32 1, !dbg !373
  %269 = load double, double* %268, align 8, !dbg !374
  %270 = fmul double %269, %266, !dbg !374
  store double %270, double* %268, align 8, !dbg !374
  br label %271, !dbg !372

; <label>:271:                                    ; preds = %265, %255
  store i32 0, i32* %6, align 4, !dbg !375
  br label %272, !dbg !375

; <label>:272:                                    ; preds = %271, %77, %66, %42, %33
  %273 = load i32, i32* %6, align 4, !dbg !376
  ret i32 %273, !dbg !376
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

declare i32 @gsl_sf_mathieu_a_e(i32, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_mathieu_a_coeff(i32, double, double, double*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare double @gsl_sf_bessel_Jn(i32, double) #2

declare double @gsl_sf_bessel_Yn(i32, double) #2

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_Ms_e(i32, i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !377 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca [100 x double], align 16
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !378, metadata !59), !dbg !379
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !380, metadata !59), !dbg !381
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !382, metadata !59), !dbg !383
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !384, metadata !59), !dbg !385
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !386, metadata !59), !dbg !387
  call void @llvm.dbg.declare(metadata i32* %12, metadata !388, metadata !59), !dbg !389
  call void @llvm.dbg.declare(metadata i32* %13, metadata !390, metadata !59), !dbg !391
  call void @llvm.dbg.declare(metadata i32* %14, metadata !392, metadata !59), !dbg !393
  call void @llvm.dbg.declare(metadata i32* %15, metadata !394, metadata !59), !dbg !395
  call void @llvm.dbg.declare(metadata double* %16, metadata !396, metadata !59), !dbg !397
  store double 1.000000e-14, double* %16, align 8, !dbg !397
  call void @llvm.dbg.declare(metadata double* %17, metadata !398, metadata !59), !dbg !399
  call void @llvm.dbg.declare(metadata double* %18, metadata !400, metadata !59), !dbg !401
  store double 0x400921FB54442D18, double* %18, align 8, !dbg !401
  call void @llvm.dbg.declare(metadata double* %19, metadata !402, metadata !59), !dbg !403
  call void @llvm.dbg.declare(metadata double* %20, metadata !404, metadata !59), !dbg !405
  call void @llvm.dbg.declare(metadata [100 x double]* %21, metadata !406, metadata !59), !dbg !407
  call void @llvm.dbg.declare(metadata double* %22, metadata !408, metadata !59), !dbg !409
  call void @llvm.dbg.declare(metadata double* %23, metadata !410, metadata !59), !dbg !411
  call void @llvm.dbg.declare(metadata double* %24, metadata !412, metadata !59), !dbg !413
  call void @llvm.dbg.declare(metadata double* %25, metadata !414, metadata !59), !dbg !415
  call void @llvm.dbg.declare(metadata double* %26, metadata !416, metadata !59), !dbg !417
  call void @llvm.dbg.declare(metadata double* %27, metadata !418, metadata !59), !dbg !419
  call void @llvm.dbg.declare(metadata double* %28, metadata !420, metadata !59), !dbg !421
  call void @llvm.dbg.declare(metadata double* %29, metadata !422, metadata !59), !dbg !423
  call void @llvm.dbg.declare(metadata double* %30, metadata !424, metadata !59), !dbg !425
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !426, metadata !59), !dbg !427
  %32 = load double, double* %9, align 8, !dbg !428
  %33 = fcmp ole double %32, 0.000000e+00, !dbg !430
  br i1 %33, label %34, label %37, !dbg !431

; <label>:34:                                     ; preds = %5
  br label %35, !dbg !432, !llvm.loop !434

; <label>:35:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 150, i32 4), !dbg !435
  store i32 4, i32* %6, align 4, !dbg !435
  br label %299, !dbg !435
                                                  ; No predecessors!
  br label %37, !dbg !438

; <label>:37:                                     ; preds = %36, %5
  %38 = load i32, i32* %7, align 4, !dbg !439
  %39 = icmp slt i32 %38, 1, !dbg !441
  br i1 %39, label %43, label %40, !dbg !442

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %7, align 4, !dbg !443
  %42 = icmp sgt i32 %41, 2, !dbg !445
  br i1 %42, label %43, label %46, !dbg !446

; <label>:43:                                     ; preds = %40, %37
  br label %44, !dbg !447, !llvm.loop !449

; <label>:44:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 154, i32 4), !dbg !450
  store i32 4, i32* %6, align 4, !dbg !450
  br label %299, !dbg !450
                                                  ; No predecessors!
  br label %46, !dbg !453

; <label>:46:                                     ; preds = %45, %40
  %47 = load i32, i32* %8, align 4, !dbg !454
  %48 = icmp eq i32 %47, 0, !dbg !456
  br i1 %48, label %49, label %54, !dbg !457

; <label>:49:                                     ; preds = %46
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !458
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !460
  store double 0.000000e+00, double* %51, align 8, !dbg !461
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !462
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !463
  store double 0.000000e+00, double* %53, align 8, !dbg !464
  store i32 0, i32* %6, align 4, !dbg !465
  br label %299, !dbg !465

; <label>:54:                                     ; preds = %46
  store i32 0, i32* %14, align 4, !dbg !466
  store double 0.000000e+00, double* %17, align 8, !dbg !467
  store double 0.000000e+00, double* %19, align 8, !dbg !468
  %55 = load double, double* %9, align 8, !dbg !469
  %56 = call double @sqrt(double %55) #5, !dbg !470
  %57 = load double, double* %10, align 8, !dbg !471
  %58 = fmul double -1.000000e+00, %57, !dbg !472
  %59 = call double @exp(double %58) #5, !dbg !473
  %60 = fmul double %56, %59, !dbg !475
  store double %60, double* %29, align 8, !dbg !476
  %61 = load double, double* %9, align 8, !dbg !477
  %62 = call double @sqrt(double %61) #5, !dbg !478
  %63 = load double, double* %10, align 8, !dbg !479
  %64 = call double @exp(double %63) #5, !dbg !480
  %65 = fmul double %62, %64, !dbg !481
  store double %65, double* %30, align 8, !dbg !482
  store i32 0, i32* %12, align 4, !dbg !483
  %66 = load i32, i32* %8, align 4, !dbg !484
  %67 = srem i32 %66, 2, !dbg !486
  %68 = icmp ne i32 %67, 0, !dbg !487
  br i1 %68, label %69, label %70, !dbg !488

; <label>:69:                                     ; preds = %54
  store i32 1, i32* %12, align 4, !dbg !489
  br label %70, !dbg !490

; <label>:70:                                     ; preds = %69, %54
  %71 = load i32, i32* %8, align 4, !dbg !491
  %72 = load double, double* %9, align 8, !dbg !492
  %73 = call i32 @gsl_sf_mathieu_b_e(i32 %71, double %72, %struct.gsl_sf_result_struct* %31), !dbg !493
  store i32 %73, i32* %15, align 4, !dbg !494
  %74 = load i32, i32* %15, align 4, !dbg !495
  %75 = icmp ne i32 %74, 0, !dbg !497
  br i1 %75, label %76, label %78, !dbg !498

; <label>:76:                                     ; preds = %70
  %77 = load i32, i32* %15, align 4, !dbg !499
  store i32 %77, i32* %6, align 4, !dbg !501
  br label %299, !dbg !501

; <label>:78:                                     ; preds = %70
  %79 = load i32, i32* %8, align 4, !dbg !502
  %80 = load double, double* %9, align 8, !dbg !503
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !504
  %82 = load double, double* %81, align 8, !dbg !504
  %83 = getelementptr inbounds [100 x double], [100 x double]* %21, i32 0, i32 0, !dbg !505
  %84 = call i32 @gsl_sf_mathieu_b_coeff(i32 %79, double %80, double %82, double* %83), !dbg !506
  store i32 %84, i32* %15, align 4, !dbg !507
  %85 = load i32, i32* %15, align 4, !dbg !508
  %86 = icmp ne i32 %85, 0, !dbg !510
  br i1 %86, label %87, label %89, !dbg !511

; <label>:87:                                     ; preds = %78
  %88 = load i32, i32* %15, align 4, !dbg !512
  store i32 %88, i32* %6, align 4, !dbg !514
  br label %299, !dbg !514

; <label>:89:                                     ; preds = %78
  %90 = load i32, i32* %12, align 4, !dbg !515
  %91 = icmp eq i32 %90, 0, !dbg !517
  br i1 %91, label %92, label %187, !dbg !518

; <label>:92:                                     ; preds = %89
  store i32 0, i32* %13, align 4, !dbg !519
  br label %93, !dbg !522

; <label>:93:                                     ; preds = %175, %92
  %94 = load i32, i32* %13, align 4, !dbg !523
  %95 = icmp slt i32 %94, 100, !dbg !526
  br i1 %95, label %96, label %178, !dbg !527

; <label>:96:                                     ; preds = %93
  %97 = load double, double* %17, align 8, !dbg !528
  %98 = load i32, i32* %13, align 4, !dbg !528
  %99 = sext i32 %98 to i64, !dbg !528
  %100 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %99, !dbg !528
  %101 = load double, double* %100, align 8, !dbg !528
  %102 = call double @fabs(double %101) #1, !dbg !528
  %103 = fcmp ogt double %97, %102, !dbg !528
  br i1 %103, label %104, label %106, !dbg !528

; <label>:104:                                    ; preds = %96
  %105 = load double, double* %17, align 8, !dbg !530
  br label %112, !dbg !530

; <label>:106:                                    ; preds = %96
  %107 = load i32, i32* %13, align 4, !dbg !532
  %108 = sext i32 %107 to i64, !dbg !532
  %109 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %108, !dbg !532
  %110 = load double, double* %109, align 8, !dbg !532
  %111 = call double @fabs(double %110) #1, !dbg !532
  br label %112, !dbg !532

; <label>:112:                                    ; preds = %106, %104
  %113 = phi double [ %105, %104 ], [ %111, %106 ], !dbg !534
  store double %113, double* %17, align 8, !dbg !536
  %114 = load i32, i32* %13, align 4, !dbg !537
  %115 = sext i32 %114 to i64, !dbg !539
  %116 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %115, !dbg !539
  %117 = load double, double* %116, align 8, !dbg !539
  %118 = call double @fabs(double %117) #1, !dbg !540
  %119 = load double, double* %17, align 8, !dbg !541
  %120 = fdiv double %118, %119, !dbg !542
  %121 = load double, double* %16, align 8, !dbg !543
  %122 = fcmp olt double %120, %121, !dbg !544
  br i1 %122, label %123, label %124, !dbg !545

; <label>:123:                                    ; preds = %112
  br label %178, !dbg !546

; <label>:124:                                    ; preds = %112
  %125 = load i32, i32* %13, align 4, !dbg !547
  %126 = load double, double* %29, align 8, !dbg !548
  %127 = call double @gsl_sf_bessel_Jn(i32 %125, double %126), !dbg !549
  store double %127, double* %25, align 8, !dbg !550
  %128 = load i32, i32* %13, align 4, !dbg !551
  %129 = add nsw i32 %128, 2, !dbg !552
  %130 = load double, double* %29, align 8, !dbg !553
  %131 = call double @gsl_sf_bessel_Jn(i32 %129, double %130), !dbg !554
  store double %131, double* %27, align 8, !dbg !555
  %132 = load i32, i32* %7, align 4, !dbg !556
  %133 = icmp eq i32 %132, 1, !dbg !558
  br i1 %133, label %134, label %142, !dbg !559

; <label>:134:                                    ; preds = %124
  %135 = load i32, i32* %13, align 4, !dbg !560
  %136 = load double, double* %30, align 8, !dbg !562
  %137 = call double @gsl_sf_bessel_Jn(i32 %135, double %136), !dbg !563
  store double %137, double* %26, align 8, !dbg !564
  %138 = load i32, i32* %13, align 4, !dbg !565
  %139 = add nsw i32 %138, 2, !dbg !566
  %140 = load double, double* %30, align 8, !dbg !567
  %141 = call double @gsl_sf_bessel_Jn(i32 %139, double %140), !dbg !568
  store double %141, double* %28, align 8, !dbg !569
  br label %150, !dbg !570

; <label>:142:                                    ; preds = %124
  %143 = load i32, i32* %13, align 4, !dbg !571
  %144 = load double, double* %30, align 8, !dbg !573
  %145 = call double @gsl_sf_bessel_Yn(i32 %143, double %144), !dbg !574
  store double %145, double* %26, align 8, !dbg !575
  %146 = load i32, i32* %13, align 4, !dbg !576
  %147 = add nsw i32 %146, 2, !dbg !577
  %148 = load double, double* %30, align 8, !dbg !578
  %149 = call double @gsl_sf_bessel_Yn(i32 %147, double %148), !dbg !579
  store double %149, double* %28, align 8, !dbg !580
  br label %150

; <label>:150:                                    ; preds = %142, %134
  %151 = load i32, i32* %8, align 4, !dbg !581
  %152 = sitofp i32 %151 to double, !dbg !581
  %153 = fmul double 5.000000e-01, %152, !dbg !582
  %154 = load i32, i32* %13, align 4, !dbg !583
  %155 = sitofp i32 %154 to double, !dbg !583
  %156 = fadd double %153, %155, !dbg !584
  %157 = fadd double %156, 1.000000e+00, !dbg !585
  %158 = call double @pow(double -1.000000e+00, double %157) #5, !dbg !586
  %159 = load i32, i32* %13, align 4, !dbg !587
  %160 = sext i32 %159 to i64, !dbg !588
  %161 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %160, !dbg !588
  %162 = load double, double* %161, align 8, !dbg !588
  %163 = fmul double %158, %162, !dbg !589
  store double %163, double* %22, align 8, !dbg !590
  %164 = load double, double* %22, align 8, !dbg !591
  %165 = load double, double* %25, align 8, !dbg !592
  %166 = load double, double* %28, align 8, !dbg !593
  %167 = fmul double %165, %166, !dbg !594
  %168 = load double, double* %27, align 8, !dbg !595
  %169 = load double, double* %26, align 8, !dbg !596
  %170 = fmul double %168, %169, !dbg !597
  %171 = fsub double %167, %170, !dbg !598
  %172 = fmul double %164, %171, !dbg !599
  %173 = load double, double* %19, align 8, !dbg !600
  %174 = fadd double %173, %172, !dbg !600
  store double %174, double* %19, align 8, !dbg !600
  br label %175, !dbg !601

; <label>:175:                                    ; preds = %150
  %176 = load i32, i32* %13, align 4, !dbg !602
  %177 = add nsw i32 %176, 1, !dbg !602
  store i32 %177, i32* %13, align 4, !dbg !602
  br label %93, !dbg !604, !llvm.loop !605

; <label>:178:                                    ; preds = %123, %93
  %179 = load double, double* %18, align 8, !dbg !607
  %180 = fdiv double %179, 2.000000e+00, !dbg !608
  %181 = call double @sqrt(double %180) #5, !dbg !609
  %182 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 0, !dbg !610
  %183 = load double, double* %182, align 16, !dbg !610
  %184 = fdiv double %181, %183, !dbg !611
  %185 = load double, double* %19, align 8, !dbg !612
  %186 = fmul double %185, %184, !dbg !612
  store double %186, double* %19, align 8, !dbg !612
  br label %282, !dbg !613

; <label>:187:                                    ; preds = %89
  store i32 0, i32* %13, align 4, !dbg !614
  br label %188, !dbg !617

; <label>:188:                                    ; preds = %270, %187
  %189 = load i32, i32* %13, align 4, !dbg !618
  %190 = icmp slt i32 %189, 100, !dbg !621
  br i1 %190, label %191, label %273, !dbg !622

; <label>:191:                                    ; preds = %188
  %192 = load double, double* %17, align 8, !dbg !623
  %193 = load i32, i32* %13, align 4, !dbg !623
  %194 = sext i32 %193 to i64, !dbg !623
  %195 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %194, !dbg !623
  %196 = load double, double* %195, align 8, !dbg !623
  %197 = call double @fabs(double %196) #1, !dbg !623
  %198 = fcmp ogt double %192, %197, !dbg !623
  br i1 %198, label %199, label %201, !dbg !623

; <label>:199:                                    ; preds = %191
  %200 = load double, double* %17, align 8, !dbg !625
  br label %207, !dbg !625

; <label>:201:                                    ; preds = %191
  %202 = load i32, i32* %13, align 4, !dbg !627
  %203 = sext i32 %202 to i64, !dbg !627
  %204 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %203, !dbg !627
  %205 = load double, double* %204, align 8, !dbg !627
  %206 = call double @fabs(double %205) #1, !dbg !627
  br label %207, !dbg !627

; <label>:207:                                    ; preds = %201, %199
  %208 = phi double [ %200, %199 ], [ %206, %201 ], !dbg !629
  store double %208, double* %17, align 8, !dbg !631
  %209 = load i32, i32* %13, align 4, !dbg !632
  %210 = sext i32 %209 to i64, !dbg !634
  %211 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %210, !dbg !634
  %212 = load double, double* %211, align 8, !dbg !634
  %213 = call double @fabs(double %212) #1, !dbg !635
  %214 = load double, double* %17, align 8, !dbg !636
  %215 = fdiv double %213, %214, !dbg !637
  %216 = load double, double* %16, align 8, !dbg !638
  %217 = fcmp olt double %215, %216, !dbg !639
  br i1 %217, label %218, label %219, !dbg !640

; <label>:218:                                    ; preds = %207
  br label %273, !dbg !641

; <label>:219:                                    ; preds = %207
  %220 = load i32, i32* %13, align 4, !dbg !642
  %221 = load double, double* %29, align 8, !dbg !643
  %222 = call double @gsl_sf_bessel_Jn(i32 %220, double %221), !dbg !644
  store double %222, double* %23, align 8, !dbg !645
  %223 = load i32, i32* %13, align 4, !dbg !646
  %224 = add nsw i32 %223, 1, !dbg !647
  %225 = load double, double* %29, align 8, !dbg !648
  %226 = call double @gsl_sf_bessel_Jn(i32 %224, double %225), !dbg !649
  store double %226, double* %27, align 8, !dbg !650
  %227 = load i32, i32* %7, align 4, !dbg !651
  %228 = icmp eq i32 %227, 1, !dbg !653
  br i1 %228, label %229, label %237, !dbg !654

; <label>:229:                                    ; preds = %219
  %230 = load i32, i32* %13, align 4, !dbg !655
  %231 = load double, double* %30, align 8, !dbg !657
  %232 = call double @gsl_sf_bessel_Jn(i32 %230, double %231), !dbg !658
  store double %232, double* %24, align 8, !dbg !659
  %233 = load i32, i32* %13, align 4, !dbg !660
  %234 = add nsw i32 %233, 1, !dbg !661
  %235 = load double, double* %30, align 8, !dbg !662
  %236 = call double @gsl_sf_bessel_Jn(i32 %234, double %235), !dbg !663
  store double %236, double* %28, align 8, !dbg !664
  br label %245, !dbg !665

; <label>:237:                                    ; preds = %219
  %238 = load i32, i32* %13, align 4, !dbg !666
  %239 = load double, double* %30, align 8, !dbg !668
  %240 = call double @gsl_sf_bessel_Yn(i32 %238, double %239), !dbg !669
  store double %240, double* %24, align 8, !dbg !670
  %241 = load i32, i32* %13, align 4, !dbg !671
  %242 = add nsw i32 %241, 1, !dbg !672
  %243 = load double, double* %30, align 8, !dbg !673
  %244 = call double @gsl_sf_bessel_Yn(i32 %242, double %243), !dbg !674
  store double %244, double* %28, align 8, !dbg !675
  br label %245

; <label>:245:                                    ; preds = %237, %229
  %246 = load i32, i32* %8, align 4, !dbg !676
  %247 = sub nsw i32 %246, 1, !dbg !677
  %248 = sitofp i32 %247 to double, !dbg !678
  %249 = fmul double 5.000000e-01, %248, !dbg !679
  %250 = load i32, i32* %13, align 4, !dbg !680
  %251 = sitofp i32 %250 to double, !dbg !680
  %252 = fadd double %249, %251, !dbg !681
  %253 = call double @pow(double -1.000000e+00, double %252) #5, !dbg !682
  %254 = load i32, i32* %13, align 4, !dbg !683
  %255 = sext i32 %254 to i64, !dbg !684
  %256 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %255, !dbg !684
  %257 = load double, double* %256, align 8, !dbg !684
  %258 = fmul double %253, %257, !dbg !685
  store double %258, double* %22, align 8, !dbg !686
  %259 = load double, double* %22, align 8, !dbg !687
  %260 = load double, double* %23, align 8, !dbg !688
  %261 = load double, double* %28, align 8, !dbg !689
  %262 = fmul double %260, %261, !dbg !690
  %263 = load double, double* %27, align 8, !dbg !691
  %264 = load double, double* %24, align 8, !dbg !692
  %265 = fmul double %263, %264, !dbg !693
  %266 = fsub double %262, %265, !dbg !694
  %267 = fmul double %259, %266, !dbg !695
  %268 = load double, double* %19, align 8, !dbg !696
  %269 = fadd double %268, %267, !dbg !696
  store double %269, double* %19, align 8, !dbg !696
  br label %270, !dbg !697

; <label>:270:                                    ; preds = %245
  %271 = load i32, i32* %13, align 4, !dbg !698
  %272 = add nsw i32 %271, 1, !dbg !698
  store i32 %272, i32* %13, align 4, !dbg !698
  br label %188, !dbg !700, !llvm.loop !701

; <label>:273:                                    ; preds = %218, %188
  %274 = load double, double* %18, align 8, !dbg !703
  %275 = fdiv double %274, 2.000000e+00, !dbg !704
  %276 = call double @sqrt(double %275) #5, !dbg !705
  %277 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 0, !dbg !706
  %278 = load double, double* %277, align 16, !dbg !706
  %279 = fdiv double %276, %278, !dbg !707
  %280 = load double, double* %19, align 8, !dbg !708
  %281 = fmul double %280, %279, !dbg !708
  store double %281, double* %19, align 8, !dbg !708
  br label %282

; <label>:282:                                    ; preds = %273, %178
  %283 = load double, double* %19, align 8, !dbg !709
  %284 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !710
  %285 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %284, i32 0, i32 0, !dbg !711
  store double %283, double* %285, align 8, !dbg !712
  %286 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !713
  %287 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %286, i32 0, i32 1, !dbg !714
  store double 0x3CC0000000000000, double* %287, align 8, !dbg !715
  %288 = load double, double* %19, align 8, !dbg !716
  %289 = call double @fabs(double %288) #1, !dbg !717
  store double %289, double* %20, align 8, !dbg !718
  %290 = load double, double* %20, align 8, !dbg !719
  %291 = fcmp ogt double %290, 1.000000e+00, !dbg !721
  br i1 %291, label %292, label %298, !dbg !722

; <label>:292:                                    ; preds = %282
  %293 = load double, double* %20, align 8, !dbg !723
  %294 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !724
  %295 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %294, i32 0, i32 1, !dbg !725
  %296 = load double, double* %295, align 8, !dbg !726
  %297 = fmul double %296, %293, !dbg !726
  store double %297, double* %295, align 8, !dbg !726
  br label %298, !dbg !724

; <label>:298:                                    ; preds = %292, %282
  store i32 0, i32* %6, align 4, !dbg !727
  br label %299, !dbg !727

; <label>:299:                                    ; preds = %298, %87, %76, %49, %44, %35
  %300 = load i32, i32* %6, align 4, !dbg !728
  ret i32 %300, !dbg !728
}

declare i32 @gsl_sf_mathieu_b_e(i32, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_mathieu_b_coeff(i32, double, double, double*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_Mc_array(i32, i32, i32, double, double, %struct.gsl_sf_mathieu_workspace*, double*) #0 !dbg !729 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca [100 x double], align 16
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double*, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !795, metadata !59), !dbg !796
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !797, metadata !59), !dbg !798
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !799, metadata !59), !dbg !800
  store double %3, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !801, metadata !59), !dbg !802
  store double %4, double* %13, align 8
  call void @llvm.dbg.declare(metadata double* %13, metadata !803, metadata !59), !dbg !804
  store %struct.gsl_sf_mathieu_workspace* %5, %struct.gsl_sf_mathieu_workspace** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_mathieu_workspace** %14, metadata !805, metadata !59), !dbg !806
  store double* %6, double** %15, align 8
  call void @llvm.dbg.declare(metadata double** %15, metadata !807, metadata !59), !dbg !808
  call void @llvm.dbg.declare(metadata i32* %16, metadata !809, metadata !59), !dbg !810
  call void @llvm.dbg.declare(metadata i32* %17, metadata !811, metadata !59), !dbg !812
  call void @llvm.dbg.declare(metadata i32* %18, metadata !813, metadata !59), !dbg !814
  call void @llvm.dbg.declare(metadata i32* %19, metadata !815, metadata !59), !dbg !816
  call void @llvm.dbg.declare(metadata i32* %20, metadata !817, metadata !59), !dbg !818
  call void @llvm.dbg.declare(metadata i32* %21, metadata !819, metadata !59), !dbg !820
  call void @llvm.dbg.declare(metadata double* %22, metadata !821, metadata !59), !dbg !822
  store double 1.000000e-14, double* %22, align 8, !dbg !822
  call void @llvm.dbg.declare(metadata double* %23, metadata !823, metadata !59), !dbg !824
  call void @llvm.dbg.declare(metadata double* %24, metadata !825, metadata !59), !dbg !826
  store double 0x400921FB54442D18, double* %24, align 8, !dbg !826
  call void @llvm.dbg.declare(metadata double* %25, metadata !827, metadata !59), !dbg !828
  call void @llvm.dbg.declare(metadata [100 x double]* %26, metadata !829, metadata !59), !dbg !830
  call void @llvm.dbg.declare(metadata double* %27, metadata !831, metadata !59), !dbg !832
  call void @llvm.dbg.declare(metadata double* %28, metadata !833, metadata !59), !dbg !834
  call void @llvm.dbg.declare(metadata double* %29, metadata !835, metadata !59), !dbg !836
  call void @llvm.dbg.declare(metadata double* %30, metadata !837, metadata !59), !dbg !838
  call void @llvm.dbg.declare(metadata double* %31, metadata !839, metadata !59), !dbg !840
  call void @llvm.dbg.declare(metadata double* %32, metadata !841, metadata !59), !dbg !842
  call void @llvm.dbg.declare(metadata double* %33, metadata !843, metadata !59), !dbg !844
  call void @llvm.dbg.declare(metadata double** %34, metadata !845, metadata !59), !dbg !846
  %35 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %14, align 8, !dbg !847
  %36 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %35, i32 0, i32 6, !dbg !848
  %37 = load double*, double** %36, align 8, !dbg !848
  store double* %37, double** %34, align 8, !dbg !846
  store i32 0, i32* %18, align 4, !dbg !849
  br label %38, !dbg !851

; <label>:38:                                     ; preds = %50, %7
  %39 = load i32, i32* %18, align 4, !dbg !852
  %40 = load i32, i32* %11, align 4, !dbg !855
  %41 = load i32, i32* %10, align 4, !dbg !856
  %42 = sub nsw i32 %40, %41, !dbg !857
  %43 = add nsw i32 %42, 1, !dbg !858
  %44 = icmp slt i32 %39, %43, !dbg !859
  br i1 %44, label %45, label %53, !dbg !860

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %18, align 4, !dbg !861
  %47 = sext i32 %46 to i64, !dbg !862
  %48 = load double*, double** %15, align 8, !dbg !862
  %49 = getelementptr inbounds double, double* %48, i64 %47, !dbg !862
  store double 0.000000e+00, double* %49, align 8, !dbg !863
  br label %50, !dbg !862

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %18, align 4, !dbg !864
  %52 = add nsw i32 %51, 1, !dbg !864
  store i32 %52, i32* %18, align 4, !dbg !864
  br label %38, !dbg !866, !llvm.loop !867

; <label>:53:                                     ; preds = %38
  %54 = load double, double* %12, align 8, !dbg !869
  %55 = fcmp ole double %54, 0.000000e+00, !dbg !871
  br i1 %55, label %56, label %59, !dbg !872

; <label>:56:                                     ; preds = %53
  br label %57, !dbg !873, !llvm.loop !875

; <label>:57:                                     ; preds = %56
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 273, i32 4), !dbg !876
  store i32 4, i32* %8, align 4, !dbg !876
  br label %297, !dbg !876
                                                  ; No predecessors!
  br label %59, !dbg !879

; <label>:59:                                     ; preds = %58, %53
  %60 = load i32, i32* %9, align 4, !dbg !880
  %61 = icmp slt i32 %60, 1, !dbg !882
  br i1 %61, label %65, label %62, !dbg !883

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %9, align 4, !dbg !884
  %64 = icmp sgt i32 %63, 2, !dbg !886
  br i1 %64, label %65, label %68, !dbg !887

; <label>:65:                                     ; preds = %62, %59
  br label %66, !dbg !888, !llvm.loop !890

; <label>:66:                                     ; preds = %65
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 277, i32 4), !dbg !891
  store i32 4, i32* %8, align 4, !dbg !891
  br label %297, !dbg !891
                                                  ; No predecessors!
  br label %68, !dbg !894

; <label>:68:                                     ; preds = %67, %62
  store i32 0, i32* %20, align 4, !dbg !895
  store double 0.000000e+00, double* %23, align 8, !dbg !896
  %69 = load double, double* %12, align 8, !dbg !897
  %70 = call double @sqrt(double %69) #5, !dbg !898
  %71 = load double, double* %13, align 8, !dbg !899
  %72 = fmul double -1.000000e+00, %71, !dbg !900
  %73 = call double @exp(double %72) #5, !dbg !901
  %74 = fmul double %70, %73, !dbg !903
  store double %74, double* %32, align 8, !dbg !904
  %75 = load double, double* %12, align 8, !dbg !905
  %76 = call double @sqrt(double %75) #5, !dbg !906
  %77 = load double, double* %13, align 8, !dbg !907
  %78 = call double @exp(double %77) #5, !dbg !908
  %79 = fmul double %76, %78, !dbg !909
  store double %79, double* %33, align 8, !dbg !910
  %80 = load i32, i32* %11, align 4, !dbg !911
  %81 = load double, double* %12, align 8, !dbg !912
  %82 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %14, align 8, !dbg !913
  %83 = load double*, double** %34, align 8, !dbg !914
  %84 = call i32 @gsl_sf_mathieu_a_array(i32 0, i32 %80, double %81, %struct.gsl_sf_mathieu_workspace* %82, double* %83), !dbg !915
  store i32 0, i32* %18, align 4, !dbg !916
  %85 = load i32, i32* %10, align 4, !dbg !918
  store i32 %85, i32* %17, align 4, !dbg !919
  br label %86, !dbg !920

; <label>:86:                                     ; preds = %291, %68
  %87 = load i32, i32* %17, align 4, !dbg !921
  %88 = load i32, i32* %11, align 4, !dbg !924
  %89 = icmp sle i32 %87, %88, !dbg !925
  br i1 %89, label %90, label %296, !dbg !926

; <label>:90:                                     ; preds = %86
  store double 0.000000e+00, double* %25, align 8, !dbg !927
  store i32 0, i32* %16, align 4, !dbg !929
  %91 = load i32, i32* %17, align 4, !dbg !930
  %92 = srem i32 %91, 2, !dbg !932
  %93 = icmp ne i32 %92, 0, !dbg !933
  br i1 %93, label %94, label %95, !dbg !934

; <label>:94:                                     ; preds = %90
  store i32 1, i32* %16, align 4, !dbg !935
  br label %95, !dbg !936

; <label>:95:                                     ; preds = %94, %90
  %96 = load i32, i32* %17, align 4, !dbg !937
  %97 = load double, double* %12, align 8, !dbg !938
  %98 = load i32, i32* %17, align 4, !dbg !939
  %99 = sext i32 %98 to i64, !dbg !940
  %100 = load double*, double** %34, align 8, !dbg !940
  %101 = getelementptr inbounds double, double* %100, i64 %99, !dbg !940
  %102 = load double, double* %101, align 8, !dbg !940
  %103 = getelementptr inbounds [100 x double], [100 x double]* %26, i32 0, i32 0, !dbg !941
  %104 = call i32 @gsl_sf_mathieu_a_coeff(i32 %96, double %97, double %102, double* %103), !dbg !942
  store i32 %104, i32* %21, align 4, !dbg !943
  %105 = load i32, i32* %21, align 4, !dbg !944
  %106 = icmp ne i32 %105, 0, !dbg !946
  br i1 %106, label %107, label %109, !dbg !947

; <label>:107:                                    ; preds = %95
  %108 = load i32, i32* %21, align 4, !dbg !948
  store i32 %108, i32* %8, align 4, !dbg !950
  br label %297, !dbg !950

; <label>:109:                                    ; preds = %95
  %110 = load i32, i32* %16, align 4, !dbg !951
  %111 = icmp eq i32 %110, 0, !dbg !953
  br i1 %111, label %112, label %190, !dbg !954

; <label>:112:                                    ; preds = %109
  store i32 0, i32* %19, align 4, !dbg !955
  br label %113, !dbg !958

; <label>:113:                                    ; preds = %178, %112
  %114 = load i32, i32* %19, align 4, !dbg !959
  %115 = icmp slt i32 %114, 100, !dbg !962
  br i1 %115, label %116, label %181, !dbg !963

; <label>:116:                                    ; preds = %113
  %117 = load double, double* %23, align 8, !dbg !964
  %118 = load i32, i32* %19, align 4, !dbg !964
  %119 = sext i32 %118 to i64, !dbg !964
  %120 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %119, !dbg !964
  %121 = load double, double* %120, align 8, !dbg !964
  %122 = call double @fabs(double %121) #1, !dbg !964
  %123 = fcmp ogt double %117, %122, !dbg !964
  br i1 %123, label %124, label %126, !dbg !964

; <label>:124:                                    ; preds = %116
  %125 = load double, double* %23, align 8, !dbg !966
  br label %132, !dbg !966

; <label>:126:                                    ; preds = %116
  %127 = load i32, i32* %19, align 4, !dbg !968
  %128 = sext i32 %127 to i64, !dbg !968
  %129 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %128, !dbg !968
  %130 = load double, double* %129, align 8, !dbg !968
  %131 = call double @fabs(double %130) #1, !dbg !968
  br label %132, !dbg !968

; <label>:132:                                    ; preds = %126, %124
  %133 = phi double [ %125, %124 ], [ %131, %126 ], !dbg !970
  store double %133, double* %23, align 8, !dbg !972
  %134 = load i32, i32* %19, align 4, !dbg !973
  %135 = sext i32 %134 to i64, !dbg !975
  %136 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %135, !dbg !975
  %137 = load double, double* %136, align 8, !dbg !975
  %138 = call double @fabs(double %137) #1, !dbg !976
  %139 = load double, double* %23, align 8, !dbg !977
  %140 = fdiv double %138, %139, !dbg !978
  %141 = load double, double* %22, align 8, !dbg !979
  %142 = fcmp olt double %140, %141, !dbg !980
  br i1 %142, label %143, label %144, !dbg !981

; <label>:143:                                    ; preds = %132
  br label %181, !dbg !982

; <label>:144:                                    ; preds = %132
  %145 = load i32, i32* %19, align 4, !dbg !983
  %146 = load double, double* %32, align 8, !dbg !984
  %147 = call double @gsl_sf_bessel_Jn(i32 %145, double %146), !dbg !985
  store double %147, double* %28, align 8, !dbg !986
  %148 = load i32, i32* %9, align 4, !dbg !987
  %149 = icmp eq i32 %148, 1, !dbg !989
  br i1 %149, label %150, label %154, !dbg !990

; <label>:150:                                    ; preds = %144
  %151 = load i32, i32* %19, align 4, !dbg !991
  %152 = load double, double* %33, align 8, !dbg !993
  %153 = call double @gsl_sf_bessel_Jn(i32 %151, double %152), !dbg !994
  store double %153, double* %29, align 8, !dbg !995
  br label %158, !dbg !996

; <label>:154:                                    ; preds = %144
  %155 = load i32, i32* %19, align 4, !dbg !997
  %156 = load double, double* %33, align 8, !dbg !999
  %157 = call double @gsl_sf_bessel_Yn(i32 %155, double %156), !dbg !1000
  store double %157, double* %29, align 8, !dbg !1001
  br label %158

; <label>:158:                                    ; preds = %154, %150
  %159 = load i32, i32* %17, align 4, !dbg !1002
  %160 = sitofp i32 %159 to double, !dbg !1002
  %161 = fmul double 5.000000e-01, %160, !dbg !1003
  %162 = load i32, i32* %19, align 4, !dbg !1004
  %163 = sitofp i32 %162 to double, !dbg !1004
  %164 = fadd double %161, %163, !dbg !1005
  %165 = call double @pow(double -1.000000e+00, double %164) #5, !dbg !1006
  %166 = load i32, i32* %19, align 4, !dbg !1007
  %167 = sext i32 %166 to i64, !dbg !1008
  %168 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %167, !dbg !1008
  %169 = load double, double* %168, align 8, !dbg !1008
  %170 = fmul double %165, %169, !dbg !1009
  store double %170, double* %27, align 8, !dbg !1010
  %171 = load double, double* %27, align 8, !dbg !1011
  %172 = load double, double* %28, align 8, !dbg !1012
  %173 = fmul double %171, %172, !dbg !1013
  %174 = load double, double* %29, align 8, !dbg !1014
  %175 = fmul double %173, %174, !dbg !1015
  %176 = load double, double* %25, align 8, !dbg !1016
  %177 = fadd double %176, %175, !dbg !1016
  store double %177, double* %25, align 8, !dbg !1016
  br label %178, !dbg !1017

; <label>:178:                                    ; preds = %158
  %179 = load i32, i32* %19, align 4, !dbg !1018
  %180 = add nsw i32 %179, 1, !dbg !1018
  store i32 %180, i32* %19, align 4, !dbg !1018
  br label %113, !dbg !1020, !llvm.loop !1021

; <label>:181:                                    ; preds = %143, %113
  %182 = load double, double* %24, align 8, !dbg !1023
  %183 = fdiv double %182, 2.000000e+00, !dbg !1024
  %184 = call double @sqrt(double %183) #5, !dbg !1025
  %185 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 0, !dbg !1026
  %186 = load double, double* %185, align 16, !dbg !1026
  %187 = fdiv double %184, %186, !dbg !1027
  %188 = load double, double* %25, align 8, !dbg !1028
  %189 = fmul double %188, %187, !dbg !1028
  store double %189, double* %25, align 8, !dbg !1028
  br label %285, !dbg !1029

; <label>:190:                                    ; preds = %109
  store i32 0, i32* %19, align 4, !dbg !1030
  br label %191, !dbg !1033

; <label>:191:                                    ; preds = %273, %190
  %192 = load i32, i32* %19, align 4, !dbg !1034
  %193 = icmp slt i32 %192, 100, !dbg !1037
  br i1 %193, label %194, label %276, !dbg !1038

; <label>:194:                                    ; preds = %191
  %195 = load double, double* %23, align 8, !dbg !1039
  %196 = load i32, i32* %19, align 4, !dbg !1039
  %197 = sext i32 %196 to i64, !dbg !1039
  %198 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %197, !dbg !1039
  %199 = load double, double* %198, align 8, !dbg !1039
  %200 = call double @fabs(double %199) #1, !dbg !1039
  %201 = fcmp ogt double %195, %200, !dbg !1039
  br i1 %201, label %202, label %204, !dbg !1039

; <label>:202:                                    ; preds = %194
  %203 = load double, double* %23, align 8, !dbg !1041
  br label %210, !dbg !1041

; <label>:204:                                    ; preds = %194
  %205 = load i32, i32* %19, align 4, !dbg !1043
  %206 = sext i32 %205 to i64, !dbg !1043
  %207 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %206, !dbg !1043
  %208 = load double, double* %207, align 8, !dbg !1043
  %209 = call double @fabs(double %208) #1, !dbg !1043
  br label %210, !dbg !1043

; <label>:210:                                    ; preds = %204, %202
  %211 = phi double [ %203, %202 ], [ %209, %204 ], !dbg !1045
  store double %211, double* %23, align 8, !dbg !1047
  %212 = load i32, i32* %19, align 4, !dbg !1048
  %213 = sext i32 %212 to i64, !dbg !1050
  %214 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %213, !dbg !1050
  %215 = load double, double* %214, align 8, !dbg !1050
  %216 = call double @fabs(double %215) #1, !dbg !1051
  %217 = load double, double* %23, align 8, !dbg !1052
  %218 = fdiv double %216, %217, !dbg !1053
  %219 = load double, double* %22, align 8, !dbg !1054
  %220 = fcmp olt double %218, %219, !dbg !1055
  br i1 %220, label %221, label %222, !dbg !1056

; <label>:221:                                    ; preds = %210
  br label %276, !dbg !1057

; <label>:222:                                    ; preds = %210
  %223 = load i32, i32* %19, align 4, !dbg !1058
  %224 = load double, double* %32, align 8, !dbg !1059
  %225 = call double @gsl_sf_bessel_Jn(i32 %223, double %224), !dbg !1060
  store double %225, double* %28, align 8, !dbg !1061
  %226 = load i32, i32* %19, align 4, !dbg !1062
  %227 = add nsw i32 %226, 1, !dbg !1063
  %228 = load double, double* %32, align 8, !dbg !1064
  %229 = call double @gsl_sf_bessel_Jn(i32 %227, double %228), !dbg !1065
  store double %229, double* %30, align 8, !dbg !1066
  %230 = load i32, i32* %9, align 4, !dbg !1067
  %231 = icmp eq i32 %230, 1, !dbg !1069
  br i1 %231, label %232, label %240, !dbg !1070

; <label>:232:                                    ; preds = %222
  %233 = load i32, i32* %19, align 4, !dbg !1071
  %234 = load double, double* %33, align 8, !dbg !1073
  %235 = call double @gsl_sf_bessel_Jn(i32 %233, double %234), !dbg !1074
  store double %235, double* %29, align 8, !dbg !1075
  %236 = load i32, i32* %19, align 4, !dbg !1076
  %237 = add nsw i32 %236, 1, !dbg !1077
  %238 = load double, double* %33, align 8, !dbg !1078
  %239 = call double @gsl_sf_bessel_Jn(i32 %237, double %238), !dbg !1079
  store double %239, double* %31, align 8, !dbg !1080
  br label %248, !dbg !1081

; <label>:240:                                    ; preds = %222
  %241 = load i32, i32* %19, align 4, !dbg !1082
  %242 = load double, double* %33, align 8, !dbg !1084
  %243 = call double @gsl_sf_bessel_Yn(i32 %241, double %242), !dbg !1085
  store double %243, double* %29, align 8, !dbg !1086
  %244 = load i32, i32* %19, align 4, !dbg !1087
  %245 = add nsw i32 %244, 1, !dbg !1088
  %246 = load double, double* %33, align 8, !dbg !1089
  %247 = call double @gsl_sf_bessel_Yn(i32 %245, double %246), !dbg !1090
  store double %247, double* %31, align 8, !dbg !1091
  br label %248

; <label>:248:                                    ; preds = %240, %232
  %249 = load i32, i32* %17, align 4, !dbg !1092
  %250 = sub nsw i32 %249, 1, !dbg !1093
  %251 = sitofp i32 %250 to double, !dbg !1094
  %252 = fmul double 5.000000e-01, %251, !dbg !1095
  %253 = load i32, i32* %19, align 4, !dbg !1096
  %254 = sitofp i32 %253 to double, !dbg !1096
  %255 = fadd double %252, %254, !dbg !1097
  %256 = call double @pow(double -1.000000e+00, double %255) #5, !dbg !1098
  %257 = load i32, i32* %19, align 4, !dbg !1099
  %258 = sext i32 %257 to i64, !dbg !1100
  %259 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %258, !dbg !1100
  %260 = load double, double* %259, align 8, !dbg !1100
  %261 = fmul double %256, %260, !dbg !1101
  store double %261, double* %27, align 8, !dbg !1102
  %262 = load double, double* %27, align 8, !dbg !1103
  %263 = load double, double* %28, align 8, !dbg !1104
  %264 = load double, double* %31, align 8, !dbg !1105
  %265 = fmul double %263, %264, !dbg !1106
  %266 = load double, double* %30, align 8, !dbg !1107
  %267 = load double, double* %29, align 8, !dbg !1108
  %268 = fmul double %266, %267, !dbg !1109
  %269 = fadd double %265, %268, !dbg !1110
  %270 = fmul double %262, %269, !dbg !1111
  %271 = load double, double* %25, align 8, !dbg !1112
  %272 = fadd double %271, %270, !dbg !1112
  store double %272, double* %25, align 8, !dbg !1112
  br label %273, !dbg !1113

; <label>:273:                                    ; preds = %248
  %274 = load i32, i32* %19, align 4, !dbg !1114
  %275 = add nsw i32 %274, 1, !dbg !1114
  store i32 %275, i32* %19, align 4, !dbg !1114
  br label %191, !dbg !1116, !llvm.loop !1117

; <label>:276:                                    ; preds = %221, %191
  %277 = load double, double* %24, align 8, !dbg !1119
  %278 = fdiv double %277, 2.000000e+00, !dbg !1120
  %279 = call double @sqrt(double %278) #5, !dbg !1121
  %280 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 0, !dbg !1122
  %281 = load double, double* %280, align 16, !dbg !1122
  %282 = fdiv double %279, %281, !dbg !1123
  %283 = load double, double* %25, align 8, !dbg !1124
  %284 = fmul double %283, %282, !dbg !1124
  store double %284, double* %25, align 8, !dbg !1124
  br label %285

; <label>:285:                                    ; preds = %276, %181
  %286 = load double, double* %25, align 8, !dbg !1125
  %287 = load i32, i32* %18, align 4, !dbg !1126
  %288 = sext i32 %287 to i64, !dbg !1127
  %289 = load double*, double** %15, align 8, !dbg !1127
  %290 = getelementptr inbounds double, double* %289, i64 %288, !dbg !1127
  store double %286, double* %290, align 8, !dbg !1128
  br label %291, !dbg !1129

; <label>:291:                                    ; preds = %285
  %292 = load i32, i32* %18, align 4, !dbg !1130
  %293 = add nsw i32 %292, 1, !dbg !1130
  store i32 %293, i32* %18, align 4, !dbg !1130
  %294 = load i32, i32* %17, align 4, !dbg !1132
  %295 = add nsw i32 %294, 1, !dbg !1132
  store i32 %295, i32* %17, align 4, !dbg !1132
  br label %86, !dbg !1133, !llvm.loop !1134

; <label>:296:                                    ; preds = %86
  store i32 0, i32* %8, align 4, !dbg !1136
  br label %297, !dbg !1136

; <label>:297:                                    ; preds = %296, %107, %66, %57
  %298 = load i32, i32* %8, align 4, !dbg !1137
  ret i32 %298, !dbg !1137
}

declare i32 @gsl_sf_mathieu_a_array(i32, i32, double, %struct.gsl_sf_mathieu_workspace*, double*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_Ms_array(i32, i32, i32, double, double, %struct.gsl_sf_mathieu_workspace*, double*) #0 !dbg !1138 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca [100 x double], align 16
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double*, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1139, metadata !59), !dbg !1140
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1141, metadata !59), !dbg !1142
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1143, metadata !59), !dbg !1144
  store double %3, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !1145, metadata !59), !dbg !1146
  store double %4, double* %13, align 8
  call void @llvm.dbg.declare(metadata double* %13, metadata !1147, metadata !59), !dbg !1148
  store %struct.gsl_sf_mathieu_workspace* %5, %struct.gsl_sf_mathieu_workspace** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_mathieu_workspace** %14, metadata !1149, metadata !59), !dbg !1150
  store double* %6, double** %15, align 8
  call void @llvm.dbg.declare(metadata double** %15, metadata !1151, metadata !59), !dbg !1152
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1153, metadata !59), !dbg !1154
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1155, metadata !59), !dbg !1156
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1157, metadata !59), !dbg !1158
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1159, metadata !59), !dbg !1160
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1161, metadata !59), !dbg !1162
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1163, metadata !59), !dbg !1164
  call void @llvm.dbg.declare(metadata double* %22, metadata !1165, metadata !59), !dbg !1166
  store double 1.000000e-14, double* %22, align 8, !dbg !1166
  call void @llvm.dbg.declare(metadata double* %23, metadata !1167, metadata !59), !dbg !1168
  call void @llvm.dbg.declare(metadata double* %24, metadata !1169, metadata !59), !dbg !1170
  store double 0x400921FB54442D18, double* %24, align 8, !dbg !1170
  call void @llvm.dbg.declare(metadata double* %25, metadata !1171, metadata !59), !dbg !1172
  call void @llvm.dbg.declare(metadata [100 x double]* %26, metadata !1173, metadata !59), !dbg !1174
  call void @llvm.dbg.declare(metadata double* %27, metadata !1175, metadata !59), !dbg !1176
  call void @llvm.dbg.declare(metadata double* %28, metadata !1177, metadata !59), !dbg !1178
  call void @llvm.dbg.declare(metadata double* %29, metadata !1179, metadata !59), !dbg !1180
  call void @llvm.dbg.declare(metadata double* %30, metadata !1181, metadata !59), !dbg !1182
  call void @llvm.dbg.declare(metadata double* %31, metadata !1183, metadata !59), !dbg !1184
  call void @llvm.dbg.declare(metadata double* %32, metadata !1185, metadata !59), !dbg !1186
  call void @llvm.dbg.declare(metadata double* %33, metadata !1187, metadata !59), !dbg !1188
  call void @llvm.dbg.declare(metadata double* %34, metadata !1189, metadata !59), !dbg !1190
  call void @llvm.dbg.declare(metadata double* %35, metadata !1191, metadata !59), !dbg !1192
  call void @llvm.dbg.declare(metadata double** %36, metadata !1193, metadata !59), !dbg !1194
  %37 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %14, align 8, !dbg !1195
  %38 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %37, i32 0, i32 7, !dbg !1196
  %39 = load double*, double** %38, align 8, !dbg !1196
  store double* %39, double** %36, align 8, !dbg !1194
  store i32 0, i32* %18, align 4, !dbg !1197
  br label %40, !dbg !1199

; <label>:40:                                     ; preds = %52, %7
  %41 = load i32, i32* %18, align 4, !dbg !1200
  %42 = load i32, i32* %11, align 4, !dbg !1203
  %43 = load i32, i32* %10, align 4, !dbg !1204
  %44 = sub nsw i32 %42, %43, !dbg !1205
  %45 = add nsw i32 %44, 1, !dbg !1206
  %46 = icmp slt i32 %41, %45, !dbg !1207
  br i1 %46, label %47, label %55, !dbg !1208

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %18, align 4, !dbg !1209
  %49 = sext i32 %48 to i64, !dbg !1210
  %50 = load double*, double** %15, align 8, !dbg !1210
  %51 = getelementptr inbounds double, double* %50, i64 %49, !dbg !1210
  store double 0.000000e+00, double* %51, align 8, !dbg !1211
  br label %52, !dbg !1210

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %18, align 4, !dbg !1212
  %54 = add nsw i32 %53, 1, !dbg !1212
  store i32 %54, i32* %18, align 4, !dbg !1212
  br label %40, !dbg !1214, !llvm.loop !1215

; <label>:55:                                     ; preds = %40
  %56 = load double, double* %12, align 8, !dbg !1217
  %57 = fcmp ole double %56, 0.000000e+00, !dbg !1219
  br i1 %57, label %58, label %61, !dbg !1220

; <label>:58:                                     ; preds = %55
  br label %59, !dbg !1221, !llvm.loop !1223

; <label>:59:                                     ; preds = %58
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 379, i32 4), !dbg !1224
  store i32 4, i32* %8, align 4, !dbg !1224
  br label %324, !dbg !1224
                                                  ; No predecessors!
  br label %61, !dbg !1227

; <label>:61:                                     ; preds = %60, %55
  %62 = load i32, i32* %9, align 4, !dbg !1228
  %63 = icmp slt i32 %62, 1, !dbg !1230
  br i1 %63, label %67, label %64, !dbg !1231

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %9, align 4, !dbg !1232
  %66 = icmp sgt i32 %65, 2, !dbg !1234
  br i1 %66, label %67, label %70, !dbg !1235

; <label>:67:                                     ; preds = %64, %61
  br label %68, !dbg !1236, !llvm.loop !1238

; <label>:68:                                     ; preds = %67
  call void @gsl_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 383, i32 4), !dbg !1239
  store i32 4, i32* %8, align 4, !dbg !1239
  br label %324, !dbg !1239
                                                  ; No predecessors!
  br label %70, !dbg !1242

; <label>:70:                                     ; preds = %69, %64
  store i32 0, i32* %20, align 4, !dbg !1243
  store double 0.000000e+00, double* %23, align 8, !dbg !1244
  %71 = load double, double* %12, align 8, !dbg !1245
  %72 = call double @sqrt(double %71) #5, !dbg !1246
  %73 = load double, double* %13, align 8, !dbg !1247
  %74 = fmul double -1.000000e+00, %73, !dbg !1248
  %75 = call double @exp(double %74) #5, !dbg !1249
  %76 = fmul double %72, %75, !dbg !1251
  store double %76, double* %34, align 8, !dbg !1252
  %77 = load double, double* %12, align 8, !dbg !1253
  %78 = call double @sqrt(double %77) #5, !dbg !1254
  %79 = load double, double* %13, align 8, !dbg !1255
  %80 = call double @exp(double %79) #5, !dbg !1256
  %81 = fmul double %78, %80, !dbg !1257
  store double %81, double* %35, align 8, !dbg !1258
  %82 = load i32, i32* %11, align 4, !dbg !1259
  %83 = load double, double* %12, align 8, !dbg !1260
  %84 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %14, align 8, !dbg !1261
  %85 = load double*, double** %36, align 8, !dbg !1262
  %86 = call i32 @gsl_sf_mathieu_b_array(i32 0, i32 %82, double %83, %struct.gsl_sf_mathieu_workspace* %84, double* %85), !dbg !1263
  store i32 0, i32* %18, align 4, !dbg !1264
  %87 = load i32, i32* %10, align 4, !dbg !1266
  store i32 %87, i32* %17, align 4, !dbg !1267
  br label %88, !dbg !1268

; <label>:88:                                     ; preds = %318, %70
  %89 = load i32, i32* %17, align 4, !dbg !1269
  %90 = load i32, i32* %11, align 4, !dbg !1272
  %91 = icmp sle i32 %89, %90, !dbg !1273
  br i1 %91, label %92, label %323, !dbg !1274

; <label>:92:                                     ; preds = %88
  store double 0.000000e+00, double* %25, align 8, !dbg !1275
  store i32 0, i32* %16, align 4, !dbg !1277
  %93 = load i32, i32* %17, align 4, !dbg !1278
  %94 = srem i32 %93, 2, !dbg !1280
  %95 = icmp ne i32 %94, 0, !dbg !1281
  br i1 %95, label %96, label %97, !dbg !1282

; <label>:96:                                     ; preds = %92
  store i32 1, i32* %16, align 4, !dbg !1283
  br label %97, !dbg !1284

; <label>:97:                                     ; preds = %96, %92
  %98 = load i32, i32* %17, align 4, !dbg !1285
  %99 = icmp eq i32 %98, 0, !dbg !1287
  br i1 %99, label %100, label %105, !dbg !1288

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %18, align 4, !dbg !1289
  %102 = sext i32 %101 to i64, !dbg !1291
  %103 = load double*, double** %15, align 8, !dbg !1291
  %104 = getelementptr inbounds double, double* %103, i64 %102, !dbg !1291
  store double 0.000000e+00, double* %104, align 8, !dbg !1292
  br label %318, !dbg !1293

; <label>:105:                                    ; preds = %97
  %106 = load i32, i32* %17, align 4, !dbg !1294
  %107 = load double, double* %12, align 8, !dbg !1295
  %108 = load i32, i32* %17, align 4, !dbg !1296
  %109 = sext i32 %108 to i64, !dbg !1297
  %110 = load double*, double** %36, align 8, !dbg !1297
  %111 = getelementptr inbounds double, double* %110, i64 %109, !dbg !1297
  %112 = load double, double* %111, align 8, !dbg !1297
  %113 = getelementptr inbounds [100 x double], [100 x double]* %26, i32 0, i32 0, !dbg !1298
  %114 = call i32 @gsl_sf_mathieu_b_coeff(i32 %106, double %107, double %112, double* %113), !dbg !1299
  store i32 %114, i32* %21, align 4, !dbg !1300
  %115 = load i32, i32* %21, align 4, !dbg !1301
  %116 = icmp ne i32 %115, 0, !dbg !1303
  br i1 %116, label %117, label %119, !dbg !1304

; <label>:117:                                    ; preds = %105
  %118 = load i32, i32* %21, align 4, !dbg !1305
  store i32 %118, i32* %8, align 4, !dbg !1307
  br label %324, !dbg !1307

; <label>:119:                                    ; preds = %105
  %120 = load i32, i32* %16, align 4, !dbg !1308
  %121 = icmp eq i32 %120, 0, !dbg !1310
  br i1 %121, label %122, label %217, !dbg !1311

; <label>:122:                                    ; preds = %119
  store i32 0, i32* %19, align 4, !dbg !1312
  br label %123, !dbg !1315

; <label>:123:                                    ; preds = %205, %122
  %124 = load i32, i32* %19, align 4, !dbg !1316
  %125 = icmp slt i32 %124, 100, !dbg !1319
  br i1 %125, label %126, label %208, !dbg !1320

; <label>:126:                                    ; preds = %123
  %127 = load double, double* %23, align 8, !dbg !1321
  %128 = load i32, i32* %19, align 4, !dbg !1321
  %129 = sext i32 %128 to i64, !dbg !1321
  %130 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %129, !dbg !1321
  %131 = load double, double* %130, align 8, !dbg !1321
  %132 = call double @fabs(double %131) #1, !dbg !1321
  %133 = fcmp ogt double %127, %132, !dbg !1321
  br i1 %133, label %134, label %136, !dbg !1321

; <label>:134:                                    ; preds = %126
  %135 = load double, double* %23, align 8, !dbg !1323
  br label %142, !dbg !1323

; <label>:136:                                    ; preds = %126
  %137 = load i32, i32* %19, align 4, !dbg !1325
  %138 = sext i32 %137 to i64, !dbg !1325
  %139 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %138, !dbg !1325
  %140 = load double, double* %139, align 8, !dbg !1325
  %141 = call double @fabs(double %140) #1, !dbg !1325
  br label %142, !dbg !1325

; <label>:142:                                    ; preds = %136, %134
  %143 = phi double [ %135, %134 ], [ %141, %136 ], !dbg !1327
  store double %143, double* %23, align 8, !dbg !1329
  %144 = load i32, i32* %19, align 4, !dbg !1330
  %145 = sext i32 %144 to i64, !dbg !1332
  %146 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %145, !dbg !1332
  %147 = load double, double* %146, align 8, !dbg !1332
  %148 = call double @fabs(double %147) #1, !dbg !1333
  %149 = load double, double* %23, align 8, !dbg !1334
  %150 = fdiv double %148, %149, !dbg !1335
  %151 = load double, double* %22, align 8, !dbg !1336
  %152 = fcmp olt double %150, %151, !dbg !1337
  br i1 %152, label %153, label %154, !dbg !1338

; <label>:153:                                    ; preds = %142
  br label %208, !dbg !1339

; <label>:154:                                    ; preds = %142
  %155 = load i32, i32* %19, align 4, !dbg !1340
  %156 = load double, double* %34, align 8, !dbg !1341
  %157 = call double @gsl_sf_bessel_Jn(i32 %155, double %156), !dbg !1342
  store double %157, double* %30, align 8, !dbg !1343
  %158 = load i32, i32* %19, align 4, !dbg !1344
  %159 = add nsw i32 %158, 2, !dbg !1345
  %160 = load double, double* %34, align 8, !dbg !1346
  %161 = call double @gsl_sf_bessel_Jn(i32 %159, double %160), !dbg !1347
  store double %161, double* %32, align 8, !dbg !1348
  %162 = load i32, i32* %9, align 4, !dbg !1349
  %163 = icmp eq i32 %162, 1, !dbg !1351
  br i1 %163, label %164, label %172, !dbg !1352

; <label>:164:                                    ; preds = %154
  %165 = load i32, i32* %19, align 4, !dbg !1353
  %166 = load double, double* %35, align 8, !dbg !1355
  %167 = call double @gsl_sf_bessel_Jn(i32 %165, double %166), !dbg !1356
  store double %167, double* %31, align 8, !dbg !1357
  %168 = load i32, i32* %19, align 4, !dbg !1358
  %169 = add nsw i32 %168, 2, !dbg !1359
  %170 = load double, double* %35, align 8, !dbg !1360
  %171 = call double @gsl_sf_bessel_Jn(i32 %169, double %170), !dbg !1361
  store double %171, double* %33, align 8, !dbg !1362
  br label %180, !dbg !1363

; <label>:172:                                    ; preds = %154
  %173 = load i32, i32* %19, align 4, !dbg !1364
  %174 = load double, double* %35, align 8, !dbg !1366
  %175 = call double @gsl_sf_bessel_Yn(i32 %173, double %174), !dbg !1367
  store double %175, double* %31, align 8, !dbg !1368
  %176 = load i32, i32* %19, align 4, !dbg !1369
  %177 = add nsw i32 %176, 2, !dbg !1370
  %178 = load double, double* %35, align 8, !dbg !1371
  %179 = call double @gsl_sf_bessel_Yn(i32 %177, double %178), !dbg !1372
  store double %179, double* %33, align 8, !dbg !1373
  br label %180

; <label>:180:                                    ; preds = %172, %164
  %181 = load i32, i32* %17, align 4, !dbg !1374
  %182 = sitofp i32 %181 to double, !dbg !1374
  %183 = fmul double 5.000000e-01, %182, !dbg !1375
  %184 = load i32, i32* %19, align 4, !dbg !1376
  %185 = sitofp i32 %184 to double, !dbg !1376
  %186 = fadd double %183, %185, !dbg !1377
  %187 = fadd double %186, 1.000000e+00, !dbg !1378
  %188 = call double @pow(double -1.000000e+00, double %187) #5, !dbg !1379
  %189 = load i32, i32* %19, align 4, !dbg !1380
  %190 = sext i32 %189 to i64, !dbg !1381
  %191 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %190, !dbg !1381
  %192 = load double, double* %191, align 8, !dbg !1381
  %193 = fmul double %188, %192, !dbg !1382
  store double %193, double* %27, align 8, !dbg !1383
  %194 = load double, double* %27, align 8, !dbg !1384
  %195 = load double, double* %30, align 8, !dbg !1385
  %196 = load double, double* %33, align 8, !dbg !1386
  %197 = fmul double %195, %196, !dbg !1387
  %198 = load double, double* %32, align 8, !dbg !1388
  %199 = load double, double* %31, align 8, !dbg !1389
  %200 = fmul double %198, %199, !dbg !1390
  %201 = fsub double %197, %200, !dbg !1391
  %202 = fmul double %194, %201, !dbg !1392
  %203 = load double, double* %25, align 8, !dbg !1393
  %204 = fadd double %203, %202, !dbg !1393
  store double %204, double* %25, align 8, !dbg !1393
  br label %205, !dbg !1394

; <label>:205:                                    ; preds = %180
  %206 = load i32, i32* %19, align 4, !dbg !1395
  %207 = add nsw i32 %206, 1, !dbg !1395
  store i32 %207, i32* %19, align 4, !dbg !1395
  br label %123, !dbg !1397, !llvm.loop !1398

; <label>:208:                                    ; preds = %153, %123
  %209 = load double, double* %24, align 8, !dbg !1400
  %210 = fdiv double %209, 2.000000e+00, !dbg !1401
  %211 = call double @sqrt(double %210) #5, !dbg !1402
  %212 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 0, !dbg !1403
  %213 = load double, double* %212, align 16, !dbg !1403
  %214 = fdiv double %211, %213, !dbg !1404
  %215 = load double, double* %25, align 8, !dbg !1405
  %216 = fmul double %215, %214, !dbg !1405
  store double %216, double* %25, align 8, !dbg !1405
  br label %312, !dbg !1406

; <label>:217:                                    ; preds = %119
  store i32 0, i32* %19, align 4, !dbg !1407
  br label %218, !dbg !1410

; <label>:218:                                    ; preds = %300, %217
  %219 = load i32, i32* %19, align 4, !dbg !1411
  %220 = icmp slt i32 %219, 100, !dbg !1414
  br i1 %220, label %221, label %303, !dbg !1415

; <label>:221:                                    ; preds = %218
  %222 = load double, double* %23, align 8, !dbg !1416
  %223 = load i32, i32* %19, align 4, !dbg !1416
  %224 = sext i32 %223 to i64, !dbg !1416
  %225 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %224, !dbg !1416
  %226 = load double, double* %225, align 8, !dbg !1416
  %227 = call double @fabs(double %226) #1, !dbg !1416
  %228 = fcmp ogt double %222, %227, !dbg !1416
  br i1 %228, label %229, label %231, !dbg !1416

; <label>:229:                                    ; preds = %221
  %230 = load double, double* %23, align 8, !dbg !1418
  br label %237, !dbg !1418

; <label>:231:                                    ; preds = %221
  %232 = load i32, i32* %19, align 4, !dbg !1420
  %233 = sext i32 %232 to i64, !dbg !1420
  %234 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %233, !dbg !1420
  %235 = load double, double* %234, align 8, !dbg !1420
  %236 = call double @fabs(double %235) #1, !dbg !1420
  br label %237, !dbg !1420

; <label>:237:                                    ; preds = %231, %229
  %238 = phi double [ %230, %229 ], [ %236, %231 ], !dbg !1422
  store double %238, double* %23, align 8, !dbg !1424
  %239 = load i32, i32* %19, align 4, !dbg !1425
  %240 = sext i32 %239 to i64, !dbg !1427
  %241 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %240, !dbg !1427
  %242 = load double, double* %241, align 8, !dbg !1427
  %243 = call double @fabs(double %242) #1, !dbg !1428
  %244 = load double, double* %23, align 8, !dbg !1429
  %245 = fdiv double %243, %244, !dbg !1430
  %246 = load double, double* %22, align 8, !dbg !1431
  %247 = fcmp olt double %245, %246, !dbg !1432
  br i1 %247, label %248, label %249, !dbg !1433

; <label>:248:                                    ; preds = %237
  br label %303, !dbg !1434

; <label>:249:                                    ; preds = %237
  %250 = load i32, i32* %19, align 4, !dbg !1435
  %251 = load double, double* %34, align 8, !dbg !1436
  %252 = call double @gsl_sf_bessel_Jn(i32 %250, double %251), !dbg !1437
  store double %252, double* %28, align 8, !dbg !1438
  %253 = load i32, i32* %19, align 4, !dbg !1439
  %254 = add nsw i32 %253, 1, !dbg !1440
  %255 = load double, double* %34, align 8, !dbg !1441
  %256 = call double @gsl_sf_bessel_Jn(i32 %254, double %255), !dbg !1442
  store double %256, double* %32, align 8, !dbg !1443
  %257 = load i32, i32* %9, align 4, !dbg !1444
  %258 = icmp eq i32 %257, 1, !dbg !1446
  br i1 %258, label %259, label %267, !dbg !1447

; <label>:259:                                    ; preds = %249
  %260 = load i32, i32* %19, align 4, !dbg !1448
  %261 = load double, double* %35, align 8, !dbg !1450
  %262 = call double @gsl_sf_bessel_Jn(i32 %260, double %261), !dbg !1451
  store double %262, double* %29, align 8, !dbg !1452
  %263 = load i32, i32* %19, align 4, !dbg !1453
  %264 = add nsw i32 %263, 1, !dbg !1454
  %265 = load double, double* %35, align 8, !dbg !1455
  %266 = call double @gsl_sf_bessel_Jn(i32 %264, double %265), !dbg !1456
  store double %266, double* %33, align 8, !dbg !1457
  br label %275, !dbg !1458

; <label>:267:                                    ; preds = %249
  %268 = load i32, i32* %19, align 4, !dbg !1459
  %269 = load double, double* %35, align 8, !dbg !1461
  %270 = call double @gsl_sf_bessel_Yn(i32 %268, double %269), !dbg !1462
  store double %270, double* %29, align 8, !dbg !1463
  %271 = load i32, i32* %19, align 4, !dbg !1464
  %272 = add nsw i32 %271, 1, !dbg !1465
  %273 = load double, double* %35, align 8, !dbg !1466
  %274 = call double @gsl_sf_bessel_Yn(i32 %272, double %273), !dbg !1467
  store double %274, double* %33, align 8, !dbg !1468
  br label %275

; <label>:275:                                    ; preds = %267, %259
  %276 = load i32, i32* %17, align 4, !dbg !1469
  %277 = sub nsw i32 %276, 1, !dbg !1470
  %278 = sitofp i32 %277 to double, !dbg !1471
  %279 = fmul double 5.000000e-01, %278, !dbg !1472
  %280 = load i32, i32* %19, align 4, !dbg !1473
  %281 = sitofp i32 %280 to double, !dbg !1473
  %282 = fadd double %279, %281, !dbg !1474
  %283 = call double @pow(double -1.000000e+00, double %282) #5, !dbg !1475
  %284 = load i32, i32* %19, align 4, !dbg !1476
  %285 = sext i32 %284 to i64, !dbg !1477
  %286 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 %285, !dbg !1477
  %287 = load double, double* %286, align 8, !dbg !1477
  %288 = fmul double %283, %287, !dbg !1478
  store double %288, double* %27, align 8, !dbg !1479
  %289 = load double, double* %27, align 8, !dbg !1480
  %290 = load double, double* %28, align 8, !dbg !1481
  %291 = load double, double* %33, align 8, !dbg !1482
  %292 = fmul double %290, %291, !dbg !1483
  %293 = load double, double* %32, align 8, !dbg !1484
  %294 = load double, double* %29, align 8, !dbg !1485
  %295 = fmul double %293, %294, !dbg !1486
  %296 = fsub double %292, %295, !dbg !1487
  %297 = fmul double %289, %296, !dbg !1488
  %298 = load double, double* %25, align 8, !dbg !1489
  %299 = fadd double %298, %297, !dbg !1489
  store double %299, double* %25, align 8, !dbg !1489
  br label %300, !dbg !1490

; <label>:300:                                    ; preds = %275
  %301 = load i32, i32* %19, align 4, !dbg !1491
  %302 = add nsw i32 %301, 1, !dbg !1491
  store i32 %302, i32* %19, align 4, !dbg !1491
  br label %218, !dbg !1493, !llvm.loop !1494

; <label>:303:                                    ; preds = %248, %218
  %304 = load double, double* %24, align 8, !dbg !1496
  %305 = fdiv double %304, 2.000000e+00, !dbg !1497
  %306 = call double @sqrt(double %305) #5, !dbg !1498
  %307 = getelementptr inbounds [100 x double], [100 x double]* %26, i64 0, i64 0, !dbg !1499
  %308 = load double, double* %307, align 16, !dbg !1499
  %309 = fdiv double %306, %308, !dbg !1500
  %310 = load double, double* %25, align 8, !dbg !1501
  %311 = fmul double %310, %309, !dbg !1501
  store double %311, double* %25, align 8, !dbg !1501
  br label %312

; <label>:312:                                    ; preds = %303, %208
  %313 = load double, double* %25, align 8, !dbg !1502
  %314 = load i32, i32* %18, align 4, !dbg !1503
  %315 = sext i32 %314 to i64, !dbg !1504
  %316 = load double*, double** %15, align 8, !dbg !1504
  %317 = getelementptr inbounds double, double* %316, i64 %315, !dbg !1504
  store double %313, double* %317, align 8, !dbg !1505
  br label %318, !dbg !1506

; <label>:318:                                    ; preds = %312, %100
  %319 = load i32, i32* %18, align 4, !dbg !1507
  %320 = add nsw i32 %319, 1, !dbg !1507
  store i32 %320, i32* %18, align 4, !dbg !1507
  %321 = load i32, i32* %17, align 4, !dbg !1509
  %322 = add nsw i32 %321, 1, !dbg !1509
  store i32 %322, i32* %17, align 4, !dbg !1509
  br label %88, !dbg !1510, !llvm.loop !1511

; <label>:323:                                    ; preds = %88
  store i32 0, i32* %8, align 4, !dbg !1513
  br label %324, !dbg !1513

; <label>:324:                                    ; preds = %323, %117, %68, %59
  %325 = load i32, i32* %8, align 4, !dbg !1514
  ret i32 %325, !dbg !1514
}

declare i32 @gsl_sf_mathieu_b_array(i32, i32, double, %struct.gsl_sf_mathieu_workspace*, double*) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_mathieu_Mc(i32, i32, double, double) #0 !dbg !1515 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1518, metadata !59), !dbg !1519
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1520, metadata !59), !dbg !1521
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1522, metadata !59), !dbg !1523
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1524, metadata !59), !dbg !1525
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1526, metadata !59), !dbg !1527
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1528, metadata !59), !dbg !1527
  %12 = load i32, i32* %6, align 4, !dbg !1527
  %13 = load i32, i32* %7, align 4, !dbg !1527
  %14 = load double, double* %8, align 8, !dbg !1527
  %15 = load double, double* %9, align 8, !dbg !1527
  %16 = call i32 @gsl_sf_mathieu_Mc_e(i32 %12, i32 %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !1527
  store i32 %16, i32* %11, align 4, !dbg !1527
  %17 = load i32, i32* %11, align 4, !dbg !1529
  %18 = icmp ne i32 %17, 0, !dbg !1529
  br i1 %18, label %19, label %25, !dbg !1527

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !1531, !llvm.loop !1534

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %11, align 4, !dbg !1536
  call void @gsl_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 483, i32 %21), !dbg !1536
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1536
  %23 = load double, double* %22, align 8, !dbg !1536
  store double %23, double* %5, align 8, !dbg !1536
  br label %28, !dbg !1536
                                                  ; No predecessors!
  br label %25, !dbg !1539

; <label>:25:                                     ; preds = %24, %4
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1541
  %27 = load double, double* %26, align 8, !dbg !1541
  store double %27, double* %5, align 8, !dbg !1541
  br label %28, !dbg !1541

; <label>:28:                                     ; preds = %25, %20
  %29 = load double, double* %5, align 8, !dbg !1543
  ret double %29, !dbg !1543
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_mathieu_Ms(i32, i32, double, double) #0 !dbg !1544 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1545, metadata !59), !dbg !1546
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1547, metadata !59), !dbg !1548
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1549, metadata !59), !dbg !1550
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1551, metadata !59), !dbg !1552
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1553, metadata !59), !dbg !1554
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1555, metadata !59), !dbg !1554
  %12 = load i32, i32* %6, align 4, !dbg !1554
  %13 = load i32, i32* %7, align 4, !dbg !1554
  %14 = load double, double* %8, align 8, !dbg !1554
  %15 = load double, double* %9, align 8, !dbg !1554
  %16 = call i32 @gsl_sf_mathieu_Ms_e(i32 %12, i32 %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !1554
  store i32 %16, i32* %11, align 4, !dbg !1554
  %17 = load i32, i32* %11, align 4, !dbg !1556
  %18 = icmp ne i32 %17, 0, !dbg !1556
  br i1 %18, label %19, label %25, !dbg !1554

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !1558, !llvm.loop !1561

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %11, align 4, !dbg !1563
  call void @gsl_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 488, i32 %21), !dbg !1563
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1563
  %23 = load double, double* %22, align 8, !dbg !1563
  store double %23, double* %5, align 8, !dbg !1563
  br label %28, !dbg !1563
                                                  ; No predecessors!
  br label %25, !dbg !1566

; <label>:25:                                     ; preds = %24, %4
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1568
  %27 = load double, double* %26, align 8, !dbg !1568
  store double %27, double* %5, align 8, !dbg !1568
  br label %28, !dbg !1568

; <label>:28:                                     ; preds = %25, %20
  %29 = load double, double* %5, align 8, !dbg !1570
  ret double %29, !dbg !1570
}

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
!1 = !DIFile(filename: "mathieu_radfunc.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_mathieu_Mc_e", scope: !1, file: !1, line: 30, type: !46, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !48, !48, !49, !49, !50}
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
!58 = !DILocalVariable(name: "kind", arg: 1, scope: !45, file: !1, line: 30, type: !48)
!59 = !DIExpression()
!60 = !DILocation(line: 30, column: 29, scope: !45)
!61 = !DILocalVariable(name: "order", arg: 2, scope: !45, file: !1, line: 30, type: !48)
!62 = !DILocation(line: 30, column: 39, scope: !45)
!63 = !DILocalVariable(name: "qq", arg: 3, scope: !45, file: !1, line: 30, type: !49)
!64 = !DILocation(line: 30, column: 53, scope: !45)
!65 = !DILocalVariable(name: "zz", arg: 4, scope: !45, file: !1, line: 30, type: !49)
!66 = !DILocation(line: 30, column: 64, scope: !45)
!67 = !DILocalVariable(name: "result", arg: 5, scope: !45, file: !1, line: 31, type: !50)
!68 = !DILocation(line: 31, column: 38, scope: !45)
!69 = !DILocalVariable(name: "even_odd", scope: !45, file: !1, line: 33, type: !48)
!70 = !DILocation(line: 33, column: 7, scope: !45)
!71 = !DILocalVariable(name: "kk", scope: !45, file: !1, line: 33, type: !48)
!72 = !DILocation(line: 33, column: 17, scope: !45)
!73 = !DILocalVariable(name: "mm", scope: !45, file: !1, line: 33, type: !48)
!74 = !DILocation(line: 33, column: 21, scope: !45)
!75 = !DILocalVariable(name: "status", scope: !45, file: !1, line: 33, type: !48)
!76 = !DILocation(line: 33, column: 25, scope: !45)
!77 = !DILocalVariable(name: "maxerr", scope: !45, file: !1, line: 34, type: !49)
!78 = !DILocation(line: 34, column: 10, scope: !45)
!79 = !DILocalVariable(name: "amax", scope: !45, file: !1, line: 34, type: !49)
!80 = !DILocation(line: 34, column: 26, scope: !45)
!81 = !DILocalVariable(name: "pi", scope: !45, file: !1, line: 34, type: !49)
!82 = !DILocation(line: 34, column: 32, scope: !45)
!83 = !DILocalVariable(name: "fn", scope: !45, file: !1, line: 34, type: !49)
!84 = !DILocation(line: 34, column: 43, scope: !45)
!85 = !DILocalVariable(name: "factor", scope: !45, file: !1, line: 34, type: !49)
!86 = !DILocation(line: 34, column: 47, scope: !45)
!87 = !DILocalVariable(name: "coeff", scope: !45, file: !1, line: 35, type: !88)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 6400, align: 64, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 100)
!91 = !DILocation(line: 35, column: 10, scope: !45)
!92 = !DILocalVariable(name: "fc", scope: !45, file: !1, line: 35, type: !49)
!93 = !DILocation(line: 35, column: 39, scope: !45)
!94 = !DILocalVariable(name: "j1c", scope: !45, file: !1, line: 36, type: !49)
!95 = !DILocation(line: 36, column: 10, scope: !45)
!96 = !DILocalVariable(name: "z2c", scope: !45, file: !1, line: 36, type: !49)
!97 = !DILocation(line: 36, column: 15, scope: !45)
!98 = !DILocalVariable(name: "j1pc", scope: !45, file: !1, line: 36, type: !49)
!99 = !DILocation(line: 36, column: 20, scope: !45)
!100 = !DILocalVariable(name: "z2pc", scope: !45, file: !1, line: 36, type: !49)
!101 = !DILocation(line: 36, column: 26, scope: !45)
!102 = !DILocalVariable(name: "u1", scope: !45, file: !1, line: 37, type: !49)
!103 = !DILocation(line: 37, column: 10, scope: !45)
!104 = !DILocalVariable(name: "u2", scope: !45, file: !1, line: 37, type: !49)
!105 = !DILocation(line: 37, column: 14, scope: !45)
!106 = !DILocalVariable(name: "aa", scope: !45, file: !1, line: 38, type: !51)
!107 = !DILocation(line: 38, column: 17, scope: !45)
!108 = !DILocation(line: 42, column: 7, scope: !109)
!109 = distinct !DILexicalBlock(scope: !45, file: !1, line: 42, column: 7)
!110 = !DILocation(line: 42, column: 10, scope: !109)
!111 = !DILocation(line: 42, column: 7, scope: !45)
!112 = !DILocation(line: 44, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 43, column: 3)
!114 = distinct !{!114, !112}
!115 = !DILocation(line: 44, column: 7, scope: !116)
!116 = !DILexicalBlockFile(scope: !117, file: !1, discriminator: 1)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 44, column: 7)
!118 = !DILocation(line: 45, column: 3, scope: !113)
!119 = !DILocation(line: 46, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !45, file: !1, line: 46, column: 7)
!121 = !DILocation(line: 46, column: 12, scope: !120)
!122 = !DILocation(line: 46, column: 16, scope: !120)
!123 = !DILocation(line: 46, column: 19, scope: !124)
!124 = !DILexicalBlockFile(scope: !120, file: !1, discriminator: 1)
!125 = !DILocation(line: 46, column: 24, scope: !124)
!126 = !DILocation(line: 46, column: 7, scope: !124)
!127 = !DILocation(line: 48, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !120, file: !1, line: 47, column: 3)
!129 = distinct !{!129, !127}
!130 = !DILocation(line: 48, column: 7, scope: !131)
!131 = !DILexicalBlockFile(scope: !132, file: !1, discriminator: 1)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 48, column: 7)
!133 = !DILocation(line: 49, column: 3, scope: !128)
!134 = !DILocation(line: 51, column: 6, scope: !45)
!135 = !DILocation(line: 52, column: 8, scope: !45)
!136 = !DILocation(line: 53, column: 6, scope: !45)
!137 = !DILocation(line: 54, column: 13, scope: !45)
!138 = !DILocation(line: 54, column: 8, scope: !45)
!139 = !DILocation(line: 54, column: 26, scope: !45)
!140 = !DILocation(line: 54, column: 25, scope: !45)
!141 = !DILocation(line: 54, column: 17, scope: !142)
!142 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 1)
!143 = !DILocation(line: 54, column: 16, scope: !45)
!144 = !DILocation(line: 54, column: 6, scope: !45)
!145 = !DILocation(line: 55, column: 13, scope: !45)
!146 = !DILocation(line: 55, column: 8, scope: !45)
!147 = !DILocation(line: 55, column: 21, scope: !45)
!148 = !DILocation(line: 55, column: 17, scope: !142)
!149 = !DILocation(line: 55, column: 16, scope: !45)
!150 = !DILocation(line: 55, column: 6, scope: !45)
!151 = !DILocation(line: 57, column: 12, scope: !45)
!152 = !DILocation(line: 58, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !45, file: !1, line: 58, column: 7)
!154 = !DILocation(line: 58, column: 13, scope: !153)
!155 = !DILocation(line: 58, column: 17, scope: !153)
!156 = !DILocation(line: 58, column: 7, scope: !45)
!157 = !DILocation(line: 59, column: 16, scope: !153)
!158 = !DILocation(line: 59, column: 7, scope: !153)
!159 = !DILocation(line: 62, column: 31, scope: !45)
!160 = !DILocation(line: 62, column: 38, scope: !45)
!161 = !DILocation(line: 62, column: 12, scope: !45)
!162 = !DILocation(line: 62, column: 10, scope: !45)
!163 = !DILocation(line: 63, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !45, file: !1, line: 63, column: 7)
!165 = !DILocation(line: 63, column: 14, scope: !164)
!166 = !DILocation(line: 63, column: 7, scope: !45)
!167 = !DILocation(line: 65, column: 14, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 64, column: 3)
!169 = !DILocation(line: 65, column: 7, scope: !168)
!170 = !DILocation(line: 69, column: 35, scope: !45)
!171 = !DILocation(line: 69, column: 42, scope: !45)
!172 = !DILocation(line: 69, column: 49, scope: !45)
!173 = !DILocation(line: 69, column: 54, scope: !45)
!174 = !DILocation(line: 69, column: 12, scope: !45)
!175 = !DILocation(line: 69, column: 10, scope: !45)
!176 = !DILocation(line: 70, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !45, file: !1, line: 70, column: 7)
!178 = !DILocation(line: 70, column: 14, scope: !177)
!179 = !DILocation(line: 70, column: 7, scope: !45)
!180 = !DILocation(line: 72, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 71, column: 3)
!182 = !DILocation(line: 72, column: 7, scope: !181)
!183 = !DILocation(line: 75, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !45, file: !1, line: 75, column: 7)
!185 = !DILocation(line: 75, column: 16, scope: !184)
!186 = !DILocation(line: 75, column: 7, scope: !45)
!187 = !DILocation(line: 77, column: 14, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 77, column: 7)
!189 = distinct !DILexicalBlock(scope: !184, file: !1, line: 76, column: 3)
!190 = !DILocation(line: 77, column: 12, scope: !188)
!191 = !DILocation(line: 77, column: 18, scope: !192)
!192 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 1)
!193 = distinct !DILexicalBlock(scope: !188, file: !1, line: 77, column: 7)
!194 = !DILocation(line: 77, column: 20, scope: !192)
!195 = !DILocation(line: 77, column: 7, scope: !192)
!196 = !DILocation(line: 79, column: 18, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 78, column: 7)
!198 = !DILocation(line: 79, column: 18, scope: !199)
!199 = !DILexicalBlockFile(scope: !197, file: !1, discriminator: 1)
!200 = !DILocation(line: 79, column: 18, scope: !201)
!201 = !DILexicalBlockFile(scope: !197, file: !1, discriminator: 2)
!202 = !DILocation(line: 79, column: 18, scope: !203)
!203 = !DILexicalBlockFile(scope: !197, file: !1, discriminator: 3)
!204 = !DILocation(line: 79, column: 16, scope: !203)
!205 = !DILocation(line: 80, column: 26, scope: !206)
!206 = distinct !DILexicalBlock(scope: !197, file: !1, line: 80, column: 15)
!207 = !DILocation(line: 80, column: 20, scope: !206)
!208 = !DILocation(line: 80, column: 15, scope: !206)
!209 = !DILocation(line: 80, column: 31, scope: !206)
!210 = !DILocation(line: 80, column: 30, scope: !206)
!211 = !DILocation(line: 80, column: 38, scope: !206)
!212 = !DILocation(line: 80, column: 36, scope: !206)
!213 = !DILocation(line: 80, column: 15, scope: !197)
!214 = !DILocation(line: 81, column: 15, scope: !206)
!215 = !DILocation(line: 83, column: 34, scope: !197)
!216 = !DILocation(line: 83, column: 38, scope: !197)
!217 = !DILocation(line: 83, column: 17, scope: !197)
!218 = !DILocation(line: 83, column: 15, scope: !197)
!219 = !DILocation(line: 84, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !197, file: !1, line: 84, column: 15)
!221 = !DILocation(line: 84, column: 20, scope: !220)
!222 = !DILocation(line: 84, column: 15, scope: !197)
!223 = !DILocation(line: 86, column: 38, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 85, column: 11)
!225 = !DILocation(line: 86, column: 42, scope: !224)
!226 = !DILocation(line: 86, column: 21, scope: !224)
!227 = !DILocation(line: 86, column: 19, scope: !224)
!228 = !DILocation(line: 87, column: 11, scope: !224)
!229 = !DILocation(line: 90, column: 38, scope: !230)
!230 = distinct !DILexicalBlock(scope: !220, file: !1, line: 89, column: 11)
!231 = !DILocation(line: 90, column: 42, scope: !230)
!232 = !DILocation(line: 90, column: 21, scope: !230)
!233 = !DILocation(line: 90, column: 19, scope: !230)
!234 = !DILocation(line: 93, column: 30, scope: !197)
!235 = !DILocation(line: 93, column: 29, scope: !197)
!236 = !DILocation(line: 93, column: 36, scope: !197)
!237 = !DILocation(line: 93, column: 35, scope: !197)
!238 = !DILocation(line: 93, column: 16, scope: !197)
!239 = !DILocation(line: 93, column: 46, scope: !197)
!240 = !DILocation(line: 93, column: 40, scope: !197)
!241 = !DILocation(line: 93, column: 39, scope: !197)
!242 = !DILocation(line: 93, column: 14, scope: !197)
!243 = !DILocation(line: 94, column: 17, scope: !197)
!244 = !DILocation(line: 94, column: 20, scope: !197)
!245 = !DILocation(line: 94, column: 19, scope: !197)
!246 = !DILocation(line: 94, column: 24, scope: !197)
!247 = !DILocation(line: 94, column: 23, scope: !197)
!248 = !DILocation(line: 94, column: 14, scope: !197)
!249 = !DILocation(line: 95, column: 7, scope: !197)
!250 = !DILocation(line: 77, column: 45, scope: !251)
!251 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 2)
!252 = !DILocation(line: 77, column: 7, scope: !251)
!253 = distinct !{!253, !254}
!254 = !DILocation(line: 77, column: 7, scope: !189)
!255 = !DILocation(line: 97, column: 18, scope: !189)
!256 = !DILocation(line: 97, column: 20, scope: !189)
!257 = !DILocation(line: 97, column: 13, scope: !189)
!258 = !DILocation(line: 97, column: 26, scope: !189)
!259 = !DILocation(line: 97, column: 25, scope: !189)
!260 = !DILocation(line: 97, column: 10, scope: !189)
!261 = !DILocation(line: 98, column: 3, scope: !189)
!262 = !DILocation(line: 101, column: 14, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !1, line: 101, column: 7)
!264 = distinct !DILexicalBlock(scope: !184, file: !1, line: 100, column: 3)
!265 = !DILocation(line: 101, column: 12, scope: !263)
!266 = !DILocation(line: 101, column: 18, scope: !267)
!267 = !DILexicalBlockFile(scope: !268, file: !1, discriminator: 1)
!268 = distinct !DILexicalBlock(scope: !263, file: !1, line: 101, column: 7)
!269 = !DILocation(line: 101, column: 20, scope: !267)
!270 = !DILocation(line: 101, column: 7, scope: !267)
!271 = !DILocation(line: 103, column: 18, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 102, column: 7)
!273 = !DILocation(line: 103, column: 18, scope: !274)
!274 = !DILexicalBlockFile(scope: !272, file: !1, discriminator: 1)
!275 = !DILocation(line: 103, column: 18, scope: !276)
!276 = !DILexicalBlockFile(scope: !272, file: !1, discriminator: 2)
!277 = !DILocation(line: 103, column: 18, scope: !278)
!278 = !DILexicalBlockFile(scope: !272, file: !1, discriminator: 3)
!279 = !DILocation(line: 103, column: 16, scope: !278)
!280 = !DILocation(line: 104, column: 26, scope: !281)
!281 = distinct !DILexicalBlock(scope: !272, file: !1, line: 104, column: 15)
!282 = !DILocation(line: 104, column: 20, scope: !281)
!283 = !DILocation(line: 104, column: 15, scope: !281)
!284 = !DILocation(line: 104, column: 31, scope: !281)
!285 = !DILocation(line: 104, column: 30, scope: !281)
!286 = !DILocation(line: 104, column: 38, scope: !281)
!287 = !DILocation(line: 104, column: 36, scope: !281)
!288 = !DILocation(line: 104, column: 15, scope: !272)
!289 = !DILocation(line: 105, column: 15, scope: !281)
!290 = !DILocation(line: 107, column: 34, scope: !272)
!291 = !DILocation(line: 107, column: 38, scope: !272)
!292 = !DILocation(line: 107, column: 17, scope: !272)
!293 = !DILocation(line: 107, column: 15, scope: !272)
!294 = !DILocation(line: 108, column: 35, scope: !272)
!295 = !DILocation(line: 108, column: 37, scope: !272)
!296 = !DILocation(line: 108, column: 41, scope: !272)
!297 = !DILocation(line: 108, column: 18, scope: !272)
!298 = !DILocation(line: 108, column: 16, scope: !272)
!299 = !DILocation(line: 109, column: 15, scope: !300)
!300 = distinct !DILexicalBlock(scope: !272, file: !1, line: 109, column: 15)
!301 = !DILocation(line: 109, column: 20, scope: !300)
!302 = !DILocation(line: 109, column: 15, scope: !272)
!303 = !DILocation(line: 111, column: 38, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !1, line: 110, column: 11)
!305 = !DILocation(line: 111, column: 42, scope: !304)
!306 = !DILocation(line: 111, column: 21, scope: !304)
!307 = !DILocation(line: 111, column: 19, scope: !304)
!308 = !DILocation(line: 112, column: 39, scope: !304)
!309 = !DILocation(line: 112, column: 41, scope: !304)
!310 = !DILocation(line: 112, column: 45, scope: !304)
!311 = !DILocation(line: 112, column: 22, scope: !304)
!312 = !DILocation(line: 112, column: 20, scope: !304)
!313 = !DILocation(line: 113, column: 11, scope: !304)
!314 = !DILocation(line: 116, column: 38, scope: !315)
!315 = distinct !DILexicalBlock(scope: !300, file: !1, line: 115, column: 11)
!316 = !DILocation(line: 116, column: 42, scope: !315)
!317 = !DILocation(line: 116, column: 21, scope: !315)
!318 = !DILocation(line: 116, column: 19, scope: !315)
!319 = !DILocation(line: 117, column: 39, scope: !315)
!320 = !DILocation(line: 117, column: 41, scope: !315)
!321 = !DILocation(line: 117, column: 45, scope: !315)
!322 = !DILocation(line: 117, column: 22, scope: !315)
!323 = !DILocation(line: 117, column: 20, scope: !315)
!324 = !DILocation(line: 119, column: 31, scope: !272)
!325 = !DILocation(line: 119, column: 36, scope: !272)
!326 = !DILocation(line: 119, column: 30, scope: !272)
!327 = !DILocation(line: 119, column: 29, scope: !272)
!328 = !DILocation(line: 119, column: 40, scope: !272)
!329 = !DILocation(line: 119, column: 39, scope: !272)
!330 = !DILocation(line: 119, column: 16, scope: !272)
!331 = !DILocation(line: 119, column: 50, scope: !272)
!332 = !DILocation(line: 119, column: 44, scope: !272)
!333 = !DILocation(line: 119, column: 43, scope: !272)
!334 = !DILocation(line: 119, column: 14, scope: !272)
!335 = !DILocation(line: 120, column: 17, scope: !272)
!336 = !DILocation(line: 120, column: 21, scope: !272)
!337 = !DILocation(line: 120, column: 25, scope: !272)
!338 = !DILocation(line: 120, column: 24, scope: !272)
!339 = !DILocation(line: 120, column: 32, scope: !272)
!340 = !DILocation(line: 120, column: 37, scope: !272)
!341 = !DILocation(line: 120, column: 36, scope: !272)
!342 = !DILocation(line: 120, column: 30, scope: !272)
!343 = !DILocation(line: 120, column: 19, scope: !272)
!344 = !DILocation(line: 120, column: 14, scope: !272)
!345 = !DILocation(line: 121, column: 7, scope: !272)
!346 = !DILocation(line: 101, column: 45, scope: !347)
!347 = !DILexicalBlockFile(scope: !268, file: !1, discriminator: 2)
!348 = !DILocation(line: 101, column: 7, scope: !347)
!349 = distinct !{!349, !350}
!350 = !DILocation(line: 101, column: 7, scope: !264)
!351 = !DILocation(line: 123, column: 18, scope: !264)
!352 = !DILocation(line: 123, column: 20, scope: !264)
!353 = !DILocation(line: 123, column: 13, scope: !264)
!354 = !DILocation(line: 123, column: 26, scope: !264)
!355 = !DILocation(line: 123, column: 25, scope: !264)
!356 = !DILocation(line: 123, column: 10, scope: !264)
!357 = !DILocation(line: 126, column: 17, scope: !45)
!358 = !DILocation(line: 126, column: 3, scope: !45)
!359 = !DILocation(line: 126, column: 11, scope: !45)
!360 = !DILocation(line: 126, column: 15, scope: !45)
!361 = !DILocation(line: 127, column: 3, scope: !45)
!362 = !DILocation(line: 127, column: 11, scope: !45)
!363 = !DILocation(line: 127, column: 15, scope: !45)
!364 = !DILocation(line: 128, column: 17, scope: !45)
!365 = !DILocation(line: 128, column: 12, scope: !45)
!366 = !DILocation(line: 128, column: 10, scope: !45)
!367 = !DILocation(line: 129, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !45, file: !1, line: 129, column: 7)
!369 = !DILocation(line: 129, column: 14, scope: !368)
!370 = !DILocation(line: 129, column: 7, scope: !45)
!371 = !DILocation(line: 130, column: 22, scope: !368)
!372 = !DILocation(line: 130, column: 7, scope: !368)
!373 = !DILocation(line: 130, column: 15, scope: !368)
!374 = !DILocation(line: 130, column: 19, scope: !368)
!375 = !DILocation(line: 132, column: 3, scope: !45)
!376 = !DILocation(line: 133, column: 1, scope: !45)
!377 = distinct !DISubprogram(name: "gsl_sf_mathieu_Ms_e", scope: !1, file: !1, line: 136, type: !46, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!378 = !DILocalVariable(name: "kind", arg: 1, scope: !377, file: !1, line: 136, type: !48)
!379 = !DILocation(line: 136, column: 29, scope: !377)
!380 = !DILocalVariable(name: "order", arg: 2, scope: !377, file: !1, line: 136, type: !48)
!381 = !DILocation(line: 136, column: 39, scope: !377)
!382 = !DILocalVariable(name: "qq", arg: 3, scope: !377, file: !1, line: 136, type: !49)
!383 = !DILocation(line: 136, column: 53, scope: !377)
!384 = !DILocalVariable(name: "zz", arg: 4, scope: !377, file: !1, line: 136, type: !49)
!385 = !DILocation(line: 136, column: 64, scope: !377)
!386 = !DILocalVariable(name: "result", arg: 5, scope: !377, file: !1, line: 137, type: !50)
!387 = !DILocation(line: 137, column: 38, scope: !377)
!388 = !DILocalVariable(name: "even_odd", scope: !377, file: !1, line: 139, type: !48)
!389 = !DILocation(line: 139, column: 7, scope: !377)
!390 = !DILocalVariable(name: "kk", scope: !377, file: !1, line: 139, type: !48)
!391 = !DILocation(line: 139, column: 17, scope: !377)
!392 = !DILocalVariable(name: "mm", scope: !377, file: !1, line: 139, type: !48)
!393 = !DILocation(line: 139, column: 21, scope: !377)
!394 = !DILocalVariable(name: "status", scope: !377, file: !1, line: 139, type: !48)
!395 = !DILocation(line: 139, column: 25, scope: !377)
!396 = !DILocalVariable(name: "maxerr", scope: !377, file: !1, line: 140, type: !49)
!397 = !DILocation(line: 140, column: 10, scope: !377)
!398 = !DILocalVariable(name: "amax", scope: !377, file: !1, line: 140, type: !49)
!399 = !DILocation(line: 140, column: 26, scope: !377)
!400 = !DILocalVariable(name: "pi", scope: !377, file: !1, line: 140, type: !49)
!401 = !DILocation(line: 140, column: 32, scope: !377)
!402 = !DILocalVariable(name: "fn", scope: !377, file: !1, line: 140, type: !49)
!403 = !DILocation(line: 140, column: 43, scope: !377)
!404 = !DILocalVariable(name: "factor", scope: !377, file: !1, line: 140, type: !49)
!405 = !DILocation(line: 140, column: 47, scope: !377)
!406 = !DILocalVariable(name: "coeff", scope: !377, file: !1, line: 141, type: !88)
!407 = !DILocation(line: 141, column: 10, scope: !377)
!408 = !DILocalVariable(name: "fc", scope: !377, file: !1, line: 141, type: !49)
!409 = !DILocation(line: 141, column: 39, scope: !377)
!410 = !DILocalVariable(name: "j1c", scope: !377, file: !1, line: 142, type: !49)
!411 = !DILocation(line: 142, column: 10, scope: !377)
!412 = !DILocalVariable(name: "z2c", scope: !377, file: !1, line: 142, type: !49)
!413 = !DILocation(line: 142, column: 15, scope: !377)
!414 = !DILocalVariable(name: "j1mc", scope: !377, file: !1, line: 142, type: !49)
!415 = !DILocation(line: 142, column: 20, scope: !377)
!416 = !DILocalVariable(name: "z2mc", scope: !377, file: !1, line: 142, type: !49)
!417 = !DILocation(line: 142, column: 26, scope: !377)
!418 = !DILocalVariable(name: "j1pc", scope: !377, file: !1, line: 142, type: !49)
!419 = !DILocation(line: 142, column: 32, scope: !377)
!420 = !DILocalVariable(name: "z2pc", scope: !377, file: !1, line: 142, type: !49)
!421 = !DILocation(line: 142, column: 38, scope: !377)
!422 = !DILocalVariable(name: "u1", scope: !377, file: !1, line: 143, type: !49)
!423 = !DILocation(line: 143, column: 10, scope: !377)
!424 = !DILocalVariable(name: "u2", scope: !377, file: !1, line: 143, type: !49)
!425 = !DILocation(line: 143, column: 14, scope: !377)
!426 = !DILocalVariable(name: "aa", scope: !377, file: !1, line: 144, type: !51)
!427 = !DILocation(line: 144, column: 17, scope: !377)
!428 = !DILocation(line: 148, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !377, file: !1, line: 148, column: 7)
!430 = !DILocation(line: 148, column: 10, scope: !429)
!431 = !DILocation(line: 148, column: 7, scope: !377)
!432 = !DILocation(line: 150, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !1, line: 149, column: 3)
!434 = distinct !{!434, !432}
!435 = !DILocation(line: 150, column: 7, scope: !436)
!436 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 1)
!437 = distinct !DILexicalBlock(scope: !433, file: !1, line: 150, column: 7)
!438 = !DILocation(line: 151, column: 3, scope: !433)
!439 = !DILocation(line: 152, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !377, file: !1, line: 152, column: 7)
!441 = !DILocation(line: 152, column: 12, scope: !440)
!442 = !DILocation(line: 152, column: 16, scope: !440)
!443 = !DILocation(line: 152, column: 19, scope: !444)
!444 = !DILexicalBlockFile(scope: !440, file: !1, discriminator: 1)
!445 = !DILocation(line: 152, column: 24, scope: !444)
!446 = !DILocation(line: 152, column: 7, scope: !444)
!447 = !DILocation(line: 154, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !440, file: !1, line: 153, column: 3)
!449 = distinct !{!449, !447}
!450 = !DILocation(line: 154, column: 7, scope: !451)
!451 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 1)
!452 = distinct !DILexicalBlock(scope: !448, file: !1, line: 154, column: 7)
!453 = !DILocation(line: 155, column: 3, scope: !448)
!454 = !DILocation(line: 158, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !377, file: !1, line: 158, column: 7)
!456 = !DILocation(line: 158, column: 13, scope: !455)
!457 = !DILocation(line: 158, column: 7, scope: !377)
!458 = !DILocation(line: 160, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !1, line: 159, column: 3)
!460 = !DILocation(line: 160, column: 15, scope: !459)
!461 = !DILocation(line: 160, column: 19, scope: !459)
!462 = !DILocation(line: 161, column: 7, scope: !459)
!463 = !DILocation(line: 161, column: 15, scope: !459)
!464 = !DILocation(line: 161, column: 19, scope: !459)
!465 = !DILocation(line: 162, column: 7, scope: !459)
!466 = !DILocation(line: 165, column: 6, scope: !377)
!467 = !DILocation(line: 166, column: 8, scope: !377)
!468 = !DILocation(line: 167, column: 6, scope: !377)
!469 = !DILocation(line: 168, column: 13, scope: !377)
!470 = !DILocation(line: 168, column: 8, scope: !377)
!471 = !DILocation(line: 168, column: 26, scope: !377)
!472 = !DILocation(line: 168, column: 25, scope: !377)
!473 = !DILocation(line: 168, column: 17, scope: !474)
!474 = !DILexicalBlockFile(scope: !377, file: !1, discriminator: 1)
!475 = !DILocation(line: 168, column: 16, scope: !377)
!476 = !DILocation(line: 168, column: 6, scope: !377)
!477 = !DILocation(line: 169, column: 13, scope: !377)
!478 = !DILocation(line: 169, column: 8, scope: !377)
!479 = !DILocation(line: 169, column: 21, scope: !377)
!480 = !DILocation(line: 169, column: 17, scope: !474)
!481 = !DILocation(line: 169, column: 16, scope: !377)
!482 = !DILocation(line: 169, column: 6, scope: !377)
!483 = !DILocation(line: 171, column: 12, scope: !377)
!484 = !DILocation(line: 172, column: 7, scope: !485)
!485 = distinct !DILexicalBlock(scope: !377, file: !1, line: 172, column: 7)
!486 = !DILocation(line: 172, column: 13, scope: !485)
!487 = !DILocation(line: 172, column: 17, scope: !485)
!488 = !DILocation(line: 172, column: 7, scope: !377)
!489 = !DILocation(line: 173, column: 16, scope: !485)
!490 = !DILocation(line: 173, column: 7, scope: !485)
!491 = !DILocation(line: 176, column: 31, scope: !377)
!492 = !DILocation(line: 176, column: 38, scope: !377)
!493 = !DILocation(line: 176, column: 12, scope: !377)
!494 = !DILocation(line: 176, column: 10, scope: !377)
!495 = !DILocation(line: 177, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !377, file: !1, line: 177, column: 7)
!497 = !DILocation(line: 177, column: 14, scope: !496)
!498 = !DILocation(line: 177, column: 7, scope: !377)
!499 = !DILocation(line: 179, column: 14, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !1, line: 178, column: 3)
!501 = !DILocation(line: 179, column: 7, scope: !500)
!502 = !DILocation(line: 183, column: 35, scope: !377)
!503 = !DILocation(line: 183, column: 42, scope: !377)
!504 = !DILocation(line: 183, column: 49, scope: !377)
!505 = !DILocation(line: 183, column: 54, scope: !377)
!506 = !DILocation(line: 183, column: 12, scope: !377)
!507 = !DILocation(line: 183, column: 10, scope: !377)
!508 = !DILocation(line: 184, column: 7, scope: !509)
!509 = distinct !DILexicalBlock(scope: !377, file: !1, line: 184, column: 7)
!510 = !DILocation(line: 184, column: 14, scope: !509)
!511 = !DILocation(line: 184, column: 7, scope: !377)
!512 = !DILocation(line: 186, column: 14, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !1, line: 185, column: 3)
!514 = !DILocation(line: 186, column: 7, scope: !513)
!515 = !DILocation(line: 189, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !377, file: !1, line: 189, column: 7)
!517 = !DILocation(line: 189, column: 16, scope: !516)
!518 = !DILocation(line: 189, column: 7, scope: !377)
!519 = !DILocation(line: 191, column: 14, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 191, column: 7)
!521 = distinct !DILexicalBlock(scope: !516, file: !1, line: 190, column: 3)
!522 = !DILocation(line: 191, column: 12, scope: !520)
!523 = !DILocation(line: 191, column: 18, scope: !524)
!524 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 1)
!525 = distinct !DILexicalBlock(scope: !520, file: !1, line: 191, column: 7)
!526 = !DILocation(line: 191, column: 20, scope: !524)
!527 = !DILocation(line: 191, column: 7, scope: !524)
!528 = !DILocation(line: 193, column: 18, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !1, line: 192, column: 7)
!530 = !DILocation(line: 193, column: 18, scope: !531)
!531 = !DILexicalBlockFile(scope: !529, file: !1, discriminator: 1)
!532 = !DILocation(line: 193, column: 18, scope: !533)
!533 = !DILexicalBlockFile(scope: !529, file: !1, discriminator: 2)
!534 = !DILocation(line: 193, column: 18, scope: !535)
!535 = !DILexicalBlockFile(scope: !529, file: !1, discriminator: 3)
!536 = !DILocation(line: 193, column: 16, scope: !535)
!537 = !DILocation(line: 194, column: 26, scope: !538)
!538 = distinct !DILexicalBlock(scope: !529, file: !1, line: 194, column: 15)
!539 = !DILocation(line: 194, column: 20, scope: !538)
!540 = !DILocation(line: 194, column: 15, scope: !538)
!541 = !DILocation(line: 194, column: 31, scope: !538)
!542 = !DILocation(line: 194, column: 30, scope: !538)
!543 = !DILocation(line: 194, column: 38, scope: !538)
!544 = !DILocation(line: 194, column: 36, scope: !538)
!545 = !DILocation(line: 194, column: 15, scope: !529)
!546 = !DILocation(line: 195, column: 15, scope: !538)
!547 = !DILocation(line: 197, column: 35, scope: !529)
!548 = !DILocation(line: 197, column: 39, scope: !529)
!549 = !DILocation(line: 197, column: 18, scope: !529)
!550 = !DILocation(line: 197, column: 16, scope: !529)
!551 = !DILocation(line: 198, column: 35, scope: !529)
!552 = !DILocation(line: 198, column: 37, scope: !529)
!553 = !DILocation(line: 198, column: 41, scope: !529)
!554 = !DILocation(line: 198, column: 18, scope: !529)
!555 = !DILocation(line: 198, column: 16, scope: !529)
!556 = !DILocation(line: 199, column: 15, scope: !557)
!557 = distinct !DILexicalBlock(scope: !529, file: !1, line: 199, column: 15)
!558 = !DILocation(line: 199, column: 20, scope: !557)
!559 = !DILocation(line: 199, column: 15, scope: !529)
!560 = !DILocation(line: 201, column: 39, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !1, line: 200, column: 11)
!562 = !DILocation(line: 201, column: 43, scope: !561)
!563 = !DILocation(line: 201, column: 22, scope: !561)
!564 = !DILocation(line: 201, column: 20, scope: !561)
!565 = !DILocation(line: 202, column: 39, scope: !561)
!566 = !DILocation(line: 202, column: 41, scope: !561)
!567 = !DILocation(line: 202, column: 45, scope: !561)
!568 = !DILocation(line: 202, column: 22, scope: !561)
!569 = !DILocation(line: 202, column: 20, scope: !561)
!570 = !DILocation(line: 203, column: 11, scope: !561)
!571 = !DILocation(line: 206, column: 39, scope: !572)
!572 = distinct !DILexicalBlock(scope: !557, file: !1, line: 205, column: 11)
!573 = !DILocation(line: 206, column: 43, scope: !572)
!574 = !DILocation(line: 206, column: 22, scope: !572)
!575 = !DILocation(line: 206, column: 20, scope: !572)
!576 = !DILocation(line: 207, column: 39, scope: !572)
!577 = !DILocation(line: 207, column: 41, scope: !572)
!578 = !DILocation(line: 207, column: 45, scope: !572)
!579 = !DILocation(line: 207, column: 22, scope: !572)
!580 = !DILocation(line: 207, column: 20, scope: !572)
!581 = !DILocation(line: 210, column: 30, scope: !529)
!582 = !DILocation(line: 210, column: 29, scope: !529)
!583 = !DILocation(line: 210, column: 36, scope: !529)
!584 = !DILocation(line: 210, column: 35, scope: !529)
!585 = !DILocation(line: 210, column: 38, scope: !529)
!586 = !DILocation(line: 210, column: 16, scope: !529)
!587 = !DILocation(line: 210, column: 48, scope: !529)
!588 = !DILocation(line: 210, column: 42, scope: !529)
!589 = !DILocation(line: 210, column: 41, scope: !529)
!590 = !DILocation(line: 210, column: 14, scope: !529)
!591 = !DILocation(line: 211, column: 17, scope: !529)
!592 = !DILocation(line: 211, column: 21, scope: !529)
!593 = !DILocation(line: 211, column: 26, scope: !529)
!594 = !DILocation(line: 211, column: 25, scope: !529)
!595 = !DILocation(line: 211, column: 33, scope: !529)
!596 = !DILocation(line: 211, column: 38, scope: !529)
!597 = !DILocation(line: 211, column: 37, scope: !529)
!598 = !DILocation(line: 211, column: 31, scope: !529)
!599 = !DILocation(line: 211, column: 19, scope: !529)
!600 = !DILocation(line: 211, column: 14, scope: !529)
!601 = !DILocation(line: 212, column: 7, scope: !529)
!602 = !DILocation(line: 191, column: 45, scope: !603)
!603 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 2)
!604 = !DILocation(line: 191, column: 7, scope: !603)
!605 = distinct !{!605, !606}
!606 = !DILocation(line: 191, column: 7, scope: !521)
!607 = !DILocation(line: 214, column: 18, scope: !521)
!608 = !DILocation(line: 214, column: 20, scope: !521)
!609 = !DILocation(line: 214, column: 13, scope: !521)
!610 = !DILocation(line: 214, column: 26, scope: !521)
!611 = !DILocation(line: 214, column: 25, scope: !521)
!612 = !DILocation(line: 214, column: 10, scope: !521)
!613 = !DILocation(line: 215, column: 3, scope: !521)
!614 = !DILocation(line: 218, column: 14, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 218, column: 7)
!616 = distinct !DILexicalBlock(scope: !516, file: !1, line: 217, column: 3)
!617 = !DILocation(line: 218, column: 12, scope: !615)
!618 = !DILocation(line: 218, column: 18, scope: !619)
!619 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 1)
!620 = distinct !DILexicalBlock(scope: !615, file: !1, line: 218, column: 7)
!621 = !DILocation(line: 218, column: 20, scope: !619)
!622 = !DILocation(line: 218, column: 7, scope: !619)
!623 = !DILocation(line: 220, column: 18, scope: !624)
!624 = distinct !DILexicalBlock(scope: !620, file: !1, line: 219, column: 7)
!625 = !DILocation(line: 220, column: 18, scope: !626)
!626 = !DILexicalBlockFile(scope: !624, file: !1, discriminator: 1)
!627 = !DILocation(line: 220, column: 18, scope: !628)
!628 = !DILexicalBlockFile(scope: !624, file: !1, discriminator: 2)
!629 = !DILocation(line: 220, column: 18, scope: !630)
!630 = !DILexicalBlockFile(scope: !624, file: !1, discriminator: 3)
!631 = !DILocation(line: 220, column: 16, scope: !630)
!632 = !DILocation(line: 221, column: 26, scope: !633)
!633 = distinct !DILexicalBlock(scope: !624, file: !1, line: 221, column: 15)
!634 = !DILocation(line: 221, column: 20, scope: !633)
!635 = !DILocation(line: 221, column: 15, scope: !633)
!636 = !DILocation(line: 221, column: 31, scope: !633)
!637 = !DILocation(line: 221, column: 30, scope: !633)
!638 = !DILocation(line: 221, column: 38, scope: !633)
!639 = !DILocation(line: 221, column: 36, scope: !633)
!640 = !DILocation(line: 221, column: 15, scope: !624)
!641 = !DILocation(line: 222, column: 15, scope: !633)
!642 = !DILocation(line: 224, column: 34, scope: !624)
!643 = !DILocation(line: 224, column: 38, scope: !624)
!644 = !DILocation(line: 224, column: 17, scope: !624)
!645 = !DILocation(line: 224, column: 15, scope: !624)
!646 = !DILocation(line: 225, column: 35, scope: !624)
!647 = !DILocation(line: 225, column: 37, scope: !624)
!648 = !DILocation(line: 225, column: 41, scope: !624)
!649 = !DILocation(line: 225, column: 18, scope: !624)
!650 = !DILocation(line: 225, column: 16, scope: !624)
!651 = !DILocation(line: 226, column: 15, scope: !652)
!652 = distinct !DILexicalBlock(scope: !624, file: !1, line: 226, column: 15)
!653 = !DILocation(line: 226, column: 20, scope: !652)
!654 = !DILocation(line: 226, column: 15, scope: !624)
!655 = !DILocation(line: 228, column: 38, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !1, line: 227, column: 11)
!657 = !DILocation(line: 228, column: 42, scope: !656)
!658 = !DILocation(line: 228, column: 21, scope: !656)
!659 = !DILocation(line: 228, column: 19, scope: !656)
!660 = !DILocation(line: 229, column: 39, scope: !656)
!661 = !DILocation(line: 229, column: 41, scope: !656)
!662 = !DILocation(line: 229, column: 45, scope: !656)
!663 = !DILocation(line: 229, column: 22, scope: !656)
!664 = !DILocation(line: 229, column: 20, scope: !656)
!665 = !DILocation(line: 230, column: 11, scope: !656)
!666 = !DILocation(line: 233, column: 38, scope: !667)
!667 = distinct !DILexicalBlock(scope: !652, file: !1, line: 232, column: 11)
!668 = !DILocation(line: 233, column: 42, scope: !667)
!669 = !DILocation(line: 233, column: 21, scope: !667)
!670 = !DILocation(line: 233, column: 19, scope: !667)
!671 = !DILocation(line: 234, column: 39, scope: !667)
!672 = !DILocation(line: 234, column: 41, scope: !667)
!673 = !DILocation(line: 234, column: 45, scope: !667)
!674 = !DILocation(line: 234, column: 22, scope: !667)
!675 = !DILocation(line: 234, column: 20, scope: !667)
!676 = !DILocation(line: 237, column: 31, scope: !624)
!677 = !DILocation(line: 237, column: 36, scope: !624)
!678 = !DILocation(line: 237, column: 30, scope: !624)
!679 = !DILocation(line: 237, column: 29, scope: !624)
!680 = !DILocation(line: 237, column: 40, scope: !624)
!681 = !DILocation(line: 237, column: 39, scope: !624)
!682 = !DILocation(line: 237, column: 16, scope: !624)
!683 = !DILocation(line: 237, column: 50, scope: !624)
!684 = !DILocation(line: 237, column: 44, scope: !624)
!685 = !DILocation(line: 237, column: 43, scope: !624)
!686 = !DILocation(line: 237, column: 14, scope: !624)
!687 = !DILocation(line: 238, column: 17, scope: !624)
!688 = !DILocation(line: 238, column: 21, scope: !624)
!689 = !DILocation(line: 238, column: 25, scope: !624)
!690 = !DILocation(line: 238, column: 24, scope: !624)
!691 = !DILocation(line: 238, column: 32, scope: !624)
!692 = !DILocation(line: 238, column: 37, scope: !624)
!693 = !DILocation(line: 238, column: 36, scope: !624)
!694 = !DILocation(line: 238, column: 30, scope: !624)
!695 = !DILocation(line: 238, column: 19, scope: !624)
!696 = !DILocation(line: 238, column: 14, scope: !624)
!697 = !DILocation(line: 239, column: 7, scope: !624)
!698 = !DILocation(line: 218, column: 45, scope: !699)
!699 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 2)
!700 = !DILocation(line: 218, column: 7, scope: !699)
!701 = distinct !{!701, !702}
!702 = !DILocation(line: 218, column: 7, scope: !616)
!703 = !DILocation(line: 241, column: 18, scope: !616)
!704 = !DILocation(line: 241, column: 20, scope: !616)
!705 = !DILocation(line: 241, column: 13, scope: !616)
!706 = !DILocation(line: 241, column: 26, scope: !616)
!707 = !DILocation(line: 241, column: 25, scope: !616)
!708 = !DILocation(line: 241, column: 10, scope: !616)
!709 = !DILocation(line: 244, column: 17, scope: !377)
!710 = !DILocation(line: 244, column: 3, scope: !377)
!711 = !DILocation(line: 244, column: 11, scope: !377)
!712 = !DILocation(line: 244, column: 15, scope: !377)
!713 = !DILocation(line: 245, column: 3, scope: !377)
!714 = !DILocation(line: 245, column: 11, scope: !377)
!715 = !DILocation(line: 245, column: 15, scope: !377)
!716 = !DILocation(line: 246, column: 17, scope: !377)
!717 = !DILocation(line: 246, column: 12, scope: !377)
!718 = !DILocation(line: 246, column: 10, scope: !377)
!719 = !DILocation(line: 247, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !377, file: !1, line: 247, column: 7)
!721 = !DILocation(line: 247, column: 14, scope: !720)
!722 = !DILocation(line: 247, column: 7, scope: !377)
!723 = !DILocation(line: 248, column: 22, scope: !720)
!724 = !DILocation(line: 248, column: 7, scope: !720)
!725 = !DILocation(line: 248, column: 15, scope: !720)
!726 = !DILocation(line: 248, column: 19, scope: !720)
!727 = !DILocation(line: 250, column: 3, scope: !377)
!728 = !DILocation(line: 251, column: 1, scope: !377)
!729 = distinct !DISubprogram(name: "gsl_sf_mathieu_Mc_array", scope: !1, file: !1, line: 254, type: !730, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!730 = !DISubroutineType(types: !731)
!731 = !{!48, !48, !48, !48, !49, !49, !732, !747}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !734, line: 60, baseType: !735)
!734 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/fpcc/gsl-2.5/specfunc")
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 42, size: 1024, align: 64, elements: !736)
!736 = !{!737, !741, !742, !743, !744, !745, !746, !748, !749, !750, !751, !752, !753, !754, !772, !784}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !735, file: !734, line: 44, baseType: !738, size: 64, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !739, line: 62, baseType: !740)
!739 = !DIFile(filename: "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include/stddef.h", directory: "/fpcc/gsl-2.5/specfunc")
!740 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !735, file: !734, line: 45, baseType: !738, size: 64, align: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !735, file: !734, line: 46, baseType: !738, size: 64, align: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !735, file: !734, line: 47, baseType: !48, size: 32, align: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !735, file: !734, line: 48, baseType: !49, size: 64, align: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !735, file: !734, line: 49, baseType: !49, size: 64, align: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !735, file: !734, line: 50, baseType: !747, size: 64, align: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !735, file: !734, line: 51, baseType: !747, size: 64, align: 64, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !735, file: !734, line: 52, baseType: !747, size: 64, align: 64, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !735, file: !734, line: 53, baseType: !747, size: 64, align: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !735, file: !734, line: 54, baseType: !747, size: 64, align: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !735, file: !734, line: 55, baseType: !747, size: 64, align: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !735, file: !734, line: 56, baseType: !747, size: 64, align: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !735, file: !734, line: 57, baseType: !755, size: 64, align: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !757, line: 50, baseType: !758)
!757 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !757, line: 42, size: 320, align: 64, elements: !759)
!759 = !{!760, !761, !762, !763, !771}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !758, file: !757, line: 44, baseType: !738, size: 64, align: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !758, file: !757, line: 45, baseType: !738, size: 64, align: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !758, file: !757, line: 46, baseType: !747, size: 64, align: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !758, file: !757, line: 47, baseType: !764, size: 64, align: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64, align: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !766, line: 44, baseType: !767)
!766 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !766, line: 38, size: 128, align: 64, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !767, file: !766, line: 40, baseType: !738, size: 64, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !767, file: !766, line: 41, baseType: !747, size: 64, align: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !758, file: !757, line: 48, baseType: !48, size: 32, align: 32, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !735, file: !734, line: 58, baseType: !773, size: 64, align: 64, offset: 896)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64, align: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !775, line: 50, baseType: !776)
!775 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 42, size: 384, align: 64, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !776, file: !775, line: 44, baseType: !738, size: 64, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !776, file: !775, line: 45, baseType: !738, size: 64, align: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !776, file: !775, line: 46, baseType: !738, size: 64, align: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !776, file: !775, line: 47, baseType: !747, size: 64, align: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !776, file: !775, line: 48, baseType: !764, size: 64, align: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !776, file: !775, line: 49, baseType: !48, size: 32, align: 32, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !735, file: !734, line: 59, baseType: !785, size: 64, align: 64, offset: 960)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !787, line: 54, baseType: !788)
!787 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/fpcc/gsl-2.5/specfunc")
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !787, line: 48, size: 320, align: 64, elements: !789)
!789 = !{!790, !791, !792, !793, !794}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !788, file: !787, line: 49, baseType: !738, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !788, file: !787, line: 50, baseType: !747, size: 64, align: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !788, file: !787, line: 51, baseType: !747, size: 64, align: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !788, file: !787, line: 52, baseType: !747, size: 64, align: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !788, file: !787, line: 53, baseType: !747, size: 64, align: 64, offset: 256)
!795 = !DILocalVariable(name: "kind", arg: 1, scope: !729, file: !1, line: 254, type: !48)
!796 = !DILocation(line: 254, column: 33, scope: !729)
!797 = !DILocalVariable(name: "nmin", arg: 2, scope: !729, file: !1, line: 254, type: !48)
!798 = !DILocation(line: 254, column: 43, scope: !729)
!799 = !DILocalVariable(name: "nmax", arg: 3, scope: !729, file: !1, line: 254, type: !48)
!800 = !DILocation(line: 254, column: 53, scope: !729)
!801 = !DILocalVariable(name: "qq", arg: 4, scope: !729, file: !1, line: 254, type: !49)
!802 = !DILocation(line: 254, column: 66, scope: !729)
!803 = !DILocalVariable(name: "zz", arg: 5, scope: !729, file: !1, line: 255, type: !49)
!804 = !DILocation(line: 255, column: 36, scope: !729)
!805 = !DILocalVariable(name: "work", arg: 6, scope: !729, file: !1, line: 255, type: !732)
!806 = !DILocation(line: 255, column: 66, scope: !729)
!807 = !DILocalVariable(name: "result_array", arg: 7, scope: !729, file: !1, line: 256, type: !747)
!808 = !DILocation(line: 256, column: 36, scope: !729)
!809 = !DILocalVariable(name: "even_odd", scope: !729, file: !1, line: 258, type: !48)
!810 = !DILocation(line: 258, column: 7, scope: !729)
!811 = !DILocalVariable(name: "order", scope: !729, file: !1, line: 258, type: !48)
!812 = !DILocation(line: 258, column: 17, scope: !729)
!813 = !DILocalVariable(name: "ii", scope: !729, file: !1, line: 258, type: !48)
!814 = !DILocation(line: 258, column: 24, scope: !729)
!815 = !DILocalVariable(name: "kk", scope: !729, file: !1, line: 258, type: !48)
!816 = !DILocation(line: 258, column: 28, scope: !729)
!817 = !DILocalVariable(name: "mm", scope: !729, file: !1, line: 258, type: !48)
!818 = !DILocation(line: 258, column: 32, scope: !729)
!819 = !DILocalVariable(name: "status", scope: !729, file: !1, line: 258, type: !48)
!820 = !DILocation(line: 258, column: 36, scope: !729)
!821 = !DILocalVariable(name: "maxerr", scope: !729, file: !1, line: 259, type: !49)
!822 = !DILocation(line: 259, column: 10, scope: !729)
!823 = !DILocalVariable(name: "amax", scope: !729, file: !1, line: 259, type: !49)
!824 = !DILocation(line: 259, column: 26, scope: !729)
!825 = !DILocalVariable(name: "pi", scope: !729, file: !1, line: 259, type: !49)
!826 = !DILocation(line: 259, column: 32, scope: !729)
!827 = !DILocalVariable(name: "fn", scope: !729, file: !1, line: 259, type: !49)
!828 = !DILocation(line: 259, column: 43, scope: !729)
!829 = !DILocalVariable(name: "coeff", scope: !729, file: !1, line: 260, type: !88)
!830 = !DILocation(line: 260, column: 10, scope: !729)
!831 = !DILocalVariable(name: "fc", scope: !729, file: !1, line: 260, type: !49)
!832 = !DILocation(line: 260, column: 39, scope: !729)
!833 = !DILocalVariable(name: "j1c", scope: !729, file: !1, line: 261, type: !49)
!834 = !DILocation(line: 261, column: 10, scope: !729)
!835 = !DILocalVariable(name: "z2c", scope: !729, file: !1, line: 261, type: !49)
!836 = !DILocation(line: 261, column: 15, scope: !729)
!837 = !DILocalVariable(name: "j1pc", scope: !729, file: !1, line: 261, type: !49)
!838 = !DILocation(line: 261, column: 20, scope: !729)
!839 = !DILocalVariable(name: "z2pc", scope: !729, file: !1, line: 261, type: !49)
!840 = !DILocation(line: 261, column: 26, scope: !729)
!841 = !DILocalVariable(name: "u1", scope: !729, file: !1, line: 262, type: !49)
!842 = !DILocation(line: 262, column: 10, scope: !729)
!843 = !DILocalVariable(name: "u2", scope: !729, file: !1, line: 262, type: !49)
!844 = !DILocation(line: 262, column: 14, scope: !729)
!845 = !DILocalVariable(name: "aa", scope: !729, file: !1, line: 263, type: !747)
!846 = !DILocation(line: 263, column: 11, scope: !729)
!847 = !DILocation(line: 263, column: 16, scope: !729)
!848 = !DILocation(line: 263, column: 22, scope: !729)
!849 = !DILocation(line: 267, column: 10, scope: !850)
!850 = distinct !DILexicalBlock(scope: !729, file: !1, line: 267, column: 3)
!851 = !DILocation(line: 267, column: 8, scope: !850)
!852 = !DILocation(line: 267, column: 14, scope: !853)
!853 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 1)
!854 = distinct !DILexicalBlock(scope: !850, file: !1, line: 267, column: 3)
!855 = !DILocation(line: 267, column: 17, scope: !853)
!856 = !DILocation(line: 267, column: 22, scope: !853)
!857 = !DILocation(line: 267, column: 21, scope: !853)
!858 = !DILocation(line: 267, column: 26, scope: !853)
!859 = !DILocation(line: 267, column: 16, scope: !853)
!860 = !DILocation(line: 267, column: 3, scope: !853)
!861 = !DILocation(line: 268, column: 20, scope: !854)
!862 = !DILocation(line: 268, column: 7, scope: !854)
!863 = !DILocation(line: 268, column: 24, scope: !854)
!864 = !DILocation(line: 267, column: 32, scope: !865)
!865 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 2)
!866 = !DILocation(line: 267, column: 3, scope: !865)
!867 = distinct !{!867, !868}
!868 = !DILocation(line: 267, column: 3, scope: !729)
!869 = !DILocation(line: 271, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !729, file: !1, line: 271, column: 7)
!871 = !DILocation(line: 271, column: 10, scope: !870)
!872 = !DILocation(line: 271, column: 7, scope: !729)
!873 = !DILocation(line: 273, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !1, line: 272, column: 3)
!875 = distinct !{!875, !873}
!876 = !DILocation(line: 273, column: 7, scope: !877)
!877 = !DILexicalBlockFile(scope: !878, file: !1, discriminator: 1)
!878 = distinct !DILexicalBlock(scope: !874, file: !1, line: 273, column: 7)
!879 = !DILocation(line: 274, column: 3, scope: !874)
!880 = !DILocation(line: 275, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !729, file: !1, line: 275, column: 7)
!882 = !DILocation(line: 275, column: 12, scope: !881)
!883 = !DILocation(line: 275, column: 16, scope: !881)
!884 = !DILocation(line: 275, column: 19, scope: !885)
!885 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 1)
!886 = !DILocation(line: 275, column: 24, scope: !885)
!887 = !DILocation(line: 275, column: 7, scope: !885)
!888 = !DILocation(line: 277, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !881, file: !1, line: 276, column: 3)
!890 = distinct !{!890, !888}
!891 = !DILocation(line: 277, column: 7, scope: !892)
!892 = !DILexicalBlockFile(scope: !893, file: !1, discriminator: 1)
!893 = distinct !DILexicalBlock(scope: !889, file: !1, line: 277, column: 7)
!894 = !DILocation(line: 278, column: 3, scope: !889)
!895 = !DILocation(line: 280, column: 6, scope: !729)
!896 = !DILocation(line: 281, column: 8, scope: !729)
!897 = !DILocation(line: 282, column: 13, scope: !729)
!898 = !DILocation(line: 282, column: 8, scope: !729)
!899 = !DILocation(line: 282, column: 26, scope: !729)
!900 = !DILocation(line: 282, column: 25, scope: !729)
!901 = !DILocation(line: 282, column: 17, scope: !902)
!902 = !DILexicalBlockFile(scope: !729, file: !1, discriminator: 1)
!903 = !DILocation(line: 282, column: 16, scope: !729)
!904 = !DILocation(line: 282, column: 6, scope: !729)
!905 = !DILocation(line: 283, column: 13, scope: !729)
!906 = !DILocation(line: 283, column: 8, scope: !729)
!907 = !DILocation(line: 283, column: 21, scope: !729)
!908 = !DILocation(line: 283, column: 17, scope: !902)
!909 = !DILocation(line: 283, column: 16, scope: !729)
!910 = !DILocation(line: 283, column: 6, scope: !729)
!911 = !DILocation(line: 286, column: 29, scope: !729)
!912 = !DILocation(line: 286, column: 35, scope: !729)
!913 = !DILocation(line: 286, column: 39, scope: !729)
!914 = !DILocation(line: 286, column: 45, scope: !729)
!915 = !DILocation(line: 286, column: 3, scope: !729)
!916 = !DILocation(line: 288, column: 10, scope: !917)
!917 = distinct !DILexicalBlock(scope: !729, file: !1, line: 288, column: 3)
!918 = !DILocation(line: 288, column: 20, scope: !917)
!919 = !DILocation(line: 288, column: 19, scope: !917)
!920 = !DILocation(line: 288, column: 8, scope: !917)
!921 = !DILocation(line: 288, column: 26, scope: !922)
!922 = !DILexicalBlockFile(scope: !923, file: !1, discriminator: 1)
!923 = distinct !DILexicalBlock(scope: !917, file: !1, line: 288, column: 3)
!924 = !DILocation(line: 288, column: 33, scope: !922)
!925 = !DILocation(line: 288, column: 31, scope: !922)
!926 = !DILocation(line: 288, column: 3, scope: !922)
!927 = !DILocation(line: 290, column: 10, scope: !928)
!928 = distinct !DILexicalBlock(scope: !923, file: !1, line: 289, column: 3)
!929 = !DILocation(line: 291, column: 16, scope: !928)
!930 = !DILocation(line: 292, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !1, line: 292, column: 11)
!932 = !DILocation(line: 292, column: 17, scope: !931)
!933 = !DILocation(line: 292, column: 21, scope: !931)
!934 = !DILocation(line: 292, column: 11, scope: !928)
!935 = !DILocation(line: 293, column: 20, scope: !931)
!936 = !DILocation(line: 293, column: 11, scope: !931)
!937 = !DILocation(line: 296, column: 39, scope: !928)
!938 = !DILocation(line: 296, column: 46, scope: !928)
!939 = !DILocation(line: 296, column: 53, scope: !928)
!940 = !DILocation(line: 296, column: 50, scope: !928)
!941 = !DILocation(line: 296, column: 61, scope: !928)
!942 = !DILocation(line: 296, column: 16, scope: !928)
!943 = !DILocation(line: 296, column: 14, scope: !928)
!944 = !DILocation(line: 297, column: 11, scope: !945)
!945 = distinct !DILexicalBlock(scope: !928, file: !1, line: 297, column: 11)
!946 = !DILocation(line: 297, column: 18, scope: !945)
!947 = !DILocation(line: 297, column: 11, scope: !928)
!948 = !DILocation(line: 299, column: 18, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !1, line: 298, column: 7)
!950 = !DILocation(line: 299, column: 11, scope: !949)
!951 = !DILocation(line: 302, column: 11, scope: !952)
!952 = distinct !DILexicalBlock(scope: !928, file: !1, line: 302, column: 11)
!953 = !DILocation(line: 302, column: 20, scope: !952)
!954 = !DILocation(line: 302, column: 11, scope: !928)
!955 = !DILocation(line: 304, column: 18, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !1, line: 304, column: 11)
!957 = distinct !DILexicalBlock(scope: !952, file: !1, line: 303, column: 7)
!958 = !DILocation(line: 304, column: 16, scope: !956)
!959 = !DILocation(line: 304, column: 22, scope: !960)
!960 = !DILexicalBlockFile(scope: !961, file: !1, discriminator: 1)
!961 = distinct !DILexicalBlock(scope: !956, file: !1, line: 304, column: 11)
!962 = !DILocation(line: 304, column: 24, scope: !960)
!963 = !DILocation(line: 304, column: 11, scope: !960)
!964 = !DILocation(line: 306, column: 22, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !1, line: 305, column: 11)
!966 = !DILocation(line: 306, column: 22, scope: !967)
!967 = !DILexicalBlockFile(scope: !965, file: !1, discriminator: 1)
!968 = !DILocation(line: 306, column: 22, scope: !969)
!969 = !DILexicalBlockFile(scope: !965, file: !1, discriminator: 2)
!970 = !DILocation(line: 306, column: 22, scope: !971)
!971 = !DILexicalBlockFile(scope: !965, file: !1, discriminator: 3)
!972 = !DILocation(line: 306, column: 20, scope: !971)
!973 = !DILocation(line: 307, column: 30, scope: !974)
!974 = distinct !DILexicalBlock(scope: !965, file: !1, line: 307, column: 19)
!975 = !DILocation(line: 307, column: 24, scope: !974)
!976 = !DILocation(line: 307, column: 19, scope: !974)
!977 = !DILocation(line: 307, column: 35, scope: !974)
!978 = !DILocation(line: 307, column: 34, scope: !974)
!979 = !DILocation(line: 307, column: 42, scope: !974)
!980 = !DILocation(line: 307, column: 40, scope: !974)
!981 = !DILocation(line: 307, column: 19, scope: !965)
!982 = !DILocation(line: 308, column: 19, scope: !974)
!983 = !DILocation(line: 310, column: 38, scope: !965)
!984 = !DILocation(line: 310, column: 42, scope: !965)
!985 = !DILocation(line: 310, column: 21, scope: !965)
!986 = !DILocation(line: 310, column: 19, scope: !965)
!987 = !DILocation(line: 311, column: 19, scope: !988)
!988 = distinct !DILexicalBlock(scope: !965, file: !1, line: 311, column: 19)
!989 = !DILocation(line: 311, column: 24, scope: !988)
!990 = !DILocation(line: 311, column: 19, scope: !965)
!991 = !DILocation(line: 313, column: 42, scope: !992)
!992 = distinct !DILexicalBlock(scope: !988, file: !1, line: 312, column: 15)
!993 = !DILocation(line: 313, column: 46, scope: !992)
!994 = !DILocation(line: 313, column: 25, scope: !992)
!995 = !DILocation(line: 313, column: 23, scope: !992)
!996 = !DILocation(line: 314, column: 15, scope: !992)
!997 = !DILocation(line: 317, column: 42, scope: !998)
!998 = distinct !DILexicalBlock(scope: !988, file: !1, line: 316, column: 15)
!999 = !DILocation(line: 317, column: 46, scope: !998)
!1000 = !DILocation(line: 317, column: 25, scope: !998)
!1001 = !DILocation(line: 317, column: 23, scope: !998)
!1002 = !DILocation(line: 320, column: 34, scope: !965)
!1003 = !DILocation(line: 320, column: 33, scope: !965)
!1004 = !DILocation(line: 320, column: 40, scope: !965)
!1005 = !DILocation(line: 320, column: 39, scope: !965)
!1006 = !DILocation(line: 320, column: 20, scope: !965)
!1007 = !DILocation(line: 320, column: 50, scope: !965)
!1008 = !DILocation(line: 320, column: 44, scope: !965)
!1009 = !DILocation(line: 320, column: 43, scope: !965)
!1010 = !DILocation(line: 320, column: 18, scope: !965)
!1011 = !DILocation(line: 321, column: 21, scope: !965)
!1012 = !DILocation(line: 321, column: 24, scope: !965)
!1013 = !DILocation(line: 321, column: 23, scope: !965)
!1014 = !DILocation(line: 321, column: 28, scope: !965)
!1015 = !DILocation(line: 321, column: 27, scope: !965)
!1016 = !DILocation(line: 321, column: 18, scope: !965)
!1017 = !DILocation(line: 322, column: 11, scope: !965)
!1018 = !DILocation(line: 304, column: 49, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !961, file: !1, discriminator: 2)
!1020 = !DILocation(line: 304, column: 11, scope: !1019)
!1021 = distinct !{!1021, !1022}
!1022 = !DILocation(line: 304, column: 11, scope: !957)
!1023 = !DILocation(line: 324, column: 22, scope: !957)
!1024 = !DILocation(line: 324, column: 24, scope: !957)
!1025 = !DILocation(line: 324, column: 17, scope: !957)
!1026 = !DILocation(line: 324, column: 30, scope: !957)
!1027 = !DILocation(line: 324, column: 29, scope: !957)
!1028 = !DILocation(line: 324, column: 14, scope: !957)
!1029 = !DILocation(line: 325, column: 7, scope: !957)
!1030 = !DILocation(line: 328, column: 18, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 328, column: 11)
!1032 = distinct !DILexicalBlock(scope: !952, file: !1, line: 327, column: 7)
!1033 = !DILocation(line: 328, column: 16, scope: !1031)
!1034 = !DILocation(line: 328, column: 22, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1036, file: !1, discriminator: 1)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 328, column: 11)
!1037 = !DILocation(line: 328, column: 24, scope: !1035)
!1038 = !DILocation(line: 328, column: 11, scope: !1035)
!1039 = !DILocation(line: 330, column: 22, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 329, column: 11)
!1041 = !DILocation(line: 330, column: 22, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1040, file: !1, discriminator: 1)
!1043 = !DILocation(line: 330, column: 22, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1040, file: !1, discriminator: 2)
!1045 = !DILocation(line: 330, column: 22, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1040, file: !1, discriminator: 3)
!1047 = !DILocation(line: 330, column: 20, scope: !1046)
!1048 = !DILocation(line: 331, column: 30, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 331, column: 19)
!1050 = !DILocation(line: 331, column: 24, scope: !1049)
!1051 = !DILocation(line: 331, column: 19, scope: !1049)
!1052 = !DILocation(line: 331, column: 35, scope: !1049)
!1053 = !DILocation(line: 331, column: 34, scope: !1049)
!1054 = !DILocation(line: 331, column: 42, scope: !1049)
!1055 = !DILocation(line: 331, column: 40, scope: !1049)
!1056 = !DILocation(line: 331, column: 19, scope: !1040)
!1057 = !DILocation(line: 332, column: 19, scope: !1049)
!1058 = !DILocation(line: 334, column: 38, scope: !1040)
!1059 = !DILocation(line: 334, column: 42, scope: !1040)
!1060 = !DILocation(line: 334, column: 21, scope: !1040)
!1061 = !DILocation(line: 334, column: 19, scope: !1040)
!1062 = !DILocation(line: 335, column: 39, scope: !1040)
!1063 = !DILocation(line: 335, column: 41, scope: !1040)
!1064 = !DILocation(line: 335, column: 45, scope: !1040)
!1065 = !DILocation(line: 335, column: 22, scope: !1040)
!1066 = !DILocation(line: 335, column: 20, scope: !1040)
!1067 = !DILocation(line: 336, column: 19, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 336, column: 19)
!1069 = !DILocation(line: 336, column: 24, scope: !1068)
!1070 = !DILocation(line: 336, column: 19, scope: !1040)
!1071 = !DILocation(line: 338, column: 42, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 337, column: 15)
!1073 = !DILocation(line: 338, column: 46, scope: !1072)
!1074 = !DILocation(line: 338, column: 25, scope: !1072)
!1075 = !DILocation(line: 338, column: 23, scope: !1072)
!1076 = !DILocation(line: 339, column: 43, scope: !1072)
!1077 = !DILocation(line: 339, column: 45, scope: !1072)
!1078 = !DILocation(line: 339, column: 49, scope: !1072)
!1079 = !DILocation(line: 339, column: 26, scope: !1072)
!1080 = !DILocation(line: 339, column: 24, scope: !1072)
!1081 = !DILocation(line: 340, column: 15, scope: !1072)
!1082 = !DILocation(line: 343, column: 42, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 342, column: 15)
!1084 = !DILocation(line: 343, column: 46, scope: !1083)
!1085 = !DILocation(line: 343, column: 25, scope: !1083)
!1086 = !DILocation(line: 343, column: 23, scope: !1083)
!1087 = !DILocation(line: 344, column: 43, scope: !1083)
!1088 = !DILocation(line: 344, column: 45, scope: !1083)
!1089 = !DILocation(line: 344, column: 49, scope: !1083)
!1090 = !DILocation(line: 344, column: 26, scope: !1083)
!1091 = !DILocation(line: 344, column: 24, scope: !1083)
!1092 = !DILocation(line: 346, column: 35, scope: !1040)
!1093 = !DILocation(line: 346, column: 40, scope: !1040)
!1094 = !DILocation(line: 346, column: 34, scope: !1040)
!1095 = !DILocation(line: 346, column: 33, scope: !1040)
!1096 = !DILocation(line: 346, column: 44, scope: !1040)
!1097 = !DILocation(line: 346, column: 43, scope: !1040)
!1098 = !DILocation(line: 346, column: 20, scope: !1040)
!1099 = !DILocation(line: 346, column: 54, scope: !1040)
!1100 = !DILocation(line: 346, column: 48, scope: !1040)
!1101 = !DILocation(line: 346, column: 47, scope: !1040)
!1102 = !DILocation(line: 346, column: 18, scope: !1040)
!1103 = !DILocation(line: 347, column: 21, scope: !1040)
!1104 = !DILocation(line: 347, column: 25, scope: !1040)
!1105 = !DILocation(line: 347, column: 29, scope: !1040)
!1106 = !DILocation(line: 347, column: 28, scope: !1040)
!1107 = !DILocation(line: 347, column: 36, scope: !1040)
!1108 = !DILocation(line: 347, column: 41, scope: !1040)
!1109 = !DILocation(line: 347, column: 40, scope: !1040)
!1110 = !DILocation(line: 347, column: 34, scope: !1040)
!1111 = !DILocation(line: 347, column: 23, scope: !1040)
!1112 = !DILocation(line: 347, column: 18, scope: !1040)
!1113 = !DILocation(line: 348, column: 11, scope: !1040)
!1114 = !DILocation(line: 328, column: 49, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1036, file: !1, discriminator: 2)
!1116 = !DILocation(line: 328, column: 11, scope: !1115)
!1117 = distinct !{!1117, !1118}
!1118 = !DILocation(line: 328, column: 11, scope: !1032)
!1119 = !DILocation(line: 350, column: 22, scope: !1032)
!1120 = !DILocation(line: 350, column: 24, scope: !1032)
!1121 = !DILocation(line: 350, column: 17, scope: !1032)
!1122 = !DILocation(line: 350, column: 30, scope: !1032)
!1123 = !DILocation(line: 350, column: 29, scope: !1032)
!1124 = !DILocation(line: 350, column: 14, scope: !1032)
!1125 = !DILocation(line: 353, column: 26, scope: !928)
!1126 = !DILocation(line: 353, column: 20, scope: !928)
!1127 = !DILocation(line: 353, column: 7, scope: !928)
!1128 = !DILocation(line: 353, column: 24, scope: !928)
!1129 = !DILocation(line: 354, column: 3, scope: !928)
!1130 = !DILocation(line: 288, column: 41, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !923, file: !1, discriminator: 2)
!1132 = !DILocation(line: 288, column: 50, scope: !1131)
!1133 = !DILocation(line: 288, column: 3, scope: !1131)
!1134 = distinct !{!1134, !1135}
!1135 = !DILocation(line: 288, column: 3, scope: !729)
!1136 = !DILocation(line: 356, column: 3, scope: !729)
!1137 = !DILocation(line: 357, column: 1, scope: !729)
!1138 = distinct !DISubprogram(name: "gsl_sf_mathieu_Ms_array", scope: !1, file: !1, line: 360, type: !730, isLocal: false, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1139 = !DILocalVariable(name: "kind", arg: 1, scope: !1138, file: !1, line: 360, type: !48)
!1140 = !DILocation(line: 360, column: 33, scope: !1138)
!1141 = !DILocalVariable(name: "nmin", arg: 2, scope: !1138, file: !1, line: 360, type: !48)
!1142 = !DILocation(line: 360, column: 43, scope: !1138)
!1143 = !DILocalVariable(name: "nmax", arg: 3, scope: !1138, file: !1, line: 360, type: !48)
!1144 = !DILocation(line: 360, column: 53, scope: !1138)
!1145 = !DILocalVariable(name: "qq", arg: 4, scope: !1138, file: !1, line: 360, type: !49)
!1146 = !DILocation(line: 360, column: 66, scope: !1138)
!1147 = !DILocalVariable(name: "zz", arg: 5, scope: !1138, file: !1, line: 361, type: !49)
!1148 = !DILocation(line: 361, column: 36, scope: !1138)
!1149 = !DILocalVariable(name: "work", arg: 6, scope: !1138, file: !1, line: 361, type: !732)
!1150 = !DILocation(line: 361, column: 66, scope: !1138)
!1151 = !DILocalVariable(name: "result_array", arg: 7, scope: !1138, file: !1, line: 362, type: !747)
!1152 = !DILocation(line: 362, column: 36, scope: !1138)
!1153 = !DILocalVariable(name: "even_odd", scope: !1138, file: !1, line: 364, type: !48)
!1154 = !DILocation(line: 364, column: 7, scope: !1138)
!1155 = !DILocalVariable(name: "order", scope: !1138, file: !1, line: 364, type: !48)
!1156 = !DILocation(line: 364, column: 17, scope: !1138)
!1157 = !DILocalVariable(name: "ii", scope: !1138, file: !1, line: 364, type: !48)
!1158 = !DILocation(line: 364, column: 24, scope: !1138)
!1159 = !DILocalVariable(name: "kk", scope: !1138, file: !1, line: 364, type: !48)
!1160 = !DILocation(line: 364, column: 28, scope: !1138)
!1161 = !DILocalVariable(name: "mm", scope: !1138, file: !1, line: 364, type: !48)
!1162 = !DILocation(line: 364, column: 32, scope: !1138)
!1163 = !DILocalVariable(name: "status", scope: !1138, file: !1, line: 364, type: !48)
!1164 = !DILocation(line: 364, column: 36, scope: !1138)
!1165 = !DILocalVariable(name: "maxerr", scope: !1138, file: !1, line: 365, type: !49)
!1166 = !DILocation(line: 365, column: 10, scope: !1138)
!1167 = !DILocalVariable(name: "amax", scope: !1138, file: !1, line: 365, type: !49)
!1168 = !DILocation(line: 365, column: 26, scope: !1138)
!1169 = !DILocalVariable(name: "pi", scope: !1138, file: !1, line: 365, type: !49)
!1170 = !DILocation(line: 365, column: 32, scope: !1138)
!1171 = !DILocalVariable(name: "fn", scope: !1138, file: !1, line: 365, type: !49)
!1172 = !DILocation(line: 365, column: 43, scope: !1138)
!1173 = !DILocalVariable(name: "coeff", scope: !1138, file: !1, line: 366, type: !88)
!1174 = !DILocation(line: 366, column: 10, scope: !1138)
!1175 = !DILocalVariable(name: "fc", scope: !1138, file: !1, line: 366, type: !49)
!1176 = !DILocation(line: 366, column: 39, scope: !1138)
!1177 = !DILocalVariable(name: "j1c", scope: !1138, file: !1, line: 367, type: !49)
!1178 = !DILocation(line: 367, column: 10, scope: !1138)
!1179 = !DILocalVariable(name: "z2c", scope: !1138, file: !1, line: 367, type: !49)
!1180 = !DILocation(line: 367, column: 15, scope: !1138)
!1181 = !DILocalVariable(name: "j1mc", scope: !1138, file: !1, line: 367, type: !49)
!1182 = !DILocation(line: 367, column: 20, scope: !1138)
!1183 = !DILocalVariable(name: "z2mc", scope: !1138, file: !1, line: 367, type: !49)
!1184 = !DILocation(line: 367, column: 26, scope: !1138)
!1185 = !DILocalVariable(name: "j1pc", scope: !1138, file: !1, line: 367, type: !49)
!1186 = !DILocation(line: 367, column: 32, scope: !1138)
!1187 = !DILocalVariable(name: "z2pc", scope: !1138, file: !1, line: 367, type: !49)
!1188 = !DILocation(line: 367, column: 38, scope: !1138)
!1189 = !DILocalVariable(name: "u1", scope: !1138, file: !1, line: 368, type: !49)
!1190 = !DILocation(line: 368, column: 10, scope: !1138)
!1191 = !DILocalVariable(name: "u2", scope: !1138, file: !1, line: 368, type: !49)
!1192 = !DILocation(line: 368, column: 14, scope: !1138)
!1193 = !DILocalVariable(name: "bb", scope: !1138, file: !1, line: 369, type: !747)
!1194 = !DILocation(line: 369, column: 11, scope: !1138)
!1195 = !DILocation(line: 369, column: 16, scope: !1138)
!1196 = !DILocation(line: 369, column: 22, scope: !1138)
!1197 = !DILocation(line: 373, column: 10, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 373, column: 3)
!1199 = !DILocation(line: 373, column: 8, scope: !1198)
!1200 = !DILocation(line: 373, column: 14, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 1)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 373, column: 3)
!1203 = !DILocation(line: 373, column: 17, scope: !1201)
!1204 = !DILocation(line: 373, column: 22, scope: !1201)
!1205 = !DILocation(line: 373, column: 21, scope: !1201)
!1206 = !DILocation(line: 373, column: 26, scope: !1201)
!1207 = !DILocation(line: 373, column: 16, scope: !1201)
!1208 = !DILocation(line: 373, column: 3, scope: !1201)
!1209 = !DILocation(line: 374, column: 20, scope: !1202)
!1210 = !DILocation(line: 374, column: 7, scope: !1202)
!1211 = !DILocation(line: 374, column: 24, scope: !1202)
!1212 = !DILocation(line: 373, column: 32, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 2)
!1214 = !DILocation(line: 373, column: 3, scope: !1213)
!1215 = distinct !{!1215, !1216}
!1216 = !DILocation(line: 373, column: 3, scope: !1138)
!1217 = !DILocation(line: 377, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 377, column: 7)
!1219 = !DILocation(line: 377, column: 10, scope: !1218)
!1220 = !DILocation(line: 377, column: 7, scope: !1138)
!1221 = !DILocation(line: 379, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 378, column: 3)
!1223 = distinct !{!1223, !1221}
!1224 = !DILocation(line: 379, column: 7, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1226, file: !1, discriminator: 1)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 379, column: 7)
!1227 = !DILocation(line: 380, column: 3, scope: !1222)
!1228 = !DILocation(line: 381, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 381, column: 7)
!1230 = !DILocation(line: 381, column: 12, scope: !1229)
!1231 = !DILocation(line: 381, column: 16, scope: !1229)
!1232 = !DILocation(line: 381, column: 19, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1229, file: !1, discriminator: 1)
!1234 = !DILocation(line: 381, column: 24, scope: !1233)
!1235 = !DILocation(line: 381, column: 7, scope: !1233)
!1236 = !DILocation(line: 383, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1229, file: !1, line: 382, column: 3)
!1238 = distinct !{!1238, !1236}
!1239 = !DILocation(line: 383, column: 7, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1241, file: !1, discriminator: 1)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 383, column: 7)
!1242 = !DILocation(line: 384, column: 3, scope: !1237)
!1243 = !DILocation(line: 386, column: 6, scope: !1138)
!1244 = !DILocation(line: 387, column: 8, scope: !1138)
!1245 = !DILocation(line: 388, column: 13, scope: !1138)
!1246 = !DILocation(line: 388, column: 8, scope: !1138)
!1247 = !DILocation(line: 388, column: 26, scope: !1138)
!1248 = !DILocation(line: 388, column: 25, scope: !1138)
!1249 = !DILocation(line: 388, column: 17, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1138, file: !1, discriminator: 1)
!1251 = !DILocation(line: 388, column: 16, scope: !1138)
!1252 = !DILocation(line: 388, column: 6, scope: !1138)
!1253 = !DILocation(line: 389, column: 13, scope: !1138)
!1254 = !DILocation(line: 389, column: 8, scope: !1138)
!1255 = !DILocation(line: 389, column: 21, scope: !1138)
!1256 = !DILocation(line: 389, column: 17, scope: !1250)
!1257 = !DILocation(line: 389, column: 16, scope: !1138)
!1258 = !DILocation(line: 389, column: 6, scope: !1138)
!1259 = !DILocation(line: 392, column: 29, scope: !1138)
!1260 = !DILocation(line: 392, column: 35, scope: !1138)
!1261 = !DILocation(line: 392, column: 39, scope: !1138)
!1262 = !DILocation(line: 392, column: 45, scope: !1138)
!1263 = !DILocation(line: 392, column: 3, scope: !1138)
!1264 = !DILocation(line: 394, column: 10, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 394, column: 3)
!1266 = !DILocation(line: 394, column: 20, scope: !1265)
!1267 = !DILocation(line: 394, column: 19, scope: !1265)
!1268 = !DILocation(line: 394, column: 8, scope: !1265)
!1269 = !DILocation(line: 394, column: 26, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1271, file: !1, discriminator: 1)
!1271 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 394, column: 3)
!1272 = !DILocation(line: 394, column: 33, scope: !1270)
!1273 = !DILocation(line: 394, column: 31, scope: !1270)
!1274 = !DILocation(line: 394, column: 3, scope: !1270)
!1275 = !DILocation(line: 396, column: 10, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 395, column: 3)
!1277 = !DILocation(line: 397, column: 16, scope: !1276)
!1278 = !DILocation(line: 398, column: 11, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 398, column: 11)
!1280 = !DILocation(line: 398, column: 17, scope: !1279)
!1281 = !DILocation(line: 398, column: 21, scope: !1279)
!1282 = !DILocation(line: 398, column: 11, scope: !1276)
!1283 = !DILocation(line: 399, column: 20, scope: !1279)
!1284 = !DILocation(line: 399, column: 11, scope: !1279)
!1285 = !DILocation(line: 402, column: 11, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 402, column: 11)
!1287 = !DILocation(line: 402, column: 17, scope: !1286)
!1288 = !DILocation(line: 402, column: 11, scope: !1276)
!1289 = !DILocation(line: 404, column: 24, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 403, column: 7)
!1291 = !DILocation(line: 404, column: 11, scope: !1290)
!1292 = !DILocation(line: 404, column: 28, scope: !1290)
!1293 = !DILocation(line: 405, column: 11, scope: !1290)
!1294 = !DILocation(line: 409, column: 39, scope: !1276)
!1295 = !DILocation(line: 409, column: 46, scope: !1276)
!1296 = !DILocation(line: 409, column: 53, scope: !1276)
!1297 = !DILocation(line: 409, column: 50, scope: !1276)
!1298 = !DILocation(line: 409, column: 61, scope: !1276)
!1299 = !DILocation(line: 409, column: 16, scope: !1276)
!1300 = !DILocation(line: 409, column: 14, scope: !1276)
!1301 = !DILocation(line: 410, column: 11, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 410, column: 11)
!1303 = !DILocation(line: 410, column: 18, scope: !1302)
!1304 = !DILocation(line: 410, column: 11, scope: !1276)
!1305 = !DILocation(line: 412, column: 18, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 411, column: 7)
!1307 = !DILocation(line: 412, column: 11, scope: !1306)
!1308 = !DILocation(line: 415, column: 11, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 415, column: 11)
!1310 = !DILocation(line: 415, column: 20, scope: !1309)
!1311 = !DILocation(line: 415, column: 11, scope: !1276)
!1312 = !DILocation(line: 417, column: 18, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 417, column: 11)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 416, column: 7)
!1315 = !DILocation(line: 417, column: 16, scope: !1313)
!1316 = !DILocation(line: 417, column: 22, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1318, file: !1, discriminator: 1)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 417, column: 11)
!1319 = !DILocation(line: 417, column: 24, scope: !1317)
!1320 = !DILocation(line: 417, column: 11, scope: !1317)
!1321 = !DILocation(line: 419, column: 22, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 418, column: 11)
!1323 = !DILocation(line: 419, column: 22, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1322, file: !1, discriminator: 1)
!1325 = !DILocation(line: 419, column: 22, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1322, file: !1, discriminator: 2)
!1327 = !DILocation(line: 419, column: 22, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1322, file: !1, discriminator: 3)
!1329 = !DILocation(line: 419, column: 20, scope: !1328)
!1330 = !DILocation(line: 420, column: 30, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 420, column: 19)
!1332 = !DILocation(line: 420, column: 24, scope: !1331)
!1333 = !DILocation(line: 420, column: 19, scope: !1331)
!1334 = !DILocation(line: 420, column: 35, scope: !1331)
!1335 = !DILocation(line: 420, column: 34, scope: !1331)
!1336 = !DILocation(line: 420, column: 42, scope: !1331)
!1337 = !DILocation(line: 420, column: 40, scope: !1331)
!1338 = !DILocation(line: 420, column: 19, scope: !1322)
!1339 = !DILocation(line: 421, column: 19, scope: !1331)
!1340 = !DILocation(line: 423, column: 39, scope: !1322)
!1341 = !DILocation(line: 423, column: 43, scope: !1322)
!1342 = !DILocation(line: 423, column: 22, scope: !1322)
!1343 = !DILocation(line: 423, column: 20, scope: !1322)
!1344 = !DILocation(line: 424, column: 39, scope: !1322)
!1345 = !DILocation(line: 424, column: 41, scope: !1322)
!1346 = !DILocation(line: 424, column: 45, scope: !1322)
!1347 = !DILocation(line: 424, column: 22, scope: !1322)
!1348 = !DILocation(line: 424, column: 20, scope: !1322)
!1349 = !DILocation(line: 425, column: 19, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 425, column: 19)
!1351 = !DILocation(line: 425, column: 24, scope: !1350)
!1352 = !DILocation(line: 425, column: 19, scope: !1322)
!1353 = !DILocation(line: 427, column: 43, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 426, column: 15)
!1355 = !DILocation(line: 427, column: 47, scope: !1354)
!1356 = !DILocation(line: 427, column: 26, scope: !1354)
!1357 = !DILocation(line: 427, column: 24, scope: !1354)
!1358 = !DILocation(line: 428, column: 43, scope: !1354)
!1359 = !DILocation(line: 428, column: 45, scope: !1354)
!1360 = !DILocation(line: 428, column: 49, scope: !1354)
!1361 = !DILocation(line: 428, column: 26, scope: !1354)
!1362 = !DILocation(line: 428, column: 24, scope: !1354)
!1363 = !DILocation(line: 429, column: 15, scope: !1354)
!1364 = !DILocation(line: 432, column: 43, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 431, column: 15)
!1366 = !DILocation(line: 432, column: 47, scope: !1365)
!1367 = !DILocation(line: 432, column: 26, scope: !1365)
!1368 = !DILocation(line: 432, column: 24, scope: !1365)
!1369 = !DILocation(line: 433, column: 43, scope: !1365)
!1370 = !DILocation(line: 433, column: 45, scope: !1365)
!1371 = !DILocation(line: 433, column: 49, scope: !1365)
!1372 = !DILocation(line: 433, column: 26, scope: !1365)
!1373 = !DILocation(line: 433, column: 24, scope: !1365)
!1374 = !DILocation(line: 436, column: 34, scope: !1322)
!1375 = !DILocation(line: 436, column: 33, scope: !1322)
!1376 = !DILocation(line: 436, column: 40, scope: !1322)
!1377 = !DILocation(line: 436, column: 39, scope: !1322)
!1378 = !DILocation(line: 436, column: 42, scope: !1322)
!1379 = !DILocation(line: 436, column: 20, scope: !1322)
!1380 = !DILocation(line: 436, column: 52, scope: !1322)
!1381 = !DILocation(line: 436, column: 46, scope: !1322)
!1382 = !DILocation(line: 436, column: 45, scope: !1322)
!1383 = !DILocation(line: 436, column: 18, scope: !1322)
!1384 = !DILocation(line: 437, column: 21, scope: !1322)
!1385 = !DILocation(line: 437, column: 25, scope: !1322)
!1386 = !DILocation(line: 437, column: 30, scope: !1322)
!1387 = !DILocation(line: 437, column: 29, scope: !1322)
!1388 = !DILocation(line: 437, column: 37, scope: !1322)
!1389 = !DILocation(line: 437, column: 42, scope: !1322)
!1390 = !DILocation(line: 437, column: 41, scope: !1322)
!1391 = !DILocation(line: 437, column: 35, scope: !1322)
!1392 = !DILocation(line: 437, column: 23, scope: !1322)
!1393 = !DILocation(line: 437, column: 18, scope: !1322)
!1394 = !DILocation(line: 438, column: 11, scope: !1322)
!1395 = !DILocation(line: 417, column: 49, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1318, file: !1, discriminator: 2)
!1397 = !DILocation(line: 417, column: 11, scope: !1396)
!1398 = distinct !{!1398, !1399}
!1399 = !DILocation(line: 417, column: 11, scope: !1314)
!1400 = !DILocation(line: 440, column: 22, scope: !1314)
!1401 = !DILocation(line: 440, column: 24, scope: !1314)
!1402 = !DILocation(line: 440, column: 17, scope: !1314)
!1403 = !DILocation(line: 440, column: 30, scope: !1314)
!1404 = !DILocation(line: 440, column: 29, scope: !1314)
!1405 = !DILocation(line: 440, column: 14, scope: !1314)
!1406 = !DILocation(line: 441, column: 7, scope: !1314)
!1407 = !DILocation(line: 444, column: 18, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 444, column: 11)
!1409 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 443, column: 7)
!1410 = !DILocation(line: 444, column: 16, scope: !1408)
!1411 = !DILocation(line: 444, column: 22, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1413, file: !1, discriminator: 1)
!1413 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 444, column: 11)
!1414 = !DILocation(line: 444, column: 24, scope: !1412)
!1415 = !DILocation(line: 444, column: 11, scope: !1412)
!1416 = !DILocation(line: 446, column: 22, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !1, line: 445, column: 11)
!1418 = !DILocation(line: 446, column: 22, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1417, file: !1, discriminator: 1)
!1420 = !DILocation(line: 446, column: 22, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1417, file: !1, discriminator: 2)
!1422 = !DILocation(line: 446, column: 22, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1417, file: !1, discriminator: 3)
!1424 = !DILocation(line: 446, column: 20, scope: !1423)
!1425 = !DILocation(line: 447, column: 30, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 447, column: 19)
!1427 = !DILocation(line: 447, column: 24, scope: !1426)
!1428 = !DILocation(line: 447, column: 19, scope: !1426)
!1429 = !DILocation(line: 447, column: 35, scope: !1426)
!1430 = !DILocation(line: 447, column: 34, scope: !1426)
!1431 = !DILocation(line: 447, column: 42, scope: !1426)
!1432 = !DILocation(line: 447, column: 40, scope: !1426)
!1433 = !DILocation(line: 447, column: 19, scope: !1417)
!1434 = !DILocation(line: 448, column: 19, scope: !1426)
!1435 = !DILocation(line: 450, column: 38, scope: !1417)
!1436 = !DILocation(line: 450, column: 42, scope: !1417)
!1437 = !DILocation(line: 450, column: 21, scope: !1417)
!1438 = !DILocation(line: 450, column: 19, scope: !1417)
!1439 = !DILocation(line: 451, column: 39, scope: !1417)
!1440 = !DILocation(line: 451, column: 41, scope: !1417)
!1441 = !DILocation(line: 451, column: 45, scope: !1417)
!1442 = !DILocation(line: 451, column: 22, scope: !1417)
!1443 = !DILocation(line: 451, column: 20, scope: !1417)
!1444 = !DILocation(line: 452, column: 19, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 452, column: 19)
!1446 = !DILocation(line: 452, column: 24, scope: !1445)
!1447 = !DILocation(line: 452, column: 19, scope: !1417)
!1448 = !DILocation(line: 454, column: 42, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 453, column: 15)
!1450 = !DILocation(line: 454, column: 46, scope: !1449)
!1451 = !DILocation(line: 454, column: 25, scope: !1449)
!1452 = !DILocation(line: 454, column: 23, scope: !1449)
!1453 = !DILocation(line: 455, column: 43, scope: !1449)
!1454 = !DILocation(line: 455, column: 45, scope: !1449)
!1455 = !DILocation(line: 455, column: 49, scope: !1449)
!1456 = !DILocation(line: 455, column: 26, scope: !1449)
!1457 = !DILocation(line: 455, column: 24, scope: !1449)
!1458 = !DILocation(line: 456, column: 15, scope: !1449)
!1459 = !DILocation(line: 459, column: 42, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 458, column: 15)
!1461 = !DILocation(line: 459, column: 46, scope: !1460)
!1462 = !DILocation(line: 459, column: 25, scope: !1460)
!1463 = !DILocation(line: 459, column: 23, scope: !1460)
!1464 = !DILocation(line: 460, column: 43, scope: !1460)
!1465 = !DILocation(line: 460, column: 45, scope: !1460)
!1466 = !DILocation(line: 460, column: 49, scope: !1460)
!1467 = !DILocation(line: 460, column: 26, scope: !1460)
!1468 = !DILocation(line: 460, column: 24, scope: !1460)
!1469 = !DILocation(line: 463, column: 35, scope: !1417)
!1470 = !DILocation(line: 463, column: 40, scope: !1417)
!1471 = !DILocation(line: 463, column: 34, scope: !1417)
!1472 = !DILocation(line: 463, column: 33, scope: !1417)
!1473 = !DILocation(line: 463, column: 44, scope: !1417)
!1474 = !DILocation(line: 463, column: 43, scope: !1417)
!1475 = !DILocation(line: 463, column: 20, scope: !1417)
!1476 = !DILocation(line: 463, column: 54, scope: !1417)
!1477 = !DILocation(line: 463, column: 48, scope: !1417)
!1478 = !DILocation(line: 463, column: 47, scope: !1417)
!1479 = !DILocation(line: 463, column: 18, scope: !1417)
!1480 = !DILocation(line: 464, column: 21, scope: !1417)
!1481 = !DILocation(line: 464, column: 25, scope: !1417)
!1482 = !DILocation(line: 464, column: 29, scope: !1417)
!1483 = !DILocation(line: 464, column: 28, scope: !1417)
!1484 = !DILocation(line: 464, column: 36, scope: !1417)
!1485 = !DILocation(line: 464, column: 41, scope: !1417)
!1486 = !DILocation(line: 464, column: 40, scope: !1417)
!1487 = !DILocation(line: 464, column: 34, scope: !1417)
!1488 = !DILocation(line: 464, column: 23, scope: !1417)
!1489 = !DILocation(line: 464, column: 18, scope: !1417)
!1490 = !DILocation(line: 465, column: 11, scope: !1417)
!1491 = !DILocation(line: 444, column: 49, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1413, file: !1, discriminator: 2)
!1493 = !DILocation(line: 444, column: 11, scope: !1492)
!1494 = distinct !{!1494, !1495}
!1495 = !DILocation(line: 444, column: 11, scope: !1409)
!1496 = !DILocation(line: 467, column: 22, scope: !1409)
!1497 = !DILocation(line: 467, column: 24, scope: !1409)
!1498 = !DILocation(line: 467, column: 17, scope: !1409)
!1499 = !DILocation(line: 467, column: 30, scope: !1409)
!1500 = !DILocation(line: 467, column: 29, scope: !1409)
!1501 = !DILocation(line: 467, column: 14, scope: !1409)
!1502 = !DILocation(line: 470, column: 26, scope: !1276)
!1503 = !DILocation(line: 470, column: 20, scope: !1276)
!1504 = !DILocation(line: 470, column: 7, scope: !1276)
!1505 = !DILocation(line: 470, column: 24, scope: !1276)
!1506 = !DILocation(line: 471, column: 3, scope: !1276)
!1507 = !DILocation(line: 394, column: 41, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1271, file: !1, discriminator: 2)
!1509 = !DILocation(line: 394, column: 50, scope: !1508)
!1510 = !DILocation(line: 394, column: 3, scope: !1508)
!1511 = distinct !{!1511, !1512}
!1512 = !DILocation(line: 394, column: 3, scope: !1138)
!1513 = !DILocation(line: 473, column: 3, scope: !1138)
!1514 = !DILocation(line: 474, column: 1, scope: !1138)
!1515 = distinct !DISubprogram(name: "gsl_sf_mathieu_Mc", scope: !1, file: !1, line: 481, type: !1516, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!49, !48, !48, !49, !49}
!1518 = !DILocalVariable(name: "kind", arg: 1, scope: !1515, file: !1, line: 481, type: !48)
!1519 = !DILocation(line: 481, column: 30, scope: !1515)
!1520 = !DILocalVariable(name: "order", arg: 2, scope: !1515, file: !1, line: 481, type: !48)
!1521 = !DILocation(line: 481, column: 40, scope: !1515)
!1522 = !DILocalVariable(name: "qq", arg: 3, scope: !1515, file: !1, line: 481, type: !49)
!1523 = !DILocation(line: 481, column: 54, scope: !1515)
!1524 = !DILocalVariable(name: "zz", arg: 4, scope: !1515, file: !1, line: 481, type: !49)
!1525 = !DILocation(line: 481, column: 65, scope: !1515)
!1526 = !DILocalVariable(name: "result", scope: !1515, file: !1, line: 483, type: !51)
!1527 = !DILocation(line: 483, column: 2, scope: !1515)
!1528 = !DILocalVariable(name: "status", scope: !1515, file: !1, line: 483, type: !48)
!1529 = !DILocation(line: 483, column: 2, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 483, column: 2)
!1531 = !DILocation(line: 483, column: 2, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1533, file: !1, discriminator: 1)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 483, column: 2)
!1534 = distinct !{!1534, !1535}
!1535 = !DILocation(line: 483, column: 2, scope: !1533)
!1536 = !DILocation(line: 483, column: 2, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1538, file: !1, discriminator: 2)
!1538 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 483, column: 2)
!1539 = !DILocation(line: 483, column: 2, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1533, file: !1, discriminator: 3)
!1541 = !DILocation(line: 483, column: 2, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1515, file: !1, discriminator: 4)
!1543 = !DILocation(line: 484, column: 1, scope: !1515)
!1544 = distinct !DISubprogram(name: "gsl_sf_mathieu_Ms", scope: !1, file: !1, line: 486, type: !1516, isLocal: false, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1545 = !DILocalVariable(name: "kind", arg: 1, scope: !1544, file: !1, line: 486, type: !48)
!1546 = !DILocation(line: 486, column: 30, scope: !1544)
!1547 = !DILocalVariable(name: "order", arg: 2, scope: !1544, file: !1, line: 486, type: !48)
!1548 = !DILocation(line: 486, column: 40, scope: !1544)
!1549 = !DILocalVariable(name: "qq", arg: 3, scope: !1544, file: !1, line: 486, type: !49)
!1550 = !DILocation(line: 486, column: 54, scope: !1544)
!1551 = !DILocalVariable(name: "zz", arg: 4, scope: !1544, file: !1, line: 486, type: !49)
!1552 = !DILocation(line: 486, column: 65, scope: !1544)
!1553 = !DILocalVariable(name: "result", scope: !1544, file: !1, line: 488, type: !51)
!1554 = !DILocation(line: 488, column: 2, scope: !1544)
!1555 = !DILocalVariable(name: "status", scope: !1544, file: !1, line: 488, type: !48)
!1556 = !DILocation(line: 488, column: 2, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1544, file: !1, line: 488, column: 2)
!1558 = !DILocation(line: 488, column: 2, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1560, file: !1, discriminator: 1)
!1560 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 488, column: 2)
!1561 = distinct !{!1561, !1562}
!1562 = !DILocation(line: 488, column: 2, scope: !1560)
!1563 = !DILocation(line: 488, column: 2, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1565, file: !1, discriminator: 2)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 488, column: 2)
!1566 = !DILocation(line: 488, column: 2, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1560, file: !1, discriminator: 3)
!1568 = !DILocation(line: 488, column: 2, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1544, file: !1, discriminator: 4)
!1570 = !DILocation(line: 489, column: 1, scope: !1544)
