; ModuleID = 'bessel_sequence.c'
source_filename = "bessel_sequence.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bessel_sequence.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@gsl_sf_bessel_sequence_Jnu_e.dx_array = internal constant [3 x double] [double 1.000000e-03, double 3.000000e-02, double 1.000000e-01], align 16
@gsl_sf_bessel_sequence_Jnu_e.smalls = internal constant [11 x double] [double 1.000000e-02, double 2.000000e-02, double 4.000000e-01, double 7.000000e-01, double 1.300000e+00, double 2.000000e+00, double 2.500000e+00, double 3.200000e+00, double 3.500000e+00, double 4.500000e+00, double 6.000000e+00], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_sequence_Jnu_e(double, i32, i64, double*) #0 !dbg !45 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i64, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !69, metadata !70), !dbg !71
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !72, metadata !70), !dbg !73
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !74, metadata !70), !dbg !75
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !76, metadata !70), !dbg !77
  %26 = load double, double* %6, align 8, !dbg !78
  %27 = fcmp olt double %26, 0.000000e+00, !dbg !80
  br i1 %27, label %28, label %31, !dbg !81

; <label>:28:                                     ; preds = %4
  br label %29, !dbg !82, !llvm.loop !84

; <label>:29:                                     ; preds = %28
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 62, i32 1), !dbg !85
  store i32 1, i32* %5, align 4, !dbg !85
  br label %213, !dbg !85
                                                  ; No predecessors!
  br label %213, !dbg !88

; <label>:31:                                     ; preds = %4
  %32 = load i64, i64* %8, align 8, !dbg !89
  %33 = icmp eq i64 %32, 0, !dbg !91
  br i1 %33, label %34, label %37, !dbg !92

; <label>:34:                                     ; preds = %31
  br label %35, !dbg !93, !llvm.loop !95

; <label>:35:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 65, i32 4), !dbg !96
  store i32 4, i32* %5, align 4, !dbg !96
  br label %213, !dbg !96
                                                  ; No predecessors!
  br label %212, !dbg !99

; <label>:37:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i32* %10, metadata !100, metadata !70), !dbg !105
  %38 = load i32, i32* %7, align 4, !dbg !106
  %39 = call i32 @GSL_MODE_PREC(i32 %38), !dbg !107
  store i32 %39, i32* %10, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata double* %11, metadata !108, metadata !70), !dbg !109
  %40 = load i32, i32* %10, align 4, !dbg !110
  %41 = zext i32 %40 to i64, !dbg !111
  %42 = getelementptr inbounds [3 x double], [3 x double]* @gsl_sf_bessel_sequence_Jnu_e.dx_array, i64 0, i64 %41, !dbg !111
  %43 = load double, double* %42, align 8, !dbg !111
  store double %43, double* %11, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %12, metadata !112, metadata !70), !dbg !114
  %44 = load double, double* %6, align 8, !dbg !115
  %45 = call double @ceil(double %44) #1, !dbg !116
  %46 = fptosi double %45 to i32, !dbg !117
  store i32 %46, i32* %12, align 4, !dbg !114
  call void @llvm.dbg.declare(metadata double* %13, metadata !118, metadata !70), !dbg !119
  %47 = load double, double* %6, align 8, !dbg !120
  %48 = call double @pow(double %47, double 0x3FD5555555555555) #5, !dbg !121
  store double %48, double* %13, align 8, !dbg !119
  call void @llvm.dbg.declare(metadata double* %14, metadata !122, metadata !70), !dbg !123
  %49 = load double, double* %6, align 8, !dbg !124
  %50 = fcmp oge double %49, 1.000000e+01, !dbg !125
  br i1 %50, label %51, label %55, !dbg !124

; <label>:51:                                     ; preds = %37
  %52 = load double, double* %6, align 8, !dbg !126
  %53 = load double, double* %13, align 8, !dbg !128
  %54 = fsub double %52, %53, !dbg !129
  br label %60, !dbg !130

; <label>:55:                                     ; preds = %37
  %56 = load i32, i32* %12, align 4, !dbg !131
  %57 = sext i32 %56 to i64, !dbg !133
  %58 = getelementptr inbounds [11 x double], [11 x double]* @gsl_sf_bessel_sequence_Jnu_e.smalls, i64 0, i64 %57, !dbg !133
  %59 = load double, double* %58, align 8, !dbg !133
  br label %60, !dbg !134

; <label>:60:                                     ; preds = %55, %51
  %61 = phi double [ %54, %51 ], [ %59, %55 ], !dbg !135
  store double %61, double* %14, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !138, metadata !70), !dbg !145
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !146, metadata !70), !dbg !147
  call void @llvm.dbg.declare(metadata double* %17, metadata !148, metadata !70), !dbg !149
  call void @llvm.dbg.declare(metadata double* %18, metadata !150, metadata !70), !dbg !151
  call void @llvm.dbg.declare(metadata double* %19, metadata !152, metadata !70), !dbg !153
  call void @llvm.dbg.declare(metadata i64* %20, metadata !154, metadata !70), !dbg !155
  store i64 0, i64* %20, align 8, !dbg !155
  %62 = load double*, double** %9, align 8, !dbg !156
  %63 = getelementptr inbounds double, double* %62, i64 0, !dbg !156
  %64 = load double, double* %63, align 8, !dbg !156
  store double %64, double* %19, align 8, !dbg !157
  %65 = load double, double* %6, align 8, !dbg !158
  %66 = load double, double* %19, align 8, !dbg !159
  %67 = call i32 @gsl_sf_bessel_Jnu_e(double %65, double %66, %struct.gsl_sf_result_struct* %15), !dbg !160
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !161
  %69 = load double, double* %68, align 8, !dbg !161
  %70 = load double*, double** %9, align 8, !dbg !162
  %71 = getelementptr inbounds double, double* %70, i64 0, !dbg !162
  store double %69, double* %71, align 8, !dbg !163
  %72 = load i64, i64* %20, align 8, !dbg !164
  %73 = add i64 %72, 1, !dbg !164
  store i64 %73, i64* %20, align 8, !dbg !164
  %74 = load double, double* %19, align 8, !dbg !165
  %75 = fcmp oeq double %74, 0.000000e+00, !dbg !167
  br i1 %75, label %76, label %98, !dbg !168

; <label>:76:                                     ; preds = %60
  %77 = load double*, double** %9, align 8, !dbg !169
  %78 = getelementptr inbounds double, double* %77, i64 1, !dbg !169
  %79 = load double, double* %78, align 8, !dbg !169
  %80 = load double, double* %19, align 8, !dbg !172
  %81 = fcmp ole double %79, %80, !dbg !173
  br i1 %81, label %82, label %85, !dbg !174

; <label>:82:                                     ; preds = %76
  br label %83, !dbg !175, !llvm.loop !177

; <label>:83:                                     ; preds = %82
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 94, i32 5), !dbg !178
  store i32 5, i32* %5, align 4, !dbg !178
  br label %213, !dbg !178
                                                  ; No predecessors!
  br label %85, !dbg !181

; <label>:85:                                     ; preds = %84, %76
  %86 = load double*, double** %9, align 8, !dbg !182
  %87 = getelementptr inbounds double, double* %86, i64 1, !dbg !182
  %88 = load double, double* %87, align 8, !dbg !182
  store double %88, double* %19, align 8, !dbg !183
  %89 = load double, double* %6, align 8, !dbg !184
  %90 = load double, double* %19, align 8, !dbg !185
  %91 = call i32 @gsl_sf_bessel_Jnu_e(double %89, double %90, %struct.gsl_sf_result_struct* %15), !dbg !186
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !187
  %93 = load double, double* %92, align 8, !dbg !187
  %94 = load double*, double** %9, align 8, !dbg !188
  %95 = getelementptr inbounds double, double* %94, i64 1, !dbg !188
  store double %93, double* %95, align 8, !dbg !189
  %96 = load i64, i64* %20, align 8, !dbg !190
  %97 = add i64 %96, 1, !dbg !190
  store i64 %97, i64* %20, align 8, !dbg !190
  br label %98, !dbg !191

; <label>:98:                                     ; preds = %85, %60
  br label %99, !dbg !192

; <label>:99:                                     ; preds = %122, %98
  %100 = load i64, i64* %20, align 8, !dbg !193
  %101 = load double*, double** %9, align 8, !dbg !194
  %102 = getelementptr inbounds double, double* %101, i64 %100, !dbg !194
  %103 = load double, double* %102, align 8, !dbg !194
  %104 = load double, double* %14, align 8, !dbg !195
  %105 = fcmp olt double %103, %104, !dbg !196
  br i1 %105, label %106, label %110, !dbg !197

; <label>:106:                                    ; preds = %99
  %107 = load i64, i64* %20, align 8, !dbg !198
  %108 = load i64, i64* %8, align 8, !dbg !199
  %109 = icmp ult i64 %107, %108, !dbg !200
  br label %110

; <label>:110:                                    ; preds = %106, %99
  %111 = phi i1 [ false, %99 ], [ %109, %106 ]
  br i1 %111, label %112, label %137, !dbg !201

; <label>:112:                                    ; preds = %110
  %113 = load i64, i64* %20, align 8, !dbg !202
  %114 = load double*, double** %9, align 8, !dbg !205
  %115 = getelementptr inbounds double, double* %114, i64 %113, !dbg !205
  %116 = load double, double* %115, align 8, !dbg !205
  %117 = load double, double* %19, align 8, !dbg !206
  %118 = fcmp ole double %116, %117, !dbg !207
  br i1 %118, label %119, label %122, !dbg !208

; <label>:119:                                    ; preds = %112
  br label %120, !dbg !209, !llvm.loop !211

; <label>:120:                                    ; preds = %119
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 109, i32 5), !dbg !212
  store i32 5, i32* %5, align 4, !dbg !212
  br label %213, !dbg !212
                                                  ; No predecessors!
  br label %122, !dbg !215

; <label>:122:                                    ; preds = %121, %112
  %123 = load i64, i64* %20, align 8, !dbg !216
  %124 = load double*, double** %9, align 8, !dbg !217
  %125 = getelementptr inbounds double, double* %124, i64 %123, !dbg !217
  %126 = load double, double* %125, align 8, !dbg !217
  store double %126, double* %19, align 8, !dbg !218
  %127 = load double, double* %6, align 8, !dbg !219
  %128 = load double, double* %19, align 8, !dbg !220
  %129 = call i32 @gsl_sf_bessel_Jnu_e(double %127, double %128, %struct.gsl_sf_result_struct* %15), !dbg !221
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !222
  %131 = load double, double* %130, align 8, !dbg !222
  %132 = load i64, i64* %20, align 8, !dbg !223
  %133 = load double*, double** %9, align 8, !dbg !224
  %134 = getelementptr inbounds double, double* %133, i64 %132, !dbg !224
  store double %131, double* %134, align 8, !dbg !225
  %135 = load i64, i64* %20, align 8, !dbg !226
  %136 = add i64 %135, 1, !dbg !226
  store i64 %136, i64* %20, align 8, !dbg !226
  br label %99, !dbg !227, !llvm.loop !229

; <label>:137:                                    ; preds = %110
  %138 = load double, double* %6, align 8, !dbg !230
  %139 = fadd double %138, 1.000000e+00, !dbg !231
  %140 = load double, double* %19, align 8, !dbg !232
  %141 = call i32 @gsl_sf_bessel_Jnu_e(double %139, double %140, %struct.gsl_sf_result_struct* %16), !dbg !233
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !234
  %143 = load double, double* %142, align 8, !dbg !234
  store double %143, double* %18, align 8, !dbg !235
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !236
  %145 = load double, double* %144, align 8, !dbg !236
  %146 = fsub double -0.000000e+00, %145, !dbg !237
  %147 = load double, double* %6, align 8, !dbg !238
  %148 = load double, double* %19, align 8, !dbg !239
  %149 = fdiv double %147, %148, !dbg !240
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !241
  %151 = load double, double* %150, align 8, !dbg !241
  %152 = fmul double %149, %151, !dbg !242
  %153 = fadd double %146, %152, !dbg !243
  store double %153, double* %17, align 8, !dbg !244
  br label %154, !dbg !245

; <label>:154:                                    ; preds = %200, %137
  %155 = load i64, i64* %20, align 8, !dbg !246
  %156 = load i64, i64* %8, align 8, !dbg !247
  %157 = icmp ult i64 %155, %156, !dbg !248
  br i1 %157, label %158, label %211, !dbg !249

; <label>:158:                                    ; preds = %154
  call void @llvm.dbg.declare(metadata double* %21, metadata !250, metadata !70), !dbg !252
  %159 = load i64, i64* %20, align 8, !dbg !253
  %160 = load double*, double** %9, align 8, !dbg !254
  %161 = getelementptr inbounds double, double* %160, i64 %159, !dbg !254
  %162 = load double, double* %161, align 8, !dbg !254
  %163 = load double, double* %19, align 8, !dbg !255
  %164 = fsub double %162, %163, !dbg !256
  store double %164, double* %21, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata i32* %22, metadata !257, metadata !70), !dbg !258
  %165 = load double, double* %21, align 8, !dbg !259
  %166 = load double, double* %11, align 8, !dbg !260
  %167 = fdiv double %165, %166, !dbg !261
  %168 = call double @ceil(double %167) #1, !dbg !262
  %169 = fptosi double %168 to i32, !dbg !263
  store i32 %169, i32* %22, align 4, !dbg !258
  call void @llvm.dbg.declare(metadata double* %23, metadata !264, metadata !70), !dbg !265
  %170 = load double, double* %21, align 8, !dbg !266
  %171 = load i32, i32* %22, align 4, !dbg !267
  %172 = sitofp i32 %171 to double, !dbg !267
  %173 = fdiv double %170, %172, !dbg !268
  store double %173, double* %23, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata double* %24, metadata !269, metadata !70), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %25, metadata !271, metadata !70), !dbg !272
  %174 = load i64, i64* %20, align 8, !dbg !273
  %175 = load double*, double** %9, align 8, !dbg !275
  %176 = getelementptr inbounds double, double* %175, i64 %174, !dbg !275
  %177 = load double, double* %176, align 8, !dbg !275
  %178 = load double, double* %19, align 8, !dbg !276
  %179 = fcmp ole double %177, %178, !dbg !277
  br i1 %179, label %180, label %183, !dbg !278

; <label>:180:                                    ; preds = %158
  br label %181, !dbg !279, !llvm.loop !281

; <label>:181:                                    ; preds = %180
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 137, i32 5), !dbg !282
  store i32 5, i32* %5, align 4, !dbg !282
  br label %213, !dbg !282
                                                  ; No predecessors!
  br label %183, !dbg !285

; <label>:183:                                    ; preds = %182, %158
  store i32 0, i32* %25, align 4, !dbg !286
  %184 = load double, double* %19, align 8, !dbg !288
  store double %184, double* %24, align 8, !dbg !289
  br label %185, !dbg !290

; <label>:185:                                    ; preds = %194, %183
  %186 = load i32, i32* %25, align 4, !dbg !291
  %187 = load i32, i32* %22, align 4, !dbg !294
  %188 = icmp slt i32 %186, %187, !dbg !295
  br i1 %188, label %189, label %200, !dbg !296

; <label>:189:                                    ; preds = %185
  %190 = load double, double* %6, align 8, !dbg !297
  %191 = load double, double* %24, align 8, !dbg !299
  %192 = load double, double* %23, align 8, !dbg !300
  %193 = call i32 @rk_step(double %190, double %191, double %192, double* %17, double* %18), !dbg !301
  br label %194, !dbg !302

; <label>:194:                                    ; preds = %189
  %195 = load i32, i32* %25, align 4, !dbg !303
  %196 = add nsw i32 %195, 1, !dbg !303
  store i32 %196, i32* %25, align 4, !dbg !303
  %197 = load double, double* %23, align 8, !dbg !305
  %198 = load double, double* %24, align 8, !dbg !306
  %199 = fadd double %198, %197, !dbg !306
  store double %199, double* %24, align 8, !dbg !306
  br label %185, !dbg !307, !llvm.loop !308

; <label>:200:                                    ; preds = %185
  %201 = load i64, i64* %20, align 8, !dbg !310
  %202 = load double*, double** %9, align 8, !dbg !311
  %203 = getelementptr inbounds double, double* %202, i64 %201, !dbg !311
  %204 = load double, double* %203, align 8, !dbg !311
  store double %204, double* %19, align 8, !dbg !312
  %205 = load double, double* %18, align 8, !dbg !313
  %206 = load i64, i64* %20, align 8, !dbg !314
  %207 = load double*, double** %9, align 8, !dbg !315
  %208 = getelementptr inbounds double, double* %207, i64 %206, !dbg !315
  store double %205, double* %208, align 8, !dbg !316
  %209 = load i64, i64* %20, align 8, !dbg !317
  %210 = add i64 %209, 1, !dbg !317
  store i64 %210, i64* %20, align 8, !dbg !317
  br label %154, !dbg !318, !llvm.loop !319

; <label>:211:                                    ; preds = %154
  store i32 0, i32* %5, align 4, !dbg !320
  br label %213, !dbg !320

; <label>:212:                                    ; preds = %36
  br label %213

; <label>:213:                                    ; preds = %29, %35, %83, %120, %181, %211, %212, %30
  %214 = load i32, i32* %5, align 4, !dbg !321
  ret i32 %214, !dbg !321
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

declare i32 @GSL_MODE_PREC(i32) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #4

declare i32 @gsl_sf_bessel_Jnu_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @rk_step(double, double, double, double*, double*) #0 !dbg !322 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
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
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !325, metadata !70), !dbg !326
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !327, metadata !70), !dbg !328
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !329, metadata !70), !dbg !330
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !331, metadata !70), !dbg !332
  store double* %4, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !333, metadata !70), !dbg !334
  call void @llvm.dbg.declare(metadata double* %11, metadata !335, metadata !70), !dbg !336
  %21 = load double*, double** %9, align 8, !dbg !337
  %22 = load double, double* %21, align 8, !dbg !338
  store double %22, double* %11, align 8, !dbg !336
  call void @llvm.dbg.declare(metadata double* %12, metadata !339, metadata !70), !dbg !340
  %23 = load double*, double** %10, align 8, !dbg !341
  %24 = load double, double* %23, align 8, !dbg !342
  store double %24, double* %12, align 8, !dbg !340
  call void @llvm.dbg.declare(metadata double* %13, metadata !343, metadata !70), !dbg !344
  %25 = load double, double* %8, align 8, !dbg !345
  %26 = load double, double* %11, align 8, !dbg !346
  %27 = fsub double -0.000000e+00, %26, !dbg !346
  %28 = load double, double* %7, align 8, !dbg !346
  %29 = fdiv double %27, %28, !dbg !346
  %30 = load double, double* %6, align 8, !dbg !346
  %31 = load double, double* %6, align 8, !dbg !346
  %32 = fmul double %30, %31, !dbg !346
  %33 = load double, double* %7, align 8, !dbg !346
  %34 = load double, double* %7, align 8, !dbg !346
  %35 = fmul double %33, %34, !dbg !346
  %36 = fdiv double %32, %35, !dbg !346
  %37 = fsub double %36, 1.000000e+00, !dbg !346
  %38 = load double, double* %12, align 8, !dbg !346
  %39 = fmul double %37, %38, !dbg !346
  %40 = fadd double %29, %39, !dbg !346
  %41 = fmul double %25, %40, !dbg !347
  store double %41, double* %13, align 8, !dbg !344
  call void @llvm.dbg.declare(metadata double* %14, metadata !348, metadata !70), !dbg !349
  %42 = load double, double* %8, align 8, !dbg !350
  %43 = load double, double* %11, align 8, !dbg !351
  %44 = fmul double %42, %43, !dbg !352
  store double %44, double* %14, align 8, !dbg !349
  call void @llvm.dbg.declare(metadata double* %15, metadata !353, metadata !70), !dbg !354
  %45 = load double, double* %8, align 8, !dbg !355
  %46 = load double, double* %11, align 8, !dbg !356
  %47 = load double, double* %13, align 8, !dbg !356
  %48 = fmul double 5.000000e-01, %47, !dbg !356
  %49 = fadd double %46, %48, !dbg !356
  %50 = fsub double -0.000000e+00, %49, !dbg !356
  %51 = load double, double* %7, align 8, !dbg !356
  %52 = load double, double* %8, align 8, !dbg !356
  %53 = fmul double 5.000000e-01, %52, !dbg !356
  %54 = fadd double %51, %53, !dbg !356
  %55 = fdiv double %50, %54, !dbg !356
  %56 = load double, double* %6, align 8, !dbg !356
  %57 = load double, double* %6, align 8, !dbg !356
  %58 = fmul double %56, %57, !dbg !356
  %59 = load double, double* %7, align 8, !dbg !356
  %60 = load double, double* %8, align 8, !dbg !356
  %61 = fmul double 5.000000e-01, %60, !dbg !356
  %62 = fadd double %59, %61, !dbg !356
  %63 = load double, double* %7, align 8, !dbg !356
  %64 = load double, double* %8, align 8, !dbg !356
  %65 = fmul double 5.000000e-01, %64, !dbg !356
  %66 = fadd double %63, %65, !dbg !356
  %67 = fmul double %62, %66, !dbg !356
  %68 = fdiv double %58, %67, !dbg !356
  %69 = fsub double %68, 1.000000e+00, !dbg !356
  %70 = load double, double* %12, align 8, !dbg !356
  %71 = load double, double* %14, align 8, !dbg !356
  %72 = fmul double 5.000000e-01, %71, !dbg !356
  %73 = fadd double %70, %72, !dbg !356
  %74 = fmul double %69, %73, !dbg !356
  %75 = fadd double %55, %74, !dbg !356
  %76 = fmul double %45, %75, !dbg !357
  store double %76, double* %15, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata double* %16, metadata !358, metadata !70), !dbg !359
  %77 = load double, double* %8, align 8, !dbg !360
  %78 = load double, double* %11, align 8, !dbg !361
  %79 = load double, double* %13, align 8, !dbg !361
  %80 = fmul double 5.000000e-01, %79, !dbg !361
  %81 = fadd double %78, %80, !dbg !361
  %82 = fmul double %77, %81, !dbg !362
  store double %82, double* %16, align 8, !dbg !359
  call void @llvm.dbg.declare(metadata double* %17, metadata !363, metadata !70), !dbg !364
  %83 = load double, double* %8, align 8, !dbg !365
  %84 = load double, double* %11, align 8, !dbg !366
  %85 = load double, double* %15, align 8, !dbg !366
  %86 = fmul double 5.000000e-01, %85, !dbg !366
  %87 = fadd double %84, %86, !dbg !366
  %88 = fsub double -0.000000e+00, %87, !dbg !366
  %89 = load double, double* %7, align 8, !dbg !366
  %90 = load double, double* %8, align 8, !dbg !366
  %91 = fmul double 5.000000e-01, %90, !dbg !366
  %92 = fadd double %89, %91, !dbg !366
  %93 = fdiv double %88, %92, !dbg !366
  %94 = load double, double* %6, align 8, !dbg !366
  %95 = load double, double* %6, align 8, !dbg !366
  %96 = fmul double %94, %95, !dbg !366
  %97 = load double, double* %7, align 8, !dbg !366
  %98 = load double, double* %8, align 8, !dbg !366
  %99 = fmul double 5.000000e-01, %98, !dbg !366
  %100 = fadd double %97, %99, !dbg !366
  %101 = load double, double* %7, align 8, !dbg !366
  %102 = load double, double* %8, align 8, !dbg !366
  %103 = fmul double 5.000000e-01, %102, !dbg !366
  %104 = fadd double %101, %103, !dbg !366
  %105 = fmul double %100, %104, !dbg !366
  %106 = fdiv double %96, %105, !dbg !366
  %107 = fsub double %106, 1.000000e+00, !dbg !366
  %108 = load double, double* %12, align 8, !dbg !366
  %109 = load double, double* %16, align 8, !dbg !366
  %110 = fmul double 5.000000e-01, %109, !dbg !366
  %111 = fadd double %108, %110, !dbg !366
  %112 = fmul double %107, %111, !dbg !366
  %113 = fadd double %93, %112, !dbg !366
  %114 = fmul double %83, %113, !dbg !367
  store double %114, double* %17, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata double* %18, metadata !368, metadata !70), !dbg !369
  %115 = load double, double* %8, align 8, !dbg !370
  %116 = load double, double* %11, align 8, !dbg !371
  %117 = load double, double* %15, align 8, !dbg !371
  %118 = fmul double 5.000000e-01, %117, !dbg !371
  %119 = fadd double %116, %118, !dbg !371
  %120 = fmul double %115, %119, !dbg !372
  store double %120, double* %18, align 8, !dbg !369
  call void @llvm.dbg.declare(metadata double* %19, metadata !373, metadata !70), !dbg !374
  %121 = load double, double* %8, align 8, !dbg !375
  %122 = load double, double* %11, align 8, !dbg !376
  %123 = load double, double* %17, align 8, !dbg !376
  %124 = fadd double %122, %123, !dbg !376
  %125 = fsub double -0.000000e+00, %124, !dbg !376
  %126 = load double, double* %7, align 8, !dbg !376
  %127 = load double, double* %8, align 8, !dbg !376
  %128 = fadd double %126, %127, !dbg !376
  %129 = fdiv double %125, %128, !dbg !376
  %130 = load double, double* %6, align 8, !dbg !376
  %131 = load double, double* %6, align 8, !dbg !376
  %132 = fmul double %130, %131, !dbg !376
  %133 = load double, double* %7, align 8, !dbg !376
  %134 = load double, double* %8, align 8, !dbg !376
  %135 = fadd double %133, %134, !dbg !376
  %136 = load double, double* %7, align 8, !dbg !376
  %137 = load double, double* %8, align 8, !dbg !376
  %138 = fadd double %136, %137, !dbg !376
  %139 = fmul double %135, %138, !dbg !376
  %140 = fdiv double %132, %139, !dbg !376
  %141 = fsub double %140, 1.000000e+00, !dbg !376
  %142 = load double, double* %12, align 8, !dbg !376
  %143 = load double, double* %18, align 8, !dbg !376
  %144 = fadd double %142, %143, !dbg !376
  %145 = fmul double %141, %144, !dbg !376
  %146 = fadd double %129, %145, !dbg !376
  %147 = fmul double %121, %146, !dbg !377
  store double %147, double* %19, align 8, !dbg !374
  call void @llvm.dbg.declare(metadata double* %20, metadata !378, metadata !70), !dbg !379
  %148 = load double, double* %8, align 8, !dbg !380
  %149 = load double, double* %11, align 8, !dbg !381
  %150 = load double, double* %17, align 8, !dbg !381
  %151 = fadd double %149, %150, !dbg !381
  %152 = fmul double %148, %151, !dbg !382
  store double %152, double* %20, align 8, !dbg !379
  %153 = load double, double* %11, align 8, !dbg !383
  %154 = load double, double* %13, align 8, !dbg !384
  %155 = fdiv double %154, 6.000000e+00, !dbg !385
  %156 = fadd double %153, %155, !dbg !386
  %157 = load double, double* %15, align 8, !dbg !387
  %158 = fdiv double %157, 3.000000e+00, !dbg !388
  %159 = fadd double %156, %158, !dbg !389
  %160 = load double, double* %17, align 8, !dbg !390
  %161 = fdiv double %160, 3.000000e+00, !dbg !391
  %162 = fadd double %159, %161, !dbg !392
  %163 = load double, double* %19, align 8, !dbg !393
  %164 = fdiv double %163, 6.000000e+00, !dbg !394
  %165 = fadd double %162, %164, !dbg !395
  %166 = load double*, double** %9, align 8, !dbg !396
  store double %165, double* %166, align 8, !dbg !397
  %167 = load double, double* %12, align 8, !dbg !398
  %168 = load double, double* %14, align 8, !dbg !399
  %169 = fdiv double %168, 6.000000e+00, !dbg !400
  %170 = fadd double %167, %169, !dbg !401
  %171 = load double, double* %16, align 8, !dbg !402
  %172 = fdiv double %171, 3.000000e+00, !dbg !403
  %173 = fadd double %170, %172, !dbg !404
  %174 = load double, double* %18, align 8, !dbg !405
  %175 = fdiv double %174, 3.000000e+00, !dbg !406
  %176 = fadd double %173, %175, !dbg !407
  %177 = load double, double* %20, align 8, !dbg !408
  %178 = fdiv double %177, 6.000000e+00, !dbg !409
  %179 = fadd double %176, %178, !dbg !410
  %180 = load double*, double** %10, align 8, !dbg !411
  store double %179, double* %180, align 8, !dbg !412
  ret i32 0, !dbg !413
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, globals: !43)
!1 = !DIFile(filename: "bessel_sequence.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!43 = !{!44, !61}
!44 = distinct !DIGlobalVariable(name: "dx_array", scope: !45, file: !1, line: 69, type: !57, isLocal: true, isDefinition: true, variable: [3 x double]* @gsl_sf_bessel_sequence_Jnu_e.dx_array)
!45 = distinct !DISubprogram(name: "gsl_sf_bessel_sequence_Jnu_e", scope: !1, file: !1, line: 57, type: !46, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!46 = !DISubroutineType(types: !47)
!47 = !{!42, !48, !49, !52, !55}
!48 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !50, line: 50, baseType: !51)
!50 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/fpcc/gsl-2.5/specfunc")
!51 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 62, baseType: !54)
!53 = !DIFile(filename: "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include/stddef.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!56 = !{}
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 192, align: 64, elements: !59)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = distinct !DIGlobalVariable(name: "smalls", scope: !45, file: !1, line: 74, type: !62, isLocal: true, isDefinition: true, variable: [11 x double]* @gsl_sf_bessel_sequence_Jnu_e.smalls)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 704, align: 64, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 11)
!65 = !{i32 2, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"PIC Level", i32 2}
!68 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!69 = !DILocalVariable(name: "nu", arg: 1, scope: !45, file: !1, line: 57, type: !48)
!70 = !DIExpression()
!71 = !DILocation(line: 57, column: 37, scope: !45)
!72 = !DILocalVariable(name: "mode", arg: 2, scope: !45, file: !1, line: 57, type: !49)
!73 = !DILocation(line: 57, column: 52, scope: !45)
!74 = !DILocalVariable(name: "size", arg: 3, scope: !45, file: !1, line: 57, type: !52)
!75 = !DILocation(line: 57, column: 65, scope: !45)
!76 = !DILocalVariable(name: "v", arg: 4, scope: !45, file: !1, line: 57, type: !55)
!77 = !DILocation(line: 57, column: 80, scope: !45)
!78 = !DILocation(line: 61, column: 6, scope: !79)
!79 = distinct !DILexicalBlock(scope: !45, file: !1, line: 61, column: 6)
!80 = !DILocation(line: 61, column: 9, scope: !79)
!81 = !DILocation(line: 61, column: 6, scope: !45)
!82 = !DILocation(line: 62, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 61, column: 16)
!84 = distinct !{!84, !82}
!85 = !DILocation(line: 62, column: 5, scope: !86)
!86 = !DILexicalBlockFile(scope: !87, file: !1, discriminator: 1)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 62, column: 5)
!88 = !DILocation(line: 63, column: 3, scope: !83)
!89 = !DILocation(line: 64, column: 11, scope: !90)
!90 = distinct !DILexicalBlock(scope: !79, file: !1, line: 64, column: 11)
!91 = !DILocation(line: 64, column: 16, scope: !90)
!92 = !DILocation(line: 64, column: 11, scope: !79)
!93 = !DILocation(line: 65, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 64, column: 22)
!95 = distinct !{!95, !93}
!96 = !DILocation(line: 65, column: 5, scope: !97)
!97 = !DILexicalBlockFile(scope: !98, file: !1, discriminator: 1)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 65, column: 5)
!99 = !DILocation(line: 66, column: 3, scope: !94)
!100 = !DILocalVariable(name: "goal", scope: !101, file: !1, line: 68, type: !102)
!101 = distinct !DILexicalBlock(scope: !90, file: !1, line: 67, column: 8)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_prec_t", file: !104, line: 42, baseType: !51)
!104 = !DIFile(filename: "../gsl/gsl_precision.h", directory: "/fpcc/gsl-2.5/specfunc")
!105 = !DILocation(line: 68, column: 22, scope: !101)
!106 = !DILocation(line: 68, column: 45, scope: !101)
!107 = !DILocation(line: 68, column: 31, scope: !101)
!108 = !DILocalVariable(name: "dx_nominal", scope: !101, file: !1, line: 70, type: !58)
!109 = !DILocation(line: 70, column: 18, scope: !101)
!110 = !DILocation(line: 70, column: 40, scope: !101)
!111 = !DILocation(line: 70, column: 31, scope: !101)
!112 = !DILocalVariable(name: "cnu", scope: !101, file: !1, line: 72, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!114 = !DILocation(line: 72, column: 15, scope: !101)
!115 = !DILocation(line: 72, column: 32, scope: !101)
!116 = !DILocation(line: 72, column: 27, scope: !101)
!117 = !DILocation(line: 72, column: 21, scope: !101)
!118 = !DILocalVariable(name: "nu13", scope: !101, file: !1, line: 73, type: !58)
!119 = !DILocation(line: 73, column: 18, scope: !101)
!120 = !DILocation(line: 73, column: 29, scope: !101)
!121 = !DILocation(line: 73, column: 25, scope: !101)
!122 = !DILocalVariable(name: "x_small", scope: !101, file: !1, line: 75, type: !58)
!123 = !DILocation(line: 75, column: 18, scope: !101)
!124 = !DILocation(line: 75, column: 30, scope: !101)
!125 = !DILocation(line: 75, column: 33, scope: !101)
!126 = !DILocation(line: 75, column: 43, scope: !127)
!127 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 1)
!128 = !DILocation(line: 75, column: 48, scope: !127)
!129 = !DILocation(line: 75, column: 46, scope: !127)
!130 = !DILocation(line: 75, column: 30, scope: !127)
!131 = !DILocation(line: 75, column: 62, scope: !132)
!132 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 2)
!133 = !DILocation(line: 75, column: 55, scope: !132)
!134 = !DILocation(line: 75, column: 30, scope: !132)
!135 = !DILocation(line: 75, column: 30, scope: !136)
!136 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 3)
!137 = !DILocation(line: 75, column: 18, scope: !136)
!138 = !DILocalVariable(name: "J0", scope: !101, file: !1, line: 77, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !140, line: 41, baseType: !141)
!140 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !140, line: 37, size: 128, align: 64, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !141, file: !140, line: 38, baseType: !48, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !141, file: !140, line: 39, baseType: !48, size: 64, align: 64, offset: 64)
!145 = !DILocation(line: 77, column: 19, scope: !101)
!146 = !DILocalVariable(name: "J1", scope: !101, file: !1, line: 77, type: !139)
!147 = !DILocation(line: 77, column: 23, scope: !101)
!148 = !DILocalVariable(name: "Jp", scope: !101, file: !1, line: 78, type: !48)
!149 = !DILocation(line: 78, column: 12, scope: !101)
!150 = !DILocalVariable(name: "J", scope: !101, file: !1, line: 78, type: !48)
!151 = !DILocation(line: 78, column: 16, scope: !101)
!152 = !DILocalVariable(name: "x", scope: !101, file: !1, line: 79, type: !48)
!153 = !DILocation(line: 79, column: 12, scope: !101)
!154 = !DILocalVariable(name: "i", scope: !101, file: !1, line: 80, type: !52)
!155 = !DILocation(line: 80, column: 12, scope: !101)
!156 = !DILocation(line: 83, column: 9, scope: !101)
!157 = !DILocation(line: 83, column: 7, scope: !101)
!158 = !DILocation(line: 84, column: 25, scope: !101)
!159 = !DILocation(line: 84, column: 29, scope: !101)
!160 = !DILocation(line: 84, column: 5, scope: !101)
!161 = !DILocation(line: 85, column: 15, scope: !101)
!162 = !DILocation(line: 85, column: 5, scope: !101)
!163 = !DILocation(line: 85, column: 10, scope: !101)
!164 = !DILocation(line: 86, column: 5, scope: !101)
!165 = !DILocation(line: 91, column: 8, scope: !166)
!166 = distinct !DILexicalBlock(scope: !101, file: !1, line: 91, column: 8)
!167 = !DILocation(line: 91, column: 10, scope: !166)
!168 = !DILocation(line: 91, column: 8, scope: !101)
!169 = !DILocation(line: 92, column: 10, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 92, column: 10)
!171 = distinct !DILexicalBlock(scope: !166, file: !1, line: 91, column: 18)
!172 = !DILocation(line: 92, column: 18, scope: !170)
!173 = !DILocation(line: 92, column: 15, scope: !170)
!174 = !DILocation(line: 92, column: 10, scope: !171)
!175 = !DILocation(line: 94, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !1, line: 92, column: 21)
!177 = distinct !{!177, !175}
!178 = !DILocation(line: 94, column: 9, scope: !179)
!179 = !DILexicalBlockFile(scope: !180, file: !1, discriminator: 1)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 94, column: 9)
!181 = !DILocation(line: 95, column: 7, scope: !176)
!182 = !DILocation(line: 96, column: 11, scope: !171)
!183 = !DILocation(line: 96, column: 9, scope: !171)
!184 = !DILocation(line: 97, column: 27, scope: !171)
!185 = !DILocation(line: 97, column: 31, scope: !171)
!186 = !DILocation(line: 97, column: 7, scope: !171)
!187 = !DILocation(line: 98, column: 17, scope: !171)
!188 = !DILocation(line: 98, column: 7, scope: !171)
!189 = !DILocation(line: 98, column: 12, scope: !171)
!190 = !DILocation(line: 99, column: 7, scope: !171)
!191 = !DILocation(line: 100, column: 5, scope: !171)
!192 = !DILocation(line: 106, column: 5, scope: !101)
!193 = !DILocation(line: 106, column: 13, scope: !127)
!194 = !DILocation(line: 106, column: 11, scope: !127)
!195 = !DILocation(line: 106, column: 18, scope: !127)
!196 = !DILocation(line: 106, column: 16, scope: !127)
!197 = !DILocation(line: 106, column: 26, scope: !127)
!198 = !DILocation(line: 106, column: 29, scope: !132)
!199 = !DILocation(line: 106, column: 33, scope: !132)
!200 = !DILocation(line: 106, column: 31, scope: !132)
!201 = !DILocation(line: 106, column: 5, scope: !136)
!202 = !DILocation(line: 107, column: 12, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 107, column: 10)
!204 = distinct !DILexicalBlock(scope: !101, file: !1, line: 106, column: 39)
!205 = !DILocation(line: 107, column: 10, scope: !203)
!206 = !DILocation(line: 107, column: 18, scope: !203)
!207 = !DILocation(line: 107, column: 15, scope: !203)
!208 = !DILocation(line: 107, column: 10, scope: !204)
!209 = !DILocation(line: 109, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !203, file: !1, line: 107, column: 21)
!211 = distinct !{!211, !209}
!212 = !DILocation(line: 109, column: 9, scope: !213)
!213 = !DILexicalBlockFile(scope: !214, file: !1, discriminator: 1)
!214 = distinct !DILexicalBlock(scope: !210, file: !1, line: 109, column: 9)
!215 = !DILocation(line: 110, column: 7, scope: !210)
!216 = !DILocation(line: 111, column: 13, scope: !204)
!217 = !DILocation(line: 111, column: 11, scope: !204)
!218 = !DILocation(line: 111, column: 9, scope: !204)
!219 = !DILocation(line: 112, column: 27, scope: !204)
!220 = !DILocation(line: 112, column: 31, scope: !204)
!221 = !DILocation(line: 112, column: 7, scope: !204)
!222 = !DILocation(line: 113, column: 17, scope: !204)
!223 = !DILocation(line: 113, column: 9, scope: !204)
!224 = !DILocation(line: 113, column: 7, scope: !204)
!225 = !DILocation(line: 113, column: 12, scope: !204)
!226 = !DILocation(line: 114, column: 7, scope: !204)
!227 = !DILocation(line: 106, column: 5, scope: !228)
!228 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 4)
!229 = distinct !{!229, !192}
!230 = !DILocation(line: 124, column: 25, scope: !101)
!231 = !DILocation(line: 124, column: 27, scope: !101)
!232 = !DILocation(line: 124, column: 33, scope: !101)
!233 = !DILocation(line: 124, column: 5, scope: !101)
!234 = !DILocation(line: 125, column: 13, scope: !101)
!235 = !DILocation(line: 125, column: 8, scope: !101)
!236 = !DILocation(line: 126, column: 14, scope: !101)
!237 = !DILocation(line: 126, column: 10, scope: !101)
!238 = !DILocation(line: 126, column: 20, scope: !101)
!239 = !DILocation(line: 126, column: 23, scope: !101)
!240 = !DILocation(line: 126, column: 22, scope: !101)
!241 = !DILocation(line: 126, column: 30, scope: !101)
!242 = !DILocation(line: 126, column: 25, scope: !101)
!243 = !DILocation(line: 126, column: 18, scope: !101)
!244 = !DILocation(line: 126, column: 8, scope: !101)
!245 = !DILocation(line: 128, column: 5, scope: !101)
!246 = !DILocation(line: 128, column: 11, scope: !127)
!247 = !DILocation(line: 128, column: 15, scope: !127)
!248 = !DILocation(line: 128, column: 13, scope: !127)
!249 = !DILocation(line: 128, column: 5, scope: !127)
!250 = !DILocalVariable(name: "dv", scope: !251, file: !1, line: 129, type: !58)
!251 = distinct !DILexicalBlock(scope: !101, file: !1, line: 128, column: 21)
!252 = !DILocation(line: 129, column: 20, scope: !251)
!253 = !DILocation(line: 129, column: 27, scope: !251)
!254 = !DILocation(line: 129, column: 25, scope: !251)
!255 = !DILocation(line: 129, column: 32, scope: !251)
!256 = !DILocation(line: 129, column: 30, scope: !251)
!257 = !DILocalVariable(name: "Nd", scope: !251, file: !1, line: 130, type: !113)
!258 = !DILocation(line: 130, column: 17, scope: !251)
!259 = !DILocation(line: 130, column: 36, scope: !251)
!260 = !DILocation(line: 130, column: 39, scope: !251)
!261 = !DILocation(line: 130, column: 38, scope: !251)
!262 = !DILocation(line: 130, column: 31, scope: !251)
!263 = !DILocation(line: 130, column: 25, scope: !251)
!264 = !DILocalVariable(name: "dx", scope: !251, file: !1, line: 131, type: !58)
!265 = !DILocation(line: 131, column: 20, scope: !251)
!266 = !DILocation(line: 131, column: 25, scope: !251)
!267 = !DILocation(line: 131, column: 30, scope: !251)
!268 = !DILocation(line: 131, column: 28, scope: !251)
!269 = !DILocalVariable(name: "xj", scope: !251, file: !1, line: 132, type: !48)
!270 = !DILocation(line: 132, column: 14, scope: !251)
!271 = !DILocalVariable(name: "j", scope: !251, file: !1, line: 133, type: !42)
!272 = !DILocation(line: 133, column: 11, scope: !251)
!273 = !DILocation(line: 135, column: 12, scope: !274)
!274 = distinct !DILexicalBlock(scope: !251, file: !1, line: 135, column: 10)
!275 = !DILocation(line: 135, column: 10, scope: !274)
!276 = !DILocation(line: 135, column: 18, scope: !274)
!277 = !DILocation(line: 135, column: 15, scope: !274)
!278 = !DILocation(line: 135, column: 10, scope: !251)
!279 = !DILocation(line: 137, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !1, line: 135, column: 21)
!281 = distinct !{!281, !279}
!282 = !DILocation(line: 137, column: 9, scope: !283)
!283 = !DILexicalBlockFile(scope: !284, file: !1, discriminator: 1)
!284 = distinct !DILexicalBlock(scope: !280, file: !1, line: 137, column: 9)
!285 = !DILocation(line: 138, column: 7, scope: !280)
!286 = !DILocation(line: 142, column: 12, scope: !287)
!287 = distinct !DILexicalBlock(scope: !251, file: !1, line: 142, column: 7)
!288 = !DILocation(line: 142, column: 19, scope: !287)
!289 = !DILocation(line: 142, column: 18, scope: !287)
!290 = !DILocation(line: 142, column: 11, scope: !287)
!291 = !DILocation(line: 142, column: 22, scope: !292)
!292 = !DILexicalBlockFile(scope: !293, file: !1, discriminator: 1)
!293 = distinct !DILexicalBlock(scope: !287, file: !1, line: 142, column: 7)
!294 = !DILocation(line: 142, column: 24, scope: !292)
!295 = !DILocation(line: 142, column: 23, scope: !292)
!296 = !DILocation(line: 142, column: 7, scope: !292)
!297 = !DILocation(line: 143, column: 17, scope: !298)
!298 = distinct !DILexicalBlock(scope: !293, file: !1, line: 142, column: 43)
!299 = !DILocation(line: 143, column: 21, scope: !298)
!300 = !DILocation(line: 143, column: 25, scope: !298)
!301 = !DILocation(line: 143, column: 9, scope: !298)
!302 = !DILocation(line: 144, column: 7, scope: !298)
!303 = !DILocation(line: 142, column: 29, scope: !304)
!304 = !DILexicalBlockFile(scope: !293, file: !1, discriminator: 2)
!305 = !DILocation(line: 142, column: 39, scope: !304)
!306 = !DILocation(line: 142, column: 36, scope: !304)
!307 = !DILocation(line: 142, column: 7, scope: !304)
!308 = distinct !{!308, !309}
!309 = !DILocation(line: 142, column: 7, scope: !251)
!310 = !DILocation(line: 147, column: 13, scope: !251)
!311 = !DILocation(line: 147, column: 11, scope: !251)
!312 = !DILocation(line: 147, column: 9, scope: !251)
!313 = !DILocation(line: 148, column: 14, scope: !251)
!314 = !DILocation(line: 148, column: 9, scope: !251)
!315 = !DILocation(line: 148, column: 7, scope: !251)
!316 = !DILocation(line: 148, column: 12, scope: !251)
!317 = !DILocation(line: 149, column: 7, scope: !251)
!318 = !DILocation(line: 128, column: 5, scope: !132)
!319 = distinct !{!319, !245}
!320 = !DILocation(line: 152, column: 5, scope: !101)
!321 = !DILocation(line: 154, column: 1, scope: !45)
!322 = distinct !DISubprogram(name: "rk_step", scope: !1, file: !1, line: 32, type: !323, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!323 = !DISubroutineType(types: !324)
!324 = !{!42, !48, !48, !48, !55, !55}
!325 = !DILocalVariable(name: "nu", arg: 1, scope: !322, file: !1, line: 32, type: !48)
!326 = !DILocation(line: 32, column: 16, scope: !322)
!327 = !DILocalVariable(name: "x", arg: 2, scope: !322, file: !1, line: 32, type: !48)
!328 = !DILocation(line: 32, column: 27, scope: !322)
!329 = !DILocalVariable(name: "dx", arg: 3, scope: !322, file: !1, line: 32, type: !48)
!330 = !DILocation(line: 32, column: 37, scope: !322)
!331 = !DILocalVariable(name: "Jp", arg: 4, scope: !322, file: !1, line: 32, type: !55)
!332 = !DILocation(line: 32, column: 50, scope: !322)
!333 = !DILocalVariable(name: "J", arg: 5, scope: !322, file: !1, line: 32, type: !55)
!334 = !DILocation(line: 32, column: 63, scope: !322)
!335 = !DILocalVariable(name: "p_0", scope: !322, file: !1, line: 34, type: !48)
!336 = !DILocation(line: 34, column: 10, scope: !322)
!337 = !DILocation(line: 34, column: 17, scope: !322)
!338 = !DILocation(line: 34, column: 16, scope: !322)
!339 = !DILocalVariable(name: "u_0", scope: !322, file: !1, line: 35, type: !48)
!340 = !DILocation(line: 35, column: 10, scope: !322)
!341 = !DILocation(line: 35, column: 17, scope: !322)
!342 = !DILocation(line: 35, column: 16, scope: !322)
!343 = !DILocalVariable(name: "p_1", scope: !322, file: !1, line: 37, type: !48)
!344 = !DILocation(line: 37, column: 10, scope: !322)
!345 = !DILocation(line: 37, column: 16, scope: !322)
!346 = !DILocation(line: 37, column: 21, scope: !322)
!347 = !DILocation(line: 37, column: 19, scope: !322)
!348 = !DILocalVariable(name: "u_1", scope: !322, file: !1, line: 38, type: !48)
!349 = !DILocation(line: 38, column: 10, scope: !322)
!350 = !DILocation(line: 38, column: 16, scope: !322)
!351 = !DILocation(line: 38, column: 21, scope: !322)
!352 = !DILocation(line: 38, column: 19, scope: !322)
!353 = !DILocalVariable(name: "p_2", scope: !322, file: !1, line: 40, type: !48)
!354 = !DILocation(line: 40, column: 10, scope: !322)
!355 = !DILocation(line: 40, column: 16, scope: !322)
!356 = !DILocation(line: 40, column: 21, scope: !322)
!357 = !DILocation(line: 40, column: 19, scope: !322)
!358 = !DILocalVariable(name: "u_2", scope: !322, file: !1, line: 41, type: !48)
!359 = !DILocation(line: 41, column: 10, scope: !322)
!360 = !DILocation(line: 41, column: 16, scope: !322)
!361 = !DILocation(line: 41, column: 21, scope: !322)
!362 = !DILocation(line: 41, column: 19, scope: !322)
!363 = !DILocalVariable(name: "p_3", scope: !322, file: !1, line: 43, type: !48)
!364 = !DILocation(line: 43, column: 10, scope: !322)
!365 = !DILocation(line: 43, column: 16, scope: !322)
!366 = !DILocation(line: 43, column: 21, scope: !322)
!367 = !DILocation(line: 43, column: 19, scope: !322)
!368 = !DILocalVariable(name: "u_3", scope: !322, file: !1, line: 44, type: !48)
!369 = !DILocation(line: 44, column: 10, scope: !322)
!370 = !DILocation(line: 44, column: 16, scope: !322)
!371 = !DILocation(line: 44, column: 21, scope: !322)
!372 = !DILocation(line: 44, column: 19, scope: !322)
!373 = !DILocalVariable(name: "p_4", scope: !322, file: !1, line: 46, type: !48)
!374 = !DILocation(line: 46, column: 10, scope: !322)
!375 = !DILocation(line: 46, column: 16, scope: !322)
!376 = !DILocation(line: 46, column: 21, scope: !322)
!377 = !DILocation(line: 46, column: 19, scope: !322)
!378 = !DILocalVariable(name: "u_4", scope: !322, file: !1, line: 47, type: !48)
!379 = !DILocation(line: 47, column: 10, scope: !322)
!380 = !DILocation(line: 47, column: 16, scope: !322)
!381 = !DILocation(line: 47, column: 21, scope: !322)
!382 = !DILocation(line: 47, column: 19, scope: !322)
!383 = !DILocation(line: 49, column: 9, scope: !322)
!384 = !DILocation(line: 49, column: 15, scope: !322)
!385 = !DILocation(line: 49, column: 18, scope: !322)
!386 = !DILocation(line: 49, column: 13, scope: !322)
!387 = !DILocation(line: 49, column: 25, scope: !322)
!388 = !DILocation(line: 49, column: 28, scope: !322)
!389 = !DILocation(line: 49, column: 23, scope: !322)
!390 = !DILocation(line: 49, column: 35, scope: !322)
!391 = !DILocation(line: 49, column: 38, scope: !322)
!392 = !DILocation(line: 49, column: 33, scope: !322)
!393 = !DILocation(line: 49, column: 45, scope: !322)
!394 = !DILocation(line: 49, column: 48, scope: !322)
!395 = !DILocation(line: 49, column: 43, scope: !322)
!396 = !DILocation(line: 49, column: 4, scope: !322)
!397 = !DILocation(line: 49, column: 7, scope: !322)
!398 = !DILocation(line: 50, column: 9, scope: !322)
!399 = !DILocation(line: 50, column: 15, scope: !322)
!400 = !DILocation(line: 50, column: 18, scope: !322)
!401 = !DILocation(line: 50, column: 13, scope: !322)
!402 = !DILocation(line: 50, column: 25, scope: !322)
!403 = !DILocation(line: 50, column: 28, scope: !322)
!404 = !DILocation(line: 50, column: 23, scope: !322)
!405 = !DILocation(line: 50, column: 35, scope: !322)
!406 = !DILocation(line: 50, column: 38, scope: !322)
!407 = !DILocation(line: 50, column: 33, scope: !322)
!408 = !DILocation(line: 50, column: 45, scope: !322)
!409 = !DILocation(line: 50, column: 48, scope: !322)
!410 = !DILocation(line: 50, column: 43, scope: !322)
!411 = !DILocation(line: 50, column: 4, scope: !322)
!412 = !DILocation(line: 50, column: 7, scope: !322)
!413 = !DILocation(line: 52, column: 3, scope: !322)
